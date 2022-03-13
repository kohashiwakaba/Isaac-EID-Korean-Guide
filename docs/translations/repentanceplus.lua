--[[ 

	Repentance Plus

 ]]

-- Metadatas for blank card/clear rune/placebo start

	EID:addCardMetadata(CustomConsumables.RED_RUNE, 4, true)
	EID:addCardMetadata(CustomConsumables.QUASAR_SHARD, 6, true)
	EID:addCardMetadata(CustomConsumables.BUSINESS_CARD, 4, false)
	EID:addCardMetadata(CustomConsumables.FLY_PAPER, 12, false)
	EID:addCardMetadata(CustomConsumables.LIBRARY_CARD, 6, false)
	EID:addCardMetadata(CustomConsumables.ANTIMATERIAL_CARD, 12, false)
	EID:addCardMetadata(CustomConsumables.FUNERAL_SERVICES, 12, false)
	EID:addCardMetadata(CustomConsumables.MOMS_ID, 6, false)
	EID:addCardMetadata(CustomConsumables.FIEND_FIRE, 2, false)
	EID:addCardMetadata(CustomConsumables.DEMON_FORM, 12, false)
	EID:addCardMetadata(CustomConsumables.VALENTINES_CARD, 6, false)
	EID:addCardMetadata(CustomConsumables.CURSED_CARD, 2, false)

	EID:addCardMetadata(CustomConsumables.CANINE_OF_WRATH, 6, true)
	EID:addCardMetadata(CustomConsumables.MASK_OF_ENVY, 4, true)
	EID:addCardMetadata(CustomConsumables.CROWN_OF_GREED, 3, true)
	EID:addCardMetadata(CustomConsumables.VOID_OF_GLUTTONY, 12, true)
	EID:addCardMetadata(CustomConsumables.APPLE_OF_PRIDE, 3, true)
	EID:addCardMetadata(CustomConsumables.FLOWER_OF_LUST, 6, true)
	EID:addCardMetadata(CustomConsumables.ACID_OF_SLOTH, 3, true)

	EID:addCardMetadata(CustomConsumables.SPIRITUAL_RESERVES, 12, false)
	EID:addCardMetadata(CustomConsumables.MIRRORED_LANDSCAPE, 2, false)
	EID:addCardMetadata(CustomConsumables.JOKER_Q, 1, false)
	EID:addCardMetadata(CustomConsumables.UNO_REVERSE_CARD, 4, false)
	EID:addCardMetadata(CustomConsumables.KING_OF_SPADES, 6, false)
	EID:addCardMetadata(CustomConsumables.KING_OF_CLUBS, 6, false)
	EID:addCardMetadata(CustomConsumables.KING_OF_DIAMONDS, 6, false)
	EID:addCardMetadata(CustomConsumables.QUEEN_OF_DIAMONDS, 12, false)
	EID:addCardMetadata(CustomConsumables.QUEEN_OF_CLUBS, 12, false)
	EID:addCardMetadata(CustomConsumables.BEDSIDE_QUEEN, 12, false)
	EID:addCardMetadata(CustomConsumables.JACK_OF_DIAMONDS, 2, false)
	EID:addCardMetadata(CustomConsumables.JACK_OF_CLUBS, 2, false)
	EID:addCardMetadata(CustomConsumables.JACK_OF_HEARTS, 2, false)
	EID:addCardMetadata(CustomConsumables.JACK_OF_SPADES, 2, false)

	EID:addPillMetadata(CustomPills.ESTROGEN, 4, "2")
	EID:addPillMetadata(CustomPills.LAXATIVE, 2, "1+")
	EID:addPillMetadata(CustomPills.PHANTOM_PAINS, 4, "2")
	EID:addPillMetadata(CustomPills.YUM, 12, "3+")
	EID:addPillMetadata(CustomPills.YUCK, 6, "2+")

-- Metadata end

-- Korean description start
	EID:addCollectible(CustomCollectibles.ORDINARY_LIFE, "{{ArrowUp}} {{Tears}}연사 증가 #{{TreasureRoom}}보물방에 엄마/아빠 관련 아이템이 한개 더 추가되며 하나를 선택하면 나머지는 사라집니다.", "평범한 삶", "ko_kr")	
	EID:addCollectible(CustomCollectibles.COOKIE_CUTTER, "#사용 시 {{Heart}}최대 체력 +1, {{BrokenHeart}}부서진 하트 +1 #{{Warning}} 모든 체력이 부서진 하트로 채워지면 사망합니다.", "쿠키 커터", "ko_kr")
	EID:addCollectible(CustomCollectibles.SINNERS_HEART, "블랙하트 +2 #{{ArrowUp}} {{Damage}}공격력 +2 #{{ArrowUp}} {{Damage}}공격력 배율 x1.5 #{{ArrowUp}} 사거리 +2 #{{ArrowDown}} 탄속 -0.2 #눈물이 적과 지형을 관통합니다.", "죄인의 심장", "ko_kr")
	EID:addCollectible(CustomCollectibles.RUBIKS_CUBE, "사용시 5% (20회 사용시 100%)의 확률로 퍼즐을 풀고 {{Collectible"..CustomCollectibles.MAGIC_CUBE.."}}Magic Cube 아이템으로 교체됩니다.", "루빅큐브", "ko_kr")
	EID:addCollectible(CustomCollectibles.MAGIC_CUBE, "방 안의 모든 아이템을 다른 아이템으로 바꿉니다.#바뀐 아이템의 배열은 랜덤으로 결정됩니다.", "매직큐브", "ko_kr")
	EID:addCollectible(CustomCollectibles.MAGIC_PEN, "눈물 발사키를 두번 연속 누르면 그 방향으로 {{ColorRainbow}}무지개{{CR}} 장판을 뿌립니다.#무지개 장판을 지나는 적들에게 랜덤 상태이상을 부여합니다#{{Blank}} (쿨타임 4초)", "마법의 펜", "ko_kr")
	EID:addCollectible(CustomCollectibles.MARK_OF_CAIN, "에녹 패밀리어를 소환합니다. #사망시, 에녹을 제외한 다른 패밀리어 아이템이 있다면 모두 제거한 후 그 방에서 체력이 꽉 찬 상태로 부활합니다.#부활 이후 에녹 패밀리어는 알트 에녹으로 강화되며 캐릭터는 잠시동안 무적시간을 얻습니다. #{{Warning}} 단 한번만 발동됨", "카인의 표식", "ko_kr")
	EID:addCollectible(CustomCollectibles.TEMPER_TANTRUM, "피격시 25%의 확률로 {{Collectible704}}폭주 상태로 돌입합니다.#폭주 상태에서 적에게 피해를 줄 경우 5%의 확률로 해당 게임에서 제거합니다.", "울화통", "ko_kr")
	EID:addCollectible(CustomCollectibles.BAG_O_TRASH, "방 클리어시 파란 아군 파리를 생성하는 패밀리어를 소환합니다. #적 탄환을 막을 수 있으며 탄환을 막을 때마다 1%의 확률로 파리가 사라지면서 Breakfast 혹은 Nightsoil 장신구를 드랍합니다. #파리를 유지한 스테이지당 파란 아군 파리 생성량이 늘어납니다.", "쓰레기 봉지", "ko_kr")
	EID:addCollectible(CustomCollectibles.CHERUBIM, "공격하는 방향으로 주변에 오라를 둘러싼 눈물을 발사합니다.", "케루빔", "ko_kr")
	EID:addCollectible(CustomCollectibles.CHERRY_FRIENDS, "적 처치시 20%의 확률로 체리 패밀리어를 드랍합니다. #적이 체리 패밀리어 위를 지나가면 매혹시키는 방귀를 뀝니다.#방 클리어시 체리 패밀리어당 빨간하트 반칸을 드랍합니다.", "체리 친구들", "ko_kr")
	EID:addCollectible(CustomCollectibles.BLACK_DOLL, "새로운 방 진입시, 모든 적들이 둘로 분할됩니다. 한 쪽이 피격되면 다른 한쪽도 60%의 피해를 받습니다.", "흑색인형", "ko_kr")
	EID:addCollectible(CustomCollectibles.BIRD_OF_HOPE, "사망시 잠시동안 무적 유령으로 변신하며 방 중앙에서 새 한마리가 랜덤한 방향을 이동하며 소환됩니다.#5초 이내로 새를 잡으면 부활합니다.#{{Warning}} 사망 횟수에 비례하여 새의 비행속도가 빨라집니다.", "희망의 파랑새", "ko_kr")
	EID:addCollectible(CustomCollectibles.ENRAGED_SOUL, "눈물 발사키를 두번 연속 누르면 그 방향으로 적과 보스에게 달라붙는 유령을 발사합니다. #유령은 7초동안 피해를 입힌 후 사라집니다.#유령의 공격력은 7이며 스테이지 진행도에 비례하여 추가로 증가합니다.#{{Blank}} (쿨타임 7초)", "분노의 영혼", "ko_kr")
	EID:addCollectible(CustomCollectibles.CEREMONIAL_BLADE, "7%의 확률로 피해를 입히지 않으나 출혈을 일으키는 단검을 발사합니다.#출혈 상태의 적이 죽으면 일정시간동안 공격력이 상승하는 {{Card"..CustomConsumables.SACRIFICIAL_BLOOD.."}}Sacrificial Blood를 드랍합니다.", "의례용 단검", "ko_kr")
	EID:addCollectible(CustomCollectibles.CEILING_WITH_THE_STARS, "스테이지 시작시, 혹은 침대에서 자면 {{Collectible712}}레메게톤 불꽃을 두마리 소환합니다.", "별무늬 천장 장식", "ko_kr")
	EID:addCollectible(CustomCollectibles.QUASAR, "현재 방의 모든 적에게 피해를 입히며 현재 방의 아이템당 각각 {{Collectible712}}레메게톤 불꽃 3개씩으로 바꿉니다.", "퀘이사", "ko_kr")
	EID:addCollectible(CustomCollectibles.TWO_PLUS_ONE, "현재 층에서 3번째로 구입하는 아이템의 가격이 1코인으로 바뀝니다. #현재 방에서 체력 거래를 2번 하면 체력 거래 1회를 무료로 할 수 있습니다.", "2+1", "ko_kr")
	EID:addCollectible(CustomCollectibles.RED_MAP, "{{UltraSecretRoom}}특급비밀방의 위치를 보여줍니다. #이미 방문한 {{BossRoom}}보스방과 {{TreasureRoom}}보물방에서 버린 장신구를 전부 {{Card78}}깨진 열쇠로 바꿉니다.", "빨간 지도", "ko_kr")
	EID:addCollectible(CustomCollectibles.CHEESE_GRATER, "사용시 최대 체력 1개를 소모하여 이하 효과 발동: #{{ArrowUp}} {{Damage}}공격력 +" .. tostring(CustomStatups.Damage.CHEESE_GRATER) .. " 작은 아이작 패밀리어를 3마리 소환합니다.", "치즈 강판", "ko_kr")
	EID:addCollectible(CustomCollectibles.DNA_REDACTOR, "알약 사용시, 사용한 알약의 색상에 따라 추가 효과를 발동합니다.", "DNA 변형", "ko_kr")
	EID:addCollectible(CustomCollectibles.TOWER_OF_BABEL, "방 안의 모든 장애물을 파괴하며 캐릭터 주변 적들에게 혼란을 갑니다. #닫힌 문과 비밀방을 강제로 열 수 있습니다.", "바벨탑", "ko_kr")
	EID:addCollectible(CustomCollectibles.BLESS_OF_THE_DEAD, "현재 게임에서 더 이상 저주가 걸리지 않습니다.{{ArrowUp}} 걸렸어야 할 저주를 방어할 때마다 {{Damage}}공격력 +" .. tostring(CustomStatups.Damage.BLESS_OF_THE_DEAD) .. "", "사자의 가호", "ko_kr")
	EID:addCollectible(CustomCollectibles.TANK_BOYS, "방 안을 돌아다니며 앞에 보이는 적을 향해 공격하는 장난감 탱크를 2대 소환합니다.#{{ColorGreen}}녹색{{CR}}: 총알을 빠르게 발사하며 빠르게 움직입니다. #{{ColorRed}}적색{{CR}}: 적을 향해 사거리가 짧은 로켓을 발사하며 느리게 움직입니다.", "탱크보이", "ko_kr")
	EID:addCollectible(CustomCollectibles.GUSTY_BLOOD, "적 처치 시 그 방에서 {{Tears}}연사와 {{Speed}}이동속도가 증가합니다.", "돌풍의 피", "ko_kr")
	EID:addCollectible(CustomCollectibles.RED_BOMBER, "↑ 폭탄 +5 #폭발 공격에 피해를 입지 않습니다.#폭탄을 설치하는 대신 직접 던질 수 있습니다.", "레드 봄버맨", "ko_kr")
	EID:addCollectible(CustomCollectibles.MOTHERS_LOVE, "현재 데리고 있는 패밀리어 당 능력치 증가#패밀리어의 등급에 따라 증가폭이 다르거나 적용되지 않습니다.", "엄마의 사랑", "ko_kr")
	EID:addCollectible(CustomCollectibles.CAT_IN_A_BOX, "방 진입 시, 적들의 체력이 50% 감소하나 3초 후 체력을 전부 회복합니다.#보스에게는 적용되지 않습니다.", "상자 안 고양이", "ko_kr")
	EID:addCollectible(CustomCollectibles.BOOK_OF_GENESIS, "소지한 랜덤 아이템 하나를 제거한 후 해당 아이템과 같은 등급의 아이템 3개 중 하나를 획득할 수 있습니다.#{{Blank}} (루트 진행 아이템은 영향을 받지 않음)", "창세기의 책", "ko_kr")
	EID:addCollectible(CustomCollectibles.SCALPEL, "눈물을 반대 방향으로 쏩니다. #원래 방향으로는 캐릭터 공격력의 x0.66의 핏방울을 발사합니다. #{{Blank}} (눈물 이외의 무기는 영향을 받지 않음)", "외과용 메스", "ko_kr")
	EID:addCollectible(CustomCollectibles.KEEPERS_PENNY, "스테이지 진입 시 황금동전을 소환합니다. #상점에서 상점, 보물방, 보스방 배열의 추가 아이템을 1~4개 판매합니다. #Greed 미니보스 처치 시, 처치한 시점에서 추가 아이템이 3~4개 생성됩니다.", "키퍼의 페니", "ko_kr")
	EID:addCollectible(CustomCollectibles.NERVE_PINCH, "8초동안 쉬지않고 눈물을 쏘거나 움직이면 쥐가 납니다. #{{ArrowDown}} 쥐가 나면 {{Collectible486}}피해를 입지 않고 피격 시 발동 효과를 발동하며 {{Speed}}이동속도가 " .. tostring(CustomStatups.Speed.NERVE_PINCH) .. " 감소합니다.#{{ArrowUp}} 쥐가 나면 80%의 확률로 현재 소지한 액티브 아이템을 충전량 소모 없이 발동합니다.#{{Blank}} (일회용 및 쿨타임이 없는 아이템 제외)", "신경통", "ko_kr")
	EID:addCollectible(CustomCollectibles.BLOOD_VESSELS[1], "피격시 피해를 입는 대신 피통에 피가 채워집니다. #6회까지 채울 수 있으며 전부 채워진 후 사용하거나, 피격시 각각 세칸, 세칸 반의 피해를 받습니다.", "피통", "ko_kr")
	EID:addCollectible(CustomCollectibles.SIBLING_RIVALRY, "두 패밀리어가 캐릭터의 주변을 돌며 15초마다 상태가 바뀝니다: #두 패밀리어가 캐릭터 주변을 빠르게 돕니다. #패밀리어 하나가 캐릭터에게 더 가깝고 느리게 돌며 피장판을 뿌리는 이빨을 주기적으로 발사합니다.#{{Warning}} 두 패밀리어 모두 적의 탄환을 막아주며 접촉 피해를 입힙니다.", "투닥투닥 형제들", "ko_kr")
	EID:addCollectible(CustomCollectibles.RED_KING, "보스방 클리어시, 빨간 트랩도어가 생성됩니다. #빨간 트랩도어 진입시, 더 어려운 보스전으로 진입합니다. #빨간 보스 처치 시 특급비밀방 배열의 아이템을 드랍합니다.", "적색황제", "ko_kr")
	EID:addCollectible(CustomCollectibles.STARGAZERS_HAT, "망원경 거지를 소환합니다. #소울하트/블랙하트 획득 시 체력으로 획득되지 않는 대신 하트 0.5개당 한칸씩 충전됩니다. (소울하트 2개로 최대 충전)#망원경 거지는 동전 5개를 지불하여 100%의 확률로 룬(83%), 혹은 우주 타입의 아이템(17%)을 드랍합니다.", "천문학자의 모자", "ko_kr")
	EID:addCollectible(CustomCollectibles.BOTTOMLESS_BAG, "사용시 가방을 머리 위에 들며: #4초동안 캐릭터 주변의 모든 탄환을 흡수합니다. #흡수한 탄환 수에 비례하여 공격 발사키를 누르고 있으면 4초동안 그 방향으로 탄환을 발사합니다.", "무한가방", "ko_kr")
	EID:addCollectible(CustomCollectibles.CROSS_OF_CHAOS, "캐릭터 주변의 적을 무력화시킵니다.#2%의 확률로 적을 무력화시키는 눈물을 발사합니다. #무력화된 적은 이동속도가 매우 느려지며 12초 이후 처치됩니다. #무력화된 적이 처치될 시, 주변에 적을 느리게 하는 검은 핏방울을 분출합니다.", "혼돈의 십자가", "ko_kr")
	EID:addCollectible(CustomCollectibles.REJECTION, "소지하는 동안, 눈물을 쏘지 않으며 접촉시 2.5의 피해를 주는 패밀리어를 소환합니다.#사용시 캐릭터를 따라다니는 패밀리어를 전부 소모하여 공격하는 방향으로 적을 관통하는 매우 거대한 독성 내장공을 던집니다. #!!! 내장공 공격력: 캐릭터의 공격력* 4 * 희생한 패밀리어 수", "폐기", "ko_kr")
	EID:addCollectible(CustomCollectibles.AUCTION_GAVEL, "현재 방 배열의 판매 아이템을 소환합니다. #아이템의 가격은 0.2초마다 랜덤으로 바뀌며 서서히 증가합니다. #방을 나가면 아이템이 사라집니다.", "경매 망치", "ko_kr")
	EID:addCollectible(CustomCollectibles.SOUL_BOND, "주변의 적 하나와 캐릭터를 체인으로 서로 묶은 후 얼립니다. #체인에 닿은 적은 매우 큰 피해를 입습니다. #묶인 적과 캐릭터의 간격이 너무 멀면 체인이 부서집니다. #묶인 적 처치 시 33%의 확률로 소울하트를 드랍합니다.", "영혼의 끈", "ko_kr")
	EID:addCollectible(CustomCollectibles.ANGELS_WINGS, "{{ArrowUp}} {{Shotspeed}}탄속 +0.3 #눈물 대신 멀어질수록 공격력이 증가하며 적을 관통하는 깃털을 발사합니다. #눈물 발사키를 두번 연속 누르면 Dogma 보스 관련 공격 하나를 랜덤으로 전개합니다.#{{Blank}} (쿨타임 6초)", "천사의 날개", "ko_kr")
	EID:addCollectible(CustomCollectibles.HAND_ME_DOWNS, "{{ArrowUp}} {{Speed}}이동속도 +0.2 #게임오버시 캐릭터가 소지한 아이템 중 3개를 해당 스테이지에 드랍합니다.#다음 게임에서 해당 스테이지 진입시, 전 게임에서 드랍한 아이템을 획득할 수 있습니다.", "물려받은 물건", "ko_kr")
	EID:addCollectible(CustomCollectibles.BOOK_OF_LEVIATHAN, "!!! 아이템 사용에 열쇠 필요:#사용 시 방 안의 모든 적을 무력화시킵니다.#무력화된 적은 이동속도가 매우 느려지며 12초 이후 처치됩니다. #열쇠 관련 장신구와의 시너지가 있습니다.", "레비아탄의 책", "ko_kr")
	EID:addCollectible(CustomCollectibles.FRIENDLY_SACK, "방을 3개 클리어할 때마다 약한 패밀리어를 소환합니다(Dip, Blood clot, fly 등) #3번쨰 방이 보스방인 경우 아군 적을 대신 소환합니다.", "친구 자루", "ko_kr")	
	EID:addCollectible(CustomCollectibles.MAGIC_MARKER, "획득 시 타로 카드를 하나 드랍합니다.#사용시, 현재 들고 있는 타로 타입의 카드 번호를 1씩 증가합니다.#{{Blank}}(역방향의 경우 1씩 감소)", "마법의 마커", "ko_kr")
	EID:addCollectible(CustomCollectibles.ULTRA_FLESH_KID, "적을 따라다니며 접촉한 적에게 피해를 줍니다.#빨간 하트를 일정량 모을 시 최대 3단계까지 진화할 수 있습니다.#최대 진화까지 총 하트 15개가 필요합니다.", "살코기 아이", "ko_kr")
	EID:addCollectible(CustomCollectibles.VAULT_OF_HAVOC, "적 처치 시 금고에 적이 저장됩니다(최대 12)#사용 시, 최근에 처치한 적 12마리와 특수한 보스방에서 전투를 합니다.#해당 보스방 클리어 시 해당 방에서 전투한 적들의 총합 최대 체력에 비례한 보상을 받습니다.", "파괴의 금고", "ko_kr")
	EID:addCollectible(CustomCollectibles.PURE_SOUL, "7대죄악 미니보스 처치 시 100%의 확률로 각 죄에 대응되는 {{ColorRed}}죄악의 보석{{CR}}을 드랍합니다. #{{SecretRoom}}{{SuperSecretRoom}}비밀방/일급비밀방 진입 시 일정 확률로 유령이 나타나며 유령에 접촉 시 미니보스를 소환합니다.#미니보스방의 문 입구에 유령이 나타나 어느 미니보스가 나올 것인지 알려줍니다.", "순결한 영혼", "ko_kr")
	EID:addCollectible(CustomCollectibles.HANDICAPPED_PLACARD, "사용 시 캐릭터의 위치에 플래카드를 설치합니다.#{{Weakness}} 플래카드의 범위 안에 있는 적들을 약화시키며 처치 시 뼛조각을 생성합니다. #피격 시 플래카드의 범위가 커집니다.#!!! 적이 없는 방에서 사용 불가", "장애인 플래카드", "ko_kr")
	EID:addCollectible(CustomCollectibles.BOOK_OF_JUDGES, "소지 시, 적이 있는 방에서 파란 타겟 여러개가 생성됩니다.#3초마다 빛줄기가 떨어지며 빛줄기는 캐릭터에게 피해를, 적에게 화상 피해를 줍니다.#사용 시 현재 방에서 빛줄기가 떨어지지 않습니다.", "심판의 책", "ko_kr")


	EID:addTrinket(CustomTrinkets.BASEMENT_KEY, "황금상자를 15%의 확률로 낡은 상자로 대체합니다.", "지하실 열쇠", "ko_kr")
	EID:addTrinket(CustomTrinkets.KEY_TO_THE_HEART, "적 처치 시 5%의 확률로 생체상자를 드랍합니다.#생체상자에서는 하트류 픽업, 알약이나 몸체 관련 아이템 및 장신구를 드랍합니다.", "심장열쇠", "ko_kr")
	EID:addTrinket(CustomTrinkets.JUDAS_KISS, "적과 접촉 시 해당 적에게 표식을 부여합니다. ({{Collectible618}}Rotten Tomato와 비슷한 효과)", "유다의 키스", "ko_kr")
	EID:addTrinket(CustomTrinkets.TRICK_PENNY, "도박기계, 거지류, 잠긴 상자에서 동전/폭탄/열쇠 사용 시 17%의 확률로 소모되지 않습니다.", "속임수 동전", "ko_kr")
	EID:addTrinket(CustomTrinkets.SLEIGHT_OF_HAND, "17%의 확률로 한 단계 더 높은 동전이 소환됩니다: #페니 -> 1+1 페니 -> 끈적이는 니켈 -> 니켈 -> 다임 -> 럭키 페니 -> 황금 페니", "교묘한 손기술", "ko_kr")
	EID:addTrinket(CustomTrinkets.GREEDS_HEART, "{{ArrowUp}}빈 코인하트 +1 #모든 하트 중에서 가장 먼저 소모되며 동전으로만 회복할 수 있습니다.", "탐욕의 심장", "ko_kr")
	EID:addTrinket(CustomTrinkets.ANGELS_CROWN, "보물방이 코인을 요구하는 천사 상점으로 바뀝니다. #보물방에서의 천사 보스는 열쇠 조각을 드랍하지 않습니다!", "천사의 왕관", "ko_kr")
	EID:addTrinket(CustomTrinkets.MAGIC_SWORD, "{{ArrowUp}} {{Damage}}공격력 배율 x2 #Duct Tape를 소지하지 않은 경우 패널티 피격 시 부러집니다.", "완드", "ko_kr")
	EID:addTrinket(CustomTrinkets.WAIT_NO, "무효과: 이미 부러진 완드입니다.", "안돼에에에", "ko_kr")
	EID:addTrinket(CustomTrinkets.EDENS_LOCK, "피격 시 소지한 아이템 중 하나가 다른 아이템으로 바뀝니다.#루트 진행 아이템은 이 장신구의 효과를 받지 않습니다.", "에덴의 자물쇠", "ko_kr")
	EID:addTrinket(CustomTrinkets.PIECE_OF_CHALK, "클리어하지 않은 방에 진입 시 밟은 적들을 매우 느려지게 하는 분필가루를 뿌립니다. #분필가루는 10초동안 지속됩니다.", "분필 조각", "ko_kr")
	EID:addTrinket(CustomTrinkets.ADAMS_RIB, "사망 시, Eve 캐릭터로 부활합니다.", "아담의 갈비뼈", "ko_kr")
	EID:addTrinket(CustomTrinkets.NIGHT_SOIL, "스테이지 진입 시 저주가 걸릴 확률이 75% 감소합니다.", "분뇨", "ko_kr")
	EID:addTrinket(CustomTrinkets.BONE_MEAL, "스테이지 진입 시 효과 발동:#{{ArrowUp}} {{Damage}}공격력 배율 x1.1 #{{ArrowUp}} 캐릭터의 크기가 커집니다. #이 효과는 영구적으로 적용됩니다.", "뼛가루", "ko_kr")
	EID:addTrinket(CustomTrinkets.TORN_PAGE, "책 종류의 아이템이 증폭되거나 전혀 새로운 효과를 발동하며 충전 속도가 빨라집니다. #이 장신구는 책방에서만 33%의 확률로 등장합니다.", "찢어진 페이지", "ko_kr")
	EID:addTrinket(CustomTrinkets.EMPTY_PAGE, "책 종류의 아이템 사용시 랜덤 액티브 아이템 하나를 추가로 발동합니다. #아이템을 돌리는 효과, 캐릭터를 사망시키거나 자해하는 아이템은 발동되지 않습니다. #이 장신구는 책방에서만 33%의 확률로 등장합니다.", "빈 페이지", "ko_kr")
	EID:addTrinket(CustomTrinkets.BABY_SHOES, "적과 보스의 크기 및 피격 판정 범위를 20% 감소시킵니다.", "꼬까신", "ko_kr")
	EID:addTrinket(CustomTrinkets.KEY_KNIFE, "피격시 5%의 확률로 {{Collectible705}}Dark Arts 효과 발동 #악마방에서의 빨간상자 등장 빈도가 증가합니다.", "열쇠칼", "ko_kr")
	EID:addTrinket(CustomTrinkets.SHATTERED_STONE, "열쇠 혹은 폭탄을 주울 시 일정 확률로 랜덤 자폭 파리를 생성합니다. #생성 확률은 주운 픽업의 레어도에 비례합니다.", "조각난 석상", "ko_kr")
	
	EID:addCard(CustomConsumables.SPINDOWN_DICE_SHARD, "{{Collectible723}} Spindown Dice 효과 발동:#사용 시 방 안의 모든 아이템을 코드 뒷번호의 아이템으로 바꿉니다.#해금하지 않은 아이템은 등장하지 않습니다.", "스핀다운 주사위 파편", "ko_kr")
	EID:addCard(CustomConsumables.RED_RUNE, "방 안의 적 전체에게 대미지를 줍니다.#50%의 확률로 방 안의 아이템을 심연의 파리로, 픽업 아이템을 랜덤 자폭 파리로 바꿉니다.", "레드 룬", "ko_kr")
	EID:addCard(CustomConsumables.NEEDLE_AND_THREAD, "부서진 하트 하나를 {{Heart}}최대 체력으로 바꿉니다.", "바느질", "ko_kr")
	EID:addCard(CustomConsumables.QUEEN_OF_DIAMONDS, "{{Coin}}랜덤 동전을 1~12개 드랍합니다.", "다이아 Q", "ko_kr")
	EID:addCard(CustomConsumables.KING_OF_SPADES, "열쇠와 황금열쇠를 모두 소모하여 그에 비례한 수의 픽업 아이템을 소환합니다. #장신구는 최소 9개, 아이템은 최소 21개의 열쇠가 필요합니다.", "스페이드 K", "ko_kr")
	EID:addCard(CustomConsumables.KING_OF_CLUBS, "폭탄과 황금폭탄을 모두 소모하여 그에 비례한 수의 픽업 아이템을 소환합니다. #장신구는 최소 9개, 아이템은 최소 21개의 폭탄이 필요합니다.", "클럽 K", "ko_kr")
	EID:addCard(CustomConsumables.KING_OF_DIAMONDS, "동전을 모두 소모하여 그에 비례한 수의 픽업 아이템을 소환합니다. #장신구는 최소 21개, 아이템은 최소 54개의 동전이 필요합니다.", "다이아 K", "ko_kr")
	EID:addCard(CustomConsumables.BAG_TISSUE, "방 안의 모든 픽업을 소모하여 그 중 가장 품질이 좋은 8개의 픽업을 기반으로 아이템을 하나 소환합니다.#픽업이 희귀할수록 (예시:{{EthernalHeart}}이터널하트, {{Battery}}메가배터리) 소환되는 아이템의 퀄리티가 높아집니다.#{{Warning}} 방 안의 픽업이 8개 미만일 경우 아이템이 소환되지 않습니다.", "여행용 티슈", "ko_kr")
	EID:addCard(CustomConsumables.JOKER_Q, "블랙마켓으로 텔레포트합니다.", "조커?", "ko_kr")
	EID:addCard(CustomConsumables.UNO_REVERSE_CARD, "{{Collectible422}} Glowing Hour Glass 효과 발동:#사용 시 이전 방의 시점으로 시간을 되돌립니다.", "되돌리기 카드", "ko_kr")
	EID:addCard(CustomConsumables.LOADED_DICE, "{{ArrowUp}} 현재 방에서 {{Luck}}행운 +10", "속임수 주사위", "ko_kr")
	EID:addCard(CustomConsumables.BEDSIDE_QUEEN, "{{Key}}열쇠를 1~12개 드랍합니다.#낮은 확률로 충전된 열쇠를 드랍합니다.", "머리맡 Q", "ko_kr")
	EID:addCard(CustomConsumables.QUEEN_OF_CLUBS, "{{Bomb}}폭탄을 1~12개 드랍합니다.#낮은 확률로 1+1 폭탄을 드랍합니다.", "클럽 Q", "ko_kr")
	EID:addCard(CustomConsumables.JACK_OF_CLUBS, "현재 층에서 폭탄이 드랍할 확률과 폭탄이 특수 폭탄으로 대체될 확률을 60% 증가시킵니다.", "클럽 J", "ko_kr")
	EID:addCard(CustomConsumables.JACK_OF_DIAMONDS, "현재 층에서 동전이 드랍할 확률과 동전이 특수 동전으로 대체될 확률을 60% 증가시킵니다.", "다이아 J", "ko_kr")
	EID:addCard(CustomConsumables.JACK_OF_SPADES, "현재 층에서 열쇠가 드랍할 확률과 열쇠가 특수 열쇠로 대체될 확률을 60% 증가시킵니다.", "스페이드 J", "ko_kr")
	EID:addCard(CustomConsumables.JACK_OF_HEARTS, "현재 층에서 하트가 드랍할 확률과 하트가 특수 하트로 대체될 확률을 60% 증가시킵니다.", "하트 J", "ko_kr")
	EID:addCard(CustomConsumables.QUASAR_SHARD, "현재 방의 모든 적에게 피해를 입히며 현재 방의 아이템당 각각 {{Collectible712}}레메게톤 불꽃 3개씩으로 바꿉니다.", "퀘이사 파편", "ko_kr")
	EID:addCard(CustomConsumables.BUSINESS_CARD, "사용 시 캐릭터가 움직이는 방향으로 움직이며 공격하는 방향으로 공격하는 아군 적을 소환합니다.", "사업 카드", "ko_kr")
	EID:addCard(CustomConsumables.SACRIFICIAL_BLOOD, "{{ArrowUp}} {{Damage}}공격력 +1.25(중첩 가능)#공격력 증가 효과는 20초동안 서서히 사라집니다 #{{ArrowUp}} {{Collectible216}}Ceremonial Robes 소지시 빨간하트 +1 #{{Warning}} 연속적으로 사용시 공격력 감소 속도가 빨라집니다.", "희생의 제물", "ko_kr")
	EID:addCard(CustomConsumables.LIBRARY_CARD, "랜덤 책 효과를 발동합니다.", "도서관 카드", "ko_kr")
	EID:addCard(CustomConsumables.FLY_PAPER, "{{Collectible693}}The Swarm 아이템의 파리 8마리를 소환합니다.", "파리잡이 끈끈이", "ko_kr")
	EID:addCard(CustomConsumables.MOMS_ID , "방 안의 적들 위에 캐릭터의 공격력 x2의 피해를 주는 엄마의 식칼을 투척시킵니다.", "엄마의 신분증", "ko_kr")
	EID:addCard(CustomConsumables.FUNERAL_SERVICES , "낡은 상자를 소환합니다.", "장례식", "ko_kr")
	EID:addCard(CustomConsumables.ANTIMATERIAL_CARD , "Chaos Card처럼 던질 수 있음 #카드와 접촉한 적을 해당 게임에서 제거합니다.", "반물질 카드", "ko_kr")
	EID:addCard(CustomConsumables.FIEND_FIRE, "동전, 열쇠, 폭탄을 전부 소모하여 방 전체에 커다란 대미지를 줍니다.#합계 7-40: 15의 피해를 입으며 4초동안 불에 붙습니다. #합계 41-80: 적들이 30의 피해를 입으며 8초동안 불에 붙습니다.; 캐릭터 주변의 장애물을 파괴합니다. #함계 81+: 적들이 60의 피해를 입으며 16초동안 불에 붙습니다.; Mama Mega 폭발이 발생합니다.", "불장난", "ko_kr")
	EID:addCard(CustomConsumables.DEMON_FORM, "{{ArrowUp}} 클리어하지 않은 방에 들어갈 때마다 {{Damage}}공격력 +0.2#다음 스테이지 진입 시 효과가 사라집니다.", "악마화", "ko_kr")
	EID:addCard(CustomConsumables.VALENTINES_CARD, "Chaos Card처럼 던질 수 있음 #카드와 접촉한 적을 아군으로 만들며 빨간하트 하나를 드랍합니다.", "발렌타인 카드", "ko_kr")
	EID:addCard(CustomConsumables.SPIRITUAL_RESERVES, "캐릭터의 주변을 돌고 적의 탄환을 막아주며 지형을 관통하는 눈물을 발사하는 유령 패밀리어를 2마리 소환합니다.#3회 피격시 사라지며 소울하트 반칸을 드랍합니다.", "영혼의 보호", "ko_kr")
	EID:addCard(CustomConsumables.MIRRORED_LANDSCAPE, "현재 소지한 액티브 아이템을 픽업 슬롯으로 이동시킵니다.#이미 픽업 슬롯에 액티브 아이템이 있을 경우 액티브 아이템을 내려놓습니다.", "거울세계의 풍경", "ko_kr")
	EID:addCard(CustomConsumables.CURSED_CARD, "현재 방에서 피격 시 체력이 감소하지 않으나, 소지 불가능 체력이 하나 추가되며 연사가 영구적으로 증가합니다.", "저주받은 카드", "ko_kr")
	--
	EID:addCard(CustomConsumables.CROWN_OF_GREED , "{{Coin}} 황금 동전을 1~2개 드랍합니다.#{{ArrowDown}} 드랍한 황금 동전 개수 당 {{Luck}}운 -1", "탐욕의 왕관", "ko_kr")
	EID:addCard(CustomConsumables.FLOWER_OF_LUST, "현재 방을 다시 시작하며 방 클리어 시 더 좋은 보상을 드랍합니다.", "색욕의 꽃", "ko_kr")
	EID:addCard(CustomConsumables.ACID_OF_SLOTH, "방 안의 모든 적들을 50% 느리게 하며 처치 시 독장판을 생성합니다.", "나태의 독", "ko_kr")
	EID:addCard(CustomConsumables.VOID_OF_GLUTTONY, "방 안의 모든 적들을 흡수합니다. #흡수한 적들의 최대 체력에 따라 캐릭터의 최대 체력 +1, 혹은 Cyst 적을 뱉습니다.", "식탐의 공허", "ko_kr")
	EID:addCard(CustomConsumables.APPLE_OF_PRIDE, "{{ArrowUp}} 모든 능력치 증가#!!! 피격 시 해제됩니다.", "교만의 사과", "ko_kr")
	EID:addCard(CustomConsumables.CANINE_OF_WRATH, "방 안의 모든 적들이 15의 폭발 피해를 받습니다. #{{Warning}} 캐릭터도 폭발 피해를 받을 수 있음 #적이 폭발로 처치될 때마다 서서히 감소하는 공격력이 증가합니다.", "분노의 송곳니", "ko_kr")
	EID:addCard(CustomConsumables.MASK_OF_ENVY, "#{{ArrowUp}}연사 증가 #모든 최대 체력을 {{BoneHeart}}뼈하트+{{RottenHeart}}썩은하트로 바꾸며 소울하트와 위치를 서로 바꿉니다.", "질투의 가면", "ko_kr")


	
	EID:addPill(CustomPills.ESTROGEN, "빨간하트가 한칸이 되며 나머지 빨간하트를 전부 꼬마 클롯으로 바꿉니다.", "에스트로겐", "ko_kr")
	EID:addPill(CustomPills.LAXATIVE, "3초동안 캐릭터의 뒤로 옥수수 탄환을 발사합니다.", "설사약", "ko_kr")
	EID:addPill(CustomPills.PHANTOM_PAINS, "사용 시 피해를 입지 않고 피격 시 발동 효과를 발동합니다.#15초, 30초 이후에 각각 한번씩 더 발동합니다.", "헛통증", "ko_kr")
	EID:addPill(CustomPills.YUCK, "썩은하트를 하나 드랍합니다.#30초동안 빨간하트를 주울 때마다 파란 아군 파리를 소환합니다.", "우웩", "ko_kr")
	EID:addPill(CustomPills.YUM, "빨간하트를 하나 드랍합니다.#30초동안 빨간하트를 주울 때마다 능력치가 소량 증가합니다.", "냠", "ko_kr")


	EID:addEntity(5, 10, 84, "부서진 하트", "습득 시 최대체력 +1, 소지 불가능 체력 +1", "ko_kr")
	EID:addEntity(5, 10, 85, "기죽지 않는 하트", "???", "ko_kr")
	EID:addEntity(5, 10, 86, "모아진 하트", "습득 시 빨간하트 +4", "ko_kr")
	EID:addEntity(5, 10, 87, "배신의 하트", "???", "ko_kr")
	EID:addEntity(5, 10, 88, "더러운 하트", "???", "ko_kr")
	EID:addEntity(5, 10, 89, "멍울진 하트", "습득 시 빨간하트와 더불어 꼬마 클롯 패밀리어 소환", "ko_kr")
	EID:addEntity(5, 10, 90, "사나운 하트", "{{Damage}} 습득 시 빨간하트와 더불어 25초동안 서서히 감소하는 공격력 +1.25", "ko_kr")
	EID:addEntity(5, 10, 91, "우매한 하트", "{{Damage}} 습득 시 블랙하트와 더불어 영구적 공격력 +0.1", "ko_kr")
	EID:addEntity(5, 10, 92, "수수께끼 하트", "{{EmptyHeart}} 빈 최대 체력 +1", "ko_kr")
	EID:addEntity(5, 10, 93, "뒤섞인 하트", "습득 시 다른 랜덤 하트 픽업 3개로 분해됩니다.", "ko_kr")
	EID:addEntity(5, 10, 94, "사악한 하트", "???", "ko_kr")
	EID:addEntity(5, 10, 95, "매춘 하트", "???", "ko_kr")
	EID:addEntity(5, 10, 96, "구두쇠 하트", "???", "ko_kr")
	EID:addEntity(5, 10, 97, "공허 하트", "{{Collectible706}} 소지한 상태에서 스테이지 진입 시 심연의 파리를 획득합니다.", "ko_kr")
	EID:addEntity(5, 10, 98, "굳은 하트", "열쇠 1개를 소모하여 소울하트 1.5칸을 획득합니다.", "ko_kr")
	EID:addEntity(5, 10, 99, "신뢰 하트", "{{Collectible712}} 소지한 상태에서 스테이지 진입 시 레메게톤 불꽃을 소환합니다.", "ko_kr")
	EID:addEntity(5, 10, 100, "방랑자 하트", "습득 시 빨간하트를, 빨간하트를 주울 수 없으면 블랙하트를 획득합니다.", "ko_kr")



-- Korean Translation end

-- Modifier description start
TornPageDesc = {}
TornPageDesc["en_us"] = {
	[-1] = "<No effect (probably because the book is modded)>", --Modded books
	[CustomCollectibles.BOOK_OF_GENESIS] = "Gives you 4 options to choose from instead of 3",
	[CustomCollectibles.BOOK_OF_LEVIATHAN] = "Doesn't require keys to be used",
	[CollectibleType.COLLECTIBLE_NECRONOMICON] = "Spawns 3 locusts of death on use",
	[CollectibleType.COLLECTIBLE_BIBLE] = "Removes a broken heart",
	[CollectibleType.COLLECTIBLE_BOOK_OF_REVELATIONS] = "Prevents Harbingers from spawning in boss rooms",
	[CollectibleType.COLLECTIBLE_BOOK_OF_BELIAL] = "Also grants Eye of Belial effect for the room",
	[CollectibleType.COLLECTIBLE_BOOK_OF_SIN] = "Has a 3% chance to spawn a pedestal item, normal chest or a golden chest",
	[CollectibleType.COLLECTIBLE_BOOK_OF_SHADOWS] = "The shield has extended durability",
	[CollectibleType.COLLECTIBLE_BOOK_OF_THE_DEAD] = "Grants a bone heart on use",
	[CollectibleType.COLLECTIBLE_HOW_TO_JUMP] = "When landing, shoot tears in X or + pattern",
	[CollectibleType.COLLECTIBLE_BOOK_OF_VIRTUES] = "All wisps have 1.5x more health",
	[CollectibleType.COLLECTIBLE_SATANIC_BIBLE] = "Grants you a choice of 2 devil deal items after defeating a boss",
	[CollectibleType.COLLECTIBLE_TELEPATHY_BOOK] = "Grants the Wiz (Dunce Cap) effect on use",
	[CollectibleType.COLLECTIBLE_ANARCHIST_COOKBOOK] = "Spawns a golden troll bomb instead",
	[CollectibleType.COLLECTIBLE_LEMEGETON] = "Can be used at partial charge to gain remaining charges at the cost of player's red health (as if you have {{Collectible205}})",
	[CollectibleType.COLLECTIBLE_BOOK_OF_SECRETS] = "Gains 2 charges back when used",
	[CollectibleType.COLLECTIBLE_MONSTER_MANUAL] = "Gains 2 charges back when used",
}
TornPageDesc["ko_kr"] = {
	[-1] = "<추가 효과 없음>", --Modded books
	[CustomCollectibles.BOOK_OF_GENESIS] = "3개가 아닌 4개의 선택지가 주어집니다.",
	[CustomCollectibles.BOOK_OF_LEVIATHAN] = "열쇠 없이 사용할 수 있습니다.",
	[CollectibleType.COLLECTIBLE_NECRONOMICON] = "죽음의 메뚜기 파리 3마리를 소환합니다.",
	[CollectibleType.COLLECTIBLE_BIBLE] = "소지 불가능 하트 하나를 제거합니다.",
	[CollectibleType.COLLECTIBLE_BOOK_OF_REVELATIONS] = "보스가 4기사로 교체되지 않습니다.",
	[CollectibleType.COLLECTIBLE_BOOK_OF_BELIAL] = "현재 방에서 Eye of Belial 아이템의 효과를 얻습니다.",
	[CollectibleType.COLLECTIBLE_BOOK_OF_SIN] = "3%의 확률로 아이템, 상자, 혹은 황금상자를 드랍합니다.",
	[CollectibleType.COLLECTIBLE_BOOK_OF_SHADOWS] = "보호막의 지속 시간이 증가합니다.",
	[CollectibleType.COLLECTIBLE_BOOK_OF_THE_DEAD] = "{{BoneHeart}}뼈하트 +1",
	[CollectibleType.COLLECTIBLE_HOW_TO_JUMP] = "착지 시 십자, 혹은 X자 방향으로 눈물을 쏩니다.",
	[CollectibleType.COLLECTIBLE_BOOK_OF_VIRTUES] = "불꽃의 체력이 1.5배로 증가합니다.",
	[CollectibleType.COLLECTIBLE_SATANIC_BIBLE] = "보스방의 악마 거래 아이템이 하나 추가됩니다. 둘 중 하나만 획득할 수 있습니다.",
	[CollectibleType.COLLECTIBLE_TELEPATHY_BOOK] = "사용시 the Wiz 아이템의 효과를 얻습니다.",
	[CollectibleType.COLLECTIBLE_ANARCHIST_COOKBOOK] = "황금 트롤 폭탄이 대신 소환됩니다.",
	[CollectibleType.COLLECTIBLE_LEMEGETON] = "{{Collectible205}}충전량이 부족한 경우 빨간하트를 소모하여 재충전할 수 있습니다.",
	[CollectibleType.COLLECTIBLE_BOOK_OF_SECRETS] = "사용시 2칸의 충전량을 보존합니다.",
	[CollectibleType.COLLECTIBLE_MONSTER_MANUAL] = "사용시 2칸의 충전량을 보존합니다.",
}
KeyTrinketsDesc = {}
KeyTrinketsDesc["en_us"] = {
	[CustomTrinkets.BASEMENT_KEY] = "Crippled enemies can spawn bone orbitals on death",
	[CustomTrinkets.KEY_TO_THE_HEART] = "Crippled enemies can drop half red heart on death",
	[CustomTrinkets.KEY_KNIFE] = "Applies bleed to crippled enemies",
	[TrinketType.TRINKET_STORE_KEY] = "Crippled enemies can drop random pickup on death",
	[TrinketType.TRINKET_RUSTED_KEY] = "Applies confusion to crippled enemies",
	[TrinketType.TRINKET_CRYSTAL_KEY] = "Can randomly freeze enemies on death",
	[TrinketType.TRINKET_BLUE_KEY] = "Crippled enemies can drop half soul heart on death",
	[TrinketType.TRINKET_STRANGE_KEY] = "Applies random status effect to enemies",
	[TrinketType.TRINKET_GILDED_KEY] = "Can randomly Midas freeze enemies on use",
}

KeyTrinketsDesc["ko_kr"] = {
	[CustomTrinkets.BASEMENT_KEY] = "무력화된 적 처치 시 확률적으로 캐릭터 주변을 도는 뼛조각을 소환합니다.",
	[CustomTrinkets.KEY_TO_THE_HEART] = "무력화된 적 처치 시 확률적으로 빨간하트 반칸을 드랍합니다.",
	[CustomTrinkets.KEY_KNIFE] = "방 안의 적에게 출혈 효과를 추가로 적용합니다.",
	[TrinketType.TRINKET_STORE_KEY] = "무력화된 적 처치 시 확률적으로 픽업 아이템을 드랍합니다.",
	[TrinketType.TRINKET_RUSTED_KEY] = "방 안의 적에게 혼란 효과를 추가로 적용합니다.",
	[TrinketType.TRINKET_CRYSTAL_KEY] = "무력화된 적 처치 시 확률적으로 얼립니다.",
	[TrinketType.TRINKET_BLUE_KEY] = "무력화된 적 처치 시 확률적으로 소울하트 반칸을 드랍합니다.",
	[TrinketType.TRINKET_STRANGE_KEY] = "방 안의 적에게 랜덤 상태이상 효과를 추가로 적용합니다.",
	[TrinketType.TRINKET_GILDED_KEY] = "방 안의 적에게 추가로 일정 확률로 석화시킵니다.",
}

-- Modifier description end

-- This is for conditions
local function isKeyTrinket(t)
	t = t % 32768	-- golden trinkets
	local lang = EID:getLanguage() or "en_us"
	local trinketdesc = KeyTrinketsDesc[lang] or KeyTrinketsDesc["en_us"]
	return trinketdesc[t]
end

-- For Torn Page Callback
-- Removed colons from appendToDescription. This will make Collectible icon to pinpoint
local function TornPageCallback(descObj)
	local lang = EID:getLanguage() or "en_us"
	EID:appendToDescription(descObj, "#{{Trinket" .. tostring(CustomTrinkets.TORN_PAGE) .. "}} ")
	local refID = descObj.ObjSubType
	local refTables = TornPageDesc[lang] or TornPageDesc["en_us"]

	if refTables[refID] then
		EID:appendToDescription(descObj, refTables[refID])
	else
		EID:appendToDescription(descObj, refTables[-1])
	end
	return descObj
end

local function KeyTrinketsCallback(descObj)
	local lang = EID:getLanguage() or "en_us"
	--EID:appendToDescription(descObj, "#{{Collectible" .. tostring(CustomCollectibles.BOOK_OF_LEVIATHAN) .. "}}: ")
	local refID = descObj.ObjSubType % 32768
	local refTables = KeyTrinketsDesc[lang] or KeyTrinketsDesc["en_us"]

	if refTables[refID] then
		EID:appendToDescription(descObj, "#{{Collectible" .. tostring(CustomCollectibles.BOOK_OF_LEVIATHAN) .. "}} ")
		EID:appendToDescription(descObj, refTables[refID])
	end
	return descObj
end