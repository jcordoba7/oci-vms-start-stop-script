# oci-vms-start-stop-script
This script can help you to schedule the starting and stoping for compute instances in OCI, based on _**key-value tags**_ over each resource.

### Prerrequisites
  1. It is important to remember that you need an active server on which execute the scripts at the desired scheduled hours.
  2. In this server you must have installed and configured the OCI CLI component. (https://docs.oracle.com/en-us/iaas/Content/API/SDKDocs/cliinstall.htm)

### Process details
The files _**"script-start.sh"**_ and _**"script-stop.sh"**_ may remain in the _**/home/opc**_ location of the machine on which these scripts are executed.

In the case of the crontab, it can be something like this:
```
# SHELL=/bin/bash
# PATH=/sbin:/bin:/usr/sbin:/usr/bin
# MAILTO=root

# Starting servers
30 12 * * 1-5 sh /home/opc/script-start.sh

# Stoping servers
30 0 * * * sh /home/opc/script-stop.sh
```

The resources that we want to manipulate with these scripts must have the following tag (since that is how it is defined in the sh files):
![Screenshot of a comment on a GitHub issue showing an image, added in the Markdown, of an Octocat smiling and raising a tentacle.](https://github.com/jcordoba7/oci-vms-start-stop-script/blob/main/key-value-tag-sample.png)

> [!NOTE]
> Hope it will be useful for you!.
