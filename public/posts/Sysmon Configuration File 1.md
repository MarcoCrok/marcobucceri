
2025-02-12 12:05

Status:

Tags: [[3 - Tags/Sysmon|Sysmon]] [[Security]] [[Logs Analysis]]

# Sysmon Configuration File

For more granular control over what events get logged, Sysmon uses an XML-based configuration file. The configuration file allows you to include or exclude certain types of events based on different attributes like process names, IP addresses, etc. We can refer to popular examples of useful Sysmon configuration files:

- For a comprehensive configuration, we can visit: [https://github.com/SwiftOnSecurity/sysmon-config](https://github.com/SwiftOnSecurity/sysmon-config). <-- `We will use this one in this section!`
- Another option is: [https://github.com/olafhartong/sysmon-modular](https://github.com/olafhartong/sysmon-modular), which provides a modular approach.
To utilize a custom Sysmon configuration, execute the following after installing Sysmon.
```
C:\Tools\Sysmon> sysmon.exe -c filename.xml
```
> **Note**: It should be noted that [Sysmon for Linux](https://github.com/Sysinternals/SysmonForLinux) also exists.

### Detect specific events

To achieve this, we need to change the "ImageLoad" part of the specific event in the Sysmon Configuration file from "include" to "exclude":
![[Pasted image 20250212121809.png]]
![[Pasted image 20250212121815.png]]

After having changed the conf. file, update Sysmon by executing the following command:
```
C:\Tools\Sysmon> sysmon.exe -c sysmonconfig-export.xml
```

# References
[sysmon-config | A Sysmon configuration file for everybody to fork](https://github.com/SwiftOnSecurity/sysmon-config)
