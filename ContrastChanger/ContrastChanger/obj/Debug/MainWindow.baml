   M S B A M L   `   `   `  ����J  FContrastChanger, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:ContrastChangerContrastChanger  5   	        ContrastChanger.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:ContrastChanger     5   	     � Title$  
MainWindow��5   	   $	��570��6   $	��950��6)    � 
ResizeMode$ CanMinimize=�65    � DataContext 5	   	   ��  �� Path$
 Main�   Locator �� Source# [  .��5
      �  � ColumnDefinitions 5   
   �� 5      �� 5       � RowDefinitions 5   
   �� 5      $��1* �6   �� 5      $��9* �6   .+�5   
   �� $��0��6   $��2��6   $��CONTRAST CHANGER��61   $
��Bold"�6L   $��30(�6^   $��59��6l   $	��Top=�6x   $��Center=�6�   �� 5   
   $��1��6   $��0��6"   .+�5      �� $��1q�6   
���   �$	��200��6=   $��Center=�6J   $	��300��6g   ._�5      �� $��-0.8,-1.8,-0.6,-0.8q�6   $
��Fill=�65   ��6D   �� *InputImageSource+ �� UpdateSourceTrigger$ PropertyChanged=�5      �� 5      $
��LOAD��6   $
��Bold"�6%   $��20(�67   $��30��6E   $	��130��6Q   $��Center=�6^   $��156,0,155.6,0q�6�   ��6{   �� *LoadCommand+6�   �� 5      $��1q�6   
���   �$	��200��6=   $	��300��6J   ._�5      �� $
��Fill=�6   5      �� 5      $��GENERATE��6   $
��Bold"�6)   $��20(�6;   $��30��6I   $	��130��6U   $��Center=�6a   ��6~   �� *GenerateCommand+5      � 5    
   $��1��6   $��1��6   .+�5!      �� $��CONTRAST��6   $��Center=�6'   $
��Bold"�6D   $��15(�6V   �� 5"      -   5        $��slider��5"       � Maximum$	 200Q�6#   $��26��61   	 � SmallChange$	 1Q�6=   
 �� IsSnapToTickEnabled
 .  � Value 6M   ��  �� ElementName$ sliderValue��$
 Text� �� Mode$ TwoWay=�6�   �� 5#      $��1q�6   
���   �._�5$      �� -   5        $��sliderValue��5$      $
��Bold"�6j   $��18(�6|   ��6.   �� $ slider��$ Value�$ TwoWay=�6|   5%      �� 5&      $��THREADS��6   $��Center=�6&   $
��Bold"�6C   $��15(�6U   �� 5'      $��20(�6   $
��Bold"�6%   $��48��67   $��0,0,148.4,0q�6C   $��Right=�6X   $	��157��6t   �� 5(      $	��DLL��6   $��Center=�6"   $
��Bold"�6?   $��15(�6Q   � 5*      $��24��6   $��	0,0,0.2,0q�6   .+�5+      	� -   5        $��assembly��5+      $��ASSEMBLY��6.   $
��Bold"�6A   $��82,0,213.2,0q�6T    d� 	IsChecked$
 TrueY�6j   	� 5,      -   5        $	��cpp��5,      $	��C++��6)   $
��Bold"�67   $��288,0,-26.6,0q�6I   5-      �� 5.      $��RESULTS��6   $��Center=�6&   $��15(�6C   $
��Bold"�6Q   �� 5/      $��1q�6   
���   �$��81��6=   $
��Left=�6I   $	��445��6d   ._�50      �� -   5        $��results��50      $��-0.8,0.2,-1,-1.8q�6+   $��Right=�6E   $	��445��6a   51      �� 52      -   5        $��	runButton��52      $	��RUN��6&   $��30��64   $	��130��6@   $��20(�6L   $��Center=�6Z   $
��Bold"�6w   54      5B      5C      