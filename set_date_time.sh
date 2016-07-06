#!/bin/sh

# set NEW_DATE from first argument
NEW_DATE="${1}"
TIME_SERVER="${2:-us.pool.ntp.org}"

# check to make sure a time or ntp is provided
if [ -z "${NEW_DATE}" ]
then
  # show usage and exit
  echo "Usage: ${0} <new_date|ntp>"
  echo "Example: ${0} 201605091501.02"
  echo "Example: ${0} ntp"
  exit 1
fi

# output current date/time
echo "Current date/time: $(date)"
echo -n "Updated date/time: "

# check and see if date/time or ntp should be used
if [ "${NEW_DATE}" == "ntp" ]
then
  # set time via ntp
  ntpd -q -n -p ${TIME_SERVER} 1> /dev/null
  date
else
  # set date manually
  date -s "${NEW_DATE}"
fi
