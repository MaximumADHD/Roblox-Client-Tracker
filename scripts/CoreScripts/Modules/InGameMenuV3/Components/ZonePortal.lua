local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local t = InGameMenuDependencies.t

local UIBlox = InGameMenuDependencies.UIBlox
local withSelectionCursorProvider = UIBlox.App.SelectionImage.withSelectionCursorProvider
local CursorKind = UIBlox.App.SelectionImage.CursorKind

local InGameMenu = script.Parent.Parent
local Constants = require(InGameMenu.Resources.Constants)
local Direction = require(InGameMenu.Enums.Direction)
local SetCurrentZone = require(InGameMenu.Actions.SetCurrentZone)

local MAX_INT = 2^31 - 1

local PORTAL_SIZE = Constants.Zone.PortalSize

local DIRECTION_PROPS = {
	[Direction.Up] = {
		size = UDim2.new(1, 0, 0, PORTAL_SIZE),
		position = UDim2.new(0, 0, 0, 0),
	},
	[Direction.Down] = {
		size = UDim2.new(1, 0, 0, PORTAL_SIZE),
		position = UDim2.new(0, 0, 1, -PORTAL_SIZE),
	},
	[Direction.Left] = {
		size = UDim2.new(0, PORTAL_SIZE, 1, 0),
		position = UDim2.new(0, 0, 0, 0),
	},
	[Direction.Right] = {
		size = UDim2.new(0, PORTAL_SIZE, 1, 0),
		position = UDim2.new(1, -PORTAL_SIZE, 0, 0),
	},
}

local ZonePortal = Roact.PureComponent:extend("ZonePortal")

ZonePortal.validateProps = t.strictInterface({
	targetZone = t.number,
	direction = Direction.isEnumValue,

	setCurrentZone = t.optional(t.callback),
})

function ZonePortal:render()
	local direction = self.props.direction
	local directionProps = DIRECTION_PROPS[direction]

	return withSelectionCursorProvider(function(getSelectionCursor)
		return Roact.createElement("Frame", {
			Size = directionProps.size,
			Position = directionProps.position,
			BackgroundTransparency = 1,
			Selectable = true,
			ZIndex = MAX_INT,
			SelectionImageObject = getSelectionCursor(CursorKind.Invisible),
			[Roact.Event.SelectionGained] = function()
				self.props.setCurrentZone(self.props.targetZone)
			end,
		})
	end)
end

ZonePortal = RoactRodux.UNSTABLE_connect2(nil, function(dispatch)
	return {
		setCurrentZone = function(zone)
			return dispatch(SetCurrentZone(zone))
		end,
	}
end)(ZonePortal)

return ZonePortal
