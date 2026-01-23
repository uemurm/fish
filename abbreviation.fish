## General commands
abbr --add -- ls    'ls -F'
abbr --add -- la    'ls -hFa'
abbr --add -- ll    'ls -hFl'
abbr --add -- lla   'ls -hFla'
abbr --add -- lld   'ls -hFld'
abbr --add -- llt   'ls -hFltr'
abbr --add -- llta  'ls -hFltra'
abbr --add -- lt    'ls -Ftr'

abbr --add -- cp    'cp -i'
abbr --add -- mv    'mv -i'
abbr --add -- rm    'rm -i'
abbr --add -- p     'pushd'
abbr --add -- d	    'dirs'

abbr --add -- vi    'vim'

#
# Git related
#
abbr --add -- gs    'git status'
abbr --add -- gdiff 'git diff'
abbr --add -- gbr   'git branch'
abbr --add -- gadd  'git add'
abbr --add -- gci   'git commit -m'
abbr --add -- gco   'git checkout'
abbr --add -- gp    'git push'
abbr --add -- gps   'git push'
abbr --add -- gpl   'git pull'
abbr --add -- gf    'git fetch'
abbr --add -- grs   'git reset'
abbr --add -- glog  'git log'
abbr --add -- gshow 'git show'

#
# Docker related
#

# Image-related
abbr --add -- dimages   'docker images --all'	# List all local images
abbr --add -- drmi      'docker rmi'		# Remove an image
abbr --add -- dpl       'docker pull'		# Download an image from Docker Hub
abbr --add -- dbld      'docker build --tag .'	# Build an image from Dockerfile

# Running container-related
abbr --add -- dps       'docker ps --all'	# List containers
abbr --add -- dstop     'docker stop'
abbr --add -- dstart    'docker start'		# Resume a stopped container
abbr --add -- drm       'docker rm'		# Remove a stopped container
abbr --add -- dlogs     'docker logs'		# Check log of a container
abbr --add -- dhist	'docker history'
abbr --add -- dexec     'docker exec --interactive --tty bash'	# Run a command in a container

# Docker compose-related
abbr --add -- dcup  	'docker compose up'
abbr --add -- dcdn  	'docker compose down'
abbr --add -- dclogs  	'docker compose logs --follow'

# Clean up
abbr --add -- dsysprune 'docker system prune '	# Delete stopped containers, unused network, etc.

