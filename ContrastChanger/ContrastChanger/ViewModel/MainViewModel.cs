using System;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using GalaSoft.MvvmLight;
using GalaSoft.MvvmLight.CommandWpf;
using Microsoft.Win32;

namespace ContrastChanger.ViewModel
{
    /// <summary>
    /// This class contains properties that the main View can data bind to.
    /// <para>
    /// Use the <strong>mvvminpc</strong> snippet to add bindable properties to this ViewModel.
    /// </para>
    /// <para>
    /// You can also use Blend to data bind with the tool's support.
    /// </para>
    /// <para>
    /// See http://www.galasoft.ch/mvvm
    /// </para>
    /// </summary>
    public class MainViewModel : ViewModelBase
    {
        /// <summary>
        /// Initializes a new instance of the MainViewModel class.
        /// </summary>
        public MainViewModel()
        {
            ////if (IsInDesignMode)
            ////{
            ////    // Code runs in Blend --> create design time data.
            ////}
            ////else
            ////{
            ////    // Code runs "for real"
            ////}
        }

        #region InputImageSource Property

        private ImageSource _imageSource;
        public ImageSource  InputImageSource
        {
            get { return _imageSource; }
            set { Set(()=>InputImageSource,ref _imageSource,value); }
        }

        #endregion

        #region LoadCommand
        private ICommand _loadCommand = null;

        public ICommand LoadCommand
        {
            get
            {
                if(_loadCommand==null)
                    _loadCommand=new RelayCommand(LoadCommandExecute);
                return _loadCommand;
            }
        }

        private void LoadCommandExecute()
        {
            var fileDialog = new OpenFileDialog();
            fileDialog.Filter= "Bitmap Images(*.bmp) | *.bmp";
            var isSelect = fileDialog.ShowDialog();
            if (isSelect==true)
            {
                var fileName = fileDialog.FileName;
                Uri uri = new Uri(fileName);
                var imageSource = new BitmapImage(uri);
                InputImageSource = imageSource;
            }


        }
        #endregion

        #region GenerateCommand

        private ICommand _generateCommand = null;

        public ICommand GenerateCommand
        {
            get
            {
                if(_generateCommand==null)
                    _generateCommand=new RelayCommand(GenerateCommandExecute);
                return _generateCommand;
            }
        }

        private void GenerateCommandExecute()
        {
            
            //    dlg.DefaultExt = ".bmp";
            //    dlg.Filter = "Bitmap Images(*.bmp) | *.bmp";

            //    bool? ifSelect = dlg.ShowDialog();
            //    if (ifSelect == true)
            //    {
            //        string str = dlg.FileName;
            //        Uri uri = new Uri(str);
            //        ImageSource imageSource = new BitmapImage(uri);

            //        inputImage.Source = imageSource;

            //    }
            //}
        }

        #endregion



    }
}