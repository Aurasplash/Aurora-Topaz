-----------------------------------
-- Area: Ru'Lud Gardens
--  NPC: Recruitment Moogle
-- Standard Info NPC
-----------------------------------
local ID = require("scripts/zones/RuLude_Gardens/IDs")
require("scripts/globals/settings")
-----------------------------------

function onTrade(player, npc, trade)

    local gil = trade:getGil()
    local count = trade:getItemCount()
    local item = {
        20573, -- 1- Aern Dagger 20573
        20577, -- 2- Chicken Knife II 20577
        20569, -- 3- Esikuva 20569
        20570, -- 4- Norgish Dagger 20570
        20576, -- 5- Qutrub Knife 20576
        20674, -- 6- Aern Sword 20674
        18912, -- 7- Ark Saber 18912
        18913, -- 8- Ark Sword 18913
        20665, -- 9- Kam'lanaut's Sword 20665
        21608, -- 10- Onion Sword II 21608
        21609, -- 11- Save the Queen II 21609
        21658, -- 12- Brave Blade II 21658
        21682, -- 13- Lament 21682
        21681, -- 14- Ophidian Sword 21681
        21742, -- 15- Aern Axe 21742
        18545, -- 16- Ark Tabar 18545
        21741, -- 17- Demonic Axe 21741
        21745, -- 18- Dullahan Axe 21745
        21744, -- 19- Gramk's Axe 21744
        21761, -- 20- Za'Dha Chopper 21761
        18563, -- 21- Ark Scythe 18563
        20909, -- 22- Hoe 20909
        21860, -- 23- Aern Spear 21860
        20933, -- 24- Hotengeki 20933
        21862, -- 25- Mizukage-no-naginata 21862
        21863, -- 26- Tzee Xicu's Blade 21863
        18464, -- 27- Ark Tachi 18464
        17831, -- 28- Hardwood Katana 17831
        18436, -- 29- Lotus Katana 18436
        18441, -- 30- Shinai 18441
        17830, -- 31- Wooden Katana 17830
        22065, -- 32- Aern Staff 22065
        18600, -- 33- Caver's Shovel 18600
        22072, -- 34- Lamia Staff 22072
        21154, -- 35- Malice Masher +1 21154
        22070, -- 36- Ranine Staff 22070
        17565, -- 37- Trick Staff 17565
        18846, -- 38- Battledore 18846
        22005, -- 39- Burrower's Wand 22005
        18866, -- 40- Club Hammer 18866
        22039, -- 41- Floral Hagoita 22039
        21118, -- 42- Green Spriggan Club 21118
        21113, -- 43- Purple Spriggan Club 21113
        21114, -- 44- Red Spriggan Club 21114
        17032, -- 45- Gobbie Gavel 17032
        21086, -- 46- Heartstopper 21086
        22020, -- 47- Jingly Rod +1 22020
        18871, -- 48- Kitty Rod 18871
        18869, -- 49- Lady Bell +1 18869
        18880, -- 50- Maestro's Baton 18880
        18881, -- 51- Melomane Mallet 18881
        17031, -- 52- Shell Scepter 17031
        22004, -- 53- Soulflayer's Wand 22004
        22112, -- 54- Mizukage-no-yumi 22112
        21272, -- 55- Troll Gun 21272
        26409, -- 56- Dullahan Shield 26409
        28661, -- 57- Glinting Shield 28661
        26412, -- 58- Kam'lanaut's Shield 26412
        28670, -- 59- Leafkin Shield 28670
        28651, -- 60- Metal Slime Shield 28651
        28650, -- 61- She-slime Shield 28650
        28655, -- 62- Slime Shield 28655
        25606, -- 63- Agent Hood (Male only) 25606
        25604, -- 64- Buffalo Cap 25604
        23737, -- 65- Byakko Masque 23737
        26694, -- 66- Cassie's Cap 26694
        26730, -- 67- Celeste Cap 26730
        11812, -- 68- Charity Cap 11812
        11500, -- 69- Chocobo Beret 11500
        26729, -- 70- Corolla 26729
        25669, -- 71- Crab Cap +1 25669
        25648, -- 72- Curmudgeon's Helmet 25648
        26728, -- 73- Frosty Cap 26728
        27716, -- 74- Green Moogle Masque 27716
        25649, -- 75- Gazer's Helmet 25649
        27715, -- 76- Goblin Masque 27715
        25587, -- 77- Kakai Cap +1 25587
        23730, -- 78- Karakul Cap 23730
        27759, -- 79- Korrigan Beret 27759
        25639, -- 80- Korrigan Masque 25639
        26704, -- 81- Lycopodium Masque +1 26704
        15204, -- 82- Mandragora Beret 15204
        27714, -- 83- Mirth Masquette 27714
        10429, -- 84- Moogle Masque 10429
        12491, -- 85- Onion Cap (WAR Only) 12491
        25638, -- 86- Pachypodium Masque 25638
        25650, -- 87- Retching Helmet 25650
        23731, -- 88- Royal Chocobo Beret 23731
        10875, -- 89- Snowman Cap 10875
        11485, -- 90- Spelunker's Helm 11485
        25607, -- 91- Starlet Flower (Female Only) 25607
        27734, -- 92- Straw Hat (Female Only) 27734
        27718, -- 93- Worm Masque +1 27718
        26520, -- 94- Akitu Shirt 26520
        27906, -- 95- Chocobo Suit +1 27906
        25755, -- 96- Crustacean Shirt 25755
        26524, -- 97- Gil Nabber Shirt 26524
        27866, -- 98- Goblin Suit 27866
        26518, -- 99- Jody Shirt 26518
        26519, -- 100- Mandragora Shirt 26519
        26545, -- 101- Mithkabob Shirt 26545
        27904, -- 102- Morass Tunic 27904
        26964, -- 103- Pupil's Camisa 26964
        26946, -- 104- Pupil's Shirt 26946
        11320, -- 105- Skeleton Robe 11320
        27111, -- 106- Agent Cuffs (Male Only) 27111
        27112, -- 107- Starlet Gloves (Female Only) 27112
        27296, -- 108- Agent Pants (Male Only) 27296
        28185, -- 109- Alliance Pants 28185
        28186, -- 110- Morass Pants 28186
        25850, -- 111- Pink Subligar 25850
        27281, -- 112- Pupil's Trousers 27281
        27297, -- 113- Starlet Skirt (Female Only) 27297
        27467, -- 114- Agent Boots (Male Only) 27467
        28324, -- 115- Alliance Boots 28324
        28325, -- 116- Morass Boots 28325
        27455, -- 117- Pupil's Shoes 27455
        27468, -- 118- Starlet Boots (Female Only) 27468
        27733} -- 119- Straw Hat (Male Only) 27733

    if (trade:hasItemQty(8715, 1) and gil > 0 and gil < 120 and count == 2) then
        player:tradeComplete()
        player:addItem(item[gil])
        player:messageSpecial(ID.text.ITEM_OBTAINED, item[gil])
        player:addGil(gil)
        player:messageSpecial(ID.text.GIL_OBTAINED, gil)
    end
end

function onTrigger(player, npc)
end

function onEventUpdate(player, csid, option)
end

function onEventFinish(player, csid, option)
end
