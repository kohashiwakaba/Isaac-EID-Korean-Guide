

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

EID.InlineIcons["FFCursedPennyTint"] = function(_)
  EID._NextIconModifier = function(sprite)
    sprite.Color = Color(1, 1, 1, EID.Config["Transparency"] * 0.5, 0.5, 0, 0.8)
  end
  return {"Blank", 0, 0, 0}
end
EID.InlineIcons["FFCopperBombTint"] = function(_)
  EID._NextIconModifier = function(sprite)
    sprite.Color = Color(1, 1, 1, EID.Config["Transparency"] * 0.3, 0.2, 0.5, 0)
  end
  return {"Blank", 0, 0, 0}
end
EID.InlineIcons["FFSpicyKeyTint"] = function(_)
  EID._NextIconModifier = function(sprite)
    sprite.Color = Color(1, 1, 1, EID.Config["Transparency"] * 0.5, 0.5, 0, 0)
  end
  return {"Blank", 0, 0, 0}
end
EID.InlineIcons["FFImmoralHeartTint"] = function(_)
  EID._NextIconModifier = function(sprite)
    sprite.Color = Color(1, 1, 1, EID.Config["Transparency"] * 0.5, 0.5, 0.2, 0.7)
  end
  return {"Blank", 0, 0, 0}
end
EID.InlineIcons["FFMorbidHeartTint"] = function(_)
  EID._NextIconModifier = function(sprite)
    sprite.Color = Color(1, 1, 1, EID.Config["Transparency"] * 0.15, 0.25, 0.25, 0.25)
  end
  return {"Blank", 0, 0, 0}
end


-- Birthright
EID:addBirthright(FiendFolio.PLAYER.FIEND, "Fiend의 파이어볼이 적에게 유도되며;#발사 시 지나간 자리에 불길을 남기며;#폭파 시 적 처치 여부와 관계없이 33%의 확률로 Fiend의 부하를 추가로 소환합니다.#Fiend의 파이어볼로 적 처치 시 {{FFImmoralHeartTint}}{{SoulHeart}}이모럴하트 등장 확률이 증가합니다.", "Fiend", "ko_kr")
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
EID:addCard(FiendFolio.ITEM.CARD.ENERGY_COLORLESS, "방 안의 모든 적이 4초간 {{BleedingOut}}대출혈에 걸립니다.#대출혈 상태의 적은 주기적으로 피해를 받고 붉은 장판을 깔며 랜덤 방향으로 핏방울을 흩뿌립니다.", "무속성 에너지", "ko_kr")
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
EID:addCard(FiendFolio.ITEM.CARD.BRICK_SEPERATOR, "{{Collectible631}} 사용 시 방 안의 모든 적을 0.4배의 체력을 가진 적 2마리로 나누며;#그 방에서 공격이 적을 관통합니다.", "브릭분해기", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.PUZZLE_PIECE, "운세 퍼즐을 1/3만큼 기록합니다.#!!! 운세 퍼즐이 완성되면 해당 운세에 맞는 아이템을 소환합니다.", "퍼즐 조각", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.COOL_PHOTO, "{{Coin}}동전 1~2개를 소환합니다.", "멋진 사진", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.BLANK_LETTER_TILE, "사용 후 키 입력 시 그 스테이지에서 입력한 키를 키캡에 작성합니다.#작성된 키캡의 키를 누르고 있는 동안:#↑ {{DamageSmall}}공격력 +1#↑ {{TearsSmall}}연사 +1", "빈 키캡", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.HORSE_PUSHPOP, "!!! China 전용#사용 시 {{BrokenHeart}}부서진하트 -1", "말 푸시팝", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.TOP_HAT, "열린 상점 상자를 소환합니다.", "탑모자", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.GIFT_CARD, "방 안의 모든 아이템을 {{Collectible515}}Mystery Gift로 바꿉니다.", "선물 카드", "ko_kr")

EID:addCard(FiendFolio.ITEM.CARD.TREASURE_DISC, "1분간 3~5개의 {{TreasureRoom}}보물방 배열 패시브 아이템의 효과를 받습니다.", "보믈방 체험판 디스크", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.SHOP_DISC, "1분간 3~5개의 {{Shop}}상점({{Trinket184}}:패밀리어) 배열 패시브 아이템의 효과를 받습니다.", "상점 체험판 디스크", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.BOSS_DISC, "1분간 3~5개의 {{BossRoom}}보스방 배열 패시브 아이템의 효과를 받습니다.", "보스방 체험판 디스크", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.SECRET_DISC, "1분간 3~5개의 {{SecretRoom}}비밀방 배열 패시브 아이템의 효과를 받습니다.", "비밀방 체험판 디스크", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.DEVIL_DISC, "1분간 3~5개의 {{DevilRoom}}악마방 배열 패시브 아이템의 효과를 받습니다.", "악마방 체험판 디스크", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.ANGEL_DISC, "1분간 3~5개의 {{AngelRoom}}천사방 배열 패시브 아이템의 효과를 받습니다.", "천사방 체험판 디스크", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.PLANETARIUM_DISC, "1분간 3~5개의 {{Planetarium}}천체관 배열 패시브 아이템의 효과를 받습니다.", "천체관 체험판 디스크", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.CHAOS_DISC, "1분간 3~5개의 {{Collectible402}}랜덤 배열 패시브 아이템의 효과를 받습니다.", "혼돈의 체험판 디스크", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.BROKEN_DISC, "1분간 3~5개의 {{Collectible347}}동일한 랜덤 패시브 아이템의 효과를 받습니다.", "망가진 체험판 디스크", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.TAINTED_TREASURE_DISC, "1분간 3~5개의 {{TreasureRoom}}더럽혀진 보물방 배열 패시브 아이템의 효과를 받습니다.", "더럽혀진 보믈방 체험판 디스크", "ko_kr")


EID:addCard(FiendFolio.ITEM.CARD.THREE_OF_CLUBS, "{{Bomb}} 랜덤 폭탄 픽업을 3개 소환합니다.#소환될 수 있는 폭탄의 종류는 각각 동일한 확률을 가집니다.", "클로버 3", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.THREE_OF_DIAMONDS, "{{Coin}} 랜덤 동전 픽업을 3개 소환합니다.#소환될 수 있는 동전의 종류는 각각 동일한 확률을 가집니다.", "다이아 3", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.THREE_OF_SPADES, "{{Key}} 랜덤 열쇠 픽업을 3개 소환합니다.#소환될 수 있는 열쇠의 종류는 각각 동일한 확률을 가집니다.", "스페이드 3", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.THREE_OF_HEARTS, "{{Heart}} 랜덤 하트 픽업을 3개 소환합니다.#소환될 수 있는 하트의 종류는 각각 동일한 확률을 가집니다.", "하트 3", "ko_kr")

EID:addCard(FiendFolio.ITEM.CARD.JACK_OF_DIAMONDS, "{{FFCursedPennyTint}}{{Coin}}저주받은 동전 2~4개를 소환합니다.#그 방의 모든 동전 픽업을 {{FFCursedPennyTint}}{{Coin}}저주받은 동전으로 바꿉니다.", "다이아 J", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.MISPRINTED_JACK_OF_CLUBS, "황금 트롤폭탄을 소환합니다.#그 방의 모든 폭탄 픽업을 트롤폭탄으로 바꿉니다.", "클로버 J?", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.JACK_OF_CLUBS, "{{FFCopperBombTint}}{{Bomb}}구리폭탄 2~3개를 소환합니다.#그 방의 모든 폭탄 픽업을 {{FFCopperBombTint}}{{Bomb}}구리폭탄으로 바꿉니다.", "클로버 J", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.JACK_OF_SPADES, "{{FFSpicyKeyTint}}{{Key}}매운열쇠 2~3개를 소환합니다.#그 방의 모든 열쇠 픽업을 {{FFSpicyKeyTint}}{{Key}}매운열쇠로 바꿉니다.", "스페이드 J", "ko_kr")
EID:addCard(FiendFolio.ITEM.CARD.JACK_OF_HEARTS, "소지 중인 모든 소울하트/블랙하트를 {{FFImmoralHeartTint}}{{SoulHeart}}이모럴하트로 바꿉니다.#소지 중인 {{SoulHeart}}/{{BlackHeart}}가 없을 경우 {{FFImmoralHeartTint}}{{SoulHeart}}이모럴하트 하나를 드랍합니다.#{{FFImmoralHeartTint}}{{SoulHeart}}이모럴하트 소지 상태에서 피격 시 모든 {{FFImmoralHeartTint}}{{SoulHeart}}가 Fiend의 부하로 바뀌며 방 클리어 시 바뀐 부하는 다시 {{FFImmoralHeartTint}}{{SoulHeart}} 픽업으로 돌아옵니다.", "하트 J", "ko_kr")

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
EID:addPill(FiendFolio.ITEM.PILL.MELATONIN, "방 안의 적을 나른한 상태로 만듭니다.#나른한 적은 서서히 둔화되며 서서히 잠듭니다.#잠든 적은 움직이지 않으며 맞추면 2배의 피해를 받으나 잠듦/나른한 상태가 해제됩니다.", "멜라토닌", "ko_kr")
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
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.STORE_WHISTLE, "사용 시 미니 상점 상자를 소환합니다.#미니 상점은 열 때 {{Key}}열쇠를 하나 소모하며 열 때 3~5개의 상점 품목을 판매합니다.", "상점 호루라기", "ko_kr")

EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.DICE_BAG, "방 8개({{Collectible247}}:3개) 클리어 시 유리 주사위 조각을 드랍합니다.#유리 주사위 조각은 각 주사위를 일회성으로 사용할 수 있습니다.#Glass D4 및 Glass D100 사용 시 Dice Bag도 보존됩니다.", "주사위 가방", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.LIL_FIEND, "대각선으로 이동하며 적 및 탄환과 접촉 시 일정 확률로 Fiend의 부하를 소환합니다.#Lil Fiend로 소환된 Fiend의 부하는 방 클리어 시 사라지며 블랙하트를 드랍하지 않습니다.#{{Collectible247}}BFFs 소지 시 접촉 판정 크기 및 부하 소환 확률 증가", "리틀 핀드", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.BABY_CRATER, "공격하는 동안 크레이터 주변을 도는 눈물을 최대 8개까지 모으며;#공격키를 떼면 모은 눈물을 발사합니다.#Womb 스테이지의 핏덩이 오브젝트 파괴 시 낮은 확률로 소환됩니다.", "크레이터 아기", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.MAMA_SPOOTER, "적을 추적하며 주기적으로 적을 향해 눈물을 발사합니다.", "미스 스푸터", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.RANDY_THE_SNAIL, "방 안을 느리게 돌아다니며 캐릭터 및 캐릭터의 눈물과 접촉 시 껍질에 숨으면서 굴러갑니다.#굴러가는 도중 캐릭터/눈물 및 적과 계속 접촉하여 연속적으로 굴릴 수 있습니다.#{{Collectible247}}BFFs 소지 시 접촉 판정 크기 및 피해량 증가", "달팽이 랜디", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.CORN_KERNEL, "획득할 때마다 성장합니다.#1/2단계: 캐릭터의 주위를 돌며 적의 탄환을 막아줍니다.#2/4단계: 공격하는 방향으로 공격력 3.5의 {{ColorOrange}}폭발성{{CR}} 눈물을 발사합니다.#3/4단계: 방 안을 돌아다니며 주기적으로 랜덤 위치로 순간이동합니다.#4단계: 적을 따라다니며 접촉한 적에게 3.5의 피해를 줍니다.", "옥수수 알갱이", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.GRABBER, "캐릭터의 반대로 움직이며 캐릭터가 있는 방향으로 손을 움직입니다.#잡는 손에 닿은 적에게 5의 피해를 줍니다.", "욕심쟁이", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.PEACH_CREEP, "벽을 따라 움직이며 적과 일렬로 맞추고 공격력 2의 눈물을 4발 연속으로 발사합니다.", "피치 크리프", "ko_kr")

EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.GMO_CORN, "↑ {{Heart}}최대 체력 +1#↑ {{DamageSmall}}공격력 +1#{{Pill}} 획득 시 강제로 랜덤 알약을 7개({{Collectible252}}:10개) 사용합니다.", "유전자 변형 옥수수", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.COOL_SUNGLASSES, "↑ {{Coin}}동전 +6#{{SpeedSmall}} 동전과 가까울수록 이동속도가 빨라집니다.#{{Coin}} 동전 획득 시 방 전체에게 피해를 줍니다.#!!! 방 진입 시 소지 중인 동전 3개를 강제로 랜덤 위치에 뿌립니다.", "멋진 선글라스", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.FIENDS_HORN, "적 처치 시 5%의 확률로 Fiend의 부하를 소환합니다.#!!! {{LuckSmall}}행운 수치 비례: 행운 14 이상일 때 20% 확률#소지한 {{FFImmoralHeartTint}}{{SoulHeart}}이모럴하트에 비례하여 소환 확률이 추가로 증가합니다.#Fiend의 부하는 방 클리어 시 소멸합니다.", "핀드의 뿔", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.RISKS_REWARD, "!!! 스테이지 당 1회만 사용 가능:#사용 시 방 안의 아이템을 특수한 이공간으로 빨아들이며 더 높은 등급의 아이템으로 바꿉니다.#검은 포탈을 통해 특수한 이공간으로 이동할 수 있으며 이공간에서 Hermit 처치 시 바뀐 아이템을 획득할 수 있습니다.", "위험에 따른 보상", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.SPARE_RIBS, "↑ {{EmptyBoneHeart}}뼈하트 +1#피격 시 일정 확률로 뼛조각 여러개를 발사합니다.#뼛조각은 발사 후 캐릭터에게 되돌아오며 적 및 탄환을 막아줍니다.", "여분의 뼛조각", "ko_kr")

EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.BACON_GREASE, "↑ {{EmptyHeart}}빈 최대 체력 +1#↓ {{Heart}}빨간하트 -1#↑ {{ShotspeedSmall}}탄속 +0.15", "베이컨 지방", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.NUGGET_BOMBS, "↑ {{Bomb}}폭탄 +5#{{Collectible504}} 폭탄이 터진 자리에 주위의 적에게 공격력 3.5의 눈물을 발사하는 파란 파리를 설치합니다.", "너겟 폭탄", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.DEVILS_UMBRELLA, "때때로 적에게 피해를 주는 노란 장판을 까는 작은 눈물을 여러 개 흩뿌립니다.#{{LuckSmall}}행운이 높을수록 노란 눈물의 주기가 짧아집니다.", "악마의 우산", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.BEE_SKIN, "눈물을 발사할 때마다 3방향으로 공격력 x0.3의 눈물을 발사합니다.#3방향 눈물은 시계방향으로 서서히 돌아가면서 발사됩니다.", "꿀벌의 몸통", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.ALPHA_COIN, "사용 시 각각 발동:#25% 의 확률로 {{Coin}}동전을 드랍합니다.#25%의 확률로 {{Card}}카드/{{Pill}}알약을 드랍합니다.#현재 방 및 스테이지 진행 상태에 따라 다른 효과를 발동합니다.", "알파 코인", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.DADS_WALLET, "획득 시 {{Card43}}Credit Card를 드랍합니다.#소지 중인 동전이 부족해도 상점 아이템을 구매할 수 있습니다.#부족한 금액 당 {{DamageSmall}}공격력이 감소합니다.", "아빠의 지갑", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.FROG_HEAD, "사용 버튼을 누르고 있는 동안 캐릭터를 멈추게 합니다.#멈춘 시간에 비례하여 적을 밀어내는 방귀를 뀝니다.", "황금 개구리 머리", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.BEGINNERS_LUCK, "↑ {{LuckSmall}}행운 +5#↓ -0.5 스테이지 진행 당 {{LuckSmall}}행운 -0.5(최소 1)", "초심자의 행운", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.DICHROMATIC_BUTTERFLY, "피격 판정 크기가 줄어들며 피격 판정의 범위가 표시됩니다.#탄환을 가까스로 피할 시 그 방에서 {{DamageSmall}}공격력 +0.2(최대 +3)#일정 확률로 공격력 x1.25의 강한 유도 공격이 나갑니다.", "색이 다른 나비", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.BIRTHDAY_GIFT, "{{Collectible515}} 모든 아이템이 Mystery Gift로 등장합니다.#바뀐 아이템 및 고정 드랍은 Mystery Gift로 변경되지 않습니다.", "생일 선물", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.IMP_SODA, "확률적으로({{LuckSmall}}) 치명타 피해를 주는 공격을 발사합니다.#치명타는 적에게 공격력 x5의 피해를 줍니다.", "도깨비 소다", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.SLIPPYS_GUTS, "적 처치 시 최대 체력에 비례한 확률로 작은 구름을 생성합니다.#폭탄이 터지면 그 자리에 작은 구름을 생성합니다.#{{Poison}} 작은 구름은 닿은 적을 중독시킵니다.", "슬리피의 내장", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.SLIPPYS_HEART, "적에게 가까이 있으면 확률적으로({{LuckSmall}}) 적을 밀쳐내는 랜덤 방귀를 뀝니다.", "슬리피의 심장", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.COMMUNITY_ACHIEVEMENT, "↑ {{DamageSmall}}공격력 +?#{{DamageSmall}}공격력 증가량은 Fiend Folio 디스코드 Counting 계열 채널의 기록에 비례합니다.", "커뮤니티 업적", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.CHIRUMIRU, "↑ {{SoulHeart}}소울하트 +1#↑ {{DamageSmall}}공격력 +0.9#방 입장 시 모든 적을 0.9초간 석화시킵니다.", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.GOLEMS_ORB, "↑ {{SoulHeart}}소울하트 +2#↑ {{SpeedSmall}}이동속도 +0.2#↑ {{ShotspeedSmall}}탄속 +0.23#↑ {{LuckSmall}}행운 +1", "골렘의 오브", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.GOLEMS_ROCK, "획득 시 석기 장신구를 소환합니다.#사용 시 현재 소지 중인 장신구를 빻아 석기 장신구를 소환합니다.#석기 장신구는 일반적으로 등장하지 않으며 Golem 캐릭터 플레이 시에만 등장하는 특수 장신구입니다.", "골렘의 맷돌", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.LEFTOVER_TAKEOUT, "↑ {{Heart}}최대 체력 +1#↑ {{DamageSmall}}공격력 배율 x1.5#↑ {{TearsSmall}}공격 딜레이 x0.9#↑ {{RangeSmall}}사거리 +1.5#↑ {{SpeedSmall}}이동속도 +0.3#↑ {{LuckSmall}}행운 +1#확률적으로({{LuckSmall}}) 적에게 명중 시 운세를 보여주는 공격력 x1.05의 포춘쿠키를 발사합니다.", "먹다 남은 배달 음식", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.CLEAR_CASE, "!!!획득과 동시에 카드/알약 슬롯에 배치됨#소지한 상태에서 다음 액티브 아이템 획득 시 해당 액티브 아이템이 카드/알약 슬롯에 배치됩니다.", "투명 케이스", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.MODERN_OUROBOROS, "공격이 무언가에 부딪힐 때 기름 장판이 생기며 #캐릭터/불이 기름 장판에 닿으면 불이 붙습니다.#캐릭터는 이 불에 피해를 받지 않습니다.", "현대 우로보로스", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.BLACK_LANTERN, "↑ {{BlackHeart}}블랙하트 +1#{{CurseCursedSmall}} 항상 저주에 걸리며 기존의 저주가 아닌 새로운 형태의 저주가 걸립니다.", "검은 랜턴", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.CRUCIFIX, "적 처치 시 5초동안 행동불능이 되며 오라를 소환합니다.#오라 안에 있을 시 {{DamageSmall}}공격력/{{TearsSmall}}연사가 증가하며 공격이 적에게 유도됩니다.", "십자가", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.BEDTIME_STORY, "사용 시 방 안의 적을 나른한 상태로 만듭니다.#나른한 적은 서서히 둔화되며 서서히 잠듭니다.#잠든 적은 움직이지 않으며 맞추면 2배의 피해를 받으나 잠듦/나른한 상태가 해제됩니다.", "자장가", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.PINHEAD, "확률적으로({{LuckSmall}}) 적을 귀속시키는 재봉틀 눈물을 발사합니다.#귀속된 적이 피해를 받을 시 다른 귀속된 적이 같이 피해를 받습니다.", "묶인 단추", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.PRANK_COOKIE, "공격할 때마다 확률적으로 랜덤한 상태이상 효과 공격이 나갑니다.#(대출혈/멍듦/나른함/귀속/치명타 등)", "장난꾸러기 쿠키", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.DEVILS_HARVEST, "↑ 목숨 +1#사망 시 Fiend 캐릭터로 부활합니다.", "악마의 수확", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.RUBBER_BULLETS, "확률적으로({{LuckSmall}}) 적을 멍들게 하는 총알을 발사합니다.#멍든 적은 해당 상태 중첩 수만큼 추가 피해를 받습니다.", "고무 총알", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.THE_DELUXE, "↑ {{BoneHeart}}뼈하트 +1#↑ {{FFMorbidHeartTint}}{{RottenHeart}}병든하트 +1#↑ 황금하트 +1#↑ {{EternalHeart}}이터널하트 +1", "디럭스 세트", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.LIL_MINX, "적에게 돌진하여 접촉한 적에게 3.5의 피해를 줍니다.#공격키를 두번 누르면 가장 가까운 적에게 빙의하여 폭주 상태로 만듭니다.#빙의 중인 적이 있을 때 다시 공격키를 두번 누르면 여러 개의 눈물을 흩뿌리며 빠져나옵니다.#폭주 상태의 적은 공격 목표를 수시로 바꾸고 추가 피해를 받으나 더 빠르게 행동합니다.", "리틀 밍스", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.PURPLE_PUTTY, "사용 시 {{FFImmoralHeartTint}}{{SoulHeart}}이모럴하트 +1#{{FFImmoralHeartTint}}{{SoulHeart}}이모럴하트 소지 상태에서 피격 시 모든 {{FFImmoralHeartTint}}{{SoulHeart}}가 Fiend의 부하로 바뀌며 방 클리어 시 바뀐 부하는 다시 {{FFImmoralHeartTint}}{{SoulHeart}} 픽업으로 돌아옵니다.", "보라색 퍼티", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.FETAL_FIEND, "↑ {{DamageSmall}}공격력 배율 x1.5#모든 소울/블랙하트를 {{FFImmoralHeartTint}}{{SoulHeart}}이모럴하트로 바꿉니다.#모든 빨간하트를 제거하며 50%만큼 {{FFImmoralHeartTint}}{{SoulHeart}}이모럴하트를 획득합니다.#{{FFImmoralHeartTint}}{{SoulHeart}}이모럴하트 소지 상태에서 피격 시 모든 {{FFImmoralHeartTint}}{{SoulHeart}}가 Fiend의 부하로 바뀌며 방 클리어 시 바뀐 부하는 다시 {{FFImmoralHeartTint}}{{SoulHeart}} 픽업으로 돌아옵니다.", "핀드의 꽃잎", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.FIEND_MIX, "사용 시 현재 체력의 절반을 Fiend의 부하로 바꿉니다.", "핀드 믹스", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.SECRET_STASH, "획득 시 {{Coin}}동전, {{Key}}열쇠, {{Bomb}}폭탄, {{Card}}카드/{{Pill}}알약/{{Rune}}룬을 하나씩 드랍합니다.#다음 게임에서 이전 게임에 소지했던 {{Coin}}동전, {{Key}}열쇠, {{Bomb}}폭탄의 10%(반내림, 최대 5) 및 {{Card}}카드/{{Pill}}알약/{{Rune}}룬을 소환합니다.", "숨겨진 보관함", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.SANGUINE_HOOK, "사용 시 공격하는 방향으로 적 및 픽업을 끌고 오는 후크를 던집니다.#후크에 묶인 적은 멍든 상태가 되어 추가 피해를 받습니다.#묶인 적이 있는 상태에서 재사용 시 해당 적을 놓으며 대출혈 상태로 만들어 눈물을 흩뿌리게 만듭니다.", "핏빛 후크", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.GORGON, "방 중앙에 가만히 있으며 랜덤 적을 향해 주시합니다.#고르곤의 시야에 닿은 적을 석화시킵니다.", "고르곤", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.FIDDLE_CUBE, "리듬에 맞춰 반복적으로 사용 시#↑ {{DamageSmall}}공격력 배율 x1.5#↑ {{TearsSmall}}연사 +1#잠시 동안 사용하지 않을 시 증가한 {{DamageSmall}}공격력 및 {{TearsSmall}}연사가 서서히 감소합니다.", "바이올린 큐브", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.AVGM, "여러 번 사용 시 동전을 하나 드랍합니다.#동전을 드랍할 때마다 다음 동전 드랍에 필요한 사용 횟수가 증가합니다.", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.DEIMOS, "공격하는 방향으로 적 및 픽업을 끌고 오는 후크를 던집니다.#후크에 묶인 적은 멍든 상태가 되어 추가 피해를 받습니다.#묶인 적이 있는 상태에서 공격키를 떼면 해당 적을 놓으며 대출혈 상태로 만들어 눈물을 흩뿌리게 만듭니다.", "데이모스", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.PET_ROCK, "가만히 있으며 탄환을 막아줍니다.#캐릭터가 밀쳐낼 수 있으며 구덩이에 떨어트리면 해당 구덩이를 메울 수 있습니다(방 당 1회)", "돌멩이 펫", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.CONTRABAND, "!!! 소지하지 않은 상태에서는 특정 몬스터가 해당 아이템을 훔칠 수 있습니다!#해당 카드를 검은 모자의 거지에게 배달 시 특수 배열의 아이템을 소환합니다.", "밀매품", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.ETERNAL_D12, "!!! 사용할 때마다 형태를 바꿉니다:#사용 시 방 안의 모든 장애물을 바꿉니다.#현재 형태의 충전량이 높을수록 장애물이 사라질 확률이 감소합니다.", "이터널 D12", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.ETERNAL_D12_ALT, "!!! 사용할 때마다 형태를 바꿉니다:#사용 시 방 안의 모든 장애물을 바꿉니다.#현재 형태의 충전량이 높을수록 장애물이 사라질 확률이 감소합니다.", "이터널 D12", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.GLIZZY, "↑ {{HalfHeart}}절반 채워진 최대 체력 +1#↑ {{SpeedSmall}}이동속도 +0.1#↑ {{TearsSmall}}연사 +0.1#↑ {{DamageSmall}}공격력 +0.1#↑ {{RangeSmall}}사거리 +0.1#↑ {{ShotspeedSmall}}탄속 +0.1#↑ {{LuckSmall}}행운 +0.1", "글리지 소시지", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.FIEND_HEART, "↑ {{FFImmoralHeartTint}}{{SoulHeart}}이모럴하트 +3#{{FFImmoralHeartTint}}{{SoulHeart}}이모럴하트 소지 상태에서 피격 시 모든 {{FFImmoralHeartTint}}{{SoulHeart}}가 Fiend의 부하로 바뀌며 방 클리어 시 바뀐 부하는 다시 {{FFImmoralHeartTint}}{{SoulHeart}} 픽업으로 돌아옵니다.", "핀드의 심장", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.DEVILLED_EGG, "↑ {{FFImmoralHeartTint}}{{SoulHeart}}이모럴하트 +2#↑ {{TearsSmall}}연사 +0.3#{{FFImmoralHeartTint}}{{SoulHeart}}이모럴하트 소지 상태에서 피격 시 모든 {{FFImmoralHeartTint}}{{SoulHeart}}가 Fiend의 부하로 바뀌며 방 클리어 시 바뀐 부하는 다시 {{FFImmoralHeartTint}}{{SoulHeart}} 픽업으로 돌아옵니다.", "악마화된 알", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.TEA, "↑ {{Heart}}최대 체력 +1#↑ {{Heart}}빨간하트 +1", "녹차", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.OPHIUCHUS, "방 안을 돌아다니며 적을 향해 이동합니다.#{{Poison}} 적과 접촉 시 캐릭터의 공격력 x0.2의 피해를 주며 1초간 공격력 x4({{BossRoom}}:x2)의 피해를 줍니다.#중독되지 않은 적을 우선적으로 추적합니다.", "뱀주인자리", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.FRAUDULENT_FUNGUS, "↑ {{RottenHeart}}썩은하트 +1#↑ {{SpeedSmall}}이동속도 +0.2#↑ {{DamageSmall}}공격력 +0.3#↑ {{RangeSmall}}사거리 +0.38", "썩은 버섯", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.SMALL_PIPE, "↑ {{DamageSmall}}공격력 +0.2#↑ {{TearsSmall}}연사 +0.2#↑ {{ShotspeedSmall}}탄속 +0.2#↑ {{SpeedSmall}}이동속도 +0.2", "작은 파이프", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.SMALL_WOOD, "↑ {{TearsSmall}}연사 +1#↑ {{DamageSmall}}공격력 +0.2#↓ {{ShotspeedSmall}}탄속 -0.2", "작은 나무판", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.WHITE_PEPPER, "사용 시 5방향으로 캐릭터의 공격력 x1의 푸른 지속 불꽃을 날립니다.", "하얀 페퍼", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.PEPPERMINT, "{{Freezing}}공격 시 확률적으로 처치 시 적을 얼리는 불꽃을 날립니다.", "페퍼민트", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.PAGE_OF_VIRTUES, "획득 시 랜덤 불꽃을 소환합니다.#이 불꽃이 꺼지면 새로운 랜덤 불꽃을 소환합니다.", "미덕의 페이지", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.BRIDGE_BOMBS, "↑ {{Bomb}}폭탄 +5#폭탄이 터질 때 주변의 구덩이를 메웁니다.", "징검다리 폭탄", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.LAWN_DARTS, "확률적으로({{LuckSmall}}) 적에게 대출혈을 거는 공격이 나갑니다.#대출혈 상태의 적은 주기적으로 피해를 받고 붉은 장판을 깔며 랜덤 방향으로 핏방울을 흩뿌립니다.", "잔디 다트", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.TOY_PIANO, "확률적으로({{LuckSmall}}) 적에게 심판을 거는 공격이 나갑니다.#심판 상태의 적은 명중 시마다 카운트가 감소하며;#카운트가 0이 될 때 추가 피해를 주며 심판 상태를 제거합니다.", "장난감 피아노", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.HYPNO_RING, "확률적으로({{LuckSmall}}) 적에게 나른한 상태로 만드는 공격이 나갑니다.#나른한 적은 서서히 둔화되며 서서히 잠듭니다.#잠든 적은 움직이지 않으며 맞추면 2배의 피해를 받으나 잠듦/나른한 상태가 해제됩니다.", "최면 링", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.MUSCA, "↑ {{Bomb}}폭탄 +3#폭탄이 터질 때 랜덤 자폭 파리 3마리가 나옵니다.#적 처치 시 확률적으로({{LuckSmall}}) 랜덤 자폭 파리가 나옵니다.", "파리자리", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.MODEL_ROCKET, "↑ {{ShotspeedSmall}}탄속 배율 x2#↑ {{RangeSmall}}사거리 +1.5#눈물이 멈춘 상태에서 발사되며 탄속이 서서히 증가합니다.#눈물의 탄속에 비례하여 적에게 추가 피해를 줍니다.", "로켓 모형", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.SIBLING_SYL, "공격하는 방향으로 공격력 4.75의 눈물을 발사합니다.", "실", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.WRONG_WARP, "!!! 사용 시 랜덤 스테이지로 순간이동합니다.", "엉뚱한 워프", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.THE_BROWN_HORN, "사용 시 방 안의 적 및 dip 패밀리어가 설사하게 만듭니다.#설사하는 동안 설사포를 발사해 캐릭터의 반대방향으로 밀어내고 아군 dip 패밀리어를 소환합니다.", "똥을 부르는 나팔", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.NYX, "공격 시 적을 향해 날아가는 유도 보석을 3개 획득합니다.#유도 보석이 적과 접촉 시 적에게 피해를 주며 멍들게 합니다.#멍든 적은 해당 상태 중첩 수만큼 추가 피해를 받습니다.#일부 아이템과의 추가 시너지 존재", "닉스", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.SNOW_GLOBE, "사용 시 모든 오브젝트의 위치를 가까운 위치로 날립니다.", "스노 글로브", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.ETERNAL_CLICKER, "사용 시 가장 최근에 획득한 패시브 아이템을 제거하고 캐릭터를 랜덤하게 바꾸며;#!!! {{ColorRed}}50%의 확률로 캐릭터가 사라집니다.", "이터널 클리커", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.DICE_GOBLIN, "획득 시 랜덤 오브젝트 픽업을 3개 드랍합니다.#스테이지 진입 시 랜덤 오브젝트 픽업을 하나 드랍합니다.", "주사위 고블린", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.CHERRY_BOMB, "사용 시 잠시 후 폭발하는 작은 폭탄을 듭니다.#작은 폭탄은 장애물을 부술 수 없고 폭발 크기가 작으나 캐릭터에게 피해를 주지 않습니다.", "체리 폭탄", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.ASTROPULVIS, "사용 시 가장 가까운 장애물을 파괴하여 거대한 붉은 귀신으로 만듭니다.#붉은 귀신이 있는 상태에서 재사용 시 붉은 귀신이 폭파되며 주변의 적에게 피해를 줍니다.", "아스트로풀비스", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.SPINDLE, "획득 시 디스크를 3장 드랍합니다.#디스크류 픽업은 사용 시 랜덤 아이템의 효과를 1분간 부여합니다.#{{BossRoom}}보스방 진입 시 디스크류 아이템 하나를 드랍합니다.", "스핀들", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.AZURITE_SPINDOWN, "사용 시 방 안의 모든 장신구를 코드 앞번호의 장신구로 바꿉니다.", "아주라이트 스핀다운", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.KING_WORM, "사용 시 그 방에서 랜덤 벌레 장신구 효과를 얻습니다.", "벌레 왕", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.HEART_OF_CHINA, "체력이 없거나 꽉 찬 상태에서 빨간하트 습득 시 특수 체력 게이지가 채워집니다.#특수 체력 게이지 완충 시 {{EmptyHeart}}빈 최대 체력 +1 증가#특수 체력 게이지의 총량은 현재 소지 중인 최대 체력에 비례하며;#{{ButtonRT}}버튼을 꾹 누르거나 빨간하트 근처에 있을 때 캐릭터 위에 표시됩니다.", "차이나의 심장", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.HORSE_PASTE, "!!! China 전용#사용 시 {{BrokenHeart}}부서진하트 -1", "말 접착제", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.DADS_DIP, "↑ {{Heart}}병든 최대 체력 +1", "아빠의 디핑소스", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.YICK_HEART, "사용 시 {{FFMorbidHeartTint}}{{RottenHeart}}병든하트 +1", "조용한 하트", "ko_kr")

EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.LIL_LAMB, "{{Chargeable}} 공격키를 1초 이상 누르면 충전되며 공격키를 떼면 {{Collectible149}}공격력 25의 폭발성 구토제를 발사합니다.#캐릭터가 이 폭발로 피해를 받을 시 몸통과 머리가 분리되며 분리된 몸통 근처의 적을 향해 자동으로 공격합니다.", "리틀 램", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.GRAPPLING_HOOK, "사용 시 공격방향으로 후크를 던지며 공격키를 떼면 후크의 위치로 이동합니다.#구덩이와 장애물을 넘어갈 수 있으며 후크에서 떼도 장애물 위에 착지할 수 있습니다.#!!! 후크 해제 시 구덩이에 떨어지면 체력 반칸의 피해를 받습니다.", "그래플링 후크", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.CETUS, "피격 시 2초간 푸른 장판을 까는 눈물을 흩뿌립니다.", "고래자리", "ko_kr")
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

-- 뱃지 : The Gauntlet 챌린지에서만 존재
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.SPATULA_BADGE, "↑ {{DamageSmall}}공격력 +0.1", "주걱 배지", "ko_kr") -- Griddle Horn의 보스 방에서 White Pepper 사용
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.COMMISSIONED_BADGE, "↑ {{DamageSmall}}공격력 +0.1", "분해된 배지", "ko_kr") -- Buster 보스 사망 모션 도중 Defuse 카드 사용
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.MYSTERY_BADGE, "↑ {{DamageSmall}}공격력 +0.1", "미스테리 배지", "ko_kr") -- Buck 보스를 Bag of Crafting으로 막타 처치

EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.BABY_BADGE, "↑ {{DamageSmall}}공격력 +0.1", "아기 배지", "ko_kr") -- Battie 보스 방에서 Fiend Folio 사용
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.DRIPPING_BADGE, "↑ {{DamageSmall}}공격력 +0.1", "드립 배지", "ko_kr") -- Monsoon 보스가 분할된 상태에서 Flush 사용

EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.HAUNTED_BADGE, "↑ {{DamageSmall}}공격력 +0.1", "유령 배지", "ko_kr") -- Organization 보스를 Power Pill 알약을 먹은 상태로 접촉

EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.PLANET_BADGE, "↑ {{DamageSmall}}공격력 +0.1", "행성 배지", "ko_kr") -- The Sun 보스를 Chaos Card로 처치

EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.YOUR_ETERNAL_REWARD, "↑ {{DamageSmall}}공격력 +0.1", "배지 완성 보상", "ko_kr")

EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.MARIAS_IPAD, "사용 시 캐릭터를 제외한 모든 것을 방의 아래쪽으로 밀어넣습니다.", "마리아의 iPad", "ko_kr")

EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.GREG_THE_EGG, "방 안을 돌아다니며 적의 탄환을 막아줍니다.#방 클리어 시 확률적으로 픽업을 소환합니다.#!!! 적의 탄환을 막으면 일정 확률로 달걀이 깨져 사라지며 랜덤 패밀리어 아이템을 드랍합니다.", "달걀 그레그", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.FAMILIAR_FLY, "캐릭터의 주변을 돌며 적과 접촉 시 2의 피해를 줍니다.#{{Charm}} 주변의 파리류 적에 매혹을 겁니다.#적과 오랫동안 접촉 시 폭발하며 8방향으로 눈물을 발사하며 적에게 매혹을 겁니다.", "뭔가 익숙한 그 파리", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.MONAS_HIEROGLYPHICA, "스테이지마다 랜덤한 천체관 아이템의 효과를 가집니다.", "모나스 상형 문자", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.CYANIDE_DEADLY_DOSE, "{{Pill}} 획득 시 Cyanide 알약을 드랍합니다.#{{Pill}} 해당 게임에서 Cyanide 알약이 등장할 수 있습니다.#!!! Cyanide 알약은 모든 능력치가 증가하나 사용 후 다른 알약을 사용하지 않으면 1분 후 사망합니다.", "과다투약", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.DADS_POSTICHE, "공격 시 확률적으로 아군 자폭 벼룩을 소환합니다.#{{FFMorbidHeartTint}}{{RottenHeart}}병든하트 소지 시 소환 확률 증가", "아빠의 가발", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.EXCELSIOR, "액티브 아이템 사용 시 유도성 로켓을 여러 발 발사합니다.#유도성 로켓의 발사 수량과 공격력은 사용한 액티브 아이템의 최대 충전량에 비례합니다.", "더 높이!", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.GRIDDLED_CORN, "↑ {{BlackHeart}}블랙하트 +1#↑ {{DamageSmall}}공격력 +1#{{FFSpicyKeyTint}}{{Key}}매운열쇠를 드랍합니다.", "옥수수 철판구이", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.ETERNAL_D10, "사용 시 방 안의 모든 적을 바꾸며 낮은 확률로 적이 사라집니다.", "이터널 D10", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.TOY_CAMERA, "사용 후 공격하는 방향으로 사진을 촬영합니다.#캐릭터 촬영 시 {{TearsSmall}}빠르게 감소하는 연사가 대폭 증가합니다.#촬영 범위에 있는 적에게 혼란을 걸며 탄환을 없앱니다.#한번에 적을 4마리 이상 촬영 시 "..FiendFolio.ITEM.CARD.COOL_PHOTO.."Cool Photo를 드랍합니다.(방당 1회)", "장난감 카메라", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.HAPPYHEAD_AXE, "주기적으로 가장 가까운 적을 향해 사거리가 짧은 도끼를 던집니다.#도끼는 던진 방향의 반대방향으로 되돌아갑니다.", "칼데아 도끼", "ko_kr") -- Chaldean axe
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.PENNY_ROLL, "{{Coin}} 획득 시 페니류 장신구, 황금동전, 랜덤 동전 4개를 드랍합니다.", "페니 롤", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.EVIL_STICKER, "{{FFImmoralHeartTint}}{{SoulHeart}}이모럴하트, {{FFCursedPennyTint}}{{Coin}}저주받은 동전, 장난꾸러기 상자, {{FFSpicyKeyTint}}{{Key}}매운열쇠, {{FFCopperBombTint}}{{Bomb}}구리폭탄의 등장 확률이 증가합니다.", "악마 스티커", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.WIMPY_BRO, "적을 향해 짧은 거리를 도약하며 착지한 위치의 적에게 5의 피해를 줍니다.", "겁쟁이 동생", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.ROBOBABY3, "캐릭터 이동방향의 사선으로 움직이며 적과 접촉 시 8방향으로 공격력 3.5의 레이저를 발사합니다.", "로보 아기 3.0", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.TELEBOMBS, "↑ {{Bomb}}폭탄 +5#타겟이 캐릭터가 지나간 길을 0.66초 후 따라갑니다.#타겟 위치 밖에서 폭탄 설치 시 캐릭터를 타겟의 위치로 순간이동하며 설치한 폭탄은 즉시 폭발합니다.#!!! 캐릭터가 설치한 폭탄에 면역을 갖지 않습니다.", "텔레폭탄", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.DEVILS_DAGGER, "공격방향으로 단검을 추가로 발사합니다.#적 처치 시 단검을 강화시킬 수 있는 보석을 드랍합니다.", "악마의 단검", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.STRANGE_RED_OBJECT, "↑ {{Heart}}최대 체력 +1#↑ {{DamageSmall}}공격력 +0.3#↑ {{SpeedSmall}}이동속도 +0.05#↑ {{LuckSmall}}행운 +2", "수상한 빨간 물체", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.D3, "캐릭터 주위를 돌며 통과한 눈물을 다른 눈물로 바꿉니다.", "3면 주사위", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.EMOJI_GLASSES, "3개의 이모지 모양의 눈물을 번갈아 발사합니다.#이모지에 따라 다른 눈물 효과가 적용됩니다.", "이모지 안경", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.SACK_OF_SPICY, "방 7개 클리어 시 {{FFSpicyKeyTint}}{{Key}}매운열쇠를 드랍합니다.", "매운 자루", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.DEVILS_ABACUS, "1개부터 시작하며 숫자의 개수만큼 눈물을 발사한 수만큼 발사 후 공격키를 떼면 {{DamageSmall}}공격력과 {{TearsSmall}}연사가 증가합니다.#단계가 증가할 때마다 발사해야 되는 눈물의 수가 하나씩 증가합니다.#공격키를 뗄 때 눈물의 개수가 맞지 않으면 증가량이 초기화됩니다.", "악마의 주판", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.DAZZLING_SLOT, "{{Coin}}동전 5개를 소모하여 랜덤 적 하나를 황금 슬롯머신으로 바꿉니다.#바뀐 슬롯머신은 확률적으로 보상을 드랍하고 사라집니다.", "빛나는 슬롯머신", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.INFINITY_VOLT, "공격키를 두번 눌러 적에게 콘센트를 꼽습니다.#콘센트에 꽃힌 적은 매혹 상태에 걸리며 레이저를 발산하며 오랫동안 꽂고 있으면 적이 폭발합니다.", "무한 볼트", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.KALUS_HEAD, "사용 시 머리를 들며 공격하는 방향으로 보라빛 손전등을 비춥니다.#보라빛에 닿은 적은 1.1의 피해를 받으며 잠시동안 멈춥니다.#멈춘 적 처치 시 여러 갈래의 눈물을 발사합니다.", "칼루의 머리", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.HORNCOB, "{{Pill}} 적 처치 시 일정 확률로 랜덤 알약을 강제로 사용합니다.", "뿔 달린 옥수수", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.X10KACHING, "↑ {{Coin}}동전 +10", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.X10BATOOMKLING, "↑ {{Key}}열쇠 +10", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.X10BADUMP, "↑ {{Heart}}빨간하트 +10(최대 체력 없음)", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.X10BZZT, "↑ {{Batery}}액티브 아이템 충전량 +10", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.X10CHOMPCHOMP, "↑ {{Heart}}최대 체력 +5#↑ {{EmptyHeart}}빈 최대 체력 +5#↑ {{SpeedSmall}}이동속도 +1#↑ {{TearsSmall}}연사 +1#↑ {{DamageSmall}}공격력 +1#↑ {{RangeSmall}}사거리 +1#↑ {{ShotspeedSmall}}탄속 +1#↑ {{LuckSmall}}행운 +1", "", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.RAT_POISON, "특정 방 제작자가 명시되어 있는 방에서 사용 시 해당 게임에서 그 방 제작자가 제작한 모든 방에 있는 존재를 지웁니다.#방 제작자는 UI 하단에서 확인할 수 있습니다.", "쥐약", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.ANGELIC_LYRE_B, "소지 시 리라의 색상에 따라 다른 효과의 눈물을 발사합니다.#사용 시 리라의 현재 색상을 바꿉니다.#{{ColorBlue}}파랑{{CR}}: #{{Blank}} {{SpeedSmall}}+0.2/{{TearsSmall}}+0.8/{{LuckSmall}}+3#{{Blank}} {{ShotspeedSmall}}-0.2#눈물을 1발 > 3발 > 0발을 번갈아가며 발사합니다.", "천국의 리라", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.ANGELIC_LYRE_R, "소지 시 리라의 색상에 따라 다른 효과의 눈물을 발사합니다.#사용 시 리라의 현재 색상을 바꿉니다.#{{ColorRed}}빨강{{CR}}: #{{Blank}} {{DamageSmall}}x2#{{Blank}} {{TearsSmall}}x0.2#공격이 4발로 나가며 지형을 관통합니다.", "천국의 리라", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.ANGELIC_LYRE_Y, "소지 시 리라의 색상에 따라 다른 효과의 눈물을 발사합니다.#사용 시 리라의 현재 색상을 바꿉니다.#{{ColorYellow}}노랑{{CR}}: #{{Blank}} {{TearsSmall}}x4.5/{{RangeSmall}}+3#{{Blank}} {{DamageSmall}}x0.2 #유도 눈물을 10발 연속 발사하며 이후 잠시동안 공격을 멈춥니다.#연사가 높을수록 공격을 멈추는 시간이 짧아집니다.", "천국의 리라", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.LEMON_MISHUH, "{{Collectible56}} 사용 후 공격방향으로 레몬을 투척합니다.#투척한 자리에 노란 장판이 생성되며 장판에 닿은 적은 초당 24의 피해를 입습니다.", "레몬빛 실수?", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.MIME_DEGREE, "적이 지나갈 수 없는 흰색 블럭을 소환합니다.#캐릭터가 흰색 블럭 접촉 시 해당 블럭을 랜덤 위치에 재배치합니다.", "익살스러운 학위", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.CRAZY_JACKPOT, "피격 시 확률적으로 아래 효과 중 하나를 발동합니다:#{{Coin}} 동전 1~2개#{{Heart}} 잠시 후 사라지는 하트#그 방에서 {{DamageSmall}}공격력/{{TearsSmall}}연사/{{LuckSmall}}행운 증가#주변의 적에게 캐릭터의 공격력 x5만큼 피해#{{Collectible56}} 노란 장판 생성", "크레이지 잭팟", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.NIL_PASTA, "사용 시 랜덤 방향으로 짧은 스파게티 줄을 여러개 발사합니다.#스파게티 줄에 닿은 적은 일부 행동이 불가능해집니다.", "nil 파스타", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.CLUTCHS_CURSE, "주기적으로 캐릭터에게 빙의합니다.#캐릭터에게 빙의했을 때 다음 공격이 {{Collectible149}}유도성 폭발 공격으로 바꿉니다.#방 입장 시 일부 돌덩이가 보라빛으로 빛나며 보랏빛 돌 파괴 시 십자 모양으로 불길을 내뿜습니다.#!!! 불길은 캐릭터에게도 피해를 줍니다.", "클러치의 저주", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.PET_PEEVE, "방을 느리게 돌아다니며 접촉한 적에게 피해를 줍니다.#공격키를 두번 누르면 즉시 공격방향으로 돌진합니다.", "짜증나는 펫", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.MOMS_STOCKINGS, "↑ {{RangeSmall}}사거리 +1.5#아군 자폭 벼룩을 0~6마리 소환합니다.", "엄마의 스타킹", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.GOLDEN_POPSICLE, "↑ {{SoulHeart}}소울하트 +1#↑ {{LuckSmall}}행운 +2#황금 픽업 아이템 하나를 드랍합니다.", "황금 아이스크림", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.TIME_ITSELF, "확률적으로 적에게 다중 유클리드를 거는 공격이 나갑니다.#공격이 다중 유클리드 상태의 적을 통과할 수 있으며 2개로 복제되어 나갑니다.", "시간 그 자체", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.EMPTY_BOOK, "사용 시 이야기를 작성합니다.#작성한 이야기에 따라 쿨타임 및 효과가 달라집니다.", "빈 공책", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.MY_STORY_2, "이야기 작성이 완료된 책입니다.#작성한 이야기에 따라 쿨타임 및 사용 효과가 달라집니다.", "나의 이야기", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.MY_STORY_4, "이야기 작성이 완료된 책입니다.#작성한 이야기에 따라 쿨타임 및 사용 효과가 달라집니다.", "나의 이야기", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.MY_STORY_6, "이야기 작성이 완료된 책입니다.#작성한 이야기에 따라 쿨타임 및 사용 효과가 달라집니다.", "나의 이야기", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.HOST_ON_TOAST, "↑ {{DamageSmall}}공격력 +0.5#↑ {{RangeSmall}}사거리 +0.38", "호스트 발린 토스트", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.BAG_OF_BOBBIES, "방 클리어 시 일정 확률로 {{Collectible8}}Fragile Bobby를 소환합니다.#{{Collectible8}} Fragile bobby는 Brother Bobby와 동일하나 5회 피격 시 사라집니다.", "보비 가방", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.BOX_TOP, "↑ {{LuckSmall}}행운 +2#{{Card"..FiendFolio.ITEM.CARD.PUZZLE_PIECE.."}}퍼즐 조각을 드랍합니다.", "박스 탑", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.KINDA_EGG, "↑ {{Heart}}최대 체력 +1#카드/알약/룬이 아닌 랜덤 오브젝트를 드랍합니다.", "이래뵈도 알", "ko_kr")

-- Trinkets
EID:addTrinket(TrinketType.TRINKET_SHARD_OF_CHINA, "체력이 없거나 꽉 찬 상태에서 빨간하트 습득 시 특수 체력 게이지가 채워집니다.#채워진 게이지 1칸 당 {{DamageSmal}}공격력 +1.5#게이지 완충 시 자동으로 흡수되어 공격력 증가 효과가 영구적으로 적용됩니다.#특수 체력 게이지는 {{ButtonRT}}버튼을 꾹 누르거나 빨간하트 근처에 있을 때 캐릭터 위에 표시됩니다.", "차이나의 조각", "ko_kr")
EID:addTrinket(TrinketType.TRINKET_BIFURCATED_STARS, "맵에 {{BossRoom}}보스방의 위치가 표시됩니다.#{{BossRoom}}보스방 클리어 시 보스방 출구가 {{TreasureRoom}}보물방으로 향하게 바뀝니다.", "찢어진 별", "ko_kr")
EID:addTrinket(TrinketType.TRINKET_FORTUNE_WORM, "↑ {{ShotspeedSmall}}탄속 +0.2#↑ {{LuckSmall}}행운 +2#확률적으로({{LuckSmall}}) 적에게 명중 시 운세를 보여주는 공격력 x1.05의 포춘쿠키를 발사합니다.", "운세 지렁이", "ko_kr")
EID:addTrinket(TrinketType.TRINKET_FOOLS_GOLD, "방 클리어 보상이 일정 확률로 {{FFCursedPennyTint}}{{Coin}}저주받은 동전으로 바뀝니다.", "바보를 위한 금덩이", "ko_kr")
EID:addTrinket(TrinketType.TRINKET_EXTRA_VESSEL, "소지 시 임시 체력의 역할을 합니다.#체력 거래에 사용할 수 없습니다.#{{EmptyHeart}} 현재 비어 있음", "추가 그릇", "ko_kr")
EID:addTrinket(TrinketType.TRINKET_HALF_VESSEL, "소지 시 임시 체력의 역할을 합니다.#체력 거래에 사용할 수 없습니다.#{{HalfHeart}} 현재 반칸 채워짐", "추가 그릇", "ko_kr")
EID:addTrinket(TrinketType.TRINKET_FULL_VESSEL, "소지 시 임시 체력의 역할을 합니다.#체력 거래에 사용할 수 없습니다.#{{FullHeart}} 현재 한칸 채워짐", "추가 그릇", "ko_kr")
EID:addTrinket(TrinketType.TRINKET_CHILI_POWDER, "모든 열쇠를 {{FFSpicyKeyTint}}{{Key}}매운열쇠로 바꿉니다.#{{FFSpicyKeyTint}}{{Key}}매운열쇠는 기존 열쇠의 개수에 하나를 추가하나 획득 시 체력 반칸의 피해를 줍니다.", "칠리 파우더", "ko_kr")
EID:addTrinket(TrinketType.TRINKET_GMO_PENNY, "동전을 주울 시 확률적으로({{LuckSmall}}) 랜덤 알약을 강제로 사용합니다.", "GMO 페니", "ko_kr")
EID:addTrinket(TrinketType.TRINKET_MOLTEN_PENNY, "동전을 주울 시 확률적으로({{LuckSmall}}) 현재 소지 중인 장신구를 흡수합니다.", "녹아내리는 페니", "ko_kr")

EID:addTrinket(TrinketType.TRINKET_BLOODY_SANDPAPER, "캐릭터의 이동 관성을 제거하여 이동키를 떼면 즉시 멈춥니다.", "피 묻은 사포", "ko_kr")
EID:addTrinket(TrinketType.TRINKET_RIGHT_HAND, "{{EternalChest}} 상자가 33%의 확률로 이터널 상자로 교체됩니다.", "오른손목", "ko_kr")
EID:addTrinket(TrinketType.TRINKET_RED_RIBBON, "{{EternalHeart}} 이터널하트 반칸 픽업을 한칸 픽업으로 바꿉니다.#{{Heart}} 한칸짜리 이터널하트 획득 즉시 최대 체력 +1", "빨간 리본", "ko_kr")

EID:addTrinket(TrinketType.TRINKET_FLEA_MELTDOWN, "방 입장 시 적 적에게 {{Burning}}화상을 입히는 주황색 아군 벼룩을 소환합니다.", "붕괴의 벼룩", "ko_kr")
EID:addTrinket(TrinketType.TRINKET_FLEA_DELUGE, "방 입장 시 적과 접촉 시 8방향으로 눈물을 흩뿌리는 푸른색 아군 벼룩을 소환합니다.", "홍수의 벼룩", "ko_kr")
EID:addTrinket(TrinketType.TRINKET_FLEA_POLLUTION, "방 입장 시 적을 {{Slow}}느려지게 하는 보라색 아군 벼룩을 소환합니다.", "오염의 벼룩", "ko_kr")
EID:addTrinket(TrinketType.TRINKET_FLEA_PROPAGANDA, "방 입장 시 적을 {{Charm}}매혹시키는 보라색 아군 벼룩을 소환합니다.", "선전의 벼룩", "ko_kr")

EID:addTrinket(TrinketType.TRINKET_FUZZY_PENNY, "동전을 주울 시 아군 자폭 벼룩을 소환합니다.", "털 많은 페니", "ko_kr")
EID:addTrinket(TrinketType.TRINKET_CHUNK_OF_TAR, "방 진입 시 아군 blot을 1~3마리 소환합니다.", "타르 덩이", "ko_kr")
EID:addTrinket(TrinketType.TRINKET_FORTUNE_GRUB, "↑ {{LuckSmall}}행운 +1#거지 및 슬롯머신이 보답을 내놓을 시 운세를 같이 표시합니다.", "운세 애벌레", "ko_kr")
EID:addTrinket(TrinketType.TRINKET_JIGSAW_PUZZLE_BOX, "스테이지 진입 시 {{Card"..FiendFolio.ITEM.CARD.PUZZLE_PIECE.."}}퍼즐 조각을 소환합니다.(일회용)#{{Card"..FiendFolio.ITEM.CARD.PUZZLE_PIECE.."}}퍼즐 조각이 등장할 확률이 증가합니다.", "직소 퍼즐 상자", "ko_kr")

EID:addTrinket(TrinketType.TRINKET_YIN_YANG_ORB, "확률적으로({{LuckSmall}}) 공격력 x1.25의 강한 유도 공격이 나갑니다.", "음양 오브", "ko_kr")
EID:addTrinket(TrinketType.TRINKET_SWALLOWED_M90, "피격 시 M90을 꺼내;#다음 공격 시 공격력 x3.5의 적을 관통하는 탄속이 빠른 눈물을 발사합니다.#!!! 눈물 발사 시 캐릭터가 뒤로 밀려납니다.", "삼킨 M90", "ko_kr")
EID:addTrinket(TrinketType.TRINKET_TRINITY_WORM, "↑ {{TearsSmall}}연사 +0.4#↑ {{RangeSmall}}사거리 +12.5#눈물이 트리케트라 모양으로({{Collectible333}}) 날아갑니다.#공격이 장애물을 관통합니다.", "트리니티 벌레", "ko_kr")
EID:addTrinket(TrinketType.TRINKET_IOU, "방 클리어 보상 및 상자에서 장신구가 드랍될 확률이 증가합니다.#게임 종료(게임오버/엔딩) 시점에서 이 장신구 소지 시 다음 게임 시작 시 랜덤 장신구를 하나 소환합니다.", "", "ko_kr")
EID:addTrinket(TrinketType.TRINKET_AUTOPSY_KIT, "상점 주인 처치 시 동전 대신 {{Heart}}빨간하트 및 낮은 확률로 {{EmptyBoneHeart}}뼈하트를 드랍합니다.#원래 동전의 등급이 높을수록 뼈하트의 드랍률이 증가합니다..", "포렌식 키트", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.TRINKET.SPIRE_GROWTH, "타로 타입 카드 사용 시 사용한 카드 번호의 숫자에 비례하여 {{DamageSmall}}공격력이 증가합니다.", "스파이어 성장", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.TRINKET.FLEA_CIRCUS, "적 처치 시 확률적으로 랜덤 벼룩을 소환합니다..", "벼룩 서커스", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.TRINKET.SHARP_PENNY, "동전을 주울 시 확률적으로 피격 시 효과를 발동합니다.", "뾰족한 페니", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.TRINKET.ANGRY_FAIC, "보스 및 미니보스의 체력이 증가합니다.#보스 처치 시 하트류 픽업을 추가로 드랍합니다..", "", "ko_kr") 
EID:addTrinket(TrinketType.TRINKET_ETERNAL_CAR_BATTERY, "액티브 아이템 사용 시 효과가 4~6번 발동되지만 50%의 확률로 장신구가 사라집니다.", "이터널 자동차 건전지", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.TRINKET.POCKET_DICE, "스테이지 진입 시 랜덤 유리 주사위 조각 2개와 동전을 하나 드랍합니다.", "주사위 주머니", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.TRINKET.LOCKED_SHACKLE, "!!! 교체불가#↑ {{DamageSmall}}공격력 +1#↑ {{TearsSmall}}연사 +0.35#↑ {{RangeSmall}}사거리 +1#↑ {{ShotspeedSmall}}탄속 +0.16#↑ {{LuckSmall}}행운 +1#열쇠를 주울 시 열쇠를 강제로 소모하고 장신구를 파괴합니다.", "잠겨있는 족쇄", "ko_kr")
EID:addTrinket(TrinketType.TRINKET_SOLEMN_VOW, "{{Collectible403}} 적의 체력과 적에게 주는 피해량이 수치로 표시됩니다.", "굳건한 맹세", "ko_kr")
EID:addTrinket(TrinketType.TRINKET_DEALMAKERS, "방 입장시마다 {{Shop}}모든 판매 아이템의 가격이 바뀝니다.#일부 품목은 빠른 속도로 가격이 계속 바뀝니다.", "딜메이커", "ko_kr")
EID:addTrinket(TrinketType.TRINKET_JEVILSTAIL, "방 입장시마다 정해진 순서대로 특정 효과를 발동합니다.", "제빌의 꼬리", "ko_kr")
EID:addTrinket(TrinketType.TRINKET_PETRIFIED_GEL, "일반 똥이 확률적으로 샴푸로 대체됩니다.#샴푸 파괴 시 랜덤 픽업을 드랍합니다.", "굳은 젤", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.TRINKET.HATRED, "캐릭터와 같이 이동하며 공격하는 방향으로 캐릭터의 공격과 같은 공격을 발사합니다.#공격키를 두번 누르면 장애물에 부딪힐 때까지 돌진하며 접촉한 적에게 피해를 주고 돌진한 자리에 적을 느려지게 하는 장판을 생성합니다.#돌진 후 장애물에 부딪히면 사라지며 일정 시간 이후 다시 생성됩니다.", "혐오", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.TRINKET.FROG_PUPPET, "!!! 일회용#사망 시 즉시 Slippy(3{{Heart}})로 부활하며 {{Collectible"..FiendFolio.ITEM.COLLECTIBLE.FROG_HEAD.."}}Golden Frog Head가 카드/알약 슬롯에 배정됩니다.#Slippy는 이동키를 떼도 멈출 수 없습니다.", "개구리 인형", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.TRINKET.TATTERED_FROG_PUPPET, "!!! 일회용#사망 시 즉시 Slippy(3{{Heart}})로 부활하며 {{Collectible"..FiendFolio.ITEM.COLLECTIBLE.FROG_HEAD.."}}Golden Frog Head가 카드/알약 슬롯에 배정됩니다.#Slippy는 이동키를 떼도 멈출 수 없습니다.", "찢어진 개구리 인형", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.TRINKET.CURSED_URN, "!!! 일회용#↑ {{TearsSmall}}연사 증가#사망 시 즉시 China로 부활합니다.#China는 체력이 없으며 피격 시 {{BrokenHeart}}부서진하트 하나가 추가됩니다.", "저주받은 항아리", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.TRINKET.SHATTERED_CURSED_URN, "!!! 일회용#↑ {{TearsSmall}}연사 증가#{{Collectible439}} Mom's Box 소지 상태에서 사망 시 즉시 China로 부활합니다.#China는 체력이 없으며 피격 시 {{BrokenHeart}}부서진하트 하나가 추가됩니다.", "깨진 항아리", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.TRINKET.CONJOINED_CARD, "스테이지 진입 시 미니보스방을 추가로 생성합니다.#!!! Blue Womb, The Void, Home 스테이지는 무효과", "쌍둥이 카드", "ko_kr")

EID:addTrinket(FiendFolio.ITEM.TRINKET.LOST_FLOWER_CROWN, "스테이지 당 1회 한정으로 랜덤 적 하나가 해당 게임에서 제거되어 다시 등장하지 않습니다.", "잊혀진 꽃 왕관", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.TRINKET.WACKEY, "{{Key}} 열쇠류 픽업의 드랍률이 동일하게 변경됩니다.", "왜키", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.TRINKET.HEARTACHE, "피격 시 그 피격을 무효화하고 {{BrokenHeart}}소지 불가능 체력 +1", "심장통", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.TRINKET.REDHAND, "캐릭터/픽업/적을 잡아 강제로 이동시키는 빨간 손 2개가 방을 돌아다닙니다.", "붉은 손", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.TRINKET.MIDDLE_HAND, "상자가 높은 확률로 장난꾸러기 상자로 교체됩니다.", "가운데손목", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.TRINKET.RAINBOW_BEAN, "적에게 가까이 다가갈 시 확률적으로 랜덤 방귀를 뀝니다.", "무지개 콩", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.TRINKET.FAULTY_FUSE, "{{FFCopperBombTint}}{{Bomb}}구리폭탄이 등장할 확률이 증가합니다.#{{Collectible106}} {{FFCopperBombTint}}{{Bomb}}구리폭탄은 일반 폭탄보다 범위와 공격력이 더 크나 불발할 수 있습니다.", "끊어진 퓨즈", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.TRINKET.ENERGY_SEARCHER, "에너지 카드가 등장할 확률이 증가합니다.#에너지 카드 사용 시 일정 확률로 다른 에너지 카드를 소환합니다.", "에너지 탐지기", "ko_kr")

-- missing entries
EID:addTrinket(FiendFolio.ITEM.TRINKET.MASSIVE_AMETHYST, "{{SecretRoom}}비밀방 상점 주인이 룬이 박힌 돌덩이로 바뀝니다.#룬이 박힌 돌덩이 파괴 시 {{Card55}}Rune Shard 0~3개, {{Rune}}룬 0~2개를 드랍합니다.", "거대 아메시스트", "ko_kr")
EID:addCollectible(FiendFolio.ITEM.COLLECTIBLE.GOLDEN_PLUM_FLUTE, "사용 시 10초 동안 아군 Golden Baby Plum 보스를 소환합니다.", "황금 플럼 피리", "ko_kr")


-- Golden Trinket Modifiers(If applicable)
--EID:addGoldenTrinketMetadata(TrinketType.TRINKET_SHARD_OF_CHINA, nil, {15}, 3, "ko_kr")



-- Golem Trinket datas(constants_golem.lua)


EID:addTrinket(FiendFolio.ITEM.ROCK.DIRT_CLUMP, "채굴기로 이 장신구 소모 시 동전을 소모하지 않습니다.#!!! 석기 장신구 : 일반 타입", "흙덩이", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.ROLLING_ROCK, "방 클리어 시 {{SpeedSmall}}이동속도가 +0.05씩 최대 3번 증가합니다.#패널티 피격 시 이동속도 증가치가 초기화됩니다.#!!! 석기 장신구 : 일반 타입", "굴러가는 돌멩이", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.POCKET_SAND, "무효과#!!! 석기 장신구 : 일반 타입", "가루 한 줌", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.ROUGH_ROCK, "채굴기로 이 장신구 소모 시 등장 확률이 낮은 장신구가 나옵니다.#!!! 석기 장신구 : 일반 타입", "거친 돌", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.BLOODY_ROCK, "눈물을 4번 발사할 때마다 공격력 x2의 눈물을 발사합니다.#!!! 석기 장신구 : 일반 타입", "피묻은 돌", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.SPIKED_ROCK, "최초 획득 시 캐릭터가 체력 반칸의 피해를 받습니다.(사망하지 않음)#가시나 가시상자에 피해를 받지 않습니다.#!!! 석기 장신구 : 일반 타입", "가시돌", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.SLIPPY_ROCK, "↑ {{SpeedSmall}}이동속도 +0.15#캐릭터의 이동이 더 미끄러집니다.#!!! 석기 장신구 : 일반 타입", "미끄러운 돌", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.ARCANE_ROCK, "확률적으로({{LuckSmall}}) 공격력 +2의 유도 눈물을 발사합니다.#!!! 석기 장신구 : 일반 타입", "마법의 돌", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.MINERAL_ROCK, "↑ 장애물에 접촉하는 동안 모든 능력치 증가#!!! 석기 장신구 : 일반 타입", "광물 암석", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.THORNY_ROCK, "피격 시 캐릭터 주위에 충격파를 일으킵니다.#!!! 석기 장신구 : 일반 타입", "가시넝쿨에 묶인 돌", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.TIME_LOST_DIAMOND, "{{Collectible422}} 피격 시 방당 1회 한정으로 이전 방의 시점으로 시간을 되돌립니다.#!!! 석기 장신구 : 일반 타입", "시간이 멈춘 돌", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.OBSIDIAN_GRINDSTONE, "{{DamageSmall}}공격력/{{TearsSmall}}연사가 증가하며 다른 장신구를 같이 들고 있을 경우 추가로 증가합니다.#눈물을 10번 발사할 때마다 {{Trinket"..FiendFolio.ITEM.ROCK.POCKET_SAND.."}}Pocket Sand를 제외한 소지 중인 다른 장신구를 바꿉니다.#!!! 석기 장신구 : 일반 타입", "흑요석 숫돌", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.GODS_MARBLE, "확률적으로({{LuckSmall}}) 적에게 명중 시 추가 공격력의 빛줄기가 떨어지는 공격이 나갑니다.#!!!캐릭터도 빛줄기에 피해를 받습니다.#!!! 석기 장신구 : 일반 타입", "신의 구슬", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.TWENTY_SIDED_EMERALD, "픽업 주위에 3초동안 가까이 있으면 최대 3번까지 다른 픽업으로 바꿉니다.#!!! 석기 장신구 : 일반 타입", "12각 에메랄드", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.TECHNOLOGICAL_RUBY_2, "소지 시 캐릭터 주변에 2개의 원형 레이저를 발산합니다.#내부 레이저는 캐릭터 공격력 x0.25의 피해를, 외부 레이저는 캐릭터 공격력 x0.1의 피해를 줍니다.#!!! 석기 장신구 : 일반 타입", "기계 루비 2.0", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.LEAKY_ROCK, "캐릭터가 움직일 때마다 캐릭터의 공격력의 눈물을 제자리에 흘립니다.#연사가 빠를수록 흘리는 주기가 짧아집니다.#!!! 석기 장신구 : 일반 타입", "눈물나는 돌", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.TWIN_TUFFS, "25%(+2.5 x {{LuckSmall}})의 확률로 픽업이 1+1로 드랍됩니다.#방 클리어 보상이 확률적으로 하나 더 등장합니다.#15%(+1.5 x {{LuckSmall}})의 확률로 방 클리어 보상이 하나 더 등장합니다.#!!! 석기 장신구 : 일반 타입", "터프한 쌍둥이", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.WETSTONE, "클리어하지 않은 방에서 주기적으로 방울을 소환합니다.#이 장신구로 소환된 방울은 캐릭터에게 피해를 주지 않으며 적의 탄환을 막아줍니다.#!!! 석기 장신구 : 일반 타입", "습한 돌", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.STROMATOLITE, "장애물 파괴 시 확률적으로 {{HalfHeart}}빨간하트 반칸을 드랍합니다.#색돌 파괴 시 확률적으로 {{SoulHeart}}소울하트를 추가로 드랍합니다.#!!! 석기 장신구 : 일반 타입", "스트로마톨라이트", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.RIBBED_ROCK, "↑ {{EmptyBoneHeart}}뼈하트 +1#{{EmptyBoneHeart}} 최대 체력 증가 아이템 획득 시 최대 체력 대신 뼈하트가 증가합니다.#!!! 석기 장신구 : 일반 타입", "늑골석", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.FIENDISH_AMETHYST, "클리어하지 않은 방 입장 시 Fiend의 부하를 4마리 소환합니다.(Amethyst 타입)#!!! 석기 장신구 : 일반 타입", "악한 아메시스트", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.STURDY_ROCK, "{{SoulHeart}} 스테이지 입장 시 소울하트 +1#!!! 석기 장신구 : 일반 타입", "견고한 돌", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.BRICK_ROCK, "공격키를 누르면 장신구를 소모하여 공격력 15의 피해를 주는 벽돌을 발사합니다.#발사한 벽돌은 다시 주울 수 있습니다.#!!! 석기 장신구 : 일반 타입", "벽돌", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.SAPPHIC_SAPPHIRE, "{{Charm}} 모든 암컷의 적을 매혹시킵니다.#{{Freezing}} 확률적으로 적 처치시 얼어붙는 공격을 발사합니다.#!!! 석기 장신구 : 일반 타입", "사픽 사파이어", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.BLOOD_DIAMOND, "{{BleedingOut}} 확률적으로 적을 출혈시키는 공격을 발사합니다.#피격 시 캐릭터의 위치에 적에게 피해를 주는 빨간 장판을 생성합니다.#!!! 석기 장신구 : 일반 타입", "핏빛 다이아몬드", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.SCENTED_ROCK, "{{Charm}} 캐릭터와 가까이 있는 적을 매혹시킵니다.#!!! 석기 장신구 : 일반 타입", "향기로운 돌", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.ARCADE_ROCK, "25%(+2.5 x {{LuckSmall}})의 확률로 동전 슬롯머신 사용 시 동전을 소모하지 않습니다.#!!! 석기 장신구 : 일반 타입", "오락석", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.TINTED_HEART, "피격 시 확률적으로 {{Heart}}빨간하트를 하나 드랍합니다.#폭발 피해를 받으면 확률적으로 {{SoulHeart}}소울하트 및 {{Key}}/{{Bomb}}/{{Chest}}를 각각 드랍합니다.#!!! 석기 장신구 : 일반 타입", "하트 모양 색돌", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.ROSE_QUARTZ, "피격 시 2.5초동안 {{ColorOrange}}적의 탄환을 막아주는{{CR}} 보호막을 생성합니다.#!!! 석기 장신구 : 일반 타입", "장미색 쿼츠", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.HAILSTONE, "캐릭터와 가까이 있는 적을 {{Slow}}둔화 시키며 둔화된 적 처치 시 {{Freezing}}얼어붙습니다.#!!! 석기 장신구 : 일반 타입", "우박", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.RAMBLIN_OPAL, "적이 있는 방에서 주기적으로 아군 Shiitake Spore를 최대 3마리까지 소환합니다.#!!! 석기 장신구 : 일반 타입", "걸어가는 오팔", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.SAND_DOLLAR, "{{Shop}}상점에서 장신구를 버리면 10~20{{Coin}} 상당의 픽업으로 바꿉니다.#!!! 석기 장신구 : 일반 타입", "모래 지폐", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.HENGE_ROCK, "소지한 석기 장신구의 효과를 강화시킵니다.#!!! 석기 장신구 : 일반 타입", "스톤헨지", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.SALT_LAMP, "2분간 적과 탄환을 강하게 밀쳐냅니다.#2분이 지나면 전구가 꺼지며 배터리 픽업을 주울 시 배터리 크기에 비례한 만큼 재사용할 수 있습니다.#!!! 석기 장신구 : 일반 타입", "소금 램프", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.MOLTEN_SLAG, "{{Burning}} 캐릭터와 가까이 있는 적에게 화상을 입힙니다.#채굴기로 이 장신구 소모 시 다른 장신구를 흡수합니다.#!!! 석기 장신구 : 일반 타입", "녹아내리는 화산암재", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.THUNDER_EGG, "↓ {{SpeedSmall}}이동속도 -0.1#방 클리어 시 확률적으로 희귀한 석기 장신구로 바꿉니다.#!!! 석기 장신구 : 일반 타입", "계룡 알", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.UNOBTAINIUM, "!!! 획득 불가", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.SANDSTONE, "확률적으로({{LuckSmall}}) 캐릭터와 가까울수록 공격력이 4배 증가하며 멀어질수록 0배로 감소, 적에게 {{Confusion}}혼란을 거는 거대한 돌덩이를 발사합니다..#폭발 피해를 받으면 {{Trinket"..FiendFolio.ITEM.ROCK.POCKET_SAND.."}}Pocket Sand로 바뀝니다.#!!! 석기 장신구 : 일반 타입", "사암", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.FAKE_ROCK, "획득 시 {{Key}}열쇠를 하나 드랍합니다.#{{Key}} 방 안에 잠긴 문이 있으면 장애물 파괴 시 방당 1회 한정으로 열쇠를 드랍합니다.#!!! 석기 장신구 : 일반 타입", "가짜 돌", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.CITRINE_PULP, "공격 시 낮은 확률로 여러 개의 눈물을 흩뿌립니다.#적과 가까이 있으면 적에게 피해를 주는 노란 장판을 깝니다.#!!! 석기 장신구 : 일반 타입", "황수정 펄프", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.BLOODSTONE, "적 처치 시 {{DamageSmall}}공격력 +0.1#피격 시 {{DamageSmall}}공격력 +1#증가한 공격력은 서서히 감소합니다.#!!! 석기 장신구 : 일반 타입", "혈석", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.EMETIC_ANTIMONY, "{{Collectible149}}주기적으로 구토제 눈물을 발사합니다.#!!! 석기 장신구 : 일반 타입", "메스꺼운 안티몬", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.DOUBLE_RUBBLE, "채굴기로 이 장신구 소모 시 2개의 석기 장신구를 캐냅니다.#!!! 석기 장신구 : 일반 타입", "더블 재갈", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.ROCK_FROM_AN_ABYSS, "방 입장 시 20%의 확률로 적에게 심판을 겁니다.#심판 상태의 적은 명중 시마다 카운트가 감소하며;#카운트가 0이 될 때 추가 피해를 주며 심판 상태를 제거합니다.#!!! 석기 장신구 : 일반 타입", "심연에서 온 돌멩이", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.HECTOR, "↑ {{DamageSmall}}공격력 +1#↑ {{TearsSmall}}공격 딜레이 -1#↓ {{SpeedSmall}}이동속도 -0.1#피격 시 강제로 내려놓습니다.#!!! 석기 장신구 : 일반 타입", "헥토르", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.VESSEL_ROCK, "소지 시 임시 체력의 역할을 하며 비어 있는 상태에서 피격 시 {{Trinket"..FiendFolio.ITEM.ROCK.POCKET_SAND.."}}Pocket Sand로 바뀝니다.#체력 거래에 사용할 수 없습니다.#{{EmptyHeart}} 현재 비어 있음#!!! 석기 장신구 : 일반 타입", "돌 그릇", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.HALF_VESSEL_ROCK, "소지 시 임시 체력의 역할을 하며 비어 있는 상태에서 피격 시 {{Trinket"..FiendFolio.ITEM.ROCK.POCKET_SAND.."}}Pocket Sand로 바뀝니다.#체력 거래에 사용할 수 없습니다.#{{HalfHeart}} 현재 반칸 채워짐#!!! 석기 장신구 : 일반 타입", "돌 그릇", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.FULL_VESSEL_ROCK, "소지 시 임시 체력의 역할을 하며 비어 있는 상태에서 피격 시 {{Trinket"..FiendFolio.ITEM.ROCK.POCKET_SAND.."}}Pocket Sand로 바뀝니다.#체력 거래에 사용할 수 없습니다.#{{FullHeart}} 현재 한칸 채워짐#!!! 석기 장신구 : 일반 타입", "돌 그릇", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.CONSTANT_ROCK_SHOOTER, "↑ {{TearsSmall}}공격 딜레이 -2.5#캐릭터가 자동으로 공격합니다.#!!! 석기 장신구 : 일반 타입", "무한 돌멩이 발사기", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.ROBOT_ROCK, "적에게 랜덤 상태이상을 거는 짧은 레이저 2개를 시계방향으로 발사합니다.#!!! 석기 장신구 : 일반 타입", "로봇 돌덩이", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.ROCK_CANDY, "확률적으로({{LuckSmall}}) 적에게 {{Charm}}매혹을 거는 공격력 x1.5의 공격을 발사합니다.#적 처치 시 잠시 후 사라지는 {{HalfHeart}}설탕 크리스탈을 드랍합니다.#!!! 석기 장신구 : 일반 타입", "돌사탕", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.KEYSTONE, "{{Key}} 열쇠 소모 시 그 층에서 {{TearsSmall}}연사 +0.35, {{SpeedSmall}}이동속도 +0.1#!!! 석기 장신구 : 일반 타입", "쐐기돌", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.SILVER_TONGUE, "채굴기 사용 금액이 1{{Coin}} 감소합니다.#!!! 흡수 시 50%의 확률로 감소#!!! 석기 장신구 : 일반 타입", "은색 혓바닥", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.MEAT_SLAB, "주기적으로 캐릭터가 눈물을 하나씩 흩뿌립니다.#눈물을 흩뿌리는 속도는 캐릭터의 전체 체력이 적을수록 빨라집니다.#!!! 석기 장신구 : 일반 타입", "고기덩이", "ko_kr") -- no sweating effect
EID:addTrinket(FiendFolio.ITEM.ROCK.SHEEP_ROCK, "확률적으로({{LuckSmall}}) 눈물이 체공하며 다른 눈물과 부딪힐 시 서로 튕겨나가며 움직입니다.#!!! 석기 장신구 : 일반 타입", "염소모양 돌", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.REBELLION_ROCK, "피격 시 주변의 적을 밀쳐내며 멍들게 합니다.#멍든 적은 해당 상태 중첩 수만큼 추가 피해를 받습니다.#!!! 석기 장신구 : 일반 타입", "혁명석", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.DADS_LEGENDARY_GOLDEN_ROCK, "항상 황금 형태로 등장합니다.#채굴기로 이 장신구 소모 시 항상 황금 형태의 석기 장신구가 등장합니다.#!!! 석기 장신구 : 일반 타입", "아빠의 전설적인 황금", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.BEDROCK, "스테이지 진입 시 33#의 확률로 침대를 소환합니다.#!!! 석기 장신구 : 일반 타입", "배게", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.SHEETROCK, "스테이지 진입 시 {{Heart}}체력을 2칸 회복합니다.#침대에서 자면 {{SoulHeart}}소울하트 2개를 추가로 획득합니다..#!!! 석기 장신구 : 일반 타입", "이불", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.FETAL_STONE, "{{Confusion}} 공격하는 방향으로 확률적으로 적에게 혼란을 거는 공격력 5의 돌덩이를을 발사합니다.#!!! 석기 장신구 : 일반 타입", "돌멩이 아기", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.GRIMACE_ROCK1, "주변의 적에게 캐릭터의 공격력의 눈물을 발사합니다.#내려놓은 상태에서도 동작합니다.#!!! 석기 장신구 : 일반 타입", "꼬마 돌머리", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.GRIMACE_ROCK2, "주변의 적에게 캐릭터의 공격력 +10의 폭발성 구토제를 발사합니다.#내려놓은 상태에서도 동작합니다.#!!! 석기 장신구 : 일반 타입", "꼬마 구토머리", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.GRIMACE_ROCK3, "적이 있는 방에서 주기적으로 적에게 피해를 주거나 탄환을 막아주는 방울을 소환합니다.#내려놓은 상태에서도 동작합니다.#!!! 석기 장신구 : 일반 타입", "꼬마 젖은머리", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.GRIMACE_ROCK4, "한 방향으로 캐릭터의 공격력의 눈물을 계속 발사합니다.#내려놓거나 다시 주울 때마다 방향을 바꿀 수 있습니다.#내려놓은 상태에서도 동작합니다.#!!! 석기 장신구 : 일반 타입", "꼬마 우직머리", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.GRIMACE_ROCK5, "근처의 적을 주기적으로 빨아들였다가 멈춥니다.#내려놓은 상태에서도 동작합니다.#!!! 석기 장신구 : 일반 타입", "깨진 꼬마 구멍머리", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.GRIMACE_ROCK6, "한 방향으로 캐릭터의 최대 공격력 x6.6의 피해를 주는 얇은 혈사포를 발사합니다#내려놓거나 다시 주울 때마다 방향을 바꿀 수 있습니다.#내려놓은 상태에서도 동작합니다.#!!! 석기 장신구 : 일반 타입", "꼬마 뿔머리", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.GRIMACE_ROCK7, "캐릭터의 공격력의 눈물을 십자/X자 모양을 번갈아가면서 발사합니다.#내려놓은 상태에서도 동작합니다.#!!! 석기 장신구 : 일반 타입", "꼬마 십자머리", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.GRIMACE_ROCK8, "적이 있는 방에서 캐릭터의 공격력 x0.66의 레이저를 회전하면서 계속 발사합니다.#내려놓은 상태에서도 동작합니다.#!!! 석기 장신구 : 일반 타입", "꼬마 눈알", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.GRIMACE_ROCK9, "주기적으로 방 안의 적 하나를 아군으로 복사합니다.#복사한 아군은 방을 이동하면 사라집니다.#내려놓은 상태에서도 동작합니다.#!!! 석기 장신구 : 일반 타입", "꼬마 가마솥", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.GRIMACE_ROCK10, "픽업 아이템이 끌려옵니다.#내려놓은 상태에서도 동작합니다.#!!! 석기 장신구 : 일반 타입", "꼬마 구멍머리", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.GRIMACE_ROCK11, "주변의 적에게 캐릭터의 공격력의 눈물을 세갈래로 발사합니다.#내려놓은 상태에서도 동작합니다.#!!! 석기 장신구 : 일반 타입", "꼬마 삼눈머리", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.GRIMACE_ROCK12, "특정 이동키를 입력하는 동안 그 방향으로 캐릭터의 공격력의 눈물을 계속 발사합니다.#내려놓거나 다시 주울 때마다 방향을 바꿀 수 있습니다.#내려놓은 상태에서도 동작합니다.#!!! 석기 장신구 : 일반 타입", "꼬마 센서머리", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.FOCUS_CRYSTAL, "캐릭터와 {{ColorYellow}}2.5 타일{{CR}} 내에 있는 적은{{ColorYellow}}20%{{CR}}의 추가 피해를 받습니다. {{ColorGray}}(중첩 당 +20% 복리 증가).{{CR}}#!!! 석기 장신구 : 일반 타입", "집중의 돌", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.ODDLY_SMOOTH_STONE, "{{BlendedHeart}} 하트류 픽업의 획득량이 반칸만큼 추가로 증가합니다.#!!! 석기 장신구 : 일반 타입", "부드러운 돌", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.MOONSTONE, "소지한 상태에서 {{SecretRoom}}{{SuperSecretRoom}}비밀방 진입 시 아래 능력치 중 하나 증가:#{{TearsSmall}}/{{RangeSmall}}/{{ShotspeedSmall}}/{{LuckSmall}}#!!! 석기 장신구 : 일반 타입", "월석", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.LIMESTONE, "캐릭터가 지나간 자리에 초록 장판이 생기며 닿은 적은 초당 캐릭터의 공격력 x0.5의 피해를 입습니다.#감귤 타입의 적을 아군으로 만듭니다.#일부 몬스터가 특수하게 변경됩니다.#!!! 석기 장신구 : 일반 타입", "라임석", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.CARNAL_CARNELIAN, "적과 가까울수록 {{DamageSmall}}공격력/{{SpeedSmall}}이동속도가 증가합니다..#!!! 석기 장신구 : 일반 타입", "카넬리안", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.REBAR_ROCK, "#{{Heart}}{{ColorYellow}}빨간하트{{CR}} 피해를 25%의 확률로 무시하며 항상 반칸으로 줄여줍니다.#!!! 석기 장신구 : 일반 타입", "철근석", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.STALACTITE, "폭발성 피격 시 캐릭터의 공격력 x2의 피해를 주는 돌덩이 여러개가 랜덤 위치에 떨어집니다.#떨어지는 돌덩이에 피해를 입지 않습니다.#!!! 석기 장신구 : 일반 타입", "종유석", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.CAST_GEM, "공격 시 적을 향해 날아가는 유도 보석을 3개 획득합니다.#유도 보석이 적과 접촉 시 적에게 피해를 주며 멍들게 합니다.#멍든 적은 해당 상태 중첩 수만큼 추가 피해를 받습니다.#일부 아이템과의 추가 시너지 존재#{{Collectible"..CollectibleType.COLLECTIBLE_NYX.."}} (Nyx의 보석과 동일)#!!! 석기 장신구 : 일반 타입", "주문 보석", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.SHARD_OF_GOLGOTHA, "{{Collectible722}} 방 입장 시 최대 체력이 가장 많은 적을 5초간 움직이지 못하게 만듭니다.#!!! 석기 장신구 : 일반 타입", "골고타 조각", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.SMOKY_QUARTZ, "{{Confusion}} 피격 시 주변의 적에게 혼란을 겁니다.#!!! 석기 장신구 : 일반 타입", "연기나는 쿼츠", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.TWINKLING_ROCK, "채굴기로 이 장신구 소모 시 {{ColorTeal}}정동석{{CR}} 타입의 석기 장신구로 바뀝니다.#!!! 석기 장신구 : 일반 타입", "빛나는 돌", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.ROCK_CAKE, "채굴기로 이 장신구 소모 시 {{HalfHeart}}빨간하트를 반칸 회복합니다.#!!! 석기 장신구 : 일반 타입", "돌 케이크", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.CHARCOAL, "{{Collectible132}} 확률적으로 탄속이 느리지만 공격이 멀리 나갈수록 공격력이 증가하는 눈물을 발사합니다.#!!! 석기 장신구 : 일반 타입", "숯덩이", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.KNIFE_PEBBLE, "↑ {{DamageSmall}}공격력 +1.25#!!! 석기 장신구 : 일반 타입", "칼모양 조약돌", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.TEARDROP_PEBBLE, "↑ {{TearsSmall}}공격 딜레이 -2#!!! 석기 장신구 : 일반 타입", "물방울 조약돌", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.ARROW_PEBBLE, "↑ {{RangeSmall}}사거리 +1.25#↑ {{ShotspeedSmall}}탄속 +0.2#!!! 석기 장신구 : 일반 타입", "활 조약돌", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.CLOVER_PEBBLE, "↑ {{LuckSmall}}행운 +3#!!! 석기 장신구 : 일반 타입", "클로버 조약돌", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.SHOE_PEBBLE, "↑ {{SpeedSmall}}이동속도 +0.3#!!! 석기 장신구 : 일반 타입", "신발 조약돌", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.FRUITY_PEBBLE, "↑ {{SpeedSmall}}이동속도 +0.15#↑ {{DamageSmall}}공격력 +0.3#↑ {{TearsSmall}}공격 딜레이 -0.7#↑ {{RangeSmall}}사거리 +0.75#↑ {{ShotspeedSmall}}탄속 +0.18#↑ {{LuckSmall}}행운 +1#!!! 석기 장신구 : 일반 타입", "과일 조약돌", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.ACHILLES_ROCK, "적에게 랜덤 방향으로 급소가 생깁니다.#급소 명중 시 1.5배의 피해를 받습니다.#!!! 석기 장신구 : 일반 타입", "아킬레스석", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.ELECTRUM, "액티브 아이템 사용 시 전류를 발산하여 주변의 적에게 캐릭터의 공격력 및 액티브 아이템 충전량에 비례한 피해를 줍니다.#!!! 석기 장신구 : 일반 타입", "엘렉트륨", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.PURE_QUARTZ, "피격 시 소울하트가 없으면 10초간 무적 상태가 되며 {{HolyMantleSmall}} 피격 시 피해를 1회 무시하는 보호막을 제공합니다.#!!! 석기 장신구 : 일반 타입", "순수한 쿼츠", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.AMAZONITE, "스테이지에서 가장 먼저 줍는 픽업은 1{{Coin}}으로 구매해야 되며 구매 시 사라집니다.#사라진 픽업은 다음 스테이지 진입 시 소환됩니다.#!!! 석기 장신구 : 일반 타입", "천하석", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.STAR_SAPPHIRE, "가장 가까운 적 및 탄환을 바라보는 방향에서 앞뒤로 움직입니다.#탄환을 막으면서 접촉하는 적에게 초당 공격력 x1.5의 피해를 입힙니다.#!!! 석기 장신구 : 일반 타입", "별모양 사파이어", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.GRAVESTONE, "피격 시 혹은 장애물을 부술 시 {{Collectible634}}Purgatory 혹은 {{Collectible684}}Hungry Soul의 유령을 소환합니다.#!!! 석기 장신구 : 일반 타입", "묘비", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.SAND_CASTLE, "스테이지 당 피격을 3회 막아줍니다.#막을 수 있는 피격 횟수가 없을 경우 {{Trinket"..FiendFolio.ITEM.ROCK.POCKET_SAND.."}}Pocket Sand로 바뀝니다.#!!! 3회 남음.#!!! 석기 장신구 : 일반 타입", "모래성", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.DAMAGED_SAND_CASTLE, "스테이지 당 피격을 3회 막아줍니다.#막을 수 있는 피격 횟수가 없을 경우 {{Trinket"..FiendFolio.ITEM.ROCK.POCKET_SAND.."}}Pocket Sand로 바뀝니다.#!!! 2회 남음.#!!! 석기 장신구 : 일반 타입", "모래성", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.BROKEN_SAND_CASTLE, "스테이지 당 피격을 3회 막아줍니다.#막을 수 있는 피격 횟수가 없을 경우 {{Trinket"..FiendFolio.ITEM.ROCK.POCKET_SAND.."}}Pocket Sand로 바뀝니다.#!!! 1회 남음.#!!! 석기 장신구 : 일반 타입", "모래성", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.GUARDED_GARNET, "피격 시 그 방에서 확률적으로 피해를 1회 막아주는 붉은 보호막을 생성합니다.#붉은 보호막 파괴 시 주변의 적을 밀쳐냅니다.#!!! 석기 장신구 : 일반 타입", "보호의 가넷", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.SHAMROCK, "↑ {{LuckSmall}}행운 +4#피격 시 그 스테이지에서 {{LuckSmall}}행운 -1#!!! 석기 장신구 : 일반 타입", "행운석", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.GAS_POCKET, "주기적으로 랜덤 장애물 주변에 작은 독가스가 생깁니다.#{{Poison}} 장애물 파괴 시 커다란 독가스가 생깁니다.#!!! 석기 장신구 : 일반 타입", "가스 주머니", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.SOAP_STONE, "피격 시 그 방의 탄환을 모두 지우며 적의 탄환을 막아주는 방울을 소환합니다.#방 클리어 시 그 방의 탄환을 모두 지웁니다.#!!! 석기 장신구 : 일반 타입", "굳은 비누", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.SPIRIT_URN, "{{BossRoom}}보스방/미니보스방/{{ChallengeRoom}}도전방 시작 시 {{Collectible584}}Book of Virtues의 불꽃을 3마리 소환합니다..#!!! 석기 장신구 : 일반 타입", "영혼 항아리", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.SUN_SHARD, "캐릭터의 주위를 돌며 적의 탄환을 막아줍니다.#적의 탄환을 막으면 잠시동안 회전 속도가 빨라지며 그 자리에 주기적으로 핏방울과 빨간 장판을 남깁니다.#!!! 석기 장신구 : 일반 타입", "태양 조각", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.STEADFAST_STONE, "!!! 일회용#피격 시 남은 체력이 없을 경우 피격을 무효화하고 장신구를 파괴합니다.#!!! 석기 장신구 : 일반 타입", "확고한 돌", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.RAI_STONE, "적 처치 시 15%의 확률로 {{Coin}}잠시 후 사라지는 동전을 드랍합니다.#!!! 석기 장신구 : 일반 타입", "석화", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.ORE_PENNY, "{{Trinket52}} 동전 획득 시 50% 확률로 {{Coin}}동전을 하나 더 얻습니다.#장애물을 확률적으로 금광석으로 바꿉니다.#!!! 석기 장신구 : 일반 타입", "금광 페니", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.HEAVY_METAL, "↓ {{SpeedSmall}}이동속도 -0.15#이동속도에 반비례하여 {{DamageSmall}}공격력이 증가합니다.#확률적으로 피격을 무효화하며 이동속도가 느릴수록 확률이 증가합니다.#!!! 석기 장신구 : 일반 타입", "무거운 메탈", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.GROSSULAR, "클리어하지 않은 방에서 주기적으로 주변의 적에게 공포, 혼란, 독 중 하나를 거는 파동을 발산합니다.#!!! 석기 장신구 : 일반 타입", "그로설라", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.SULFUR_CRYSTAL, "{{Collectible118}} 4번째 방마다 그 방에서 혈사포를 발사합니다.#!!! 석기 장신구 : 일반 타입", "황산 보석", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.TROLLITE, "!!! 채굴기로 이 장신구 소모 시 채굴기가 폭발합니다.#!!! 분해 시 트롤폭탄을 드랍합니다.#!!! 석기 장신구 : 일반 타입", "트롤라이트", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.THROWLOMITE, "주기적으로 가장 가까운 적에게 돌덩이를 던집니다.#!!! 석기 장신구 : 일반 타입", "쓰로마이트", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.HEARTHSTONE, "{{Card}} 카드 사용 시 랜덤 긍정 효과를 발동합니다.#!!! 석기 장신구 : 일반 타입", "하스스톤", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.MAGNETIC_SAND, "↑ {{TearsSmall}}연사 +0.45#↓ {{DamageSmall}}공격력 -0.35#{{Magnetize}} 확룰적으로 맞은 적에게 자력 효과가 부여되는 공격이 나갑니다.#!!! 석기 장신구 : 일반 타입", "자기 모래", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.INSATIABLE_APATITE, "하트류 픽업 획득 시 {{DamageSmall}}서서히 감소하는 공격력이 증가합니다.#체력이 꽉 찼을 경우 {{DamageSmall}}공격력 추가 증가#!!! 석기 장신구 : 일반 타입", "배고픈 인회석", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.POWER_ROCK, "장애물 파괴 시 확률적으로 액티브 아이템의 충전량을 1칸 충전합니다.#!!! 석기 장신구 : 일반 타입", "충전된 돌", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.TIGERS_EYE, "대각선으로 이동하며 벽과 부딪힐 시 적을 향해 반사됩니다.#탄환을 막으며 접촉하는 적에게 캐릭터 공격력 x0.66의 피해를 줍니다.#!!! 석기 장신구 : 일반 타입", "호랑이의 눈", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.SMALLER_ROCK, "색돌 파괴 시 {{SpeedSmall}}이동속도 -0.06, {{DamageSmall}}공격력 +0.33.#!!! 석기 장신구 : 일반 타입", "더 작은 돌", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.NITRO_CRYSTAL, "{{Coin}}동전을 주울 시 니트로를 잠시동안 활성화합니다.#니트로가 활성화되어 있는 동안 {{SpeedSmall}}이동속도/{{TearsSmall}}연사가 증가합니다.#!!! 석기 장신구 : 일반 타입", "니트로 보석", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.SHARD_OF_GOLEM, "초과 회복 시 특수 게이지를 채웁니다.#특수 게이지 완충 시 소지 중인 장신구를 전부 흡수합니다.#특수 게이지 1칸 당 {{DamageSmall}}공격력 +0.45#!!! 석기 장신구 : 일반 타입", "골렘의 조각", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.ROCK_WORM, "↑ {{TearsSmall}}연사 +0.4#↑ {{DamageSmall}}공격력 +0.4#스테이지 진입 시 그 스테이지에서 랜덤 벌레 장신구 효과를 얻습니다.#!!! 석기 장신구 : 일반 타입", "돌멩이 벌레", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.FOOLS_UNOBTAINIUM, "!!! 획득불가.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.MINICHIBISIDIAN, "적이 확률적으로 Bony로 바뀝니다.#바뀐 Bony는 바뀌기 전의 체력을 따릅니다.#!!! 석기 장신구 : 일반 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.FRIENDLY_RAPID_FIRE_OPAL, "방 입장 시 12발의 총알이 제공되며 총알이 남아있는 동안 라이플을 난사할 수 있습니다.#!!! 석기 장신구 : 일반 타입", "난사 장난감 오팔", "ko_kr")

EID:addTrinket(FiendFolio.ITEM.ROCK.BREAKFAST_FOSSIL, "분해 시 {{Heart}}최대 체력 +1#!!! 석기 장신구 : {{ColorRed}}화석{{CR}} 타입", "아침밥 화석", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.SACK_FOSSIL, "{{GrabBag}} 픽업 아이템을 일정 확률로 픽업 자루로 바꿉니다.#{{GrabBag}} 분해 시 픽업 자루를 추가로 소환합니다.#!!! 석기 장신구 : {{ColorRed}}화석{{CR}} 타입", "자루 화석", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.COPROLITE_FOSSIL, "방 최초 입장 시 파란 아군 자폭 파리를 하나 소환합니다.#분해 시 파란 아군 자폭 파리를 12마리 소환합니다.#!!! 석기 장신구 : {{ColorRed}}화석{{CR}} 타입", "코프롤라이트", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.BEETER_FOSSIL, "눈물을 발사할 때마다 다른 방향으로 공격력 x0.4의 눈물을 발사합니다.#눈물은 시계방향으로 서서히 돌아가면서 발사됩니다.#분해 시 아군 Beeter롤 소환합니다.#!!! 석기 장신구 : {{ColorRed}}화석{{CR}} 타입", "더 좋은 화석", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.FLY_FOSSIL, "방 최초 입장 시 랜덤 색상의 아군 자폭 파리를 하나 소환합니다.#분해 시 적의 탄환을 막아주는 파리 한마리를 얻습니다.#!!! 석기 장신구 : {{ColorRed}}화석{{CR}} 타입", "파리 화석", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.GMO_FOSSIL, "{{Pill}} 보스 처치 시 랜덤 알약 2개를 강제로 사용합니다.#{{Pill}} 분해 시 랜덤 알약 3개를 강제로 사용합니다.#!!! 석기 장신구 : {{ColorRed}}화석{{CR}} 타입", "GMO 화석", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.SWORD_FOSSIL, "↑ {{DamageSmall}}공격력 +0.3#↑ {{TearsSmall}}공격 딜레이 -1#↑ {{RangeSmall}}사거리 +0.75#↑ {{ShotspeedSmall}}탄속 +0.2#분해 시 능력치 상승량의 절반만큼 영구적으로 증가합니다.#!!! 석기 장신구 : {{ColorRed}}화석{{CR}} 타입", "검의 화석", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.FORTUNE_WORM_FOSSIL, "↑ {{ShotspeedSmall}}탄속 +0.2#↑ {{LuckSmall}}행운 +2#{{Trinket"..TrinketType.TRINKET_FORTUNE_WORM.."}} 확률적으로({{LuckSmall}}) 적에게 명중 시 운세를 보여주는 공격력 x1.05의 포춘쿠키를 발사합니다.#분해 시 {{SoulHeart}}소울하트를 추가로 드랍하며 랜덤 운세 3개를 보여줍니다.#!!! 석기 장신구 : {{ColorRed}}화석{{CR}} 타입", "운세 화석", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.PRIMORDIAL_FOSSIL, "{{Collectible317}} 6.66%의 확률로 여러 개의 독성 눈물을 흩뿌리면서 발사합니다.#분해 시 Golem 캐릭터의 시작 장신구를 추가로 드랍합니다. ({{Trinket"..FiendFolio.ITEM.ROCK.DIRT_CLUMP.."}} + {{Trinket"..FiendFolio.ITEM.ROCK.ROLLING_ROCK.."}})#!!! 석기 장신구 : {{ColorRed}}화석{{CR}} 타입", "원시 화석", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.REROLLIGAN_FOSSIL, "{{Collectible285}} 적 명중 시 확률적으로 다른 적으로 바꿉니다.#분해 시 랜덤 유리 주사위 조각을 추가로 드랍합니다.#!!! 석기 장신구 : {{ColorRed}}화석{{CR}} 타입", "주사위 화석", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.FOSSILIZED_FOSSIL, "다른 화석 타입 장신구 분해시 효과 2배#분해 시 소지 중인 다른 화석 타입 장신구의 분해 효과를 발동합니다.#!!! 석기 장신구 : {{ColorRed}}화석{{CR}} 타입", "비옥한 화석", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.FISH_FOSSIL, "피격 시 파란 아군 자폭 파리를 1~4마리 소환합니다.#분해 시 아군 Portal 몬스터를 추가로 소환합니다.#!!! 석기 장신구 : {{ColorRed}}화석{{CR}} 타입", "생선 화석", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.RUNIC_FOSSIL, "{{Rune}} 모든 장신구가 룬으로 바뀝니다.#{{Rune}}룬 사용 시 {{Card55}}Rune Shard를 드랍합니다.#분해 시 {{Card55}}Rune Shard 4개를 추가로 드랍합니다.#!!! 석기 장신구 : {{ColorRed}}화석{{CR}} 타입", "룬 화석", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.CANNED_FOSSIL, "피격 시 적을 밀쳐내는 랜덤 방귀를 뀝니다.#분해 시 아군 Litter bug를 추가로 소환합니다.#!!! 석기 장신구 : {{ColorRed}}화석{{CR}} 타입", "취한 화석", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.BALANCED_FOSSIL, "{{Heart}}/{{Coin}}/{{Key}}/{{Bomb}}의 개수가 적은 경우 방 클리어 보상을 50%의 확률로 {{Heart}}/{{Coin}}/{{Key}}/{{Bomb}}로 바꿉니다., if you have little.#분해 시 가장 적게 소지중인 픽업 아이템 3개를 추가로 드랍합니다.#!!! 석기 장신구 : {{ColorRed}}화석{{CR}} 타입", "균형의 화석", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.BURIED_FOSSIL, "스테이지 당 하나씩 바닥에 틈새가 생기고 그 틈새를 {{Bomb}}폭탄으로 터트릴 시 화석 장신구를 드랍합니다.#분해 시 랜덤 화석 장신구를 추가로 드랍합니다.#Dark Room 스테이지의 무덤을 {{Bomb}}폭탄으로 열 수 있습니다.#!!! 석기 장신구 : {{ColorRed}}화석{{CR}} 타입", "묻혀있는 화석", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.TRIPPY_FOSSIL, "{{Collectible398}} 확률적으로 적을 작아지게 만드는 공격이 나갑니다.#작아진 적은 밟아 죽일 수 있습니다.#분해 시 캐릭터의 크기가 작아집니다.#!!! 석기 장신구 : {{ColorRed}}화석{{CR}} 타입", "환각 화석", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.MAXS_FOSSIL, "{{Collectible445}} {{SecretRoom}}{{SuperSecretRoom}}비밀방이 연결되어 있을 경우 개 울음소리가 납니다.#분해 시 이후에 등장하는 색돌 하나가 밝혀집니다.#!!! 석기 장신구 : {{ColorRed}}화석{{CR}} 타입", "맥스의 화석", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.BOMB_SACK_FOSSIL, "{{Bomb}}폭탄이 터지면 폭탄 주위에 충격파를 일으킵니다.#분해 시 {{Bomb}}폭탄 5개를 추가로 드랍합니다.#!!! 석기 장신구 : {{ColorRed}}화석{{CR}} 타입", "폭탄자루 화석", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.DEATH_CAP_FOSSIL, "↓ 방 입장시 마다 모든 능력치가 감소합니다.#분해 시 감소량만큼 능력치가 영구적으로 증가합니다.#!!! 석기 장신구 : {{ColorRed}}화석{{CR}} 타입", "똥모자 화석", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.EXPLOSIVE_FOSSIL, "{{Bomb}} 방 클리어 시 확률적으로 폭탄을 추가로 드랍합니다.#장애물이 일정 확률로 폭탄 돌덩이로 바뀝니다.#분해 시 이후 클리어하지 않은 3개의 방에 {{Collectible483}}Mama Mega의 폭발을 일으킵니다.#!!! 석기 장신구 : {{ColorRed}}화석{{CR}} 타입", "폭발성 화석", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.COLOSSAL_FOSSIL, "눈물 크기 x2.#분해 시 3개의 랜덤 화석 장신구 효과를 발동합니다.#!!! 석기 장신구 : {{ColorRed}}화석{{CR}} 타입", "거대 화석", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.SKUZZ_FOSSIL, "방 입장 시 적을 {{Slow}}느려지게 하는 보라색 아군 벼룩을 2~3마리 소환합니다.#분해 시 파란 아군 자폭 벼룩을 5~7마리 소환합니다.#!!! 석기 장신구 : {{ColorRed}}화석{{CR}} 타입", "벼룩 화석", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.FOSSILIZED_BLESSING, "↑ {{TearsSmall}}연사 +0.4#분해 시 다음 게임에 랜덤 석기 장신구를 하나 더 갖고 시작합니다.#!!! 석기 장신구 : {{ColorRed}}화석{{CR}} 타입", "골렘의 축복", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.PETRIFIED_SOCK, "확률적으로 적을 석화시키는 눈물이 나갑니다.#분해 시 {{Card92}}랜덤 패밀리어를 획득합니다.#!!! 석기 장신구 : {{ColorRed}}화석{{CR}} 타입", "굳은 양말", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.MOLTEN_FOSSIL, "흡수한 정동석의 효과를 강화시킵니다.#분해 시 랜덤 석기 장신구를 흡수합니다.#!!! 석기 장신구 : {{ColorRed}}화석{{CR}} 타입", "녹아내리는 화석", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.VALUE_FOSSIL, "{{Shop}}상점의 판매 가격을 1{{Coin}} 할인합니다.#분해 시 {{Coin}}동전 3개를 추가로 드랍합니다.#!!! 석기 장신구 : {{ColorRed}}화석{{CR}} 타입", "가치있는 화석", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.CORAL_FOSSIL, "↑ {{Heart}}빨간하트 +1#공격 시 확률적으로 X자 방향의 눈물을 추가로 발사합니다.#분해 시 {{Heart}}빨간하트 +1, 아군 Drowned charger 3마리를 추가로 소환합니다.#!!! 석기 장신구 : {{ColorRed}}화석{{CR}} 타입", "코랄 화석", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.NECROMANTIC_FOSSIL, "적 처치 시 확률적으로 캐릭터의 주위를 도는 뼛조각을 소환합니다.#분해 시 현재 게임에서 분해했던 석기 장신구를 추가로 소환합니다.#!!! 석기 장신구 : {{ColorRed}}화석{{CR}} 타입", "네크로 화석", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.BRAIN_FOSSIL, "공격이 잠시동안 적에게 유도됩니다.#분해 시 The Magician 카드를 추가로 소환합니다.#!!! 석기 장신구 : {{ColorRed}}화석{{CR}} 타입", "두뇌 화석", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.REFUND_FOSSIL, "다른 화석 분해 시 {{Trinket"..FiendFolio.ITEM.ROCK.POCKET_SAND.."}}Pocket Sand를 소환합니다.#채굴기로 {{Trinket"..FiendFolio.ITEM.ROCK.POCKET_SAND.."}}Pocket Sand 채굴 시 {{Coin}}을 소모하지 않습니다.#분해 시 {{Trinket"..FiendFolio.ITEM.ROCK.POCKET_SAND.."}}Pocket Sand 2개를 추가로 소환합니다.#!!! 석기 장신구 : {{ColorRed}}화석{{CR}} 타입", "흥정 화석", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.LEFT_FOSSIL, "{{Trinket61}} 모든 상자가 {{RedChest}}빨간상자로 교체됩니다.#분해 시 {{RedChest}}빨간상자를 추가로 소환합니다.#!!! 석기 장신구 : {{ColorRed}}화석{{CR}} 타입", "왼손목 화석", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.THANK_YOU_FOSSIL, "거지가 2배로 보답합니다.#분해 시 Judgement 카드를 추가로 소환합니다.#!!! 석기 장신구 : {{ColorRed}}화석{{CR}} 타입", "감사의 화석", "ko_kr")

EID:addTrinket(FiendFolio.ITEM.ROCK.CURVED_GEODE, "↑ {{DamageSmall}}공격력 +1#↑ 다른 정동석 소지 시 {{DamageSmall}}추가 공격력 +0.5#!!! 석기 장신구 : {{ColorTeal}}정동석{{CR}} 타입", "굽은 정동", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.HAUNTED_GEODE, "확률적으로({{LuckSmall}}) 적과 장애물을 관통하는 눈물을 발사합니다.#다른 정동석 소지 시 확률 증가#!!! 석기 장신구 : {{ColorTeal}}정동석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.HEALTH_GEODE, "전체 체력이 빨간하트 1칸 이하일 때 {{Heart}}체력을 전부 회복합니다.#!!! 최대 체력이 1칸일 경우 빨간하트 반칸일 때 발동#다른 정동석 소지 시 {{SoulHeart}}소울하트를 추가로 획득합니다.#!!! 석기 장신구 : {{ColorTeal}}정동석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.LITTLE_GEODE, "캐릭터의 크기가 작아집니다.#다른 정동석 소지 시 추가로 작아집니다.#!!! 석기 장신구 : {{ColorTeal}}정동석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.QUICK_GEODE, "↑ 클리어한 방에서 {{SpeedSmall}}이동속도가 최소 1.75 이상으로 고정됩니다.#다른 정동석 소지 시 {{SpeedSmall}}고정 이동속도 +0.1#!!! 석기 장신구 : {{ColorTeal}}정동석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.WEBBY_GEODE, "확률적으로(20% + 2x{{LuckSmall}}%p) {{Slow}}적을 둔화시키는 눈물을 발사합니다.#다른 정동석 소지 시 둔화 눈물로 적을 맞추면 적을 느리게 하는 흰색 장판을 생성합니다.#!!! 석기 장신구 : {{ColorTeal}}정동석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.LUCKY_GEODE, "↑ {{LuckSmall}}행운 +3#↑ 다른 정동석 소지 시 {{LuckSmall}}추가 행운 +2#!!! 석기 장신구 : {{ColorTeal}}정동석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.PHLEGMY_GEODE, "확률적으로(10% + {{LuckSmall}}%p) 접착 눈물이 나가며 접착 눈물이 적에게 붙을 시 10초동안 지속 피해를 입힙니다.#다른 정동석 소지 시 접촉 눈물이 {{Slow}}적을 둔화시킵니다.#!!! 석기 장신구 : {{ColorTeal}}정동석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.LOB_GEODE, "↑ {{RangeSmall}}사거리 +6#↑ 다른 정동석 소지 시 {{RangeSmall}}추가 사거리 +3#눈물을 곡선형으로 발사합니다.#!!! 석기 장신구 : {{ColorTeal}}정동석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.SODALITE_GEODE, "확률적으로({{LuckSmall}}) 공격력 x5의 피해를 주는 치명타 눈물을 발사합니다.#!!! 석기 장신구 : {{ColorTeal}}정동석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.PLACEBEODE, "무효과#흡수 시 추가 정동석 소지 효과를 받습니다.#!!! 석기 장신구 : {{ColorTeal}}정동석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.WARM_GEODE, "캐릭터가 불 주변에 있는 동안 {{DamageSmall}}공격력/{{ShotspeedSmall}}탄속 증가#다른 정동석 소지 시 캐릭터가 불 주변에 있는 동안 {{Burning}}적에게 화상을 입히는 눈물을 발사합니다.#따뜻한 스테이지에서는 위 효과가 항상 발동합니다.#!!! 석기 장신구 : {{ColorTeal}}정동석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.CHAIN_GEODE, "장애물 파괴 시 40%의 확률로 인접한 장애물을 파괴합니다.#다른 정동석 소지 시 확률이 70%로 증가하며 추가로 20%의 확률로 인접한 구덩이를 메웁니다.#!!! 석기 장신구 : {{ColorTeal}}정동석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.RUSTY_GEODE, "↑ {{DamageSmall}}서서히 감소하는 공격력 +8#다른 정동석 소지 시 공격력 감소 속도가 느려집니다.#!!! 석기 장신구 : {{ColorTeal}}정동석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.FRAGMENTED_ONYX_GEODE, "10%의 확률로 적을 {{Fear}}도망가게 하는 공격이 나갑니다.#다른 정동석 소지 시 확률이 15%로 증가하며 {{Fear}}공포 상태의 적에게 현재 악마방 확률에 비례한 추가 피해를 줍니다.#!!! 석기 장신구 : {{ColorTeal}}정동석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.QUANTUM_GEODE, "눈물이 3갈래로 나가며 하나를 명중시키면 나머지는 사라집니다.#다른 정동석 소지 시 두개를 명중시키면 나머지는 사라집니다.#!!! 석기 장신구 : {{ColorTeal}}정동석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.TECHNOLOGICAL_GEODE, "공격방향으로 캐릭터의 공격력 x0.3의 매우 짧은 레이저를 발사합니다.#다른 정동석 소지 시 레이저를 2개 동시에 발사합니다.#!!! 석기 장신구 : {{ColorTeal}}정동석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.RUBBER_GEODE, "확률적으로 튕겨져 나가며 적을 멍들게 하고 강하게 밀쳐내는 테니스공을 발사합니다.#다른 정동석 소지 시 테니스공 발사 확률 및 밀쳐내는 강도와 탄속이 추가로 증가합니다.#!!! 석기 장신구 : {{ColorTeal}}정동석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.CALZONE_GEODE, "확률적으로(5% + 5x{{LuckSmall}}%p) {{Bait}}적에게 표식을 걸며 캐릭터에게 다시 돌아오는 처비를 발사합니다.#다른 정동석 소지 시 확률 +10%p#!!! 석기 장신구 : {{ColorTeal}}정동석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.TOUGH_GEODE, "분해 시 확률적으로 장신구가 소모되지 않고 보존됩니다.#다른 정동석 소지 시 보존 확률 증가#!!! 석기 장신구 : {{ColorTeal}}정동석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.TIPSY_GEODE, "↑ {{DamageSmall}}공격력 배율 x2#움직임이 불안정해집니다.#다른 정동석 소지 시 {{DamageSmall}}공격력 배율 x3.5, 이동 불안정성 증가#!!! 석기 장신구 : {{ColorTeal}}정동석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.VINYL_GEODE_A, "↑ {{DamageSmall}}공격력 +1#↑ {{ShotspeedSmall}}탄속 +0.24#짝수 스테이지 진입 시 뒷면으로 뒤집습니다.({{SpeedSmall}}/{{TearsSmall}} 증가)#다른 정동석 소지 시:#↑ {{SpeedSmall}}이동속도 +0.07#↑ {{TearsSmall}}눈물 딜레이 -0.6#!!! 석기 장신구 : {{ColorTeal}}정동석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.VINYL_GEODE_B, "↑ {{SpeedSmall}}이동속도 +0.2#↑ {{TearsSmall}}눈물 딜레이 -1.8#홀수 스테이지 진입 시 앞면으로 뒤집습니다.({{DamageSmall}}/{{ShotspeedSmall}} 증가)#다른 정동석 소지 시:#↑ {{DamageSmall}}공격력 +0.3#↑ {{ShotspeedSmall}}탄속 +0.08#!!! 석기 장신구 : {{ColorTeal}}정동석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.PRISMATIC_GEODE, "적 처치 시 확률적으로 랜덤 능력치를 10초동안 증가시켜주는 프리즘 조각을 드랍합니다.#방 클리어 시 확률적으로 프리즘 조각을 추가로 드랍합니다.#다른 정동석 소지 시 증가량 및 지속시간 증가#!!! 석기 장신구 : {{ColorTeal}}정동석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.FRACTAL_GEODE, "확률적으로 적을 나른하게 만드는 눈물을 회오리 모양으로 발사합니다.#다른 정동석 소지 시 확률적으로 나른한 적을 즉시 잠들게 합니다.#!!! 석기 장신구 : {{ColorTeal}}정동석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.GMO_GEODE, "다른 정동석 소지 시 랜덤 효과의 알약을 강제로 사용합니다.#다른 정동석 소지 시 긍정적 효과의 랜덤 알약을 추가로 사용합니다.#!!! 석기 장신구 : {{ColorTeal}}정동석{{CR}} 타입", "", "ko_kr")
EID:addTrinket(FiendFolio.ITEM.ROCK.SWALLOWED_GEODE, "피격 시 {{Coin}}동전을 하나 드랍합니다.#다른 정동석 소지 시 확률적으로 1+1 동전을 드랍합니다..#!!! 석기 장신구 : {{ColorTeal}}정동석{{CR}} 타입", "", "ko_kr")

EID:addTrinket(FiendFolio.ITEM.ROCK.GEODE_FOSSIL, "↑ {{RangeSmall}}사거리 +8#↑ 다른 정동석 소지 시 {{RangeSmall}}추가 사거리 +6#분해 시 랜덤 정동석을 드랍합니다.#다른 정동석 소지 시 랜덤 정동석을 추가로 드랍합니다.#!!! 석기 장신구 : {{ColorTeal}}정동석{{CR}}+{{ColorRed}}화석{{CR}} 타입", "", "ko_kr")

local diceTable = {
  [880] = {"12", "12번", "{{Collectible386}} 스테이지 안의 모든 장애물 변경"}
}
EID:updateDescriptionsViaTable(diceTable, EID.descriptions["ko_kr"].dice)

-- Golden Trinket Metadata for Golem
EID:addGoldenTrinketMetadata(FiendFolio.ITEM.ROCK.BRICK_ROCK, nil, {15}, 3, "ko_kr")

local function FF_EIDKR_RockCondition(descObj)
  if EID:getLanguage() ~= "ko_kr" then return false end
  if not (descObj.ObjType == EntityType.ENTITY_PICKUP and descObj.ObjVariant == PickupVariant.PICKUP_TRINKET) then return false end
  return FiendFolio.IsRockTrinket(descObj.ObjSubType) and descObj.ObjSubType ~= FiendFolio.ITEM.ROCK.PLACEBEODE
end
local function FF_EIDKR_RockCallback(descObj)
  local isFossil = FiendFolio.IsFossil(descObj.ObjSubType)
  local isGeode = FiendFolio.IsGeode(descObj.ObjSubType)
  local appendDesc = "#!!! 석기 장신구 : "

  if isFossil and isGeode then
    appendDesc = appendDesc .. "{ColorTeal}}정동석{{CR}}+{{ColorRed}}화석{{CR}} 타입"
  elseif isFossil then
    appendDesc = appendDesc .. "{{ColorRed}}화석{{CR}} 타입"
  elseif isGeode then
    appendDesc = appendDesc .. "{{ColorTeal}}정동석{{CR}} 타입"
  elseif descObj.ObjSubType ~= FiendFolio.ITEM.ROCK.PLACEBEODE then
    appendDesc = appendDesc .. "일반 타입"
  end

  EID:appendToDescription(descObj, desc)
  return descObj
end
EID:addDescriptionModifier("FF_EIDKR_GolemTrinkets", FF_EIDKR_RockCondition, FF_EIDKR_RockCallback)



