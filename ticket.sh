export TICKETS=~/SIA/ticket/
export TICKET=$1
if [ -z "${TICKET}" ]
then
    exit
fi
echo https://redmine.magenta-aps.dk/issues/${TICKET}
export TICKET_DIR=${TICKETS}${TICKET}
export TICKET_HIST=${TICKET_DIR}/.bash-history
[ -d "${TICKET_DIR}" ] || mkdir -p ${TICKET_DIR}

(
    export HISTTIMEFORMAT="%Y/%m/%d %T "
    export HISTFILE=${TICKET_HIST}
    cd ${TICKET_DIR}
    bash

)
