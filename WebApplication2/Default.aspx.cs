using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;

namespace PhotoAlbumApp
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadImages();
            }
        }

        private void LoadImages()
        {
            string[] imageFiles = Directory.GetFiles(Server.MapPath("~/Images"));

            List<ImageInfo> images = new List<ImageInfo>();

            foreach (string file in imageFiles)
            {
                images.Add(new ImageInfo
                {
                    ImagePath = "~/Images/" + Path.GetFileName(file),
                    Description = Path.GetFileNameWithoutExtension(file)
                });
            }

          
        }
    }

    public class ImageInfo
    {
        public string ImagePath { get; set; }
        public string Description { get; set; }
    }
}
