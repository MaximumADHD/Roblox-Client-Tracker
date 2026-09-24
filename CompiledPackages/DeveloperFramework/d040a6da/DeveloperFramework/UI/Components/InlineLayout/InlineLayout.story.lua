local Framework = script:FindFirstAncestor("UI").Parent
local React = require(Framework.Util.React)
local InlineLayout = require(Framework.UI.Components.InlineLayout)
local TextElement = require(Framework.UI.Components.InlineLayout.TextElement)
local LinkElement = require(Framework.UI.Components.InlineLayout.LinkElement)
local ImageElement = require(Framework.UI.Components.InlineLayout.ImageElement)
local HardBreakElement = require(Framework.UI.Components.InlineLayout.HardBreakElement)
local TextSplitByEnum = require(Framework.UI.Components.InlineLayout.TextSplitByEnum)

return {
	controls = {
		splitBy = { TextSplitByEnum.Word, TextSplitByEnum.Symbol },
		text = "Any text you want",
	},
	stories = {
		CustomText = function(props)
			return React.createElement(InlineLayout, {
				Elements = {
					TextElement.new({
						LayoutOrder = 2,
						Text = props.controls.text,
						TextSize = 18,
						Font = Enum.Font.BuilderSans,
						SplitBy = props.controls.splitBy,
					}),
				},
			})
		end,
		Default = function(props)
			return React.createElement(InlineLayout, {
				Elements = {
					TextElement.new({
						LayoutOrder = 2,
						Text = "Very long text Very long textVery long textVery long textVery long textVery long textVery long textVery long textVery long textVery long text",
						TextSize = 18,
						Font = Enum.Font.BuilderSans,
						SplitBy = props.controls.splitBy,
					}),
				},
			})
		end,
		DefaultUTF8 = function(props)
			return React.createElement(InlineLayout, {
				Elements = {
					TextElement.new({
						LayoutOrder = 2,
						Text = "Очень длинный текст Очень длинный текстОчень длинный текстОчень длинный текстОчень длинный текстОчень длинный текстОчень длинный текстОчень длинный текстОчень длинный текст. and multiple codepoint symbolsééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééé",
						TextSize = 16,
						Font = Enum.Font.BuilderSans,
						SplitBy = props.controls.splitBy,
					}),
				},
			})
		end,
		SeveralTextElements = function(props)
			return React.createElement(InlineLayout, {
				Elements = {
					TextElement.new({
						Text = "Very long text Very long textVery long textVery long textVery long textVery long textVery long textVery long textVery long textVery long text. ",
						TextSize = 18,
						Font = Enum.Font.BuilderSans,
						SplitBy = props.controls.splitBy,
					}),
					TextElement.new({
						Text = "Очень длинный текст Очень длинный текстОчень длинный текстОчень длинный текстОчень длинный текстОчень длинный текстОчень длинный текстОчень длинный текстОчень длинный текст. ",
						TextSize = 18,
						Font = Enum.Font.BuilderSans,
						SplitBy = props.controls.splitBy,
					}),
					TextElement.new({
						Text = "Sehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange TextSehr lange Text",
						TextSize = 18,
						Font = Enum.Font.BuilderSans,
						SplitBy = props.controls.splitBy,
					}),
				},
			})
		end,
		WithLinks = function(props)
			return React.createElement(InlineLayout, {
				Elements = {
					TextElement.new({
						Text = "Very long text Very long textVery long textVery long textVery long textVery long textVery long textVery long textVery long textVery long text. ",
						TextSize = 18,
						Font = Enum.Font.BuilderSans,
						SplitBy = props.controls.splitBy,
					}),
					LinkElement.new({
						OnClick = function()
							print("link clicked")
						end,
						Text = "Sehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange TextSehr lange Text. ",
						TextSize = 18,
						Font = Enum.Font.BuilderSans,
						SplitBy = props.controls.splitBy,
					}),
					TextElement.new({
						Text = "雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨",
						TextSize = 18,
						Font = Enum.Font.BuilderSans,
						-- Fixed value is not a mistake. Our naive word splitting doesn't try to guess the language rules, so it's up to the user to choose
						SplitBy = TextSplitByEnum.Symbol,
					}),
				},
			})
		end,
		WithRichText = function(props)
			return React.createElement(InlineLayout, {
				Elements = {
					TextElement.new({
						Text = "Very long text Very long textVery long textVery long textVery long textVery long textVery long textVery long textVery long textVery long text. ",
						TextSize = 18,
						Font = Enum.Font.BuilderSans,
						TextStyle = {
							Bold = true,
						},
						SplitBy = props.controls.splitBy,
					}),
					LinkElement.new({
						OnClick = function()
							print("link clicked")
						end,
						Text = "Sehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange TextSehr lange Text.",
						TextSize = 18,
						Font = Enum.Font.BuilderSans,
						TextStyle = {
							Italic = true,
						},
						SplitBy = props.controls.splitBy,
					}),
					TextElement.new({
						Text = " 雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨 ",
						TextSize = 18,
						Font = Enum.Font.BuilderSans,
						TextStyle = {
							Strike = true,
						},
						SplitBy = TextSplitByEnum.Symbol,
					}),
				},
			})
		end,
		WithImage = function(props)
			return React.createElement(InlineLayout, {
				Elements = {
					TextElement.new({
						Text = "Very long text Very long textVery long textVery long textVery long textVery long textVery long textVery long textVery long textVery long text ",
						TextSize = 18,
						Font = Enum.Font.BuilderSans,
						SplitBy = props.controls.splitBy,
					}),
					LinkElement.new({
						OnClick = function()
							print("link clicked")
						end,
						Text = "Sehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange TextSehr lange Text",
						TextSize = 18,
						Font = Enum.Font.BuilderSans,
						SplitBy = props.controls.splitBy,
					}),
					ImageElement.new({
						Image = "rbxasset://textures/ui/common/robux_color@2x.png",
						Size = UDim2.fromOffset(100, 100),
						SplitBy = props.controls.splitBy,
					}),
					TextElement.new({
						Text = " 雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨",
						TextSize = 18,
						Font = Enum.Font.BuilderSans,
					}),
				},
			})
		end,
		WithHardBreak = function()
			return React.createElement(InlineLayout, {
				Elements = {
					TextElement.new({
						Text = "Very long text Very long textVery long textVery long textVery long textVery long textVery long textVery long textVery long textVery long text",
						TextSize = 18,
						Font = Enum.Font.BuilderSans,
					}),
					HardBreakElement,
					LinkElement.new({
						OnClick = function()
							print("link clicked")
						end,
						Text = "Sehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange TextSehr lange Text",
						TextSize = 18,
						Font = Enum.Font.BuilderSans,
					}),
					HardBreakElement,
					TextElement.new({
						Text = "Very long text Very long textVery long textVery long textVery long textVery long textVery long textVery long textVery long textVery long text ",
						TextSize = 18,
						Font = Enum.Font.BuilderSans,
						SplitBy = TextSplitByEnum.Symbol,
					}),
				},
			})
		end,
		LongWord = function(props)
			return React.createElement(InlineLayout, {
				Elements = {
					TextElement.new({
						Text = "Here goes some random normal text that is also quite long long long long long long long long long long long long long long long long long long and then a very long word VerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextlongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextlongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtext Word",
						TextSize = 18,
						Font = Enum.Font.BuilderSans,
						SplitBy = props.controls.splitBy,
					}),
				},
			})
		end,
	},
}
