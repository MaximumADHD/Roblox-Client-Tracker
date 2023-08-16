local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local React = require(CorePackages.Packages.React)
local RoactRodux = require(CorePackages.RoactRodux)
local RunService = game:GetService("RunService")

type KeepOutArea = {
	id: string,
	position: Vector2,
	size: Vector2,
}

type SafeArea = {
	Position: {
		X: number,
		Y: number,
	},
	Size: {
		X: number,
		Y: number,
	},
}

type SafeAreas = { SafeArea }
type KeepOutAreas = { KeepOutArea }

local getSafeAreasWithinBoundaries = function(
	topLeftPosition: Vector2,
	bottomRightPosition: Vector2,
	sortedKeepOutAreas: KeepOutAreas
)
	local safeAreas: SafeAreas = {}
	local minX: number = topLeftPosition.X
	local minY: number = topLeftPosition.Y
	local maxX: number = bottomRightPosition.X
	local maxY: number = bottomRightPosition.Y

	local height = maxY - minY

	local lastKeepOutX = minX
	local lastKeepOutWidth = 0

	for _, area in ipairs(sortedKeepOutAreas) do
		local safeAreaStart = lastKeepOutX + lastKeepOutWidth
		local safeAreaWidth = area.position.X - safeAreaStart

		table.insert(safeAreas, {
			Position = {
				X = safeAreaStart,
				Y = minY,
			},
			Size = {
				X = safeAreaWidth,
				Y = height,
			},
		})

		lastKeepOutX = area.position.X
		lastKeepOutWidth = area.size.X
	end

	local finalSafeAreaX = lastKeepOutX + lastKeepOutWidth
	local finalSafeAreaWidth = maxX - finalSafeAreaX

	table.insert(safeAreas, {
		Position = {
			X = finalSafeAreaX,
			Y = minY,
		},
		Size = {
			X = finalSafeAreaWidth,
			Y = height,
		},
	})

	return safeAreas
end

local getTopBarInset = function(screenSize: Vector2, keepOutAreas: KeepOutAreas)
	-- Does not count on overlapping areas, would have to merge them first
	local safeAreas: SafeAreas = {}

	-- Convert dictionary to table
	local sortedKeepOutAreas: KeepOutAreas = {}
	for _, area in pairs(keepOutAreas) do
		table.insert(sortedKeepOutAreas, {
			id = area.id,
			size = area.size,
			position = area.position,
		})
	end

	-- Sort areas by their X position from left most to right most
	table.sort(sortedKeepOutAreas, function(area1, area2)
		return area1.position.X < area2.position.X
	end)

	local insetTopLeft, _ = GuiService:GetGuiInset()

	local guiTopLeftPosition = Vector2.new(0, 0)
	local guiBottomRightPosition = Vector2.new(screenSize.X, insetTopLeft.Y)

	safeAreas = getSafeAreasWithinBoundaries(guiTopLeftPosition, guiBottomRightPosition, sortedKeepOutAreas)

	-- Get largest safe area and consider it the topbar inset
	local topbarInset
	local topbarInsetWidth = 0
	for _, area in ipairs(safeAreas) do
		if area.Size.X > topbarInsetWidth then
			topbarInsetWidth = area.Size.X
			topbarInset = area
		end
	end

	return topbarInset
end

local fireKeepOutAreasChanged = function(screenSize: Vector2, keepOutAreas: KeepOutAreas)
	local topbarInset = getTopBarInset(screenSize, keepOutAreas)
	GuiService:SetTopbarInset(topbarInset)
end

local KeepOutAreasHandler = React.PureComponent:extend("KeepOutAreasHandler")

function KeepOutAreasHandler:render()
	return nil
end

function KeepOutAreasHandler:didUpdate(prevProps)
	if game:GetEngineFeature("InGameChromeSignalAPI") and RunService:IsStudio() then
		if prevProps.keepOutAreas ~= self.props.keepOutAreas or prevProps.screenSize ~= self.props.screenSize then
			fireKeepOutAreasChanged(self.props.screenSize, self.props.keepOutAreas)
		end
	end
end

local function mapStateToProps(state)
	return {
		screenSize = state.displayOptions.screenSize,
		keepOutAreas = state.displayOptions.keepOutAreas,
	}
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, nil)(KeepOutAreasHandler)
