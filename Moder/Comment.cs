using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Moder
{
    public class Comment
    {
        public Comment() { }
        private int _commentid;
        private int _commentuser;
        private string _commentcontent;
        private int _moderid;
        private DateTime _commenttime;

        public int CommentId {

            set { _commentid = value; }
            get { return _commentid; }
        }
        public int CommentUser
        {
            set { _commentuser = value; }
            get { return _commentuser; }
        }
        public string CommentContent
        {
            set { _commentcontent = value; }
            get { return _commentcontent; }
        }
        public DateTime CommentTime
        {
            set { _commenttime = value; }
            get { return _commenttime; }
        }
        public int ModerId
        {
            set { _moderid = value; }
            get { return _moderid; }
        }
    }
}
