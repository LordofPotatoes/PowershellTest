Add-Type @'
using System;
using System.Runtime.InteropServices;

public struct Win32
{
	[DllImport("user32.dll")]
	public static extern int GetAsyncKeyState(int KeyStates);

	[DllImport("user32.dll")]
	public static extern void mouse_event(int dwFlags, int dx, int dy, int dwData, int dwExtraInfo);
}
'@

Function IsKeyDown($key) {
	return [Convert]::ToBoolean([Win32]::GetAsyncKeyState($key) -band 0x8000)
}

$isOn = $true

while ($isOn = $true) {
    if (IsKeyDown 114) {
        $ak = $true
        Write-Host "AK-74 On"
        $multi = 1.07

        while($ak = $true) {
            $recoilTableX = 0.0, -36, 5, -59, -49, 3, 20, 25, 45, 43, 32, 82, 8, 43, -32, -25, -40, -35, -32, -43, -42, -42, -25, 15, 20, 35, 47, 50, 61, 40
            $recoilTableY = 0.0, 40, 48, 47, 48, 33, 33, 28, 24, 16, 13, 18, 22, 24, 29, 33, 32, 33, 29, 24, 22, 20, 17, 17, 18, 20, 27, 26, 26, 27
            
            $commands = @()
            $commands += {[Win32]::mouse_event(1, $recoilTableX[0]*$multi, $recoilTableY[0]*$multi, 0, 0)
                    sleep -Milliseconds 133.33}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[1]*$multi, $recoilTableY[1]*$multi, 0, 0)
                    sleep -Milliseconds 133.33}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[2]*$multi, $recoilTableY[2]*$multi, 0, 0)
                    sleep -Milliseconds 133.33}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[3]*$multi, $recoilTableY[3]*$multi, 0, 0)
                    sleep -Milliseconds 133.33}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[4]*$multi, $recoilTableY[4]*$multi, 0, 0)
                    sleep -Milliseconds 133.33}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[5]*$multi, $recoilTableY[5]*$multi, 0, 0)
                    sleep -Milliseconds 133.33}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[6]*$multi, $recoilTableY[6]*$multi, 0, 0)
                    sleep -Milliseconds 133.33}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[7]*$multi, $recoilTableY[7], 0, 0)
                    sleep -Milliseconds 133.33}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[8]*$multi, $recoilTableY[8]*$multi, 0, 0)
                    sleep -Milliseconds 133.33}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[9]*$multi, $recoilTableY[9]*$multi, 0, 0)
                    sleep -Milliseconds 133.33}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[10]*$multi, $recoilTableY[10]*$multi, 0, 0)
                    sleep -Milliseconds 133.33}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[11]*$multi, $recoilTableY[11]*$multi, 0, 0)
                    sleep -Milliseconds 133.33}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[12]*$multi, $recoilTableY[12]*$multi, 0, 0)
                    sleep -Milliseconds 133.33}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[13]*$multi, $recoilTableY[13]*$multi, 0, 0)
                    sleep -Milliseconds 133.33}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[14]*$multi, $recoilTableY[14]*$multi, 0, 0)
                    sleep -Milliseconds 133.33}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[15]*$multi, $recoilTableY[15]*$multi, 0, 0)
                    sleep -Milliseconds 133.33}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[16]*$multi, $recoilTableY[16]*$multi, 0, 0)
                    sleep -Milliseconds 133.33}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[17]*$multi, $recoilTableY[17]*$multi, 0, 0)
                    sleep -Milliseconds 133.33}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[18]*$multi, $recoilTableY[18]*$multi, 0, 0)
                    sleep -Milliseconds 133.33}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[19]*$multi, $recoilTableY[19]*$multi, 0, 0)
                    sleep -Milliseconds 133.33}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[20]*$multi, $recoilTableY[20]*$multi, 0, 0)
                    sleep -Milliseconds 133.33}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[21]*$multi, $recoilTableY[21]*$multi, 0, 0)
                    sleep -Milliseconds 133.33}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[22]*$multi, $recoilTableY[22]*$multi, 0, 0)
                    sleep -Milliseconds 133.33}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[23]*$multi, $recoilTableY[23]*$multi, 0, 0)
                    sleep -Milliseconds 133.33}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[24]*$multi, $recoilTableY[24]*$multi, 0, 0)
                    sleep -Milliseconds 133.33}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[25]*$multi, $recoilTableY[25]*$multi, 0, 0)
                    sleep -Milliseconds 133.33}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[26]*$multi, $recoilTableY[26]*$multi, 0, 0)
                    sleep -Milliseconds 133.33}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[27]*$multi, $recoilTableY[27]*$multi, 0, 0)
                    sleep -Milliseconds 133.33}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[28]*$multi, $recoilTableY[28]*$multi, 0, 0)
                    sleep -Milliseconds 133.33}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[29]*$multi, $recoilTableY[29]*$multi, 0, 0)
	            sleep -Milliseconds 133.33}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[30]*$multi, $recoilTableY[30]*$multi, 0, 0)
                    sleep -Milliseconds 600}


            $count = 0

            while ($ak -and (IsKeyDown 1) -and (IsKeyDown 2)) {
                    DO
                    {
                        $count += 1
                        Invoke-Command $commands[$count]
                    } While ($isOn -and (IsKeyDown 1) -and (IsKeyDown 2))      
            $count = 0
            }

            if (IsKeyDown 113) {
                $ak = $false
                Write-Host "AK-74 Off"
                break
                sleep -Milliseconds 500
            }
        }
    }

    if (IsKeyDown 115) {
        $semi = $true
        Write-Host "Semi On"
        sleep -Milliseconds 100

        while($semi = $true) {
            if ((IsKeyDown 1) -and (IsKeyDown 2) -and (IsKeyDown 17)){
            [Win32]::mouse_event(1, 0, 45, 0, 0)
            sleep -Milliseconds 174.92
            } elseif ((IsKeyDown 1) -and (IsKeyDown 2)){
            [Win32]::mouse_event(1, 0, 93, 0, 0)
            sleep -Milliseconds 174.92
            } elseif (IsKeyDown 113) {
                $semi = $false
                Write-Host "Semi Off"
                break
                sleep -Milliseconds 200
            }
        }
    }

    if (IsKeyDown 116) {
        $mp5 = $true
        Write-Host "MP5A4 On"

        while($mp5 = $true) {
            $recoilTableX = 0.0, -3, -1, 21, 18, 30, 28, -1, -8, -20, -15, -14, -1, 15, 25, 40, 23, 12, 10, -20, -24, -30, -40, -50, -39, -14, 12, 34, 34, 0
            $recoilTableY = 0.0, 35, 25, 37, 31, 30, 25, 15, 15, 15, 15, 12, 15, 3, 2, 4, 2, 1, 1, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 0
            
            $commands = @()
            $commands += {[Win32]::mouse_event(1, $recoilTableX[0], $recoilTableY[0], 0, 0)
                    sleep -Milliseconds 100}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[1], $recoilTableY[1], 0, 0)
                    sleep -Milliseconds 100}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[2], $recoilTableY[2], 0, 0)
                    sleep -Milliseconds 100}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[3], $recoilTableY[3], 0, 0)
                    sleep -Milliseconds 100}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[4], $recoilTableY[4], 0, 0)
                    sleep -Milliseconds 100}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[5], $recoilTableY[5], 0, 0)
                    sleep -Milliseconds 100}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[6], $recoilTableY[6], 0, 0)
                    sleep -Milliseconds 100}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[7], $recoilTableY[7], 0, 0)
                    sleep -Milliseconds 100}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[8], $recoilTableY[8], 0, 0)
                    sleep -Milliseconds 100}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[9], $recoilTableY[9], 0, 0)
                    sleep -Milliseconds 100}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[10], $recoilTableY[10], 0, 0)
                    sleep -Milliseconds 100}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[11], $recoilTableY[11], 0, 0)
                    sleep -Milliseconds 100}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[12], $recoilTableY[12], 0, 0)
                    sleep -Milliseconds 100}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[13], $recoilTableY[13], 0, 0)
                    sleep -Milliseconds 100}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[14], $recoilTableY[14], 0, 0)
                    sleep -Milliseconds 100}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[15], $recoilTableY[15], 0, 0)
                    sleep -Milliseconds 100}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[16], $recoilTableY[16], 0, 0)
                    sleep -Milliseconds 100}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[17], $recoilTableY[17], 0, 0)
                    sleep -Milliseconds 100}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[18], $recoilTableY[18], 0, 0)
                    sleep -Milliseconds 100}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[19], $recoilTableY[19], 0, 0)
                    sleep -Milliseconds 100}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[20], $recoilTableY[20], 0, 0)
                    sleep -Milliseconds 100}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[21], $recoilTableY[21], 0, 0)
                    sleep -Milliseconds 100}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[22], $recoilTableY[22], 0, 0)
                    sleep -Milliseconds 100}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[23], $recoilTableY[23], 0, 0)
                    sleep -Milliseconds 100}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[24], $recoilTableY[24], 0, 0)
                    sleep -Milliseconds 100}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[25], $recoilTableY[25], 0, 0)
                    sleep -Milliseconds 100}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[26], $recoilTableY[26], 0, 0)
                    sleep -Milliseconds 100}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[27], $recoilTableY[27], 0, 0)
                    sleep -Milliseconds 100}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[28], $recoilTableY[28], 0, 0)
                    sleep -Milliseconds 100}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[29], $recoilTableY[29], 0, 0)
	            sleep -Milliseconds 100}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[30], $recoilTableY[30], 0, 0)
                    sleep -Milliseconds 560}


            $count = 0

            while ($mp5 -and (IsKeyDown 1) -and (IsKeyDown 2)) {
                    DO
                    {
                        $count += 1
                        Invoke-Command $commands[$count]
                    } While ($isOn -and (IsKeyDown 1) -and (IsKeyDown 2))      
            $count = 0
            }

            if (IsKeyDown 113) {
                $mp5 = $false
                Write-Host "MP5A4 Off"
                break
                sleep -Milliseconds 500
            }
        }
    }

    if (IsKeyDown 117) {
        $smg = $true
        Write-Host "SMG On"
        sleep -Milliseconds 300

        while($smg = $true) {
            $recoilTableX = 0, -1, -1, -4, -7, -8, -6, -7, 2, 3, 12, 14, 11, 6, -2, 0, -9, -9, -7, -8, -6, -6, -10, -6, -6, -3, 5, 19, 21, 17
            $recoilTableY = 0, 18, 19, 19, 17, 16, 11, 8, 8, 10, 8, 2, 5, 2, 0, 1, 5, -1, 4, 2, 4, 1, 2, -1, 2, 5, 2, 2, 3, 4
            
            $commands = @()
            $commands += {[Win32]::mouse_event(1, $recoilTableX[0], $recoilTableY[0], 0, 0)
                    sleep -Milliseconds 100}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[1], $recoilTableY[1], 0, 0)
                    sleep -Milliseconds 100}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[2], $recoilTableY[2], 0, 0)
                    sleep -Milliseconds 100}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[3], $recoilTableY[3], 0, 0)
                    sleep -Milliseconds 100}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[4], $recoilTableY[4], 0, 0)
                    sleep -Milliseconds 100}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[5], $recoilTableY[5], 0, 0)
                    sleep -Milliseconds 100}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[6], $recoilTableY[6], 0, 0)
                    sleep -Milliseconds 100}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[7], $recoilTableY[7], 0, 0)
                    sleep -Milliseconds 100}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[8], $recoilTableY[8], 0, 0)
                    sleep -Milliseconds 100}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[9], $recoilTableY[9], 0, 0)
                    sleep -Milliseconds 100}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[10], $recoilTableY[10], 0, 0)
                    sleep -Milliseconds 100}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[11], $recoilTableY[11], 0, 0)
                    sleep -Milliseconds 100}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[12], $recoilTableY[12], 0, 0)
                    sleep -Milliseconds 100}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[13], $recoilTableY[13], 0, 0)
                    sleep -Milliseconds 100}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[14], $recoilTableY[14], 0, 0)
                    sleep -Milliseconds 100}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[15], $recoilTableY[15], 0, 0)
                    sleep -Milliseconds 100}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[16], $recoilTableY[16], 0, 0)
                    sleep -Milliseconds 100}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[17], $recoilTableY[17], 0, 0)
                    sleep -Milliseconds 100}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[18], $recoilTableY[18], 0, 0)
                    sleep -Milliseconds 100}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[19], $recoilTableY[19], 0, 0)
                    sleep -Milliseconds 100}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[20], $recoilTableY[20], 0, 0)
                    sleep -Milliseconds 100}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[21], $recoilTableY[21], 0, 0)
                    sleep -Milliseconds 100}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[22], $recoilTableY[22], 0, 0)
                    sleep -Milliseconds 100}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[23], $recoilTableY[23], 0, 0)
                    sleep -Milliseconds 100}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[24], $recoilTableY[24], 0, 0)
                    sleep -Milliseconds 100}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[25], $recoilTableY[25], 0, 0)
                    sleep -Milliseconds 560}


            $count = 0

            while ($smg -and (IsKeyDown 1) -and (IsKeyDown 2)) {
                    DO
                    {
                        $count += 1
                        Invoke-Command $commands[$count]
                    } While ($isOn -and (IsKeyDown 1) -and (IsKeyDown 2))      
            $count = 0
            }

            if (IsKeyDown 113) {
                $smg = $false
                Write-Host "SMG Off"
                break
                sleep -Milliseconds 500
            }
        }
    }

if (IsKeyDown 120) {
        $lr300 = $true
        Write-Host "LR-300 On"
        $multi = 0.66
        sleep -Milliseconds 300

        while($lr300 = $true) {
            $recoilTableX = 0.0, -3, -2, -20, -5, -35, -20, -25, -5, 30, 30, 60, 20, 20, 21, -30, -31, -21, -30, -30, -29, -30, -19, -20, -20, -30, 21, 30, 41, 50
            $recoilTableY = 0.0, 50, 56, 75, 55, 45, 25, 24, 15, 25, 23, 25, 35, 6, 5, 5, 5, 4, 4, 5, 4, 5, 1, 1, 3, 1, 2, 2, 0, 31
            
            $commands = @()
            $commands += {[Win32]::mouse_event(1, $recoilTableX[0]*$multi, $recoilTableY[0]*$multi, 0, 0)
                    sleep -Milliseconds 120.00}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[1]*$multi, $recoilTableY[1]*$multi, 0, 0)
                    sleep -Milliseconds 120.00}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[2]*$multi, $recoilTableY[2]*$multi, 0, 0)
                    sleep -Milliseconds 120.00}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[3]*$multi, $recoilTableY[3]*$multi, 0, 0)
                    sleep -Milliseconds 120.00}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[4]*$multi, $recoilTableY[4]*$multi, 0, 0)
                    sleep -Milliseconds 120.00}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[5]*$multi, $recoilTableY[5]*$multi, 0, 0)
                    sleep -Milliseconds 120.00}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[6]*$multi, $recoilTableY[6]*$multi, 0, 0)
                    sleep -Milliseconds 120.00}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[7]*$multi, $recoilTableY[7]*$multi, 0, 0)
                    sleep -Milliseconds 120.00}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[8]*$multi, $recoilTableY[8]*$multi, 0, 0)
                    sleep -Milliseconds 120.00}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[9]*$multi, $recoilTableY[9]*$multi, 0, 0)
                    sleep -Milliseconds 120.00}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[10]*$multi, $recoilTableY[10]*$multi, 0, 0)
                    sleep -Milliseconds 120.00}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[11]*$multi, $recoilTableY[11]*$multi, 0, 0)
                    sleep -Milliseconds 120.00}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[12]*$multi, $recoilTableY[12]*$multi, 0, 0)
                    sleep -Milliseconds 120.00}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[13]*$multi, $recoilTableY[13]*$multi, 0, 0)
                    sleep -Milliseconds 120.00}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[14]*$multi, $recoilTableY[14]*$multi, 0, 0)
                    sleep -Milliseconds 120.00}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[15]*$multi, $recoilTableY[15]*$multi, 0, 0)
                    sleep -Milliseconds 120.00}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[16]*$multi, $recoilTableY[16]*$multi, 0, 0)
                    sleep -Milliseconds 120.00}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[17]*$multi, $recoilTableY[17]*$multi, 0, 0)
                    sleep -Milliseconds 120.00}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[18]*$multi, $recoilTableY[18]*$multi, 0, 0)
                    sleep -Milliseconds 120.00}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[19]*$multi, $recoilTableY[19]*$multi, 0, 0)
                    sleep -Milliseconds 120.00}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[20]*$multi, $recoilTableY[20]*$multi, 0, 0)
                    sleep -Milliseconds 120.00}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[21]*$multi, $recoilTableY[21]*$multi, 0, 0)
                    sleep -Milliseconds 120.00}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[22]*$multi, $recoilTableY[22]*$multi, 0, 0)
                    sleep -Milliseconds 120.00}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[23]*$multi, $recoilTableY[23]*$multi, 0, 0)
                    sleep -Milliseconds 120.00}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[24]*$multi, $recoilTableY[24]*$multi, 0, 0)
                    sleep -Milliseconds 120.00}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[25]*$multi, $recoilTableY[25]*$multi, 0, 0)
                    sleep -Milliseconds 120.00}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[26]*$multi, $recoilTableY[26]*$multi, 0, 0)
                    sleep -Milliseconds 120.00}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[27]*$multi, $recoilTableY[27]*$multi, 0, 0)
                    sleep -Milliseconds 120.00}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[28]*$multi, $recoilTableY[28]*$multi, 0, 0)
                    sleep -Milliseconds 120.00}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[29]*$multi, $recoilTableY[29]*$multi, 0, 0)
	                sleep -Milliseconds 120.00}
            $commands += {[Win32]::mouse_event(1, $recoilTableX[30]*$multi, $recoilTableY[30]*$multi, 0, 0)
                    sleep -Milliseconds 600}


            $count = 0

            while ($lr300 -and (IsKeyDown 1) -and (IsKeyDown 2)) {
                    DO
                    {
                        $count += 1
                        Invoke-Command $commands[$count]
                    } While ($isOn -and (IsKeyDown 1) -and (IsKeyDown 2))      
            $count = 0
            }

            if (IsKeyDown 113) {
                $lr300 = $false
                Write-Host "LR-300 Off"
                break
                sleep -Milliseconds 500
            }
        }
    }

    if (IsKeyDown 121) {
        $m92 = $true
        Write-Host "M92 On"
        $multi = 1.00
        sleep -Milliseconds 300

        while($m92 = $true) {
            if ((IsKeyDown 1) -and (IsKeyDown 2)) {
                [Win32]::mouse_event(1, 0, 34*$multi, 0, 0)
                sleep -Milliseconds 150.00
            }
            if (IsKeyDown 113) {
                $m92 = $false
                Write-Host "M92 Off"
                break
                sleep -Milliseconds 500
            }
        }
    }
}    