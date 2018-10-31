--[[
		A Roact play next game icon. When activated, the player will join that game.
		Props:
			universeId : number - The universe id of the game.
			placeId: number - The place id of the game.
			imageToken: string - The image token of the game thumbnail.
			size : UDim2 - The size of the game icon.
			position : position - The position of the game icon.
			layoutOrder : number - The sort order of the game icon.
			zIndex : number - Determines the order of UI element rendering.
			focused : bool - Determines if the game icon focused.
			onSelectionGained : function() - The callback function for selection gained.
			objRef : Ref - The ref of the game icon.
]]
local CorePackages = game:GetService("CorePackages")
local PlatformService = nil
pcall(function() PlatformService = game:GetService('PlatformService') end)

local Roact = require(CorePackages.Roact)
local Otter = require(CorePackages.Otter)

local Settings = script.Parent.Parent.Parent
local Modules = Settings.Parent
local Common = Modules.Common
local Analytics = require(Common.Analytics)
local BlankSelectionImage = require(Settings.Common.BlankSelectionImage)
local Utility = require(Settings.Utility)

local GameIcon = Roact.PureComponent:extend("GameIcon")

local NORMAL_SIZE = 200
local FOCUSED_SIZE = 232

-- NOTE: event context might need to be changed for other platforms.
local EVENT_CONTEXT = "XboxOne"
function GameIcon:init()
	self.ref = Roact.createRef()
	self.analytics = Analytics.new()
	self.motorOptions = {
		dampingRatio = 1,
		frequency = 5,
	}
	self.PlayNextGame = function()
		if PlatformService then
			local eventName = "PlayNextGame"
			local args = {
				UniverseID = self.props.universeId,
				PlaceId = self.props.placeId
			}
			self.analytics.EventStream:setRBXEventStream(EVENT_CONTEXT, eventName, args)
			PlatformService:PlayNextGame(self.props.placeId)
		end
	end
end

function GameIcon:render()
	local layoutOrder = self.props.layoutOrder
	local size = UDim2.new(0, NORMAL_SIZE, 0, NORMAL_SIZE)
	local position = self.props.position
	local image = string.format("https://games.roblox.com/v1/games/game-thumbnail?imageToken=%s&height=250&width=250", self.props.imageToken)
	local zIndex = self.props.zIndex
	local selector = BlankSelectionImage()
	return Roact.createElement("ImageButton",
	{
		Size = size,
		Position = position,
		AnchorPoint = Vector2.new(0.5, 0.5),
		Image = image,
		BackgroundColor3 = Color3.fromRGB(0,0,0),
		BackgroundTransparency = 0.8,
		BorderSizePixel = 0,
		LayoutOrder = layoutOrder,
		SelectionImageObject = selector,
		[Roact.Event.SelectionGained] = self.props.onSelectionGained,
		[Roact.Event.Activated] = function()
			self.PlayNextGame(self.props.placeId)
		end,
		[Roact.Ref] = self.ref,
		ZIndex = zIndex,
	})
end

function GameIcon:didMount()
	self.motor = Otter.createSingleMotor(NORMAL_SIZE)
	self.motor:onStep(function(value)
		local t = value/100
		if self.ref.current ~= nil then
			local size = Utility:Lerp(t, FOCUSED_SIZE, NORMAL_SIZE)
			size = Utility:Round(size)
			self.ref.current.Size = UDim2.new(0, size, 0, size)
		end
	end)
	self.motor:start()
	self.motor:setGoal(Otter.instant(100))
end

function GameIcon:didUpdate(previousProps, previousState)
	if self.props.focused == previousProps.focused then
		return
	end
	local targetPercentage = self.props.focused and 0 or 100
	self.motor:setGoal(Otter.spring(targetPercentage, self.motorOptions))
end

return GameIcon