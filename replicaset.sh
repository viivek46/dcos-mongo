sleep 50s
touch replication.sh
count=0
touch replication.sh
echo "rs.initiate( {" >> replication.sh
echo "  _id : "\"$MONGODB_REPLICASET_NAME\""," >> replication.sh
echo "   members: [" >> replication.sh
while [ $count -lt $MONGODB_REPLICASET_NODE ]
do
echo "count =>" ${count}
echo "{  _id: "${count}", host: \"mongodb-"${count}"-mongod."$FRAMEWORK_HOST":$MONGODB_NODE_PORT\"}," >> replication.sh
cat replication.sh
count=`expr $count + 1`
done
truncate -s-2 replication.sh
printf "]\n})" >> replication.sh
cat replication.sh
mongo replication.sh
