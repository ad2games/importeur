# frozen_string_literal: true

require 'pg'

desc 'Create a database for testing'
task :create_test_db do
  uri = URI.parse(ENV.fetch('DATABASE_URL'))
  conn = PG.connect(
    host: uri.hostname,
    port: uri.port,
    dbname: 'postgres',
    user: uri.user,
    password: uri.password
  )
  conn.exec('DROP DATABASE IF EXISTS importeur_test')
  conn.exec('CREATE DATABASE importeur_test')
end