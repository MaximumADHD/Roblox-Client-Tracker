local CorePackages = game:GetService("CorePackages")

local Foundation = require(CorePackages.Packages.Foundation)
local React = require(CorePackages.Packages.React)

local CoreScriptsRoactCommon = require(CorePackages.Workspace.Packages.CoreScriptsRoactCommon)

local Settings = script.Parent.Parent.Parent
local Utility = require(Settings.Utility)

local View = Foundation.View
local ThumbnailType = Foundation.Enums.ThumbnailType
local ThumbnailSize = Foundation.Enums.ThumbnailSize
local getRbxThumb = Foundation.Utility.getRbxThumb
local Traversal = CoreScriptsRoactCommon.Traversal
local HistoryMenu = Traversal.HistoryMenu
local useHistoryItems = Traversal.useHistoryItems

local useTokens = Foundation.Hooks.useTokens

export type TraversalHistoryMenuProps = {
	onHistorySelected: () -> (),
}

local function TraversalHistoryMenu(props: TraversalHistoryMenuProps, ref: React.Ref<GuiObject>?): React.React_Node
	local historyItems = useHistoryItems()
	local items = {}
	for placeId, placeInfo in historyItems do
		table.insert(items, {
			placeId = placeId,
			text = placeInfo.name,
			icon = getRbxThumb(ThumbnailType.GameIcon, placeInfo.universeId, ThumbnailSize.Small)
		})
	end

	local tokens = useTokens()

	local dividerLeftStyle = React.useMemo(function()
		-- matches button border style
		return {
			Color3 = tokens.Color.Stroke.Default.Color3,
			Transparency = 0.33,
		}
	end, {})

	local isSmallTouchScreen = Utility:IsSmallTouchScreen()

	-- only render when there are previous places
	return next(items) ~= nil and React.createElement(View, {
		tag = "auto-xy row align-y-center size-0-full",
	}, {
		DividerLeft = React.createElement(View, {
			Size = UDim2.new(0, tokens.Stroke.Thick, 1, 0),
			backgroundStyle = dividerLeftStyle,
		}),
		HistoryMenu = React.createElement(HistoryMenu, {
			historyButtonTags = {
				["padding-small"] = isSmallTouchScreen, 
				["padding-medium"] = not isSmallTouchScreen, 
			},
			historyItems = items,
			onHistorySelected = props.onHistorySelected,
		})
	})

end

return React.memo(React.forwardRef(TraversalHistoryMenu))
