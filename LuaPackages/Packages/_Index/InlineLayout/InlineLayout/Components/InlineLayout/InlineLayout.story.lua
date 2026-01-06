local Root = script:FindFirstAncestor("Components").Parent
local Packages = Root.Parent

local React = require(Packages.React)

local TextElement = require(script.Parent.InlineLayoutElements.TextElement)
local LinkElement = require(script.Parent.InlineLayoutElements.LinkElement)
local ImageElement = require(script.Parent.InlineLayoutElements.ImageElement)
local HardBreakElement = require(script.Parent.InlineLayoutElements.HardBreakElement)
local TextSplitByEnum = require(Root.Enums.TextSplitBy)
local InlineLayoutComponent = require(Root.Components.InlineLayout)
local MarkdownCore = require(Packages.MarkdownCore)
local InlineEngineTag = MarkdownCore.Enums.InlineEngineTag

return {
	summary = "A component that lays out inline elements such as text, links, and images.",
	controls = {
		splitBy = { TextSplitByEnum.Word, TextSplitByEnum.Symbol },
		text = "Any text you want",
	},
	stories = {
		{
			name = "CustomText",
			summary = "Type a custom text and choice split mode.",
			story = function(props)
				return React.createElement(InlineLayoutComponent, {
					Elements = {
						TextElement.new({
							fontStyle = {
								Font = Enum.Font.BuilderSans,
								FontSize = 18,
							},
							LayoutOrder = 2,
							Text = props.controls.text,
							SplitBy = props.controls.splitBy,
						}),
					},
				})
			end,
		},
		{
			name = "Default",
			summary = "InlineLayout can render a single TextElement with a long English text",
			story = function(props)
				return React.createElement(InlineLayoutComponent, {
					Elements = {
						TextElement.new({
							fontStyle = {
								Font = Enum.Font.BuilderSans,
								FontSize = 18,
							},
							LayoutOrder = 2,
							Text = "Very long text Very long textVery long textVery long textVery long textVery long textVery long textVery long textVery long textVery long text",
							SplitBy = props.controls.splitBy,
						}),
					},
				})
			end,
		},
		{
			name = "DefaultUTF8",
			summary = "InlineLayout can render a single TextElement with a long UTF-8 (Cyrillic and combining marks)",
			story = function(props)
				return React.createElement(InlineLayoutComponent, {
					Elements = {
						TextElement.new({
							fontStyle = {
								Font = Enum.Font.BuilderSans,
								FontSize = 16,
							},
							LayoutOrder = 2,
							Text = "Очень длинный текст Очень длинный текстОчень длинный текстОчень длинный текстОчень длинный текстОчень длинный текстОчень длинный текстОчень длинный текстОчень длинный текст. and multiple codepoint symbolsééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééé",
							SplitBy = props.controls.splitBy,
						}),
					},
				})
			end,
		},
		{
			name = "SeveralTextElements",
			summary = "InlineLayout can render a multiple TextElements in different languages.",
			story = function(props)
				return React.createElement(InlineLayoutComponent, {
					Elements = {
						TextElement.new({
							Text = "Very long text Very long textVery long textVery long textVery long textVery long textVery long textVery long textVery long textVery long text. ",
							fontStyle = {
								Font = Enum.Font.BuilderSans,
								FontSize = 18,
							},
							SplitBy = props.controls.splitBy,
						}),
						TextElement.new({
							Text = "Очень длинный текст Очень длинный текстОчень длинный текстОчень длинный текстОчень длинный текстОчень длинный текстОчень длинный текстОчень длинный текстОчень длинный текст. ",
							fontStyle = {
								Font = Enum.Font.BuilderSans,
								FontSize = 18,
							},
							SplitBy = props.controls.splitBy,
						}),
						TextElement.new({
							Text = "Sehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange TextSehr lange Text",
							fontStyle = {
								Font = Enum.Font.BuilderSans,
								FontSize = 18,
							},
							SplitBy = props.controls.splitBy,
						}),
					},
				})
			end,
		},
		{
			name = "WithLinks",
			summary = "InlineLayout can render TextElements and LinkElements mixed together, including Chinese characters with symbol-based splitting.",
			story = function(props)
				return React.createElement(InlineLayoutComponent, {
					Elements = {
						TextElement.new({
							Text = "Very long text Very long textVery long textVery long textVery long textVery long textVery long textVery long textVery long textVery long text. ",
							fontStyle = {
								Font = Enum.Font.BuilderSans,
								FontSize = 18,
							},
							SplitBy = props.controls.splitBy,
						}),
						LinkElement.new({
							TextElement.new({
								Text = "Sehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange TextSehr lange Text. ",
								fontStyle = {
									Font = Enum.Font.BuilderSans,
									FontSize = 18,
								},
								EngineTags = {
									{
										name = InlineEngineTag.FONT,
										attributes = {
											color = "#0000FF",
										},
									},
								},
								SplitBy = props.controls.splitBy,
							}),
						}, {
							onActivated = function()
								print("link clicked")
							end,
						}),
						TextElement.new({
							Text = "雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨",
							fontStyle = {
								Font = Enum.Font.BuilderSans,
								FontSize = 18,
							},
							-- Fixed value is not a mistake. Our naive word splitting doesn't try to guess the language rules, so it's up to the user to choose
							SplitBy = TextSplitByEnum.Symbol,
						}),
					},
				})
			end,
		},
		{
			name = "WithRichText",
			summary = "InlineLayout can render TextElements and LinkElements with different font styles (bold, italic) and text effects (strikethrough).",
			story = function(props)
				return React.createElement(InlineLayoutComponent, {
					Elements = {
						TextElement.new({
							Text = "Very long text Very long textVery long textVery long textVery long textVery long textVery long textVery long textVery long textVery long text. ",
							fontStyle = {
								Font = Enum.Font.BuilderSansBold,
								FontSize = 18,
							},
							SplitBy = props.controls.splitBy,
						}),
						LinkElement.new({
							TextElement.new({
								Text = "Sehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange TextSehr lange Text. ",
								fontStyle = {
									Font = Enum.Font.BuilderSans,
									FontSize = 18,
								},
								EngineTags = {
									{
										name = InlineEngineTag.FONT,
										attributes = {
											color = "#0000FF",
										},
									},
								},
								SplitBy = props.controls.splitBy,
							}),
						}, {
							onActivated = function()
								print("link clicked")
							end,
						}),
						TextElement.new({
							Text = " 雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨 ",
							fontStyle = {
								Font = Enum.Font.BuilderSans,
								FontSize = 18,
							},
							EngineTags = {
								{
									name = InlineEngineTag.STRIKE,
									attributes = {},
								},
							},
							SplitBy = TextSplitByEnum.Symbol,
						}),
					},
				})
			end,
		},
		{
			name = "WithImage",
			summary = "InlineLayout can render Images with TextElements, LinkElements",
			story = function(props)
				return React.createElement(InlineLayoutComponent, {
					Elements = {
						TextElement.new({
							Text = "Very long text Very long textVery long textVery long textVery long textVery long textVery long textVery long textVery long textVery long text ",
							fontStyle = {
								Font = Enum.Font.BuilderSans,
								FontSize = 18,
							},
							SplitBy = props.controls.splitBy,
						}),
						LinkElement.new({
							TextElement.new({
								Text = "Sehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange TextSehr lange Text",
								fontStyle = {
									Font = Enum.Font.BuilderSans,
									FontSize = 18,
								},
								EngineTags = {
									{
										name = InlineEngineTag.FONT,
										attributes = {
											color = "#0000FF",
										},
									},
								},
								SplitBy = props.controls.splitBy,
							}),
						}, {
							onActivated = function()
								print("link clicked")
							end,
						}),
						ImageElement.new({
							Image = "rbxasset://textures/ui/common/robux_color@2x.png",
							Size = UDim2.fromOffset(100, 100),
							SplitBy = props.controls.splitBy,
						}),
						TextElement.new({
							Text = " 雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨",
							fontStyle = {
								Font = Enum.Font.BuilderSans,
								FontSize = 18,
							},
						}),
					},
				})
			end,
		},
		{
			name = "WithHardBreak",
			summary = "Elements can be separated by hard breaks to force line breaks in specific places.",
			story = function()
				return React.createElement(InlineLayoutComponent, {
					Elements = {
						TextElement.new({
							Text = "Very long text Very long textVery long textVery long textVery long textVery long textVery long textVery long textVery long textVery long text",
							fontStyle = {
								Font = Enum.Font.BuilderSans,
								FontSize = 18,
							},
						}),
						HardBreakElement,
						LinkElement.new({
							TextElement.new({
								Text = "Sehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange TextSehr lange Text",
								fontStyle = {
									Font = Enum.Font.BuilderSans,
									FontSize = 18,
								},
								EngineTags = {
									{
										name = InlineEngineTag.FONT,
										attributes = {
											color = "#0000FF",
										},
									},
								},
							}),
						}, {
							onActivated = function()
								print("link clicked")
							end,
						}),
						HardBreakElement,
						TextElement.new({
							Text = "Very long text Very long textVery long textVery long textVery long textVery long textVery long textVery long textVery long textVery long text ",
							fontStyle = {
								Font = Enum.Font.BuilderSans,
								FontSize = 18,
							},
							SplitBy = TextSplitByEnum.Symbol,
						}),
					},
				})
			end,
		},
		{
			name = "LongWord",
			summary = "InlineLayout can render a TextElement with a very long word that cannot be split by word boundaries",
			story = function(props)
				return React.createElement(InlineLayoutComponent, {
					Elements = {
						TextElement.new({
							Text = "Here goes some some random normal text that is also quite long long long long long long long long long long long long long long long long long long and then a very long word VerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextlongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextlongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtext Word",
							fontStyle = {
								Font = Enum.Font.BuilderSans,
								FontSize = 18,
							},
							SplitBy = props.controls.splitBy,
						}),
					},
				})
			end,
		},
		{
			name = "With Custom Padding and Alignment",
			summary = "InlineLayout can render elements with custom vertical padding and horizontal alignment.",
			story = function(props)
				return React.createElement(InlineLayoutComponent, {
					VerticalPadding = UDim.new(0, 20),
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					Elements = {
						TextElement.new({
							Text = "Very long text Very long textVery long textVery long textVery long textVery long textVery long textVery long textVery long textVery long text. ",
							fontStyle = {
								Font = Enum.Font.BuilderSansBold,
								FontSize = 18,
							},
							SplitBy = props.controls.splitBy,
						}),
						LinkElement.new({
							TextElement.new({
								Text = "Sehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange TextSehr lange Text. ",
								fontStyle = {
									Font = Enum.Font.BuilderSans,
									FontSize = 18,
								},
								EngineTags = {
									{
										name = InlineEngineTag.FONT,
										attributes = {
											color = "#0000FF",
										},
									},
								},
								SplitBy = props.controls.splitBy,
							}),
						}, {
							onActivated = function()
								print("link clicked")
							end,
						}),
						TextElement.new({
							Text = " 雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨 ",
							fontStyle = {
								Font = Enum.Font.BuilderSans,
								FontSize = 18,
							},
							EngineTags = {
								{
									name = InlineEngineTag.STRIKE,
									attributes = {},
								},
							},
							SplitBy = TextSplitByEnum.Symbol,
						}),
					},
				})
			end,
		},
	},
}
