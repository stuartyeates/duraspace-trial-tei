WORKINGDIR=./working

all: nzetc

clean:
	rm -rf ${WORKINGDIR}

nzetc:
	wget  --directory-prefix=${WORKINGDIR} --force-directories  http://nzetc.victoria.ac.nz/tei-source/JCB-041.xml


