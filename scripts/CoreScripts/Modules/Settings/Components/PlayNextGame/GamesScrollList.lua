--[[
		A scrolling games list
		Props:
			focused : bool - Determines if the game list focused.
			zIndex : number - Determines the order of UI element rendering.
			onMoveSelection : function - The callback function for on the game selection changed.
			gamesList : array - An array of games. each element in the array is a map that must contain:
						{
							universeId : number,
							placeId : number,
							imageToken : string,
						}

]]
local GuiService = game:GetService("GuiService")
local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local Settings = script.Parent.Parent.Parent
local Modules = Settings.Parent
local Common = Modules.Common
local Analytics = require(Common.Analytics)
local GameIcon = require(Settings.Components.PlayNextGame.GameIcon)

local GamesScrollList = Roact.PureComponent:extend("GamesScrollList")

-- NOTE: event context might need to be changed for other platforms.
local EVENT_CONTEXT = "XboxOne"
function GamesScrollList:init()
	self.pageLayout = Roact.createRef()
	self.analytics = Analytics.new()
	self.setSelection = function(index)
		if self.state.selectionIndex ~= index then
			local eventName = "MoveNextGameSelection"
			self.analytics.EventStream:setRBXEventStream(EVENT_CONTEXT, eventName)
			self:setState({
				selectionIndex = index
			})
		end
		self.props.onMoveSelection(index)
	end
end

function GamesScrollList:render()
	local focused = self.props.focused
	local gamesList = self.props.gamesList
	local zIndex = self.props.zIndex
	local children = {}
	children.layout = Roact.createElement("UIPageLayout", {
		Animated = true,
		Circular = true,
		EasingDirection = Enum.EasingDirection.InOut,
		EasingStyle = Enum.EasingStyle.Quad,
		Padding = UDim.new(0, 20),
		TweenTime = 0.125,
		FillDirection = Enum.FillDirection.Horizontal,
		HorizontalAlignment = Enum.HorizontalAlignment.Center,
		VerticalAlignment = Enum.VerticalAlignment.Center,
		SortOrder = Enum.SortOrder.LayoutOrder,
		GamepadInputEnabled = true,
		[Roact.Ref] = self.pageLayout,
		[Roact.Event.PageEnter] = function(rbx)
			self.pageLayout.current:ApplyLayout()
		end
	})
	-- NOTE:
	-- we want to display 5, but it looks janky when we wraps. So double the elements to
	-- fake the look of it wrapping. We can discuss with product about this. Maybe we can have
	-- 6 or 7 games instead or duplicating the games.
	--
	for i in ipairs(gamesList) do
		children[tostring(i)] = Roact.createElement(GameIcon, {
			universeId = gamesList[i].universeId,
			placeId = gamesList[i].placeId,
			imageToken = gamesList[i].imageToken,
			layoutOrder = i - 1,
			focused = focused and self.state.selectionIndex == i,
			onSelectionGained = function()
				self.setSelection(i)
			end,
			zIndex = zIndex,
		})
	end

	return Roact.createElement("Frame", {
		Size = UDim2.new(0, 1100, 1, 0),
		Position = UDim2.new(0.5, 0, 0.5, 0),
		AnchorPoint = Vector2.new(0.5, 0.5),
		BackgroundTransparency = 1,
		ClipsDescendants = true,
	}, {

		FocusedItem = Roact.createElement("Frame", {
			Size = UDim2.new(0, 200, 0, 200),
			Position = UDim2.new(0.5, 0, 0.5, 0),
			AnchorPoint = Vector2.new(0.5, 0.5),
			BackgroundTransparency = 1,
		}, children)
	})
end

function GamesScrollList:didMount()
	self.pageLayout.current:JumpToIndex(0)
	-- UIPageLayout relies on child add order. This force applies the layout
	-- will not be needed with Quantum GUI
	self.pageLayout.current:ApplyLayout()
	if self.props.focused then
		delay(0, function()
			GuiService.SelectedCoreObject = self.pageLayout.current.CurrentPage
		end)
	end
end

function GamesScrollList:didUpdate(previousProps, previousState)
	if self.props.focused == previousProps.focused then
		return
	end
	if self.props.focused then
		GuiService.SelectedCoreObject = self.pageLayout.current.CurrentPage
	end
end

return GamesScrollList