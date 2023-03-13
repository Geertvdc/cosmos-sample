
count=0
until false
do
	curl -w @curl-format.txt -s -d '{"name": "test'$count'","listId": "28903c5cb72e40ab9773328bbabe1ebe","state": "todo"}' -H "Content-Type: application/json" -X POST https://app-api-iszsinkujhif6.azurewebsites.net/lists/28903c5cb72e40ab9773328bbabe1ebe/items -o /dev/null
	((count++))
	echo "$count $OUTPUT"
    sleep 1
done