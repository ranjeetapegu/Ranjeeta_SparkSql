import java.io.{ FileInputStream, InputStream }
import java.util.Properties
import scala.collection.JavaConverters._
import scala.collection.mutable
import scala.util.matching.Regex
import org.apache.spark.util.Utils
import org.apache.spark.{ Logging, SparkConf }
import org.apache.spark.SparkContext
import org.apache.spark.sql.SQLContext
import org.apache.spark.SparkConf
import org.apache.spark.SparkContext._
import java.{lang => jl}
import org.apache.spark.annotation.Experimental
import org.apache.spark.sql.catalyst.expressions._
import org.apache.spark.sql.functions._
import org.apache.spark.sql.types._
import scala.collection.mutable.ArrayBuffer
import java.sql.{Connection, DriverManager, Statement, ResultSet}

object OraSpark {

  def main(agrs: Array[String]) =
    {
      val conf = new SparkConf()

        .setAppName("Contract")
        .setMaster("local")
      val sc = new SparkContext(conf)
      val sqlContext = new org.apache.spark.sql.SQLContext(sc)
	  
	  //Defining the Source DB information
      val trgdb = new Properties
	  trgdb.load(new FileInputStream(agrs(0)))
	  val tjdbcUrl = trgdb.getProperty("jdbcUrl")
      val tuser = trgdb.getProperty("user")
      val tpwd = trgdb.getProperty("password")

  	  
	  val emp=sqlContext.read.format("jdbc").option("url",tjdbcUrl).option("driver","oracle.jdbc.OracleDriver").option("dbtable","EMP").option("user",tuser).option("password",tpwd).load()
	  println(emp.printSchema())
	  }
	  }
	  