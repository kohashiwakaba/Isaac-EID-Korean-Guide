--[[ 

  Zach by FloofyDwgn vs lambchop_is_ok
  https://steamcommunity.com/sharedfiles/filedetails/?id=2785553778

 ]]

  EID:addBirthright(ZacchaeusType, "포커 테이블의 칩이 더 이상 고갈되지 않습니다.#상점이 없는 스테이지에서는 스테이지 시작 방에 포커 테이블이 소환됩니다.", "잭", "ko_kr")
	EID:addBirthright(TaintedZacchaeusType, "행운의 보석이 6개 이상인 상태에서 방을 클리어해도 강제로 사용되지 않습니다.#행운의 보석이 6개 이상인 상태에서 스테이지 진입 시 강제로 소모되며 2칸의 피해를 입습니다.", "잭(알트)", "ko_kr")

	EID:addCard(pickupSoul, "{{Luck}} 집을 때마다 운이 +0.5씩 증가하는 동전 10개를 소환합니다.#이 동전으로 증가된 운은 방을 지날 때마다 서서히 사라집니다.", "잭의 영혼", "ko_kr")
	EID:addCard(pickupStone, "Causes 6 waves of rock explosions in the current room", "아이템이름", "ko_kr")
	EID:addCard(pickupTooth, "!!! Has a chance to harm the player and drop another tooth#Has a smaller chance to drop a bone heart instead, with a chance to spawn another tooth#이 아이템으로는 사망하지 않습니다.", "굳은 이빨", "ko_kr")
	
	EID:addCollectible(itemSnakeEyes, "!!! Zach 전용:#사용 시 현재 소지 중인 칩을 전부 소모하여 랜덤 효과를 발동시킵니다.#소모한 칩이 많을수록 긍정적 효과 발동 확률이 증가합니다.", "뱀의 눈", "ko_kr")
	EID:addCollectible(itemVorpalDice, "!!! Tainted Zach 전용:#사용 시 현재 소지 중인 행운의 보석을 전부 사용하여 그 수에 비례하여 적을 소환합니다.#!!! {{ColorRed}}행운의 보석이 6개 이상인 상태에서 방 클리어 시 강제로 사용되며 적이 소환되지 않으나 2칸의 피해를 입습니다.{{CR}}.", "뱀의 눈", "ko_kr")

	EID:addCollectible(itemChipShot, tostring(chipShotChance).."%의 확률로 포커 칩 눈물을 발사합니다.#포커 칩 눈물은 적에게 공격력 x1.2의 피해를 주며 해당 눈물로 적을 명중시키면 일정 확률로 특수 동전을 드랍합니다.#{{Luck}} 특수 동전은 집을 때마다 운이 +0.5씩 증가하지만 방을 지날 때마다 서서히 사라집니다.", "머니 샷", "ko_kr")
	EID:addCollectible(itemRift,"!!! 사용 시 현재 방 안의 모든 아이템을 흡수합니다.#흡수한 아이템 수에 비례하여 리프트 패밀리어를 강화합니다.#리프트 패밀리어의 공격력은 캐릭터의 공격력에 비례합니다.", "리프트", "ko_kr")
	EID:addCollectible(itemLimpet,"Gain a small stat up whenever you pick up a coin#Chance to lose stat ups and spawn pickups once per floor when coins are picked up", "아이템이름", "ko_kr")
	EID:addCollectible(itemLiquidatedAssets,"!!! Trinkets on the floor are consumed and turned into an all stat up", "아이템이름", "ko_kr")
	EID:addCollectible(itemHabeasCorpus,"!!! Rooms have a chance to spawn an adversary#The adversary is guaranteed to drop pickups#The adversary gets stronger each time it is defeated", "아이템이름", "ko_kr")
	EID:addCollectible(itemDeviousLick,"Grants tears a chain lighting effect that hits two nearby enemies#Lightning deals half the player's tear damage", "아이템이름", "ko_kr")
	EID:addCollectible(itemArchaeology,"Dig at X marks that spawn in rooms to get treasure and unique items#Can only attempt to dig once per room", "아이템이름", "ko_kr")
	EID:addCollectible(itemAncientSkull,"Upon use, grants 3 bone blasts#Press a firing direction to trigger a bone blast", "아이템이름", "ko_kr")
	EID:addCollectible(itemPetrifiedFinger,"Certain actions call down skeletal punches on random enemies, dealing 80 damage#Actions include taking damage, using items or placing bombs", "아이템이름", "ko_kr")
	
	EID:addTrinket(TrinketType.TRINKET_EMPTY_DENTED_CHALICE, "↑ {{Damage}}공격력 +0.1#↑ {{Tears}}연사 +0.1#소지한 상태에서 스테이지 진입 시 성배에 잔이 조금 채워집니다.#잔이 채워질수록 능력치 증가량이 커집니다.#!!! 장신구를 교체하거나 내려놓으면 성배가 비워집니다.", "음푹 파인 성배", "ko_kr")
	EID:addTrinket(TrinketType.TRINKET_STAINED_DENTED_CHALICE, "↑ {{Damage}}공격력 +0.3#↑ {{Tears}}연사 +0.25#소지한 상태에서 스테이지 진입 시 성배에 잔이 조금 채워집니다.#잔이 채워질수록 능력치 증가량이 커집니다.#!!! 장신구를 교체하거나 내려놓으면 성배가 비워집니다.", "음푹 파인 성배", "ko_kr")
	EID:addTrinket(TrinketType.TRINKET_BOUNTIFUL_DENTED_CHALICE, "↑ {{Damage}}공격력 +0.5#↑ {{Tears}}연사 +0.4#소지한 상태에서 스테이지 진입 시 성배에 잔이 조금 채워집니다.#잔이 채워질수록 능력치 증가량이 커집니다.#!!! 장신구를 교체하거나 내려놓으면 성배가 비워집니다.", "음푹 파인 성배", "ko_kr")
	EID:addTrinket(TrinketType.TRINKET_OVERFLOWING_DENTED_CHALICE, "↑ {{Damage}}공격력 +0.8#↑ {{Tears}}연사 +0.55#잔이 채워질수록 능력치 증가량이 커집니다.#!!! 장신구를 교체하거나 내려놓으면 성배가 비워집니다.", "음푹 파인 성배", "ko_kr")
	EID:addTrinket(TrinketType.TRINKET_DIRTY_MONEY, "동전을 주우면 5%의 확률로 동전 관련 장신구를 드랍합니다.", "검은 동전", "ko_kr")
	
	EID:addEntity(6, pokerTable, 0, "포커 테이블", "테이블에 적힌 가격만큼의 동전을 소모하여 칩을 획득합니다.#여러 번 사용 시 테이블의 칩이 고갈되어 더 이상 교환할 수 없습니다.", "ko_kr")

