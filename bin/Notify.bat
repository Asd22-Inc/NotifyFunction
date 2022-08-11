@Echo off
Setlocal EnableDelayedExpansion

Set _path=%LocalAppdata%\NotifyFunction
Set path=%path%;%_path%;%~dp0;%~dp0Files;%cd%;%cd%\Files;
Cd Files >nul 2>nul
If Not exist "%_path%" (Md "%_path%")

REM THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY
REM KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
REM WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE
REM AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
REM HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
REM WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
REM OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
REM DEALINGS IN THE SOFTWARE.

REM This program is distributed under the following license: (SELECT A LICENSE)

REM ================================================================================
REM Apache License 2.0 - https://opensource.org/licenses/Apache-2.0
REM BSD 3-Clause 'New' or 'Revised' license - https://opensource.org/licenses/BSD-3-Clause
REM BSD 2-Clause 'Simplified' or 'FreeBSD' license - https://opensource.org/licenses/BSD-2-Clause
REM GNU General Public License (GPL) - https://opensource.org/licenses/gpl-license
REM GNU Library or 'Lesser' General Public License (LGPL) - https://opensource.org/licenses/lgpl-license
REM MIT license - https://opensource.org/licenses/MIT
REM Mozilla Public License 2.0 - https://opensource.org/licenses/MPL-2.0
REM Common Development and Distribution License - https://opensource.org/licenses/CDDL-1.0
REM Eclipse Public License version 2.0 - https://opensource.org/licenses/EPL-2.0
REM ================================================================================


REM ================= ABOUT THE PROGRAM =================
REM This program is created by Yousifasd22 at 'Thu 08/11/2022 - 14:09'
REM This program can Send Notifications From Batch Files.
REM For More Visit: www.batch-man.com


REM Setting version information...
Set _ver=1.0


REM Checking for various parameters of the function...
If /i "%~1" == "--help" (goto :help)
If /i "%~1" == "-h" (goto :help)
If /i "%~1" == "-help" (goto :help)
If /i "%~1" == "/?" (goto :help)
If /i "%~1" == "-?" (goto :help)
If /i "%~1" == "" (goto :help)

If /i "%~1" == "ver" (Echo.%_ver%&Goto :End)
If /i "%~1" == "" (goto :help)

REM Saving parameters to variables...
Set _1=%~1
Set _2=%~2
Set _3=%~3
Set _4=%~4
Set _5=%~5
Set _6=%~6
Set _7=%~7
Set _8=%~8
Set _9=%~9

REM Starting Main Program...
:Main
powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; Add-Type -AssemblyName System.Drawing; $notify = New-Object System.Windows.Forms.NotifyIcon; $notify.Icon = [System.Drawing.SystemIcons]::Information; $notify.Visible = $true; $notify.ShowBalloonTip(0, '%1', '%2', [System.Windows.Forms.ToolTipIcon]::None)}"
Goto :EOF

:End
Goto :EOF

:Help
Echo.
Echo. This function will Send Notifications Using Batch File.
echo. It will help in Send Notifications Using Batch File.
Echo. CREDITS: NotifyFunction %_ver% by Yousifasd22
echo.
echo. Syntax: call Notify [Title] [Message]
echo. Syntax: call Notify [help , /? , -h , -help]
echo. Syntax: call Notify ver
echo.
echo. Where:-
echo.
echo. ver		: Displays version of program
echo. help		: Displays help for the program
echo. Title		: Displays The App Name
Echo. Message		: Displays The Message Below The App Name
echo.
Echo. Example: Call Notify App This Is A Message
Echo. Example: Call Notify ver
Echo. Example: Call Notify [/? , -h , -help , help]
Echo.
Echo. Now, you can Send Notifications Using Batch File!
Echo. 
Echo.
Echo. PLUGINS REQUIRED FOR THIS PROJECT:
Echo. No Plugin Required
Echo.
Echo. www.batch-man.com
Echo. #batch-man
Goto :End

