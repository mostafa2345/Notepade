using Microsoft.Win32;
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

namespace NotebadClone
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }
        private void New_menu_Click(object sender, RoutedEventArgs e)
        {
            this.TextBox_txt.Text = "";
            this.TextBox_txt.Focus();
        }
        private void MenuItem_Click(object sender, RoutedEventArgs e)
        {

        }

        private void Open_Menu_Click(object sender, RoutedEventArgs e)
        {
            OpenFileDialog ofd = new OpenFileDialog();
             ofd.Filter = "Text File|*.txt";
            ofd.InitialDirectory = Environment.GetFolderPath(Environment.SpecialFolder.Desktop);
            
               ofd.Title = "open  file";
            ofd.ShowDialog();
            if (ofd.FileName == "")
            {
                MessageBox.Show("select File  ");
                return;
            }

            this.TextBox_txt.Text=System.IO.File.ReadAllText(ofd.FileName,Encoding.UTF8);
        }

        private void Save_AS_Menu_Click(object sender, RoutedEventArgs e)
        {
            SaveFileDialog saveFileDialog = new SaveFileDialog();
            saveFileDialog.Filter ="Text File|*.txt";
            saveFileDialog.InitialDirectory =Environment.GetFolderPath(Environment.SpecialFolder.Desktop);
            saveFileDialog.AddExtension = true;
            saveFileDialog.Title = "save file";
            saveFileDialog.ShowDialog();
            if(saveFileDialog.FileName== "")
            {
                MessageBox.Show("Enter File Name");
                return;
            }
          System.IO.File.WriteAllText(saveFileDialog.FileName, this.TextBox_txt.Text,Encoding.UTF8);
        }

        private void Exit_Menu_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void Undo_Menu_Click(object sender, RoutedEventArgs e)
        {
            this.TextBox_txt.Undo();

        }

        private void Redo_Menu_Click(object sender, RoutedEventArgs e)
        {
            this.TextBox_txt.Redo();
        }

        private void Cut_MEnu_Checked(object sender, RoutedEventArgs e)
        {
            this.TextBox_txt.Cut();

        }

        private void Copy_Menu_Click(object sender, RoutedEventArgs e)
        {
            this.TextBox_txt.Copy();
        }

        private void Past_Menu_Click(object sender, RoutedEventArgs e)
        {
            this.TextBox_txt.Paste();
        }

        private void SellectAll_Menu_Click(object sender, RoutedEventArgs e)
        {
            this.TextBox_txt.Focus();
            this.TextBox_txt.SelectAll();
        }

        private void Wordwarp_Menu_Click(object sender, RoutedEventArgs e)
        {
           if(this.Wordwarp_Menu.IsChecked == true)
            {
                this.TextBox_txt.TextWrapping = TextWrapping.Wrap;
                this.TextBox_txt.HorizontalScrollBarVisibility=ScrollBarVisibility.Hidden;
            }
            else
            {
                this.TextBox_txt.TextWrapping = TextWrapping.NoWrap;
             
                this.TextBox_txt.HorizontalScrollBarVisibility = ScrollBarVisibility.Visible;
                this.TextBox_txt.VerticalScrollBarVisibility = ScrollBarVisibility.Hidden;
            }
        }

        private void Zoom_in_Click(object sender, RoutedEventArgs e)
        {
           
            if (this.TextBox_txt.FontSize + 4 < 80)
            {
                this.TextBox_txt.FontSize += 4;
            }
        }

        private void Zoom_out_Click(object sender, RoutedEventArgs e)
        {
            if (this.TextBox_txt.FontSize - 4 > 10)
            {
                this.TextBox_txt.FontSize -= 4;
            }
        }

        private void Reset_Click(object sender, RoutedEventArgs e)
        {
            this.TextBox_txt.FontSize = 15;
        }

        private void About_Click(object sender, RoutedEventArgs e)
        {
            About_Menu about_Menu = new About_Menu();
            about_Menu.ShowDialog();
        }
    }
}
