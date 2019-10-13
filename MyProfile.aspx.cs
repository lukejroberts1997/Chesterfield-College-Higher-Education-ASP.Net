using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class MyProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            FirstName.Text = Profile.FirstName;
            LastName.Text = Profile.LastName;
            DateOfBirth.Text = Profile.DateOfBirth.ToShortDateString();
            Bio.Text = Profile.Bio;
        }


    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            Profile.FirstName = FirstName.Text;
            Profile.LastName = LastName.Text;
            Profile.DateOfBirth = DateTime.Parse(DateOfBirth.Text);
            Profile.Bio = Bio.Text;
        }

    }


    protected void UploadBtn_Click(object sender, EventArgs e)
    {

        if (FileUpLoad1.HasFile)
        {
            FileUpLoad1.SaveAs(Server.MapPath("~/App_Data/" + FileUpLoad1.FileName));
            Label1.Text = "<br /> <br /><div class='alert alert-success' role='alert'>Profile Picture Updated!</div>";

            HttpPostedFile file = FileUpLoad1.PostedFile;

            byte[] data = new byte[file.ContentLength];

            file.InputStream.Read(data, 0, file.ContentLength);

            Profile.Picture = data;
            Profile.PictureType = file.ContentType;
            
        }
        else
        {
            Label1.Text = "<br /> <br /><div class='alert alert-danger' role='alert'>No file to upload!</div>";
        }
    }


}