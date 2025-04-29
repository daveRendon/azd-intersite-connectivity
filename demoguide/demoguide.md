[comment]: <> (please keep all comment items at the top of the markdown file)
[comment]: <> (please do not change the ***, as well as <div> placeholders for Note and Tip layout)
[comment]: <> (please keep the ### 1. and 2. titles as is for consistency across all demoguides)
[comment]: <> (section 1 provides a bullet list of resources + clarifying screenshots of the key resources details)
[comment]: <> (section 2 provides summarized step-by-step instructions on what to demo)


[comment]: <> (this is the section for the Note: item; please do not make any changes here)
***
### Implement Intersite connectivity

<div style="background: lightgreen; 
            font-size: 14px; 
            color: black;
            padding: 5px; 
            border: 1px solid lightgray; 
            margin: 5px;">

**Note:** Below demo steps should be used **as a guideline** for doing your own demos. Please consider contributing to add additional demo steps.
</div>

[comment]: <> (this is the section for the Tip: item; consider adding a Tip, or remove the section between <div> and </div> if there is no tip)

***
### 1. What Resources are getting deployed

Your organization segments core IT apps and services (such as DNS and security services) from other parts of the business, including your manufacturing department. However, in some scenarios, apps and services in the core area need to communicate with apps and services in the manufacturing area. In this lab, you configure connectivity between the segmented areas. This is a common scenario for separating production from development or separating one subsidiary from another.

Resources deployed: 

 - az104-05-nic0 to az104-05-nic2: three network interfaces
 - az104-05-nsg0 to az104-05-nsg2: three network security groups
 - az104-05-pip0 to az104-05-pip2: three public ip addresses
 - az104-05-vm0 to az104-05-vm2: three virtual machines
 - az104-05-vnet0 to az104-05-vnet2: three virtual networks
 - az104-05-vm0_disks: three disks


<img src="https://raw.githubusercontent.com/daverendon/azd-intersite-connectivity/refs/heads/main/demoguide/rg-intersite-connectivity.png" alt="Intersite connectivity" style="width:70%;">
<br></br>
<br></br>

### 2. What can I demo from this scenario after deployment

<img src="https://raw.githubusercontent.com/daverendon/azd-intersite-connectivity/refs/heads/main/demoguide/diagram-intersite-connectivity.png" alt="Intersite connectivity diagram" style="width:70%;">
<br></br>
<br></br>

Connect two Azure virtual networks using global virtual network peering. Test the connection between two virtual machines in different virtual networks. 

Implement intersite connectivity. Review the virtual network infrastructure with several virtual machines. Review the virtual network peerings and test the connections.

[comment]: <> (this is the closing section of the demo steps. Please do not change anything here to keep the layout consistant with the other demoguides.)
<br></br>
***
<div style="background: lightgray; 
            font-size: 14px; 
            color: black;
            padding: 5px; 
            border: 1px solid lightgray; 
            margin: 5px;">

**Note:** This is the end of the current demo guide instructions.
</div>



