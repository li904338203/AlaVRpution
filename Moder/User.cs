using System;
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
        private string _UserEmil;
        public int _fenye;

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
        public string UserEmil
        {
            set {_UserEmil = value;}
            get { return _UserEmil; }
        }
        public int fenye
        {
            set { _fenye = value; }
            get { return _fenye; }
         }
        #endregion
    }
}
