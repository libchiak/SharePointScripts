                    Add-PSSnapin microsoft.sharepoint.powershell
                    $oldprefix = "i:0ǻ.t|labshare|"
                    $userprefix = "i:0ǵ.t|labshare|"  #|labshare|" #i:0ǻ.t|labshare|jezol2@nih.gov
                    $usersuffix = "@nih.gov"
                    # Get all of the users in a web application
                    $url = 'https://ncatsconnect-default.nih.gov'
                    
                    #$users = Get-SPUser -Limit All -web $url   | Where-Object {$_.DisplayName -like ("*kst3@uw.edu *")} |  select userlogin, DisplayName, EMail
                    $users = Get-SPUser -Limit All -web $url  #| Where-Object {$_.userlogin -like ('*i:0ǵ.t|labshare|cathyy@washington.edu*')} |  select userlogin, DisplayName, EMail
                    #Set-SPUser -Identity "i:0ǻ.t|labshare|scgeorge@ucdavis.edu" -DisplayName "Steven George"
                    # Loop through each of the users in the web app
                    foreach($user in $users){
                        # Create an array that will be used to split the user name
                        $a=@()
                        $displayname = $user.DisplayName
                        $userlogin = $user.UserLogin
                        $gmailusername = "i:0ǵ.t|labshare|cathyy.uw.edu@login.gov"
                        $username = ""
                        if($userlogin.Contains("i:0ǵ.t|labshare|cathyy@washington.edu")){
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

                         
                         Anna-Lena Gustavsson (Unverified)
Deacy, Mariam (NIH/NCATS) [E]
Dasari, Lokesh (NIH/NCATS) [C]



                         get-spweb -Identity 'https://ncatsconnect-default.nih.gov' | Foreach-object {
  Set-SPUser -Identity "i:0ǵ.t|labshare|cathyy.uw.edu@login.gov" -DisplayName "Cathy Yeung" -Email "cathyy@uw.edu" –Web $_ }
  
                         get-spweb -Identity 'https://asr-default.ncats.nih.gov' | Foreach-object {
  Set-SPUser -Identity "i:0ǵ.t|labshare|f127c357-79b1-4559-bdac-af3a7578e2e7" -DisplayName "Michelle Arkin" -Email "Michelle.Arkin@ucsf.edu" –Web $_ }
                         
                         
                         
                         Get-SPSite -Limit All | Get-SPWeb | Foreach-object {
  Set-SPUser -Identity "i:0ǵ.t|labshare|n.ashammakhi@ucla.edu" -DisplayName "Himmelfarb, Jonathan" -Email "n.ashammakhi@ucla.edu"  –Web $_ }

#Read more: https://www.sharepointdiary.com/2015/05/update-user-display-name-in-sharepoint-2013-using-powershell.html#ixzz5xLncoH2a


#Set-SPUser -Identity "i:0ǻ.t|labshare|ashveena@washington.edu" -DisplayName "A Shveena" -Web https://ncatsconnect-default.nih.gov/mps
#-------------
 