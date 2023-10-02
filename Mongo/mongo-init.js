db.createUser(
    {
      user: "citefull",
      pwd: "Citefull2021!",
      roles: [ { role: "userAdminAnyDatabase", db: "admin" }, "readWriteAnyDatabase" ]
    }
  )  