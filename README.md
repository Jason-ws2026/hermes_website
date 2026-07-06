# 拾光者营销策划 — 官网

> 拾微光以成炬，聚星火以燎原

**线上地址**：https://jason-ws2026.github.io/hermes_website/  
**自定义域名**：sguangzhe.cn

---

## 目录结构

```
hermes_website/
├── README.md        # 本文件
├── deploy.sh        # 一键部署脚本
├── CNAME            # 自定义域名（别删）
├── index.html       # 网站源码 — 单页，所有样式/结构都在这里
└── images/          # 案例展示图片
    ├── 美团.jpg
    ├── AI搜索01.jpg ~ AI搜索04.jpg
    ├── 抖音01.jpg ~ 抖音03.jpg
```

## 常见修改场景

### 1. 修改文案/标题/联系方式

直接编辑 `index.html`，搜索对应的文字即可：

- 首页大标题 → 搜索 `ARAGORN` 或 `拾光者`
- 服务介绍 → 搜索 `全域获客` / `AI搜索` / `经营体系`
- 联系方式 → 搜索 `15928644079`
- 案例说明 → 搜索 `案例` 或 `成果展示`

### 2. 替换/新增案例图片

1. 把新图片放到 `images/` 目录下（推荐 JPG，宽高尺寸统一）
2. 在 `index.html` 中找到对应的 `<img>` 标签，修改 `src` 路径

### 3. 新增/删除板块

每个板块是结构类似的 `section` 块，复制一份改内容即可：

```html
<section id="你的板块ID">
  <div class="content">
    <!-- 内容区 -->
  </div>
</section>
```

然后在顶部导航栏添加对应的菜单项。

### 4. 更换颜色/主题

搜索 `:root` 或颜色值，主题色目前使用暗黑背景 `#0a0a0a` + 红色点缀 `#c0392b`。

---

## 部署

### 方式一：一键部署（推荐）

```bash
./deploy.sh
```

### 方式二：手动部署

```bash
git add .
git commit -m "修改说明"
git push origin main
```

等待约 1-2 分钟，GitHub Actions 自动部署到 Pages。

---

## 技术栈

- 纯 HTML + CSS（无框架、无构建工具）
- 全屏滚动（scroll-snap）
- 手机自适应
- 托管：GitHub Pages
- 域名：sguangzhe.cn（DNS 指向 GitHub Pages）
