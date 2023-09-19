[ tail ]  
[tee] write to file AND output to stdout

*tar -xzf rebol.tar.gz* unpack




___


*Find out more about the process from PID*. 

        ps -p $PID -o pid,vsz=MEMORY -o user,group=GROUP -o comm,args=ARGS

*All ports* 

        sudo lsof -i -P -n
        sudo lsof -i -P -n | grep $PORTID
---
*Process logs*

        journalctl -e -u neo4j




# Network Protocols


*UDP ????*

https://en.wikipedia.org/wiki/OSI_model
https://en.wikipedia.org/wiki/Protocol_stack
https://en.wikipedia.org/wiki/File_transfer
https://en.wikipedia.org/wiki/Communication_protocol
https://en.wikipedia.org/wiki/Web_service
https://en.wikipedia.org/wiki/Binary_protocol
https://en.wikipedia.org/wiki/Routing

## Server
https://en.wikipedia.org/wiki/Common_Gateway_Interface

### Transport ProtocolsE 

TCP (Transmission Control Protocol) -- Connectin oriented protocol for controlling the quality of data transfer. 
A session needs to be established: 
1. First sends *SYN*
2. Second acknowledges by responding with *SYN ACK*
3. *ACK RECEIEVED*
Now if some data packet is lost, TCP initiates resending.

UDP (User Datagram Protocol) --"Same as TCP, but **connectionless**". Does not establish a sesh or guarantees delivery. Faster than TCP.


|||
|:---:|:---:|
|Application Layer| Network Services: Ex. DNS/HTTP|
|LAYER 4 Transport Layr| Ex. TCP/UDP|
|LAYER 3 Network Layer| Ex.IP layer 3 addresses|
|LAYER 2 Data Link Layer|Ethernet layer 2 addresses|
|LAYER 1 Physical Layer|Bits sent over network|

DNS (Domain Name System) -- translates domain names to ip addresses
SSL - secure socket l..


Because there is no shared memory, communicating systems have to communicate with each other using a shared transmission medium. Transmission is not necessarily reliable, and individual systems may use different hardware or operating systems.

To implement a networking protocol, the protocol software modules are interfaced with a framework implemented on the machine's operating system. This framework implements the networking functionality of the operating system.[20] When protocol algorithms are expressed in a portable programming language the protocol software may be made operating system independent. The best-known frameworks are the TCP/IP model and the OSI model. 


-----

Program translation is divided into four subproblems: compiler, assembler, link editor, and loader. As a result, the translation software is layered as well, allowing the software layers to be designed independently. Noting that the ways to conquer the complexity of program translation could readily be applied to protocols because of the analogy between programming languages and protocols, the designers of the TCP/IP protocol suite were keen on imposing the same layering on the software framework.  
 
This can be seen in the TCP/IP layering by considering the translation of a pascal *program (message)* that is *compiled (function of the application layer)* into an assembler program that is *assembled (function of the transport layer*) to object code (pieces) that is *linked (function of the Internet layer*) together with *library object code (routing table*) by the link editor, producing *relocatable machine code (datagram*) that is passed to the loader which *fills in the memory locations (ethernet addresses*) to produce *executable code (network frame*) to be loaded (function of the network interface layer) into *physical memory (transmission medium*). 

Program translation forms a linear sequence because each layer's output is passed as input to the next layer. Furthermore, the translation process involves multiple data representations. The same thing is seen happening in protocol software, where multiple protocols define the data representations of the data passed between the software modules.[44]

The modules below the application layer are generally considered part of the operating system. Passing data between these modules is much less expensive than passing data between an application program and the transport layer. The *boundary* between *application* layer and *transport* layer is called the **operating system boundary**.

----





# APACHE

WSGI : Web Server Gateway Interface allows apache/nginx to talk to python.

