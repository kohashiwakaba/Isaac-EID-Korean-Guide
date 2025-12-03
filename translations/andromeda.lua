

  --EID mimiccharge register for Blank Card/Clear Rune. Insert before English
  EID:addCardMetadata(Enums.Cards.THE_UNKNOWN, 3, false)
  EID:addCardMetadata(Enums.Cards.SOUL_OF_ANDROMEDA, 6, true)
  EID:addCardMetadata(Enums.Cards.BETELGEUSE, 12, true)
  EID:addCardMetadata(Enums.Cards.SIRIUS, 1, true)
  EID:addCardMetadata(Enums.Cards.ALPHA_CENTAURI, 6, true)

	--Korean EID by 미카/코하시와카바(kohashiwakaba)
  --Korean EID did not translate character name for br on purpose
	EID:addBirthright(Enums.Characters.ANDROMEDA, "{{Spode}} {{"..EID.Config["TransformationColor"].."}}Spode 변신세트{{"..EID.Config["TextColor"].."}}를 즉시 획득합니다.#{{TreasureRoom}}보물방에서의 {{Collectible"..Enums.Collectibles.GRAVITY_SHIFT.."}}Gravity Shift 사용 조건 만족 시 버려진 천체관이 아닌 {{Planetarium}}특수한 천체관으로 순간이동 합니다.#{{GreedModeSmall}} Greed 모드에서는 상점에 천체관 아이템을 판매합니다.", "Andromeda", "ko_kr")
	EID:addBirthright(Enums.Characters.T_ANDROMEDA, "공격할 때마다 랜덤 방향에서 블랙홀을 향해 추가 눈물을 발사합니다.#블랙홀이 적을 빨아들입니다.", "Tainted Andromeda", "ko_kr")
	--Actives
	EID:addCollectible(Enums.Collectibles.SINGULARITY, "사용 시 랜덤 픽업 및 상자를 소환합니다.#5% 의 확률로 랜덤 배열의 아이템을 소환합니다.#{{Warneeng}} {{ColorYellow}}방 클리어로 충전되지 않으며 픽업을 줍거나 카드/알약 사용 시에만 충전됩니다.", "특이점", "ko_kr")
	EID:addCollectible(Enums.Collectibles.GRAVITY_SHIFT, "사용 시 모든 캐릭터 및 적의 탄막을 멈춥니다.#멈춘 탄환은 잠시 후에 떨어지며 캐릭터에 피해를 주지 않습니다.", "중력 변화", "ko_kr")
	EID:addCollectible(Enums.Collectibles.EXTINCTION_EVENT, "사용 시 그 방에서 메테오를 떨어트립니다.#{{Burning}} 메테오가 땅에 충돌하면 폭발하며 공격력 x0~x2의 피해를 주며 화상을 입힙니다.#캐릭터는 메테오와 충돌 시 폭발의 피해를 받지 않습니다.", "대멸종", "ko_kr")
	EID:addCollectible(Enums.Collectibles.BOOK_OF_COSMOS, "사용 시 그 방에서 랜덤 별자리 혹은 천체관 아이템 불꽃을 소환합니다.#소환한 불꽃은 무적이나 방을 나가면 사라집니다.", "우주의 서", "ko_kr")
	--Passives
	EID:addCollectible(Enums.Collectibles.OPHIUCHUS, "15%의 확률로 5발의 공격력 x0.33의 눈물을 일렬로 발사합니다.#!!! {{LuckSmall}}행운 수치 비례: 행운 85 이상일 때 100% 확률#{{HalfSoulHeart}} 일렬로 발사한 눈물로 적 처치 시 10%의 확률로 소울하트 반칸을 드랍합니다.", "뱀주인자리", "ko_kr")
	EID:addCollectible(Enums.Collectibles.CERES, "{{Coin}}동전, {{Bomb}}폭탄, {{Key}}열쇠 +1#{{Heart}}/{{Coin}}/{{Bomb}}/{{Key}} 종류의 픽업 드랍 시 25%의 확률로 업그레이드됩니다.#{{HolyMantleSmall}} 피격 시 소지 중인 픽업의 양에 비례한 확률로 피해를 무시하는 보호막을 1회 제공합니다.", "케레스", "ko_kr")
	EID:addCollectible(Enums.Collectibles.PALLAS, "{{CurseLostSmall}} Lost 저주에 걸리지 않습니다.#↑ 새로운 방 입장 시마다 {{DamageSmall}}공격력 +0.2#↑ 새로운 특수방 입장 시마다 {{DamageSmall}}공격력 +0.4#↑ 새로운 {{Planetarium}}/{{SecretRoom}}/{{SuperSecretRoom}}/{{Library}} 입장 시마다 {{DamageSmall}}공격력 +0.6#스테이지 진입 시 이전 스테이지에서 올라간 공격력의 10%만 보존됩니다.", "팔라스", "ko_kr")
	EID:addCollectible(Enums.Collectibles.JUNO, "↑ {{SoulHeart}}소울하트 +1#{{Charm}} 10%의 확률로 적을 매혹시키는 공격이 나갑니다.#!!! {{LuckSmall}}행운 수치 비례: 행운 27 이상일 때 100% 확률#{{Charm}} 적 처치 시 20%의 확률로 그 적을 아군으로 부활시킵니다.#!!! {{LuckSmall}}행운 수치 비례: 행운 80 이상일 때 100% 확률", "주노", "ko_kr") -- Found that Juno scales with luck
	EID:addCollectible(Enums.Collectibles.VESTA, "{{Burning}} 10초마다 십자 모양으로 캐릭터의 공격력 +10의 불길을 내뿜습니다.#적이 많을수록 불이 나오는 시간이 짧아집니다.#불에 피해를 입지 않습니다.", "베스타", "ko_kr")
	EID:addCollectible(Enums.Collectibles.CHIRON, "↑ {{EmptyHeart}}빈 최대 체력 +1#5%의 확률로 피해를 무시하며 피해를 입은 체력의 2배만큼 회복합니다.#체력이 꽉 찼을 경우 소울하트를 회복합니다.#회복되지 않을 경우 4.5%p의 확률이 추가로 증가하며 회복 시 초기화됩니다.#모든 피격에 대한 패널티에 면역#!!! {{Player30}}Tainted Eden : 무효과", "카이론", "ko_kr")-- Tainted Eden has no effect for this item aside from empty heart container
	EID:addCollectible(Enums.Collectibles.BABY_PLUTO, "캐릭터의 주위를 돌며 적의 탄환을 막아줍니다.#{{Collectible233}} 명왕성 주위를 도는 공격력 2의 눈물을 빠르게 발사합니다.#{{Trinket"..Enums.Trinkets.MOONSTONE.."}} 특정 장신구와 숨겨진 시너지가 있습니다.", "꼬마 명왕성", "ko_kr")
	EID:addCollectible(Enums.Collectibles.PLUTONIUM, "캐릭터의 주위를 돌며 적의 탄환을 막아줍니다.#{{Collectible233}} 플루토늄 주위를 도는 공격력 4의 눈물을 빠르게 발사하며 확률적으로 {{Collectible592}}돌덩이를 발사합니다.#{{Rune}} 상자를 열거나 색돌/기계류를 부술 때 확률적으로 룬/영혼석을 추가로 드랍합니다.#{{Planetarium}}천체관/{{AbPlanetarium}}버려진 천체관 최초 입장 시 {{Rune}}룬/영혼석을 반드시 드랍합니다.", "플루토늄", "ko_kr")
	EID:addCollectible(Enums.Collectibles.MEGA_PLUTONIUM, "캐릭터의 주위를 돌며 적의 탄환을 막아줍니다.#{{Collectible233}} 메가 플루토늄 주위를 도는 공격력 5의 {{Collectible592}}돌덩이을 빠르게 발사합니다.#{{Rune}} 연보라색 위성이 탄환을 막을 때마다 확률적으로 룬/영혼석을 드랍합니다.#{{Rune}} 상자를 열거나 색돌/기계류를 부술 때 확률적으로 룬/영혼석을 추가로 드랍합니다.#{{Planetarium}}천체관/{{AbPlanetarium}}버려진 천체관 최초 입장 시 {{Rune}}룬/영혼석을 반드시 드랍합니다.", "메가 플루토늄", "ko_kr")
	EID:addCollectible(Enums.Collectibles.HARMONIC_CONVERGENCE, "공격할 때마다 캐릭터를 향해 십자/X자 모양으로 공격력 x0.25의 눈물 4개를 추가로 발사합니다.", "조화로운 정렬", "ko_kr")
	EID:addCollectible(Enums.Collectibles.CELESTIAL_CROWN, "방 입장 시마다 랜덤한 4개의 색상의 별이 캐릭터의 주위를 돕니다.#공격이 통과하면 별의 색상에 따라 공격에 3종류의 특수 효과가 적용됩니다.", "천체 왕관", "ko_kr")
	EID:addCollectible(Enums.Collectibles.LUMINARY_FLARE, "방 중앙에 태양이 뜨게 됩니다.#적 처치 시 일정 확률로 태양이 랜덤 방향으로 최대 220의 피해를 주는 거대 빔을 발사합니다.#{{Burning}} 태양과 접촉한 적은 화상을 입습니다.", "발광체", "ko_kr")
	--Trinkets
	EID:addTrinket(Enums.Trinkets.STARDUST, "적 처치 시 15%의 확률로 Book of Virtues의 불꽃을 소환합니다.#!!! {{Shop}}상점에 해당 장신구를 드랍할 경우 니켈로 바뀝니다.", "우주진", "ko_kr")--Golden Trinket modifier for EID is required : (15/30/45)% chance, Nickel/Dime/Dime
	EID:addTrinket(Enums.Trinkets.METEORITE, "{{Collectible"..Enums.Collectibles.EXTINCTION_EVENT.."}} 눈물을 발사할 때마다 15%의 확률로 메테오를 랜덤한 위치에 떨어트립니다.#{{Burning}} 메테오가 땅에 충돌하면 폭발하며 공격력 x0~x2의 피해를 주며 화상을 입힙니다.#캐릭터는 메테오와 충돌 시 폭발의 피해를 받지 않습니다.", "운석", "ko_kr")--Golden Trinket modifier for EID is required : (15/30/45)% chance
	EID:addTrinket(Enums.Trinkets.CRYING_PEBBLE, "Spode 변신세트 아이템 소지 시 개당 {{TearsSmall}}연사가 0.35 증가합니다.", "슬픈 조약돌", "ko_kr")-- Marked as 'items that counts towards spode transformations', as crying pebble does not use 'stars' tag / Golden Trinket modifier for EID is required : (0.35/0.7/1.05) tears up
	EID:addTrinket(Enums.Trinkets.MOONSTONE, "{{Rune}} 상자를 열거나 색돌/기계류를 부술 때 10%의 확률로 룬/영혼석을 추가로 드랍합니다.#{{Planetarium}}천체관/{{AbPlanetarium}}버려진 천체관 최초 입장 시 {{Rune}}룬/영혼석을 반드시 드랍합니다.#{{Collectible"..Enums.Collectibles.BABY_PLUTO.."}} 특정 아이템과의 숨겨진 시너지가 있습니다.", "월석 조각", "ko_kr")
	EID:addTrinket(Enums.Trinkets.SEXTANT, "맵에 {{Planetarium}}천체관의 위치가 표시됩니다.#새로운 방 진입 시 15%의 확률로 캐릭터가 있는 방에서 2칸 이내에 있는 스테이지 구조 및 특수방/{{SecretRoom}}비밀방/{{SuperSecretRoom}}일급비밀방 맵에 표시합니다.", "육분의", "ko_kr")
	EID:addTrinket(Enums.Trinkets.ALIEN_TRANSMITTER, "적이 확률적으로 외계인에게 납치됩니다.", "외계 송신기", "ko_kr")
	EID:addTrinket(Enums.Trinkets.POLARIS, "!!! 보스방의 보스 처치 후 악마방/천사방의 문이 등장하지 않았을 경우:#그 층의 {{BossRoom}}보스방 보상이 동전 거래가 필요한 {{AngelRoom}}천사방 아이템이나 체력 거래가 필요한 {{DevilRoom}}악마방 아이템으로 대체됩니다.#해당 거래는 악마 거래로 취급되지 않습니다.", "폴라리스", "ko_kr")
	--Cards/runes
	EID:addCard(Enums.Cards.SOUL_OF_ANDROMEDA, "{{AbPlanetarium}} 버려진 천체관으로 순간이동합니다.", "안드로메다의 영혼", "ko_kr")
	EID:addCard(Enums.Cards.THE_UNKNOWN, "랜덤 타로 카드의 효과를 발동합니다.#{{ErrorRoom}} 낮은 확률로 오류방으로 이동합니다.", "XXII - 알 수 없음", "ko_kr")
	EID:addCard(Enums.Cards.BETELGEUSE, "{{Collectible483}} 그 방에서 Mama Mega의 폭발을 일으킵니다.", "베텔게우스", "ko_kr")
	EID:addCard(Enums.Cards.SIRIUS, "액티브 아이템 충전량을 초과분까지 모두 충전합니다.#일반적인 충전이 불가능한 아이템도 강제로 충전할 수 있습니다.", "시리우스", "ko_kr")
	EID:addCard(Enums.Cards.ALPHA_CENTAURI, "방 안의 아이템 및 픽업 아이템을 제거합니다.#제거한 픽업 아이템 당 50%의 확률로 Book of Virtues의 기본 불꽃을 소환합니다.#제거한 아이템 당 현재 방에 따라 특수 불꽃을 5개씩 소환합니다.", "센타우루스자리 알파", "ko_kr")
	-- Golden Trinket modifiers. Korean data only, because English descriptions did not have exact effect, or chance
  EID:addGoldenTrinketMetadata(Enums.Trinkets.METEORITE, nil, {15}, 3, "ko_kr")
  EID:addGoldenTrinketMetadata(Enums.Trinkets.CRYING_PEBBLE, nil, {0.35}, 3, "ko_kr")
  EID:addGoldenTrinketMetadata(Enums.Trinkets.MOONSTONE, "특정 아이템과의 숨겨진 시너지가 강화됩니다.", {10}, 3, "ko_kr")
  EID:addGoldenTrinketMetadata(Enums.Trinkets.POLARIS, "바뀐 거래 아이템을 무료로 획득할 수 있습니다", 0, 2, "ko_kr") --Polaris (max 2x)
  EID:addGoldenTrinketMetadata(Enums.Trinkets.SEXTANT, nil, {10}, 3, "ko_kr")
  EID:addGoldenTrinketMetadata(Enums.Trinkets.STARDUST, "{{Shop}}상점에서 해당 장신구를 드랍할 경우 니켈 대신 다임으로 바뀝니다.", {15}, 3, "ko_kr")
  EID:addGoldenTrinketMetadata(Enums.Trinkets.ALIEN_TRANSMITTER, {"확률 2배", "확률 3배"}, 0, 3, "ko_kr")

  -- TODOS : 
  -- Modifier for Andromeda - Gravity Shift
  -- Modifier for T.Andromeda - Singularity
  -- Add tear effects per color for Celestial Crown













  --Plz ignore below
  --[[ 
  local function AndromedaCondition(descObj)
    if descObj.ObjType ~= 5 or descObj.ObjVariant ~= PickupVariant.PICKUP_COLLECTIBLE then
      return false
    end
    for i = 0,Game():GetNumPlayers() - 1 do
      local player = Isaac.GetPlayer(i)
      if player:GetPlayerType() == Enums.Characters.ANDROMEDA then
        return true
      end
    end
    return false
  end

  local andromedaShiftTables = {
    ["en_us"] = {
      [RoomType.ROOM_TREASURE] = "Using before picking the item will remove it and activate Glowing Hour Glass effect, and teleport to the Abandoned Planetarium",
      [RoomType.ROOM_PLANETARIUM] = "Using before picking the item will transform planetarium item into 4 random treasure room items#Only one can be taken#Gives a random Lemegeton wisp#Reduce gravity of the room",
      [RoomType.ROOM_SHOP] = "Using before buying any item will remove all of shop items and will instead spawn random treasure room item for 30 coins",
      [RoomType.ROOM_DEVIL] = "Using before buying any item will transform every devil deal for sale into 3 Book of Belial wisps and also remove 1 heart per each devil deal in the room",
      [RoomType.ROOM_ANGEL] = "Using before picking the item will transform every item into 2 The Bible wisps per each item in the item",
      [RoomType.ROOM_SECRET] = "Using it in Secret Room will transform every item into 5 normal wisps and pickup into normal wisp with 50% chance. No matter if anything was picked up before or not",
      [RoomType.ROOM_SUPERSECRET] = "Using it in Super Secret Room will transform every item into 5 random wisps and pickup into random wisp with 50% chance. No matter if anything was picked up before or not",
      --[RoomType.ROOM_TREASURE] = "Using it in Abandoned Planetarium will teleport you out to starting room to prevent any softlock",
    }
    ["ko_kr"] = {
      [RoomType.ROOM_TREASURE] = "아이템 획득 이전에 사용 시 아이템 제거 및 Glowing Hour Glass를 발동 후 버려진 천체관으로 순간이동합니다.",
      [RoomType.ROOM_PLANETARIUM] = "아이템 획득 이전에 사용 시 아이템을 제거한 후 4개의 보물방 아이템을 소환하며 하나를 선택하면 나머지는 사라집니다.",
      [RoomType.ROOM_SHOP] = "아이템 거래 이전에 사용 시 모든 판매 아이템을 제거한 후 30{{Coin}}에 판매하는 보물방 아이템을 소환합니다.",
      [RoomType.ROOM_DEVIL] = "아이템 거래 이전에 사용 시 각 거래 아이템 당 최대 체력과 아이템을 제거한 후 3개의 Book of Belial 불꽃을 소환합니다.",
      [RoomType.ROOM_ANGEL] = "아이템 획득 이전에 사용 시 아이템을 제거한 후 제거한 아이템 당 The Bible 불꽃을 소환합니다.",
      [RoomType.ROOM_SECRET] = "사용 시 아이템을 제거한 후 제거한 아이템 당 Book of Virtues 불꽃 5개를 소환합니다.",
      [RoomType.ROOM_SUPERSECRET] = "사용 시 아이템을 제거한 후 제거한 아이템 당 랜덤 Book of Virtues 불꽃 5개를 소환합니다.",
      --[RoomType.ROOM_TREASURE] = "사용 시 시작방으로 순간이동합니다.",
    }
  }

  local function AndromedaCallback(descObj)
    local andromedaShiftDesc = andromedaShiftTables[EID:getLanguage()] or andromedaShiftTables["en_us"]
    if andromedaShiftDesc then
      local description = andromedaShiftDesc.description
      local iconStr = "#{{Collectible"..Enums.Collectibles.GRAVITY_SHIFT.."}} "
      EID:appendToDescription(descObj, iconStr.. andromedaShiftDesc .. "{{CR}}")
    end
    return descObj
  end ]]