local Mod=CorruptedCharactersMod
local Mod_EID_Support={}

if not EID then
	return 
end


Mod.Mod_EID_Support=Mod_EID_Support

Mod_EID_Support.player_hud_y_offset={
	["ISAAC"]=35,
	["CAIN"]=20
}


function Mod_EID_Support:ChangePosition()
	local target_offset_y=0
  local player_type = EID.player:GetPlayerType()
  if Mod.table_name[player_type] then
    target_offset_y=math.max(target_offset_y,(Mod_EID_Support.player_hud_y_offset[Mod.table_name[player_type]] or 0))
  end
	if target_offset_y > 0 then
		EID:addTextPosModifier("Tarnished Characters", Vector(0,target_offset_y))
	else
		EID:removeTextPosModifier("Tarnished Characters")
	end
end
Mod:AddCallback(ModCallbacks.MC_POST_RENDER,Mod_EID_Support.ChangePosition)

if EID then
	-- changing mod's name and indicator for EID --
	-----------------------------------------------
  EID._currentMod = "Corrupted_Characters"
	EID:setModIndicatorName("Epiphany")
	local CustomSprite = Sprite()
	CustomSprite:Load("gfx/Tarnished_eid_logo_icon.anm2", true)
	EID:addIcon("Epiphany ModIcon", "TarnishedIcon", 0, 8, 8, 6, 6, CustomSprite)
	EID:setModIndicatorIcon("Epiphany ModIcon")

	-- For Blank Card/Clear Rune display --
  -- EID doesn't have number icons beyond 12
	EID:addCardMetadata(Mod.Mod_Exclamation_Mark_Card.exclamation_mark_card, 12, false)
	EID:addCardMetadata(Mod.Mod_Queen_Of_Hearts_R.queen_of_hearts_r, 6, false)
	EID:addCardMetadata(Mod.Mod_Reverse_Two_of_Spades.reverse_two_of_spades, 4, false)
	EID:addCardMetadata(Mod.Mod_Go_To_Jail.go_to_jail, 4, false)
	--EID:addCardMetadata(Mod.Mod_DrawOneCard.draw_one_card, 16, false)

	EID:addCardMetadata(Mod.Mod_Essence_Of_Isaac.essence_of_isaac, 12, true)
	EID:addCardMetadata(Mod.Mod_Essence_Of_Magdalene.essence_of_magdalene, 12, true)
	EID:addCardMetadata(Mod.Mod_Essence_Of_Judas.essence_of_judas, 4, true)
	EID:addCardMetadata(Mod.Mod_Essence_Of_Cain.essence_of_cain, 4, true)
	EID:addCardMetadata(Mod.Mod_Essence_Of_Eden.essence_of_eden, 6, true)
	
	EID:addTrinket(Mod.Mod_Dads_Wallet.dads_wallet, "Pennies have greatly increased chance to spawn as nothing, nickels or dimes", "Dad's Wallet", "en_us")
	EID:addCard(Mod.Mod_Exclamation_Mark_Card.exclamation_mark_card, "Triggers The Void {{Collectible477}} on a random low quality passive item you currently have #(Small stat upgrade to a random stat for each item)", "! Card", "en_us")
	EID:addCollectible(Mod.Mod_First_Page.first_page, "Spawn Isaac as a secondary character with all of the passive items you currently have for the current room", "First Page", "en_us")
	EID:addCollectible(Mod.Mod_Moms_Hug.moms_hug, "Holding spacebar allows you to hold on to an enemy, holding the fire key will start spinning it#Holding on to an enemy will deal double of your damage to it per second#Killing an enemy by holding it will drop temporary hearts {{Heart}}", "Mom's Hug", "en_us")
	EID:addCollectible(Mod.Mod_Mothers_Shadow.mothers_shadow, "{{Warning}}Gives the player Curse of Darkness for the rest of the run#Causes knives that damage enemies to fall from the sky", "Mother's Shadow", "en_us")
	EID:addCard(Mod.Mod_Queen_Of_Hearts_R.queen_of_hearts_r, "Spawns a large amount of broken heart pickups#↑ Picking up broken hearts will cause your damage to increase#A broken heart is removed every floor", "Reversed Queen of Hearts", "en_us")
	EID:addCard(Mod.Mod_Essence_Of_Isaac.essence_of_isaac, "Reroll a passive item of your choosing#You will be able to choose one of two options for the rerolled item", "Essence of Isaac", "en_us")
	EID:addCard(Mod.Mod_Essence_Of_Magdalene.essence_of_magdalene, "Fires a barrage of Cardiac Arrest shots#Damage increases as the barrage approaches its end", "Essence of Magdalene", "en_us")
	EID:addCollectible(Mod.Mod_Story_Cube.story_cube, "Turn trinkets in the current room into 3 random cards each", "Story Cube", "en_us")
	EID:addCollectible(Mod.Mod_True_Love.true_love, "Charge into the enemy, dealing damage and knockback#An enemy hitting an obstacle after being charged will take extra damage#Enemies killed by hitting an obstacle will drop temporary hearts {{Heart}}", "True Love", "en_us")
	EID:addCollectible(Mod.Mod_Warm_Coat.warm_coat, "{{ArrowUp}} +2 health up#56% chance to block contact damage", "Warm Coat", "en_us")
	EID:addCollectible(Mod.Mod_Weird_Heart.weird_heart, "Rerolls all of your current health into different types of hearts", "Weird Heart", "en_us")
	EID:addCard(Mod.Mod_Reverse_Two_of_Spades.reverse_two_of_spades, "{{ArrowDown}} Your number of keys is halved#{{ArrowUp}} Coins, bombs, and hearts increase by a third of your original number of keys", "Two of Spades?", "en_us")
	EID:addCard(Mod.Mod_Essence_Of_Judas.essence_of_judas, "Turn up to 2 collectibles in the room into a choice between a devil and an angel item", "Essence of Judas", "en_us")
	EID:addCard(Mod.Mod_Essence_Of_Cain.essence_of_cain, "Reseal all chests in the room#Fix all broken machines in the room", "Essence of Cain", "en_us")
	EID:addCard(Mod.Mod_Essence_Of_Eden.essence_of_eden, "All items in the room will reroll into items of the same quality upon entering new rooms when held", "Essence of Eden", "en_us")
	EID:addCard(Mod.Mod_Go_To_Jail.go_to_jail, "Shackle enemies near the player#Lasts 15 seconds", "Go To Jail Card", "en_us")
	EID:addCollectible(Mod.Mod_Savage_Chains.savage_chains, "Shackles the player in place#While shackled, your damage and tears rise", "Savage Chains", "en_us")
	EID:addCollectible(Mod.Mod_Broken_Halo.broken_halo, "Spawns a trap door to a devil deal at the start of each floor", "Broken Halo", "en_us")
	EID:addTrinket(Mod.Mod_Dimensional_Key.dimensional_key, "Killing a normal boss yields a 15% chance to spawn a void portal", "Dimensional Key", "en_us")
	EID:addTrinket(Mod.Mod_Black_Key.black_key, "The door to Boss Rush stays open even after 20 minutes", "Black Key", "en_us")
	EID:addTrinket(Mod.Mod_Hells_Eye.hells_eye, "5% chance to spawn a purgatory soul when firing a tear", "Hell's Eye", "en_us")
	EID:addTrinket(Mod.Mod_Paper_Airplane.paper_airplane, "25% chance to replace an enemy with a glitchy gaper when entering a room", "Paper Airplane", "en_us")
	EID:addCollectible(Mod.Mod_Dark_Power.dark_power, "{{ArrowUp}} +0.5 damage#{{ArrowDown}} All other stats slightly reduced", "Dark Power", "en_us")
	EID:addCollectible(Mod.Mod_Chains_Of_Pain.chains_of_pain, "Attacking an enemy causes all enemies of the same type to take damage", "Chains of Pain", "en_us")
	EID:addCollectible(Mod.Mod_Old_Knife.old_knife, "Chargeable familar that stabs enemies and causes bleeding damage for 3 seconds#{{ArrowUp}} Spawns a +1.5 damage buff aura while the knife is stuck inside enemy", "Old Knife", "en_us")
	EID:addCollectible(Mod.Mod_Thirty_Pieces_Of_Silver.thirty_pieces_of_silver, "{{Coin}}+30 coins#Gives coins when clearing a room#The fewer coins you have, the higher your damage", "Thirty Pieces of Silver", "en_us")
	EID:addCollectible(Mod.Mod_Printer.printer, "When using an active item while holding a card, infuse the active item's ability into the card#Each time the same type of card is used, the item's ability is also activated", "Printer", "en_us")
	EID:addCollectible(Mod.Mod_Zip_Bombs.zip_bombs, "Bombs' explosions repeat up to 3 times", "Zip Bombs", "en_us")	
	EID:addCollectible(Mod.Mod_Segmentation_Fault.segmentation_fault, "Tears have a chance to reroll an enemy or remove it", "Segmentation Fault", "en_us")
	EID:addCard(Mod.Mod_DrawOneCard.draw_one_card, "Remove the last two passive items you took#Spawn an item that is one quality higher than the item with the higher among the items removed", "Draw One Card", "en_us")
	EID:addBirthright(Mod.table_type_id["ISAAC"], "Blighted Dice can reroll items into items of higher quality", "Tarnished Isaac","en_us")
	EID:addBirthright(Mod.table_type_id["MAGDALENE"], "Soul hearts{{SoulHeart}} can spawn when using Cardiac Arrest at low health", "Tarnished Magdalene", "en_us")
	EID:addBirthright(Mod.table_type_id["CAIN"], "Increase bag capacity by one item", "Tarnished Cain", "en_us")
	EID:addBirthright(Mod.table_type_id["JUDAS"], "Extra clones for each phase#Phase 1: 5 clones#Phase 2: 7 clones#Phase 3: 11 clones", "Tarnished Judas", "en_us")
	EID:addBirthright(Mod.table_type_id["EDEN"], "All Glitched Gapers are charmed permanently#!!! Does NOT become friendly#Tears have 10% chance to turn an enemy into a glitched friendly gaper.", "Tarnished Eden", "en_us")
	-- Final Wishes has multiplie IDs for its' multiple sprites so we need to do this
	local final_wishes_desc = "Consumes the closest item to the player and spawns pickups#Adds an extra option of the same/higher quality for item pedestals to cycle through#{{Warning}} Taking an item resets the number of options"
	for i = 0, 5 do EID:addCollectible(Mod.Mod_Final_Wishes.final_wishes - i, final_wishes_desc, "Final Wishes", "en_us") end
	EID:addEntity(5, 30, 2092, "Multitool", "{{Warning}} Consumed when using your next key#Opens most doors and chests, nullifying the price for opening them", "en_us")
end

--Russian Translation

if EID then
	EID:addTrinket(Mod.Mod_Dads_Wallet.dads_wallet, "Монеты с высоким шансом могут замениться на ничего, пятак или червонец ", "Кошелёк Отца", "ru")
	EID:addCard(Mod.Mod_Exclamation_Mark_Card.exclamation_mark_card, "активирует эффект{{Collectible477}} к нескольким предметам низкого качества что у вас есть#(Небольшая прибавка к характеристикам за каждый)", "Карта !", "ru")
	EID:addCollectible(Mod.Mod_First_Page.first_page, "Создаёт Айзека со всеми пассивными предметами, что у вас есть как второго персонажа на одну комнату", "Первая Страница", "ru")
	EID:addCollectible(Mod.Mod_Moms_Hug.moms_hug, "Зажимая пробел вы сможете взять врага, после чего его можно кинуть с раскруткой зажимая кнопки атаки#При держании врага ему будет наноситься урон, который равняется вашему урону вдвойне#Убив врага объятием он выбросит несколько красных сердец которые пропадут если их не подобрать{{Heart}}", "Объятье Мамы", "ru")
	EID:addCollectible(Mod.Mod_Mothers_Shadow.mothers_shadow, "{{Warning}}Накладывает на вас проклятие темноты до конца забега#С потолка начинают падать ножи, которые наносят урон врагам", "Тень Матери", "ru")
	EID:addCard(Mod.Mod_Queen_Of_Hearts_R.queen_of_hearts_r, "Спавнит много сломанных сердец#↑ Подбирание данных сердец увеличит ваш урон#Каждый этаж одно сломанное сердце убирается", "Королева Червей?", "ru")
	EID:addCard(Mod.Mod_Essence_Of_Isaac.essence_of_isaac, "Заменяет один пассивный предмет что у вас есть который вы можете выбрать #Вы можете взять один из двух предметов которые появятся при замене", "Эссенция Айзека", "ru")
	EID:addCard(Mod.Mod_Essence_Of_Magdalene.essence_of_magdalene, "Стреляет большим залпом снарядов сердец от предмета Сердечный приступ#К концу урон выстрелов увеличивается", "Эссенция Магдалены", "ru")
	EID:addCollectible(Mod.Mod_Story_Cube.story_cube, "Превращает все брелоки в комнате в три случайные карты таро","Куб сюжета","ru")
	EID:addCollectible(Mod.Mod_True_Love.true_love, "Айзек делает рывок во врагов#, Если враг ударится об окружение то получит доп. урон#Из монстров убитых окружением выпадают исчезающие сердца", "Истинная Любовь", "ru")
	EID:addCollectible(Mod.Mod_Warm_Coat.warm_coat, "{{ArrowUp}} +2 Красных сердца#Даёт шанс 56% заблокировать урон", "Тёплое Пальто", "ru")
	EID:addCollectible(Mod.Mod_Weird_Heart.weird_heart, "Случайно изменяет сердца игрока", "Загадочное Сердце", "ru")
	EID:addCard(Mod.Mod_Reverse_Two_of_Spades.reverse_two_of_spades, "{{ArrowDown}} Уменьшает количество ключей в два раза #{{ArrowUp}} монеты, бомбы, и сердца повышаются на треть от количества потерянных ключей", "Козырь двух пик", "ru")
	EID:addCard(Mod.Mod_Essence_Of_Judas.essence_of_judas, "Превращает до двух предметов комнаты в выбор между дьявольским(и) и ангельским(и) предметам(и)", "Эссенция Иуды", "ru")
	EID:addCard(Mod.Mod_Essence_Of_Cain.essence_of_cain, "Заново закрывает все сундуки в комнате#Чинит все автоматы в комнате", "Эссенция Каина", "ru")
	EID:addCard(Mod.Mod_Go_To_Jail.go_to_jail, "Заковывает в цепи всех врагов что близко к вам подойдут#Действует 15 секунд", "Карта Иди в тюрьму", "ru")
	EID:addCollectible(Mod.Mod_Savage_Chains.savage_chains, "Сковывает игрока цепями не позволяя двигаться#Пока игрок скован он получает прибавку к урону и скорострельности", "Оковы Дикаря", "ru")
	EID:addCollectible(Mod.Mod_Broken_Halo.broken_halo, "Создаёт проход в начале каждого этажа в комнату сделки с дьяволом", "Сломанный Нимб", "ru")
	EID:addTrinket(Mod.Mod_Dimensional_Key.dimensional_key, "Убийство обычного босса с шансом 5% создаст проход на уровень пустота", "Межпространственный ключ ", "ru")
	EID:addTrinket(Mod.Mod_Black_Key.black_key, "Проход в комнату вызова будет открыт даже после истечения 20 минут", "Чёрный Ключ", "ru")
	EID:addTrinket(Mod.Mod_Hells_Eye.hells_eye, "5% шанс создать призрака чистилища при стрельбе", "Око Ада", "ru")
	EID:addCollectible(Mod.Mod_Dark_Power.dark_power, "{{ArrowUp}} +0.5 урона#{{ArrowDown}} Все остальные характеристики немного понижаются", "Сила тьмы", "ru")
	EID:addCollectible(Mod.Mod_Chains_Of_Pain.chains_of_pain, "Атакуя врага все враги того же типа получат урон", "Цепи Боли", "ru")
	EID:addCollectible(Mod.Mod_Old_Knife.old_knife, "Спутник с рывком который втыкается во врагов и даёт им эффект кровотечения на 3 секунды#{{ArrowUp}} Создаёт ауру пока воткнут во врага, аура даёт +1.5 урона.", "Старый Нож", "ru")
	EID:addCollectible(Mod.Mod_Thirty_Pieces_Of_Silver.thirty_pieces_of_silver, "{{Coin}}+30 Монет#При зачистке комнаты вам даётся немного монет#Чем меньше у вас монет тем больше прибавка к урону", "30 Сребреников", "ru")
	EID:addBirthright(Mod.table_type_id["ISAAC"], "Blighted Dice может заменить предмет на предметы качества выше", "Tarnished Айзек", "ru")
	EID:addBirthright(Mod.table_type_id["MAGDALENE"], "Синии сердца {{SoulHeart}}могут появиться при использовании предмета Сердечный приступ с маленьким здоровьем#Сердца созданные предметом Сердечный приступ теперь потихоньку притягиваются к игроку", "Tarnished Магдалина", "ru")
	EID:addBirthright(Mod.table_type_id["CAIN"], "Увеличивает максимальное количество предметов которые можно положить в мешок до трёх", "Tarnished Каин","ru")
	EID:addBirthright(Mod.table_type_id["JUDAS"], "Доп. Клоны каждую фазу#Фаза 1: 5 клонов#Фаза 2: 7 клонов#Фаза 3: 11 клонов", "Tarnished Иуда","ru")
	-- Final Wishes has multiplie IDs for its' multiple sprites so we need to do this
	local final_wishes_desc = "Пожирает ближайший предмет в комнате, давая случайные расходники#Добавляет доп.выбор предметов такого же качества или выше для пьедесталов с предметами#{{Warning}} Подобрав предмет обнуляет количество доп. предметов"
	for i = 0, 5 do EID:addCollectible(Mod.Mod_Final_Wishes.final_wishes - i, final_wishes_desc, "Последние Желания", "ru") end
end

-- Korean Translation

if EID then
	EID:addCollectible(Mod.Mod_Isaac.blighted_dice, "사용 시 현재 선택된 아이템을 제거하고 제거한 아이템의 배열과 등급이 같은 아이템을 2개 소환하며 둘 중 하나만 획득할 수 있습니다.#!!! 사용 시 이 아이템은 {{Collectible"..Mod.Mod_Isaac.broken_dice.."}}Broken Dice로 바뀝니다.", "병든 주사위", "ko_kr")
	EID:addCollectible(Mod.Mod_Isaac.broken_dice, "!!! 충전 시 강제로 {{Collectible"..Mod.Mod_Isaac.blighted_dice.."}}Blighted Dice로 변경됨#{{BrokenHeart}} 충전되지 않은 상태에서만 사용할 수 있으며 사용 시 하트 한칸과 현재 선택된 아이템을 제거하고 현재 방의 아이템을 1개 소환, 소지 불가능 체력 +1#이 아이템을 소지한 상태에서 아이템 획득을 시도하면 아이템이 사라지면서 {{Collectible"..Mod.Mod_Isaac.blighted_dice.."}}Blighted Dice로 바뀝니다.", "망가진 주사위", "ko_kr")
	EID:addCollectible(Mod.Mod_Magdalene.heart_attack, "사용 시 체력 한칸을 깎고 공격한 방향으로 캐릭터의 공격력 x3의 피해를 주는 하트 투사체를 발사합니다.#{{HalfHeart}} 하트로 적을 맞출 때마다 일정 시간 이후 사라지는 빨간하트 픽업을 드랍합니다.#{{BrokenHeart}} 체력이 부족한 상태에서 사용 시 소지 불가능 체력이 대신 추가됩니다.", "심장마비", "ko_kr")
	EID:addCollectible(Mod.Mod_Cain.throwing_bag, "사용 시 현재 방의 투척 가방을 전부 수집합니다.#쿨타임은 가방 수에 비례합니다.#아이템을 드는 도중 사용 시 들고 있는 아이템을 흡수합니다.#아이템 2개를 흡수할 때마다 새로운 투척 가방이 생성됩니다.", "투척 가방", "ko_kr")
	--EID:addCollectible(Mod.Mod_Judas.descent, "사용 시 캐릭터 반대편의 분신과 자리를 맞바꾸며 모든 분신의 대각선상에 있는 적에게 피해를 줍니다.", "급습", "ko_kr")
  EID:addCollectible(Mod.Mod_Eden.debugItem, "사용 시 충전량 2칸을 소모하여 소지 중인 아이템을 모두 바꿉니다.#완충 상태에서 아이템을 드는 도중 사용 시 충전량을 전부 소모하여 들고 있는 아이템을 보호합니다.", "디버그", "ko_kr")

	EID:addTrinket(Mod.Mod_Dads_Wallet.dads_wallet, "동전이 매우 높은 확률로 니켈 혹은 다임으로 바뀝니다.#동전이 일정 확률로 등장하지 않습니다.", "아빠의 지갑", "ko_kr")
	EID:addCard(Mod.Mod_Exclamation_Mark_Card.exclamation_mark_card, "{{Collectible477}} 등급이 가장 낮은 아이템 중 하나를 흡수하여 랜덤 능력치를 증가시킵니다.", "! 카드", "ko_kr")
	EID:addCollectible(Mod.Mod_First_Page.first_page, "사용 시 그 방에서 Isaac 캐릭터가 2p 플레이어로 소환됩니다.#소환된 Isaac 캐릭터는 캐릭터가 소지한 체력과 패시브 아이템을 그대로 복사합니다.", "첫 페이지", "ko_kr")
	EID:addCollectible(Mod.Mod_Moms_Hug.moms_hug, "사용하는 동안 적을 집을 수 있으며 사용 중 공격 버튼을 누르면 적을 집은 상태에서 회전할 수 있습니다.#집은 적은 초당 캐릭터의 공격력 x2의 피해를 받습니다.#{{Heart}} 집은 적을 처치 시 일정 시간 후 사라지는 하트를 드랍합니다.", "엄마의 포옹", "ko_kr")
	EID:addCollectible(Mod.Mod_Mothers_Shadow.mothers_shadow, "!!! {{CurseDarknessSmall}}주변이 항상 어두워집니다.#{{Blank}} (저주 판정을 받지 않음)#주기적으로 적 위에서 칼이 떨어집니다.", "엄마의 그림자", "ko_kr")
	EID:addCard(Mod.Mod_Queen_Of_Hearts_R.queen_of_hearts_r, "{{BrokenHeart}} 부서진 하트를 7~16개 드랍합니다.#↑ 부서진 하트를 주울 시 공격력 증가#스테이지 진입 시 소지 불가능 체력이 한칸 감소합니다.", "하트 Q?", "ko_kr")
	EID:addCard(Mod.Mod_Essence_Of_Isaac.essence_of_isaac, "선택한 아이템을 다른 아이템으로 바꿉니다.#2개의 아이템 중 하나를 선택할 수 있습니다.", "아이작의 정수", "ko_kr")
	EID:addCard(Mod.Mod_Essence_Of_Magdalene.essence_of_magdalene, "{{Collectible"..Mod.Mod_Magdalene.heart_attack.."}} 공격하는 방향으로 Cardiac Arrest의 하트 투사체를 빠르게 난사합니다.", "막달레나의 정수", "ko_kr")
	EID:addCollectible(Mod.Mod_Story_Cube.story_cube, "사용 시 현재 방의 장신구를 카드로 바꿉니다.", "Story Cube", "ko_kr")
	EID:addCollectible(Mod.Mod_True_Love.true_love, "사용 시 적을 향해 돌진합니다. #{{Heart}} 부딪힌 적은 피해를 입으며 매우 강한 넉백을 받으며 장애물에 부딪힐 때 추가 피해를, 이 피해로 적을 처치한 경우 일정 시간 후 사라지는 하트를 드랍합니다.", "진정한 사랑", "ko_kr")
	EID:addCollectible(Mod.Mod_Warm_Coat.warm_coat, "↑ {{Heart}}최대 체력 +2#56%의 확률로 접촉 피해를 막습니다.", "따스한 코트", "ko_kr")
	EID:addCollectible(Mod.Mod_Weird_Heart.weird_heart, "사용 시 캐릭터가 소지한 모든 하트를 랜덤 하트로 바꿉니다.", "이상한 심장", "ko_kr")
	EID:addCard(Mod.Mod_Reverse_Two_of_Spades.reverse_two_of_spades, "↓ 사용 시 현재 소지 중인 열쇠의 개수를 절반으로 감소시킵니다.#↑ 감소시킨 열쇠의 33%만큼 동전, 하트, 폭탄의 개수를 증가시킵니다.", "스페이드 2?", "ko_kr")
	EID:addCard(Mod.Mod_Essence_Of_Judas.essence_of_judas, "사용 시 최대 2개의 현재 방의 아이템을 각각 악마방/천사방의 아이템으로 분해합니다.#각각 분해된 아이템 당 하나만 획득할 수 있습니다.", "유다의 정수", "ko_kr")
	EID:addCard(Mod.Mod_Essence_Of_Cain.essence_of_cain, "현재 방의 열린 상자를 다시 잠그어 다시 열 수 있는 상태로 바꿉니다.#현재 방의 망가진 기계를 고쳐 다시 사용할 수 있는 상태로 바꿉니다.", "카인의 정수", "ko_kr")
  EID:addCard(Mod.Mod_Essence_Of_Eden.essence_of_eden, "사용 시 방 안의 모든 아이템을 특수 등급 아이템으로 바꿉니다. 특수 등급 아이템은 새로운 방을 입장할 때마다 같은 등급의 다른 아이템으로 바꿉니다.", "에덴의 정수", "ko_kr")
	EID:addCard(Mod.Mod_Go_To_Jail.go_to_jail, "캐릭터와 가장 가까운 적을 15초동안 묶습니다.", "감옥 카드", "ko_kr")
	EID:addCollectible(Mod.Mod_Savage_Chains.savage_chains, "사용 시 캐릭터를 현재 위치에 고정시킵니다.#고정되어 있는 동안 {{DamageSmall}}공격력과 {{TearsSmall}}연사가 서서히 증가하며 고정 해제 시 서서히 감소합니다.", "황량한 쇠사슬", "ko_kr")
	EID:addCollectible(Mod.Mod_Broken_Halo.broken_halo, "스테이지 첫 방에 {{DevilRoom}}악마방 아이템을 파는 상점으로 갈 수 있는 사다리가 생성됩니다.#!!! 사다리는 방을 벗어나면 사라집니다.", "깨진 광륜", "ko_kr")
	EID:addTrinket(Mod.Mod_Dimensional_Key.dimensional_key, "{{DeliriumSmall}} 스테이지 보스 처치 시 15%의 확률로 Void 스테이지로 향하는 포탈을 소환합니다.", "차원의 열쇠", "ko_kr")
	EID:addTrinket(Mod.Mod_Black_Key.black_key, "20분이 지나도 보스 러시에 진입할 수 있습니다.", "검은 열쇠", "ko_kr")
	EID:addTrinket(Mod.Mod_Hells_Eye.hells_eye, "눈물을 발사할 때마다 5%의 확률로 연옥의 유령을 소환합니다.", "지옥의 눈", "ko_kr")
  EID:addTrinket(Mod.Mod_Paper_Airplane.paper_airplane, "방 입장 시 적을 25%의 확률로 Glitchy gaper로 바꿉니다.", "종이비행기", "ko_kr")
	EID:addCollectible(Mod.Mod_Dark_Power.dark_power, "↑ {{DamageSmall}}공격력 +0.5#↓ 모든 능력치가 미세하게 감소합니다.", "어둠의 힘", "ko_kr")
	EID:addCollectible(Mod.Mod_Chains_Of_Pain.chains_of_pain, "적 공격 시 같은 종류의 모든 적이 피해를 받습니다.", "고통의 사슬", "ko_kr")
	EID:addCollectible(Mod.Mod_Old_Knife.old_knife, "{{Chargeable}} 충전 후 공격 시 공격하는 방향으로 날아갑니다.#{{BleedingOut}} 적에게 꽃히면 3초동안 출혈 피해를 주고 오라가 생기며 오라 안에 있을 시 {{DamageSmall}}공격력이 +1.5 증가합니다.", "낡은 단검", "ko_kr")
	EID:addCollectible(Mod.Mod_Thirty_Pieces_Of_Silver.thirty_pieces_of_silver, "{{Coin}} 동전 +30#방 클리어 시 일정량의 동전을 획득합니다.#{{DamageSmall}} 소지하고 있는 동전이 적을수록 공격력이 증가합니다.", "30냥의 은화", "ko_kr")
  EID:addCollectible(Mod.Mod_Printer.printer, "카드를 소지한 상태에서 액티브 아이템 사용 시 해당 액티브 아이템의 효과를 카드에 복사합니다.#복사된 카드와 같은 종류의 카드 사용 시 복사한 액티브 아이템의 효과를 같이 사용합니다.", "프린터", "ko_kr")
	EID:addCollectible(Mod.Mod_Zip_Bombs.zip_bombs, "폭탄이 일정 간격마다 최대 3번까지 폭발합니다.", "압축 폭탄", "ko_kr")	
	EID:addCollectible(Mod.Mod_Segmentation_Fault.segmentation_fault, "3.33%의 확률로 오류 눈물을 발사하며 오류 눈물에 맞은 적은 바뀌거나 즉사합니다.#!!! {{LuckSmall}}행운 수치 비례: 행운 15 이상일 때 25% 확률", "세그멘테이션 오류", "ko_kr")
	EID:addCard(Mod.Mod_DrawOneCard.draw_one_card, "최근에 획득한 패시브 아이템 2개를 제거합니다.#제거한 아이템의 등급보다 높은 등급의 아이템을 하나 소환합니다.", "드로우 1", "ko_kr")
	EID:addBirthright(Mod.table_type_id["ISAAC"], "Blighted Dice 사용 시 나오는 아이템 중 하나가 25%의 확률로 한 단계 더 높은 아이템으로 등장합니다.", "Tarnished Isaac","ko_kr")
	EID:addBirthright(Mod.table_type_id["MAGDALENE"], "{{SoulHeart}} Cardiac Arrest로 적을 맞출 시 체력이 낮은 경우 소울하트도 드랍할 수 있습니다.", "Tarnished Magdalene", "ko_kr")
	EID:addBirthright(Mod.table_type_id["CAIN"], "3개의 아이템을 조합하여 가방을 생성합니다.#!!! Throwing Bag를 조합하는데 필요한 아이템의 개수가 3개로 증가합니다.", "Tarnished Cain", "ko_kr")
	EID:addBirthright(Mod.table_type_id["JUDAS"], "각 페이즈별 생성되는 그림자의 개수가 증가합니다.#{{Blank}} 페이즈 1: 그림자 5개#{{Blank}} 페이즈 2: 그림자 7개#{{Blank}} 페이즈 3: 그림자 11개", "Tarnished Judas", "ko_kr")
	EID:addBirthright(Mod.table_type_id["EDEN"], "#모든 Glitched Gaper가 항상 매혹에 걸립니다.#!!! (아군이 되지는 않음)#적 명중 시 일정 확률로 해당 적을 Glitched Gaper로 바꿉니다.", "Tarnished Eden", "ko_kr")
	-- Final Wishes has multiplie IDs for its' multiple sprites so we need to do this
	local final_wishes_desc = "사용 시 캐릭터와 가장 가까운 아이템을 여러 개의 픽업 아이템으로 분해합니다.#분해한 횟수만큼 다음 아이템이 기존의 아이템보다 같거나 더 높은 등급의 랜덤한 아이템과 1초마다 전환되며 전환되는 아이템 중 하나를 선택할 수 있습니다.#{{Warning}} 아이템 획득 시 추가 선택지 개수가 초기화됩니다."
	for i = 0, 5 do EID:addCollectible(Mod.Mod_Final_Wishes.final_wishes - i, final_wishes_desc, "마지막 소원", "ko_kr") end
	EID:addEntity(5, 30, 2092, "만능열쇠", "!!! 열쇠 사용 시 소모됨#대가가 필요한 모든 요소를 대가 없이 열 수 있습니다.", "ko_kr")
end

-- Todo: Add Tarnished player icons for EID and co-op ex: 
-- "{{Player"..Mod.table_type_id["ISAAC"].."}}"

local BagItems = {}
local itemId = Isaac.GetItemIdByName("Throwing Bag")

BagItems["en_us"] = {
  [118] = "#Creates a ring of brimstone around the player whilst swinging the Throwing Bag#{{Collectible"..itemId .."}} :Brimstone propelled bag", 
  [52] = "#the Throwing Bag leaves a mini-bomb when hitting something#{{Collectible"..itemId .."}} :The Throwing Bag instantly explodes upon first collision",
  [3] = "#Projectiles spawned by the Throwing Bag home in on enemies#{{Collectible"..itemId .."}} :The Throwing Bag homes in on enemies",
  [579] = "#{{Collectible"..itemId .."}} :A sword is attached to the Throwing Bag and is swung when the Throwing Bag is thrown",
  [213] = "#Projectiles spawned by the Throwing Bag block enemy projectiles#{{Collectible"..itemId .."}} :The Throwing Bag blocks enemy projectiles when swung",
  [233] = "#Projectiles spawned by the Throwing Bag orbits around the player#{{Collectible"..itemId .."}} :The Throwing Bag's projectiles orbit around itself while airborne",
  [494] = "#Projectiles spawned by the Throwing Bag  conduct sparks of electricity#{{Collectible"..itemId .."}} :The Throwing Bag conducts sparks of electricity while airborne",
  [597] = "#the Throwing Bag fires tears whilst swinging#{{Collectible"..itemId .."}} :Tears propelled bag, and shoots out extra tears when hitting something",
  [221] = "#Projectiles spawned by the Throwing Bag bounce#{{Collectible"..itemId .."}} :The Throwing Bag bounces more",
  [114] = "#Projectiles spawned by the Throwing Bag are replaced by knives#{{Collectible"..itemId .."}} :The Throwing Bag pierces through enemies and does triple damage",
  [237] = "#{{Collectible"..itemId .."}} :The Throwing Bag pierces through enemies and gains a 1.5x damage multiplier",
  [317] = "#Projectiles spawned by the Throwing Bag leave green toxic creep#{{Collectible"..itemId .."}} :The Throwing Bag leaves green creep whilst airborne, and spawns more creep upon something",
  [68] = "#the Throwing Bag fires brimstone lasers when hitting something#{{Collectible"..itemId .."}} :The Throwing Bag fires out lasers whilst airborne",
  [152] = "#Fires a constant laser while swinging the Throwing Bag#{{Collectible"..itemId .."}} :The Throwing Bag fires out a constant laser whilst airborne",
  [244] = "#Fires a Tech.5 laser when throwing the bag#{{Collectible"..itemId .."}} :The Throwing Bag fires out a number of lasers in random directions whilst airborne",
  [149] = "#the Throwing Bag leaves an explosive creep when hitting something#{{Collectible"..itemId .."}} :The Throwing Bag explodes upon first impact",
  [395] = "#Creates a ring of Tech X laser around the player whilst swinging the Throwing Bag#{{Collectible"..itemId .."}} :The Throwing Bag has a Tech X laser ring around it whilst airborne",
  [168] = "#Rocks fired from the Throwing Bag are replaced by rockets#{{Collectible"..itemId .."}} :The Throwing Bag fires out rockets whilst airborne",
  [329] = "#Creates a floating tear that you can hit with the Throwing Bag#{{Collectible"..itemId .."}} :The Throwing Bag never falls",
  [533] = "#Rocks fired from the Throwing Bag are replaced by Trisagion shots#{{Collectible"..itemId .."}} :Trisagion propelled bag",
  [531] = "#Rocks fired from the Throwing Bag are replaced by Haemolacria tears#{{Collectible"..itemId .."}} :The Throwing Bag shoots out extra Haemolacria tears when hitting something", 
  [570] = "#Rocks fired from the Throwing Bag inflict random status effects#{{Collectible"..itemId .."}} :The Throwing Bag inflicts random status effects",
  [331] = "#Rocks fired from the Throwing Bag are replaced by Godhead tears#{{Collectible"..itemId .."}} :Godhead tears propelled bag",
  [182] = "#Rocks fired from the Throwing Bag are replaced by Sacred Heart tears#{{Collectible"..itemId .."}} :The Throwing Bag homes in on enemies and gains a 2.3x damage multiplier, also shoots out extra Sacred Heart tears upon hitting something",
  [374] = "#Rock fired from the Throwing Bag can cause Holy Light effect#{{Collectible"..itemId .."}} :The Throwing Bag causes Holy Light effect when hitting an enemy",
  [5] = "#Rocks fired from the Throwing Bag boomerang back to the player#{{Collectible"..itemId .."}} :The Throwing Bag boomerangs back to the player after travelling a distance",
  [418] = "#Rocks fired from the Throwing Bag have a chance to cause random effects#{{Collectible"..itemId .."}} :Random tears propelled bag",
  [596] = "#Rocks fired from the Throwing Bag can freeze enemies when killing them#{{Collectible"..itemId .."}} :The Throwing Bag freezes enemies upon death",
  [562] = "#{{Collectible"..itemId .."}} :The Throwing Bag creates rock waves when hitting something and deals x11 damage",
  [691] = "#{{Collectible"..itemId .."}} :Holy hand grenade bag",
  [628] = "#{{Collectible"..itemId .."}} :Has a 2% chance to spawn a collectible when hitting an enemy",
  [169] = "#{{Collectible"..itemId .."}} :↑Increase bag size and damage, pierces through enemies #↓Each time hitting an enemy the bag shrinks",
  [261] = "#{{Collectible"..itemId .."}} :↑Increase bag size and damage #bag deals less damage the longer they're airborne",
  [132] = "#{{Collectible"..itemId .."}} :↑Bag deal more damage the further it travels",
  [371] = "#{{Collectible"..itemId .."}} :Chance to spawn a troll bomb when swinging the bag",
  [577] = "#{{Collectible"..itemId .."}} :{{Warning}} Kills you at a random time after taking damage whilst swinging the bag#{{ArrowUp}} Deals x5 damage whilst swinging",
  [258] = "#{{Collectible"..itemId .."}} :The bag gains 4 random synergies that get rerolled every time it's used",
  [585] = "#{{Collectible"..itemId .."}} :{{Warning}} Whilst airborne the bag can take away soul hearts{{SoulHeart}}#{{ArrowUp}} The more soul hearts the bag consumes the more damage it does",
  [352] = "#{{Collectible"..itemId .."}} :{{Warning}} The bag breaks upon fall, unable to be retrieved until a new room#{{ArrowUp}} Deals x5 damage when thrown",
  [316] = "#{{Collectible"..itemId .."}} :{{Warning}} When hit whilst swinging, has a 5% chance to teleport to a random room#Extra pseudo-bags are fired when the bag is thrown"
}

BagItems["ru"] = {
  [118] = "#Создаёт кольцо бримстоуна вокруг игрока при раскручивании мешка#{{Collectible"..itemId .."}}: Мешок за которым остаётся поток бримстоуна", 
  [52] = "#Мешок оставляет мини-бомбу при столкновении с чем либо о#{{Collectible"..itemId .."}}: Мешок моментально взрывается при первом столкновении",
  [3] = "#Камни выпадающие при ударе самонаводятся на врагов#{{Collectible"..itemId .."}}: Мешок самонаводится на врагов",
  [579] = "#{{Collectible"..itemId .."}}: Меч прикреплён к мешку и атакует при его броске",
  [213] = "#Камни выпадающие из мешка блокируют слёзы#{{Collectible"..itemId .."}}: Мешок блокирует слёзы при раскрутке",
  [233] = "#Камни выпадающие из мешка летают по орбите вокруг игрока#{{Collectible"..itemId .."}}: Мешок создаёт камни которые кружатся вокруг него пока находится в полёте",
  [494] = "#Камни выпадающие из мешков создают электрические разряды #{{Collectible"..itemId .."}}: Мешок создаёт электрические заряды пока находится в полёте",
  [597] = "#Игрок стреляет слёзами в разные стороны пока раскручивает мешок#{{Collectible"..itemId .."}}: Мешок оставляет за собой слёзы, и выстреливает кучкой слёз при столкновении с чем либо",
  [221] = "#Камни выпадающие из мешков отскакивают#{{Collectible"..itemId .."}}: Мешок отскакивает от стен ещё больше раз",
  [114] = "#Камни выпадающие из мешков заменены на ножи#{{Collectible"..itemId .."}}: Мешок наносит тройной урон и проходит сквозь врагов",
  [237] = "#{{Collectible"..itemId .."}}: Мешок проходит сквозь врагов и получает множитель урона 1.5",
  [317] = "#Камни выпадающие из мешков оставляют ядовитый след#{{Collectible"..itemId .."}}: Мешок оставляет зелёный след при полёте и создаёт след ещё больше при столкновении с чем либо",
  [68] = "#Камни выпадающие из мешков заменены на лазеры#{{Collectible"..itemId .."}}: Мешок стреляет лазерами пока находится в полёте",
  [152] = "#Стрельба постоянным лазером при раскрутке мешка#{{Collectible"..itemId .."}}: Мешок стреляет постоянным лазером пока находится в полёте",
  [244] = "#Стрельба лазером технологии 5 при кидании мешка#{{Collectible"..itemId .."}}: Мешок стреляет кучкой лазеров в разных направлениях пока находится в полёте",
  [149] = "#Мешок оставляет взрывающийся след при столкновении#{{Collectible"..itemId .."}}: Мешок взрывается при первом контакте и оставляет ядовитый след",
  [395] = "#Создаёт лазерное кольцо вокруг игрока при раскручивании мешка#{{Collectible"..itemId .."}}: Мешок окружает лазерное кольцо пока он находится в полёте",
  [168] = "#Камни выпадающие из мешков заменены ракетами#{{Collectible"..itemId .."}}: Мешок стреляет ракетами пока находится в полёте",
  [329] = "#Создаёт слезу которую вы можете двигать по комнате ударом мешка#{{Collectible"..itemId .."}}: Мешок постоянно находится в полёте",
  [533] = "#Камни выпадающие из мешков заменены на слёзы трисагона#{{Collectible"..itemId .."}}: Из мешка в полёте вылетают слёзы трисагона",
  [531] = "#Камни выпадающие из мешков заменены слёзами гемолакрии#{{Collectible"..itemId .."}}: Мешок выстреливает дополнительные слёзы гемолакрии при столкновении с чем либо", 
  [570] = "#Камни выпадающие из мешков накладывают случайные статусные эффекты врагам#{{Collectible"..itemId .."}}: Мешок накладывает случайные статусные эффекты",
  [331] = "#Камни выпадающие из мешков заменены слёзами от годхеда#{{Collectible"..itemId .."}}: Из мешка в полёте вылетают слёзы годхеда",
  [182] = "#Камни выпадающие из мешков заменены на слёзы Священного Сердца#{{Collectible"..itemId .."}}: Мешок самоноводится на врагов и получает множитель 2,3 к урону, также выбрасывает дополнительные слезы Священного Сердца при столкновении с чем либо",
  [374] = "#Камни выпадающие из мешков заменены могут быть с эффектом божественного света#{{Collectible"..itemId .."}}: Мешок при попадании создаёт эффект божественного света  ",
  [5] = "#Камни выпадающие из мешков бумерангом летят обратно к игроку#{{Collectible"..itemId .."}}: Мешок летит обратно к игроку пролетев определённое расстояние",
  [418] = "#Камни выпадающие из мешков могут наложить на врага случайные эффекты#{{Collectible"..itemId .."}}: Из мешка в полёте вылетают слёзы с разными эффектами",
  [596] = "#Камни выпадающие из мешков замораживают врагов при убийстве#{{Collectible"..itemId .."}}: Мешок замораживает врагов при убийстве",
  [562] = "#{{Collectible"..itemId .."}}: Мешок может создать волну камней при попадании и наносит x11 урона",
  [691] = "#{{Collectible"..itemId .."}}: Мешок со Святой Гранатой",
  [628] = "#{{Collectible"..itemId .."}}: Мешок при попадании по врагу имеет шанс в 2% создать предмет",
  [169] = "#{{Collectible"..itemId .."}} :↑Увеличивает размер и урон мешка, мешок проходит сквозь врагов #↓После каждого пронзённого врага мешок наносит меньше урона",
  [261] = "#{{Collectible"..itemId .."}} :↑Увеличивает размер и урон мешка #Чем дольше мешок находится в полёте тем меньше он наносит урона",
  [132] = "#{{Collectible"..itemId .."}} :↑Урон мешка увеличивается в зависимости от дальности полёта",
  [371] = "#{{Collectible"..itemId .."}} :Шанс создать троль бомбу при раскручивании мешка",
  [577] = "#{{Collectible"..itemId .."}} :{{Warning}} Убивает игрока через случайный промежуток времени после получения урона при раскручивании мешка#↑ Наносит x5 урона при раскрутке мешка",
  [258] = "#{{Collectible"..itemId .."}} :Мешок получает 4 случайных эффекта других мешков, эффекты меняются с каждым использованием"
}

BagItems["ko_kr"] = {
  [118] = "#{{ColorCyan}}소지 시:{{CR}} 충전하는 동안 혈사 고리를 발동시킵니다.#{{Collectible"..itemId .."}} {{Throwable}}{{ColorOrange}}흡수 후 투척 시:{{CR}} 가방이 떠있는 동안 투척 방향의 반대방향으로 혈사포를 발사합니다.", 
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
  [331] = "#{{ColorCyan}}소지 시:{{CR}} 가방에서 흩뿌려지는 눈물에 후광이 생깁니다.#{{Collectible"..itemId .."}} {{Throwable}}{{ColorOrange}}흡수 후 투척 시:{{CR}} 가방이 떠있는 동안 랜덤 방향으로 후광이 붙은 눈물을 발사합니다.",
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
  [258] = "#{{Collectible"..itemId .."}} {{Throwable}}{{ColorOrange}}흡수 시:{{CR}} !!!가방을 던질 때마다 4종류의 랜덤 가방 시너지 효과가 적용됩니다.",
  [585] = "#{{ColorCyan}}소지 시:{{CR}} !!! 충전하는 동안 {{SoulHeart}}소울하트 충전량을 소모합니다.#{{ArrowUp}} 소모한 소울하트 충전량만큼 추가 피해를 줍니다.",
  [352] = "#{{Collectible"..itemId .."}} {{Throwable}}{{ColorOrange}}흡수 시:{{CR}} 가방이 5배의 피해를 주나 방당 한 번만 던질 수 있습니다.",
  [316] = "#{{Collectible"..itemId .."}} {{Throwable}}{{ColorOrange}}흡수 시:{{CR}} 충전하는 동안 피격 시 5%의 확률로 랜덤한 방으로 순간이동합니다.#{{Collectible"..itemId .."}} {{Throwable}}{{ColorOrange}}흡수 후 투척 시:{{CR}} 가방을 5번 연속으로 던집니다."
}


local GoldenBagItems = {[202] = true, [450] = true, [18] = true, [109] = true, [376] = true, [429] = true, [501] = true, 
                  [521] = true, [719] = true, [716] = true, [672] = true, [602] = true, [555] = true, [94] = true}
local SackBagItems = {[716] = true, [389] = true, [131] = true, [271] = true, [420] = true, [424] = true,
				  [500] = true, [501] = true, [295] = true, [94] = true}
local AngelBagItems = {[185] = true, [363] = true, [112] = true, [184] = true, [313] = true, [173] = true, 
						[72] = true, [101] = true, [162] = true, [568] = true, [573] = true, [643] = true, [696] = true}
local PoopBagItems = {[36] = true, [291] = true, [9] = true, [236] = true, [504] = true, [209] = true, [378] = true, 
					[543] = true, [576] = true, [680] = true}
local SpiderBagItems = {[403] = true, [717] = true, [575] = true, [367] = true, [377] = true, [89] = true,
					[153] = true, [170] = true, [171] = true, [211] = true, [217] = true, [234] = true, [248] = true, [266] = true, [280] = true, [288] = true}
local SharpBagItems = {[560] = true, [569] = true, [623] = true, [631] = true, [107] = true, [186] = true,
					   [206] = true, [325] = true, [396] = true, [448] = true, [487] = true, [506] = true, [507] = true, [508] = true}
local FartBagItems = {[294] = true, [180] = true, [111] = true, [351] = true, [421] = true, [447] = true, [484] = true,
					  [615] = true, [404] = true}
local FlyBagItems = {[320] = true, [272] = true, [274] = true, [279] = true, [57] = true, [128] = true, [10] = true, 
					[248] = true, [9] = true, [264] = true, [151] = true, [148] = true, [430] = true, [364] = true, 
					[426] = true, [365] = true, [434] = true, [511] = true, [650] = true, [693] = true, [581] = true,
					[649] = true, [629] = true, [492] = true}
local GuppyBagItems = {[212] = true, [81] = true, [187] = true, [145] = true, [133] = true, [134] = true, [665] = true}
local PoisonBagItems = {[42] = true, [103] = true, [305] = true, [350] = true, [446] = true, [466] = true, [140] = true, [273] = true, [393] = true}
local BookBagItems = {[33] = true, [58] = true, [34] = true, [35] = true, [65] = true, [78] = true, [97] = true, [123] = true,
					[287] = true, [282] = true, [545] = true, [192] = true, [292] = true, [584] = true, [712] = true, [85] = true,
					[124] = true, [146] = true, [203] = true, [241] = true, [246] = true, [250] = true, [251] = true, [262] = true,
					[286] = true, [371] = true, [547] = true, [624] = true, [654] = true, [660] = true, [75] = true}
local MysticBagItems = {[588] = true, [389] = true, [589] = true, [590] = true, [591] = true, [593] = true, [594] = true, [595] = true, [598] = true, 
						[263] = true, [566] = true, [158] = true, [194] = true, [299] = true, [300] = true, [301] = true, [302] = true, [303] = true,
						[304] = true, [305] = true, [306] = true, [307] = true, [308] = true, [309] = true, [318] = true, [392] = true}
local DevilBagItems = {[83] = true, [79] = true, [80] = true, [51] = true, [399] = true, [230] = true, [572] = true, [82] = true, 
						[556] = true, [408] = true, [292] = true, [34] = true}
local MomBagItems = {[102] = true, [39] = true, [195] = true, [55] = true, [200] = true, [30] = true, [199] = true, [31] = true, [41] = true, 
					[228] = true, [139] = true, [217] = true, [29] = true, [355] = true, [508] = true, [604] = true}
local DrugBagItems = {[143] = true, [493] = true, [13] = true, [475] = true, [14] = true, [70] = true, [345] = true, [240] = true, [496] = true,
						[120] = true, [121] = true, [71] = true, [11] = true, [12] = true, [342] = true, [625] = true, [582] = true, [102] = true,
						[195] = true, [127] = true, [340] = true}

--Bag Synergies--
local function appendBagItemDescriptions(descObj)
  local language = EID.getLanguage() or "en_us"

  if language == "ru" then
    EID:appendToDescription(descObj, (BagItems["ru"][descObj.ObjSubType] or BagItems["en_us"][descObj.ObjSubType]) or "")
	  EID:appendToDescription(descObj, GoldenBagItems[descObj.ObjSubType] and "#{{Collectible"..itemId .."}}:1/10 шанс создать монету при попадании по врагу и 1/20 наложить эффект мидаса на врага" or "")
	  EID:appendToDescription(descObj, SackBagItems[descObj.ObjSubType] and "#{{Collectible"..itemId .."}}:Шанс создать мешочек при попадании по врагу" or "")
	  EID:appendToDescription(descObj, AngelBagItems[descObj.ObjSubType] and "#{{Collectible"..itemId .."}}:Шанс создать вечное сердце при попадании по врагу" or "")
	  EID:appendToDescription(descObj, PoopBagItems[descObj.ObjSubType] and "#{{Collectible"..itemId .."}}:Шанс создать случайную какашку при попадании по врагу" or "")
	  EID:appendToDescription(descObj, SpiderBagItems[descObj.ObjSubType] and "#{{Collectible"..itemId .."}}:Разбрасывает слезы Паразитоида при столкновении с чем либо" or "")
	  EID:appendToDescription(descObj, SharpBagItems[descObj.ObjSubType] and "#{{Collectible"..itemId .."}}:Накладывает эффект кровотечения при попадании по врагу" or "")
	  EID:appendToDescription(descObj, FartBagItems[descObj.ObjSubType] and "#{{Collectible"..itemId .."}}::Шанс пукнуть при попадании по врагу" or "")
	  EID:appendToDescription(descObj, FlyBagItems[descObj.ObjSubType] and "#{{Collectible"..itemId .."}}:Шанс создать синих мух при попадании по врагу" or "")
	  EID:appendToDescription(descObj, GuppyBagItems[descObj.ObjSubType] and "#{{Collectible"..itemId .."}}:Создаёт синих мух при попадании по врагу" or "")
	  EID:appendToDescription(descObj, PoisonBagItems[descObj.ObjSubType] and "#{{Collectible"..itemId .."}}:Накладывает эффект отравления при попадании по врагу" or "")
	  EID:appendToDescription(descObj, BookBagItems[descObj.ObjSubType] and "#{{Collectible"..itemId .."}}:Шанс создать карту при попадании по врагу" or "")
	  EID:appendToDescription(descObj, MysticBagItems[descObj.ObjSubType] and "#{{Collectible"..itemId .."}}:Шанс создать руну или камень души при попадании по врагу" or "")
	  EID:appendToDescription(descObj, DevilBagItems[descObj.ObjSubType] and "#{{Collectible"..itemId .."}}:Шанс активировать эффект предмета{{Collectible399}}вокруг игрока при раскручивании мешка" or "")
	  EID:appendToDescription(descObj, MomBagItems[descObj.ObjSubType] and "#{{Collectible"..itemId .."}}:1/10 шанс создать ногу мамы при попадании по врагу" or "")

    return descObj
  elseif language == "ko_kr" then
    EID:appendToDescription(descObj, (BagItems["ko_kr"][descObj.ObjSubType] or BagItems["en_us"][descObj.ObjSubType]) or "")
    EID:appendToDescription(descObj, GoldenBagItems[descObj.ObjSubType] and "#{{Collectible"..itemId .."}} {{Throwable}}{{ColorOrange}}흡수 후 투척 시:{{CR}} 적에게 부딪힐 시 10% 확률로 동전을 드랍하며 5%의 확률로 적을 석화시킵니다." or "")
    EID:appendToDescription(descObj, SackBagItems[descObj.ObjSubType] and "#{{Collectible"..itemId .."}} {{Throwable}}{{ColorOrange}}흡수 후 투척 시:{{CR}} 적에게 부딪힐 시 일정 확률로 자루를 드랍합니다." or "")
    EID:appendToDescription(descObj, AngelBagItems[descObj.ObjSubType] and "#{{Collectible"..itemId .."}} {{Throwable}}{{ColorOrange}}흡수 후 투척 시:{{CR}} 적에게 부딪힐 시 일정 확률로 {{Collectible568}}Divine Intervention 방패를 시전합니다." or "")
    EID:appendToDescription(descObj, PoopBagItems[descObj.ObjSubType] and "#{{Collectible"..itemId .."}} {{Throwable}}{{ColorOrange}}흡수 후 투척 시:{{CR}} 적에게 부딪힐 시 일정 확률로 랜덤 똥을 소환합니다." or "")
    EID:appendToDescription(descObj, SpiderBagItems[descObj.ObjSubType] and "#{{Collectible"..itemId .."}} {{Throwable}}{{ColorOrange}}흡수 후 투척 시:{{CR}} 무언가에 부딪힐 시 일정 확률로 {{Collectible461}}Parasitoid 눈물을 내뱉습니다." or "")
    EID:appendToDescription(descObj, SharpBagItems[descObj.ObjSubType] and "#{{Collectible"..itemId .."}} {{Throwable}}{{ColorOrange}}흡수 후 투척 시:{{CR}} 적에게 부딪힐 시 적을 출혈시킵니다." or "")
    EID:appendToDescription(descObj, FartBagItems[descObj.ObjSubType] and "#{{Collectible"..itemId .."}} {{Throwable}}{{ColorOrange}}흡수 후 투척 시:{{CR}} 적에게 부딪힐 시 일정 확률로 방귀를 뀝니다." or "")
    EID:appendToDescription(descObj, FlyBagItems[descObj.ObjSubType] and "#{{Collectible"..itemId .."}} {{Throwable}}{{ColorOrange}}흡수 후 투척 시:{{CR}} 적에게 부딪힐 시 일정 확률로 파란 자폭 파리를 소환합니다." or "")
    EID:appendToDescription(descObj, GuppyBagItems[descObj.ObjSubType] and "#{{Collectible"..itemId .."}} {{Throwable}}{{ColorOrange}}흡수 후 투척 시:{{CR}} 적에게 부딪힐 시 파란 자폭 파리를 소환합니다." or "")
    EID:appendToDescription(descObj, PoisonBagItems[descObj.ObjSubType] and "#{{Collectible"..itemId .."}} {{Throwable}}{{ColorOrange}}흡수 후 투척 시:{{CR}} 적에게 부딪힐 시 적을 중독시킵니다." or "")
    EID:appendToDescription(descObj, BookBagItems[descObj.ObjSubType] and "#{{Collectible"..itemId .."}} {{Throwable}}{{ColorOrange}}흡수 후 투척 시:{{CR}} 적에게 부딪힐 시 일정 확률로 카드를 드랍합니다." or "")
    EID:appendToDescription(descObj, MysticBagItems[descObj.ObjSubType] and "#{{Collectible"..itemId .."}} {{Throwable}}{{ColorOrange}}흡수 후 투척 시:{{CR}} 적에게 부딪힐 시 일정 확률로 룬을 드랍합니다." or "")
    EID:appendToDescription(descObj, DevilBagItems[descObj.ObjSubType] and "#{{Collectible"..itemId .."}} {{Throwable}}{{ColorOrange}}흡수 후 투척 시:{{CR}} 적에게 부딪힐 시 일정 확률로 {{Collectible684}}Hungry Soul 유령을 소환합니다." or "")
    EID:appendToDescription(descObj, MomBagItems[descObj.ObjSubType] and "#{{Collectible"..itemId .."}} {{Throwable}}{{ColorOrange}}흡수 후 투척 시:{{CR}} 적에게 부딪힐 시 10% 확률로 엄마 발을 소환합니다." or "")
    EID:appendToDescription(descObj, DrugBagItems[descObj.ObjSubType] and "#{{Collectible"..itemId .."}} {{Throwable}}{{ColorOrange}}흡수 후 투척 시:{{CR}} 무언가에 부딪힐 시 랜덤 효과의 눈물을 내뱉습니다." or "")

    return descObj
  else
    EID:appendToDescription(descObj, BagItems["en_us"][descObj.ObjSubType] or "")
	  EID:appendToDescription(descObj, GoldenBagItems[descObj.ObjSubType] and "#{{Collectible"..itemId .."}}:1/10 chance to drop a coin when hitting an enemy and 1/20 chance to turn them into a gold statue" or "")
	  EID:appendToDescription(descObj, SackBagItems[descObj.ObjSubType] and "#{{Collectible"..itemId .."}}:Chance to spawn a grab sack when hitting an enemy" or "")
	  EID:appendToDescription(descObj, AngelBagItems[descObj.ObjSubType] and "#{{Collectible"..itemId .."}}:Chance to spawn a Divine Intervention shield{{Collectible568}} when hitting an enemy" or "")
	  EID:appendToDescription(descObj, PoopBagItems[descObj.ObjSubType] and "#{{Collectible"..itemId .."}}:Chance to spawn a random poop when hitting an enemy" or "")
	  EID:appendToDescription(descObj, SpiderBagItems[descObj.ObjSubType] and "#{{Collectible"..itemId .."}}:Spews out parasitoid tears when hitting something" or "")
	  EID:appendToDescription(descObj, SharpBagItems[descObj.ObjSubType] and "#{{Collectible"..itemId .."}}:Inflicts bleeding effect when hitting an enemy" or "")
	  EID:appendToDescription(descObj, FartBagItems[descObj.ObjSubType] and "#{{Collectible"..itemId .."}}:Chance to fart when hitting an enemy" or "")
	  EID:appendToDescription(descObj, FlyBagItems[descObj.ObjSubType] and "#{{Collectible"..itemId .."}}:Chance to spawn blue flies when hitting an enemy" or "")
	  EID:appendToDescription(descObj, GuppyBagItems[descObj.ObjSubType] and "#{{Collectible"..itemId .."}}:Spawns blue flies when hitting an enemy" or "")
	  EID:appendToDescription(descObj, PoisonBagItems[descObj.ObjSubType] and "#{{Collectible"..itemId .."}}:Inflicts poison effect when hitting an enemy" or "")
	  EID:appendToDescription(descObj, BookBagItems[descObj.ObjSubType] and "#{{Collectible"..itemId .."}}:Chance to spawn a card when killing an enemy" or "")
	  EID:appendToDescription(descObj, MysticBagItems[descObj.ObjSubType] and "#{{Collectible"..itemId .."}}:Chance to spawn a rune or a soul stone when killing an enemy" or "")
	  EID:appendToDescription(descObj, DevilBagItems[descObj.ObjSubType] and "#{{Collectible"..itemId .."}}:Chance to create a Hungry Soul soul{{Collectible684}} near the player when hitting an enemy" or "")
	  EID:appendToDescription(descObj, MomBagItems[descObj.ObjSubType] and "#{{Collectible"..itemId .."}}:Every 10th time hitting an enemy spawns a mom's foot" or "")
	  EID:appendToDescription(descObj, DrugBagItems[descObj.ObjSubType] and "#{{Collectible"..itemId .."}}:Spews out some coloured tears when hitting something" or "")

    return descObj
  end

end

EID:addDescriptionModifier("Bag Items", 
function(descObj)
  if not (descObj.ObjType == 5 and descObj.ObjVariant == PickupVariant.PICKUP_COLLECTIBLE) or not EID:PlayersHaveCharacter(Mod.table_type_id["CAIN"]) then return false end
	return
	(BagItems["en_us"][descObj.ObjSubType] or GoldenBagItems[descObj.ObjSubType] or SackBagItems[descObj.ObjSubType] or AngelBagItems[descObj.ObjSubType] or PoopBagItems[descObj.ObjSubType]
	or SpiderBagItems[descObj.ObjSubType] or SharpBagItems[descObj.ObjSubType] or FartBagItems[descObj.ObjSubType] or FlyBagItems[descObj.ObjSubType] or GuppyBagItems[descObj.ObjSubType]
	or PoisonBagItems[descObj.ObjSubType] or BookBagItems[descObj.ObjSubType] or MysticBagItems[descObj.ObjSubType] or DevilBagItems[descObj.ObjSubType] or MomBagItems[descObj.ObjSubType]
	or DrugBagItems[descObj.ObjSubType])
end,
appendBagItemDescriptions)

EID._currentMod = "Corrupted_Characters_reserved" -- to prevent other mods overriding Epiphany mod items