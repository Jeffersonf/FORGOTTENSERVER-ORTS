local SPECIAL_QUESTS = {2215, 2216}

function onStepIn(cid, item, position, fromPosition)
    if (Container(item.uid) and not isInArray(SPECIAL_QUESTS, item.actionid) and item.uid > 65535) then
        return true
    end

    local player = Player(cid)
    if not player then
        return true
    end

    player:teleportTo(fromPosition, false)
    return true
end
