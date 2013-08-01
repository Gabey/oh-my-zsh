function mongodb_repair() {
  print "All databases files need to be own by mongodb user"
  print "to repair database after unclean shutdown: "
  print "1 - sudo -u mongodb mongod -f /etc/mongodb.conf –repair"
  print "2 - sudo start mongodb"  
}

function mongodb_install(){
  print "Add 10gen repo and then install through package manager"
  print "go in the console: mongo"
  print "select your db: use db_name"
  print "add you user : db.addUser('username', 'password')"  
}
