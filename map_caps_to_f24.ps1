$val = ([byte[]](
    0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00,
    0x02, 0x00, 0x00, 0x00,
    0x6F, 0x00, 0x3A, 0x00,
    0x02, 0x00, 0x00, 0x00
));
New-ItemProperty `
  -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Keyboard Layout" `
  -Name "Scancode Map" `
  -PropertyType "Binary" `
  -Value $val `
  -Force
