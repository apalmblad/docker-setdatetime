mbentley/setdatetime
====================

docker image for setting date/time via container
Based off of alpine:latest

To pull this image:
`docker pull mbentley/setdatetime`

## Example usage

#### Set date/time (manually setting time from host)
`docker run -it --rm --privileged mbentley/setdatetime $(date "+%Y%m%d%H%M.%S")`

#### Set date/time using NTP
`docker run -it --rm --privileged mbentley/setdatetime ntp`

#### Set date/time using NTP and specifying a NTP server or pool
`docker run -it --rm --privileged mbentley/setdatetime ntp pool.ntp.org`
