Task 8: Network Traffic Capture and Analysis with Wireshark
Overview
This task demonstrates the ability to capture, filter, and analyze network traffic using Wireshark. The focus of the exercise is to observe plaintext HTTP communication, inspect packets at multiple layers of the network stack, and understand the security implications of unencrypted traffic.
Rather than passively capturing random background traffic, this task uses controlled traffic generation from a virtual machine to ensure clarity, accuracy, and reproducibility of results.

Tools Used
Wireshark – Network protocol analyzer
VirtualBox – Virtualization platform
Linux Virtual Machine (Kali) – Traffic source
curl – Command-line HTTP client
Environment Setup
Host OS: Windows
Guest OS: Linux (VirtualBox VM)
VM Network Mode: NAT (traffic routed through host Wi-Fi adapter)
Capture Location: Host machine (Wi-Fi interface)
Capturing traffic on the host while generating traffic from the VM allows isolation of VM-originated packets while maintaining visibility into the full network path.

Capture Methodology
1. Interface Selection
Multiple interfaces were available on the host system, including physical, virtual, and tunnel adapters. To avoid capturing irrelevant or internal system traffic, the correct interface was identified by:
Generating ICMP traffic (ping 8.8.8.8) from the VM
Observing real-time traffic spikes in Wireshark
Selecting the Wi-Fi interface, which showed activity synchronized with VM traffic
This ensured the capture contained the VM’s outbound network communication.
2. Controlled Traffic Generation
Modern browsers often enforce HTTPS automatically, which prevents visibility into application-layer data. To guarantee plaintext HTTP traffic:
Bash
curl -v http://neverssl.com
This command forces an unencrypted HTTP request over port 80, ensuring the traffic can be decoded and analyzed in Wireshark.
3. Packet Capture
Capture was started on the selected Wi-Fi interface
A short baseline period was observed
The HTTP request was generated from the VM
Capture was stopped immediately after the response was received
The resulting capture was saved as:
wireshark_capture.pcap
Packet Analysis
HTTP Traffic Isolation
The following display filters were used to isolate relevant traffic:
Text
http
http.request || http.response
tcp.port == 80
These filters reduced noise and highlighted the exact packets involved in the HTTP communication.
HTTP GET Request Analysis
The captured HTTP GET request reveals:
Source IP: VM internal address
Destination IP: External web server
Destination Port: 80
Host Header: Target domain
User-Agent: Client identification
Requested Resource: Plaintext HTTP object
All request headers are visible in cleartext, demonstrating the lack of confidentiality when HTTP is used.
HTTP Response Analysis
The corresponding server response shows:
Status Code: HTTP/1.1 200 OK
Content-Type: Text-based content
Response Payload: Readable in ASCII view
Following the TCP stream confirms that the full request and response exchange is visible without decryption.
Security Implications
This capture highlights why HTTP is considered insecure:
Request headers can reveal browsing behavior and client details
Response data can be intercepted or modified in transit
Traffic is vulnerable to:
Man-in-the-middle (MITM) attacks
Session hijacking
Content manipulation
In modern networks, HTTPS is mandatory to provide encryption, integrity, and authentication. This task demonstrates what attackers or analysts can observe when encryption is not in place.
Conclusion
This exercise demonstrates practical network traffic analysis skills, including:
Correct interface identification
Controlled packet capture
Effective use of Wireshark display filters
Application-layer protocol analysis
Security-focused interpretation