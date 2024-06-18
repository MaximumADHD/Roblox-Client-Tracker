--[[
	Grid layout of the Avatar Part Viewports.
	Meant to preview the 6 main parts of a Published Avatar Body
]]
local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)
local UIBlox = require(CorePackages.UIBlox)
local GridMetrics = UIBlox.App.Grid.GridMetrics
local DefaultMetricsGridView = UIBlox.App.Grid.DefaultMetricsGridView
local Constants = require(script.Parent.Parent.Parent.Parent.Constants)

local AvatarItemCard = require(script.Parent.AvatarItemCard)

local ITEM_HEIGHT_RATIO = 4 / 3
local ITEM_PADDING = Vector2.new(20, 20)
local MIN_ITEMS_PER_ROW = 2

type Props = {
	LayoutOrder: number?,
	humanoidModel: Model,
	name: string,
	screenSize: Vector2,
}

-- function to create an objects folder in the format needed for the Thumbnailing code.
-- TODO: AVBURST-13422 Can look at reusing the utility here to create this Folder instead after
-- FFlagMoveToolboxCodeToUGCValidation is on
local function createObjectsFolder(parts: { [number]: MeshPart }): { [number]: Folder }
	local R15ArtistIntentFolder = Instance.new("Folder")
	R15ArtistIntentFolder.Name = "R15ArtistIntent"
	for _, part in parts do
		part.Parent = R15ArtistIntentFolder
	end
	return { [1] = R15ArtistIntentFolder }
end

-- Helper function to avoid type errors
local function getPart(humanoidModel: Model, partName: string): MeshPart
	return humanoidModel:FindFirstChild(partName) :: MeshPart
end

local function getItems(humanoidModel: Model, name: string): { [number]: AvatarItemCard.Props }
	local eyelashes, eyebrows
	for _, child in ipairs(humanoidModel:GetChildren()) do
		if child:IsA("Accessory") then
			if child.AccessoryType == Enum.AccessoryType.Eyebrow then
				eyebrows = child
			elseif child.AccessoryType == Enum.AccessoryType.Eyelash then
				eyelashes = child
			end
		end
	end

	local items: { AvatarItemCard.Props } = {
		{
			asset = getPart(humanoidModel, "Head"),
			-- UGC body creation does not localize similar text, so we don't localize here
			titleText = name .. "'s Head",
		},
		{
			asset = createObjectsFolder({
				getPart(humanoidModel, "UpperTorso"),
				getPart(humanoidModel, "LowerTorso"),
			}),
			titleText = name .. "'s Torso",
		},
		{
			asset = createObjectsFolder({
				getPart(humanoidModel, "LeftUpperArm"),
				getPart(humanoidModel, "LeftLowerArm"),
				getPart(humanoidModel, "LeftHand"),
			}),
			titleText = name .. "'s Left Arm",
		},
		{
			asset = createObjectsFolder({
				getPart(humanoidModel, "LeftUpperLeg"),
				getPart(humanoidModel, "LeftLowerLeg"),
				getPart(humanoidModel, "LeftFoot"),
			}),
			titleText = name .. "'s Left Leg",
		},
		{
			asset = createObjectsFolder({
				getPart(humanoidModel, "RightUpperArm"),
				getPart(humanoidModel, "RightLowerArm"),
				getPart(humanoidModel, "RightHand"),
			}),
			titleText = name .. "'s Right Arm",
		},
		{
			asset = createObjectsFolder({
				getPart(humanoidModel, "RightUpperLeg"),
				getPart(humanoidModel, "RightLowerLeg"),
				getPart(humanoidModel, "RightFoot"),
			}),
			titleText = name .. "'s Right Leg",
		},
	}

	if eyebrows then
		table.insert(items, {
			asset = eyebrows,
			titleText = name .. "'s Eyebrows",
		})
	end

	if eyelashes then
		table.insert(items, {
			asset = eyelashes,
			titleText = name .. "'s Eyelashes",
		})
	end

	return items
end

local function AvatarPartGrid(props: Props)
	local items, setItems = React.useState({})
	React.useEffect(function()
		local modelClone = props.humanoidModel:Clone()
		setItems(getItems(modelClone, props.name))
	end, { props.humanoidModel, props.name } :: { any })

	local isPortrait = props.screenSize.Y > props.screenSize.X
	local itemCardWidth = if isPortrait then Constants.ItemCardWidthPortrait else Constants.ItemCardWidthLandscape

	local renderItem = React.useCallback(function(item: AvatarItemCard.Props)
		return React.createElement(AvatarItemCard, {
			asset = item.asset,
			titleText = item.titleText,
			viewportSize = itemCardWidth,
		})
	end, { itemCardWidth })

	return React.createElement("Frame", {
		Size = UDim2.fromScale(1, 0),
		AutomaticSize = Enum.AutomaticSize.Y,
		LayoutOrder = props.LayoutOrder,
		BackgroundTransparency = 1,
	}, {
		Grid = React.createElement(DefaultMetricsGridView, {
			getItemHeight = function(width: number)
				return width * ITEM_HEIGHT_RATIO
			end,
			getItemMetrics = GridMetrics.makeCustomMetricsGetter({
				minimumItemsPerRow = MIN_ITEMS_PER_ROW,
				minimumItemWidth = itemCardWidth,
			}),
			renderItem = renderItem,
			itemPadding = ITEM_PADDING,
			items = items,
		}),
	})
end

return AvatarPartGrid
