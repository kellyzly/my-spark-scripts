#proxy;
#mvn  -X -Pyarn -Phadoop-2.6 -DskipTests clean package > build.spark.log 2>&1

mvn -Phadoop-2.7 -Pyarn -Pparquet-provided -Dhadoop.version=2.7.3 -DskipTests clean package > build.spark.log 2>&1

