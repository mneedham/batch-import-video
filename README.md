## Getting started with the neo4j batch importer

These are accompanying notes for the [getting started with neo4j batch importer](https://vimeo.com/71408668) video.

## Pre video steps

1. [Download neo4j](http://www.neo4j.org/download) - I used version 1.9.1 in the video but any of the 1.9.* series should be fine.
2. Create nodes and relationships files. I ran the following commands:
   
    ````
    bundle exec ruby generate-nodes.rb
    bundle exec ruby generate-relationships.rb    
    ````

    which uses [bundler](http://bundler.io/) - a ruby tool used to manage dependencies. This step can be replaced with your own CSV generating code.

## Terminal history from the video

    ./neo4j-community-1.9.1/bin/neo4j stop
    curl http://dist.neo4j.org.s3.amazonaws.com/jexp/batch-import/batch-import-full-1.9.jar -o batch-import-full-1.9.jar
    java -jar batch-import-full-1.9.jar
    head -n 10 nodes.tsv
    head -n 10 relationships.tsv
    java -jar batch-import-full-1.9.jar neo4j-community-1.9.1/data/graph.db nodes.tsv relationships.tsv
    ./neo4j-community-1.9.1/bin/neo4j start    