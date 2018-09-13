rs.initiate( {
  _id : "rs0",
  members: [
     { _id: 0, host: "mongodb-0-mongod.mongodbservice.autoip.dcos.thisdcos.directory:27017" },
     { _id: 1, host: "mongodb-1-mongod.mongodbservice.autoip.dcos.thisdcos.directory:27017" },
     { _id: 2, host: "mongodb-2-mongod.mongodbservice.autoip.dcos.thisdcos.directory:27017" }
  ]
})
