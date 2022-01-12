## General

### Language

언어를 설정합니다. 기본값은  ```"en_us"```이며 Currently Supported에 있는 언어 중 하나를 선택할 수 있습니다.  
기본값 : "en_us"

### TranslateItemName

아이템 이름을 어떻게 출력할지 설정합니다.  
기본값 : 2

| 값 | 적용 방식 |
| ------------ | ------------- |
| 1 | **영어**(English) |
| 2 | **현재 언어**(Current) |
| 3 | **현재 언어 + 영어**(Current + English) |

### FontType

폰트 종류를 설정합니다. 언어별로 설정할 수 있는 폰트가 다르기 때문에 Mod Config Menu를 통해 설정하는 것을 권장합니다.  
현재 한글 폰트는 HCRDotum 하나만 설정할 수 있습니다.

### TextboxWidth

텍스트박스의 넓이를 설정합니다.  
기본값 : 100

### Scale

텍스트박스의 크기 비율을 설정합니다.  
기본값 : 1  
!!! warning ""
    **주의** : 정수 배열이 아닌 경우 폰트가 깨져서 나올 수 있습니다.

### Transparency

글자의 불투명도를 설정합니다.  
값 : 0 ~ 1  
기본값 : 0.75   

### HUDOffset

HUD 기준점을 설정합니다. (애프터버스 + 전용)  
기본값 : 10

### XPosition

텍스트박스의 X좌표 위치를 설정합니다. 리펜턴스 버전일 경우 HUD 위치에 따라 자동으로 조정됩니다.  
기본값 : 60

### YPosition

텍스트박스의 Y좌표 위치를 설정합니다. 리펜턴스 버전일 경우 HUD 위치에 따라 자동으로 조정됩니다.  
기본값 : 45

### MaxDistance

아이템이 인식되는 범위를 설정합니다.  
기본값 : 5

### Indicator

설명 출력중인 아이템의 표시방법을 설정합니다. (아래 그림 참조)  

기본값 : "arrow"  
![인디케이터](https://steamuserimages-a.akamaihd.net/ugc/964219973643822883/4354AE9676356B121ED0C70259F6FE1CB0174E2B/?imw=5000&imh=5000&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=false)

| 값 | 적용 방식 |
| ------------ | ------------- |
| "arrow" | **화살표** |
| "blink" | **깜빡임** |
| "border" | **테두리 깜빡임** |
| "highlight" | **테두리** |
| "none" | **없음** | 


### HideKey

설명을 켜고 끌 수 있는 버튼을 설정합니다. (키보드 전용)  
설정값은 [이 링크](https://wofsauge.github.io/IsaacDocs/rep/enums/Keyboard.html)에서 확인할 수 있습니다.  
기본값 : Keyboard.KEY_F2 (++f2++키)

### HideButton

설명을 켜고 끌 수 있는 버튼을 설정합니다. (컨트롤러 전용)  
설정값은 [이 링크](https://github.com/wofsauge/External-Item-Descriptions/blob/master/mod_config_menu.lua#L1)에서 확인할 수 있습니다. 값 설정은 'Controller.STICK_LEFT'와 같이 설정합니다.  
기본값 : -1 (없음)

### InitiallyHidden

아이작의 번제 게임 시작 시 설명 모드를 숨기게 할지 설정합니다.  
기본값 : false

### HideInBattle

전투 중에 아이템 설명을 숨길지 설정합니다.  
기본값 : false

### DisableObstructionOnFlight

비행 능력이 없을 때 갈 수 없는 장소에 있는 카드나 알약의 설명을 출력할지 설정합니다.  
기본값 : false

### DisableAchievementCheck

도전과제 해금이 불가능할 경우 경고문을 숨길지 설정합니다.  
기본값 : false

## Display Modes

### DisplayMode

아이템 설명을 어디에 표시할지 설정합니다.  
기본값 : "default"

| 값 | 적용 방식 |
| ------------ | ------------- |
| "default" | **기본값** : 모든 아이템의 설명이 고정된 위치에 표시됩니다. |
| "local" | **아이템 위치** 애프터버스의 아이템 설명 모드와 같이 아이템의 설명이 각 아이템 주변에 표시됩니다. |

### LocalScale

아이템 설명을 아이템 주변에 표시할 때 크기 비율을 설정합니다.  
기본값 : 0.5  

### LocalModeCentered

아이템 설명을 아이템 주변에 표시할 때 가운데 정렬을 할지 설정합니다.  
기본값 : true  

## Curse

### DisableOnCurse

아이템이 보이지 않는 저주(블라인드) 상태에서 아이템 설명을 출력할지 설정합니다.  
기본값 : false  

### DisableOnAltPath

알트 스테이지 또는 일반 스테이지에서 보이지 않는 아이템의 설명을 출력할지 설정합니다. (리펜턴스 전용)  
기본값 : false  

### DisableOnAprilFoolsChallenge

April's Fool 챌린지에서 아이템의 설명을 출력할지 설정합니다.  
기본값 : false  

## Item Names


### ShowItemName

아이템, 카드, 알약의 이름을 보여줄지 설정합니다.  
기본값 : true  

### ShowItemType

액티브 아이템, 패밀리어 등 아이템의 형식을 보여줄지 설정합니다.  
기본값 : true  

### ShowItemIcon

아이템, 카드, 알약의 아이콘을 보여줄지 설정합니다.  
기본값 : true  

### DisplayItemInfo

아이템의 설명을 보여줄지 설정합니다.  
기본값 : true  

### DisplayTrinketInfo

장신구의 설명을 보여줄지 설정합니다.  
기본값 : true  

### ItemNameColor

아이템 이름 텍스트의 색상을 설정합니다.  
텍스트 색상은 "eid_data.lua" 파일에서 확인할 수 있습니다.  
기본값 : "ColorEIDObjName"  

### ShowObjectID

아이템, 카드, 알약의 이름 옆의 각 엔티티의 번호(예시 : 5.100.331)를 보여줄지 설정합니다.  
기본값 : false  

### ShowQuality

아이템의 퀄리티를 보여줄지 설정합니다. (리펜턴스 전용)  
기본값 : true  

## Transformations

### TransformationText

아이템의 변신세트 이름을 텍스트로 보여줄지 설정합니다.  
기본값 : true  

### TransformationIcons

아이템의 변신세트 이름을 아이콘으로 보여줄지 설정합니다.  
기본값 : true  

### TransformationColor

변신세트 텍스트의 색상을 설정합니다.  
텍스트 색상은 "eid_data.lua" 파일에서 확인할 수 있습니다.  
기본값 : "ColorEIDTransform"  

## Cards

### DisplayCardInfo

카드, 룬 또는 영혼석의 정보를 출력할지 설정합니다.
기본값 : true  

### DisplayCardInfoShop

상점에서 판매중인 카드 또는 룬의 정보를 출력할지 설정합니다.  
기본값 : false  

### DisplaySoulstoneInfoShop

상점에서 판매중인 영혼석의 정보를 출력할지 설정합니다. (리펜턴스 전용)  
기본값 : true  

### DisplayObstructedCardInfo

비행 능력이 없을 때 갈 수 없는 장소에 있는 카드 또는 룬의 설명을 출력할지 설정합니다.  
기본값 : false  

### DisplayObstructedSoulstoneInfo

비행 능력이 없을 때 갈 수 없는 장소에 있는 영혼석의 설명을 출력할지 설정합니다. (리펜턴스 전용)  
기본값 : true  

### DisplayCardInfoOptions?

Options? 아이템으로 드랍된 선택형 카드 또는 룬의 설명을 출력할지 설정합니다. (리펜턴스 전용)  
기본값 : false  

## Pills

### DisplayPillInfo

알약의 정보를 출력할지 설정합니다.
기본값 : true  

### DisplayPillInfoShop

상점에서 판매중인 알약의 정보를 출력할지 설정합니다.  
기본값 : true  

### DisplayObstructedPillInfo

비행 능력이 없을 때 갈 수 없는 장소에 있는 알약의 설명을 출력할지 설정합니다.  
기본값 : false  

### DisplayPillInfoOptions?

Options? 아이템으로 드랍된 선택형 알약의 설명을 출력할지 설정합니다. (리펜턴스 전용)  
기본값 : false  

### ShowUnidentifiedPillDescriptions

확인되지 않은 알약의 정보를 출력할지 설정합니다.
기본값 : false  

## Sacrifice rooms

### DisplaySacrificeInfo

희생방의 희생 보상 설명을 출력할지 설정합니다.  
기본값 : true  

## Dice rooms

### DisplayDiceInfo

주사위방의 효과 설명을 출력할지 설정합니다.  
기본값 : true  

## Crane Game

### DisplayCraneInfo

크레인 게임에 있는 아이템의 설명을 출력할지 설정합니다. (리펜턴스 전용)  
기본값 : true  

## Bag of Crafting

### DisplayBagOfCrafting

### BagOfCraftingDisplayMode

### BagOfCraftingHideInBattle

### BagOfCraftingResults

### BagOfCraftingCombinationMax

### BagOfCraftingRandomResults

### BagOfCraftingToggleKey

### BagOfCraftingDisplayNames

### BagOfCraftingDisplayIcons

### CraftingHideKey

### CraftingHideButton

### CraftingResultKey

### CraftingResultButton

## Mouse Controls

### EnableMouseControls

마우스를 아이템에 올려 설명을 표시할지 설정합니다.  
기본값 : false  

### ShowCursor

아이템 설명 모드의 마우스 커서를 표시할지 설정합니다.  
기본값 : false  

## Misc

### SpindownDiceResults

Spindown Dice 결과 미리보기 목록에 출력되는 아이템의 갯수를 설정합니다. (리펜턴스 전용)  
기본값 : 3  

### SpindownDiceSkipLocked

Spindown Dice 결과 미리보기에서 해금되지 않은 아이템을 숨길지 설정합니다. (리펜턴스 전용)  
기본값 : false  

### ErrorMessage

오류 메시지를 설정합니다.  
기본값 : "[Effect not defined]"

### TextColor

아이템 설명의 색상을 설정합니다.
텍스트 색상은 "eid_data.lua" 파일에서 확인할 수 있습니다.  
기본값 : "ColorEIDText"  

### ErrorColor

오류 항목의 색상을 설정합니다.
텍스트 색상은 "eid_data.lua" 파일에서 확인할 수 있습니다.  
기본값 : "ColorEIDError"  

### EnableEntityDescriptions

모드로 추가된 엔티티의 설명을 보여쥴지 설정합니다.  
기본값 : true  
