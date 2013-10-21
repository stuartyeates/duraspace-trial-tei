WORKINGDIR=./working
DURASPACE_URL=https://trial.duracloud.org
DURASPACE_USERNAME=
DURASPACE_PASSWORD=

all: ${WORKINGDIR}/duracloudsync-2.4.0.jar nzetc

${WORKINGDIR}/duracloudsync-2.4.0.jar: 
	wget  --directory-prefix=${WORKINGDIR} --timestamping http://docs.duraspace.org/duracloud/2.4.0/downloads/duracloudsync-2.4.0.jar

clean:
	rm -rf ${WORKINGDIR}

nzetc:
	wget  --directory-prefix=${WORKINGDIR} --force-directories --timestamping  http://nzetc.victoria.ac.nz/tei-source/JCB-041.xml
	xsltproc xsl/nzetc2images.xsl ${WORKINGDIR}/nzetc.victoria.ac.nz/tei-source/JCB-041.xml > ${WORKINGDIR}/NZETC-images
	wget  --directory-prefix=${WORKINGDIR} --force-directories --timestamping  --input-file=${WORKINGDIR}/NZETC-images
#	curl --data-urlencode @${WORKINGDIR}/nzetc.victoria.ac.nz/tei-source/JCB-041.xml "${DURASPACE_URL}/objects/new?namespace=trial114"
	java -Dlogback.configurationFile=logging.properties -jar working/duracloudsync-2.4.0.jar  --host trial.duracloud.org --username  trialuser114 --password L4QcAnxa --space-id trial114 --content-dirs  working/





