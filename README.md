## oci-vms-start-stop-script
This script can help you to schedule the starting and stoping for compute instances in OCI, based on **key-value tags** over each resource.
The files _"script-start.sh"_ and _"script-stop.sh"_ may remain in the _**/home/opc**_ location of the machine on which these scripts are executed.

In the case of the crontab it can be something like this:
´´´
# SHELL=/bin/bash
# PATH=/sbin:/bin:/usr/sbin:/usr/bin
# MAILTO=root

# Starting servers
30 12 * * 1-5 sh /home/opc/script-start.sh

# Stoping servers
30 0 * * * sh /home/opc/script-stop.sh
´´´

The resources that we want to manipulate with these scripts must have the following tag (since that is how it is defined in the sh files):
