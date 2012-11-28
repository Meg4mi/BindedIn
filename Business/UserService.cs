﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Data;


namespace Business
{
    public class UserService
    {

        public static List<Data.users> GetUtilisateurs()
        {
            bindedinEntities bie = SingletonEntities.Instance;
            var users = from c in bie.users
                        select c;
            return users.ToList();
        }

        public static List<Data.users> GetUtilisateurs(int id)
        {
            bindedinEntities bie = SingletonEntities.Instance;
            var users = from c in bie.users
                        where c.id.Equals(id)
                        select c;
            return users.ToList();
        }


    }
}
