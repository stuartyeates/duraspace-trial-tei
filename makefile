WORKINGDIR=./working

all: nzetc

clean:
	rm -rf ${WORKINGDIR}

nzetc:
	wget  --directory-prefix=${WORKINGDIR} --force-directories --timestamping  http://nzetc.victoria.ac.nz/tei-source/JCB-041.xml
	xsltproc xsl/nzetc2images.xsl working/nzetc.victoria.ac.nz/tei-source/JCB-041.xml > ${WORKINGDIR}/NZETC-images
	wget  --directory-prefix=${WORKINGDIR} --force-directories --timestamping  --input-file=${WORKINGDIR}/NZETC-images



