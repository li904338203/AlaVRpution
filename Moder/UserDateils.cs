using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Moder
{
    public   class UserDateils
    {
        private int _userid;
        private string _username;
        private string _useremil;
        private string _userimgpath;
        private string _qq;
        private string _city;
        private string _userintroduction;


        public int UserId {
            set { _userid = value; }
            get { return _userid; }

        }
        public string UserName
        {
            set { _username = value; }
            get { return _username; }

        }
        public string UserEmil
        {
            set { _useremil = value; }
            get { return _useremil; }
        }
        public string UserImgPath
        {
            set { _userimgpath = value; }
            get { return _userimgpath; }

        }
        public string Qq {
            set { _qq = value; }
            get { return _qq; }
        }
        public string City {
            set { _city = value; }
            get { return _city; }
        }
        public string UserIntroDuction
        {
            set { _userintroduction = value; }
            get { return _userintroduction; }

        }
    }
}
