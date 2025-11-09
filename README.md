# Elm Chrome Extension Template

Elm으로 크롬 익스텐션(Side Panel)을 만들기 위한 보일러플레이트입니다.

## 프로젝트 구조

```
chrome-extension-translator/
├── src/
│   └── Main.elm           # Elm 애플리케이션 (Panel UI)
├── public/
│   ├── manifest.json      # Chrome Extension 설정 (Manifest V3)
│   ├── panel.html         # Panel HTML 템플릿
│   └── icons/             # 확장 프로그램 아이콘 (직접 추가 필요)
├── build/                 # 빌드 결과물 (크롬에 업로드할 폴더)
├── build.sh              # 프로덕션 빌드 스크립트
├── dev.sh                # 개발 빌드 스크립트
├── elm.json              # Elm 설정
└── .gitignore
```

## 필수 요구사항

- [Elm](https://elm-lang.org/) 0.19.1 이상

## 시작하기

### 1. 아이콘 추가 (선택사항)

`public/icons/` 폴더에 다음 아이콘을 추가하세요:
- `icon16.png` (16x16)
- `icon48.png` (48x48)
- `icon128.png` (128x128)

아이콘이 없어도 빌드는 가능하지만, 크롬에서 경고가 표시될 수 있습니다.

### 2. 빌드

#### 개발 빌드 (디버그 모드)
```bash
./dev.sh
```

#### 프로덕션 빌드 (최적화)
```bash
./build.sh
```

### 3. 크롬에서 확장 프로그램 로드

1. Chrome 브라우저에서 `chrome://extensions/` 접속
2. 우측 상단의 **개발자 모드** 활성화
3. **압축해제된 확장 프로그램을 로드합니다** 클릭
4. `build/` 폴더 선택

### 4. 확장 프로그램 사용

- 브라우저 툴바의 확장 프로그램 아이콘 클릭
- Side Panel이 열리며 Elm 앱이 실행됩니다

## 개발 워크플로우

1. `src/Main.elm`에서 Elm 코드 작성
2. `./dev.sh` 실행하여 빌드
3. Chrome에서 확장 프로그램 새로고침 (chrome://extensions/)
4. Side Panel 열어서 변경사항 확인

## 커스터마이징

### manifest.json 수정

`public/manifest.json`에서 다음을 수정하세요:
- `name`: 확장 프로그램 이름
- `description`: 설명
- `version`: 버전
- `permissions`: 필요한 권한 추가

### Elm 앱 수정

`src/Main.elm`을 수정하여 원하는 기능을 구현하세요. Elm 패키지가 필요한 경우:

```bash
elm install elm/http
```

### HTML/CSS 커스터마이징

`public/panel.html`에서 스타일과 레이아웃을 수정할 수 있습니다.

## 빌드 스크립트 설명

### build.sh (프로덕션)
- `--optimize` 플래그로 Elm 코드 최적화
- `build/` 폴더에 배포 가능한 확장 프로그램 생성

### dev.sh (개발)
- `--debug` 플래그로 Elm 디버거 활성화
- 개발 중 빠른 피드백을 위한 빌드

## 배포

1. `./build.sh` 실행
2. `build/` 폴더를 zip으로 압축
3. [Chrome Web Store](https://chrome.google.com/webstore/devconsole)에 업로드

## 라이센스

MIT
