﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Moder
{
    public class User
    {
        public User() { }

        #region

        private int _Id;
        private string _UserName;
        private string _PassWord;

        public int Id
        {
            set { _Id = value; }
            get { return _Id; }
        }
        public string UserName
        {
            set { _UserName = value; }
            get { return _UserName; }
        }
        public string PassWord
        {
            set { _PassWord = value; }
            get { return _PassWord; }
        }
        #endregion
    }
}