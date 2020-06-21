# HackJaipur
Repo for the HackJaipur hackathon project

Go check out our CoronaMeter Pandemic Data management system on https://oneclickdapp.com/golf-jeep/ today!

# Inspiration :

Two pillars of Community Helpers stand strong in controlling the expansion of this heart wrenching Pandemic : Police and Hospitals. 

Police is responsible to keep a check on social distance orders in Public Places like Roads, Markets and Public Transports. Of Course Prevention is better than Cure, so we thought how about we make the work of Police and other such authorities much much easier by giving them a real time Social Distance checking app! How about the next time a place starts to get too crowded and the authorities get notified about it instantly. How about the next time a police officer wants to check if people are maintaining social distance or not and all they have to do is open their app? YES that's the revolution we wanted to bring into their job; make it much more efficient and easy!

Similarly, Doctors are working day and night, risking their lives to treat Covid-19 patients and testing centres are exhaustively trying to conduct maximum number of tests so that infected people can be cured early and the spread of the virus could be prevented by quarantining them. Yet we hear everyday, speculation of the Pandemic data being tampered with probably due to some anti social elements. Also, countries like China and Russia have been accused of hiding the real number of Covid-19 cases and deaths. We all understand how important transparancy is in this case! Hiding the data of cases is the second biggest reason after lack of social distance why today many countries are finding it difficult to cope up with the rising number of cases.

We wanted tackle this problem by building a system that was based on a decentralised system. How better than using Etherum blochain and Matic for this purpose! Efficient, decentralised, and immutable!

# What it does?

**The Socialist Guru** -

It is a simple and small application resting in your smart phone and only requires a GPS and Mobile data access to work. It runs with abilities : 

1. It keeps running in the background and keeps detecting the number of people in your safe distance radius. As long as the number of people are within a safe number, you can rest relax and the app interface will stay green :) But as long as this number gets above a safe maximum, it will notify you and the interface will turn red until the situation improves.

2. One can also check for the same situation in any specific location they want to! Just enter the location or pin it on the map and the live data will tell you if the place safe to go or not. This will be especially useful for police and other authorities who are trying to keep a check on social distance in their premises. 

**CoronaMeter** - 

This is a very simple website built on top of etherum technology and utilises the power of Matic network to improve its capacities and affordability drastically. 

![Web interface](https://github.com/pulkit-jasti/HackJaipur/blob/master/Images/Web%20interface.png)

👆 Anybody with an Ethereum address can read the data on the web from knowing who the admin is to the individual details of the patients (without directly linking information, of course) like Age and Date of information. This will ensure that there is complete tranparancy in the untampered data that every citizen has the right to know.

![Web interface 2](https://github.com/pulkit-jasti/HackJaipur/blob/master/Images/web%20interface%202.png)

👆 Coming to the data entry part, there is a top level admin that has the maximum powers from registering with new Hospitals to Registering new Patients. These Hospitals only have the power to add new patient details. If the need be, the smart contract could also be modified to have vice admins who have powers in between the Admin and Hospitals. Sounds like your typical Discord group, doesn't it?

And as we all know the biggest plus point of ethereum based database management is its immutability and the fact that everything gets stored on the chain permanently. Therefore, we'll know who entered a data in CoronaMeter.

# What makes it awesome -

1. Can be implemented on the pre-existing infrastructure

2. Zero/very low cost of implementation

3. Time required to get it up and running is low because the easy distribution

4. Bringing transparency and credibility in the data about the number of positive cases and death cases in the ongoing pandemic.

5. Increase the trust of the public on the pandemic data and government which should ultimately lead to more cooperation.

6. Save the government a lot of money as there is no need for middlemen to handle the data or Verification agencies to verify the data. Everything will be done by the Smart Contract!

7. In the current situation, the data might get corrupted or tampered with as there are so many people handling it. It also reduces accountability. Our App will prevent this from happening as nobody except the Hospitals will touch the input data.

8. In the use of private servers, if something happens to the servers like the server goes down or gets destroyed, the data simply becomes either inaccessible or lost!. When kept on Ethereum blockchain or IPFS (a similar but cheaper technology) it is stored on nearly 10,000 nodes all around the world. You’ll need to destroy all the 10,000 nodes to actually be able to make data inaccessible.

# How it does these things?

**Hardware** - Only your mobile! That's what makes it so practical and scalable. Just install the app and feel the power.

**Programming Languages** - Solidity and Javascript.

**Tools** - Flutter, Remix IDE, OneClickDapp, MetaMask.

**Technology** - Ethereum, Matic, Web3.

**The Socialist Guru** -

...

**CoronaMeter** - 

The webapp is backed by a Smart Contract written in Solidity language. It consists of setter and getter functions that gives it the ability to enter new data and read new data. We took care of power levels such that a transaction can only be done from a registered ID which has the power the do so. 

The Smart Contract is hosted on both Ropsten test network and Matic test network. Though the Matic network is much more efficient but the hosting site we used did not support it in a simple way so we used Ropsten for that part.

# Challenges we ran into -

We needed to make sure that only Admin and registered Hospitals will be able to register new patients, so our earlier idea was to iterate through an array of registered hospitals and find if the address is present. This would have become very costly for practical purposes as Ethereum charges you for every step you take (and imagine the steps in going through the array of thousands of hospitals every time). 

We found an efficient alternative as connecting a new Hospital address with a Boolean and marking it as true with the help of "Mapping function". So whenever someone tries to add a new patient we just need to check if their address has been mapped as true; if not then the person gets a message that they are not authorized to do so. We also had the difficulty in connecting the blockchain into flutter and posting and getting location in very less time interval was one of the biggest challenges we faced.

# What's next? 

1. We plan to be able to host the complete data on IPFS as it will make it more affordable and open to the society new options to store the data for any disease in general like Swine FLu or Ebola.

2. We can also release the Socialist Guru app to public as an addition to the Arogya Setu app released in India. It will help individuals to take note of the places they are going to.
