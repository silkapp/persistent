{-# LANGUAGE OverloadedStrings #-}

module Main where

import Database.Persist.Postgresql
import qualified Model as M

main :: IO ()
main = withPostgresqlPool connStr 10 $ \pool -> do
  flip runSqlPersistMPool pool $ do
    printMigration M.migrateAll

connStr :: ConnectionString
connStr = "host=localhost dbname=ps user=persistent password=persistent port=5432"
