# vs2017-downloader
A PowerShell Script that lets you easily configure to offline install Visual Studio 2017 (Community Edition).

To use the script without any additional burden, 
right-click the PowerShell file (.ps1) 
then select 'Open With PowerShell'.

-----------------

## How to use the script

Now if you encounter that says something like "Execution Policy Change",
select Yes by pressing 'Y'. (You can trust me on this one).
 
Here are the details of what the script requires
(there's the instructions on the script but still):

*	First, a file browser will appear. It will ask you to get the installer file 
	which is located at the 'VS-Installer' folder at the current location of the script.

*	Then, another browser will appear. This time, it will require you to select the folder 
	where the installer will download the files, just like how you would install a program 
	and select its file location to be installed at. 

	(If you started to download the files and canceled it for any reason, no worries,
	select the same location in order for the installer to continue downloading the layout files.)

*	Next, running of the script is completed! Depending on the settings of your PC, the first thing you will
	see is a dialog with the name 'Visual Studio Setup Bootstraper' or similar names that's asking to give permission first 
	to run the program, select 'Yes'.

*	And of course, THANK YOU!

*   (To change what you want to download, refer to this [page](https://docs.microsoft.com/en-us/visualstudio/install/use-command-line-parameters-to-install-visual-studio) to know the parameters of that component(s) and you have to change it inside of the script through a text editor (VS Code, the PowerShell ISE, etc))