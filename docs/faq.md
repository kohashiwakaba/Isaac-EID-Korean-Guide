### 아이템 설명 모드는 DLC가 필요한가요?

한국어가 지원되는 아이템 설명 모드는 **애프터버스 플러스 DLC 및 리펜턴스 DLC**만 지원합니다. 리버스 및 애프터버스 DLC에서  사용되었던 아이템 설명 모드(영어 전용)는 아래 링크에서 받으실 수 있습니다.

[애프터버스 전용 아이템 설명 모드](https://moddingofisaac.com/mod/1079/external-item-descriptions) (아이작의 번제 리버스를 구입한 스팀 계정 필요)

### 아이템 설명 모드를 써도 도전과제가 해금되나요?

모드 및 콘솔을 적용하지 않은 상태에서 일반 게임을 최소 한 번 이상 클리어 해야만 모드를 사용해도 도전과제를 해금할 수 있습니다. 자세한 내용은 개요 페이지에서 확인할 수 있습니다.

### 아이템 설명 모드는 어떻게 적용하나요?

스팀 버전이라면 [External item descriptions](https://steamcommunity.com/sharedfiles/filedetails/?id=836319872) 모드를 구독한 후에 게임을 실행해 주시면 됩니다.

### 모드를 적용했는데 모드 선택하는 곳에 아무것도 없어요

!!! info ""
    - 참조 링크 : [아이작의 번제 채널 : 모드(MODS) 구독 및 적용 가이드](https://arca.live/b/isaac/19390658)

### 모드가 이상해요? 어떻게 하죠?

다양한 환경에 의하여 다운로드 오류 등 여러 문제가 발생하여 작동하지 않는 경우가 있습니다. 이 경우 아래 순서대로 따라해 보세요.
- 아이템 가까이 간 뒤 F2 키를 눌러보기
- 메인 메뉴의 '모드'에서 '~!External item descriptions' 모드가 적용되어 있는지 확인 : 회색으로 표시되어 있어 적용되지 않았다면 해당 항목을 선택하여 적용할 수 있습니다.
- 다른 모드 전부 비활성화 하기
- '눈 먼 자의 저주'가 걸려 있는지 확인하기
- 콘솔을 열고 빨간 글씨(오류)가 있는지 확인하기(Page Up/Down 키로 스크롤)
- 스팀 라이브러리에서 아이작 게임 오른쪽 클릭 > 속성 > 로컬 파일에서 '게임 파일 무결성 검사' 실행
- 설명모드 재설치
 - 구독 해제 후 게임 실행
 - 바로 게임 종료 후 다시 모드 구독
 - 게임 다시 실행

### 설명의 한글 글씨가 깨져요

아이작의 번제 리버스 특성 상 옵션에서 필터(Filter)를 적용했거나 배율이 정수 배율이 아닌 경우 글씨가 깨져 보일 수 있습니다.

### 기존의 한글 설명모드에 있던 폰트가 더 좋아보이는데 적용할 수 없나요?

**아쉽게도 기존의 폰트는 적용 시 현재 설명을 표시하는 데 치명적인 오류가 발생하여**([적용 시 발생하는 오류](https://gall.dcinside.com/m/tboi/85072)) 부득이하게 적용하지 못하게 되었습니다. 현재 한국어 담당자는 기존 한글 설명모드 글씨체/폰트의 원본 폰트 파일을 보유하고 있지 않기 때문에 적용이 힘들다는 점 양해 부탁드립니다.

### 리펜턴스 DLC를 실행 중인데 아이템 퀄리티가 표시되지 않아요

아이템 설명모드는 애프터버스+와 리펜턴스 DLC 모두 동작하도록 설계되어 있어 애프터버스+ 설명을 우선적으로 불러들인 후 리펜턴스의 설명을 불러들이는 구조입니다. 이 과정은 ```REPENTANCE```라는 기본 옵션값을 통해 리펜턴스 DLC 보유 여부를 확인하는데 일부 모드의 경우 해당 옵션값을 수정하는 경우도 있습니다. 이 경우 리펜턴스 DLC를 실행 중이더라도 설명모드가 애프터버스+로 인식하기 때문에 해당 모드를 찾아 끄면 됩니다.

### 번역 업데이트가 너무 느려요! 업데이트된 번역 파일을 먼저 받을 수 있나요?

[Github 프로젝트에서 받기](./howto/update-from-github.md) 페이지 참조

### 아이템 설명 모드 설정은 어떻게 하나요?

아이템 설명 모드 설정의 대부분은 Mod Config Menu를 통하여 설정할 수 있습니다. 만약 Mod Config Menu를 사용할 수 없는 경우 아래 방법을 이용해 주세요. 설정하려는 값에 대한 내용은 [여기서](./config/lua.md) 확인할 수 있습니다.

  - 아이작 게임이 실행 중인 경우 게임을 종료해 주세요.
  - 애프터버스 + : ```내 문서\My Games\Binding of Isaac Afterbirth + Mods\external item descriptions_836319872``` 폴더로,
  - 리펜턴스 : ```아이작 설치 폴더\mods\external item descriptions_836319872\``` 폴더로 이동
  - ```eid_config.lua``` 오른쪽 클릭 후 연결 프로그램 -> 메모장
  - 원하는 설정값 수정 후 저장
  - 아이작 게임 실행

### 일부 아이템이나 내용 번역이 어색해 보여요

- '**확인하지 않은 알약**' : 해당 문구로 작성한 이유는 '사용하지 않은 알약'의 경우 PHD와 False PHD의 존재로 인해 사용하지 않았어도 알약의 효과를 알 수 있게 되어 오히려 해당 문구가 더 이상한 번역이 되기에 '확인하지 않은 알약' 명칭을 사용하였습니다.
- '**연사(+상한)**' : 애프터버스+의 경우 연사 상한의 영향을 주는 명칭인 '눈물 딜레이'의 존재가 있었으나, 리펜턴스에서는 해당 기능이 동일한 연사 증가로 변경되었으나, 기존 눈물 딜레이 계열 아이템만 여전히 연사의 상한을 늘려주기에 부득이하게 '연사(+상한)' 명칭을 사용하였습니다.
- 현재 공식 번역 곳곳에 오역이 있어 일부 아이템의 제목은 공식 번역과 차이가 있습니다. 현재 설명모드의 한국어 아이템 제목은 공식 번역과 기존의 한글 설명모드의 요소를 적당히 섞어 사용하고 있습니다.
- 이외의 어색해 보이는 내용은 이하 댓글란이나 아이작의 번제 갤러리/채널에 제보를 부탁드립니다.

### 아이작의 번제 게임의 기타 팁을 알고 싶어요

- [아이작의 번제 갤러리 : 뉴비들이 자주 묻는 질문 모음](https://gall.dcinside.com/m/tboi/41131)
- [아이작의 번제 갤러리 : 아이작의 번제 정보/팁글 모음](https://gall.dcinside.com/m/tboi/38515)
- [아이작의 번제 갤러리 : 아이작의 번제 리펜턴스 DLC 정보 모음](https://gall.dcinside.com/m/tboi/25602)

### 기타 댓글 및 제보

<div class="giscus"></div>

<script src="https://giscus.app/client.js"
        data-repo="kohashiwakaba/Isaac-EID-Korean-Guide"
        data-repo-id="R_kgDOGqUX-g"
        data-category="Giscus comments"
        data-category-id="DIC_kwDOGqUX-s4CA7JX"
        data-mapping="pathname"
        data-reactions-enabled="1"
        data-emit-metadata="0"
        data-input-position="top"
        data-theme="preferred_color_scheme"
        data-lang="ko"
        crossorigin="anonymous"
        async>
</script>

<!-- <script>
  const schemebtn = document.queryselector('.md-header__options')
  function utterancesTheme () {
    if (document.querySelector('.giscus-frame')) {
      const theme = document.documentElement.getAttribute('data-theme') === 'dark' ? 'github-dark' : 'github-light'
      const message = {
        type: 'set-theme',
        theme: theme
      };
      const iframe = document.querySelector('.giscus-frame');
      iframe.contentWindow.postMessage(message, 'https://giscus.app');
    }
  }
</script> -->