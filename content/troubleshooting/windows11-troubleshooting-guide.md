---
title: Speed Up Your Windows 11 Laptop
date: 2025-03-25
tags:
  - Windows 11
  - Troubleshooting
  - Performance
  - IT Support
  - Built-in Tools
  - Guides
---

If your computer feels slower than usual, don’t panic. In many cases, the issue isn’t hardware-related — it’s just background clutter, outdated files, or corrupted system components.

In this guide, I’ll show you how to speed up your Windows 11 laptop using **only built-in tools**, no third-party software required.

---

## 🧹 1. Use Disk Cleanup

Windows includes a classic tool called **Disk Cleanup** that helps remove temporary files and system junk.

**How to use it:**

1. Press `Win + S` and type `Disk Cleanup`
2. Select the system drive (usually `C:`)
3. Click **"Clean up system files"**
4. Select all checkboxes you want to delete, then press **OK**

![Disk Cleanup window](/images/windows11-troubleshooting/diskcleanupmain.png)  
![System files selection](/images/windows11-troubleshooting/disk-cleanup-system-files.png/)  

---

## 🛠 2. Run System File Checker (SFC)

Corrupted or missing system files can cause performance issues.

**How to run it:**

1. Open **PowerShell (or the CommandPrompt) as Administrator**
2. Type the following command and press Enter:

```bash
sfc /scannow
```
![sfc_scann](/images/windows11-troubleshooting/sfc_scann.png)

> 🧠 Don’t interrupt the scan. It can take a few minutes.

---

## 🚀 3. Disable Unnecessary Startup Apps

Too many apps launching at startup = slower boot time.

- Go to **Settings → Apps → Startup**
- Toggle off what you don’t need

![Startup apps in Settings](/images/windows11-troubleshooting/diskcleanupmain.png)  
![Startup tab in Task Manager](/images/windows11-troubleshooting/startup-taskmanager.png)

---

## 🔍 4. Check Resource Usage in Task Manager

Use Task Manager to see what’s slowing your system.

- Open with `Ctrl + Shift + Esc`
- Check the **CPU**, **Memory**, or **Disk** columns

![CPU performance tab](/images/windows11-troubleshooting/taskmanager-cpu-performance.png)

---

## 💡 5. Turn On Storage Sense

Storage Sense helps free up space automatically by deleting temp files and cloud-backed items.

- Go to **Settings → System → Storage**
- Enable **Storage Sense** and configure it

![Storage Sense settings](/images/windows11-troubleshooting/storage-sense.png)

---

## 🛡 6. Scan for Malware with Windows Security

Sometimes a slowdown is due to malware.

**Steps:**

1. Go to **Settings → Privacy & Security → Windows Security**
2. Open **Virus & threat protection**
3. Click **Scan options**
4. Choose **Microsoft Defender Offline Scan**

![Scan options in Windows Security](/images/windows11-troubleshooting/windows-security-scan-options.png)

---

## 🧪 7. Use Performance Monitor (Advanced)

Use this tool to monitor system performance over time.

1. Open **Run** with `Win + R`
2. Type `perfmon` and press Enter
3. Explore the overview and live graph

![Performance Monitor overview](/images/windows11-troubleshooting/performance-monitor-overview.png)  
![Graph view](/images/windows11-troubleshooting/performance-monitor-graph.png)

---

## ⚡ 8. Change Power Mode

Make sure your power plan is set to **Best performance**, especially when plugged in.

- Go to **Settings → System → Power & Battery**
- Click on **Power Mode** and choose **Best performance**

![Power settings overview](/images/windows11-troubleshooting/power-battery-settings.png)  
![Expanded power mode](/images/windows11-troubleshooting/power-mode-best-performance.png)

---

## 🧰 9. Use Windows Troubleshooter

Let Windows diagnose common issues automatically.

- Go to **Settings → System → Troubleshoot**
- Select **Other troubleshooters**
- Run the **Performance** troubleshooter

![Troubleshoot settings](/images/windows11-troubleshooting/troubleshoot-menu.png)  
![Other troubleshooters](/images/windows11-troubleshooting/troubleshoot-menu-2.png)

---

## 🧼 10. Reset This PC (Last Resort)

If nothing else works, you can reset Windows without losing personal files.

- Go to **Settings → System → Recovery**
- Click **Reset this PC**
- Choose **Keep my files**

![Recovery options](/images/windows11-troubleshooting/recovery-menu.png)  
![Reset this PC options](/images/windows11-troubleshooting/reset-options.png)

---

## ✅ Final Thoughts

You don’t always need to upgrade your hardware when your laptop slows down. Most of the time, Windows gives you everything you need to fix it — built right in.

Try these steps, and let me know what worked best for you!
