SELECT gatewaytimestamp,message->>'header' AS header,message->'message'->>'systemName' AS systemName ,message->'message'->>'stationName' AS stationName,message->>'message' AS message FROM messages WHERE gatewaytimestamp > timestamp '2017-08-15 01:45' AND gatewaytimestamp < timestamp '2017-08-15 02:15' AND message_search->'header'->>'uploaderid' = '!smokey' AND message_search->>'$schemaref' = 'https://eddn.edcd.io/schemas/commodity/3';