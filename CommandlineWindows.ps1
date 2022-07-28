
ifconfig #show ip address 
echo "text" > file #show contant file in commend line '>' new contant '>>' plus contant "  
slmgr \dli
winver


# PowerShell 	++ Start Section ++
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Video 1, 2, 
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Get-LocalUser                                           # show users in local 
net user Adminstrator /active:yes                       # active adminstrator user in local
net user Adminstrator /active:no                        # Disabled adminstrator user in local
Rename-Computer -NewName "new-name"                     # rename your computer 
Get-WindowsCapability -name openssh.server* -online     # search openssh online 
Get-WindowsCapability -name openssh.server* -online | Add-WindowsCapability –Online                 #install openssh server from powershell
New-NetFirewallRule -DisplayName "ALLOW SSH TCP 22" -Direction Inbound -Action Allow -Protocol TCP -LocalPort 22                        #create rule in firewall to allow access machine
Set-Service -Name sshd -StartupType 'Automatic'         # startup Automatic in start machine
Start-Service sshd              			                  # start service sshd
Get-Item						                                    # Show content Directory
Get-ChildItem						                                # show content directory
Install-Module PSFolderSize				                      # install module use show size folders
Get-FolderSize path    					                        # show foldee size for any folder
Get-ChildItem C:\Users\alprof | Select length		        # show length Content folder or file
Find-Module -Name PowershellGet				                  # finds a module in the repositry
$env:Path += ';C:\Program Files\VideoLAN\VLC\'		      # set variable in enviromnent
$PSVersionTable						                              # show version powershell
Get-commen						                                  # show type commend
Get-WmiObject -class win32_ComputerSystem		            # show info about cumputer in powershell >> 5.1 wmi = Mindows Management Installment
Get-CimInstance -ClassName win32_ComputerName		        # show info about computer in pwsh >> 7.1 
Get-Service -Name sshd					                        # get service information
Get-Process -Name vlc					                          # get process information
Get-clipboard						                                # copy to console text from clipbord
Get-History						                                  # show history to this Sesion pwsh, alias = ghy
Update-help						                                  # update manual help
Restarte-Computer
Stop-Computer
Rename-Computer new_name				
Get-Commend -Verb nameVerb  -Noun NameNoun

# Alias in powershell is nickname to any cmdlet
Set-Alias np 'c:\windows.notepad.exe'			              #set alias in powershell this sesion powershell 
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

# Powershell Touterial from Touterialpoint.com
# powershell ISE = Integrated Scripting Enviromnent

Get-Help Get-Help
New-Item -Path fileName -ItemType Type

Copy-Item sourcePath destinationPath
Copy-Item sourcePath -Destination destinationPath
Copy-Item -Filter filterText -Path sourcePath -Destination destinationPath

Remove-Item fileName
Remove-Item fileName -Recurse                           # if directory is not empty . it well delete the item

Move-Item sourcePath destinationPath
Move-Item fileName fileName

Rename-Item dirName newDirName
Rename-Item fileName newfileName

Get-content fileName                                    # cmdlet is used to retrieve content of a file as an array

Test-Path dirName                                       # cmdlet is used to check existence of a folder 
Test-Path dirName                                       # cmdlet is used to check existence of a file 

Get-Date                                                # cmdlet is used to get System Date
Get-Date -DisplayHint {Date | Time | DateTime}
Set-Date -Date 'M D Y'

Set-Content -Path fileName -Value 'value'
Clear-Content -Path fileName                            # cmdlet can be used to erase content of a txt file
Add-Content -Path fileName -value 'value'               # cmdlet can be used to append content of a any file

# Advanced cmdlets

Measure-Object -character -line -word
# cmdlet can be used to get the properties of the passed output.
Compare-Object 
Where-Object 
# cmdlet can be use to Select objects  having particular property values from the collection of objects that are passed to it.
ForEach-Object 
# cmdlet can be used to perform operations on each object of a collection of objects.

#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

# 		++ Enad Section ++

ssh 192.168.1.3 -l administrator                                #login by ssh client
runas /savecred /user:alprof powershell							    # run any programs as administrator
cls																                      # clear screen cmd
whoami															                    # show user login

#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#reset password user adminidtrator windows server
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

d:
cd Windows\System32
ren Utilman.exe Utilman.exe.original
copy cmd.exe Utilman.exe
shutdown -r -t 0
click the Ease of Access 
net user Administrator P@sswordi23

#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#end steps reset password
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
type .\id_woody_debvm.pub >> .\administrators_authorized_keys
icacls.exe .\administrators_authorized_keys /inheritance:r /grant "AdministratoRs:F" /grant "SYSTEM:F"
type C:\Users\mahmo\.ssh\id_rsa.pub | ssh mahmoudvm@192.168.1.13 "cat >> .ssh/authorized_keys"          # allow access by public authorized_keys


