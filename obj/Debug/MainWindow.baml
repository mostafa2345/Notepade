   M S B A M L   `   `   `  ����G  CNotebadClone, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:NotebadCloneNotebadClone  5   	       NotebadClone.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:NotebadClone     5   	   -   5          �Name$  NotepadClone��5   	    � Title$ 
MainWindow��5   	   $	��450��6   $	��800��6)    � WindowStartupLocation$ CenterScreen=�65    � Icon$ /41297_about us_icon.png��6Z   .��5	      �  � RowDefinitions 5
   
   �� 5      $	��97* �6   �� 5      $
��120* �6   ��5   
   �� 5       �� Color# � ��6   .+�5   
   �� -   5         ��Name$ TextBox_txt��5      $��0,44,0,0q�6'    �� TextWrapping$
 Wrap=�69   $	��Top=�6M   $	��385��6e   " �� VerticalScrollBarVisibility$ Visible=�6r   	 �� AcceptsReturn	 . $��2��6�   $��15(�6�   o� 5   
   $��0,4,0,0q�6   $��40��6    $	��Top=�6,   .@�5      m� -   5        $��_FIle��5      $��25��6&   $��65��62   $��20(�6T   
 � Cursor$

 Hand��6b    J� RenderTransformOrigin$ 
0.462,1.13&�6p   $��Center=�6�   $��Center=�6�    m� Icon 5      �� 5      $=��7/370080_folder_archive_data_document_documents_icon.png��6   6_   .@�5      m� -   5         m�Name$ New_menu��5      $	��New��6.   $
��Auto��6<   $
��Auto��6J   $��20(�6Y   6g   m� 5      -   5        $ 	Open_Menu��5      $
��Open��6.   $
��Auto��6<   $
��Auto��6J   $��20(�6Y   6g   m� 5      -   5        $ Save_AS_Menu��5      $��Save As��61   $
��Auto��6B   $
��Auto��6P   $��20(�6^   6l   m� 5      -   5        $ 	Exit_Menu��5      $
��Exit��6.   $
��Auto��6<   $
��Auto��6J   $��20(�6Z   6h   5      m� 5      $��_Edit��6   $��20(�6&   $��	10,0,10,0q�64   $

 Hand��6G    5      �� 5      $��/8725775_edit_icon.png��6   6>   .@�5!      m� -   5        $ 	Undo_Menu��5!      $
��Undo��6/   $
��Auto��6>   $
��Auto��6L   $��20(�6[   6i   m� 5"      -	   5        $ 	Redo_Menu��5"      $
��Redo��6/   $
��Auto��6>   $
��Auto��6L   $��20(�6[   6i   m� 5#      -
   5        $ Cut_MEnu��5#      $	��Cut��6.   $
��Auto��6<   $
��Auto��6J   $��20(�6Y   6g   m� 5$      -   5        $ 	Copy_Menu��5$      $
��Copy��6/   $
��Auto��6>   $
��Auto��6L   $��20(�6[   6i   m� 5%      -   5        $ 	Past_Menu��5%      $��Paste��6/   $
��Auto��6?   $
��Auto��6M   $��20(�6\   6j   m� 5&      -   5        $ SellectAll_Menu��5&      $��
Select All��65   $
��Auto��6J   $
��Auto��6X   $��20(�6g   6u   5'      m� 5(      $��F_ormat��6   $��20(�6(   $��	10,0,10,0q�66   $

 Hand��6I    5)      �� 5*      $6��0/6771573_document_education_file_format_icon.png��6   6X   .@�5,      m� -   5        $ Wordwarp_Menu��5,      $��	Word Warp��63   $
��Auto��6G   $
��Auto��6U   $��20(�6d    m� 	IsChecked .  m� IsCheckable . 6�   5-      m� 5.      $��_View��6   $��20(�6&   $��	10,0,10,0q�64   $

 Hand��6G    5/      �� 50      $<��6/5172950_business_eye_focus_internet_security_icon.png��6   6^   .@�52      m� $�� Zoom��6   $
��Auto��6,   $
��Auto��6:   $��20(�6I   .@�53      m� -   5        $ Zoom_in��53      $�� Zoom In��61   $
��Auto��6D   $
��Auto��6R   $��20(�6a   6o   m� 54      -   5        $ Zoom_out��54      $��	 Zoom Out��62   $
��Auto��6F   $
��Auto��6T   $��20(�6c   6q   m� 55      -   5        $ Reset��55      $��Reset��6/   $
��Auto��6?   $
��Auto��6M   $��20(�6\   6j   56      58      m� 59      $��_Help��6   $��20(�6&   $��	10,0,10,0q�64   $

 Hand��6G    5:      �� 5;      $A��;/2303158_contact us_headphones_headset_help_listne_icon.png��6   6c   .@�5=      m� -   5        $ About��5=      $��About��6+   $
��Auto��6;   $
��Auto��6I   $��20(�6X   6f   5>      5?      5A      5B      