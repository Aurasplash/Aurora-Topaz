-----------------------------------
-- Area: Temple of Uggalepih
--  Mob: Tonberry Pursuer
-- Note: PH for SOZU_ROGBERRY
-----------------------------------
local ID = require("scripts/zones/Temple_of_Uggalepih/IDs")
mixins = {require("scripts/mixins/families/tonberry")}
require("scripts/globals/regimes")
require("scripts/globals/mobs")
-----------------------------------

function onMobDeath(mob, player, isKiller)
    tpz.regime.checkRegime(player, mob, 790, 1, tpz.regime.type.GROUNDS)
    tpz.regime.checkRegime(player, mob, 791, 1, tpz.regime.type.GROUNDS)
    tpz.regime.checkRegime(player, mob, 792, 1, tpz.regime.type.GROUNDS)
    tpz.regime.checkRegime(player, mob, 793, 1, tpz.regime.type.GROUNDS)
    tpz.regime.checkRegime(player, mob, 794, 1, tpz.regime.type.GROUNDS)
    tpz.regime.checkRegime(player, mob, 795, 1, tpz.regime.type.GROUNDS)
end

function onMobDespawn(mob)
    tpz.mob.phOnDespawn(mob, ID.mob.SOZU_ROGBERRY_PH, 5, 3600) -- 6 hour
end
