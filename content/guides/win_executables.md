---
title: "Windows Executables Cheat Sheet"
date: 2025-03-18
description: "A quick reference guide for essential Windows executables to run through PowerShell and CMD."
---

# 🖥️ Windows Executables Cheat Sheet

This cheat sheet provides a collection of essential Windows executables that can be run through **PowerShell** and **Command Prompt (CMD)**. Whether you're managing system configurations, handling diagnostics, or troubleshooting, these commands will help streamline your IT workflow.

---

## 🔧 System Utilities

| Command          | Description                              |
|-----------------|----------------------------------------|
| `cmd.exe`        | Opens Command Prompt                  |
| `powershell.exe` | Opens a new PowerShell session        |
| `pwsh.exe`       | Opens PowerShell Core (if installed)  |
| `taskmgr.exe`    | Opens Task Manager                    |
| `regedit.exe`    | Opens the Windows Registry Editor     |
| `msconfig.exe`   | Opens System Configuration            |
| `eventvwr.exe`   | Opens Event Viewer                    |
| `explorer.exe`   | Opens File Explorer                   |
| `services.msc`   | Opens Services Manager                |
| `control.exe`    | Opens Control Panel                   |
| `gpedit.msc`     | Opens Group Policy Editor (if available) |
| `cleanmgr.exe`   | Launches Disk Cleanup Utility         |

---

## 🔍 System Information & Monitoring

| Command         | Description                          |
|---------------|----------------------------------|
| `systeminfo.exe` | Displays system details       |
| `dxdiag.exe`  | Opens DirectX Diagnostic Tool   |
| `perfmon.exe` | Opens Performance Monitor      |
| `resmon.exe`  | Opens Resource Monitor        |
| `winver.exe`  | Displays Windows version info |
| `ver.exe`     | Shows Windows version in CMD  |

---

## 📂 File & Disk Management

| Command         | Description                      |
|---------------|--------------------------------|
| `diskmgmt.msc` | Opens Disk Management        |
| `chkdsk.exe`  | Runs Check Disk utility      |
| `diskpart.exe` | Opens Disk Partition tool   |
| `format.com`  | Formats a disk               |
| `fsutil.exe`  | File system utility          |
| `compmgmt.msc` | Opens Computer Management   |
| `mdsched.exe`  | Opens Windows Memory Diagnostic |

---

## 🔐 Security & User Management

| Command         | Description                          |
|---------------|----------------------------------|
| `secpol.msc`  | Opens Local Security Policy Editor  |
| `certmgr.msc` | Opens Certificate Manager         |
| `lusrmgr.msc` | Opens Local Users and Groups      |
| `netplwiz.exe` | Opens Advanced User Accounts     |
| `credwiz.exe` | Opens Credential Backup Wizard   |
| `credmgr.exe` | Opens Windows Credential Manager |

---

## 📡 Networking Tools

| Command         | Description                          |
|---------------|----------------------------------|
| `ping.exe`    | Sends a ping request           |
| `tracert.exe` | Traces the route to a destination |
| `nslookup.exe` | DNS lookup tool               |
| `netstat.exe` | Displays network connections  |
| `ipconfig.exe` | Displays network configuration |
| `getmac.exe` | Displays MAC address           |
| `mstsc.exe` | Opens Remote Desktop Connection |
| `wf.msc` | Opens Windows Firewall            |
| `ncpa.cpl` | Opens Network Connections       |
| `netsh.exe` | Network shell utility          |

---

## 🛠️ Windows Configuration & Troubleshooting

| Command          | Description                                     |
|-----------------|---------------------------------------------|
| `control.exe`   | Opens Control Panel                         |
| `sysdm.cpl`    | Opens System Properties                     |
| `appwiz.cpl`   | Opens Programs and Features (Uninstall Programs) |
| `hdwwiz.cpl`   | Opens Device Manager                        |
| `timedate.cpl` | Opens Date and Time settings               |
| `intl.cpl`     | Opens Region settings                      |
| `powercfg.exe` | Power configuration tool                   |
| `bcdedit.exe`  | Boot Configuration Data Editor             |

---

## 🎥 Multimedia & Display

| Command        | Description                   |
|--------------|---------------------------|
| `mmsys.cpl`  | Opens Sound settings      |
| `dpiscaling.exe` | Opens Display Scaling settings |
| `sndvol.exe` | Opens Volume Mixer       |
| `dispdiag.exe` | Displays Display Diagnostics |

---

## 📜 Windows Logs & Management

| Command        | Description                      |
|--------------|----------------------------------|
| `taskschd.msc` | Opens Task Scheduler          |
| `schtasks.exe` | Task scheduler CLI tool      |
| `logoff.exe`  | Logs off current user         |
| `shutdown.exe` | Shuts down/restarts computer |
| `slmgr.vbs`   | Windows licensing manager     |
| `wscript.exe` | Runs Windows Script Host scripts |

---

## ⚡ PowerShell & CMD Execution

| Command              | Description                      |
|---------------------|--------------------------------|
| `start`            | Runs a program or script       |
| `&`                | Runs a command (call operator) |
| `Invoke-Expression` | Runs a string as a command    |
| `Start-Process`    | Starts a process in PowerShell |

---

### ✅ **How to Use These Commands?**
- Open **Command Prompt (cmd.exe)** or **PowerShell (powershell.exe)**.
- Type the command and press `Enter`.
- Some commands may require **administrator privileges** (Run as Administrator).