-----------------------------------
-- Area: The Shrine of Ru'Avitau
--  Mob: Aura Statue
-----------------------------------
local ID = require("scripts/zones/The_Shrine_of_RuAvitau/IDs")
require("scripts/globals/regimes")
require("scripts/globals/mobs")
-----------------------------------

function onMobDeath(mob, player, isKiller)
    tpz.regime.checkRegime(player, mob, 749, 1, tpz.regime.type.GROUNDS)
    tpz.regime.checkRegime(player, mob, 754, 1, tpz.regime.type.GROUNDS)
end

function onMobDespawn(mob)
    tpz.mob.phOnDespawn(mob, ID.mob.ULLIKUMMI_PH, 5, 7200) -- 2 hour
end
