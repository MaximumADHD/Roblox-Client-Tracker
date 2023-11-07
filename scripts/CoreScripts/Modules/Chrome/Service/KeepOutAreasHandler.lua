local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local RunService = game:GetService("RunService")
local React = require(CorePackages.Packages.React)
local RoactUtils = require(CorePackages.Workspace.Packages.RoactUtils)
local useSelector = RoactUtils.Hooks.RoactRodux.useSelector
local dependencyArray = RoactUtils.Hooks.dependencyArray

local GetFFlagFixKeepOutAreasCompatibility = require(script.Parent.Parent.Flags.GetFFlagFixKeepOutAreasCompatibility)

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

local getTopBarInset = function(screenSize: Vector2, keepOutAreas: KeepOutAreas): Rect?
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
		return area1.position.X < area2.position.X and area1.position.X + area1.size.X < area2.size.X + area2.position.X
	end)

	local insetTopLeft, _ = GuiService:GetGuiInset()

	local guiTopLeftPosition = Vector2.new(0, 0)
	local guiBottomRightPosition = Vector2.new(screenSize.X, insetTopLeft.Y)

	safeAreas = getSafeAreasWithinBoundaries(guiTopLeftPosition, guiBottomRightPosition, sortedKeepOutAreas)

	-- Get largest safe area and consider it the topbar inset
	local topbarInset: Rect? = nil
	for _, area in ipairs(safeAreas) do
		if not topbarInset or area.Size.X > topbarInset.Width then
			topbarInset =
				Rect.new(area.Position.X, area.Position.Y, area.Position.X + area.Size.X, area.Position.Y + area.Size.Y)
		end
	end

	return topbarInset
end

local fireKeepOutAreasChanged = function(screenSize: Vector2, keepOutAreas: KeepOutAreas)
	local topbarInset = getTopBarInset(screenSize, keepOutAreas)
	if topbarInset then
		GuiService:SetTopbarInset(topbarInset)
	end
end

function KeepOutAreasHandler(props)
	local screenSize = useSelector(function(state)
		return state.displayOptions.screenSize
	end)

	local keepOutAreas = useSelector(function(state)
		return state.displayOptions.keepOutAreas
	end)

	React.useEffect(function()
		if
			GetFFlagFixKeepOutAreasCompatibility()
			or (game:GetEngineFeature("InGameChromeSignalAPI") and RunService:IsStudio())
		then
			fireKeepOutAreasChanged(screenSize, keepOutAreas)
		end
	end, dependencyArray(screenSize, keepOutAreas))
end

return KeepOutAreasHandler
