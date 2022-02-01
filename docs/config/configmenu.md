

Mod Config Menu는 기본적으로 라틴 계열의 문자만 지원하기 때문에 아쉽게도 한국어는 지원하지 않습니다. 이 페이지는 설명모드 세팅 방법을 모르는 사람들을 위한 페이지입니다.

Mod Config Menu의 기본적인 진입 방법은 ++l++ 키 혹은 ++f10++ 키입니다. 진입에 성공하면 아래와 비슷한 화면이 출력됩니다.
![한국어 설정](../img/guide_first.jpg){: width="500"}

## 언어 설정

EID -> General -> Language를 'Korean'으로 설정하면 이후 아이템 설명이 한국어로 표시됩니다.

## 기본 설정

EID -> General에서 기본 설정을 할 수 있습니다.

| 옵션 | 설명 | 기본값 |
| ------------ | ------------- | ------------- |
| **Language** | 언어를 설정합니다 | `English` |
| **Name Language** | 아이템 이름 표시 언어를 설정합니다.<br/> - `English` : 영어만<br/> - `Current` : 현재 언어만<br/> - `Current + English` : 현재 언어 + 영어 | `Current` |
| **Toggle** | 설명을 켜고 끌 수 있는 키보드 단축키를 설정합니다. | `F2`(키보드) |
| **Position X** | 텍스트박스의 X좌표 위치를 설정합니다. | `60` |
| **Position Y** | 텍스트박스의 Y좌표 위치를 설정합니다. | `45` |
| **Line Height** | 줄 간 간격을 설정합니다. | `11`(폰트마다 다름) |
| **Textbox Width** | 텍스트박스의 넓이를 설정합니다.<br/> | `130`(한글 `150`) |
| **Is initially hidden** | 아이작의 번제 게임 시작 시 설명 모드를 숨기게 합니다. | `false` |
| **Start of Run Warnings** | 아이작의 번제 게임 시작 시 해금이 불가능하거나, 알트 카인 플레이 시 경고문을 출력합니다. | `false` |
| **Show on "Curse of Blind"** | Curse of Blind(눈먼자의 저주) 상태에 있는 아이템의 설명을 보여줍니다. | `false` |
| **Show on April Fools Challenge** | Aprils Fool 챌린지를 플레이할 때 실제 아이템의 설명을 보여줍니다. | `false` |
| **Show Hidden alt-Path Item** | 리펜턴스 대체 루트와 Broken Glasses 장신구의 가려진 아이템의 설명을 보여줍니다. | `false` |
| **Show Unidentified Pill Effects** | 확인하지 않은 알약의 설명을 보여줍니다. | `false` |
| **Hide in Battle** | 방 안에 적이 있을 경우 아이템을 자동으로 숨깁니다. | `false` |
| **Indicator** | 설명 출력중인 아이템의 표시방법을 설정합니다.<br/>![인디케이터](https://steamuserimages-a.akamaihd.net/ugc/964219973643822883/4354AE9676356B121ED0C70259F6FE1CB0174E2B/?imw=5000&imh=5000&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=false)<br/> - `none` : 없음<br/> - `arrow` : 화살표<br/> - `blink` : 깜빡임<br/> - `border` : 테두리 깜빡임<br/> - `highlight` : 테두리 | `none` |
| **Max Distance** | 아이템이 인식되는 범위를 설정합니다. | `5` |
| **RESET CONFIG TO DEFAULT** | 설명모드 설정을 초기화합니다. |  |

## 표시 설정

EID -> Display에서 표시할 설명의 유형을 설정할 수 있습니다.

| 옵션 | 설명 | 기본값 |
| ------------ | ------------- | ------------- |
| **Collectible Infos** | 아이템의 설명을 보여줍니다. | `true` |
| **Trinket Infos** | 장신구의 설명을 보여줍니다. | `true` |
| **Card Infos** | 카드/룬/영혼석의 설명을 보여줍니다. | `true` |
| **Pill Infos** | 알약의 설명을 보여줍니다. | `true` |
| **Glitched Item Infos** | 글리치 아이템의 설명을 보여줍니다. 자세한 내용은 [여기서](../howto/advanced#tmtrainer) 확인할 수 있습니다. | `true` |
| **Sacrifice Room Infos** | 다음 희생방 희생 시 발생 효과를 보여줍니다. | `true` |
| **Dice Room Infos** | 현재 주사위방의 설명을 보여줍니다. | `true` |
| **Crane Game Infos** | 크레인 게임에 있는 아이템의 설명을 보여줍니다. | `true` |
| **Void Stat Increase Infos** | Void 및 Black Rune 아이템 사용 시 예상되는 스탯 증가량을 보여줍니다. | `false` |
| **Display Infos when obstructed**<br/>캐릭터가 갈 수 없는 곳의 픽업 아이템의 설명 ||
| **Show again when having flight** | 비행 아이템 획득시 설명을 다시 보여줍니다. | `true` |
| **Card Infos** | 장애물에 가로막힌 카드/룬의 설명을 보여줍니다. | `false` |
| **Soulsotne Infos** | 장애물에 가로막힌 영혼석의 설명을 보여줍니다. | `true` |
| **Pill Infos** | 장애물에 가로막힌 알약의 설명을 보여줍니다. | `true` |
| **Display Infos in Shops**<br/>상점 픽업 아이템의 설명 ||
| **Card Infos** | 상점에서 판매중인 카드/룬의 설명을 보여줍니다. | `false` |
| **Soulsotne Infos** | 상점에서 판매중인 영혼석의 설명을 보여줍니다. | `true` |
| **Pill Infos** | 상점에서 판매중인 알약의 설명을 보여줍니다. | `true` |
| **Interactions with 'Options?'**<br/>Options? 아이템으로 생긴 선택형 픽업 아이템의 설명 ||
| **Card Infos when spawned by 'Options?'** | Options? 아이템으로 생긴 카드/룬의 설명을 보여줍니다. | `false` |
| **Pill Infos when spawned by 'Options?'** | Options? 아이템으로 생긴 알약의 설명을 보여줍니다. | `true` |


## 스타일 설정

EID -> Visuals에서 표시할 설명의 스타일을 설정할 수 있습니다.

| 옵션 | 설명 | 기본값 |
| ------------ | ------------- | ------------- |
| **Font Type** | 폰트를 설정합니다.<br/>![폰트 미리보기](../img/fontpreview.png) | `korean_hcrdotum`(한국어) |
| **Display mode** | 설명 출력 위치를 설정합니다. | `default` |
| **Text Size** | 텍스트박스의 크기 비율을 설정합니다. | `1` |
| **Toggle Scale** | 크기 비율 단축키를 지정합니다. 0.5배→1배→2배 순으로 순환되며 꾹 누르면 소숫점 배율로 지정됩니다. | 없음 |
| **Local mode centered** | (Display mode가 Local일 때만 적용)설명을 아이템 오른쪽이 아닌 중앙에 표시합니다. | `false` |
| **Transparency** | 글자의 불투명도를 설정합니다. | `0.75` |
| **Display Item Name** | 아이템의 이름을 보여줍니다. | `true` |
| **Display Item Type** | 아이템의 타입(액티브/패시브/패밀리어 등)을 보여줍니다. | `true` |
| **Display Item Icon** | 아이템의 아이콘을 보여줍니다. | `true` |
| **Display Transformation Name** | 아이템이 속한 변신세트의 이름을 보여줍니다. | `true` |
| **Display Transformation Icon** | 아이템이 속한 변신세트의 아이콘을 보여줍니다. | `true` |
| **Display Quality Info** | (리펜턴스 전용)아이템의 퀄리티를 보여줍니다. | `true` |
| **Display Object ID** | 아이템의 ID를 보여줍니다(5.100.331) | `false` |
| **Mod indicator displayed for** | 모드 아이템의 출신 모드를 보여줍니다. | `none` |

## 조합의 가방 설정

## 컬렉션 페이지 설정

EID -> Save Game에서 컬렉션 페이지 기능을 사용할 수 있습니다. 이 기능은 초기에는 비활성화되어 있으며 설명모드에 동봉된 scripts/savegame_reader 프로그램을 실행해야 인식할 수 있습니다.

| 옵션 | 설명 | 기본값 |
| ------------ | ------------- | ------------- |
| **Current Save Game** | 컬렉션 페이지의 세이브를 설정합니다. | `0`(해당 기능 비활성화) |
| **Collection Page Highlight Color** | 아직 획득하지 않은 아이템의 색상을 설정합니다. | `Fade` |

## 마우스 설정

EID -> Mouse에서 마우스 기능을 설정할 수 있습니다. **해당 기능은 개발중인 기능이기 때문에 정상적으로 동작하지 않을 수 있습니다.**

| 옵션 | 설명 | 기본값 |
| ------------ | ------------- | ------------- |
| **Enable Mouse Controls** | 마우스 기능을 활성화합니다. | `false` |
| **Show Cursor** | 커서를 보여줍니다. | `false` |

## 색상 설정

EID -> Colors에서 설명의 색상을 지정할 수 있습니다.

| 옵션 | 설명 | 기본값 |
| ------------ | ------------- | ------------- |
| **Descriptions** | 아이템 설명 색상을 설정합니다. | `EIDText` |
| **Names** | 아이템 이름 색상을 설정합니다. | `EIDObjName` |
| **Transformations** | 변신세트 이름 색상을 설정합니다. | `EIDTransformation` |
| **Errors** | 오류 문구 색상을 설정합니다. | `EIDError` |
| **Mod Indicator** | 출신 모드 이름의 색상을 설정합니다. | `LightOrange` |

