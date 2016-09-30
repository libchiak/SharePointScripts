#Federation Configuration on SharePoint Farms

 Purpose of this document is to explain step by step configuration of Federated Trust on SharePoint Servers. Also it lists a high level steps or elements that need to be in place for successful deployment.
 This document does not provide instructions on how to build and configure a Federated Provider (ex. ADFS). This document assumes that a Federated Server infrastructure is in place before you follow the instructions in this guide.

##High Level Steps:

   1. Creating Tusted Identity Provider
   2. Enabling Trusted Identity Provider Authentication
   3. Deployment of a custom Identity Provider solution
   4. Configuring custom Identity Provider solution
   5. Conversion from Windows claims to SAML claims
   6. Conversion script

   


This is the configuration of the LDAPCP custom provider:

![Image of LDAPCP](https://github.com/libchiak/SharePointScripts/blob/master/LDAPCP.png)
 
