export SPARK_HOME=`pwd`

#./dev/make-distribution.sh --name "hadoop2-without-hive" --tgz "-Pyarn,hadoop-provided,hadoop-2.7,parquet-provided" -Dhadoopversion=2.7.3

#kill zinc
ps -ef|grep zinc|awk '{print $2}'|xargs kill -9 
./dev/make-distribution.sh --name hadoop2-without-hive --tgz -Phadoop-2.7 -Pyarn  -Dhadoop.version=2.7.3

NEW_SPARK_HOME=/home/zly/spark-2.0.0-bin-hadoop2-without-hive
tar xvf spark-2.0.0-bin-hadoop2-without-hive.tgz 
rm -rf $NEW_SPARK_HOME
mv spark-2.0.0-bin-hadoop2-without-hive $NEW_SPARK_HOME
currentdir=`pwd`
cp $currentdir/conf/spark-defaults.conf $NEW_SPARK_HOME/conf
cp $currentdir/example.sh $NEW_SPARK_HOME/ 
