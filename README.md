# WNDOPT3R-Ultimate-Windows-Optimization-Script
WNDOPT3R: Ultimate Windows Optimization Script
Welcome to WNDOPT3R, a comprehensive Windows optimization script designed to enhance your system's performance, stability, and security. This README will guide you through the process of downloading, installing, and executing the script, ensuring you get the most out of your Windows experience.

About WNDOPT3R
WNDOPT3R is a collection of carefully crafted PowerShell scripts that work together to optimize your Windows system. It covers various aspects such as system cleanup, performance tweaks, security enhancements, and more. By following the steps outlined below, you'll be able to take advantage of this powerful tool and enjoy a more efficient and secure Windows environment.

Steps to Use WNDOPT3R
Step 1: Download or Clone the Repository
To begin, you need to obtain a copy of the WNDOPT3R script. You can either download the latest release as a ZIP file from the GitHub Releases page or clone the repository using Git. Make sure to choose a location where you can easily find the files later.

Step 2: Extract the Files
Once you have downloaded or cloned the repository, extract its contents to a folder on your computer. It is essential to remember the location of this folder, as you will need to access it later during the setup process.

Step 3: Open PowerShell with Admin Privileges
To execute the WNDOPT3R scripts, you'll need to use PowerShell with administrative privileges. Press Win + X and select "Windows PowerShell (Admin)" from the menu. This will open a PowerShell window with elevated permissions.

Step 4: Set Execution Policy to Unrestricted
WNDOPT3R uses PowerShell scripts, which may require adjusting the execution policy on your system. Type the following command in the PowerShell window and press Enter:

CopyReplit
Set-ExecutionPolicy Unrestricted
You will be prompted to confirm the change. Type Y and press Enter to proceed. This will allow the scripts to run without any restrictions.

Step 5: Navigate to the Extracted Folder
Now, navigate to the folder where you extracted the WNDOPT3R files using the cd command. Move to the "PS SCRIPTS" subfolder by typing:

CopyReplit
cd path\to\your\wndopt3r\folder\PS\SCRIPTS
Replace path\to\your\wndopt3r\folder with the actual path to the folder where you extracted the files.

Step 6: List the Scripts
Before executing the scripts, it's a good idea to list the available files in the folder. Type:

CopyReplit
ls
This will display a list of files in the current directory, including the WNDOPT3R scripts.

Step 7: Execute the Scripts
Now, it's time to run each script one by one. To execute a script, use the following syntax:

CopyReplit
./<script_name>
Replace <script_name> with the actual name of the script file (e.g., optimize_disk.ps1). Make sure to run each script sequentially without closing the PowerShell window.

Step 8: Reboot Your PC
After executing all the scripts, it is crucial to reboot your system to apply the changes and ensure optimal performance. Save any open files and type:

CopyReplit
shutdown /r /t 0
This command will initiate a restart of your computer immediately.
