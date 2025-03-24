---
title: Understanding Network Segmentation and Subnetting
date: 2025-03-24
tags:
  - Networking
  - Subnetting
  - IT
  - Basics
---

## Why It Matters

Whether you're working in IT support, system administration, or cybersecurity, having a solid grasp of **network segmentation** and **subnetting** is essential. These concepts form the backbone of modern network design and are critical for building secure, scalable, and high-performance environments.

Knowing how to segment a network properly allows you to:
- Control and limit access between departments (e.g., finance and HR)
- Isolate sensitive devices or servers from the rest of the network
- Reduce the spread of malware or unauthorized traffic in case of a breach
- Optimize network performance by minimizing unnecessary broadcast traffic

You’ll often apply this knowledge in real-world scenarios such as:
- Designing network infrastructures for offices or data centers  
- Managing VLANs and IP allocation in corporate environments  
- Implementing security policies based on Zero Trust architecture  
- Troubleshooting communication issues between different subnets

Understanding how IP addresses, subnets, and masks work under the hood equips you to confidently navigate and shape the

---

## What Is Network Segmentation?

**Network segmentation** is the process of dividing a computer network into smaller parts called **subnetworks** or **subnets**. These logical divisions help control the flow of traffic and improve security by isolating different parts of the network.

By segmenting a network, you can:
- Apply different security rules to different zones
- Reduce the impact of internal threats
- Improve performance and organization

In the past, IT teams focused mainly on **perimeter security**, thinking external threats were the most dangerous. Today, with **Zero Trust** principles, internal traffic is also closely monitored to prevent breaches within the network itself.

---

## What Is a Subnet?

A **subnet** (short for subnetwork) is a smaller, logical section of a larger network. Subnets are identified by a specific **IP address range**, and they allow devices in the same subnet to communicate directly. If two devices are on different subnets, they need a router to talk to each other.

---

## What Is an IP Address?

An **IP (Internet Protocol) address** is a unique identifier for a device on a network — like a street address for your computer. Every device on a network has its own IP address.

There are two main versions:
- **IPv4**: The most common. It's a 32-bit number written as four decimal numbers separated by dots (e.g., `192.168.1.1`).
- **IPv6**: A newer version using 128 bits, designed to support more devices in the future.

Each part of an IPv4 address is called an **octet**, and it can have a value between **0 and 255**.

---

## What Are IP Address Classes?

IPv4 addresses are divided into **classes** (A, B, and C) based on how many networks and hosts they support.

| **Class** | **Range**             | **Used For**                         | **Hosts per Network** |
|-----------|------------------------|--------------------------------------|------------------------|
| Class A   | 1.0.0.0 - 127.255.255.255 | Very large networks                  | ~16 million hosts      |
| Class B   | 128.0.0.0 - 191.255.255.255 | Medium-sized networks              | ~65,000 hosts          |
| Class C   | 192.0.0.0 - 223.255.255.255 | Small networks (offices, homes)     | Up to 254 hosts        |

Each class defines how the IP address is split between the **Network ID** and the **Host ID**:
- **Network ID**: Identifies the subnet
- **Host ID**: Identifies a specific device within that subnet

---

## What Is a Subnet Mask?

A **subnet mask** is a 32-bit number that defines how much of the IP address represents the **network** portion versus the **host** portion.

Here’s a simple example:

`IP Address : 172.18.2.11 → 10101100.00010010.00000010.00001011 Subnet Mask : 255.255.0.0 → 11111111.11111111.00000000.00000000 Binary AND : → 10101100.00010010.00000000.00000000 Network ID : 172.18.0.0`


The **AND operation** shows how the subnet mask helps extract the Network ID from an IP address. This is how devices determine whether another host is in the same subnet or not.

---

## Why Is Subnetting Important?

Subnetting helps:
- Improve **network performance**
- Add **security boundaries**
- Organize devices in a scalable and efficient way
- Reduce **broadcast traffic**

Understanding how subnetting works is a fundamental part of managing and securing networks — whether you're working in IT support, system administration, or cybersecurity.

---

📘 For more details, check the official Microsoft guide:  
[IP Addressing and Subnetting](https://learn.microsoft.com/en-us/troubleshoot/windows-client/networking/tcpip-addressing-and-subnetting)