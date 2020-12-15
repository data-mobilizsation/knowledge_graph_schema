con <- neo4r::neo4j_api$new(url = graph_host, user = graph_user, password = graph_pass)

con$ping() # doesn't currently work with neo4j version 4 api :(

#return distinct node labels
call_neo4j("CALL db.labels();",con)

#return distinct relationship types
call_neo4j("CALL db.relationshipTypes();",con)