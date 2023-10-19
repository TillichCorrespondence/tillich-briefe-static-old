add-attributes -g "data/editions/*.xml" -b "https://id.acdh.oeaw.ac.at/tillich-briefe"
add-attributes -g "data/indices/*.xml" -b "https://id.acdh.oeaw.ac.at/tillich-briefe"
add-attributes -g "data/meta/*.xml" -b "https://id.acdh.oeaw.ac.at/tillich-briefe"

denormalize-indices -f "./data/editions/*.xml" -i "./data/indices/*.xml" -m ".//*[@ref]/@ref" -x ".//tei:titleStmt/tei:title[1]/text()"