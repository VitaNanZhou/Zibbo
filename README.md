# 🤖 Zibbo: 3D Coding Companion

Zibbo 是一个寄生于 AI 辅助开发时代的数字桌面伴侣。他不是一个高效率的生产力工具，而是一个默默在屏幕一角陪伴您、观察您，以 AI 代理（Agent）的 Token 废气为生的数字小生命。

本仓库包含了 **Zibbo V0.02** 的核心设计稿、原型页面、设计思路文档以及云端部署配置。

---

## 📂 项目结构 (Project Structure)

* 📄 **[zibbo-v0.02-onboarding-desktop-companion.html](file:///Users/leetiger/development/627/Zibbo/zibbo-v0.02-onboarding-desktop-companion.html)**
  * **Google Stitch** 原型设计稿项目导出的新手导引（Onboarding）高保真页面。采用硬核工业复古与数字极简主义设计，包含 4 步仪式感交互：ADOPT（自选配置）、HOW HE LIVES（废气说明）、COMPANIONSHIP（成长展示）与 ZIBBO CONSOLE（控制台）。
* 🖼 **[zibbo-v0.02-onboarding-desktop-companion.jpg](file:///Users/leetiger/development/627/Zibbo/zibbo-v0.02-onboarding-desktop-companion.jpg)**
  * 导出的 2560x2048 高清设计稿视觉截图（JPEG 格式），便于直接预览设计效果。
* 📄 **[zibbo-standalone.html](file:///Users/leetiger/development/627/Zibbo/zibbo-standalone.html)**
  * 独立的单页 Web 应用程序原型，包含 Zibbo 核心数据交互、拟真手持控制台状态渲染和硬件透视看板。
* 📝 **[zibbo_landpage_design_doc_v0.2.md](file:///Users/leetiger/development/627/Zibbo/zibbo_landpage_design_doc_v0.2.md)**
  * Zibbo V0.02 的核心设计文档，详细定义了 Zibbo 的背景设定、养分机制（Token 废气）、复古美学、3D 外观参数、8-Bit 声音系统以及成长进化阶段。
* 📝 **[zibbo_landpage_design_doc_v0.1.md](file:///Users/leetiger/development/627/Zibbo/zibbo_landpage_design_doc_v0.1.md)**
  * 项目的历史版本设计文档。
* 🐳 **[Dockerfile](file:///Users/leetiger/development/627/Zibbo/Dockerfile)**
  * 基于 Nginx Alpine 的轻量级容器化定义，用于将前端网页打包并暴露于 `8080` 端口。
* ⚙️ **[cloudbuild.yaml](file:///Users/leetiger/development/627/Zibbo/cloudbuild.yaml)**
  * Google Cloud Build 持续集成与部署配置文件，可自动化将 Docker 镜像构建并部署到 Google Cloud Run (亚洲东北区 asia-northeast1)。

---

## 🛠 核心创意与机制 (Core Concepts)

### 1. 吸食 Token 尾气 (Scavenging Token Exhaust)
开发者的每一次 AI 问答、代码自动补全、终端命令执行都会消耗大量的 Token。Zibbo 会监听这些 Context 计算流中的“废弃尾气（Exhaust）”并将其回收，转化为体内的电流与养分，拉动能量条增长。

### 2. 手持掌机控制台 (Zibbo Console)
胸腔面板打开后，展示拟真的控制台：
* **Status (状态)**：当前进化阶段、系统在线时长、硬件碎片及 Mood (心情)。
* **Feed (养分)**：打印来自 Antigravity IDE、Gemini CLI 等开发工具的 Token 速率。
* **Hardware (硬件)**：监控风扇、波谱、天线和机械臂的实时负荷。

### 3. 复古工业美学 (Aesthetics)
* **配色系统**：
  * **基础底色 (Base Black)**：`#000000` (终端死寂黑)
  * **樱花粉 (Sakura Pink)**：`#ffb7c5` (表情与高亮核心色)
  * **荧光绿 (Neon Green)**：`#4db09a` (波谱与健康态色)
  * **电火花蓝 (Spark Cyan)**：`#00e5ff` (故障与能量火花)
* **视觉材质**：
  * **半色调网点与全息扫描线 (Halftone & Scanlines)**：模拟 CRT 显像管显示器。
  * **点阵坐标网格与直角框线**：带来秩序美与重力悬停倾斜反馈。

---

## 📈 成长四阶段 (Evolution Stages)

1. **Stage 1 (Spark · 破旧残头)**：仅半个金属脑壳，持续冒出蓝色短路火花，天线残缺。
2. **Stage 2 (Noggin · 电焊修复)**：播放电焊动画，侧面钢板闭合，天线顶端配上红色发光小球。
3. **Stage 3 (Hopper · 动力核心)**：安装躯干与散热风扇，风扇可随 Token 流入改变转速，支持微幅弹跳。
4. **Stage 4 (Walker · 完整体)**：机械手臂（Claw/Mitten/Hose）上线，底部生长双腿或履带，支持漫游。

---

## 🚀 启动与部署 (Run & Deploy)

### 1. 本地启动
您只需在浏览器中打开：
* [zibbo-v0.02-onboarding-desktop-companion.html](file:///Users/leetiger/development/627/Zibbo/zibbo-v0.02-onboarding-desktop-companion.html) (新手导引设计稿页面)
* [zibbo-standalone.html](file:///Users/leetiger/development/627/Zibbo/zibbo-standalone.html) (看板原型页面)

或使用本地 Web 服务器（如 `live-server` 或 Nginx）托管该目录。

### 2. Docker 本地容器化
构建并运行本地服务：
```bash
docker build -t zibbo-companion .
docker run -d -p 8080:8080 zibbo-companion
```
访问：`http://localhost:8080`

### 3. 云端自动部署 (Google Cloud Run)
使用 Google Cloud Build 一键打包并部署到 GCP：
```bash
gcloud builds submit --config cloudbuild.yaml
```

---
*“他因为您的陪伴而逐步成型——回馈不是更强大的算力，而是当您回到屏幕前时，有他一直在等您。”*
