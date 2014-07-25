local config = {
	bridgePositions = {
		[1] = Position(32627, 31699, 10),
		[2] = Position(32628, 31699, 10),
		[3] = Position(32629, 31699, 10)
	},
	bridgeID = 5770,
	waterID = 493
}

function onUse(cid, item, fromPosition, itemEx, toPosition)
	for i = 1, #config.bridgePositions do
		local tile = config.bridgePositions[i]:getTile()
		if tile then
			local thing = tile:getItemById(config.waterID)
			if thing == nil then
				thing = tile:getItemById(config.bridgeID)
			end
			if thing:getId() == config.waterID then
				thing:transform(config.bridgeID)
			elseif thing:getId() == config.bridgeID then
				thing:transform(config.waterID)
			end
		end
	end
	
	Item(item.uid):transform(item.itemid == 1945 and 1946 or 1945)
	return true
end
