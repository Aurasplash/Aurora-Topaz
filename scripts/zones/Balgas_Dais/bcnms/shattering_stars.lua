-----------------------------------
-- Area: Balga's Dais
-- Name: Shattering stars - Maat Fight
-- !pos 299 -123 345 146
-----------------------------------
local ID = require("scripts/zones/Balgas_Dais/IDs")
require("scripts/globals/battlefield")
require("scripts/globals/quests")
require("scripts/globals/titles")
-----------------------------------

function onBattlefieldTick(battlefield, tick)
    tpz.battlefield.onBattlefieldTick(battlefield, tick)
end

function onBattlefieldRegister(player, battlefield)
end

function onBattlefieldEnter(player, battlefield)
end

function onBattlefieldLeave(player, battlefield, leavecode)
    if leavecode == tpz.battlefield.leaveCode.WON then
        local name, clearTime, partySize = battlefield:getRecord()
        player:startEvent(32001, battlefield:getArea(), clearTime, partySize, battlefield:getTimeInside(), 1, battlefield:getLocalVar("[cs]bit"), 0)
    elseif leavecode == tpz.battlefield.leaveCode.LOST then
        player:startEvent(32002)
    end
end

function onEventUpdate(player, csid, option)
end

function onEventFinish(player, csid, option)
    if csid == 32001 then
        if player:getQuestStatus(JEUNO, tpz.quest.id.jeuno.SHATTERING_STARS) == QUEST_ACCEPTED and player:getFreeSlotsCount() > 0 then
            player:addItem(4181)
            player:messageSpecial(ID.text.ITEM_OBTAINED, 4181)
        end
        local pjob = player:getMainJob()
        player:setCharVar("maatDefeated", pjob)
        local maatsCap = player:getCharVar("maatsCap")
        if bit.band(maatsCap, bit.lshift(1, pjob - 1)) ~= 1 then
            player:setCharVar("maatsCap", bit.bor(maatsCap, bit.lshift(1, pjob - 1)))
            player:setCharVar("genkaiJobs", bit.bor(maatsCap, bit.lshift(1, pjob - 1)))
        end
        player:addTitle(tpz.title.MAAT_MASHER)
    end
end
