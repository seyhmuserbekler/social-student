//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace eYillik
{
    using System;
    using System.Collections.Generic;
    
    public partial class sys_Album
    {
        public sys_Album()
        {
            this.sys_Pictures = new HashSet<sys_Pictures>();
        }
    
        public string AlbumName { get; set; }
    
        public virtual ICollection<sys_Pictures> sys_Pictures { get; set; }
    }
}