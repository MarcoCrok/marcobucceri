---
title: "SSH Authentication with Public Key: A Complete Guide"
date: 2025-04-03
tags: [ssh, security, linux, authentication]
description: "Learn how to set up SSH public key authentication, generate and install SSH keys, and understand the related security risks and mitigations."
---

SSH (Secure Shell) is a widely used protocol for securely accessing remote systems. One of the most secure and convenient ways to authenticate over SSH is through **public key authentication**. This guide will show you how to generate an SSH key pair, set it up on a remote host, and cover important security considerations and how to mitigate risks.

## What Is SSH Public Key Authentication?

Instead of logging in with a username and password, public key authentication uses a **pair of cryptographic keys**:  
- A **private key**, stored securely on your local machine  
- A **public key**, stored on the remote server

The server uses the public key to verify the client’s private key, enabling access without ever sending passwords over the network.

## Step 1: Generate an SSH Key Pair

Run the following command on your local machine:

```bash
ssh-keygen -t ed25519 -C "your_email@example.com"
```

- `-t ed25519` specifies the key type (recommended over RSA for better security).
- `-C` adds a label to help you identify the key.

You’ll be prompted to choose a file path (default is `~/.ssh/id_ed25519`) and optionally enter a passphrase for extra security.

## Step 2: Copy the Public Key to the Remote Host

You can easily inject your public key into the remote server’s authorized keys using:

```bash
ssh-copy-id username@remote_host
```

Alternatively, you can manually append the public key to the `~/.ssh/authorized_keys` file on the remote server:

```bash
cat ~/.ssh/id_ed25519.pub | ssh username@remote_host 'mkdir -p ~/.ssh && cat >> ~/.ssh/authorized_keys && chmod 600 ~/.ssh/authorized_keys && chmod 700 ~/.ssh'
```

Now you can log in without a password:

```bash
ssh username@remote_host
```

## Step 3: (Optional) Disable Password Authentication

To force SSH to use keys only, edit the SSH server config (`/etc/ssh/sshd_config`) on the remote host:

```bash
PasswordAuthentication no
PubkeyAuthentication yes
```

Then restart the SSH service:

```bash
sudo systemctl restart sshd
```

⚠️ **Warning**: Do this only after confirming that key-based login works correctly.

## Security Risks and How to Mitigate Them

| Risk | Mitigation |
|------|------------|
| **Private key compromise** | Always use a **strong passphrase** when creating the key. Store it securely (e.g., encrypted disk, hardware token). |
| **Unrestricted access if key is stolen** | Limit usage with `from=` or `command=` options in `authorized_keys`. Use **key rotation**. |
| **Key left on multiple systems** | Avoid spreading your private key across devices. Generate new keys for different machines. |
| **Outdated key types (like RSA-1024)** | Use modern key types like `ed25519` or at least `rsa` with a minimum of 4096 bits. |
| **No alerting or monitoring** | Enable logging on the SSH server and monitor access. Consider intrusion detection systems (IDS). |

## Summary

SSH public key authentication provides a secure, password-less way to access remote servers. By properly generating, installing, and managing your keys, and by hardening your SSH configuration, you reduce the risk of unauthorized access significantly.