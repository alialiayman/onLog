   M S B A M L   `   `   `  ���� 	  onLog    onSoft.dlgMain   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     -     � Title$  Log Analyzer�� � WindowStyle$
 None=�$	��348��$	��321��$	��100��$	��100�� � AllowsTransparency . 
������ .���� 
����  �$��10q� �� CornerRadius$ 20��
�������._��  � ColumnDefinitions �� �� $
��Auto � � RowDefinitions �� $
��Auto ��� �� $
��Auto �.+��� -   $��closeButton��$��1��$��0��$��0��$��50��$��50��$��10q����� .R���  � Triggers :�  :� RoutedEvent$ Canvas.MouseEnter��.[��� .���� .��W� 	 W� To$	 0.6X�	 g� Duration$	 0:0:0.05D�
 �� 
TargetName$
 border�� �� TargetProperty$ Opacity� g� AccelerationRatio$ 1Q�:� $ Canvas.MouseLeave��.[��� .���� .��W� $ 1X�$	 0:0:0.05D�$
 border��$ Opacity�$ 1Q�:� $  Canvas.MouseLeftButtonDown��.[��� .���� .��W� $ 1X�$	 0:0:0.05D�$
 border��$ Opacity�$ 1Q�.+��� $��border��$��50��$��50��
���   �$��4�� �� RadiusX$ 3�� �� RadiusY$ 3��
���  ���� 	 �� X1$ 10��	 �� Y1$ 10��	 �� X2$ 40��	 �� Y2$ 40��
�������$��5�� �� StrokeEndLineCap$ Round=� �� StrokeStartLineCap$ Round=��� $ 40��$ 10��$ 10��$ 40��
�������$��5��$ Round=�$ Round=�n� -   $��resizeThumb��$��1��$��2��$��50��$��50�� � Cursor$ SizeAll��$��10q� � ToolTip$ Drag to resize������ .R���  :� $ Canvas.MouseEnter��.[��� .���� .��W� $	 0.6X�$	 0:0:0.05D�$
 resizeEllipse��$ Opacity�$ 1Q�:� $ Canvas.MouseLeave��.[��� .���� .��W� $ 1X�$	 0:0:0.05D�$
 resizeEllipse��$ Opacity�$ 1Q�:� $  Canvas.MouseLeftButtonDown��.[��� .���� .��W� $ 1X�$	 0:0:0.05D�$
 resizeEllipse��$ Opacity�$ 1Q�.+�A� $��resizeEllipse��$��50��$��50��
���  ��
���   �$��5���� $��3q�
����=H�$ 20�� �� Padding$ 5q�$��Stretch=�$��Stretch=�$��0��$��0��$��10q�._��� -    ��Name$ dfsInput��$��Stretch=� �� TextWrapping$
 Wrap=�$�� ��$��Stretch=�$��50��$��0q��� $��3q�
��� ���$ 20��$ 5q�$��Stretch=�$��Stretch=�$��1��$��0��$��10q�._��� -    ��Name$ 	lstResult��$��0q��� -    ��Name$ btnShowFormattedFile��$��Open Formatted File��$��2��$��10q�