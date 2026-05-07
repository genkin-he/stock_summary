# stock_summary_config

`stock_summary` 跑批的标的池配置, 单独成库便于:

- 主项目代码可以保持 private, 配置仍能被 worker 公开访问
- 改标的不用 redeploy worker (60s 缓存)
- 配置变更历史与代码变更解耦

## 文件

- `config.json` — 按市场分组的标的池 (CN / HK / US)

## 编辑

直接改 `config.json`, push 到 `main`. Worker 通过 `CONFIG_URL` 拉取, 60s 缓存自动失效.
