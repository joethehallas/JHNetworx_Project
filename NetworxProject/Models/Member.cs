//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
using System.ComponentModel.DataAnnotations;
namespace NetworxProject.Models

{
    using System;
    using System.Collections.Generic;
    
    public partial class Member
    {
        public int MemberID { get; set; }
        [System.ComponentModel.DisplayName("First Name")]
        [RegularExpression("^[a-zA-Z]+(([',. -][a-zA-Z ])?[a-zA-Z]*)*$", ErrorMessage = "Only letters and spaces allowed")]
        public string FirstName { get; set; }
        [RegularExpression("^[a-zA-Z]+(([',. -][a-zA-Z ])?[a-zA-Z]*)*$", ErrorMessage = "Only letters and spaces allowed")]
        public string Surname { get; set; }
        [Required(ErrorMessage = "Please enter an email address")]
        public string Email { get; set; }
        [Required(ErrorMessage = "Please enter a UK mobile number")]
        [RegularExpression(@"^(\d{11})$", ErrorMessage = "11 digits must be entered")]
        public string Mobile { get; set; }
        [System.ComponentModel.DisplayName("Join Date")]
        public System.DateTime JoinDate { get; set; }
        [Range(0,150, ErrorMessage = "This age looks unlikely")]
        public Nullable<byte> Age { get; set; }
    }
}
