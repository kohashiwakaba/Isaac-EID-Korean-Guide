if EID then
	EID:addTrinket(Mod.Mod_Dads_Wallet.dads_wallet, "동전이 매우 높은 확률로 니켈 혹은 다임으로 바뀝니다.#동전이 일정 확률로 등장하지 않습니다.", "아빠의 지갑", "ko_kr")
	EID:addCard(Mod.Mod_Exclamation_Mark_Card.exclamation_mark_card, "{{Collectible477}} 등급이 가장 낮은 아이템 중 하나를 흡수하여 랜덤 능력치를 증가시킵니다.", "! 카드", "ko_kr")
	EID:addCollectible(Mod.Mod_First_Page.first_page, "사용 시 그 방에서 최대 체력 3칸을 가진 Isaac 캐릭터가 2p 플리에어로 소환됩니다.#소환된 Isaac 캐릭터는 캐릭터가 소지한 패시브 아이템을 그대로 획득합니다.", "첫 페이지", "ko_kr")
	EID:addCollectible(Mod.Mod_Moms_Hug.moms_hug, "Holding spacebar allows you to hold on to an enemy, holding the fire key will start spinning it#Holding on to an enemy will deal double of your damage to it per second#Killing an enemy by holding it will drop temporary hearts {{Heart}}", "Mom's Hug", "ko_kr")
	EID:addCollectible(Mod.Mod_Mothers_Shadow.mothers_shadow, "!!! {{CurseDarknessSmall}}주변이 항상 어두워집니다.#{{Blank}} (저주 판정을 받지 않음)#주기적으로 적 위에서 칼이 떨어집니다.", "엄마의 그림자", "ko_kr")
	EID:addCard(Mod.Mod_Queen_Of_Hearts_R.queen_of_hearts_r, "Spawns a large amount of broken heart pickups#↑ Picking up broken hearts will cause your damage to increase#A broken heart is removed every floor", "Reversed Queen of Hearts", "ko_kr")
	EID:addCard(Mod.Mod_Essence_Of_Isaac.essence_of_isaac, "Reroll a passive item of your choosing#You will be able to choose one of two options for the rerolled item", "Essence of Isaac", "ko_kr")
	EID:addCard(Mod.Mod_Essence_Of_Magdalene.essence_of_magdalene, "Fires a barrage of Cardiac Arrest shots#Damage increases as the barrage approaches its end", "Essence of Magdalene", "ko_kr")
	EID:addCollectible(Mod.Mod_Story_Cube.story_cube, "Turn trinkets in the current room into 3 random cards each", "Story Cube", "ko_kr")
	EID:addCollectible(Mod.Mod_True_Love.true_love, "Charge into the enemy, dealing damage and knockback#An enemy hitting an obstacle after being charged will take extra damage#Enemies killed by hitting an obstacle will drop temporary hearts {{Heart}}", "True Love", "ko_kr")
	EID:addCollectible(Mod.Mod_Warm_Coat.warm_coat, "↑ +2 health up#56% chance to block contact damage", "Warm Coat", "ko_kr")
	EID:addCollectible(Mod.Mod_Weird_Heart.weird_heart, "Rerolls all of your current health into different types of hearts", "Weird Heart", "ko_kr")
	EID:addCard(Mod.Mod_Reverse_Two_of_Spades.reverse_two_of_spades, "{{ArrowDown}} Your number of keys is halved#↑ Coins, bombs, and hearts increase by a third of your original number of keys", "Two of Spades?", "ko_kr")
	EID:addCard(Mod.Mod_Essence_Of_Judas.essence_of_judas, "Turn up to 2 collectibles in the room into a choice between a devil and an angel item", "Essence of Judas", "ko_kr")
	EID:addCard(Mod.Mod_Essence_Of_Cain.essence_of_cain, "Reseal all chests in the room#Fix all broken machines in the room", "Essence of Cain", "ko_kr")
	EID:addCard(Mod.Mod_Go_To_Jail.go_to_jail, "Shackle enemies near the player#Lasts 15 seconds", "Go To Jail Card", "ko_kr")
	EID:addCollectible(Mod.Mod_Savage_Chains.savage_chains, "Shackles the player in place#While shackled, your damage and tears rise", "Savage Chains", "ko_kr")
	EID:addCollectible(Mod.Mod_Broken_Halo.broken_halo, "Spawns a trap door to a devil deal at the start of each floor", "Broken Halo", "ko_kr")
	EID:addTrinket(Mod.Mod_Dimensional_Key.dimensional_key, "Killing a normal boss yields a 15% chance to spawn a void portal", "Dimensional Key", "ko_kr")
	EID:addTrinket(Mod.Mod_Black_Key.black_key, "The door to Boss Rush stays open even after 20 minutes", "Black Key", "ko_kr")
	EID:addTrinket(Mod.Mod_Hells_Eye.hells_eye, "5% chance to spawn a purgatory soul when firing a tear", "Hell's Eye", "ko_kr")
	EID:addCollectible(Mod.Mod_Dark_Power.dark_power, "↑ +0.5 damage#{{ArrowDown}} All other stats slightly reduced", "Dark Power", "ko_kr")
	EID:addCollectible(Mod.Mod_Chains_Of_Pain.chains_of_pain, "Attacking an enemy causes all enemies of the same type to take damage", "Chains of Pain", "ko_kr")
	EID:addCollectible(Mod.Mod_Old_Knife.old_knife, "Chargeable familar that stabs enemies and causes bleeding damage for 3 seconds#↑ Spawns a +1.5 damage buff aura while the knife is stuck inside enemy", "Old Knife", "ko_kr")
	EID:addCollectible(Mod.Mod_Thirty_Pieces_Of_Silver.thirty_pieces_of_silver, "{{Coin}}+30 coins#Gives coins when clearing a room#The fewer coins you have, the higher your damage", "Thirty Pieces of Silver", "ko_kr")
	EID:addBirthright(Mod.table_type_id["ISAAC"], "Blighted Dice can reroll items into items of higher quality", "Tarnished Isaac","ko_kr")
	EID:addBirthright(Mod.table_type_id["MAGDALENE"], "Soul hearts{{SoulHeart}} can spawn when using Cardiac Arrest at low health#Hearts spawned from Cardiac Arrest will be attracted to the player", "Tarnished Magdalene", "ko_kr")
	EID:addBirthright(Mod.table_type_id["CAIN"], "3개의 아이템을 조합하여 가방을 생성합니다.", "Tarnished Cain", "ko_kr")
	EID:addBirthright(Mod.table_type_id["JUDAS"], "각 페이즈별 생성되는 그림자의 개수가 증가합니다.#{{Blank}} 페이즈 1: 그림자 5개#{{Blank}} 페이즈 2: 그림자 7개#{{Blank}} 페이즈 3: 그림자 11개", "Tarnished Judas", "ko_kr")
	-- Final Wishes has multiplie IDs for its' multiple sprites so we need to do this
	local final_wishes_desc = "Consumes the closest item to the player and spawns pickups#Adds an extra option of the same/higher quality for item pedestals to cycle through#{{Warning}} Taking an item resets the number of options"
	for i = 0, 5 do EID:addCollectible(Mod.Mod_Final_Wishes.final_wishes - i, final_wishes_desc, "마지막 소원", "ko_kr") end
end

-- Todo: Add Tarnished player icons for EID and co-op ex: 
-- "{{Player"..Mod.table_type_id["ISAAC"].."}}"
BagItems = {[118] = "#{{ColorCyan}}소지 시:{{CR}} 충전하는 동안 혈사 고리를 발동시킵니다.#{{Collectible"..itemId .."}} {{Throwable}}{{ColorOrange}}흡수 후 투척 시:{{CR}} 가방이 떠있는 동안 투척 방향의 반대방향으로 혈사포를 발사합니다.", 
    [52] = "#{{ColorCyan}}소지 시:{{CR}} 가방이 무언가에 부딪힐 때 작은 폭탄을 설치합니다.#{{Collectible"..itemId .."}} {{Throwable}}{{ColorOrange}}흡수 후 투척 시:{{CR}} 가방이 무언가에 부딪히는 즉시 폭발합니다.",
    [3] = "#{{ColorCyan}}소지 시:{{CR}} 가방에서 흩뿌려지는 눈물에 유도 효과가 생깁니다.#{{Collectible"..itemId .."}} {{Throwable}}{{ColorOrange}}흡수 시:{{CR}} 가방에 유도 효과가 생깁니다.",
    [579] = "#{{Collectible"..itemId .."}} {{Throwable}}흡수 후 투척 시:{{CR}} 가방의 공격 범위가 커집니다.",
    [213] = "#{{ColorCyan}}소지 시:{{CR}} 가방에서 흩뿌려지는 눈물이 적의 탄환을 막습니다.#{{Collectible"..itemId .."}} {{Throwable}}{{ColorOrange}}흡수 시:{{CR}} 가방이 적의 탄환을 막습니다.",
    [233] = "#{{ColorCyan}}소지 시:{{CR}} 가방에서 흩뿌려지는 눈물이 캐릭터 주변을 공전합니다.#{{Collectible"..itemId .."}} {{Throwable}}{{ColorOrange}}흡수 후 투척 시:{{CR}} 가방이 떠있는 동안 가방에서 흩뿌려지는 눈물이 가방 주위를 공전합니다.",
    [494] = "#{{ColorCyan}}소지 시:{{CR}} 가방에서 흩뿌려지는 눈물에 위의 아이템의 효과가 적용됩니다.#{{Collectible"..itemId .."}} {{Throwable}}{{ColorOrange}}흡수 후 투척 시:{{CR}} 가방이 떠있는 동안 짧은 유도 레이저가 발사됩니다.",
    [597] = "#{{ColorCyan}}소지 시:{{CR}} 충전하는 동안 랜덤 방향으로 눈물을 발사합니다.#{{Collectible"..itemId .."}} {{Throwable}}{{ColorOrange}}흡수 후 투척 시:{{CR}} 가방에서 흩뿌려지는 눈물의 갯수가 증가하며 떠있는 동안 눈물을 흩뿌립니다.",
    [221] = "#{{ColorCyan}}소지 시:{{CR}} 가방에서 흩뿌려지는 눈물에 위의 아이템의 효과가 적용됩니다.#{{Collectible"..itemId .."}} {{Throwable}}{{ColorOrange}}흡수 시:{{CR}} 가방의 체공 시간이 대폭 증가합니다.",
    [114] = "#{{ColorCyan}}소지 시:{{CR}} 가방에서 흩뿌려지는 눈물이 칼로 바뀝니다.#{{Collectible"..itemId .."}} {{Throwable}}{{ColorOrange}}흡수 후 투척 시:{{CR}} 가방이 적을 관통하며 3배의 피해를 줍니다.",
    [237] = "#{{Collectible"..itemId .."}} {{Throwable}}{{ColorOrange}}흡수 후 투척 시:{{CR}} 가방이 적을 관통하며 1.5배의 피해를 줍니다.",
    [317] = "#{{ColorCyan}}소지 시:{{CR}} 가방에서 흩뿌려지는 눈물이 땅에 닿을 시 독장판이 생성됩니다.#{{Collectible"..itemId .."}} {{Throwable}}{{ColorOrange}}흡수 후 투척 시:{{CR}} 가방이 떠있는 동안 가방 밑에 독장판을 설치하며 무언가에 부딪히는 순간 장판의 크기가 커집니다.",
    [68] = "#{{ColorCyan}}소지 시:{{CR}} 가방에서 흩뿌려지는 눈물이 레이저로 바뀝니다.#{{Collectible"..itemId .."}} {{Throwable}}{{ColorOrange}}흡수 후 투척 시:{{CR}} 가방의 체공 시간이 대폭 길어지며 떠있는 동안 투척 방향으로 레이저를 발사합니다.",
    [152] = "#{{ColorCyan}}소지 시:{{CR}} 충전하는 동안 지속 레이저를 발사합니다.#{{Collectible"..itemId .."}} {{Throwable}}{{ColorOrange}}흡수 후 투척 시:{{CR}} 가방의 체공 시간이 대폭 길어지며 떠있는 동안 투척 방향으로 얇은 레이저를 발사합니다.",
    [244] = "#{{ColorCyan}}소지 후 투척 시:{{CR}} 랜덤 벌레 효과가 적용된 레이저를 같이 발사합니다.#{{Collectible"..itemId .."}} {{Throwable}}{{ColorOrange}}흡수 후 투척 시:{{CR}} 가방의 체공 시간이 대폭 길어지며 떠있는 동안 랜덤 방향으로 레이저를 발사합니다.",
    [149] = "#{{ColorCyan}}소지 시:{{CR}} 가방에서 흩뿌려지는 눈물이 작은 구토제 폭탄으로 바뀌며 폭발한 지점에 독장판을 생성합니다.#{{Collectible"..itemId .."}} {{Throwable}}{{ColorOrange}}흡수 후 투척 시:{{CR}} 가방이 무언가에 부딪히는 즉시 폭발합니다.",
    [395] = "#{{ColorCyan}}소지 시:{{CR}} 충전하는 동안 레이저 고리를 발동시킵니다.#{{Collectible"..itemId .."}} {{Throwable}}{{ColorOrange}}흡수 후 투척 시:{{CR}} 가방의 체공 시간이 대폭 길어지며 떠있는 동안 주변에 원형 레이저를 두릅니다.",
    [168] = "#{{ColorCyan}}소지 시:{{CR}} 가방에서 랜덤 방향으로 로켓을 추가로 흩뿌립니다.#{{Collectible"..itemId .."}} {{Throwable}}{{ColorOrange}}흡수 후 투척 시:{{CR}} 가방의 체공 시간이 대폭 길어지며 떠있는 동안 투척 방향으로 로켓을 발사합니다.",
    [329] = "#{{ColorCyan}}소지 시:{{CR}} 캐릭터를 느리게 따라오는 눈물 하나가 소환되며 가방과 부딪히면 눈물의 크기가 커지면서 가방과 함께 발사됩니다.#{{Collectible"..itemId .."}} {{Throwable}}{{ColorOrange}}흡수 시:{{CR}} 가방이 땅에 떨어지지 않으며 {{ColorOrange}}수동으로 주울 수 없습니다{{CR}}.",
    [533] = "#{{ColorCyan}}소지 시:{{CR}} 가방에서 흩뿌려지는 눈물이 하얀색 빛줄기 눈물로 바뀝니다.#{{Collectible"..itemId .."}} {{Throwable}}{{ColorOrange}}흡수 후 투척 시:{{CR}} 가방이 떠있는 동안 랜덤 방향으로 하얀색 빛줄기 눈물을 발사합니다.",
    [531] = "#{{ColorCyan}}소지 시:{{CR}} 가방에서 흩뿌려지는 눈물이 Haemolacria 눈물로 바뀝니다#{{Collectible"..itemId .."}} {{Throwable}}{{ColorOrange}}흡수 후 투척 시:{{CR}} 가방이 무언가에 부딪힐 때 작은 눈물 여러개가 추가로 흩어집니다.", 
    [570] = "#{{ColorCyan}}소지 시:{{CR}} 가방에서 흩뿌려지는 눈물에 랜덤 눈물 효과가 적용됩니다.#{{Collectible"..itemId .."}} {{Throwable}}{{ColorOrange}}흡수 시:{{CR}} 가방을 던질 때마다 랜덤 상태이상이 적용됩니다.",
    [331] = "#{{ColorCyan}}소지 시:{{CR}} 가방에서 흩뿌려지는 눈물에 후광이 생깁니다.#{{Collectible"..itemId .."}} {{Throwable}}{{ColorOrange}}흡수 후 투척 시:{{CR}} 가방에 후광이 생깁니다.",
    [182] = "#{{ColorCyan}}소지 시:{{CR}} 가방에서 흩뿌려지는 눈물에 위의 아이템의 효과가 적용됩니다.#{{Collectible"..itemId .."}} {{Throwable}}{{ColorOrange}}흡수 후 투척 시:{{CR}} 가방에 유도 효과가 생기며 피해량이 2.3배로 증가합니다.#{{Collectible"..itemId .."}} 가방이 무언가에 부딪힐 때 신성한 눈물을 추가로 흩뿌립니다.",
    [374] = "#{{ColorCyan}}소지 시:{{CR}} 가방에서 흩뿌려지는 눈물에 10%의 확률로 빛줄기가 나가는 눈물로 바뀝니다.#{{Collectible"..itemId .."}} {{Throwable}}{{ColorOrange}}흡수 후 투척 시:{{CR}} 가방이 적과 부딪힐 때 빛줄기가 나갑니다.",
    [5] = "#{{ColorCyan}}소지 시:{{CR}} 가방에서 흩뿌려지는 눈물이 더 멀리 나갑니다.#{{Collectible"..itemId .."}} {{Throwable}}{{ColorOrange}}흡수 후 투척 시:{{CR}} 가방이 플레이어에게 되돌아옵니다.",
    [418] = "#{{ColorCyan}}소지 시:{{CR}} 가방에서 흩뿌려지는 눈물이 일정 확률로 랜덤 효과의 눈물로 바뀝니다.#{{Collectible"..itemId .."}} {{Throwable}}{{ColorOrange}}흡수 후 투척 시:{{CR}} 가방이 떠있는 동안 랜덤 방향으로 랜덤 효과가 적용된 눈물을 발사합니다.",
    [596] = "#{{ColorCyan}}소지 시:{{CR}} 가방에서 흩뿌려지는 눈물에 빙결 효과가 생깁니다.(!!!모습은 일반 눈물과 동일)#{{Collectible"..itemId .."}} {{Throwable}}{{ColorOrange}}흡수 시:{{CR}} 가방으로 적 처치 시 적이 얼어붙습니다.",
    [562] = "#{{Collectible"..itemId .."}} {{Throwable}}{{ColorOrange}}흡수 후 투척 시:{{CR}} 가방이 무언가에 부딪힐 때 공격력 x11의 피해를 주는 지진파를 내보냅니다.",
    [691] = "#{{Collectible"..itemId .."}} {{Throwable}}{{ColorOrange}}흡수 후 투척 시:{{CR}} !!!투척 3초 이후 폭발합니다.",
    [628] = "#{{Collectible"..itemId .."}} {{Throwable}}{{ColorOrange}}흡수 후 투척 시:{{CR}} 가방이 적과 부딪힐 때 2%의 확률로 랜덤 아이템 하나를 소환합니다.(50회 부딪힐 시 확정 소환)",
    [169] = "#{{Collectible"..itemId .."}} {{Throwable}}{{ColorOrange}}흡수 후 투척 시:{{CR}} ↑가방의 크기와 피해량이 증가하고 적을 관통하나 관통할 때마다 가방의 크기가 줄어듭니다.",
    [261] = "#{{Collectible"..itemId .."}} {{Throwable}}{{ColorOrange}}흡수 후 투척 시:{{CR}} ↑가방의 크기와 피해량이 증가하나 멀리 나갈수록 피해량이 감소합니다.",
    [132] = "#{{Collectible"..itemId .."}} {{Throwable}}{{ColorOrange}}흡수 후 투척 시:{{CR}} ↑가방이 멀리 나갈수록 피해량이 증가합니다.",
    [371] = "#{{Collectible"..itemId .."}} {{Throwable}}{{ColorOrange}}흡수 시:{{CR}} !!!충전하는 동안 트롤 폭탄을 소환합니다.",
    [577] = "#{{Collectible"..itemId .."}} {{Throwable}}{{ColorOrange}}흡수 시:{{CR}} !!!패널티 피격 시 그 이후부터 충전하는 동안 캐릭터가 즉사할 확률이 생깁니다.#{{Collectible"..itemId .."}} ↑가방의 피해량 x5(중첩 불가)",
    [258] = "#{{Collectible"..itemId .."}} {{Throwable}}{{ColorOrange}}흡수 시:{{CR}} !!!가방을 던질 때마다 랜덤 가방 시너지 효과가 적용됩니다.",
}



EID:appendToDescription(descObj, BagItems[descObj.ObjSubType] or "")
EID:appendToDescription(descObj, GoldenBagItems[descObj.ObjSubType] and "#{{Collectible"..itemId .."}} 적에게 부딪힐 시 10% 확률로 동전을 드랍하며 5%의 확률로 적을 석화시킵니다." or "")
EID:appendToDescription(descObj, SackBagItems[descObj.ObjSubType] and "#{{Collectible"..itemId .."}} 적에게 부딪힐 시 일정 확률로 자루를 드랍합니다." or "")
EID:appendToDescription(descObj, AngelBagItems[descObj.ObjSubType] and "#{{Collectible"..itemId .."}} 적에게 부딪힐 시 일정 확률로 {{Collectible568}}Divine Intervention 방패를 시전합니다." or "")
EID:appendToDescription(descObj, PoopBagItems[descObj.ObjSubType] and "#{{Collectible"..itemId .."}} 적에게 부딪힐 시 일정 확률로 랜덤 똥을 소환합니다." or "")
EID:appendToDescription(descObj, SpiderBagItems[descObj.ObjSubType] and "#{{Collectible"..itemId .."}} 무언가에 부딪힐 시 일정 확률로 {{Collectible461}}Parasitoid 눈물을 내뱉습니다." or "")
EID:appendToDescription(descObj, SharpBagItems[descObj.ObjSubType] and "#{{Collectible"..itemId .."}} 적에게 부딪힐 시 적을 출혈시킵니다." or "")
EID:appendToDescription(descObj, FartBagItems[descObj.ObjSubType] and "#{{Collectible"..itemId .."}} 적에게 부딪힐 시 일정 확률로 방귀를 뀝니다." or "")
EID:appendToDescription(descObj, FlyBagItems[descObj.ObjSubType] and "#{{Collectible"..itemId .."}} 적에게 부딪힐 시 일정 확률로 파란 자폭 파리를 소환합니다." or "")
EID:appendToDescription(descObj, GuppyBagItems[descObj.ObjSubType] and "#{{Collectible"..itemId .."}} 적에게 부딪힐 시 파란 자폭 파리를 소환합니다." or "")
EID:appendToDescription(descObj, PoisonBagItems[descObj.ObjSubType] and "#{{Collectible"..itemId .."}} 적에게 부딪힐 시 적을 중독시킵니다." or "")
EID:appendToDescription(descObj, BookBagItems[descObj.ObjSubType] and "#{{Collectible"..itemId .."}} 적에게 부딪힐 시 일정 확률로 카드를 드랍합니다." or "")
EID:appendToDescription(descObj, MysticBagItems[descObj.ObjSubType] and "#{{Collectible"..itemId .."}} 적에게 부딪힐 시 일정 확률로 룬을 드랍합니다." or "")
EID:appendToDescription(descObj, DevilBagItems[descObj.ObjSubType] and "#{{Collectible"..itemId .."}}적에게 부딪힐 시 일정 확률로 {{Collectible684}}Hungry Soul 유령을 소환합니다." or "")
EID:appendToDescription(descObj, MomBagItems[descObj.ObjSubType] and "#{{Collectible"..itemId .."}}적에게 부딪힐 시 10% 확률로 엄마 발을 소환합니다." or "")
EID:appendToDescription(descObj, DrugBagItems[descObj.ObjSubType] and "#{{Collectible"..itemId .."}} 무언가에 부딪힐 시 랜덤 효과의 눈물을 내뱉습니다." or "")