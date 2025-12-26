## EFI For ASUS Zenbook UX425EA & UX485EA
Hello everybody, this is my repo for the EFI Hackintosh for the ASUS Zenbook as i mention at the title. It only work on UX425EA and UX485EA and cannot work on other device, if the EFI not work on your computer that was not UX425EA or UX485EA then it's not my fault. If you even use this EFI for your Thinkpad and reset your own NVRAM on it then your cooked buddy. It's ain't my fault
<p align="center">
<img src="https://github.com/benzenma123/EFI-For-ASUS-Zenbook-UX425EA/blob/main/Screen%20Shot%202025-12-23%20at%202.49.05%20PM.png?raw=true">
</p>

## Working Hardware
- CPU: Intel Core i5-1135g7
- GPU: Not working yet (missing kext & patch)
- RAM: Receive as 8GB LPDDR4X
- WIFI: Intel AX201 work with itlwm.kext & heliport
- BIOS Ver: 320
- Keyboard: Working perfectly
- Trackpad: Not yet
- USB: 2 thunderbolt with the USB-A is work
- HDMI: Cannot export to a external screen
- Keyboard backlight: Somewhat


## Tutorial to get the EFI

```bash/zsh
git clone https://github.com/benzenma123/EFI-For-ASUS-Zenbook-UX425EA
cd EFI-For-ASUS-Zenbook-UX425EA
chmod +x install.sh
./install.sh
```
## Supporter 
- Benzenma123
- (If you contribute then I'll put you in here)

## Contact Info
- E-mail: haidangchauduc@gmail.com
- Reddit: [Reddit](https://www.reddit.com/user/Critical_Self_6040/)
- Discord: ngvietkieubell1212

## Boot Arg (Optional)
> -v
> **Description**: This is the verbose mode when boot so it show you the boot log and you will know exactly where you need to fix

> -allow3d
> **Description**: This is for 3D Acceleration but since Iris Xe don't have the official support for it but you can put it for fun :3

> npci=0x2000
> **Description**: Enable 4G decoding

## About Serial Number
Please use GenSMBIOS to generate a SMBIOS for your ASUS Zenbook as it can cause conflict if you use the SMBIOS that this EFI already had
