## EFI For ASUS Zenbook UX425EA & UX485EA
Hello everybody, this is my repo for the EFI Hackintosh for the ASUS Zenbook as i mention at the title. It only work on UX425EA and UX485EA and cannot work on other device, if the EFI not work on your computer that was not UX425EA or UX485EA then it's not my fault. If you even use this EFI for your Thinkpad and reset your own NVRAM on it then your cooked buddy. It's ain't my fault
<p align="center">
<img src="https://github.com/benzenma123/EFI-For-ASUS-Zenbook-UX425EA/blob/main/Screen%20Shot%202025-12-23%20at%202.49.05%20PM.png?raw=true">
</p>

## Working Hardware (Status)
- CPU: Intel Core i5-1135g7 but detected as Intel Core i7 something
- GPU: Detected as Iris Xe Graphics but no Acceleration (QE/CI)
- RAM: Receive as 8GB LPDDR4X
- WIFI: Intel AX201 work with AirportItlwm.kext (itlwm.kext too slow)
- BIOS Ver: 320
- Keyboard: Working perfectly
- Trackpad: Not yet without tweaks
- USB: 2 thunderbolt with the USB-A is working 
- HDMI: Cannot export to a external screen execept you disable the built-in screen 
- Keyboard backlight: Somewhat if boot into Windows or other os first
- Sound: Work with some tweaks and updating opencore
- Ethernet: USB Ethernet work but not recommended to use a adapter that was 100mpbs or lower


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
> <kbd>-v</kbd>
> **Description**: This is the verbose mode when boot so it show you the boot log and you will know exactly where you need to fix

> <kbd>-allow3d</kbd>
> **Description**: This is for 3D Acceleration but since Iris Xe don't have the official support for it but you can put it for fun :3

> <kbd>npci=0x2000</kbd>
> **Description**: Enable 4G decoding

## About Serial Number
Please use GenSMBIOS to generate a SMBIOS for your ASUS Zenbook as it can cause conflict if you use the SMBIOS that this EFI already had

## Disclaimer
Here's some stuff u gotta know:
- QE/CI is not working
- CPU draw image by itself so overheating is expected
- CPU Throttle sometimes is expected too
- Wi-Fi sometimes not work is as expected because you have to change the AirportItlwm

## Tested MacOS Version
- MacOS Catalina (Working out of the box)
- MacOS Big Sur (Working good but need some tweaks that i already include in the EFI)
- MacOS Monterey (pretty laggy)
- MacOS Ventura (super laggy due to lack of GPU Acceleration)
- MacOS Sierra (Smooth like butter :3)

## Declarelation (update Sat Dec 27 10:34PM)
False alarm guys, these are the unusable MacOS version and it won't be able to boot:
- MacOS Monterey (Took 30min+ to boot and it won't detect disk)
- MacOS Ventura (Took 45min+ to boot and disk won't detected)
- MacOS Sonoma (Didn't test yet)
- MacOS Tahoe (Hell nah, i aint testing it. My computer endure enough already!)
