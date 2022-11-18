#!/bin/bash

echo Building local core environment image...
docker build --platform linux/amd64 -t core-shell .
echo Entering core-image shell... type exit to leave container...
docker run --platform linux/amd64 -v /var/run/docker.sock:/var/run/docker.sock -v $(pwd):/shell -t -i core-shell /bin/bash

