
	--EN CHEST DESC--------------------------------------------------------------------
	EID:addEntity(5, 299, 1, "{{ChestRoom}} 상자", "!!! {{Coin}}동전 12개를 지불하여 개방#80%의 확률로 티어 1(Common) 아이템 드랍#19%의 확률로 티어 2(Uncommon) 아이템 드랍#1%의 확률로 티어 3(Legendary) 아이템 드랍", "ko_kr")
	EID:addEntity(5, 298, 1, "{{ChestRoom}} 대형 상자", "!!! {{Coin}}동전 20개를 지불하여 개방#80%의 확률로 티어 2(Uncommon) 아이템 드랍#20%의 확률로 티어 3(Legendary) 아이템 드랍", "ko_kr")
	EID:addEntity(5, 297, 1, "{{ChestRoom}} 루나 꼬투리", "!!! {{Coin}}동전 25개를 지불하여 개방#100% Chance for a Lunar Item", "ko_kr")
	EID:addEntity(5, 296, 1, "{{ChestRoom}} 장비 상자", "!!! {{Coin}}동전 15개를 지불하여 개방#100%의 확률로 장비(액티브) 아이템을 드랍", "ko_kr")
	EID:addEntity(5, 295, 1, "{{ChestRoom}} 전설 상자", "!!! {{Coin}}동전 30개를 지불하여 개방#100%의 확률로 티어 3(Legendary) 아이템 드랍", "ko_kr")
	EID:addEntity(5, 294, 1, "{{ChestRoom}} 녹슨 자물쇠 상자", "!!! {{Collectible"..Rusted_Key.."}}녹슨 자물쇠를 소비하여 개방#80%의 확률로 티어 2(Uncommon) 아이템 드랍#20%의 확률로 티어 3(Legendary) 아이템 드랍", "ko_kr")
	EID:addEntity(5, 501, 1, "{{ChestRoom}} 시한 장치 상자", "!!! 플레이 시간이 20분 미만일 때 개방 가능#{{Collectible"..Preon_Accumulator.."}} 프레온 축전기(Preon Accumulator) 아이템 드랍", "ko_kr")
	--EN BROKEN DRONE DESC--------------------------------------------------------------------
	EID:addEntity(5, 600, 1, "{{Trinket}} 망가진 사격 포탑", "!!! {{Coin}}동전 15개를 지불하여 활성화#Gain a basic auto-fire Gunner Drone#{{DamageSmall}}: {{CoinHeart}}{{CoinHeart}}{{CoinHeart}}{{EmptyCoinHeart}}{{EmptyCoinHeart}}#{{TearsSmall}}: {{CoinHeart}}{{CoinHeart}}{{CoinHeart}}{{EmptyCoinHeart}}{{EmptyCoinHeart}}#{{RangeSmall}}: {{CoinHeart}}{{CoinHeart}}{{CoinHeart}}{{EmptyCoinHeart}}{{EmptyCoinHeart}}", "ko_kr")
	--EN ITEM DESC--------------------------------------------------------------------
	EID:addCollectible(Shaped_Glass, "↑ {{DamageSmall}} 공격력 배율 x2.0#!!! {{BrokenHeart}}체력 상한 x0.5", "모양이 있는 유리", "ko_kr")
	EID:addCollectible(Brittle_Crown, "{{Coin}} 적 명중 시 20%의 확률로 동전을 추가합니다.#!!! 피격 시 {{Coin}}동전 -10","연약한 왕관", "ko_kr")
	EID:addCollectible(Transcendence, "{{HalfSoulHeart}} 방 4개를 입장할 때마다 소울하트 반칸을 회복합니다.#!!! 최대 체력 상한이 1칸으로 설정되며 나머지는 전부 소울하트로 변환됩니다.", "초월(RoR2)", "ko_kr")
	EID:addCollectible(Corpsebloom, "하트류 픽업 아이템을 2배로 변환합니다.#{{HalfHeart}} -> {{Heart}}#{{Heart}} -> {{Heart}}{{Heart}}#{{HalfSoulHeart}} -> {{SoulHeart}}#!!! 변환된 모든 하트 픽업은 줍지 않을 시 잠시 후 사라집니다.", "시체꽃", "ko_kr")
	EID:addCollectible(Gesture_Of_The_Drowned, "방 입장 시 액티브 아이템을 1칸 충전합니다.#!!! 액티브 아이템이 완전히 충전되었을 경우 아이템을 강제로 사용합니다.", "익사자들의 손짓", "ko_kr")
	-- STRIDES OF HERESY
	-- VISIONS OF HERESY
	-- BEADS OF FEALTY
	EID:addCollectible(Focused_Convergence, "!!! 소지하고 있는 동안 악마방이 등장하지 않습니다.#{{BossRoom}} 보스방을 클리어하면 보스러시 문이 생성됩니다.#보스러시 클리어 시 이 아이템이 제거되며 루나 아이템 하나를 추가로 소환합니다.", "집중 충전", "ko_kr")
	-- PURITY
	EID:addCollectible(Defiant_Gouge, "!!! 상점 최초 진입 시 적을 4마리 소환합니다.#소환된 적 처치 시 랜덤 동전을 드랍합니다.", "반항의 창끝", "ko_kr")
	EID:addCollectible(Spinel_Tonic, "사용 시 20초동안 {{TearsSmall}}연사 배율 x1.5, {{SpeedSmall}}이동속도 배율 x1.3, {{DamageSmall}}공격력 배율 x2.0#!!! 효과가 사라지면 {{TearsSmall}}연사 배율 x0.85, {{SpeedSmall}}이동속도 배율 x0.85, {{DamageSmall}}공격력 배율 x0.85", "첨정석 토닉", "ko_kr")
	--
	EID:addCollectible(Soldiers_Syringe, "↑ {{TearsSmall}}연사 +0.39", "군인의 주사기", "ko_kr")
	EID:addCollectible(Tougher_Times, "15%의 확률로 탄환 피격을 무시합니다.", "힘들었던 시절", "ko_kr")
	EID:addCollectible(Monster_Tooth, "{{HalfHeart}} 적 처치 시 10%의 확률로 빨간하트 반칸을 드랍합니다.#드랍한 빨간하트는 잠시 후 사라집니다.", "몬스터 이빨", "ko_kr")
	EID:addCollectible(LM_Glasses, "적 공격 시 10%의 확률로 2배의 피해를 입힙니다.", "렌즈 제작자의 안결", "ko_kr")
	EID:addCollectible(PG_Hoof, "↑ {{SpeedSmall}}이동속도 +0.14", "폴의 염소발", "ko_kr")
	--bustling fungus
	EID:addCollectible(Crowbar, "최대 체력의 90%를 넘는 적에게 75% 추가 피해를 입힙니다.", "쇠지렛대", "ko_kr")
	EID:addCollectible(Tri_Tip_Dagger, "{{BleedingOut}} 적 공격 시 15%의 확률로 1.5의 추가 피해를 입히며 출혈 상태로 만듭니다.", "삼각 단검", "ko_kr")
	--warbanner (aura in boss rooms, giveitemeffect torn photo + cat o nine tails)
	EID:addCollectible(Cautious_Slug, "{{Heart}} 스테이지 진입 시 빨간하트 +1", "신중한 민달팽이", "ko_kr")
	EID:addCollectible(PSG, "{{HalfSoulHeart}} 스테이지 진입 시 소울하트 +0.5", "개인용 방어막 생성기", "ko_kr")
	EID:addCollectible(Medkit, "{{HalfHeart}} 피격 후 바로 다음 방에서 적이 있을 경우 빨간하트 +0.5", "의료 키트", "ko_kr")
	EID:addCollectible(Gasoline, "{{Burning}} 적 처치 시 주변의 적에게 4의 피해와 화상을 입힙니다.", "휘발유", "ko_kr")
	EID:addCollectible(Stun_Grenade, "적 공격 시 5%의 확률로 석화시킵니다.", "마비 수류탄", "ko_kr")
	--bundle of fireworks Isaac.Spawn(EntityType.ENTITY_EFFECT, EffectVariant.FIREWORKS , 0, npc.Position, Vector(0,0), Isaac.GetPlayer(0))
	--energy drink 10% speed multiplier
	--backup magazine every 2nd shot gains +1 shot speed (+0.5 for every other stack)
	--sticky bombs
	EID:addCollectible(Rusted_Key, "이 아이템을 소지한 상태에서 보스방 클리어 시 녹슨 상자가 소환됩니다.#녹슨 상자", "녹슨 열쇠", "ko_kr")
	EID:addCollectible(Armor_Piercing_Rounds, "+20% Damage when there is a boss#Can be stacked", "Armor-Piercing Rounds", "ko_kr")
	--topaz brooch(give trinket effect sigil)
	--focus crystal (crowbar effect when :distance to player <40, render holy circle effect on player)
	EID:addCollectible(Fresh_Meat, "↑ +1 Health up.#Can be stacked", "Fresh Meat", "ko_kr")
	--repulsion armor plate
	--(50% chance to convert bomb pickups to double bomb pickups)
	--
	EID:addCollectible(Atg_Missile_Mk1, "10% Chance to fire a seeking rocket which deals 4 times damage to the target it hits.#Can be stacked", "AtG Missile Mk.1", "ko_kr")
	EID:addCollectible(Will_O_The_Wisp, "Enemies will explode when dying and damage other near enemies#Can be stacked", "Will O' the Wisp", "ko_kr")
	--Hopoo Feather
	--Ukulele
	EID:addCollectible(Leeching_Seed, "Hitting enemies have 2% chance to heal {{HalfHeart}} once per room#Can be stacked", "Leeching Seed", "ko_kr")
	EID:addCollectible(Predatory_Instincts, "+5% Critical chance#Firing critical strike tears give temporary tears up#Can be stacked", "Predatory Instincts", "ko_kr")
	EID:addCollectible(Red_Whip, "↑ +15% Speed multiplier when there are no enemies#Can be stacked", "Red Whip", "ko_kr")
	EID:addCollectible(Old_War_Stealthkit, "When at minimum HP, stun all enemies in the room# Can activate only once per floor#Can be stacked", "Old War Stealthkit", "ko_kr")
	EID:addCollectible(Harvesters_Scythe, "+5% Critical chance#Firing critical strike tears have 4% chance to heal {{HalfHeart}}#Can be stacked", "Harvester's Scythe", "ko_kr")
	EID:addCollectible(Fuel_Cell, "Using your active item has 10% chance to fully recharge it#Can be stacked", "Fuel Cell", "ko_kr")
	--infusion
	--bandolier
	--berzerker's pauldron
	--rose buckler (if moving, 10% base chance to block damage, max 30% +4% per stack maxed out at 6 shields)
	--runald's band
	--kjaro's band
	EID:addCollectible(Chronobauble, "Hitting enemies will slow them for a brief time#Can be stacked", "Chronobauble", "ko_kr")
	--wax quail
	EID:addCollectible(Old_Guillotine, "If champion enemies have less than 20% of their max HP they instantly die#Can be stacked", "Old Guillotine", "ko_kr")
	--war horn (using active item gives temp 0.7 tears up)
	--lepton daisy, heal the player for 1/2 red hp when boss is at 25% health, stacks add chance for additional 1/2 red hp and move the treshold up to 50%
	--razorwire
	EID:addCollectible(Ghors_Tome, "Killing enemies has 4% chance to drop 1-2 {{Coin}}#Can be stacked", "Ghor's Tome", "ko_kr")
	--squid polyp
	EID:addCollectible(Death_Mark, "Enemies with status effects have 50% chance to receive 150% damage#Can be stacked", "Death Mark", "ko_kr")
	--
	EID:addCollectible(Brilliant_Behemoth, "Tears Explode and deal 60% of your damage to nearby enemies#Can be stacked", "Brilliant Behemoth", "ko_kr")
	EID:addCollectible(Ceremonial_Dagger, "Killing enemies have 25% chance to release 4 homing daggers which deal 250% damage#Can be stacked", "Ceremonial Dagger", "ko_kr")
	--frost relic nearby enemies are slowed and take damage
	--happiest mask
	--h3ad-5t v2
	--n'kuhana's opinion
	--unstable tesla coil
	EID:addCollectible(FS_Leaf_Clover, "↑ +1 Luck#↑ x2 Luck Multiplier#Can be stacked", "57 Leaf Clover", "ko_kr")
	--sentient meat hook
	EID:addCollectible(Alien_Head, "↑ x1.25 Tears Multiplier#Can be stacked", "Alien Head", "ko_kr")
	--soulbond catalyst
	--dio's best friend, rewind + remove dio's best friend
	--hardlight afterburner
	--wake of vultures killing an elite gives you a random effect, healing, temporary tears up, temp damage up, temp slowing tears etc.
	--brainstalks killing an elite gives you huge tears up, killing another enemy will remove the bonus.
	--rejuvenation rack all heart pickups are doubled 50% of the time.
	--aegis picking up red hearts when at max health gives you +1/2 soul heart
	EID:addCollectible(Shattering_Justice, "Extra damage to enemies depending on how much health they have. Enemies close to death receive almost 100% more damage#Can be stacked", "Shattering Justice", "ko_kr")
	--
	EID:addCollectible(DML, "Fire 12 seeking rockets that deal 30 damage and break rocks, doors etc.#!!! The explosions will hurt the player if close enough", "Disposable Missile Launcher", "ko_kr")
	EID:addCollectible(Foreign_Fruit, "Heal for half of your max {{Heart}}", "Forgein Fruit", "ko_kr")
	EID:addCollectible(Ocular_HUD, "For 8 seconds, gain 2x critical damage",	"Ocular HUD", "ko_kr")
	EID:addCollectible(The_Back_Up, "Spawn 4 gunner drones for 25 seconds that auto aim and shoot at nearby enemies", "The Back-Up", "ko_kr")
	EID:addCollectible(Super_Massive_Leech, "For 8 seconds, dealing damage to enemies has 20% chance to heal {{HalfHeart}}", "Super Massive Leech", "ko_kr")
	EID:addCollectible(Preon_Accumulator, "Fire a massive ball of energy that deals a total of 600 damage to enemies around it for 4 seconds then explodes for another 600 damage#Movement of the energy ball is based on the movement direction and speed of the player", "Preon Accumulator", "ko_kr")
	