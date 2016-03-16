#!/bin/bash

# Runs OpenEphyra in command line mode.
# Usage: OpenEphyra.sh [assert_dir]

# The '-server' option of the Java VM improves the runtime of Ephyra.
# We recommend using 'java -server' if your VM supports this option.

export CLASSPATH=bin:lib/ml/maxent.jar:lib/ml/minorthird.jar:lib/nlp/jwnl.jar:lib/nlp/lingpipe.jar:lib/nlp/opennlp-tools.jar:lib/nlp/plingstemmer.jar:lib/nlp/snowball.jar:lib/nlp/stanford-ner.jar:lib/nlp/stanford-parser.jar:lib/nlp/stanford-postagger.jar:lib/qa/javelin.jar:lib/search/bing-search-java-sdk.jar:lib/search/googleapi.jar:lib/search/indri.jar:lib/search/yahoosearch.jar:lib/util/commons-logging.jar:lib/util/gson.jar:lib/util/htmlparser.jar:lib/util/log4j.jar:lib/util/trove.jar:lib/util/jetty-all.jar:lib/util/servlet-api.jar

#export ASSERT=$1

# set INDRI data file dir
# source ../config.inc
export INDRI_INDEX=/data/wiki_indri_index/

cd ..

export THREADS=10
java -Djava.library.path=lib/search/ -server -Xms1024m -Xmx2048m info.ephyra.OpenEphyraServer "$*"
