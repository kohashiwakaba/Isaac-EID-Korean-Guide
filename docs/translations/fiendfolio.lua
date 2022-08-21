

--[[ 
  FiendFolio EID korean data by 미카/코하시와카바(kohashiwakaba)
  Mod link : https://steamcommunity.com/sharedfiles/filedetails/?id=2851063440
  Fiend Folio Official Wiki : https://fiendfolio.wiki.gg/wiki/Fiend_Folio_Wiki
]]

if EID then
end

-- example datas
FiendFolio.ExternalDescriptions = {
  COLLECTIBLE = {
    [FiendFolio.ITEM.COLLECTIBLE.PYROMANCY] = {
      ID = FiendFolio.ITEM.COLLECTIBLE.PYROMANCY,
      EID = {
        -- Only en_us does not require quotes
        -- Other languages require quotes if translators want to display item name as their languages for HUD.
        ["en_us"] = {
          Name = "Pyromancy",
          Desc = "Orbital fireballs periodically spawn around the player, up to three#Double-tap the shoot button to shoot out a fireball, leaving a trail of flames and exploding on contact"
        },
        ["ko_kr"] = {
          Name = "방화술사",
          Desc = "주기적으로 캐릭터의 주변을 도는 Fiend의 파이어볼이 최대 3마리까지 생성됩니다.#공격키를 두번 누르면 파이어볼을 발사합니다.#발사한 파이어볼은 지나간 자리에 작은 불을 남기며 무언가에 부딪힐 시 폭발합니다.",
          Quote = ""
        }
        Transformations = "12"
      },
      Encyclopedia = {
        Pools = {  
          Encyclopedia.ItemPools.POOL_DEVIL,
          Encyclopedia.ItemPools.POOL_GREED_DEVIL,
        },
      }
    }
  },
  CARDS = {
    [FiendFolio.ITEM.CARD.CALLING_CARD] = {
      ID = FiendFolio.ITEM.CARD.CALLING_CARD,
      EID = {
        ["en_us"] = {
          Name = "Calling Card",
          Desc = "Summons a friendly Psi Hunter."
        },
        ["ko_kr"] = {
          Name = "방화술사",
          Desc = "사용 시 아군 Psi Hunter를 소환합니다.",
          Quote = ""
        }
        -- Cards/Runes for EID also require mimiccharge/isRune value for Blank Card/Clear Rune, and Bag of Crafting
        -- Don't add mimiccharge/isRune if the card is object.
        mimiccharge = 6, 
        isRune = false, -- Setting isRune as true will make Clear rune display charges of the card. Blank Card charges will be shown otherwise.
        -- EID automatically detects mimiccharge values for checking objects. Not adding metadatas for cards will make EID to detect the card as object.
        -- Because of this, different variable name is required for Objects, which is for Pefectly Generic Object.
        -- Pefectly Generic Object mimiccharge should be implemented manually See below.
        objectmimic = 8, -- This is not required if the card is not object.
      },
    }
  }
  PILLS = {
    [FiendFolio.ITEM.PILL.CYANIDE] = {
      ID = FiendFolio.ITEM.PILL.CYANIDE,
      EID = {
        -- Unlike other entities, most pills don't use quotes
        ["en_us"] = {
          Name = "Cyanide",
          Desc = "Gives a big stat boost#High chance of pills spawning on room clear#Kills the player after 60 seconds#Can be prevented by taking a pill"
        },
        ["ko_kr"] = {
          Name = "나트륨",
          Desc = "↑ 모든 능력치 증가#{{Pill}}방 클리어 시 알약이 등장할 확률이 대폭 증가합니다.#!!! {{Pill}}{{ColorRed}}다른 알약을 사용하지 않았을 경우 60초 후 캐릭터가 즉사합니다.",
        }
        -- Pills for EID also require mimiccharge, class value for Placebo, and False PHD.
        -- Class is used by False PHD. "2-" for black heart, "3-" for +0.6 damage up. Don't set class values if the pill is not interacting with False PHD.
        mimiccharge = 6,
        class = "0"
      },
    }
  }
}
if EID then
  -- Adding descriptions
  for id, collectibleDescTables in FiendFolio.ExternalDescriptions.COLLECTIBLE do
    if collectibleDescTables.EID then
      for language, entries in collectibleDescTables.EID do
        EID:addCollectible(id, entries.Desc, entries.Name, language)
      end
      if collectibleDescTables.EID.Transformations then
        EID:assignTransformation("collectible", id, collectibleDescTables.EID.Transformations)
      end
    end
  end
  for id, trinketDescTables in FiendFolio.ExternalDescriptions.TRINKET do
    if trinketDescTables.EID then
      for language, entries in trinketDescTables.EID do
        EID:addTrinket(id, entries.Desc, entries.Name, language)
        -- todo: add golden trinket metadatas
      end
      if trinketDescTables.EID.Transformations then
        EID:assignTransformation("trinket", id, trinketDescTables.EID.Transformations)
      end
    end
  end
  for id, cardDescTables in FiendFolio.ExternalDescriptions.CARDS do
    if cardDescTables.EID then
      for language, entries in cardDescTables.EID do
        EID:addCard(id, entries.Desc, entries.Name, language)
      end
      if cardDescTables.EID.mimiccharge or cardDescTables.EID.isRune then
        EID:addCardMetadata(id, cardDescTables.EID.mimiccharge, cardDescTables.EID.isRune)
      end
    end
  end
  for id, pillDescTables in FiendFolio.ExternalDescriptions.PILLS do
    if pillDescTables.EID then
      for language, entries in pillDescTables.EID do
        EID:addCard(id, entries.Desc, entries.Name, language)
      end
      if pillDescTables.EID.mimiccharge or pillDescTables.EID.class then
        EID:addPillMetadata(id, pillDescTables.EID.mimiccharge, pillDescTables.EID.class)
      end
    end
  end


  -- Example for Perfect Generic Object
  EID.descriptions["en_us"].PerfectlyGenericObjectCharge = "Perfectly Generic Object charge:"
  EID.descriptions["ko_kr"].PerfectlyGenericObjectCharge = "Perfectly Generic Object 충전량:"
  table.insert(EID.collectiblesToCheck, FiendFolio.ITEM.COLLECTIBLE.PERFECTLY_GENERIC_OBJECT_1)
  table.insert(EID.collectiblesToCheck, FiendFolio.ITEM.COLLECTIBLE.PERFECTLY_GENERIC_OBJECT_2)
  table.insert(EID.collectiblesToCheck, FiendFolio.ITEM.COLLECTIBLE.PERFECTLY_GENERIC_OBJECT_3)
  table.insert(EID.collectiblesToCheck, FiendFolio.ITEM.COLLECTIBLE.PERFECTLY_GENERIC_OBJECT_4)
  table.insert(EID.collectiblesToCheck, FiendFolio.ITEM.COLLECTIBLE.PERFECTLY_GENERIC_OBJECT_5)
  table.insert(EID.collectiblesToCheck, FiendFolio.ITEM.COLLECTIBLE.PERFECTLY_GENERIC_OBJECT_6)
  table.insert(EID.collectiblesToCheck, FiendFolio.ITEM.COLLECTIBLE.PERFECTLY_GENERIC_OBJECT_8)
  table.insert(EID.collectiblesToCheck, FiendFolio.ITEM.COLLECTIBLE.PERFECTLY_GENERIC_OBJECT_12)
  local function EIDPerfectObjectConditions(descObj)
    if not (descObj.ObjType == 5 and descObj.ObjVariant == 300) or EID.cardMetadata[descObj.ObjSubType] then return false end
    local numPlayers = game:GetNumPlayers()
    for i = 0, numPlayers - 1 do
      if Isaac.GetPlayer(i):HasCollectible(FiendFolio.ITEM.COLLECTIBLE.PERFECTLY_GENERIC_OBJECT_1) or (EID.absorbedItems[tostring(i)] and EID.absorbedItems[tostring(i)][tostring(FiendFolio.ITEM.COLLECTIBLE.PERFECTLY_GENERIC_OBJECT_1)]) then return true end
      if Isaac.GetPlayer(i):HasCollectible(FiendFolio.ITEM.COLLECTIBLE.PERFECTLY_GENERIC_OBJECT_2) or (EID.absorbedItems[tostring(i)] and EID.absorbedItems[tostring(i)][tostring(FiendFolio.ITEM.COLLECTIBLE.PERFECTLY_GENERIC_OBJECT_2)]) then return true end
      if Isaac.GetPlayer(i):HasCollectible(FiendFolio.ITEM.COLLECTIBLE.PERFECTLY_GENERIC_OBJECT_3) or (EID.absorbedItems[tostring(i)] and EID.absorbedItems[tostring(i)][tostring(FiendFolio.ITEM.COLLECTIBLE.PERFECTLY_GENERIC_OBJECT_3)]) then return true end
      if Isaac.GetPlayer(i):HasCollectible(FiendFolio.ITEM.COLLECTIBLE.PERFECTLY_GENERIC_OBJECT_4) or (EID.absorbedItems[tostring(i)] and EID.absorbedItems[tostring(i)][tostring(FiendFolio.ITEM.COLLECTIBLE.PERFECTLY_GENERIC_OBJECT_4)]) then return true end
      if Isaac.GetPlayer(i):HasCollectible(FiendFolio.ITEM.COLLECTIBLE.PERFECTLY_GENERIC_OBJECT_5) or (EID.absorbedItems[tostring(i)] and EID.absorbedItems[tostring(i)][tostring(FiendFolio.ITEM.COLLECTIBLE.PERFECTLY_GENERIC_OBJECT_5)]) then return true end
      if Isaac.GetPlayer(i):HasCollectible(FiendFolio.ITEM.COLLECTIBLE.PERFECTLY_GENERIC_OBJECT_6) or (EID.absorbedItems[tostring(i)] and EID.absorbedItems[tostring(i)][tostring(FiendFolio.ITEM.COLLECTIBLE.PERFECTLY_GENERIC_OBJECT_6)]) then return true end
      if Isaac.GetPlayer(i):HasCollectible(FiendFolio.ITEM.COLLECTIBLE.PERFECTLY_GENERIC_OBJECT_8) or (EID.absorbedItems[tostring(i)] and EID.absorbedItems[tostring(i)][tostring(FiendFolio.ITEM.COLLECTIBLE.PERFECTLY_GENERIC_OBJECT_8)]) then return true end
      if Isaac.GetPlayer(i):HasCollectible(FiendFolio.ITEM.COLLECTIBLE.PERFECTLY_GENERIC_OBJECT_12) or (EID.absorbedItems[tostring(i)] and EID.absorbedItems[tostring(i)][tostring(FiendFolio.ITEM.COLLECTIBLE.PERFECTLY_GENERIC_OBJECT_12)]) then return true end
    end
  end
  
  local function PerfectObjectCallback(descObj)
    local text = EID:getDescriptionEntry("PerfectlyGenericObjectCharge") -- EID.descriptions["en_us"].PerfectlyGenericObjectCharge
    local charge = FiendFolio.ExternalDescriptions.CARDS[descObj.ObjSubType].objectmimic -- Change this if referenced table is changed
    if text ~= nil and charge ~= nil charge > 0 then
      local iconStr = "#{{Collectible"..FiendFolio.ITEM.COLLECTIBLE.PERFECTLY_GENERIC_OBJECT_1.."}} {{ColorSilver}}"
      EID:appendToDescription(descObj, iconStr..text.." {{"..charge.mimiccharge.."}}{{Battery}}")
    end
    return descObj
  end
  
  EID:addDescriptionModifier("Perfectly Generic Object Charges", EIDPerfectObjectConditions, PerfectObjectCallback)
end


-- Additional datas for EID
-- Blank Card/Clear Rune charges with types
-- third argument is for rune check.
-- DO NOT add EID card metadata if the card is not capable with Blank Card/Clear Rune at all(eg. Dice Shard)

--EID:addCardMetadata(FiendFolio.ITEM.CARD.PLUS_3_FIREBALLS, 4, false)
--EID:addCardMetadata(FiendFolio.ITEM.CARD.REVERSE_3_FIREBALLS, 4, false)
--EID:addCardMetadata(FiendFolio.ITEM.CARD.IMPLOSION, 4, false)
EID:addCardMetadata(FiendFolio.ITEM.CARD.CALLING_CARD, 6, false)
EID:addCardMetadata(FiendFolio.ITEM.CARD.DOWNLOAD_FAILURE, 6, false)
EID:addCardMetadata(FiendFolio.ITEM.CARD.GROTTO_BEAST, 6, false)
EID:addCardMetadata(FiendFolio.ITEM.CARD.PLAGUE_OF_DECAY, 3, false)
EID:addCardMetadata(FiendFolio.ITEM.CARD.DEFUSE, 2, false)
--EID:addCardMetadata(FiendFolio.ITEM.CARD.SMALL_CONTRABAND, 4, false)
EID:addCardMetadata(FiendFolio.ITEM.CARD.SKIP_CARD, 6, false)
EID:addCardMetadata(FiendFolio.ITEM.CARD.POT_OF_GREED, 6, false)
EID:addCardMetadata(FiendFolio.ITEM.CARD.CARDJITSU_SOCCER, 1, false)
EID:addCardMetadata(FiendFolio.ITEM.CARD.CARDJITSU_FLOORING_UPGRADE, 3, false)
EID:addCardMetadata(FiendFolio.ITEM.CARD.CARDJITSU_AC_3000, 3, false)
EID:addCardMetadata(FiendFolio.ITEM.CARD.GIFT_CARD, 4, false)

EID:addCardMetadata(FiendFolio.ITEM.CARD.THREE_OF_CLUBS, 8, false)
EID:addCardMetadata(FiendFolio.ITEM.CARD.JACK_OF_CLUBS, 3, false)
EID:addCardMetadata(FiendFolio.ITEM.CARD.QUEEN_OF_CLUBS, 6, false)
EID:addCardMetadata(FiendFolio.ITEM.CARD.KING_OF_CLUBS, 6, false)
--[[ 
EID:addCardMetadata(FiendFolio.ITEM.CARD.DOWNLOAD_FAILURE, 6, false)
EID:addCardMetadata(FiendFolio.ITEM.CARD.DOWNLOAD_FAILURE, 6, false)
EID:addCardMetadata(FiendFolio.ITEM.CARD.DOWNLOAD_FAILURE, 6, false)
EID:addCardMetadata(FiendFolio.ITEM.CARD.DOWNLOAD_FAILURE, 6, false)

EID:addCardMetadata(FiendFolio.ITEM.CARD.DOWNLOAD_FAILURE, 6, false)
EID:addCardMetadata(FiendFolio.ITEM.CARD.DOWNLOAD_FAILURE, 6, false)
EID:addCardMetadata(FiendFolio.ITEM.CARD.DOWNLOAD_FAILURE, 6, false)

EID:addCardMetadata(FiendFolio.ITEM.CARD.DOWNLOAD_FAILURE, 6, false)
EID:addCardMetadata(FiendFolio.ITEM.CARD.DOWNLOAD_FAILURE, 6, false)
EID:addCardMetadata(FiendFolio.ITEM.CARD.DOWNLOAD_FAILURE, 6, false)
EID:addCardMetadata(FiendFolio.ITEM.CARD.DOWNLOAD_FAILURE, 6, false)
EID:addCardMetadata(FiendFolio.ITEM.CARD.DOWNLOAD_FAILURE, 6, false)
EID:addCardMetadata(FiendFolio.ITEM.CARD.DOWNLOAD_FAILURE, 6, false)
EID:addCardMetadata(FiendFolio.ITEM.CARD.DOWNLOAD_FAILURE, 6, false)
EID:addCardMetadata(FiendFolio.ITEM.CARD.DOWNLOAD_FAILURE, 6, false)
EID:addCardMetadata(FiendFolio.ITEM.CARD.DOWNLOAD_FAILURE, 6, false)
EID:addCardMetadata(FiendFolio.ITEM.CARD.DOWNLOAD_FAILURE, 6, false)
EID:addCardMetadata(FiendFolio.ITEM.CARD.DOWNLOAD_FAILURE, 6, false)
EID:addCardMetadata(FiendFolio.ITEM.CARD.DOWNLOAD_FAILURE, 6, false)
EID:addCardMetadata(FiendFolio.ITEM.CARD.DOWNLOAD_FAILURE, 6, false)
EID:addCardMetadata(FiendFolio.ITEM.CARD.DOWNLOAD_FAILURE, 6, false)
EID:addCardMetadata(FiendFolio.ITEM.CARD.DOWNLOAD_FAILURE, 6, false)
EID:addCardMetadata(FiendFolio.ITEM.CARD.DOWNLOAD_FAILURE, 6, false)
EID:addCardMetadata(FiendFolio.ITEM.CARD.DOWNLOAD_FAILURE, 6, false)
EID:addCardMetadata(FiendFolio.ITEM.CARD.DOWNLOAD_FAILURE, 6, false)
EID:addCardMetadata(FiendFolio.ITEM.CARD.DOWNLOAD_FAILURE, 6, false)
EID:addCardMetadata(FiendFolio.ITEM.CARD.DOWNLOAD_FAILURE, 6, false)
EID:addCardMetadata(FiendFolio.ITEM.CARD.DOWNLOAD_FAILURE, 6, false)
EID:addCardMetadata(FiendFolio.ITEM.CARD.DOWNLOAD_FAILURE, 6, false)
EID:addCardMetadata(FiendFolio.ITEM.CARD.DOWNLOAD_FAILURE, 6, false)
EID:addCardMetadata(FiendFolio.ITEM.CARD.DOWNLOAD_FAILURE, 6, false)
EID:addCardMetadata(FiendFolio.ITEM.CARD.DOWNLOAD_FAILURE, 6, false)
EID:addCardMetadata(FiendFolio.ITEM.CARD.DOWNLOAD_FAILURE, 6, false)
EID:addCardMetadata(FiendFolio.ITEM.CARD.DOWNLOAD_FAILURE, 6, false)
EID:addCardMetadata(FiendFolio.ITEM.CARD.DOWNLOAD_FAILURE, 6, false)
EID:addCardMetadata(FiendFolio.ITEM.CARD.DOWNLOAD_FAILURE, 6, false)
EID:addCardMetadata(FiendFolio.ITEM.CARD.DOWNLOAD_FAILURE, 6, false)
EID:addCardMetadata(FiendFolio.ITEM.CARD.DOWNLOAD_FAILURE, 6, false)
EID:addCardMetadata(FiendFolio.ITEM.CARD.DOWNLOAD_FAILURE, 6, false)
EID:addCardMetadata(FiendFolio.ITEM.CARD.DOWNLOAD_FAILURE, 6, false)
 ]]
-- Placebo charges with classes
-- third argument is for classes, to interact with False PHD. 
-- DO NOT add third argument if the pill does not interact with False PHD.
--EID:addPillMetadata(FiendFolio.ITEM.PILL.CYANIDE, 12, "0")





-- actual Korean data starts. ALL ENUMS SHOULD BE SET BEFORE THIS LINE STARTS

-- constants_items.lua

-- Birthright
EID:addBirthright(FiendFolio.PLAYER.FIEND, "Fiend의 파이어볼이 적에게 유도되며;#발사 시 지나간 자리에 불길을 남기며;#폭파 시 적 처치 여부와 관계없이 33%의 확률로 Fiend의 부하를 추가로 소환합니다.", "", "ko_kr")
EID:addBirthright(FiendFolio.PLAYER.BIEND, "{{Collectible"..FiendFolio.ITEM.COLLECTIBLE.MALICE.."}}Malice로 적 처치 시 블랙하트를 드랍할 확률이 증가합니다.#{{Collectible"..FiendFolio.ITEM.COLLECTIBLE.MALICE.."}}Malice로 폼 전환 시마다 Fiend의 부하가 각각 랜덤 모자를 쓰며 모자에 따라 {{DamageSmall}}/{{TearsSmall}}/{{LuckSmall}}/{{TearSizeSmall}이 달라집니다.", "Tainted Fiend", "ko_kr")
EID:addBirthright(Isaac.GetPlayerTypeByName("Golem"), "↑ {{LuckSmall}}행운 +2#색돌 파괴 시 소울하트 대신 석기 장신구를 드랍합니다.", "Golem", "ko_kr")
EID:addBirthright(FiendFolio.PLAYER.SLIPPY, "{{Collectible"..FiendFolio.ITEM.COLLECTIBLE.FROG_HEAD.."}}Golden Frog Head의 방귀의 크기에 따른 독가스를 추가로 남깁니다.", "Slippy", "ko_kr")
EID:addBirthright(FiendFolio.PLAYER.CHINA, "카드/알약 슬롯에 {{Collectible"..FiendFolio.ITEM.COLLECTIBLE.HORSE_PASTE.."}}Horse Paste 아이템이 배정됩니다.#{{Collectible"..FiendFolio.ITEM.COLLECTIBLE.HORSE_PASTE.."}} 사용 시 {{BrokenHeart}}부서진하트 -1", "China", "ko_kr")

-- Cards/Objects/Runes
EID:addCard(FiendFolio.ITEM.CARD.PLUS_3_FIREBALLS, "파이어볼 불꽃을 3마리 소환합니다.(최대 12)#공격키를 두번 누르면 불꽃을 소모하여 공격하는 방향으로 파이어볼을 발사합니다.", "파이어볼 +3", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.REVERSE_3_FIREBALLS, "{{Collectible"..FiendFolio.ITEM.COLLECTIBLE.MALICE.."}} 캐릭터의 공격방향으로 벽에 여러번 부딪힐 때까지 돌진합니다.#돌진 상태에서 적 처치 시 낮은 확률로 {{BlackHeart}}블랙하트를 드랍합니다.", "파이어볼? +3", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.IMPLOSION, "사용 시 3방향으로 초록색 Fiend의 파이어볼 불꽃을 즉시 발사합니다.#파이어볼 폭파 시 Fiend의 부하를 소환합니다.#Fiend의 부하는 방 클리어 시 소멸합니다.", "내부파열", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.CALLING_CARD, "사용 시 아군 Psi Hunter 몬스터를 소환합니다.", "사신 호출 카드", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.PLAGUE_OF_DECAY, "사용 시 {{RottenHeart}}썩은하트 +5", "부패 역병", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.GROTTO_BEAST, "사용 시 Fiend Folio 출신의 아군 몬스터를 하나 소환합니다.", "어두운 곳의 짐승", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.DEFUSE, "사용 시 트롤폭탄 및 폭탄이 박힌 돌을 해체하여 폭탄 픽업으로 바꾸며;.#폭발성 몬스터를 일반형으로 바꿉니다.", "해체", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.POT_OF_GREED, "카드를 2장 드랍합니다.", "욕망의 항아리", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.DOWNLOAD_FAILURE, "사용 시 그 방의 적은 일부 행동이 중단되거나;#Poople 몬스터의 행동을 합니다: 일정 확률로 미끄러지는 장판을 깔며 캐릭터와 대칭되는 위치로 이동합니다.", "다운로드 실패", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.SMALL_CONTRABAND, "!!! 소지하지 않은 상태에서는 특정 몬스터가 해당 카드를 훔칠 수 있습니다!#해당 카드를 검은 모자의 거지에게 배달 시 특수 배열의 아이템을 소환합니다.#!!! 사용 효과 없음", "작은 밀매품", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.SKIP_CARD, "사용 시 모든 오브젝트 및 엔티티(적/아이템 등)을 지웁니다.#스킵 카드로 방 클리어 시 액티브 아이템 게이지가 충전되지 않으며 방 클리어 보상이 소환되지 않습니다.#{{BossRoom}}보스방의 경우 아이템이 소환되지 않습니다.#최종 보스의 경우 해당 페이즈를 건너뛰지만 마지막 페이즈에서의 사용 시 면역입니다.", "스킵 카드", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.CARDJITSU_SOCCER, "사용 시 그 방에서 굴릴 수 있는 축구공을 소환합니다.#축구공은 접촉 시 적에게 속도에 비례한 피해를 줍니다.", "축구", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.CARDJITSU_FLOORING_UPGRADE, "사용 시 그 방 전체에 랜덤 장판을 깝니다.", "바닥 업그레이드", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.CARDJITSU_AC_3000, "{{Freezing}} 그 방에서 적 처치 시 해당 적을 얼립니다.", "", "ko_kr")

EID:addCard(FiendFolio.ITEM.CARD.ENERGY_GRASS, "방 안의 모든 적을 4초간 {{Poison}}중독시킵니다.", "자연 속성 에너지", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.ENERGY_FIRE, "방 안의 모든 적에게 4초간 {{Burning}}화상을 입힙니다.", "불 속성 에너지", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.ENERGY_WATER, "방 안의 적이 4초간 8방향으로 파란 눈물을 여러번 쏩니다.#파란 눈물을 쏠 때마다 미세한 피해를 받습니다.", "물 속성 에너지", "ko_kr")-- "Inflicts all enemies in the room with bloating."
EID:addCard(FiendFolio.ITEM.CARD.ENERGY_LIGHTNING, "방 안의 모든 적이 4초간 짧은 레이저를 발사하며 미세한 피해를 받습니다.", "전기 속성 에너지", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.ENERGY_FIGHTING, "방 안의 모든 적이 4초간 폭주 상태가 됩니다.#폭주 상태의 적은 공격 목표를 수시로 바꾸고 추가 피해를 받으나 더 빠르게 행동합니다.", "폭주 속성 에너지", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.ENERGY_PSYCHIC, "방 안의 모든 적이 4초간 {{Confusion}}혼란에 걸립니다.", "초능력 에너지", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.ENERGY_COLORLESS, "방 안의 모든 적이 4초간 {{Bleeding}}대출혈에 걸립니다.#대출혈 상태의 적은 주기적으로 피해를 받고 붉은 장판을 깔며 랜덤 방향으로 핏방울을 흩뿌립니다.", "무속성 에너지", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.ENERGY_DARKNESS, "방 안의 모든 적이 4초간 {{Fear}}공포에 걸립니다.", "어둠 속성 에너지", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.ENERGY_METAL, "방 안의 모든 적을 멍들게 합니다.#멍든 적은 해당 상태 중첩 수만큼 추가 피해를 받습니다.", "강철 속성 에너지", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.ENERGY_FAIRY, "방 안의 모든 적에게 4초간 {{Charm}}매혹을 겁니다.", "요정 속성 에너지", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.ENERGY_DRAGON, "사용 시 랜덤 에너지 계열 카드 효과를 발동합니다.", "드래곤 속성 에너지", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.TRAINER_CARD, "!!! 현재 미구현.#해당 카드 등장 시 Fiend Folio 제작진에게 문의해 주세요", "트레이너 카드", "ko_kr")

EID:addCard(FiendFolio.ITEM.CARD.GLASS_D6, "{{Collectible105}} 사용 시 방 안의 모든 아이템을 다른 아이템으로 바꿉니다.", "유리 6면 조각", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.GLASS_D4, "{{Collectible284}} 사용 시 소지중인 모든 패시브 아이템을 모두 바꿉니다.#스테이지 진행에 필요한 아이템은 바뀌지 않습니다.", "유리 4면 조각", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.GLASS_D8, "{{Collectible406}} 사용 시 {{DamageSmall}}공격력, {{TearsSmall}}연사, {{RangeSmall}}사거리, {{SpeedSmall}}이동속도 배율을 랜덤으로 바꿉니다.", "유리 8면 조각", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.GLASS_D100, "{{Collectible283}} 사용 시 이하의 주사위 아이템을 모두 발동:#{{Blank}} {{Collectible476}}{{Collectible284}}{{Collectible105}}{{Collectible437}}{{Collectible406}}{{Collectible285}}{{Collectible386}}{{Collectible166}}#방 안의 아이템, 픽업 아이템, 장애물, 소지중인 아이템, 능력치를 모두 바꿉니다.#그 방을 다시 시작하며, 방 클리어 시 이전과 다른 보상이 드랍됩니다.#방 안의 픽업 아이템 중 하나를 복사합니다.", "유리 100면 조각", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.GLASS_D10, "{{Collectible285}} 사용 시 방 안의 모든 적을 바꿉니다.#높은 확률로 최대 체력이 비슷한 적으로 바뀝니다.", "유리 10면 조각", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.GLASS_D20, "{{Collectible166}} 사용 시 방 안의 모든 픽업 아이템을 다른 픽업 아이템으로 바꿉니다.", "유리 20면 조각", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.GLASS_D12, "{{Collectible386}} 사용 시 방 안의 모든 장애물을 바꿉니다.", "유리 12면 조각", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.GLASS_SPINDOWN, "{{Collectible723}} 사용 시 방 안의 모든 아이템을 코드 앞번호의 아이템으로 바꿉니다.#!!! 해금하지 않은 아이템은 등장하지 않습니다.", "유리 스핀다운 조각", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.GLASS_AZURITE_SPINDOWN, "{{Collectible" .. tostring(FiendFolio.ITEM.COLLECTIBLE.AZURITE_SPINDOWN) .. "}}사용 시 방 안의 모든 장신구를 코드 앞번호의 장신구로 바꿉니다.", "아주라이트 스핀다운 조각", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.GLASS_D2, "{{Collectible" .. tostring(FiendFolio.ITEM.COLLECTIBLE.D2) .. "}} 사용 시 주사위를 들며 공격방향으로 던집니다.#주사위에 닿은 적, 픽업 아이템, 눈물이 같은 유형의 다른 항목으로 바뀝니다.", "유리 2면 조각", "ko_kr")

EID:addCard(FiendFolio.ITEM.CARD.GREEN_HOUSE, "그 방의 모든 적 및 픽업을 보관합니다.#보관된 적 및 픽업은 다음 방 진입 시 강제로 소환됩니다.", "녹색 모형집", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.BRICK_SEPERATOR, "{{Collectible631}} 사용 시 방 안의 모든 적을 0.4배의 체력을 가진 적 2마리로 나누며;#그 방에서 공격이 적을 관통합니다.", "", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.PUZZLE_PIECE, "운세 퍼즐을 1/3만큼 기록합니다.#!!! 운세 퍼즐이 완성되면 해당 운세에 맞는 아이템을 소환합니다.", "퍼즐 조각", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.COOL_PHOTO, "{{Coin}}동전 1~2개를 소환합니다.", "멋진 사진", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.BLANK_LETTER_TILE, "사용 후 키 입력 시 그 스테이지에서 입력한 키를 키캡에 작성합니다.#작성된 키캡의 키를 누르고 있는 동안:#↑ {{DamageSmall}}공격력 +1#↑ {{TearsSmall}}연사 +1", "빈 키캡", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.HORSE_PUSHPOP, "!!! China 전용#사용 시 {{BrokenHeart}}부서진하트 -1", "말 푸시팝", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.TOP_HAT, "열린 상점 상자를 소환합니다.", "탑모자", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.GIFT_CARD, "방 안의 모든 아이템을 {{Collectible515}}Mystery Gift로 바꿉니다.", "선물 카드", "ko_kr")

EID:addCard(FiendFolio.ITEM.CARD.TREASURE_DISC, "1분간 3~5개의 {{TreasureRoom}}보물방 배열 패시브 아이템의 효과를 받습니다.", "보믈방 체험판 디스크", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.SHOP_DISC, "1분간 3~5개의 {{Shop}}상점 배열 패시브 아이템의 효과를 받습니다.", "상점 체험판 디스크", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.BOSS_DISC, "1분간 3~5개의 {{BossRoom}}보스방 배열 패시브 아이템의 효과를 받습니다.", "보스방 체험판 디스크", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.SECRET_DISC, "1분간 3~5개의 {{SecretRoom}}비밀방 배열 패시브 아이템의 효과를 받습니다.", "비밀방 체험판 디스크", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.DEVIL_DISC, "1분간 3~5개의 {{DevilRoom}}악마방 배열 패시브 아이템의 효과를 받습니다.", "악마방 체험판 디스크", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.ANGEL_DISC, "1분간 3~5개의 {{AngelRoom}}천사방 배열 패시브 아이템의 효과를 받습니다.", "천사방 체험판 디스크", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.PLANETARIUM_DISC, "1분간 3~5개의 {{Planetarium}}천체관 배열 패시브 아이템의 효과를 받습니다.", "천체관 체험판 디스크", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.CHAOS_DISC, "1분간 3~5개의 {{Collectible402}}랜덤 배열 패시브 아이템의 효과를 받습니다.", "혼돈의 체험판 디스크", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.BROKEN_DISC, "1분간 3~5개의 {{Collectible347}}동일한 랜덤 패시브 아이템의 효과를 받습니다.", "망가진 체험판 디스크", "ko_kr")


EID:addCard(FiendFolio.ITEM.CARD.THREE_OF_CLUBS, "{{Bomb}} 랜덤 폭탄 픽업을 3개 소환합니다.#소환될 수 있는 폭탄의 종류는 각각 동일한 확률을 가집니다.", "클로버 3", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.THREE_OF_DIAMONDS, "{{Coin}} 랜덤 동전 픽업을 3개 소환합니다.#소환될 수 있는 동전의 종류는 각각 동일한 확률을 가집니다.", "다이아 3", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.THREE_OF_SPADES, "{{Key}} 랜덤 열쇠 픽업을 3개 소환합니다.#소환될 수 있는 열쇠의 종류는 각각 동일한 확률을 가집니다.", "스페이드 3", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.THREE_OF_HEARTS, "{{Heart}} 랜덤 하트 픽업을 3개 소환합니다.#소환될 수 있는 하트의 종류는 각각 동일한 확률을 가집니다.", "하트 3", "ko_kr")

EID:addCard(FiendFolio.ITEM.CARD.JACK_OF_DIAMONDS, "저주받은 동전 2~4개를 소환합니다.#그 방의 모든 동전 픽업을 저주받은 동전으로 바꿉니다.", "다이아 J", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.MISPRINTED_JACK_OF_CLUBS, "황금 트롤폭탄을 소환합니다.#그 방의 모든 폭탄 픽업을 트롤폭탄으로 바꿉니다.", "클로버 J?", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.JACK_OF_CLUBS, "구리폭탄 2~3개를 소환합니다.#그 방의 모든 폭탄 픽업을 구리폭탄으로 바꿉니다.", "클로버 J", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.JACK_OF_SPADES, "매운열쇠 2~3개를 소환합니다.#그 방의 모든 열쇠 픽업을 매운열쇠로 바꿉니다.", "스페이드 J", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.JACK_OF_HEARTS, "소지 중인 모든 소울하트/블랙하트를 이모럴하트로 바꿉니다.#소지 중인 {{SoulHeart}}/{{BlackHeart}}가 없을 경우 이모랄하트 하나를 드랍합니다.", "하트 J", "ko_kr")

EID:addCard(FiendFolio.ITEM.CARD.KING_OF_CLUBS, "기가폭탄을 하나 소환합니다.#다음 폭탄 사용 시 기가폭탄이 설치되며 폭발한 자리에 구덩이가 생기고 적에게 300의 피해를 줍니다.", "클로버 K", "ko_kr")

EID:addCard(FiendFolio.ITEM.CARD.QUEEN_OF_DIAMONDS, "방 안의 모든 돌덩이/똥 오브젝트를 동전으로 바꿉니다.#!!! 바뀐 동전은 잠시 후 사라집니다.", "다이아 Q", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.QUEEN_OF_CLUBS, "{{Collectible52}} 그 방에서 공격이 폭탄 발사 공격으로 변경됩니다.", "클로버 Q", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.QUEEN_OF_SPADES, "{{Key}}열쇠를 1~10개 소환합니다.", "스페이드 Q", "ko_kr")

EID:addCard(FiendFolio.ITEM.CARD.KING_OF_DIAMONDS, "그 방의 적을 적을 멈추게 만들며 멈춘 적 처치시 {{Coin}}동전을 1~3개 드랍합니다.#일부 돌덩이 오브젝트를 금광으로 바꿉니다.", "다이아 K", "ko_kr")

EID:addCard(FiendFolio.ITEM.CARD.ACE_OF_WANDS, "방 안의 모든 적과 픽업을 {{Battery}}배터리로 바꿉니다.#!!! 바뀐 배터리는 잠시 후 사라집니다.", "완드 A", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.TWO_OF_WANDS, "소지 중인 {{Battery}}액티브 아이템 충전량 x2.#충전량이 없을 시 충전량 1칸을 채워줍니다.#{{Collectible63}} 초과 충전이 가능합니다.", "완드 2", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.KING_OF_WANDS, "방 안의 {{Battery}}배터리 픽업을 강화시킵니다.", "완드 K", "ko_kr")

EID:addCard(FiendFolio.ITEM.CARD.ACE_OF_PENTACLES, "방 안의 모든 적과 픽업을 장신구로 바꿉니다.", "펜타클 A", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.TWO_OF_PENTACLES, "소지 중인 장신구를 복제하여 소환합니다.#소지 중인 장신구가 없을 시 랜덤 장신구를 드랍합니다.#!!! 흡수한 장신구는 복제하지 않습니다.", "펜타클 2", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.THREE_OF_PENTACLES, "랜덤 장신구(석기 장신구 포함)를 3개 소환합니다.#각 장신구는 50%의 확률로 황금 형태로 소환됩니다.", "펜타클 3", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.KING_OF_PENTACLES, "소지 중인 장신구를 황금 형태로 바꿉니다.#!!! 흡수한 장신구는 무효과", "펜타클 K", "ko_kr")

EID:addCard(FiendFolio.ITEM.CARD.ACE_OF_SWORDS, "방 안의 모든 적과 픽업을 아군 자폭 파리/거미/벼룩으로 바꿉니다.", "소드 A", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.TWO_OF_SWORDS, "사용 시 방 안의 모든 아군 dip 및 자폭 파리/거미/벼룩을 복제하며;#{{Collectible357}} 그 방에서 소지중인 패밀리어를 복사합니다.#복사할 수 있는 패밀리어가 없다면 그 방에서 {{Collectible113}}Demon Baby 패밀리어를 소환합니다.", "소드 2", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.THREE_OF_SWORDS, "사용 시 랜덤 색상의 아군 자폭 파리/거미/벼룩/flea/dip을 3마리 소환합니다.", "소드 3", "ko_kr")

EID:addCard(FiendFolio.ITEM.CARD.ACE_OF_CUPS, "방 안의 모든 적과 픽업을 알약으로 바꿉니다.", "컵 A", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.THREE_OF_CUPS, "랜덤 알약을 3개 소환합니다.#각 알약은 50%의 확률로 거대 형태로 소환됩니다.", "컵 3", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.KING_OF_CUPS, "소지 중인 알약 및 방 안의 모든 알약을 거대 형태로 바꿉니다.", "컵 K", "ko_kr")

EID:addCard(FiendFolio.ITEM.CARD.MISPRINTED_JOKER, "사용 시 방 안의 모든 아이템을 {{DevilRoom}}악마방/{{AngelRoom}}천사방 아이템으로 바꿉니다.#!!! 낮은 확률로 아이템이 아닌 성스러운/악한 테마의 하트/상자 픽업으로 바뀝니다.", "조커?", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.THIRTEEN_OF_STARS, "{{Collectible721}} 2~6개의 효과와 발동 조건이 혼합된 오류 아이템을 소환합니다.", "스타 13", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.REVERSE_KING_OF_CLUBS, "사용 시 사망하며 캐릭터의 자리에 기가폭탄의 폭발을 일으킵니다.", "클로버 K?", "ko_kr")

EID:addCard(FiendFolio.ITEM.CARD.RUNE_ANSUS, "{{Collectible333}} (거짓)그 스테이지에서 맵에 특수방 위치, 비밀방 위치, 스테이지 구조가 표시됩니다.", "안수즈?", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.SOUL_OF_FIEND, "사용 시 Fiend의 부하를 5~8마리(일반형)와 0~2마리(블랙형) 소환합니다.", "핀드의 영혼", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.SOUL_OF_GOLEM, "석기 장신구를 3개 드랍합니다.", "골렘의 영혼", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.SOUL_OF_RANDOM, "사용 시 랜덤 영혼석 효과를 발동합니다.", "미지의 영혼석", "ko_kr")

EID:addCard(FiendFolio.ITEM.CARD.STORAGE_BATTERY_0, "사용 시 액티브 아이템의 충전량을 최대 3칸까지 저장합니다.#충전된 상태에서 재사용 시 충전량을 액티브 아이템으로 옮깁니다.#{{Collectible63}} 초과 충전이 가능합니다.#{{Card" .. tostring(Card.CORRODED_BATTERY_0) .. "}} 스테이지 진입 시 부식되며 부식된 상태에서 액티브 아이템 충전 시 잠시 후 충전한 위치에서 폭발합니다.", "보조 배터리", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.STORAGE_BATTERY_1, "사용 시 액티브 아이템의 충전량을 최대 3칸까지 저장합니다.#충전된 상태에서 재사용 시 충전량을 액티브 아이템으로 옮깁니다.#{{Collectible63}} 초과 충전이 가능합니다.#{{Card" .. tostring(Card.CORRODED_BATTERY_1) .. "}} 스테이지 진입 시 부식되며 부식된 상태에서 액티브 아이템 충전 시 잠시 후 충전한 위치에서 폭발합니다.", "보조 배터리", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.STORAGE_BATTERY_2, "사용 시 액티브 아이템의 충전량을 최대 3칸까지 저장합니다.#충전된 상태에서 재사용 시 충전량을 액티브 아이템으로 옮깁니다.#{{Collectible63}} 초과 충전이 가능합니다.#{{Card" .. tostring(Card.CORRODED_BATTERY_2) .. "}} 스테이지 진입 시 부식되며 부식된 상태에서 액티브 아이템 충전 시 잠시 후 충전한 위치에서 폭발합니다.", "보조 배터리", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.STORAGE_BATTERY_3, "사용 시 액티브 아이템의 충전량을 최대 3칸까지 저장합니다.#충전된 상태에서 재사용 시 충전량을 액티브 아이템으로 옮깁니다.#{{Collectible63}} 초과 충전이 가능합니다.#{{Card" .. tostring(Card.CORRODED_BATTERY_3) .. "}} 스테이지 진입 시 부식되며 부식된 상태에서 액티브 아이템 충전 시 잠시 후 충전한 위치에서 폭발합니다.", "보조 배터리", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.CORRODED_BATTERY_0, "사용 시 액티브 아이템의 충전량을 최대 3칸까지 저장합니다.#충전된 상태에서 재사용 시 충전량을 액티브 아이템으로 옮깁니다.#{{Collectible63}} 초과 충전이 가능합니다.#!!! 액티브 아이템 충전 시 잠시 후 충전한 위치에서 폭발합니다.", "부식된 배터리", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.CORRODED_BATTERY_1, "사용 시 액티브 아이템의 충전량을 최대 3칸까지 저장합니다.#충전된 상태에서 재사용 시 충전량을 액티브 아이템으로 옮깁니다.#{{Collectible63}} 초과 충전이 가능합니다.#!!! 액티브 아이템 충전 시 잠시 후 충전한 위치에서 폭발합니다.", "부식된 배터리", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.CORRODED_BATTERY_2, "사용 시 액티브 아이템의 충전량을 최대 3칸까지 저장합니다.#충전된 상태에서 재사용 시 충전량을 액티브 아이템으로 옮깁니다.#{{Collectible63}} 초과 충전이 가능합니다.#!!! 액티브 아이템 충전 시 잠시 후 충전한 위치에서 폭발합니다.", "부식된 배터리", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.CORRODED_BATTERY_3, "사용 시 액티브 아이템의 충전량을 최대 3칸까지 저장합니다.#충전된 상태에서 재사용 시 충전량을 액티브 아이템으로 옮깁니다.#{{Collectible63}} 초과 충전이 가능합니다.#!!! 액티브 아이템 충전 시 잠시 후 충전한 위치에서 폭발합니다.", "부식된 배터리", "ko_kr")

-- Pills
EID:addPill(FiendFolio.ITEM.PILL.CYANIDE, "↑ 모든 능력치 증가#{{Pill}}방 클리어 시 알약이 등장할 확률이 대폭 증가합니다.#!!! {{Pill}}{{ColorRed}}다른 알약을 사용하지 않았을 경우 60초 후 캐릭터가 즉사합니다.", "나트륨", "ko_kr")
EID:addPill(FiendFolio.ITEM.PILL.MELATONIN, "방 안의 적을 나른한 상태로 만듭니다.#나른한 적은 둔화되며 서서히 잠듭니다.#잠든 적을 맞추면 2배의 피해를 받으나 잠듦/나른한 상태가 해제됩니다.", "멜라토닌", "ko_kr")
EID:addPill(FiendFolio.ITEM.PILL.HOLY_SHIT, "신성한 똥을 쌉니다.", "이런 젠장", "ko_kr")
EID:addPill(FiendFolio.ITEM.PILL.HAEMORRHOIDS, "빨간 똥을 쌉니다.", "치질", "ko_kr")
EID:addPill(FiendFolio.ITEM.PILL.FISH_OIL, "↑ 눈물크기 증가", "생선 기름", "ko_kr")
EID:addPill(FiendFolio.ITEM.PILL.LEMON_JUICE, "↓ 눈물크기 감소", "레몬 주스", "ko_kr")
EID:addPill(FiendFolio.ITEM.PILL.EPIDERMOLYSIS, "↓ 피격 무적시간 감소", "표피분해", "ko_kr")
EID:addPill(FiendFolio.ITEM.PILL.CLAIRVOYANCE, "{{CurseCursedSmall}} Labyrinth 및 특수 시드를 제외한 현재 스테이지의 저주를 제거합니다.", "투시", "ko_kr")
EID:addPill(FiendFolio.ITEM.PILL.SPIDER_UNBOXING, "아군 거미를 여러 마리 소환합니다.", "거미 대개봉", "ko_kr")


-- Collectibles
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.PYROMANCY, "주기적으로 캐릭터의 주변을 도는 Fiend의 파이어볼이 최대 3마리까지 생성됩니다.#공격키를 두번 누르면 파이어볼을 발사합니다.#발사한 파이어볼은 지나간 자리에 작은 불을 남기며 무언가에 부딪힐 시 폭발합니다.", "방화술사", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.FIEND_FOLIO, "사용 시 그 방에서 Fiend Folio 출신 아군 보스를 소환합니다.#소환된 아군 보스는 일부 패턴 사용 후 떠납니다.", "", "ko_kr")

EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.D2, "사용 시 주사위를 들며 공격방향으로 던집니다.#주사위에 닿은 적, 픽업 아이템, 눈물이 같은 유형의 다른 항목으로 바뀝니다.", "2면 주사위", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.STORE_WHISTLE, "Spawns a shop chest nearby", "", "ko_kr")

EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.DICE_BAG, "방 8개({{Collectible247}}:3개) 클리어 시 유리 주사위 조각을 드랍합니다.#유리 주사위 조각은 각 주사위를 일회성으로 사용할 수 있습니다.#Glass D4 및 Glass D100 사용 시 Dice Bag도 보존됩니다.", "주사위 가방", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.LIL_FIEND, "대각선으로 이동하며 적 및 탄환과 접촉 시 일정 확률로 Fiend의 부하를 소환합니다.#Lil Fiend로 소환된 Fiend의 부하는 방 클리어 시 사라지며 블랙하트를 드랍하지 않습니다.#{{Collectible247}}BFFs 소지 시 접촉 판정 크기 및 부하 소환 확률 증가", "리틀 핀드", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.BABY_CRATER, "공격하는 동안 크레이터 주변을 도는 눈물을 최대 8개까지 모으며;#공격키를 떼면 모은 눈물을 발사합니다.#Womb 스테이지의 핏덩이 오브젝트 파괴 시 낮은 확률로 소환됩니다.", "크레이터 아기", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.MAMA_SPOOTER, "적을 추적하며 주기적으로 적을 향해 눈물을 발사합니다.", "미스 스푸터", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.RANDY_THE_SNAIL, "방 안을 느리게 돌아다니며 캐릭터 및 캐릭터의 눈물과 접촉 시 껍질에 숨으면서 굴러갑니다.#굴러가는 도중 캐릭터/눈물 및 적과 계속 접촉하여 연속적으로 굴릴 수 있습니다.#{{Collectible247}}BFFs 소지 시 접촉 판정 크기 및 피해량 증가", "달팽이 랜디", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.CORN_KERNEL, "LVL1: Wavy orbital#LVL2: Orbital that shoots weak explosions#LVL3: Familiar that teleports and chases enemies#LVL4: Familiar that teleports and shoots explosive corn", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.GRABBER, "Familiar based on Grabber from hit video game Grabber#Mirrors your movements and grabs things in front of him#BFFs increases hitbox and damage dealt by his hand", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.PEACH_CREEP, "Wall Creep familiar that tries to line up with enemies and shoots bursts of tears#Tears are bigger and have double damage with BFFs", "", "ko_kr")

EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.GMO_CORN, "You are immobilized and forced to consume 7 random pills#↑ +1 max hearts#↑ +1 Damage up#Synergises with PHD, Virgo and Little Baggy#Little Baggy increases the number of pills taken to 10", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.COOL_SUNGLASSES, "↑ {{Coin}}동전 +6#{{SpeedSmall}} 동전과 가까울수록 이동속도가 빨라집니다.#{{Coin}} 동전 획득 시 방 전체에게 피해를 줍니다.#!!! 방 진입 시 소지 중인 동전 3개를 강제로 랜덤 위치에 뿌립니다.", "멋진 선글라스", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.FIENDS_HORN, "적 처치 시 5%의 확률로 Fiend의 부하를 소환합니다.#!!! {{LuckSmall}}행운 수치 비례: 행운 14 이상일 때 20% 확률#소지한 이모럴하트에 비례하여 소환 확률이 추가로 증가합니다.#Fiend의 부하는 방 클리어 시 소멸합니다.", "핀드의 뿔", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.RISKS_REWARD, "사용 시 방 안의 아이템을 등급이 더 높은 아이템으로 바꿉니다.#!!! Hermit 처치 시에만 충전됩니다.", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.SPARE_RIBS, "↑ {{BoneHeart}}뼈하트 +1#피격 시 일정 확률로 뼛조각 여러개를 발사합니다.#뼛조각은 발사 후 캐릭터에게 되돌아오며 적 및 탄환을 막아줍니다.", "여분의 뼛조각", "ko_kr")

EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.BACON_GREASE, "↑ {{EmptyHeart}}빈 최대 체력 +1#↓ {{Heart}}빨간하트 -1#↑ {{ShotspeedSmall}}탄속 +0.15", "베이컨 지방", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.NUGGET_BOMBS, "Bombs spawn a Pooter familiar when they explode", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.DEVILS_UMBRELLA, "Sometimes fire a flurry of weak tears that spawn yellow creep#Frequency scales with Luck", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.BEE_SKIN, "Every tear fired triggers 3 weaker tears spread evenly around the player#Each time this effect triggers, the angle of all tears is incremented clockwise", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.ALPHA_COIN, "25% chance to spawn a coin#25% to spawn a card/pill#A variety of effects based on the current room and exploration", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.DADS_WALLET, "획득 시 {{Card43}}Credit Card를 드랍합니다.#소지 중인 동전이 부족해도 상점 아이템을 구매할 수 있습니다.#부족한 금액 당 {{DamageDown}}공격력이 감소합니다.", "아빠의 지갑", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.FROG_HEAD, "사용 버튼을 누르고 있는 동안 캐릭터를 멈추게 합니다.#멈춘 시간에 비례하여 적을 밀어내는 방귀를 뀝니다.", "황금 개구리 머리", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.BEGINNERS_LUCK, "↑ +5 luck up#↓ -0.5 luck per how many floors down you are#At minimum will grant +1 luck", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.DICHROMATIC_BUTTERFLY, "피격 판정 크기가 줄어들며 피격 판정의 범위가 표시됩니다.#탄환을 가까스로 피할 시 그 방에서 {{DamageSmall}}공격력 +0.2(최대 +3)#일정 확률로 공격력 x1.25의 강한 유도 공격이 나갑니다.", "색이 다른 나비", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.BIRTHDAY_GIFT, "{{Collectible515}} 모든 아이템이 Mystery Gift로 등장합니다.#바뀐 아이템 및 고정 드랍은 Mystery Gift로 변경되지 않습니다.", "생일 선물", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.IMP_SODA, "확률적으로({{LuckSmall}}) 치명타 피해를 주는 공격을 발사합니다.#치명타는 적에게 공격력 x5의 피해를 줍니다.", "도깨비 소다", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.SLIPPYS_GUTS, "Enemies have a chance to spawn a lingering poison cloud on death#Chance is proportionate to enemy's Max HP#Bombs spawn a lingering poison cloud on explosion", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.SLIPPYS_HEART, "Chance to fart while near enemies#Fart chance scales with luck#Farts vary in type", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.COMMUNITY_ACHIEVEMENT, "Grants a Damage up which scales with the current records in the Fiend Folio Community Discord counting channels", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.CHIRUMIRU, "↑ +1 soul heart#↑ +0.9 damage up#Upon entering a room, all enemies are frozen for 0.9 seconds", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.GOLEMS_ORB, "↑ {{SoulHeart}}소울하트 +2#↑ {{SpeedSmall}}이동속도 +0.2#↑ {{ShotspeedSmall}}탄속 +0.23#↑ {{LuckSmall}}행운 +1", "골렘의 오브", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.GOLEMS_ROCK, "Spawns a golem trinket on pickup#On use, grinds your current trinket into a rock trinket#!Can grind regular trinkets into rock trinkets", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.LEFTOVER_TAKEOUT, "↑ All stats up#Chance to fire a fortune worm tear#Chance scales with luck", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.CLEAR_CASE, "The next active item you pick up will be assigned to your Pocket Active slot.", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.MODERN_OUROBOROS, "공격이 무언가에 부딪힐 때 기름 장판이 생기며 #캐릭터/불이 기름 장판에 닿으면 불이 붙습니다.#캐릭터는 이 불에 피해를 받지 않습니다.", "현대 우로보로스", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.BLACK_LANTERN, "↑ {{BlackHeart}}블랙하트 +1#{{CurseCursedSmall}} 항상 저주에 걸리며 기존의 저주가 아닌 새로운 형태의 저주가 걸립니다.", "검은 랜턴", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.CRUCIFIX, "Enemies killed by tears will leave behind a short-lived ghost with an aura#Standing in the aura grants tears up, damage up and homing", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.BEDTIME_STORY, "Inflicts all enemies with drowsy#나른한 적은 둔화되며 서서히 잠듭니다.#잠든 적을 맞추면 2배의 피해를 받으나 잠듦/나른한 상태가 해제됩니다.", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.PINHEAD, "확률적으로({{LuckSmall}}) 적을 귀속시키는 재봉틀 눈물을 발사합니다.#귀속된 적이 피해를 받을 시 다른 귀속된 적이 같이 피해를 받습니다.", "묶인 단추", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.PRANK_COOKIE, "공격할 때마다 확률적으로 랜덤한 상태이상 효과 공격이 나갑니다.#(hemorrhaging, bruising, drowsing, sewing, critting, etc.)", "장난꾸러기 쿠키", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.DEVILS_HARVEST, "↑ 목숨 +1#사망 시 Fiend 캐릭터로 부활합니다.", "악마의 수확", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.RUBBER_BULLETS, "Luck-affected chance to fire bullet tears that inflict enemies with bruising#Bruised enemies take bonus damage from all sources of damage based on the number of stacks applied", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.THE_DELUXE, "↑ {{BoneHeart}}뼈하트 +1#↑ 병든하트 +1#↑ 황금하트 +1#↑ {{EternalHeart}}이터널하트 +1", "디럭스 세트", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.LIL_MINX, "적에게 돌진하여 접촉한 적에게 3.5의 피해를 줍니다.#공격키를 두번 누르면 가장 가까운 적에게 빙의하여 폭주 상태로 만듭니다.#빙의 중인 적이 있을 때 다시 공격키를 두번 누르면 여러 개의 눈물을 흩뿌리며 빠져나옵니다.#폭주 상태의 적은 공격 목표를 수시로 바꾸고 추가 피해를 받으나 더 빠르게 행동합니다.", "리틀 밍스", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.PURPLE_PUTTY, "+1 immoral heart on use", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.FETAL_FIEND, "↑ Damage up#On pickup, replaces all soul and black hearts with immoral hearts#On pickup, replaces all red hearts with immoral hearts at a 2:1 ratio", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.FIEND_MIX, "사용 시 현재 체력의 절반을 Fiend의 부하로 바꿉니다.", "핀드 믹스", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.SECRET_STASH, "획득 시 {{Coin}}동전, {{Key}}열쇠, {{Bomb}}폭탄, {{Card}}카드/{{Pill}}알약/{{Rune}}룬을 하나씩 드랍합니다.#다음 게임에서 이전 게임에 소지했던 {{Coin}}동전, {{Key}}열쇠, {{Bomb}}폭탄의 10%(반내림, 최대 5) 및 {{Card}}카드/{{Pill}}알약/{{Rune}}룬을 소환합니다.", "숨겨진 보관함", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.SANGUINE_HOOK, "Throwable hook that latches onto and pulls in enemies/pickups#Inflicts enemies with bruising while hooked#On releasing enemies, inflicts them with hemorrhaging and fires blood tears in the direction they were released", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.GORGON, "Stationary familiar that gazes at enemies in the room, freezing them in place until they are killed", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.FIDDLE_CUBE, "Grants an increasing amount of damage and tears when used rhythmically#Damage and tears gradually go away if the item is not being used", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.AVGM, "여러 번 사용 시 동전을 하나 드랍합니다.#동전을 드랍할 때마다 다음 동전 드랍에 필요한 사용 횟수가 증가합니다.", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.DEIMOS, "Familiar that fires hooks that latch onto and pull in enemies/pickups#Remains stationary while pulling in enemies/pickups#Inflicts enemies with bruising while hooked#On releasing enemies, inflicts them with hemorrhaging and fires blood tears in the direction they were released", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.PET_ROCK, "Pet rock familiar that can be pushed around and blocks shots#Fills pits when pushed into them", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.CONTRABAND, "!!! 소지하지 않은 상태에서는 특정 몬스터가 해당 아이템을 훔칠 수 있습니다!#해당 카드를 검은 모자의 거지에게 배달 시 특수 배열의 아이템을 소환합니다.", "밀매품", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.ETERNAL_D12, "Switches between two modes#With two charges, has a high chance to reroll grids and a low chance to wipe away grids#With one charge, has a low chance to reroll grids and a high chance to wipe away grids", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.ETERNAL_D12_ALT, "Switches between two modes#With two charges, has a high chance to reroll grids and a low chance to wipe away grids#With one charge, has a low chance to reroll grids and a high chance to wipe away grids", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.GLIZZY, "↑ {{HalfHeart}}절반 채워진 최대 체력 +1#↑ {{SpeedSmall}}이동속도 +0.1#↑ {{TearsSmall}}연사 +0.1#↑ {{DamageSmall}}공격력 +0.1#↑ {{RangeSmall}}사거리 +0.1#↑ {{ShotspeedSmall}}탄속 +0.1#↑ {{LuckSmall}}행운 +0.1", "글리지 소시지", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.FIEND_HEART, "↑ 이모럴하트 +3 ", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.DEVILLED_EGG, "↑ 이모럴하트 +2#↑ {{TearsSmall}}연사 +0.3", "악마화된 알", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.TEA, "↑ {{Heart}}최대 체력 +1#↑ {{Heart}}빨간하트 +1", "녹차", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.OPHIUCHUS, "Wiggly snake familiar that chases after enemies, inflicting poison and dealing damage on contact#Prioritizes chasing after enemies that are not currently inflicted with poison", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.FRAUDULENT_FUNGUS, "↑ +1 rotten heart#↑ +0.2 speed up#↑ +0.3 damage up#↑ +0.38 range up", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.SMALL_PIPE, "↑ +0.2 damage up#↑ +0.2 tears up#↑ +0.2 shot speed up#↑ +0.2 speed up", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.SMALL_WOOD, "↑ +1 tears up#↑ +0.2 damage up#↓ -0.2 shot speed down", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.WHITE_PEPPER, "On use, shoots 5 flames in a ring around you", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.PEPPERMINT, "{{Freezing}}공격 시 확률적으로 처치 시 적을 얼리는 불꽃을 날립니다.", "페퍼민트", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.PAGE_OF_VIRTUES, "On pickup, grants a random wisp#Whenever this wisp is destroyed, grants you a new random wisp", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.BRIDGE_BOMBS, "↑ {{Bomb}}폭탄 +5#폭탄이 터질 때 주변의 구덩이를 메웁니다.", "징검다리 폭탄", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.LAWN_DARTS, "Luck-affected chance to fire tears that inflict enemies with hemorrhaging#Hemorrhaging enemies periodically take damage, spew blood tears randomly around themselves and leave blood creep on the ground that damages enemies", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.TOY_PIANO, "확률적으로({{LuckSmall}}) 적에게 심판을 거는 공격이 나갑니다.#심판 상태의 적은 명중 시마다 카운트가 감소하며;#카운트가 0이 될 때 추가 피해를 주며 심판 상태를 제거합니다.", "장난감 피아노", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.HYPNO_RING, "Luck-affected chance to fire tears that inflict enemies with drowsy#Drowsied enemies slowly fall asleep, moving and attacking increasingly slower over time#Sleeping enemies remain still until they awake#Sleeping enemies take double damage but awake instantly upon taking damage", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.MUSCA, "↑ {{Bomb}}폭탄 +3#폭탄이 터질 때 랜덤 자폭 파리 3마리가 나옵니다.#적 처치 시 확률적으로({{LuckSmall}}) 랜덤 자폭 파리가 나옵니다.", "파리자리", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.MODEL_ROCKET, "↑ 2x shot speed multiplier#↑ +1.5 range up#Tears accelerate up from zero movement speed to normal movement speed on firing#Tears deal bonus damage based on their movement speed upon impact", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.SIBLING_SYL, "공격하는 방향으로 공격력 4.75의 눈물을 발사합니다.", "실", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.WRONG_WARP, "!!! 사용 시 랜덤 스테이지로 순간이동합니다.", "엉뚱한 워프", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.THE_BROWN_HORN, "On use, causes all enemies to defecate violently, pushing them away from you and spawning friendly dips", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.NYX, "공격 시 적을 향해 날아가는 유도 보석을 3개 획득합니다.#유도 보석이 적과 접촉 시 적에게 피해를 주며 멍들게 합니다.#멍든 적은 해당 상태 중첩 수만큼 추가 피해를 받습니다.#일부 아이템과의 추가 시너지 존재", "닉스", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.SNOW_GLOBE, "On use, causes an earthquake that flings most grids to a random spot nearby.", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.ETERNAL_CLICKER, "On use, 50% chance to change to another character and lose an item.", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.DICE_GOBLIN, "Spawns 3 random objects on pickup#Spawns 1 object at the start of every floor", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.CHERRY_BOMB, "사용 시 잠시 후 폭발하는 작은 폭탄을 듭니다.#작은 폭탄은 장애물을 부술 수 없고 폭발 크기가 작으나 캐릭터에게 피해를 주지 않습니다.", "체리 폭탄", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.ASTROPULVIS, "Destroys the closest rock and turns it into a large ghost. Using the active again will detonate all large ghosts in the room.", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.SPINDLE, "획득 시 디스크를 3장 드랍합니다.#디스크류 픽업은 사용 시 랜덤 아이템의 효과를 1분간 부여합니다.#{{BossRoom}}보스방 진입 시 디스크류 아이템 하나를 드랍합니다.", "스핀들", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.AZURITE_SPINDOWN, "On use, rerolls all trinkets in the room by decreasing their internal ID number by one.", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.KING_WORM, "On use, grants the effect of a random worm trinket for the current room#5 second cooldown", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.HEART_OF_CHINA, "체력이 없거나 꽉 찬 상태에서 빨간하트 습득 시 특수 체력 게이지가 채워집니다.#특수 체력 게이지 완충 시 {{EmptyHeart}}빈 최대 체력 +1 증가#특수 체력 게이지의 총량은 현재 소지 중인 최대 체력에 비례하며;#{{ButtonRT}}버튼을 꾹 누르거나 빨간하트 근처에 있을 때 캐릭터 위에 표시됩니다.", "차이나의 심장", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.HORSE_PASTE, "!!! China 전용#사용 시 {{BrokenHeart}}부서진하트 -1", "말 접착제", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.DADS_DIP, "↑ {{Heart}}병든 최대 체력 +1", "아빠의 디핑소스", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.YICK_HEART, "사용 시 병든하트 +1", "조용한 하트", "ko_kr")

EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.LIL_LAMB, "{{Collectible149}} Familiar that charges to shoot an ipecac explosive#When the player is hit, has a chance to drop on the floor and target enemies automatically", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.GRAPPLING_HOOK, "Throwable hook that can be used to quickly travel#Can be used to climb onto rocks#The player can take damage by falling into pits", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.CETUS, "On taking damage, spew out a large amount of tears that leave creep", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.MALICE, "사용 시 캐릭터의 공격방향으로 벽에 부딪힐 때까지 돌진합니다.#돌진 상태에서 적 처치 시 낮은 확률로 {{BlackHeart}}블랙하트를 드랍합니다.", "악의", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.MALICE_REFORM, "!!! Tainted Fiend 전용:#!!! {{ColorOrange}}현재 분리된 상태;#체력과 상관없이 적에게 맞을 시 사라지며 모든 부하 사망 시 본체도 즉사합니다.{{CR}}#사용 시 본체 상태로 돌아옵니다.", "악의", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.BLACK_MOON, "적 처치 시 주변의 적에게 피해를 주는 십자가를 소환합니다.#십자가로 처치된 적은 또 다른 십자가를 소환하지 않습니다.", "검은 달", "ko_kr")

EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.PERFECTLY_GENERIC_OBJECT_1, "획득 시 랜덤 오브젝트를 하나 드랍합니다.#사용 시 소지중인 오브젝트의 효과를 발동합니다.#오브젝트에 따라서 충전량이 달라집니다.", "기초 오브젝트", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.PERFECTLY_GENERIC_OBJECT_2, "획득 시 랜덤 오브젝트를 하나 드랍합니다.#사용 시 소지중인 오브젝트의 효과를 발동합니다.#오브젝트에 따라서 충전량이 달라집니다.", "기초 오브젝트", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.PERFECTLY_GENERIC_OBJECT_3, "획득 시 랜덤 오브젝트를 하나 드랍합니다.#사용 시 소지중인 오브젝트의 효과를 발동합니다.#오브젝트에 따라서 충전량이 달라집니다.", "기초 오브젝트", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.PERFECTLY_GENERIC_OBJECT_4, "획득 시 랜덤 오브젝트를 하나 드랍합니다.#사용 시 소지중인 오브젝트의 효과를 발동합니다.#오브젝트에 따라서 충전량이 달라집니다.", "기초 오브젝트", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.PERFECTLY_GENERIC_OBJECT_5, "획득 시 랜덤 오브젝트를 하나 드랍합니다.#사용 시 소지중인 오브젝트의 효과를 발동합니다.#오브젝트에 따라서 충전량이 달라집니다.", "기초 오브젝트", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.PERFECTLY_GENERIC_OBJECT_6, "획득 시 랜덤 오브젝트를 하나 드랍합니다.#사용 시 소지중인 오브젝트의 효과를 발동합니다.#오브젝트에 따라서 충전량이 달라집니다.", "기초 오브젝트", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.PERFECTLY_GENERIC_OBJECT_8, "획득 시 랜덤 오브젝트를 하나 드랍합니다.#사용 시 소지중인 오브젝트의 효과를 발동합니다.#오브젝트에 따라서 충전량이 달라집니다.", "기초 오브젝트", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.PERFECTLY_GENERIC_OBJECT_12, "획득 시 랜덤 오브젝트를 하나 드랍합니다.#사용 시 소지중인 오브젝트의 효과를 발동합니다.#오브젝트에 따라서 충전량이 달라집니다.", "기초 오브젝트", "ko_kr")

EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.PLANET_BADGE, "↑ {{DamageSmall}}공격력 +0.1", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.HAUNTED_BADGE, "↑ {{DamageSmall}}공격력 +0.1", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.BABY_BADGE, "↑ {{DamageSmall}}공격력 +0.1", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.COMMISSIONED_BADGE, "↑ {{DamageSmall}}공격력 +0.1", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.DRIPPING_BADGE, "↑ {{DamageSmall}}공격력 +0.1", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.MYSTERY_BADGE, "↑ {{DamageSmall}}공격력 +0.1", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.SPATULA_BADGE, "↑ {{DamageSmall}}공격력 +0.1", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.YOUR_ETERNAL_REWARD, "↑ {{DamageSmall}}공격력 +0.1", "", "ko_kr")

EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.MARIAS_IPAD, "사용 시 캐릭터를 제외한 모든 것을 방의 아래쪽으로 밀어넣습니다.", "마리아의 iPad", "ko_kr")

EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.GREG_THE_EGG, "방 안을 돌아다니며 적의 탄환을 막아줍니다.#방 클리어 시 확률적으로 픽업을 소환합니다.#!!! 적의 탄환을 막으면 일정 확률로 달걀이 깨져 사라지며 랜덤 패밀리어 아이템을 드랍합니다.", "달걀 그레그", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.FAMILIAR_FLY, "Orbiting familiar#Can charm flies#Will explode when close to enemies for long enough", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.MONAS_HIEROGLYPHICA, "스테이지마다 랜덤한 천체관 아이템의 효과를 가집니다.", "모나스 상형 문자", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.CYANIDE_DEADLY_DOSE, "Cyanide pills can appear, which provide a risky all stats up!", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.DADS_POSTICHE, "Random chance to spawn blue skuzzes when shooting tears#Morbid hearts have a slightly higher chance to appear", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.EXCELSIOR, "Active items when used will shoot fireworks, based on the amount of item charge", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.GRIDDLED_CORN, "↑ +1 damage#+1 black heart#Drops a spicy key", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.ETERNAL_D10, "Rerolls enemies in the current room#Enemies have a chance to disappear", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.TOY_CAMERA, "Create a camera flash that destroys projectiles and stuns enemies#Grants a tears up depending how many enemies were flashed#If enough enemies are caught, spawns a Cool Photo", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.HAPPYHEAD_AXE, "주기적으로 가장 가까운 적을 향해 사거리가 짧은 도끼를 던집니다.#도끼는 던진 방향의 반대방향으로 되돌아갑니다.", "칼데아 도끼", "ko_kr") -- Chaldean axe
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.PENNY_ROLL, "Spawns a penny trinket, a golden penny and 4 random pennies", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.EVIL_STICKER, "Increases the chance for immoral hearts, cursed pennies, dire chests, spicy keys and copper bombs to spawn", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.WIMPY_BRO, "Slammer familiar that jumps on and crushes enemies", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.ROBOBABY3, "Familiar that moves diagonally in the direction you move#On contact with enemies, will fire 8 lasers around it", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.TELEBOMBS, "+5 bombs#A target follows behind you at a delay#When placing a bomb, the player teleports back to the marker, and the bomb instantly explodes", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.DEVILS_DAGGER, "공격방향으로 단검을 추가로 발사합니다.#적 처치 시 단검을 강화시킬 수 있는 보석을 드랍합니다.", "악마의 단검", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.STRANGE_RED_OBJECT, "↑ +1 red heart#↑ +0.3 damage#↑ +0.05 speed#↑ +2 luck", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.D3, "캐릭터 주위를 돌며 통과한 눈물을 다른 눈물로 바꿉니다.", "3면 주사위", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.EMOJI_GLASSES, "3개의 이모지 모양의 눈물을 번갈아 발사합니다.#이모지에 따라 다른 눈물 효과가 적용됩니다.", "이모지 안경", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.SACK_OF_SPICY, "Sack familiar that spawns spicy keys", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.DEVILS_ABACUS, "Count with your tears for an increasing damage and tears up#Counting counts as firing X amount of tears and stopping", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.DAZZLING_SLOT, "Pay 5 cents to turn an enemy into a one use Golden Slot Machine", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.INFINITY_VOLT, "Double tap to link to an enemy#Linked enemies are charmed and continually spawn lasers#After being linked for long enough, the enemy will explode", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.KALUS_HEAD, "사용 시 머리를 들며 공격하는 방향으로 보라빛 손전등을 비춥니다.#보라빛에 닿은 적은 1.1의 피해를 받으며 잠시동안 멈춥니다.#멈춘 적 처치 시 여러 갈래의 눈물을 발사합니다.", "칼루의 머리", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.HORNCOB, "Killing an enemy has a chance to take a pill", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.X10KACHING, "+10 coins", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.X10BATOOMKLING, "+10 keys", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.X10BADUMP, "+10 hearts (not containers)", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.X10BZZT, "+10 pips of charge", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.X10CHOMPCHOMP, "+10 glizzies", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.RAT_POISON, "When used in a room with a visible creator, will skip it and remove all future rooms by that person", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.ANGELIC_LYRE_B, "Can be used to change into a unique tear mode and reset tear delay#Blue mode fires 1, then 3, then 0 tears", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.ANGELIC_LYRE_R, "Can be used to change into a unique tear mode and reset tear delay#Red mode fires 4 spectral tears with a long cooldown", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.ANGELIC_LYRE_Y, "Can be used to change into a unique tear mode and reset tear delay#Yellow mode fires a chain of 10 weaker homing tears and then has a long cooldown", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.LEMON_MISHUH, "{{Collectible56}} A throwable lemon mishap", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.MIME_DEGREE, "적이 지나갈 수 없는 흰색 블럭을 소환합니다.#캐릭터가 흰색 블럭 접촉 시 해당 블럭을 랜덤 위치에 재배치합니다.", "익살스러운 학위", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.CRAZY_JACKPOT, "On hit, the player rolls for a unique effect", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.NIL_PASTA, "사용 시 랜덤 방향으로 짧은 스파게티 줄을 여러개 발사합니다.#스파게티 줄에 닿은 적은 일부 행동이 불가능해집니다.", "nil 파스타", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.CLUTCHS_CURSE, "Familiar that possesses the player occasionally#When possessed, the player can fire a homing ipecac tear#Rocks occasionally glow purple and shoot fire on destruction", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.PET_PEEVE, "방을 느리게 돌아다니며 접촉한 적에게 피해를 줍니다.#공격키를 두번 누르면 즉시 공격방향으로 돌진합니다.", "짜증나는 펫", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.MOMS_STOCKINGS, "↑ +1.5 Range up#Spawns a bunch of skuzzes", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.GOLDEN_POPSICLE, "↑ +1 soul heart#↑ +2 luck up#Spawns a golden pickup", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.TIME_ITSELF, "Has a chance to fire multi-euclidean tears#Enemies that are multi-euclidean can be shot through, doubling tears", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.EMPTY_BOOK, "사용 시 이야기를 작성합니다.#작성한 이야기에 따라 쿨타임 및 효과가 달라집니다.", "빈 공책", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.MY_STORY_2, "이야기 작성이 완료된 책입니다.#작성한 이야기에 따라 쿨타임 및 사용 효과가 달라집니다.", "나의 이야기", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.MY_STORY_4, "이야기 작성이 완료된 책입니다.#작성한 이야기에 따라 쿨타임 및 사용 효과가 달라집니다.", "나의 이야기", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.MY_STORY_6, "이야기 작성이 완료된 책입니다.#작성한 이야기에 따라 쿨타임 및 사용 효과가 달라집니다.", "나의 이야기", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.HOST_ON_TOAST, "↑ {{DamageSmall}}공격력 +0.5#↑ {{RangeSmall}}사거리 +0.38", "호스트 발린 토스트", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.BAG_OF_BOBBIES, "방 클리어 시 일정 확률로 {{Collectible8}}Fragile Bobby를 소환합니다.#{{Collectible8}} Fragile bobby는 Brother Bobby와 동일하나 5회 피격 시 사라집니다.", "보비 가방", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.BOX_TOP, "↑ {{LuckSmall}}행운 +2 Luck up#{{Card"..FiendFolio.ITEM.CARD.PUZZLE_PIECE.."}}퍼즐 조각을 드랍합니다.", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.KINDA_EGG, "↑ {{Heart}}최대 체력 +1#카드/알약/룬이 아닌 랜덤 오브젝트를 드랍합니다.", "이래뵈도 알", "ko_kr")

-- Trinkets
EID:addTrinket(TrinketType.TRINKET_SHARD_OF_CHINA, "체력이 없거나 꽉 찬 상태에서 빨간하트 습득 시 특수 체력 게이지가 채워집니다.#채워진 게이지 1칸 당 {{DamageSmal}}공격력 +1.5#게이지 완충 시 자동으로 흡수되어 공격력 증가 효과가 영구적으로 적용됩니다.#특수 체력 게이지는 {{ButtonRT}}버튼을 꾹 누르거나 빨간하트 근처에 있을 때 캐릭터 위에 표시됩니다.", "차이나의 조각", "ko_kr")
EID:addTrinket(TrinketType.TRINKET_BIFURCATED_STARS, "맵에 {{BossRoom}}보스방의 위치가 표시됩니다.#{{BossRoom}}보스방 클리어 시 보스방 출구가 {{TreasureRoom}}보물방으로 향하게 바뀝니다.", "찢어진 별", "ko_kr")
EID:addTrinket(TrinketType.TRINKET_FORTUNE_WORM, "+0.2 shot speed#+2 luck#Replaces some tears with fortune cookies which deal 1.05x dmg and display fortunes on hit#Scales with luck", "", "ko_kr")
EID:addTrinket(TrinketType.TRINKET_FOOLS_GOLD, "방 클리어 보상이 일정 확률로 저주받은 동전으로 바뀝니다.", "바보를 위한 금덩이", "ko_kr")
EID:addTrinket(TrinketType.TRINKET_EXTRA_VESSEL, "Stores an extra heart#Does not count against devil deal chance#Empty", "", "ko_kr")
EID:addTrinket(TrinketType.TRINKET_HALF_VESSEL, "Stores an extra heart#Does not count against devil deal chance#Halfway filled", "", "ko_kr")
EID:addTrinket(TrinketType.TRINKET_FULL_VESSEL, "Stores an extra heart#Does not count against devil deal chance#Full", "", "ko_kr")
EID:addTrinket(TrinketType.TRINKET_CHILI_POWDER, "Key pickups are turned into spicy keys#Spicy keys are doubled, but damage the player", "", "ko_kr")
EID:addTrinket(TrinketType.TRINKET_GMO_PENNY, "Chance to take a random pill when picking up a coin.#Scales with luck.", "", "ko_kr")
EID:addTrinket(TrinketType.TRINKET_MOLTEN_PENNY, "Chance to smelt your current trinket when picking up a coin.#Scales with luck.", "", "ko_kr")

EID:addTrinket(TrinketType.TRINKET_BLOODY_SANDPAPER, "캐릭터의 이동 관성을 제거하여 이동키를 떼면 즉시 멈춥니다.", "피 묻은 사포", "ko_kr")
EID:addTrinket(TrinketType.TRINKET_RIGHT_HAND, "{{EternalChest}} 상자가 33%의 확률로 이터널 상자로 교체됩니다.", "오른손목", "ko_kr")
EID:addTrinket(TrinketType.TRINKET_RED_RIBBON, "{{EternalHeart}} 이터널하트 반칸 픽업을 한칸 픽업으로 바꿉니다.#{{Heart}} 한칸짜리 이터널하트 획득 즉시 최대 체력 +1", "빨간 리본", "ko_kr")

EID:addTrinket(TrinketType.TRINKET_FLEA_MELTDOWN, "방 입장 시 적 적에게 {{Burning}}화상을 입히는 주황색 아군 거미를 소환합니다.", "붕괴의 벼룩", "ko_kr")
EID:addTrinket(TrinketType.TRINKET_FLEA_DELUGE, "방 입장 시 적과 접촉 시 8방향으로 눈물을 흩뿌리는 푸른색 아군 거미를 소환합니다.", "홍수의 벼룩", "ko_kr")
EID:addTrinket(TrinketType.TRINKET_FLEA_POLLUTION, "방 입장 시 적을 {{Slow}}느려지게 하는 보라색 아군 거미를 소환합니다.", "오염의 벼룩", "ko_kr")
EID:addTrinket(TrinketType.TRINKET_FLEA_PROPAGANDA, "방 입장 시 적을 {{Charm}}매혹시키는 보라색 아군 거미를 소환합니다.", "선전의 벼룩", "ko_kr")

EID:addTrinket(TrinketType.TRINKET_FUZZY_PENNY, "Creates a blue skuzz when picking up a penny.", "", "ko_kr")
EID:addTrinket(TrinketType.TRINKET_CHUNK_OF_TAR, "방 진입 시 아군 blot을 1~3마리 소환합니다.", "타르 덩이", "ko_kr")
EID:addTrinket(TrinketType.TRINKET_FORTUNE_GRUB, "↑ +1 Luck#All beggars and slot machines will display a fortune alongside their possible payouts", "", "ko_kr")
EID:addTrinket(TrinketType.TRINKET_JIGSAW_PUZZLE_BOX, "Only once, drops a Puzzle Piece on floor start#Raises the chance for Puzzle Pieces to drop", "", "ko_kr")

EID:addTrinket(TrinketType.TRINKET_YIN_YANG_ORB, "확률적으로({{LuckSmall}}) 공격력 x1.25의 강한 유도 공격이 나갑니다.", "음양 오브", "ko_kr")
EID:addTrinket(TrinketType.TRINKET_SWALLOWED_M90, "피격 시 M90을 꺼내;#다음 공격 시 공격력 x3.5의 적을 관통하는 탄속이 빠른 눈물을 발사합니다.#!!! 눈물 발사 시 캐릭터가 뒤로 밀려납니다.", "삼킨 M90", "ko_kr")
EID:addTrinket(TrinketType.TRINKET_TRINITY_WORM, "Tears move in a holy trinity-style pattern#↑ +0.4 tears up#↑ +12.5 range up#Grants spectral tears", "", "ko_kr")
EID:addTrinket(TrinketType.TRINKET_IOU, "Increases the chance of trinkets dropping after clearing a room or from a chest#If held at the end of your run, spawns a random trinket at the start of your next run", "", "ko_kr")
EID:addTrinket(TrinketType.TRINKET_AUTOPSY_KIT, "Bombed Shopkeepers will drop red hearts and rarely bone hearts instead of coins.#Heart chances increase with the quality of coins replaced.", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.TRINKET.SPIRE_GROWTH, "Grants a damage up that scales with the number of your highest held card.", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.TRINKET.FLEA_CIRCUS, "Chance to spawn a random Flea when an enemy is killed.", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.TRINKET.SHARP_PENNY, "Small chance to activate on damage effects when picking up coins.", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.TRINKET.ANGRY_FAIC, "보스 및 미니보스의 체력이 증가합니다.#보스 처치 시 하트류 픽업을 추가로 드랍합니다..", "", "ko_kr") --
EID:addTrinket(TrinketType.TRINKET_ETERNAL_CAR_BATTERY, "Active items are triggered 4-6 times, but have a 1/2 chance to disappear on use", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.TRINKET.POCKET_DICE, "Drops 2 random glass dice and a penny at the start of each floor.", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.TRINKET.LOCKED_SHACKLE, "↑ All stats up#Can't be dropped.#Picking up keys has a 25% chance to destroy the trinket and use a key.", "", "ko_kr")
EID:addTrinket(TrinketType.TRINKET_SOLEMN_VOW, "Allows the player to see enemy health.", "", "ko_kr")
EID:addTrinket(TrinketType.TRINKET_DEALMAKERS, "Randomizes shop prices.#Some shop items will have constantly shifting prices.", "", "ko_kr")
EID:addTrinket(TrinketType.TRINKET_JEVILSTAIL, "Grants a rotating list of effects for each room.", "", "ko_kr")
EID:addTrinket(TrinketType.TRINKET_PETRIFIED_GEL, "Poop grids have a chance to be converted into Shampoo#Shampoo has better drops", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.TRINKET.HATRED, "Shooting familiar that moves like a player#Can be fired as a piercing projectile by double tapping#Takes a few seconds to reform after hitting a grid#Will stand still if the drop button is held", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.TRINKET.FROG_PUPPET, "If you are about to take fatal damage:#Turn into Slippy#Add Golden Frog Head to the pocket active slot#Health bar is converted into 3 filled heart containers", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.TRINKET.TATTERED_FROG_PUPPET, "If you are about to take fatal damage:#Turn into Slippy#Add Golden Frog Head to the pocket active slot#Health bar is converted into 3 filled heart containers", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.TRINKET.CURSED_URN, "↑ Tears up#If you are about to take fatal damage:#Turn into China#Health bar is converted into China's health bar", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.TRINKET.SHATTERED_CURSED_URN, "↑ Tears up#If you have Mom's Box and are about to take fatal damage:#Turn into China#Health bar is converted into China's health bar", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.TRINKET.CONJOINED_CARD, "An additional miniboss room will generate on every floor#Excludes Blue Womb, The Void, and Home", "", "ko_kr")

EID:addTrinket(FiendFolio.ITEM.TRINKET.LOST_FLOWER_CROWN, "Once a floor, a random enemy will get erased", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.TRINKET.WACKEY, "{{Key}} 열쇠류 픽업의 드랍률이 동일하게 변경됩니다.", "왜키", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.TRINKET.HEARTACHE, "All damage taken gives a broken heart instead", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.TRINKET.REDHAND, "캐릭터/픽업/적을 잡아 강제로 이동시키는 빨간 손 2개가 방을 돌아다닙니다.", "붉은 손", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.TRINKET.MIDDLE_HAND, "High chance for chests to be replaced with dire chests", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.TRINKET.RAINBOW_BEAN, "When standing near enemies, you have a chance of expelling a random fart", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.TRINKET.FAULTY_FUSE, "구리폭탄이 등장할 확률이 증가합니다.#{{Collectible106}} 구리폭탄은 일반 폭탄보다 범위와 공격력이 더 큽니다.", "끊어진 퓨즈", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.TRINKET.ENERGY_SEARCHER, "Increased chance for energy cards to spawn#Energy cards have a chance of spawning another one on use", "", "ko_kr")

-- Golden Trinket Modifiers(If applicable)
--EID:addGoldenTrinketMetadata(TrinketType.TRINKET_SHARD_OF_CHINA, nil, {15}, 3, "ko_kr")



-- Golem Trinket datas(constants_golem.lua)


EID:addTrinket(FiendFolio.ITEM.ROCK.DIRT_CLUMP, "Can be grinded for free#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.ROLLING_ROCK, "↑ 0.05 speed up after clearing a room without taking damage, caps at 0.15#Bonus resets upon entering a room after taking damage#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.POCKET_SAND, "Does nothing#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.ROUGH_ROCK, "Guaranteed to grind into a rarer rock trinket#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.BLOODY_ROCK, "Every 4th tear fired becomes a double damage blood tear#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.SPIKED_ROCK, "Damages the player for 1/2 heart on first pickup (non-fatal)#Blocks damage from spikes and spiked chests#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.SLIPPY_ROCK, "↑ +0.15 speed#Friction down#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.ARCANE_ROCK, "Tears have a chance to become homing, scales with luck#↑ +2 damage to homing tears#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.MINERAL_ROCK, "↑ All stats up while actively pressing against rocks#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.THORNY_ROCK, "Spawn a radial shockwave when damaged#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.TIME_LOST_DIAMOND, "Use Glowing Hourglass the first time hit in a room#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.OBSIDIAN_GRINDSTONE, "↑ Damage up, tears up, boosted if holding another rock trinket#Every 30 tears, reroll the other held trinket#Extra effects do not apply to Pocket Sand#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.GODS_MARBLE, "Tears have a chance to apply the effect, scales with luck#Effect is an aura on the floor which spawns holy light when an enemy touches it#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.TWENTY_SIDED_EMERALD, "Standing still near a pickup rerolls it every 3 seconds#Any individual pickup can only be rerolled up to 3 times#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.TECHNOLOGICAL_RUBY_2, "Grants 2 laser rings at your position#The inner ring deals 10% damage#The outer ring deals 25% damage#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.LEAKY_ROCK, "You now leave a trail of stationary tears while you move#Damage scales with your damage#Frequency scales with your Max-Firedelay#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.TWIN_TUFFS, "(25 + 2.5x Luck)% chance to turn pickups into their doubled equivalent#(15 + 1.5x Luck)% chance to double room rewards#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.WETSTONE, "Periodically release friendly bubbles in uncleared rooms#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.STROMATOLITE, "Rocks may drop a half heart when broken#Tinted and Secret rocks may instead drop an additional half soul heart#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.RIBBED_ROCK, "Grants 1 bone heart on first pickup#Health upgrades grant bone hearts instead of heart containers#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.FIENDISH_AMETHYST, "On entering an uncleared room spawns four amethyst Fiend minions#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.STURDY_ROCK, "Grants 1 soul heart at the start of a floor#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.BRICK_ROCK, "Firing tears throws a 15 damage brick that drops on the floor afterwards#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.SAPPHIC_SAPPHIRE, "Charms female enemies#Occasionally fire freezing tears #!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.BLOOD_DIAMOND, "Occasionally fire tears that cause bleed#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.SCENTED_ROCK, "Charms enemies in a small radius around the player.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.ARCADE_ROCK, "(25 + 2.5x Luck)% chance for coin machines to be free.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.TINTED_HEART, "Chance to drop red hearts when taking damage.#Drops soul hearts instead with explosive damage, along with a key, bomb, or chest.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.ROSE_QUARTZ, "Taking damage grants a temporary shield that blocks projectiles.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.HAILSTONE, "Enemies close by the player are slowed, and frozen on death.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.RAMBLIN_OPAL, "Spawns friendly Shiitake Spores as time goes on, with a maximum of 3 out at a time.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.SAND_DOLLAR, "Dropping the trinket in a shop exchanges it for 10-20 cents.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.HENGE_ROCK, "Empowers every golem trinket you own by a small amount.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.SALT_LAMP, "Repels close by enemies and projectiles, but slowly drains in power over time. Can be recharged with batteries.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.MOLTEN_SLAG, "Occasionally burns nearby enemies. When grinded, smelts your other trinket.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.THUNDER_EGG, "\2 -0.1 speed#Each room has a chance for the Thunder Egg to crack open into another Rare or Fiendish rock.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.UNOBTAINIUM, "Completely unobtainable, don't even try!", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.SANDSTONE, "Chance to fire a high damage rock that inflicts Blind and shrinks over time.#Turns into Pocket Sand when taking explosive damage.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.FAKE_ROCK, "Drops a key on pickup.#If there is a locked door, the first broken rock in the room drops a key.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.CITRINE_PULP, "Small chance to fire a short ranged splash of tears.#When enemies are close, small chance to create a puddle of creep.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.BLOODSTONE, "+0.2 damage whenever an enemy dies.#+1 damage when the player takes damage.#Damage bonuses decay over time.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.EMETIC_ANTIMONY, "Periodically, gives the player Ipecac for one shot.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.DOUBLE_RUBBLE, "Grinds into two common or rare rocks.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.ROCK_FROM_AN_ABYSS, "20% chance to apply Doom to 3 enemies at the start of the room.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.HECTOR, "↑ Damage and tears up#↓ Speed down#Forcibly dropped when taking damage.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.VESSEL_ROCK, "Stores an extra heart#Does not count against devil deal chance#Breaks when taking damage while empty.#Empty#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.HALF_VESSEL_ROCK, "Stores an extra heart#Does not count against devil deal chance#Breaks when taking damage while empty.#Halfway filled#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.FULL_VESSEL_ROCK, "Stores an extra heart#Does not count against devil deal chance#Breaks when taking damage while empty.#Full#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.CONSTANT_ROCK_SHOOTER, "↑ Large tears up.#The player never stops firing.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.ROBOT_ROCK, "Grants the player spinning lasers that inflict random status effects.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.ROCK_CANDY, "Chance to fire crystal tears that charm and deal 1.5x damage.#Enemies have a small chance to drop a sugar crystal on death that heals half a heart, but fades after time.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.KEYSTONE, "Grants a minor tears and speed up for the floor whenever the player uses a key.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.SILVER_TONGUE, "The Mining Machine costs 1 less cent.#When smelted, has a 50% chance to activate.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.MEAT_SLAB, "The player constantly sweats out arced tears that have a chance to inflict Sweating.#Sweating rate increases based on how low the player's HP is in comparison to their max red hearts.#Chance to fire a tear that inflicts Sweating.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.SHEEP_ROCK, "Chance to fire a Drowsy tear that decellerates and floats in place.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.REBELLION_ROCK, "When taking damage, deals minor damage to all nearby enemies, knocks them back, and inflicts them with Bruise.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.DADS_LEGENDARY_GOLDEN_ROCK, "Always gold!#When grinding, always grants a golden rare or better rock.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.BEDROCK, "1/3 Chance for a bed to spawn at the start of every floor.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.SHEETROCK, "Heal 2 hearts at the start of each floor.#Sleeping in a bed grants 2 extra soul hearts.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.FETAL_STONE, "Grants a rock familiar that fires rock tears that have a chance to confuse.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.GRIMACE_ROCK1, "Fires tears at nearby enemies.#Also works when dropped.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.GRIMACE_ROCK2, "Fires arced explosive shots at nearby enemies.#Also works when dropped.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.GRIMACE_ROCK3, "Passively spawns small bubbles that deal damage and block shots.#Also works when dropped.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.GRIMACE_ROCK4, "Constantly fires in a random direction.#Also works when dropped.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.GRIMACE_ROCK5, "Periodically begins sucking in all nearby enemies.#Also works when dropped.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.GRIMACE_ROCK6, "Periodically fires brimstone beams in a random direction.#Also works when dropped.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.GRIMACE_ROCK7, "Constantly fires in a +, then x.#Also works when dropped.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.GRIMACE_ROCK8, "Constantly fires a rotating laser.#Also works when dropped.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.GRIMACE_ROCK9, "Periodically spawns a friendly copy of an enemy in the room#Also works when dropped.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.GRIMACE_ROCK10, "Constantly sucks in pickups.#Also works when dropped.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.GRIMACE_ROCK11, "Fires a triple shot at nearby enemies.#Also works when dropped.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.GRIMACE_ROCK12, "Walking in a set direction causes the grimace to fire in that direction.#Also works when dropped.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.FOCUS_CRYSTAL, "Increase damage to enemies within {{ColorYellow}}2.5 tiles{{CR}} by {{ColorYellow}}20%{{CR}} {{ColorGray}}(+20% per stack).{{CR}}#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.ODDLY_SMOOTH_STONE, "Start each combat with {{ColorCyan}}1{{CR}} {{ColorYellow}}Dexterity.{{CR}}#Dexterity improves life gained from hearts.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.MOONSTONE, "Grants a luck, range, tears, or shotspeed up when entering a secret room.#Bonuses only applied while holding the trinket.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.LIMESTONE, "Leave a trail of lime creep that deals 50% damage.#Permanently charms citrus related enemies.#More limes?#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.CARNAL_CARNELIAN, "Gain damage and speed depending on how close the player is to enemies.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.REBAR_ROCK, "25% chance to block red heart damage.#Red heart damage is always half a heart.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.STALACTITE, "Explosions cause rocks that deal 2x tear damage to fall from the sky randomly.#Falling rock projectiles are turned friendly.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.CAST_GEM, "Grants a homing gem that can be cast while attacking and sticks to enemies, inflicting damage and bruising#Bruised enemies take bonus damage from all sources of damage based on the number of stacks applied#Has special synergies with certain items#{{Collectible"..CollectibleType.COLLECTIBLE_NYX.."}} Same gem granted by the 'Nyx' item#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.SHARD_OF_GOLGOTHA, "Chains the highest health enemy at the start of every room.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.SMOKY_QUARTZ, "Blinds nearby enemies and grants a decaying speed boost upon taking damage.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.TWINKLING_ROCK, "Grinds into a common or rare geode.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.ROCK_CAKE, "Grinding heals half a red heart.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.CHARCOAL, "Chance to fire a very slow projectile that grows in size and damage over time.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.KNIFE_PEBBLE, "↑ +1.25 damage#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.TEARDROP_PEBBLE, "↑ +1.65 tears#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.ARROW_PEBBLE, "↑ +1.25 range, +0.2 shotspeed#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.CLOVER_PEBBLE, "↑ +3 luck#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.SHOE_PEBBLE, "↑ +0.3 speed#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.FRUITY_PEBBLE, "↑ All stats up#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.ACHILLES_ROCK, "Enemies gain a random weak point. When damaged from that direction, they take 1.5x damage.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.ELECTRUM, "Using an active item shocks all nearby enemies.#Damage scales with charge amount and player damage.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.PURE_QUARTZ, "Losing all soul hearts grants a holy mantle shield and invulnerability for a period.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.AMAZONITE, "The first pickup every floor costs 1 cent but disappears when bought.#These pickups are spawned at the start of the next floor.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.STAR_SAPPHIRE, "Grants a familiar that wobbily points towards the nearest enemy or projectile.#Blocks shots and deals contact damage.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.GRAVESTONE, "Taking damage spawns a purgatory ghost or hungry soul.#Chance for broken rocks to spawn a soul as well.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.SAND_CASTLE, "Can block 3 hits per floor before breaking into Pocket Sand.#3 hits left.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.DAMAGED_SAND_CASTLE, "Can block 3 hits per floor before breaking into Pocket Sand.#2 hits left.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.BROKEN_SAND_CASTLE, "Can block 3 hits per floor before breaking into Pocket Sand.#1 hit left.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.GUARDED_GARNET, "Chance to gain a shield on damage that lasts for a room and blocks one hit#When blocked, knocks back enemies nearby.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.SHAMROCK, "↑ +4 Luck.#When taking damage, lose 1 luck for the floor.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.GAS_POCKET, "Rocks occasionally leak gas.#When broken, rocks have a chance to spawn large clouds of gas#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.SOAP_STONE, "Clears all projectiles on room clear and when taking damage.#Spawns several bubbles upon taking damage.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.SPIRIT_URN, "Grants 3 wisps when entering a boss or miniboss room.#Grants 3 wisps when starting a challenge room.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.SUN_SHARD, "Grants a Sun planet as an orbital which have special effects when blocking shots.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.STEADFAST_STONE, "When taking lethal damage, instead crushes a trinket you're actively holding.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.RAI_STONE, "15% chance for enemies to drop a temporary penny on death.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.ORE_PENNY, "50% chance to gain an extra cent when picking up coins.#Chance to replace rocks with Fool's Gold.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.HEAVY_METAL, "↓ 0.15 Speed down.#Grants a damage up that scales off of how slow the player is.#Chance to block damage that scales with how slow the player is.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.GROSSULAR, "Periodically fire a pulse that either fears, poisons, or confuses enemies nearby.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.SULFUR_CRYSTAL, "Grants Brimstone at the start of every 4th room.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.TROLLITE, "We do a little trolling.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.THROWLOMITE, "Periodically tosses a rock at the nearest enemy in a short distance.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.HEARTHSTONE, "Activates a random positive effect when using a card.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.MAGNETIC_SAND, "↑0.45 tears up#↓0.35 damage down#Chance to fire a tear that makes enemies magnetic.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.INSATIABLE_APATITE, "Gain a temporary damage up when picking up hearts.#When full on hearts, can destroy them to gain double the damage.#Some hearts have special effects.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.POWER_ROCK, "Breaking rocks has a small chance to restore an active charge.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.TIGERS_EYE, "Spawns a Tiger's Eye familiar that bounces around the room, dealing contact damage and blocking shots.#Bounces directly towards the closest enemy.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.SMALLER_ROCK, "Bombing a tinted rock gives -0.06 speed down and +0.33 damage.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.NITRO_CRYSTAL, "Picking up pennies fuels your nitro#Your nitro gives you a speed and tears up while active#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.SHARD_OF_GOLEM, "Grants a special bar that charges by overhealing#Grants +0.45 damage for each heart filled in the bar#Once all hearts are filled both held trinkets are smelted#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.ROCK_WORM, "↑0.4 tears up#↑0.4 damage up#Grants a random worm trinket effect at the start of the floor for the duration of the floor#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.FOOLS_UNOBTAINIUM, "Supposedly unobtainable, but it's not hard to actually get.", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.MINICHIBISIDIAN, "Randomly replaces enemies with bonies of equivalent health", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.FRIENDLY_RAPID_FIRE_OPAL, "Start each room with a limited ammo assault rifle with increased tear rate, range and shotspeed", "", "ko_kr")

EID:addTrinket(FiendFolio.ITEM.ROCK.BREAKFAST_FOSSIL, "↑ +1 max health when crushed#!!! 석기 장신구 : {{ColorRed}}화석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.SACK_FOSSIL, "Chance to reroll pickups into sacks#Spawns a sack when crushed#!!! 석기 장신구 : {{ColorRed}}화석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.COPROLITE_FOSSIL, "Spawns a blue fly each new room#Spawns 12 blue flies when crushed#!!! 석기 장신구 : {{ColorRed}}화석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.BEETER_FOSSIL, "Fire a single weak tear when a tear is fired#Increments its angle each time#Spawns a friendly Beeter when crushed#!!! 석기 장신구 : {{ColorRed}}화석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.FLY_FOSSIL, "Spawns a Famine Locust each new room#Gives a Pretty Fly when crushed#!!! 석기 장신구 : {{ColorRed}}화석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.GMO_FOSSIL, "Activates 2 random pill effects after beating a boss#Activates 3 random pill effects when crushed#!!! 석기 장신구 : {{ColorRed}}화석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.SWORD_FOSSIL, "↑ All stats up#↑ Smaller permanent all stats up when crushed#!!! 석기 장신구 : {{ColorRed}}화석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.FORTUNE_WORM_FOSSIL, "Fortune Worm effect#↑ +0.2 Shotspeed, +2 Luck (From {{Trinket"..TrinketType.TRINKET_FORTUNE_WORM.."}})#Spawns an extra soul heart, and displays 3 random fortunes when crushed#!!! 석기 장신구 : {{ColorRed}}화석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.PRIMORDIAL_FOSSIL, "1/15 chance to fire a small barrage of Mysterious Liquid tears instead of a normal tear#Grants Golem's starting fossils when crushed ({{Trinket"..FiendFolio.ITEM.ROCK.DIRT_CLUMP.."}} + {{Trinket"..FiendFolio.ITEM.ROCK.ROLLING_ROCK.."}})#!!! 석기 장신구 : {{ColorRed}}화석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.REROLLIGAN_FOSSIL, "Tears have a chance to reroll enemies#Spawns glass dice when crushed#!!! 석기 장신구 : {{ColorRed}}화석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.FOSSILIZED_FOSSIL, "Other fossil's crushing effects activate twice.#Activates the effect of another held fossil when crushed#!!! 석기 장신구 : {{ColorRed}}화석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.FISH_FOSSIL, "Spawn 1-4 blue flies when damaged.#Spawns a friendly portal when crushed.#!!! 석기 장신구 : {{ColorRed}}화석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.RUNIC_FOSSIL, "Trinkets always reroll to Runes.#Using runes drops a rune shard.#Drops 4 rune shards when crushed.#!!! 석기 장신구 : {{ColorRed}}화석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.CANNED_FOSSIL, "Isaac farts when taking damage.#Spawns a friendly Charmed Litter bug when crushed.#!!! 석기 장신구 : {{ColorRed}}화석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.BALANCED_FOSSIL, "50% chance for the room clear reward to be replaced by a heart/coin/bomb/key, if you have little.#Grants 3 of your lowest pickup when crushed.#!!! 석기 장신구 : {{ColorRed}}화석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.BURIED_FOSSIL, "Each floor has a marked spot that can be bombed to spawn a fossil.#Gives a random fossil when crushed#Dirt patches can be bombed open.#!!! 석기 장신구 : {{ColorRed}}화석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.TRIPPY_FOSSIL, "Chance to fire God's Flesh tears.#Shrinks the player when crushed.#!!! 석기 장신구 : {{ColorRed}}화석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.MAXS_FOSSIL, "Howls when next to a secret room.#When crushed, the next tinted rock the player encounters is revealed.#!!! 석기 장신구 : {{ColorRed}}화석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.BOMB_SACK_FOSSIL, "The player's bombs create a ring of rock waves.#Spawns 5 bombs when crushed.#!!! 석기 장신구 : {{ColorRed}}화석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.DEATH_CAP_FOSSIL, "\2 Stacking minor stats down on each room.#↑ All stats up when crushed proportional to cleared rooms.#!!! 석기 장신구 : {{ColorRed}}화석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.EXPLOSIVE_FOSSIL, "Chance to drop an extra bomb on room clear.#Chance for rocks to be replaced with bomb rocks.#When crushed, grants the Mama Mega effect for the next 3 uncleared rooms.#!!! 석기 장신구 : {{ColorRed}}화석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.COLOSSAL_FOSSIL, "Doubles the player's tear size.#When crushed, activates 3 random fossil effects.#!!! 석기 장신구 : {{ColorRed}}화석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.SKUZZ_FOSSIL, "Spawn 2-3 fleas of Pollution at the start of rooms.#Spawns 5-7 attack skuzzes when crushed.#!!! 석기 장신구 : {{ColorRed}}화석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.FOSSILIZED_BLESSING, "↑ 0.4 tears up#Grants a random rock trinket at the start of your next run when crushed#!!! 석기 장신구 : {{ColorRed}}화석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.PETRIFIED_SOCK, "Chance to fire petrifying tears.#Grants a random baby when crushed.#!!! 석기 장신구 : {{ColorRed}}화석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.MOLTEN_FOSSIL, "Passively improves smelted geode.#Gives and smelts a random common rock when crushed.#!!! 석기 장신구 : {{ColorRed}}화석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.VALUE_FOSSIL, "Shop items are 1 cent cheaper.#Spawns 3 pennies when crushed.#!!! 석기 장신구 : {{ColorRed}}화석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.CORAL_FOSSIL, "Chance to fire in an x shape.#Heals a heart on pickup.#When crushed, spawns 3 friendly drowned chargers and heals a heart.#!!! 석기 장신구 : {{ColorRed}}화석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.NECROMANTIC_FOSSIL, "Chance to spawn a bone orbital when killing an enemy.#When crushed, grants a fossil that has been crushed this run.#!!! 석기 장신구 : {{ColorRed}}화석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.BRAIN_FOSSIL, "Grants tears homing for a short period after being fired.#Spawns a Magician card when crushed.#!!! 석기 장신구 : {{ColorRed}}화석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.REFUND_FOSSIL, "Crushing other fossils grants Pocket Sand.#Pocket Sands can be grinded for free.#Spawns 2 Pocket Sands when crushed.#!!! 석기 장신구 : {{ColorRed}}화석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.LEFT_FOSSIL, "All chests get replaced with red chests.#Spawns a red chest when crushed.#!!! 석기 장신구 : {{ColorRed}}화석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.THANK_YOU_FOSSIL, "Beggars pay out twice#Spawns a judgement card when crushed.#!!! 석기 장신구 : {{ColorRed}}화석{{CR}} 타입", "", "ko_kr")

EID:addTrinket(FiendFolio.ITEM.ROCK.CURVED_GEODE, "↑ +1 damage#↑ +0.5 extra damage if holding another Geode#!!! 석기 장신구 : {{ColorTeal}}정동석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.HAUNTED_GEODE, "Chance for spectral+piercing tears, scales with luck#Increased chance if holding another Geode#!!! 석기 장신구 : {{ColorTeal}}정동석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.HEALTH_GEODE, "When the player drops to 1 red heart or less, heals red hearts and breaks#+1 soul heart if holding another Geode#!!! 석기 장신구 : {{ColorTeal}}정동석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.LITTLE_GEODE, "Size down#Extra size down if holding another Geode#!!! 석기 장신구 : {{ColorTeal}}정동석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.QUICK_GEODE, "↑ Boosts speed to 1.75 in cleared rooms#+0.10 speed up if holding another Geode#!!! 석기 장신구 : {{ColorTeal}}정동석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.WEBBY_GEODE, "(20 + 2x Luck) % chance to fire a slowing tear#Slowing tears leave large puddles of white creep if they hit an enemy you're holding another Geode#!!! 석기 장신구 : {{ColorTeal}}정동석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.LUCKY_GEODE, "↑ +3 Luck#↑ Bonus +2 Luck if holding another Geode#!!! 석기 장신구 : {{ColorTeal}}정동석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.PHLEGMY_GEODE, "(10 + Luck) % chance to fire a booger tear#Booger tears gain slowing if holding another geode#!!! 석기 장신구 : {{ColorTeal}}정동석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.LOB_GEODE, "↑ +6 range#↑ +3 extra range if holding another Geode#Tears are now shot in an arc#!!! 석기 장신구 : {{ColorTeal}}정동석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.SODALITE_GEODE, "Luck-affected chance to shoot crit tears that deal quintuple damage#!!! 석기 장신구 : {{ColorTeal}}정동석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.PLACEBEODE, "Permanent geode bonus when smelted#!!! 석기 장신구 : {{ColorTeal}}정동석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.WARM_GEODE, "↑ Damage and Shotspeed up when near a fire#If holding another Geode, tears also inflict burn when standing near a fire#Warm floors give a passive stat buff.!!! 석기 장신구 : {{ColorTeal}}정동석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.CHAIN_GEODE, "Broken Rocks have a 40% chance to break nearby rocks#Nearby rocks have a 70% chance to break, along with a 20% chance for pits to fill#!!! 석기 장신구 : {{ColorTeal}}정동석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.RUSTY_GEODE, "↑ +6 Damage that decays over time#If holding another Geode, decays at a slower rate#!!! 석기 장신구 : {{ColorTeal}}정동석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.FRAGMENTED_ONYX_GEODE, "10% chance to inflict fear.#If holding another Geode, increases to 15% chance and feared enemies take extra damage equal to the Devil Deal chance.#!!! 석기 장신구 : {{ColorTeal}}정동석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.QUANTUM_GEODE, "Fire in a triple shot.#Once a tear hits an enemy, the rest vanish.#If holding another geode, the tears vanish once two land.#!!! 석기 장신구 : {{ColorTeal}}정동석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.TECHNOLOGICAL_GEODE, "Fire a short ranged technology 2 beam that deals 30% damage.#If holding another geode, fire 2 parallel beams instead.#!!! 석기 장신구 : {{ColorTeal}}정동석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.RUBBER_GEODE, "Chance to fire bouncing tennis balls that inflict bruise and deal knockback.#If holding another geode, higher chance to fire as well as more knockback and shot speed.#!!! 석기 장신구 : {{ColorTeal}}정동석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.CALZONE_GEODE, "Chance to fire a chubber shot that inflicts Baited and boomerangs back.#!!! 석기 장신구 : {{ColorTeal}}정동석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.TOUGH_GEODE, "Chance to not destroy a rock upon crushing.#With another held geode, increases chances.#!!! 석기 장신구 : {{ColorTeal}}정동석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.TIPSY_GEODE, "Grants a damage up and the player's movement slowly shifts about randomly.#With another geode, increases damage and movement.#!!! 석기 장신구 : {{ColorTeal}}정동석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.VINYL_GEODE_A, "Increases damage and shotspeed.#Flips to the B Side on the first floor of the chapter which increases tears and speed.#With another geode, grants a minor tears and speed up.#!!! 석기 장신구 : {{ColorTeal}}정동석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.VINYL_GEODE_B, "Increases tears and speed.#Flips to the A Side on second floor of the chapter which increases damage and shotspeed.#With another geode, grants a minor damage and shotspeed up.#!!! 석기 장신구 : {{ColorTeal}}정동석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.PRISMATIC_GEODE, "Chance for enemies to drop Prism Shards on death that boost a random stat for 10 seconds.#Chance to drop an extra shard on room clear.#Shard duration is increased by 5 seconds and doubled in potency if holding another geode.#!!! 석기 장신구 : {{ColorTeal}}정동석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.FRACTAL_GEODE, "Chance to fire a spiralling shot that inflicts Drowsy.#With another held geode, higher odds and shot has a chance to immediately inflict sleep.#!!! 석기 장신구 : {{ColorTeal}}정동석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.GMO_GEODE, "Taking a pill will also take a second random pill.#Also take an additional positive pill if holding two geodes.#!!! 석기 장신구 : {{ColorTeal}}정동석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.SWALLOWED_GEODE, "Spawn a penny when damaged.#When holding another geode, gain a chance to spawn a doubled penny.#!!! 석기 장신구 : {{ColorTeal}}정동석{{CR}} 타입", "", "ko_kr")

EID:addTrinket(FiendFolio.ITEM.ROCK.GEODE_FOSSIL, "↑ +8 range#↑ +5 extra range if holding another Geode#Gives a common or rare Geode trinket when crushed#Gives an additional common or rare Geode trinket when crushed, if holding another Geode#!!! 석기 장신구 : {{ColorTeal}}정동석{{CR}}+{{ColorRed}}화석{{CR}} 타입", "", "ko_kr")

-- Golden Trinket Metadata for Golem
EID:addGoldenTrinketMetadata(FiendFolio.ITEM.ROCK.BRICK_ROCK, nil, {15}, 3, "ko_kr")




-- Descriptions missing:
--[[ 
FiendFolio.ITEM.TRINKET.MASSIVE_AMETHYST -- Massive Amethyst



 ]]

