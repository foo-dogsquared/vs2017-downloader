<#
    ***********************************
    ***********************************
    ***********************************
    ***** Coded by Gabriel Arazas *****
    ***********************************
    ***********************************
    ***********************************
#>

# WHAT IS THIS PROGRAM ABOUT:
#
# Basically this will select a folder to be installed,
# get the directory of the file (specifically the VS installer),
# then download the files based from the parameters of the VS installer.
#

# A file dialog that requires the vs_Community.exe file
Function Get-File()
{
    [System.Reflection.Assembly]::LoadWithPartialName("System.windows.forms") | Out-Null
    
    $OpenFileDialog = New-Object System.Windows.Forms.OpenFileDialog
    $OpenFileDialog.InitialDirectory = $PSScriptRoot
    $OpenFileDialog.Title = "Visual Studio 2017 Community File Location"
    $OpenFileDialog.filter = "Visual Studio 2017 Community Edition | vs_Community.exe"
    if($OpenFileDialog.ShowDialog() -eq "OK") {

        # adding the location of the file
        $fileName = $OpenFileDialog.FileName

        return $fileName
    } else {

        customErrorMessage
    }
    
}

# A folder browser dialog that will select a folder and get to it to be the working directory
Function Get-Dir()
{
    [System.Reflection.Assembly]::LoadWithPartialName("System.windows.forms") | Out-Null

    $OpenFolderDialog = New-Object System.Windows.Forms.FolderBrowserDialog
    $OpenFolderDialog.SelectedPath = $PSScriptRoot
    $OpenFolderDialog.Description = "Select the location to download the offline installation files (if you started to download the thing already, select the same destination)."
    if($OpenFolderDialog.ShowDialog() -eq "OK")
    {
        # gets the path name of selected directory
        $folder = $OpenFolderDialog.SelectedPath

        # makes it into a working directory
        cd $folder

        # then adding the parameters for the expression but as a string (which means it is not executable by the shell)
        $completePath = $inputFile + " --layout " + $folder + "newVS2017offline --add Microsoft.VisualStudio.Workload.CoreEditor --add Microsoft.VisualStudio.Workload.Python --add Microsoft.VisualStudio.Workload.Node --add Microsoft.VisualStudio.Workload.NativeDesktop --add Microsoft.VisualStudio.Workload.ManagedDesktop --add Microsoft.VisualStudio.Workload.NetWeb --add Microsoft.VisualStudio.Workload.Azure --add Microsoft.VisualStudio.Workload.WebCrossPlat --add Component.GitHub.VisualStudio --add Microsoft.VisualStudio.Component.TestTools.Core --includeRecommended --lang en-US"

        # then refers to the returned value (the file location) from the $inputFile variable
        iex $completePath
    } else {

        customErrorMessage
    }
}

# the very creative error message
Function customErrorMessage() {
    echo "Script has stopped. Press ↑ to easily refer back to the script."
    exit
}

# this will get the required file and add the parameters needed
$inputFile = Get-File


# this will set to be the working directory for easier intregation
$inputFolder = Get-Dir
