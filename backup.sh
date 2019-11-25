#!/bin/bash

mkdir -p temp

curl https://calendar.google.com/calendar/ical/qsqrk2emvnnvu45debac9dugr8%40group.calendar.google.com/public/basic.ics -o temp/sanrio_events_public.ics
# DTSTAMP will be changed every time. Drop it.
grep -v '^DTSTAMP:' temp/sanrio_events_public.ics > sanrio_events_public.ics
dos2unix sanrio_events_public.ics

# When you want to restore the calendar, you must serve the ics file with a server which outputs utf-8 content-type header.
# The easist way to achieve it is to use <https://rawgit.com/ohtake/backup-calendars/gh-pages/sanrio_events_public.ics> instead of <https://raw.githubusercontent.com/ohtake/backup-calendars/gh-pages/sanrio_events_public.ics> nor <http://ohtake.github.io/backup-calendars/sanrio_events_public.ics>.
