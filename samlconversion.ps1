                    Add-PSSnapin microsoft.sharepoint.powershell
                    $oldprefix = "i:0ǻ.t|labshare|"
                    $userprefix = "i:0ǵ.t|labshare|"  #|labshare|" #i:0ǻ.t|labshare|xx
                    $usersuffix = "@nih.gov"
                    # Get all of the users in a web application
                    $url = 'https://ncatsconnect-default.nih.gov'
                    
                    #$users = Get-SPUser -Limit All -web $url   | Where-Object {$_.DisplayName -like ("*@uw.edu *")} |  select userlogin, DisplayName, EMail
                    $users = Get-SPUser -Limit All -web $url  #| Where-Object {$_.userlogin -like ('*i:0ǵ.t|labshare|edu*')} |  select userlogin, DisplayName, EMail
                    #Set-SPUser -Identity "i:0ǻ.t|labshare|***.edu" -DisplayName "xxx"
                    # Loop through each of the users in the web app
                    foreach($user in $users){
                        # Create an array that will be used to split the user name
                        $a=@()
                        $displayname = $user.DisplayName
                        $userlogin = $user.UserLogin
                        $gmailusername = "i:0ǵ.t|labshare|cxxxu@login.gov"
                        $username = ""
                        if($userlogin.Contains("i:0ǵ.t|labshare|xxx@washington.edu")){
                            if( !$userlogin.Contains("NIH\")){
                                $a = $userlogin.split('|')
                                $username = $userprefix + $gmailusername #+ $usersuffix
                                if(!$userlogin.Contains("nih\inncats")){
                                   # Move-SPUser –Identity $user –NewAlias $username -ignoresid -Confirm:$false
                                    Write-Output $userlogin " was changed to " $username
                                                     }
                                }
    
                            }
                         }

                         
                         



                         get-spweb -Identity 'https://ncatsconnect-default.nih.gov' | Foreach-object {
  Set-SPUser -Identity "i:0ǵ.t|labshare|xxx@login.gov" -DisplayName "xxx" -Email "cxxx" –Web $_ }
  
                         get-spweb -Identity 'https://asr-default.ncats.nih.gov' | Foreach-object {
  Set-SPUser -Identity "i:0ǵ.t|labshare|fxxx" -DisplayName "xx" -Email "xxx" –Web $_ }
                         
                         
                         
                         

#Set-SPUser -Identity "i:0ǻ.t|labshare|ashveena@washington.edu" -DisplayName "A Shveena" -Web https://ncatsconnect-default.nih.gov/mps
#-------------
 
