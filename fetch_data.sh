# bin/bash

echo "fetching transkriptions from tillich-briefe-data"
rm -rf data/editions && mkdir data/editions
rm -rf data/meta && mkdir data/meta
rm -rf data/indices && mkdir data/indices
curl -LO https://github.com/TillichCorrespondence/tillich-briefe-data/archive/refs/heads/main.zip
unzip main
mv ./tillich-briefe-data-main/data/editions/ ./data
mv ./tillich-briefe-data-main/data/meta/ ./data
mv ./tillich-briefe-data-main/data/indices/ ./data
rm main.zip
rm -rf ./tillich-briefe-data-main