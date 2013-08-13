D:

Set-Alias -Name g -Value git

function get-gitstat { git status }
function gitcommit($msg) { git commit -a -m $msg }
function gitcheckout($brname) { 
   git stash
   git checkout $brname }
function gitaddall { git add --all }
function gitdiff { git difftool }
function gitbranch($brname) { 
   git stash
   git checkout -b $brname 
}

Set-Alias -Name gst -Value get-gitstat
Set-Alias -Name gct -Value gitcommit
Set-Alias -Name gco -Value gitcheckout
Set-Alias -Name gaa -Value gitaddall
Set-Alias -Name gdf -Value gitdiff
Set-Alias -Name gbr -Value gitbranch

D:
# Load posh-git example profile
. 'D:\posh-git\profile.example.ps1'
