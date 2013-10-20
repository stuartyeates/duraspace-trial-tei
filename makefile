WORKINGDIR=./working

all: nzetc

clean:
	rm -rf ${WORKINGDIR}

nzetc:
	wget  --directory-prefix=${WORKINGDIR} --force-directories  http://nzetc.victoria.ac.nz/tei-source/JCB-041.xml
	xsltproc xsl/nzetc2images.xsl working/nzetc.victoria.ac.nz/tei-source/JCB-041.xml > ${WORKINGDIR}/NZETC-images
	wget  --directory-prefix=${WORKINGDIR} --force-directories --input-file=${WORKINGDIR}/NZETC-images


