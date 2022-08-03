
count=0
until false
do
	#OUTPUT=$(curl -w @curl-format.txt -s https://app-web-iszsinkujhif6.azurewebsites.net/lists/22fd3648e1e142c98ab75656646c8048 -o /dev/null)
    curl -w @curl-format.txt -s -d '{"name": "test'$count'","listId": "22fd3648e1e142c98ab75656646c8048","state": "todo"}' -H "Content-Type: application/json" -X POST https://app-api-iszsinkujhif6.azurewebsites.net/lists/22fd3648e1e142c98ab75656646c8048/items -o /dev/null
	((count++))
	echo "$count $OUTPUT"
    sleep 1
done