[![LinuxSuRen/open-source-best-practice](https://img.shields.io/static/v1?label=OSBP&message=%E5%BC%80%E6%BA%90%E6%9C%80%E4%BD%B3%E5%AE%9E%E8%B7%B5&color=blue)](https://github.com/LinuxSuRen/open-source-best-practice)

{{- range $key, $val := .}}
Category: {{$key}}
| Repository | Description |
|---|---|
{{- range $item := $val}}
| [{{$item.github}}](https://github.com/{{$item.github}}) | {{$item.description}} |
{{- end}}
{{end}}

## 收录条件

* 必须是对应的核心项目，必须包含核心代码
* 项目提供了构建脚本，可以由维护者以外的用户自行构建
* 代码仓库提供了较为清晰的 README 文件
* 代码仓库设置了明确的开源协议
