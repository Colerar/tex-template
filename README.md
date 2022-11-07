# tex-template

本人使用的 $\text{Lua\LaTeX}$ 通用模板。

本模板为 CJK 混排目的配置，依赖 $\text{Lua\LaTeX}$、$\text{Lua\TeX-ja}$、$\text{C\TeX}$ 等宏包。

具有以下特性：

- 非衬线字体，意图用于屏幕。
- 中英文之间自动增加空白。
- 修改 `hyperref` 配色，避免亮瞎眼。
- 使用开明标点设置。句中标点视为半角，句末标点视为全角。并且支持标点挤压。
- 使用自动空格识别，毋须再加 `%`。
- 支持 CJK、Emoji 混排，并分别设置字体。避免在中文上下文中看到日语字形，在日语上下文中看到中文字形。
- 支持东亚文字上标。如：
  - 日语振假名：<ruby>振り仮名<rp>(</rp><rt>ふりがな</rt><rp>)</rp></ruby>。
  - 中文拼音：<ruby>拼音<rp>(</rp><rt>pīn yīn</rt><rp>)</rp></ruby>。
  - 中文注音：<ruby>注音<rp>(</rp><rt> ㄓㄨˋ ㄧㄣ </rt><rp>)</rp></ruby>。
- 支持脚注、URL、文内链接、参考文献。

本模板并不意图用于数学环境，不保证数学环境开箱即用。

本模板编译需要经过 `lualatex -> bibtex -> lualatex -> lualatex` 工作流，请注意配置。

## 授权协议

本项目以：

- CC BY 4.0，[LICENSE](LICENSE) 或 <https://creativecommons.org/licenses/by/4.0/legalcode>

分发。您可以自由地共享、演绎本项目，唯需给出适当的署名。
