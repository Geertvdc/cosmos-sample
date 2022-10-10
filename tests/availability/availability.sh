
count=0
until false
do
	curl -w @curl-format.txt -s -d '{"name": "test'$count'","listId": "d88ac7c552394cdea365d3f1c4f2e105","state": "todo"}' -H "Content-Type: application/json" -X POST https://app-api-kihrxlbnlw6v2.azurewebsites.net/lists/d88ac7c552394cdea365d3f1c4f2e105/items -o /dev/null
	((count++))
	echo "$count $OUTPUT"
    sleep 1
done