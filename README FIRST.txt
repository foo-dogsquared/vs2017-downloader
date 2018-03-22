To use the script without any additional burden, 
right-click the PowerShell file (.ps1) 
then select 'Open With PowerShell'.

---------------------------------------------------------
------------	SKIP IF YOU WANT TO	-----------------

If you want to be a little bit technical,
you can open PowerShell console either by searching
in the Start Menu and typing 'PowerShell' or by
pressing 'Win + R' and typing 'powershell'.
Then type 'cd *WHATEVER_THE_FILE_DIRECTORY_OF_THE_SCRIPT'.
Or if don't want that, you can go in the directory in the explorer,
hold 'Shift' then right-click anywhere BUT THE FILES (make sure there is no file selected).
Then choose 'Open PowerShell Window here' and it will
automatically get you to the folder that you've clicked on
as the current directory.
BUT WAIT, IT'S NOT YET FINISHED, you have to type the name of
the script to run it. (./vs2017-dler.ps1)

---------------------------------------------------------
---------------------------------------------------------

Now if you encounter that says something like "Execution Policy Change",
select Yes by pressing 'Y'. (You can trust me on this one).

While you are still not going to close the text file, 
here are the details of what the script requires
(there's the instructions on the script but still):

>	First, a file browser will appear. It will ask you to get the installer file 
	which is located at the 'VS-Installer' folder at the current location of the script.

>	Then, another browser will appear. This time, it will require you to select the folder 
	where the installer will download the files, just like how you would install a program 
	and select its file location to be installed at. 
	
	---------------------------------------------------------------------
	-------- READ IF YOU STARTED IT FOR THE SECOND (OR MORE) TIME -------
	---------------------------------------------------------------------

	(If you started to download the files and canceled it for any reason, no worries,
	select the same location in order for the installer to continue downloading the layout files.)

	---------------------------------------------------------------------
	---------------------------------------------------------------------
	---------------------------------------------------------------------

>	Next, running of the script is completed! Depending on the settings of your PC, the first thing you will
	see is a dialog with the name 'Visual Studio Setup Bootstraper' or similar names that's asking to give permission first 
	to run the program, select 'Yes'.

>	And of course, THANK YOU!