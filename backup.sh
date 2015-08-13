#!/bin/bash

curl https://www.google.com/calendar/ical/qsqrk2emvnnvu45debac9dugr8%40group.calendar.google.com/public/basic.ics -o temp-sanrio_events_public.ics
# DTSTAMP will be changed every time. Drop it.
grep -v '^DTSTAMP:' temp-sanrio_events_public.ics > sanrio_events_public.ics
