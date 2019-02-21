# Convert Users openssh keys into ppk putty keys
# Requires recent version of WinSCP, specifically winscp.com
# puttygen on Windows does not have the command line functionality of puttygen on Linux

$winscpcom='C:\Program Files (x86)\WinSCP\WinSCP.com'
$keygen='/keygen'
$keyspath='c:\path-to-openssh-keys'

foreach ($file in get-childitem $keyspath\*)
{



    $outfile=$($args2 + $file.Name + ".ppk")
	&$winscpcom $keygen $file $outfile


}

