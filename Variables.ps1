$who = "Beibei"
$adj = "great"

echo "$who is $adj."

#PS C:\Users\beibeihu\Desktop> & "C:\Users\beibeihu\Desktop\Variables.ps1"
#Beibei is great.

# you may wonder what is the variable is $adj., how PS proceeds line 4
# in PowerShell, variable names cannot contain dots (.) 
# unless you're accessing a property of an object.
# e.g $date = Get-Date Write-Output $date.Day    
# ✅ Accesses the "Day" property of the DateTime object