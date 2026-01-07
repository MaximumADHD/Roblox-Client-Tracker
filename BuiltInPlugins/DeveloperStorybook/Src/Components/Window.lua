local Main = script.Parent.Parent.Parent
local React = require(Main.Packages.React)

local Framework = require(Main.Packages.Framework)

local UI = Framework.UI
local SplitPane = UI.SplitPane

local FilterTree = require(Main.Src.Components.FilterTree)
local StoryTree = require(Main.Src.Components.StoryTree)
local TopBar = require(Main.Src.Components.TopBar)
local InfoPanel = require(Main.Src.Components.InfoPanel)

local Foundation = require(Main.Packages.Foundation)
local useTokens = Foundation.Hooks.useTokens
local View = Foundation.View

local function ContentPanel()
	return React.createElement(View, {
		tag = "col flex-fill size-full-full bg-surface-0",
	}, {
		TopBar = React.createElement(TopBar, {
			LayoutOrder = 1,
		}),
		InfoPanel = React.createElement(InfoPanel, {
			LayoutOrder = 2,
		}),
	})
end

type SideBarProps = {
	topPadding: number?,
}

local function SideBar(props: SideBarProps)
	local padding = props.topPadding or 0
	local tokens = useTokens()
	return React.createElement(View, {
		padding = {
			top = UDim.new(0, padding + tokens.Padding.Small),
			left = UDim.new(0, tokens.Padding.Small),
			bottom = UDim.new(0, tokens.Padding.Small),
			right = UDim.new(0, tokens.Padding.Small),
		},
		tag = "size-full col gap-medium flex-fill bg-surface-100",
	}, {
		FilterInput = React.createElement(FilterTree, {
			LayoutOrder = 1,
		}),
		Tree = React.createElement(StoryTree, {
			LayoutOrder = 2,
		}),
	})
end

function Window(props: { sideBarPadding: number? })
	local paneSizes, setPaneSizes = React.useState({
		UDim.new(0, 300),
		UDim.new(1, -300),
	})

	return React.createElement(SplitPane, {
		ClampSize = true,
		UseDeficit = true,
		MinSizes = {
			UDim.new(0, 100),
			UDim.new(0, 100),
		},
		OnSizesChange = setPaneSizes,
		Sizes = paneSizes,
		Position = UDim2.fromOffset(0, 0),
		Size = UDim2.new(1, 0, 1, 0),
	}, {
		-- Do not assing table keys, it will break split pane
		React.createElement(SideBar, {
			key = "Sidebar",
			topPadding = props.sideBarPadding,
		}),
		React.createElement(ContentPanel, { key = "ContentPanel" }),
	})
end

return Window
