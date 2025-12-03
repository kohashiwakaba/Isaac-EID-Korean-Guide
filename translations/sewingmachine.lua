

-------- Korean EID by 미카/코하시와카바(kohashiwakaba)
-- EID Collectibles
EID:addCollectible(Enums.CollectibleType.COLLECTIBLE_SEWING_BOX, "사용 시 그 방에서 패밀리어 등급을 한 단계 올립니다.#{{UltraCrown}} 2회 사용 시 울트라 등급으로 올립니다.", "재봉틀 상자", "ko_kr")
EID:addCollectible(Enums.CollectibleType.COLLECTIBLE_DOLL_S_TAINTED_HEAD, "{{SuperCrown}} 모든 패밀리어가 최소 슈퍼 등급이 됩니다.#{{UltraCrown}} {{Collectible".. Enums.CollectibleType.COLLECTIBLE_DOLL_S_PURE_BODY .."}}Doll's Pure Body 소지 시 모든 패밀리어가 울트라 등급이 됩니다.#악마방에서 재봉틀 기계 등장 확률 +20%", "인형의 저주받은 머리", "ko_kr")
EID:addCollectible(Enums.CollectibleType.COLLECTIBLE_DOLL_S_PURE_BODY, "{{SuperCrown}} 모든 패밀리어가 최소 슈퍼 등급이 됩니다.#{{UltraCrown}} {{Collectible".. Enums.CollectibleType.COLLECTIBLE_DOLL_S_TAINTED_HEAD .."}}Doll's Tainted Head 소지 시 모든 패밀리어가 울트라 등급이 됩니다.#천사방에서 재봉틀 기계 등장 확률 +20%", "인형의 신성한 몸통", "ko_kr")

-- EID Trinkets
EID:addTrinket(Enums.TrinketType.TRINKET_THIMBLE, "재봉틀 기계 사용 시 일정 확률로 사용한 가격의 일부를 돌려받거나 픽업 아이템/자폭 파리/거미를 소환합니다.", "골무", "ko_kr")
EID:addTrinket(Enums.TrinketType.TRINKET_CRACKED_THIMBLE, "피격 시 75%의 확률로 패밀리어의 등급을 뒤섞습니다.", "깨진 골무", "ko_kr")
EID:addTrinket(Enums.TrinketType.TRINKET_LOST_BUTTON, "{{Shop}}상점에서 재봉틀 기계가 항상 등장합니다.#{{DevilRoom}}악마방/{{AngelRoom}}천사방에서 재봉틀 기계가 50%의 확률로 등장합니다.", "잃어버린 버튼", "ko_kr")
--EID:addTrinket(Enums.TrinketType.TRINKET_CONTRASTED_BUTTON, "50% chance to find a sewing machine in angel rooms {{AngelRoom}} or devil rooms {{DevilRoom}}")
EID:addTrinket(Enums.TrinketType.TRINKET_PIN_CUSHION, "재봉틀 기계에 접촉하여 폭탄 없이 대기 중인 패밀리어를 돌려받을 수 있습니다.#해당 장신구를 교체/드랍하여 등급을 올릴 패밀리어를 선택할 수 있습니다.#!!! 흡수 시 위의 효과가 적용되지 않으며 재봉틀 기계가 고장날 확률을 감소시킵니다.", "바늘꽂이", "ko_kr")
EID:addTrinket(Enums.TrinketType.TRINKET_SEWING_CASE, "방 입장 시 30%의 확률로 각 패밀리어의 등급을 올립니다.#!!! {{LuckSmall}}행운 수치 비례: 행운 50 이상일 때 70% 확률", "재봉틀 주머니", "ko_kr")

-- EID Cards
EID:addCard(Enums.Card.CARD_WARRANTY, "사용 시 재봉틀 기계를 소환합니다.#재봉틀 기계의 종류는 사용한 방에 따라 달라집니다.", "재봉틀 보증서", "ko_kr")
EID:addCard(Enums.Card.CARD_STITCHING, "사용 시 패밀리어의 등급을 뒤섞습니다.#모든 패밀리어가 일반 등급인 경우, 일정 확률로 랜덤 패밀리어 등급을 한 단계 올립니다.", "바느질 카드", "ko_kr")
EID:addCard(Enums.Card.CARD_SEWING_COUPON, "{{Collectible".. Enums.CollectibleType.COLLECTIBLE_SEWING_BOX .."}} 사용 시 그 방에서 패밀리어 등급을 한 단계 올립니다.#{{UltraCrown}} 2회 사용 시 울트라 등급으로 올립니다.", "재봉틀 쿠폰", "ko_kr")


-- Angelic Prism
Sewn_API:AddFamiliarDescription(
    FamiliarVariant.ANGELIC_PRISM,
    "캐릭터의 공격 방향이 프리즘의 방향에 가까워질수록 프리즘이 캐릭터와 더 가까워집니다.#갈라져나간 눈물이 장애물을 관통합니다.",
    "프리즘이 캐릭터와 더 가까워집니다.#갈라져나간 눈물에 유도 효과가 생깁니다.", nil, "천사빛 프리즘", "ko_kr"
)

-- Big Chubby
Sewn_API:AddFamiliarDescription(
    FamiliarVariant.BIG_CHUBBY,
    "탄환을 막거나 적을 죽일 때마다 크기와 피해량이 증가합니다.#증가한 크기와 피해량은 시간이 지나거나 스테이지 진입 시 감소합니다.",
    "{{ArrowUp}} 쿨타임 감소#크기와 피해량이 더욱 증가합니다.#증가한 크기와 피해량이 더 이상 스테이지 진입 시 감소하지 않습니다.", nil, "커다란 처비", "ko_kr"
)

-- Blood Oath
Sewn_API:AddFamiliarDescription(
  FamiliarVariant.BLOOD_OATH,
  "지나간 자리에 빨간 장판이 생기며 닿은 적은 {{HalfHeart}}깎은 빨간하트에 비례한 피해를 입습니다.",
  "{{Heart}} 빨간하트 반칸을 깎을 때마다 일정 확률로 하트 픽업을 소환합니다.", nil, "피의 맹세", "ko_kr"
)

-- Bloodshot Eye
Sewn_API:AddFamiliarDescription(
  FamiliarVariant.BLOODSHOT_EYE,
  "Fires three tears at once",
  "Fires a blood laser instead of tears", nil, "피눈물 눈알", "ko_kr"
)

-- Bob's Brain
Sewn_API:AddFamiliarDescription(
  FamiliarVariant.BOBS_BRAIN,
  "Spawn a large green creep when it explodes",
  "Sticks to enemies before exploding", nil, "Bob's Brain"
)

-- Boiled Baby
Sewn_API:AddFamiliarDescription(
  FamiliarVariant.BOILED_BABY,
  "Increase the amount of tears it burst",
  "Fires tears in the direction the player is firing", nil, "Boiled Baby"
)

-- Bomb Bag
Sewn_API:AddFamiliarDescription(
  FamiliarVariant.BOMB_BAG,
  "{{ArrowUp}} Better bomb drops#No longer spawns troll bombs#Spawn powder on the ground. The powder catches fire when it's close to fires or explosions",
  "{{ArrowUp}} Better bomb drops#{{ArrowUp}} Can drop Giga bombs [Rep]#When it's close to an enemy, it will sometimes explode", nil, "Bomb Bag"
)

-- Bot Fly
Sewn_API:AddFamiliarDescription(
  FamiliarVariant.BOT_FLY,
  "{{ArrowUp}} Stats Up (Portée, Shot Speed, Tear Size)#When it fires a tear, a laser connects the tears and the familiar#The laser deals contact damage and blocks shots",
  "{{ArrowUp}} Stats Up#Gain piercing tears#Rarely attacks enemies", nil, "Bot Fly"
)

-- Brother Bobby
Sewn_API:AddFamiliarDescription(
  FamiliarVariant.BROTHER_BOBBY,
  "{{ArrowUp}} Tears Up",
  "{{ArrowUp}} Tears Up#{{ArrowUp}} Damage Up", nil, "Brother Bobby"
)

-- Buddy in a box
Sewn_API:AddFamiliarDescription(
  FamiliarVariant.BUDDY_IN_A_BOX,
  "Gains a random additional tear effect#Additional tear effect can't be Ipecac unless Ipecac is the base attack of the buddy",
  "Gains another random additional tear effect", nil, "Buddy in a Box"
)

-- Cain's other eye
Sewn_API:AddFamiliarDescription(
  FamiliarVariant.CAINS_OTHER_EYE,
  "Fires 2 tears instead of 1#Tears gain a Rubber Cement effect {{Collectible".. CollectibleType.COLLECTIBLE_RUBBER_CEMENT .."}}",
  "{{ArrowUp}}Range Up#Fires 4 tears", nil, "Cain's other Eye"
)

-- Cube Baby
Sewn_API:AddFamiliarDescription(
  FamiliarVariant.CUBE_BABY,
  "Gains a freezing aura. Enemies which stay too long in the aura will take damage until they are completely frozen",
  "Spawns creep when moved around#The faster it moves, the more it spawns creep", nil, "Cube Baby"
)

-- Daddy Longlegs
Sewn_API:AddFamiliarDescription(
  FamiliarVariant.DADDY_LONGLEGS,
  "Has a chance to stomp with the head, dealing 2x the normal damage#Has a chance to stomp as Triachnid. When it does, fires 5 slowing tears in all directions",
  "{{ArrowUp}} Higher chance to stomp as Triachnid and to stomp with the head#Each time it falls, has a chance to stomps an additional time", nil, "Daddy Longlegs"
)

-- Dead Cat
Sewn_API:AddFamiliarDescription(
  FamiliarVariant.DEAD_CAT,
  "When the player dies, they respawn with an additional soul heart {{SoulHeart}}",
  "When the player dies, they respawn with an additional red heart container {{Heart}} and an additional soul heart {{SoulHeart}}", nil, "Dead Cat"
)

-- Demon Baby
Sewn_API:AddFamiliarDescription(
  FamiliarVariant.DEMON_BABY,
  "Fires automatically through obstacles",
  "{{ArrowUp}} Range up#{{ArrowUp}} Tears Up", nil, "Demon Baby"
)

-- Dry Baby
Sewn_API:AddFamiliarDescription(
  FamiliarVariant.DRY_BABY,
  "{{ArrowUp}} Increases chance to trigger Necronomicon effect#When it triggers the effect, enemy projectiles in the room are destroyed",
  "{{ArrowUp}} Increases chance to trigger Necronomicon effect even more!#When it triggers the effect, enemy projectiles in the room are turned into bone shards", nil, "Dry Baby"
)

-- Farting Baby
Sewn_API:AddFamiliarDescription(
  FamiliarVariant.FARTING_BABY,
  "{{ArrowUp}} Increases chance to fart when getting hit#Has a chance to fart every few seconds. The closer it is to enemies, the higher chance for it fart",
  "{{ArrowUp}} Increases chance to fart when getting hit even more!#Gain an additional burning fart and holy fart", nil, "Farting Baby"
)

-- Freezer Baby
Sewn_API:AddFamiliarDescription(
  FamiliarVariant.FREEZER_BABY,
  "{{ArrowUp}} Damage Up#{{ArrowUp}} Range Up#{{ArrowUp}} Higher chance to freeze enemies",
  "{{ArrowUp}} Damage Up#Enemies it kills explode into ice tears", nil, "Freezer Baby"
)

-- Fruity Plum
Sewn_API:AddFamiliarDescription(
  FamiliarVariant.FRUITY_PLUM,
  "{{ArrowUp}} Damage Up#Gains small homing effect",
  "Gains a Playdough Cookie {{Collectible"..CollectibleType.COLLECTIBLE_PLAYDOUGH_COOKIE.."}} effect#After an attack it fires tears in all directions", nil, "Fruity Plum"
)

-- Ghost Baby
Sewn_API:AddFamiliarDescription(
  FamiliarVariant.GHOST_BABY,
  "{{ArrowUp}} Damage Up#Gain piercing Pupula Duplex {{Collectible"..CollectibleType.COLLECTIBLE_PUPULA_DUPLEX.."}} tears",
  "{{ArrowUp}} Tear Size Up#{{ArrowUp}} Damage Up", nil, "Ghost Baby"
)

-- Guppy's Hairball
Sewn_API:AddFamiliarDescription(
  FamiliarVariant.GUPPYS_HAIRBALL,
  "Start on the second size#Have a chance to spawn flies when it kills an enemy or when it blocks a projectile",
  "Start on the third size#Spawns more flies when it kills an enemy and when it blocks projectiles", nil, "Guppy's Hairball"
)

-- Harlequin Baby
Sewn_API:AddFamiliarDescription(
  FamiliarVariant.HARLEQUIN_BABY,
  "Fire an additional shot on each side",
  "{{ArrowUp}} Damage Up", nil, "Harlequin Baby"
)

-- Headless Baby
Sewn_API:AddFamiliarDescription(
  FamiliarVariant.HEADLESS_BABY,
  "{{ArrowUp}} Creep Damage Up#{{ArrowUp}} Creep Size Up",
  "{{ArrowUp}} Creep Damage Up#Fires burst of tears while isaac is firing", nil, "Headless Baby"
)

-- Hushy (Rep)
Sewn_API:AddFamiliarDescription(
  FamiliarVariant.HUSHY,
  "Fire 15 tears in a random circular pattern every 4 seconds#Tears deal 3 damage",
  "{{ArrowUp}} Damage Up#Spawn minisaac after charging for a few seconds (only in rooms with enemies)", nil, "Hushy"
)
-- Hushy (AB+) In AB+, there are no minisaac so the ultra upgrade spawns a friendly boil monster instead.

-- Incubus
Sewn_API:AddFamiliarDescription(
  FamiliarVariant.INCUBUS,
  "{{ArrowUp}} {{DamageSmall}}인큐버스의 공격력 배율 x1.33",
  "{{ArrowUp}} {{DamageSmall}}인큐버스의 공격력 배율 x1.67", nil, "인큐버스", "ko_kr"
)

-- Isaac's Heart
Sewn_API:AddFamiliarDescription(
  FamiliarVariant.ISAACS_HEART,
  "{{ArrowUp}} Decreases charge time#Moves closer to the player when the player isn't firing",
  "{{ArrowUp}} Decreases charge time#When fully charged, if an enemy or projectile gets too close it automatically activates its fully charged effect#When this activates, it will go on a brief cooldown before being able to charge again", nil, "Isaac's Heart"
)

-- Juicy Sack
Sewn_API:AddFamiliarDescription(
  FamiliarVariant.JUICY_SACK,
  "{{Arrow Up}} Creep Size Up#Fires egg tears (from Parasitoid {{Collectibe"..CollectibleType.COLLECTIBLE_PARASITOID.."}}) while isaac is firing",
  "Fires more egg tears", nil, "Juicy Sack"
)

-- Leech
Sewn_API:AddFamiliarDescription(
  FamiliarVariant.LEECH,
  "{{ArrowUp}} Damage Up#Spawns creep when it collide with an enemy",
  "{{ArrowUp}} Damage Up#Enemies it kills explode into lots of tears", nil, "Leech"
)

-- Lil Abaddon
Sewn_API:AddFamiliarDescription(
  FamiliarVariant.LIL_ABADDON,
  "{{ArrowUp}} Damage Up#When holding the fire button, it spawns a swirl every few seconds. When fire button is released, a laser ring is fired by the swirls",
  "Spawns swirls more often#Lasers from swirls deal more damage, are larger and last longer#Has a tiny chance to spawn black hearts {{BlackHeart}}", nil, "Lil Abaddon"
)

-- Lil Brimstone
Sewn_API:AddFamiliarDescription(
  FamiliarVariant.LIL_BRIMSTONE,
  "{{ArrowUp}} Damage Up",
  "{{ArrowUp}} Slight Damage Up#Laser lasts longer#Charges quicker", nil, "Lil Brimstone"
)

-- Lil Dumpy
Sewn_API:AddFamiliarDescription(
  FamiliarVariant.LIL_DUMPY,
  "Changes to another Lil Dumpy variant each rooms, such as:" ..
  "#{{LilDumpyVariant".. LilDumpy.DumpiesVariant.DUMPLING .."}} Standard effect"..
  "#{{LilDumpyVariant".. LilDumpy.DumpiesVariant.SKINLING .."}} Poisons enemies when farting"..
  "#{{LilDumpyVariant".. LilDumpy.DumpiesVariant.SCABLING .."}} When it farts, it fires 6 tears in a circular pattern"..
  "#{{LilDumpyVariant".. LilDumpy.DumpiesVariant.SCORCHLING .."}} When it farts, it spawns a flame which deals 15 damage"..
  "#{{LilDumpyVariant".. LilDumpy.DumpiesVariant.FROSTLING .."}} Enemies killed by it are turned into ice. While resting, gain a freezing aura"..
  "#{{LilDumpyVariant".. LilDumpy.DumpiesVariant.DROPLING .."}} When it farts, it fires tears in the opposite direction",
  "Returns to the player after a random amount of seconds, even if the player is far away", nil, "Lil Dumpy"
)

-- Lil Gurdy
Sewn_API:AddFamiliarDescription(
  FamiliarVariant.LIL_GURDY,
  "{{ArrowUp}} Charges faster#While charging, fires tear in different directions",
  "{{ArrowUp}} Charges faster#When it dashes, it leaves red creep#Fire 3 waves of tears in different directions after dashing", nil, "Lil Gurdy"
)

-- Lil Loki
Sewn_API:AddFamiliarDescription(
  FamiliarVariant.LIL_LOKI,
  "Fires in 8 directions",
  "{{ArrowUp}} Damage Up", nil, "Lil Loki"
)

-- Lil Monstro
Sewn_API:AddFamiliarDescription(
  FamiliarVariant.LIL_MONSTRO,
  "Has a chance to fire a tooth (from Tough Love {{Collectible"..CollectibleType.COLLECTIBLE_TOUGH_LOVE.."}}",
  "Fires way more tears", nil, "Lil Monstro"
)

-- Lil Spewer
Sewn_API:AddFamiliarDescription(
  FamiliarVariant.LIL_SPEWER,
  "When it shoots, it fires additional tears with effects of its current color",
  "Has two colors at the same time", nil, "Lil Spewer"
)

-- Little Chubby
Sewn_API:AddFamiliarDescription(
  FamiliarVariant.LITTLE_CHUBBY,
  "{{ArrowUp}} Lower cooldown by 50%, can be thrown quickly",
  "Sticks to enemies for 0.5 seconds then continues in its initial direction", nil, "Little Chubby"
)

-- Little Gish
Sewn_API:AddFamiliarDescription(
  FamiliarVariant.LITTLE_GISH,
  "{{ArrowUp}} Slight Tears Up#Tears create a puddle of slowing creep on hit",
  "{{ArrowUp}} Damage Up#{{ArrowUp}} Tears Up#{{ArrowUp}} Creep Size Up", nil, "Little Gish"
)

-- Little Steven
Sewn_API:AddFamiliarDescription(
  FamiliarVariant.LITTLE_STEVEN,
  "{{ArrowUp}} Damage Up#{{ArrowUp}} Range Up#{{ArrowDown}} Shot Speed Down#Hitting an enemy has a chance to fire a ring of tears#Killing an enemy has a chance to fire a ring of stronger tears",
  "{{ArrowUp}} Damage Up#{{ArrowUp}} Increases chance to fire a ring of tears when hitting/killing enemies#Tears from the ring can trigger another ring of tear, resulting in a chain reaction", nil, "Little Steven"
)

-- Mom's Razor
Sewn_API:AddFamiliarDescription(
  FamiliarVariant.MOMS_RAZOR,
  "{{ArrowUp}} Extends the Bleed duration (Bosses are not affected)",
  "{{ArrowUp}} Extends the Bleed duration#When an enemy dies while bleeding they spawn a large blood puddle#Have a chance to spawn half a heart {{HalfHeart}}", nil, "Mom's Razor"
)

-- Multidimensional Baby

-- Papa Fly
Sewn_API:AddFamiliarDescription(
  FamiliarVariant.PAPA_FLY,
  "Blocks projectiles#Has a chance to spawn a fly turret when blocking a projectile",
  "{{ArrowUp}} Range Up#{{ArrowUp}} Higher chance to spawn a fly turret#Fires 5 tears in a row", nil, "Papa Fly"
)

-- Paschal Candle
Sewn_API:AddFamiliarDescription(
  FamiliarVariant.PASCHAL_CANDLE,
  "When the player takes damage, it spreads flames around itself#The amount of flames depends on the size of the candle's flame",
  "Taking damage only reduces the flame's size by one step", nil, "Paschal Candle"
)

-- Peeper
Sewn_API:AddFamiliarDescription(
  FamiliarVariant.PEEPER,
  "Fire ".. Peeper.Stats.AmountTears .." tears in random directions every few seconds#Tries to home onto close enemies",
  "Spawn an additional Peeper Eye {{Collectible".. CollectibleType.COLLECTIBLE_PEEPER .."}}#The new Peeper Eye is upgraded as well#With Inner Eye {{Collectible".. CollectibleType.COLLECTIBLE_INNER_EYE .."}} spawns an additional Peeper Eye", nil, "The Peeper"
)

-- Pointy Rib
Sewn_API:AddFamiliarDescription(
  FamiliarVariant.POINTY_RIB,
  "Has a chance to apply bleed effect to non-boss enemies#Has a chance to spawn bone shards when it kills an enemy",
  "{{ArrowUp}} Collision Damage Up#{{Arrow Up}} Increases chance to apply bleed#{{Arrow Up}} Increases chance to spawn bone shards", nil, "Pointy Rib"
)

-- Psy Fly
Sewn_API:AddFamiliarDescription(
  FamiliarVariant.PSY_FLY,
  "When it blocks a bullet, it fires a homing tear back",
  "{{ArrowUp}} Collision Damage Up#{{ArrowUp}} Tears Damage Up", nil, "Psy Fly"
)

-- Punching Bag
Sewn_API:AddFamiliarDescription(
  FamiliarVariant.PUNCHING_BAG,
  "Gains random champion forms each with special abilities, such as:#"..
  "{{ColorPink}}Pink{{CR}}: Fires a tear in a random direction#"..
  "{{ColorPurple}}Violet{{CR}}: Pulls enemies and bullets#"..
  "{{ColorCyan}}Light Blue{{CR}}: Fires tears in 8 directions when player gets hit#"..
  "{{ColorCyan}}Blue{{CR}}: Spawns 2-3 flies when player gets hit#"..
  "{{ColorOrange}}Orange{{CR}}: Spawns a coin when player get hit#"..
  "Blocks bullets",
  "Gain more powerful champion forms:#"..
  "{{ColorGreen}}Green{{CR}}: Spawns green creep#"..
  "{{ColorBlack}}Black{{CR}}: Explodes when the player gets hit. Explosion deal 40 damage#"..
  "{{ColorRainbow}}Rainbow{{CR}}: Copies the effect of every other champion forms. Lasts less time than other champion forms#"..
  "Deals contact damage", nil, "Punching Bag"
)

-- Rainbow Baby
Sewn_API:AddFamiliarDescription(
  FamiliarVariant.RAINBOW_BABY,
  "{{ArrowUp}} Damage Up#{{ArrowUp}} Tears Up",
  "Tears combine effects", nil, "Rainbow Baby"
)

-- Robo Baby
Sewn_API:AddFamiliarDescription(
  FamiliarVariant.ROBO_BABY,
  "{{ArrowUp}} Tears Up",
  "{{ArrowUp}} Tears Up", nil, "Robo Baby"
)

-- Rotten Baby
Sewn_API:AddFamiliarDescription(
  FamiliarVariant.ROTTEN_BABY,
  "Spawns an additional blue fly",
  "Spawns a random locust", nil, "Rotten Baby"
)

-- Sacrifical Dagger
Sewn_API:AddFamiliarDescription(
  FamiliarVariant.SACRIFICIAL_DAGGER,
  "{{ArrowUp}} Slight Damage Up#Applies a bleed effect",
  "{{ArrowUp}} Damage Up", nil, "Sacrificial Dagger"
)

-- Seraphim
Sewn_API:AddFamiliarDescription(
  FamiliarVariant.SERAPHIM,
  "Has a chance to fire Holy Tears (from {{Collectible"..CollectibleType.COLLECTIBLE_HOLY_LIGHT.."}})",
  "{{ArrowUp}} Tears Up#{{ArrowUp}} Higher chance to fire Holy Tears", nil, "Seraphim"
)

-- Sissy Longlegs
Sewn_API:AddFamiliarDescription(
  FamiliarVariant.SISSY_LONGLEGS,
  "{{ArrowUp}} +3 Flat Damage Up for Sissy's blue spiders#Sissy's blue spiders apply charm when they hit an enemy",
  "{{ArrowUp}} Increased charm duration#{{ArrowUp}} +2 Flat Damage Up for blue spiders#Spawns additional spiders", nil, "Sissy Longlegs"
)

-- Sister Maggy
Sewn_API:AddFamiliarDescription(
  FamiliarVariant.SISTER_MAGGY,
  "{{ArrowUp}} Damage Up",
  "{{ArrowUp}} Damage Up#{{ArrowUp}} Tears Up", nil, "Sister Maggy"
)

-- Spider Mod
Sewn_API:AddFamiliarDescription(
  FamiliarVariant.SPIDER_MOD,
  "Spawns eggs which apply a random effect to enemies which walk over them#Eggs last 20 seconds",
  "Higher chance to spawn eggs#At the end of rooms, eggs spawn blue spiders", nil, "Spider Mod"
)

-- Twisted Pair
Sewn_API:AddFamiliarDescription(
  FamiliarVariant.TWISTED_BABY,
  "{{ArrowUp}}+0.33 Flat Damage Up#They move closer to the player while they fire",
  "They align with the player's direction", nil, "Twisted Pair"
)

-- Vanishing Twin
Sewn_API:AddFamiliarDescription(
  FamiliarVariant.VANISHING_TWIN,
  "Removes 25% of the boss copy health",
  "Increases chances to spawn a better item (based on Quality)#Can spawn items from the Treasure pool if no Boss pool item are found", nil, "Vanishing Twin"
)




















