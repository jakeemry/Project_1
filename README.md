# **GitHub Repository for UCSD Cybersecurity Bootcamp**

# Project 1

## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

![](https://github.com/jakeemry/Project_1/blob/main/Diagrams/NetDiagW-ELK_SRVR.PNG)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the ansible folder may be used to install only certain pieces of it, such as Filebeat.

  - [Filebeat Playbook](https://github.com/jakeemry/Project_1/blob/main/Ansible/filebeat-playbook.yml)

This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build

### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly available, in addition to restricting inbound access to the network.
- The load balancer ensures that work to process incoming traffic will be shared by both vulnerable web servers. Access controls will ensure that only authorized users — namely, ourselves — will be able to connect in the first place.  The jump box acts as a single entry point for traffic and prevents DVWA VM's from being exposed to the public.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the files systems of the VMs on the network, as well as watch system metrics, such as CPU usage; attempted SSH logins; sudo escalation failures; etc.
- Filebeat monitors the log files or locations that are specified, collects log events, and forwards them either to Elasticsearch or Logstash for indexing.
- Metricbeat takes the metrics and statistics that it collects and ships them to the output specified, such as Elasticsearch or Logstash.

The configuration details of each machine may be found below.

| Name     | Function   | IP Address | Operating System |
|----------|------------|------------|------------------|
| Jump Box | Gateway    | 10.0.0.5   | Linux            |
| DVWA 1   | Web Server | 10.0.0.6   | Linux            |
| DVWA 2   | Web Server | 10.0.0.7   | Linux            |
| DVWA 3   | Web Server | 10.0.0.9   | Linux            |
| ELK      | Monitoring | 10.1.0.4   | Linux            |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the jumpbox machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- 68.252.127.208

Machines within the network can only be accessed by each other.
- The jump box VM on IP 137.135.50.240 is allowed to access the ELK Server.

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box | Yes                 | 68.252.127.208       |
| ELK      | No                  | 10.0.0.1-254         |
| DVWA 1   | No                  | 10.0.0.1-254         |
| DVWA 2   | No                  | 10.0.0.1-254         |
| DVWA 3   | No                  | 10.0.0.1-254         |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually.
- The primary benefit of Ansible is it allows IT administrators to automate away the drudgery from their daily tasks. That frees them to focus on efforts that help deliver more   value to the business by spending time on more important tasks. Ultimately, Ansible gives teams time to allow smart people to focus on smart things.

The playbook implements the following tasks:
- Configures the target VM (the machine being configured) to use more memory.
- Installs the following apt packages: docker.io and python3-pip.
- Installs the docker pip package (Python client for Docker).
- Downloads the Docker container called sebp/elk:761.
- Configures the container to start with specified port mappings and starts the container.

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

[](https://github.com/jakeemry/Project_1/blob/main/Diagrams/docker_ps_output.PNG)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- _TODO: List the IP addresses of the machines you are monitoring_

We have installed the following Beats on these machines:
- Filebeat
- Metricbeat

These Beats allow us to collect the following information from each machine:
- Filebeat: Filebeat detects changes to the filesystem. Specifically, we use it to collect Apache logs
- Metricbeat: Metricbeat detects changes in system metrics, such as CPU usage. We use it to detect SSH login attempts, failed sudo escalations, and CPU/RAM statistics.

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the _____ file to _____.
- Update the _____ file to include...
- Run the playbook, and navigate to ____ to check that the installation worked as expected.

_TODO: Answer the following questions to fill in the blanks:_
- _Which file is the playbook? Where do you copy it?_
- _Which file do you update to make Ansible run the playbook on a specific machine? How do I specify which machine to install the ELK server on versus which to install Filebeat on?_
- _Which URL do you navigate to in order to check that the ELK server is running?
