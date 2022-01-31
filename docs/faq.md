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

### 설명의 한글 글씨가 깨져요

아이작의 번제 리버스 특성 상 옵션에서 필터(Filter)를 적용했거나 배율이 정수 배율이 아닌 경우 글씨가 깨져 보일 수 있습니다.

### 리펜턴스 DLC를 실행 중인데 아이템 퀄리티가 표시되지 않아요

아이템 설명모드는 애프터버스+와 리펜턴스 DLC 모두 동작하도록 설계되어 있어 애프터버스+ 설명을 우선적으로 불러들인 후 리펜턴스의 설명을 불러들이는 구조입니다. 이 과정은 ```REPENTANCE```라는 기본 옵션값을 통해 리펜턴스 DLC 보유 여부를 확인하는데 일부 모드의 경우 해당 옵션값을 수정하는 경우도 있습니다. 이 경우 리펜턴스 DLC를 실행 중이더라도 설명모드가 애프터버스+로 인식하기 때문에 해당 모드를 찾아 끄면 됩니다.

### 번역 업데이트가 너무 느려요! 업데이트된 번역 파일을 먼저 받을 수 있나요?

[Github 프로젝트에서 받기](./howto/update-from-github.md) 페이지 참조

### 아이템 설명 모드 설정은 어떻게 하나요?

아이템 설명 모드 설정의 대부분은 Mod Config Menu를 통하여 설정할 수 있습니다. 만약 Mod Config Menu를 사용할 수 없는 경우 아래 방법을 이용해 주세요. 설정하려는 값에 대한 내용은 [여기서](./config/lua.md) 확인할 수 있습니다. 안타깝게도 현재 애프터버스+용 Mod Config Menu 모드는 창작마당에서 내려간 상태이므로 메모장 수정 방법을 이용해 주셔야 됩니다.

  - 아이작 게임이 실행 중인 경우 게임을 종료해 주세요.
  - 애프터버스 + : ```내 문서\My Games\Binding of Isaac Afterbirth + Mods\external item descriptions_836319872``` 폴더로,
  - 리펜턴스 : ```아이작 설치 폴더\mods\external item descriptions_836319872\``` 폴더로 이동
  - ```eid_config.lua``` 오른쪽 클릭 후 연결 프로그램 -> 메모장
  - 원하는 설정값 수정 후 저장
  - 아이작 게임 실행

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