---
title: "Reset Local Account Password From Advanced Startup Options"
date: 2025-04-08
tags:
  - Windows 11
  - Troubleshooting
  - PasswordReset
  - IT Support
  - Account
---

## ✅ Problem

You’ve forgotten the password to your **local account** on a Windows 11 PC and can’t log in. There’s no Microsoft account attached, no password reset disk, and you don’t want to use third-party tools. The only way remaining is to format the laptop. But no, stop there and read below!

---

## 🎯 Goal

Access the system and reset the password **using only Windows built-in tools**, without reinstalling or losing any data.

---

## 🛠️ Solution Steps

### 1. Boot into Advanced Startup

- On the login screen, click the **Power icon**, then **hold Shift** and select **Restart**.
- This opens the **Advanced Startup Options** menu.


> 💡 If you can’t access the login screen, try forcing a few failed boots (holding the power button while it starts, a few times in a row) to trigger recovery mode.

---

### 2. Open Command Prompt

1. Select **Troubleshoot**  
![troubleshoot](/images/local-account-psw/1-troubleshoot.png)

2. Click **Advanced options**
![Advanced Statup Options](/images/local-account-psw/2-advanced_options.png)

3. Choose **Command Prompt**
![cmd](/images/local-account-psw/3-CommandPromtp.png) 
---

### 3. Replace Utility Manager with Command Prompt

In the Command Prompt window, run:

![commands](/images/local-account-psw/4-commands.png) 

```cmd
copy c:\windows\system32\utilman.exe c:\
copy c:\windows\system32\cmd.exe c:\windows\system32\utilman.exe
```

- This replaces the **Ease of Access** tool with **Command Prompt** on the login screen.

---

### 4. Restart the System

Close the Command Prompt and click **Continue**.  
Your PC will reboot into Windows.
![continue](/images/local-account-psw/5-continue.png) 

---

### 5. Reset the Password

At the login screen:

1. Click the **Ease of Access** icon (bottom-right corner)  
   → Command Prompt will open.
   ![ease](/images/local-account-psw/6-easy.png) 

2. Type:

```cmd
net user your_username your_new_password
```
Example:

```cmd
net user marco P@ssword123
```
![netuser](/images/local-account-psw/7-netuser.png)

3. Press **Enter** – You’ll get a confirmation if the password is changed.

---

### 6. Restore Original Utility Manager

After logging in, open **Command Prompt as Administrator** and restore the original Utility Manager. If this doesn't work because the Admin account doesn't have enough authorization, you can either use the sysinternal tool **PSEXEC** (I will make a guide in the future on how to use it), or again use the CommandPrompt from the **Troubleshooting** sectiont in **Advanced Startup Options** :

```cmd
copy c:\utilman.exe c:\windows\system32\utilman.exe
```
![netuser](/images/local-account-psw/8-utilmanbackup.png)

This removes the command prompt shortcut from the login screen.

---

## 🔒 Important Notes

- This method only works on **local accounts** (not Microsoft-linked accounts).
- If **BitLocker** is enabled, you’ll need the recovery key to access the drive.
- Use only on systems you own or are authorized to repair. Unauthorized access is illegal.