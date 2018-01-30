// // Copyright (c) Microsoft. All rights reserved.
// // Licensed under the MIT license. See LICENSE file in the project root for full license information.

using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Text.RegularExpressions;
using System.Windows;
using System.Windows.Controls.Primitives;
using System.Windows.Input;

namespace onSoft
{
    /// <summary>
    ///     Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class dlgMain : Window
    {
        private readonly Dictionary<string, string> _uniqueClassList = new Dictionary<string, string>();

        public dlgMain()
        {
            InitializeComponent();
            Loaded += CustomWindowChrome_Loaded;
        }

        private void CustomWindowChrome_Loaded(object sender, RoutedEventArgs e)
        {
            Width = SystemParameters.PrimaryScreenWidth * 0.625;
            Height = SystemParameters.PrimaryScreenHeight * 0.625;
            Top = 10;
            Left = 10;
        }

        private void CloseButtonRectangle_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }

        private void Window_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            DragMove();
        }

        private void ResizeThumb_DragDelta(object sender, DragDeltaEventArgs e)
        {
            // Resize window width (honoring minimum width)
            var desiredWidth = (int) (ActualWidth + e.HorizontalChange);
            var minWidth = (int) (MinWidth + resizeThumb.Width + resizeThumb.Margin.Right);
            Width = Math.Max(desiredWidth, minWidth);

            // Resize window height (honoring minimum height)
            var desiredHeight = (int) (ActualHeight + e.VerticalChange);
            var minHeight = (int) (MinHeight + resizeThumb.Height + resizeThumb.Margin.Bottom);
            Height = Math.Max(desiredHeight, minHeight);
        }

        private void DfsInput_OnLostFocus(object sender, RoutedEventArgs e)
        {
            var matches = Regex.Matches(dfsInput.Text, @"\bin\b((.*?\.cs)\:.*?(\d+))");
            foreach (Match match in matches)
            {
                var className = match.Groups[2].ToString();
                if (_uniqueClassList.ContainsKey(className))
                    _uniqueClassList[className] += "," + match.Groups[3];
                else
                    _uniqueClassList.Add(className, " Lines " + match.Groups[3]);
            }

            foreach (var oneClass in _uniqueClassList)
                lstResult.Items.Add(oneClass.Key + oneClass.Value);


        }

        private void BtnShowFormattedFile_OnClick(object sender, RoutedEventArgs e)
        {
            var formattedFile = dfsInput.Text.Replace(" in ", "\n\tin ").Replace(" at ", "\n\t\tat ");
            formattedFile = Regex.Replace(formattedFile, "<LogicalOperationStack.*?Serialization\">", "");
            formattedFile = Regex.Replace(formattedFile, "&amp;#xD;&amp;#xA;", "");
            var fileName = Guid.NewGuid().ToString();
            File.WriteAllText(fileName,formattedFile);
            Process.Start(fileName);

        }
    }
}