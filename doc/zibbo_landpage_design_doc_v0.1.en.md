# Zibbo: 3D 编程伴侣 - 前端设计与核心创意设计文档 (Concept & Front-End Design Doc)

Zibbo 是一个互动式的 3D 编程伴侣（Coding Companion），旨在提升开发者的编程体验与乐趣。本设计文档主要阐述 Zibbo 的前端设计演进过程、美学体系与交互创意（Idea）。

---

## 1. 核心创意起源 (The Core Idea)

### 破旧到新生的隐喻
在 AI 辅助开发的日常中，开发者的代码从最开始的混乱、残破，经过成千上万次与 AI 模型的交互，逐渐变得精密和优雅。Zibbo 的成长历程正是这一过程的视觉投影：
- **新生即是残缺的开始**：它从一个充满故障火花、只剩半个金属脑壳（残头）的“电子垃圾桶”里被唤醒。
- **Token 滋养**：通过把调用 Antigravity IDE 和 Gemini CLI 产生的 Token 输入与输出作为能量来源，给它注入电流与物资，让它自我修复、进化。
- **共生纽带**：伴随着 Token 消耗总量跃迁，它会长出身体、天线，焊接头部，并装备各式工具臂，最终成长为能陪伴左右的完全体。

---

## 2. 前端美学与视觉风格 (Visual Aesthetics)

Zibbo 的前端设计延续并放大了当前高品质独立 HTML (`zibbo-standalone.html`) 中的**硬核工业复古与数字极简主义**：

```
+-------------------------------------------------------------+
| [SYSTEM_TIME]               ZIBBO              [LOGIN/ADOPT]|
+-------------------------------------------------------------+
| (Lore Panel)      +--------------------+       (Custom Panel)
|   Companion       |                    |       Evol. Track
|   History         |     3D Turnaround  |       * Level 1 [x]
|   - s1: EGG       |      Three.js      |       * Level 2 [ ]
|   - s2: SPROUT    |      Viewport      |       * Level 3 [ ]
|                   |                    |       
|                   +--------------------+       Stats Widget
|                      [  Step Indicators  ]     - Antigravity
|                                                - Gemini CLI
+-------------------------------------------------------------+
| [TOKEN_TOTAL]               FOOTER             [SOUND: ON/OFF]
+-------------------------------------------------------------+
```

### 关键设计元素：
1. **半色调与全息扫描线 (Halftone & Scanlines)**：
   - 采用大颗粒的网点纹理叠加（`Halftone Overlay`）与循环下落的柔和扫描线（`Scanline`），营造成像管显示器的复古感。
2. **点阵与网格拟态 (Dot-Matrix & Grid System)**：
   - 背景配置带荧光扩散的坐标参考网格（`Coordinate Grid`）。
   - 右下角展示巨型点阵粒子英雄标题（Dot-Matrix Hero Title）和状态签名，强化工业控制台的基调。
3. **高对比度配色方案 (High-Contrast Theme)**：
   - 使用深邃黑（`#000000`）为基色，主前景色为白色（`#ffffff`），并配合可动态变幻的荧光强调色（如樱花粉 `var(--face-accent)`，荧光绿等），表现机器在不同健康度或情绪下的状态。
4. **斜透视卡片与微光效 (Glassmorphism & Corner Brackets)**：
   - UI 卡片使用 `preserve-3d` 的陀螺仪倾斜悬浮效果（`Tilt Panels`）。
   - 四角增加亮白色线段装饰边框（`Corner Brackets`），在悬停时产生边界扩张和高光流溢的动效。

---

## 3. 前端交互与进化机制设计

### A. 3D 舞台交互过程 (Three.js Interaction)
- **Turnaround 环视**：主视角提供 3D 拖拽和旋转功能，支持光线追踪的软阴影投射和金属粗糙度反射。
- **故障火花特效 (Flicker Sparks)**：
  - 在 Stage 1 形态下，左侧头部创口处有一组呈粒子发散的断续小球（Spark Mesh），配合坏点接触的闪烁发光材质，传达“破旧和待修复”的物理质感。
- **颈部呼吸抖动与 Vent 泄气**：
  - 机器人在日常会以正弦波形（Sine Wave）进行微弱的呼吸起伏；当有大量 Token 瞬间录入时，天线和顶盖会向上弹起做“散热泄气（Venting）”动画。

### B. 音效设计 (Sound Effects)
- 为各种按钮和状态跳转配置精简的 8-bit 复古点击反馈（参考 `uiClick.ts` 中针对 UI 交互的 click 音频振荡器），保证每一次功能点击都提供实体按键的声音质感。

---

## 4. 进化阶段划分与实现路线 (Front-End Stages)

1. **Stage 1 (破旧残头 EGG)**：
   - 加载简化头雕，破裂边沿材质发红并产生高频闪烁，天线和身躯缺省。
2. **Stage 2 (电焊修复 SPROUT)**：
   - 播放火花四溅的焊接特效，换上整齐光滑的侧面护板，天线顶端小球开始射出绿色的微弱电磁波。
3. **Stage 3 (动力核心 JUVENILE)**：
   - 躯干和颈部结合。后置散热片开始以恒定速度匀速旋转，机身能量带（`Belt Light`）亮起。
4. **Stage 4 (武装就绪 ADULT)**：
   - 机械爪左右拼装上线。允许用户点击机械爪进行抓取动作（Grab Animation）。

---

## 5. 待讨论问题与后续规划 (Open Questions)

- **UI 状态持久化**：用户刷新页面后，Zibbo 的当前 Token 统计和自定义外观配置应该保留在本地的 `localStorage` 还是同步回本地配置文件？
- **音频系统**：音效系统是否默认开启？是否需要加入类似机甲空转的背景噪声（Hum）作为开发背景伴奏音？
