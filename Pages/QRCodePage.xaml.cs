using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using QRCoder;
using System.IO;
using System.Drawing;
using System.Drawing.Imaging;
using System.Windows.Media.Animation;
using System.Net.NetworkInformation;
using ZXing;

namespace Service.Pages
{
    public partial class QRCodePage : Page
    {
        public QRCodePage()
        {
            InitializeComponent();
            GenerateQR("https://forms.yandex.ru/u/6762b385f47e735ec9193d0a/"); 
        }

        private void GenerateQR(string content)
        {
            try
            {

                System.Drawing.Image img = null;
                BitmapImage bimg = new BitmapImage();
                using (var ms = new MemoryStream())
                {
                    BarcodeWriter writer;
                    writer = new ZXing.BarcodeWriter() { Format = BarcodeFormat.QR_CODE };
                    writer.Options.Height = 120; 
                    writer.Options.Width = 200;
                    writer.Options.PureBarcode = true;
                    img = writer.Write(content);
                    img.Save(ms, System.Drawing.Imaging.ImageFormat.Jpeg);
                    ms.Position = 0;
                    bimg.BeginInit();
                    bimg.CreateOptions = BitmapCreateOptions.PreservePixelFormat;
                    bimg.CacheOption = BitmapCacheOption.OnLoad;
                    bimg.UriSource = null;
                    bimg.StreamSource = ms;
                    bimg.EndInit();
                    this.imgbarcode.Source = bimg;
                    this.tbkbarcodecontent.Text = content;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        
    }
}
