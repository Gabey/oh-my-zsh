

function pg_start() {
	pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start
}

function pg_stop() {
	pg_ctl -D /usr/local/var/postgres stop -s -m fast
}

function pg_man(){
print "create postgresql database"
print "1)     osx: createdb db_name -U username (username will be owner of the db)"
print "2)     unix: sudo -u postgres psql -c 'create database #{postgresql_database} owner #{postgresql_user};'"
print ""
print "create postgresql user"
print "1)     unix: sudo -u postgres psql -c 'create user #{postgresql_user} with password '#{postgresql_password}';" 
print "2)     osx: createuser username -s(super user, can create db) -P(optional for adding password)"
print ""
print "delete postgresql user"
print "1)     unix: sudo -u postgres psql -c 'drop #{user}'"
print "2)     osx: dropuser username"
print ""
print "delete postsql database (you must delete before importing)"
print "1)       dropdb -U usnername"
print ""
print "connect interactively"
print "1)     psql -d somedb -U someuser -W"
print ""
print "import db"
print "1)     dropdb, createdb, psql -U username -D db_name < ./r8.sql"
print ""
print "pg_dump"
print "pg_dump --clean -U r8 -W r8_production -f temp.sql"
print ""
print "Homebrew"
print "postgresql is located to:/usr/local/var/postgres/"
print ""
print "don't forget to modify the /etc/postgresql/9.1/main/pg_hba.conf to modify the line:"
print "local   all             all                                     peer   to"
print "local   all             all                                     md5"
}
