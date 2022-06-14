
--##########################################################################
------ Mod Compatibility
--##########################################################################


------ Generic


ItemDescriptions = {
  TENACITY = "Makes the player immune to all status effects",
  INADEQUACY = "When hit, your failure haunts you in the form of a ghost#Although passive-aggressive, it is friendly",
  GUILT = "Spawns one of your sins when entering the boss room#Makes boss fights harder, but can lead to an extra reward",
  REVOLUTION = "Instantly makes every enemy in the room friendly, as with Friendly Ball",
  ANARCHISTS_PAYBACK = "When you take damage during a bossfight, you get a giga bomb and a Chaos Card#Only works once per floor",
  APOSTASY = "After entering a Devil Room or Angel Room and not taking any item/pickup, spawns 2 old chests and 2 wooden chests",
  CONDEMNATION = "While in a room with enemies, spawns multiple cracks on the ground based on your fire rate#Walking over these cracks summons exploding ghosts",
  ACCEPTANCE = "Spawns 2 friendly sins to fight alongside you",
  CYCLE_OF_ABUSE = "75% of the damage you deal is repeated in a radius near the target#The original target also takes the extra damage",
  HAUNTING_MEMORIES = "Replaces some of your tears with exploding ghosts#{{Luck}} 100% chance at 15 Luck",
  LOCKED_MEMORIES = "Spawns 3 cracked keys",
  FADING_MEMORIES = "Whenever you are hit by an enemy, you use the Stars? card#This happens until the card removes this item as well",
  CHERISHED_MEMORIES = "Spawns a mom/dad related item",
  FLASHBACK = "The Broken's pocket item",
  LIBERATION = "The Punished's pocket item",
  SAD_GHOST = "1.2 Tear Delay down"
}

TrinketDescriptions = {
  TAINTED_EYE = "Shows the outlines of red rooms",
  THE_PUNISHEDS_ONLY_FRENEMY = "Spawns a friendly ghost whenever you enter a room"
}

CardDescriptions = {
  SOUL_OF_THE_PUNISHED = "If in a room with enemies, spawns 6 cracks on the ground below you#Walking over one of these cracks summons exploding ghosts and causes the crack to respawn elsewhere in the room",
  STRAIGHT_TO_JAIL = "Sends you to a Purgatory room#Lowers your chances for a devil/angel room, as if you took red heart damage"
}

BirthrightDescriptions = {
  THE_PUNISHED = "Liberation no longer rerolls items exclusively into Ghost Bombs#It rerolls items choosing from its own pool instead (unaffected by Chaos)",
  THE_BROKEN = "Flashback charges persist between rooms",
  THE_PUNISHED_ENCYCLOPEDIA = "Liberation no longer rerolls items exclusively into Ghost Bombs, it rerolls items choosing from its own pool instead (unaffected by Chaos)"
}


ItemDescriptions_kr = {
  TENACITY = "캐릭터가 상태이상에 면역이 됩니다.",
  INADEQUACY = "피격 시 그 방에서 유령이 나와 적을 따라다니며 접촉하는 적에게 초당 공격력 x2의 피해를 줍니다.",
  GUILT = "!!! 보스방 진입 시 7대 죄악 미니보스 하나를 추가로 소환합니다.",
  REVOLUTION = "사용 시 그 방의 모든 적을 아군으로 만듭니다.",
  ANARCHISTS_PAYBACK = "#!!! 스테이지 당 1회만 적용#보스방에서 피격 시 Chaos Card, 기가 폭탄이 지급됩니다.",
  APOSTASY = "{{DevilRoom}}악마방/{{AngelRoom}}천사방에 진입 후 아이템 및 픽업 아이템을 획득하지 않았을 경우, 다음 스테이지 시작 방에 {{DirtyChest}}낡은상자와 {{WoodenChest}}나무상자를 2개씩 드랍합니다.",
  CONDEMNATION = "방 안에 랜덤한 위치에 붉은 균열이 생성됩니다.#균열의 생성 속도는 캐릭터의 연사에 비례합니다.#균열에 닿을 시 유령이 나와 적에게 돌진해 공격력 x8의 피해를 줍니다.",
  ACCEPTANCE = "사용 시 그 방에서 아군 7대 죄악 미니보스 2마리를 소환합니다.",
  CYCLE_OF_ABUSE = "적 명중 시 맞은 적 주위의 모든 적에게 해당 피해량 x0.75의 피해를 줍니다.",
  HAUNTING_MEMORIES = "일정 확률로 적에게 닿으면 주변의 적에게 피해를 주는 유령 눈물을 발사합니다.#{{LuckSmall}} 행운 수치 비례: 행운 15 이상일 때 100% 확률",
  LOCKED_MEMORIES = "{{Card78}} 획득 시 Cracked Key 3개를 드랍합니다.",
  FADING_MEMORIES = "!!! 피격 시 가장 먼저 획득한 패시브 아이템을 제거하고 그 방의 아이템을 2개 생성합니다.#{{Blank}} (해당 아이템이 제거되기 전까지 계속 적용)",
  CHERISHED_MEMORIES = "사용 시 엄마/아빠 관련 아이템을 하나 소환합니다.",
  FLASHBACK = "{{Collectible580}} Red Key 효과 발동:#빨간문 테두리 근처에서 사용 시 빨간방으로 가는 문이 생성됩니다.#빨간방은 일반방 또는 특수방의 구조로 생성될 수 있습니다.",
  LIBERATION = "적이 있는 방에서 사용 시 3초간 적과 캐릭터가 느려지며 캐릭터가 The Lost(비행, 지형 관통 공격)의 모습으로 바뀝니다.#아이템이 있는 방에서 사용 시 방 안의 아이템을 Ghost Bombs로 바꿉니다.",
  SAD_GHOST = "↑ {{TearsSmall}}눈물 딜레이 -1.2"
}

TrinketDescriptions_kr = {
  TAINTED_EYE = "빨간 방이 생성될 수 있는 문을 알려줍니다.",
  THE_PUNISHEDS_ONLY_FRENEMY = "{{Collectible"..CollectibleTypeModded.INADEQUACY.."}} 방 입장 시 Inadequacy의 유령 하나를 소환합니다."
}

CardDescriptions_kr = {
  SOUL_OF_THE_PUNISHED = "{{Collectible"..CollectibleTypeModded.CONDEMNATION.."}} 방 안에 적이 있는 경우 방 안에 랜덤한 위치에 붉은 균열이 6개 생성됩니다.#균열에 닿을 시 유령이 나와 적에게 돌진해 공격력 x8의 피해를 줍니다.",
  STRAIGHT_TO_JAIL = "연옥의 방으로 순간이동합니다.#{{UltraSecret}} 연옥의 방에는 특급 비밀방 배열의 아이템 하나를 획득할 수 있습니다.#!!! 현재 층의 악마방 등장 확률을 감소시킵니다."
}

ItemNames_kr = {
  TENACITY = "근성",
  INADEQUACY = "무능함",
  GUILT = "죄악",
  REVOLUTION = "혁명",
  ANARCHISTS_PAYBACK = "무정부주의자의 복수",
  APOSTASY = "배교",
  CONDEMNATION = "비난",
  ACCEPTANCE = "용인",
  CYCLE_OF_ABUSE = "학대의 굴레",
  HAUNTING_MEMORIES = "잊혀지지 않는 기억",
  LOCKED_MEMORIES = "봉인된 기억",
  FADING_MEMORIES = "사라져가는 기억",
  CHERISHED_MEMORIES = "소중한 기억",
  FLASHBACK = "회상",
  LIBERATION = "자유",
  SAD_GHOST = "슬픈 유령"
}

TrinketNames_kr = {
  TAINTED_EYE = "더럽혀진 눈",
  THE_PUNISHEDS_ONLY_FRENEMY = "The Punished의 유일한 친구"
}

CardNames_kr = {
  SOUL_OF_THE_PUNISHED = "Punished의 영혼",
  STRAIGHT_TO_JAIL = "감옥 카드"
}

BirthrightDescriptions_kr = {
  THE_PUNISHED = "Liberation 사용 시 Ghost Bombs가 아닌 다른 아이템이 등장할 수 있습니다.#The Punished의 연관 아이템이 등장합니다.",
  THE_BROKEN = "Flashback의 충전량이 방을 이동해도 초기화되지 않습니다."
}

LockTexts = {
  TENACITY = "Unused item, can't be unlocked",
  INADEQUACY = "Defeat Isaac as The Punished to unlock",
  GUILT = "Defeat ??? as The Punished to unlock",
  REVOLUTION = "Defeat Satan as The Punished to unlock",
  ANARCHISTS_PAYBACK = "Defeat The Lamb as The Punished to unlock",
  APOSTASY = "Defeat Mega Satan as The Punished to unlock",
  CONDEMNATION = "Defeat Delirium as The Punished to unlock",
  ACCEPTANCE = "Defeat Mother as The Punished to unlock",
  CYCLE_OF_ABUSE = "Defeat the Beast as The Broken to unlock",
  HAUNTING_MEMORIES = "Defeat Delirium as The Broken to unlock",
  LOCKED_MEMORIES = "Defeat Hush as The Punished to unlock",
  FADING_MEMORIES = "Defeat Boss Rush as The Punished to unlock",
  CHERISHED_MEMORIES = "Defeat Ultra Greedier as The Broken to unlock",
  FLASHBACK = "Can't be unlocked",
  LIBERATION = "Can't be unlocked",
  TAINTED_EYE = "Defeat Mother as The Broken to unlock",
  THE_PUNISHEDS_ONLY_FRENEMY = "Defeat Isaac, ???, Satan, and The Lamb as The Broken to unlock",
  STRAIGHT_TO_JAIL = "Defeat Mega Satan as The Broken to unlock",
  SOUL_OF_THE_PUNISHED = "Defeat Boss Rush and Hush as The Broken to unlock",
  THE_BROKEN = "Use Red Key on the hidden door in the Final Chapter as The Punished"
}

if Encyclopedia then
  CollectiblesItemPools = {
      TENACITY = {Encyclopedia.ItemPools.POOL_ULTRA_SECRET, Encyclopedia.ItemPools.POOL_SHOP},
      INADEQUACY = {Encyclopedia.ItemPools.POOL_SECRET, Encyclopedia.ItemPools.POOL_SHOP},
      GUILT = {Encyclopedia.ItemPools.POOL_ULTRA_SECRET, Encyclopedia.ItemPools.POOL_DEVIL},
      REVOLUTION = {Encyclopedia.ItemPools.POOL_ULTRA_SECRET, Encyclopedia.ItemPools.POOL_DEVIL},
      ANARCHISTS_PAYBACK = {Encyclopedia.ItemPools.POOL_ULTRA_SECRET},
      APOSTASY = {Encyclopedia.ItemPools.POOL_ULTRA_SECRET, Encyclopedia.ItemPools.POOL_SECRET},
      CONDEMNATION = {Encyclopedia.ItemPools.POOL_ULTRA_SECRET, Encyclopedia.ItemPools.POOL_DEVIL, Encyclopedia.ItemPools.POOL_ANGEL, Encyclopedia.ItemPools.POOL_SECRET},
      ACCEPTANCE = {Encyclopedia.ItemPools.POOL_ULTRA_SECRET, Encyclopedia.ItemPools.POOL_DEVIL},
      CYCLE_OF_ABUSE = {Encyclopedia.ItemPools.POOL_ULTRA_SECRET, Encyclopedia.ItemPools.POOL_DEVIL},
      HAUNTING_MEMORIES = {Encyclopedia.ItemPools.POOL_ULTRA_SECRET, Encyclopedia.ItemPools.POOL_SECRET, Encyclopedia.ItemPools.POOL_TREASURE},
      LOCKED_MEMORIES = {Encyclopedia.ItemPools.POOL_ULTRA_SECRET, Encyclopedia.ItemPools.POOL_SECRET, Encyclopedia.ItemPools.POOL_SHOP, Encyclopedia.ItemPools.POOL_BOSS},
      FADING_MEMORIES = {Encyclopedia.ItemPools.POOL_ULTRA_SECRET},
      CHERISHED_MEMORIES = {Encyclopedia.ItemPools.POOL_ULTRA_SECRET, Encyclopedia.ItemPools.POOL_LIBRARY},
      FLASHBACK = {},
      LIBERATION = {},
  }
end

------ External Item Descriptions (EID)

if EID then
  -- Metadata for Blank Card/Clear Rune/Bag of Crafting
EID:addCardMetadata(CardIdModded.SOUL_OF_THE_PUNISHED, 4, true)
EID:addCardMetadata(CardIdModded.STRAIGHT_TO_JAIL, 2, false)

  -- English
  -- Collectibles
  for key, value in pairs(CollectibleTypeModded) do
      EID:addCollectible(value, ItemDescriptions[key])
  end
  -- Trinkets
  for key, value in pairs(TrinketTypeModded) do
      EID:addTrinket(value, TrinketDescriptions[key])
  end
  -- Cards
  for key, value in pairs(CardIdModded) do
      EID:addCard(value, CardDescriptions[key])
  end
  -- Birthrights
  EID:addBirthright(Isaac.GetPlayerTypeByName("The Punished", false), BirthrightDescriptions.THE_PUNISHED)
  EID:addBirthright(Isaac.GetPlayerTypeByName("The Broken", true), BirthrightDescriptions.THE_BROKEN)

  -- Korean
  for key, value in pairs(CollectibleTypeModded) do
      EID:addCollectible(value, ItemDescriptions_kr[key], ItemNames_kr[key], "ko_kr")
  end
  -- Trinkets
  for key, value in pairs(TrinketTypeModded) do
      EID:addTrinket(value, TrinketDescriptions_kr[key], TrinketNames_kr[key], "ko_kr")
  end
  -- Cards
  for key, value in pairs(CardIdModded) do
      EID:addCard(value, CardDescriptions_kr[key], CardNames_kr[key], "ko_kr")
  end
  -- Birthrights
  EID:addBirthright(Isaac.GetPlayerTypeByName("The Punished", false), BirthrightDescriptions_kr.THE_PUNISHED, "The Punished", "ko_kr")
  EID:addBirthright(Isaac.GetPlayerTypeByName("The Broken", true), BirthrightDescriptions_kr.THE_BROKEN, "The Broken", "ko_kr")




end
