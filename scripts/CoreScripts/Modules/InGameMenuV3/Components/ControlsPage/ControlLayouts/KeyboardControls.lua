local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact

local InGameMenu = script.Parent.Parent.Parent.Parent

local Controls = require(InGameMenu.Resources.Controls)

local ControlLayoutContainer = require(script.Parent.Parent.ControlLayoutContainer)
local PaddedScrollFrame = require(InGameMenu.Components.PaddedScrollFrame)
local ControlEntry = require(script.Parent.Parent.ControlEntry)
local ControlEntryHeader = require(script.Parent.Parent.ControlEntryHeader)

local CONTENT_MAX_WIDTH = 900
local CONTENT_MIN_WIDTH = 150

local MIN_SIDE_PADDING = 95

local HEADER_HEIGHT = 45
local ENTRY_HEIGHT = 50

local BOTTOM_PADDING = 130

local function KeyboardControls(props)
	local controlsChildren = {}
	controlsChildren.ListLayout = Roact.createElement("UIListLayout", {
		SortOrder = Enum.SortOrder.LayoutOrder,
	})
	controlsChildren.Padding = Roact.createElement("UIPadding", {
		PaddingLeft = UDim.new(0, MIN_SIDE_PADDING),
		PaddingRight = UDim.new(0, MIN_SIDE_PADDING)
	})
	controlsChildren.SizeConstraint = Roact.createElement("UISizeConstraint", {
		MaxSize = Vector2.new(CONTENT_MAX_WIDTH + (MIN_SIDE_PADDING * 2), math.huge),
		MinSize = Vector2.new(CONTENT_MIN_WIDTH, 0),
	})

	local numHeaders = 0
	local numEntries = 0

	local layoutOrder = 1

	for _, controlsGroup in ipairs(Controls.keybinds) do
		local groupTitle = controlsGroup.title
		numHeaders = numHeaders + 1

		controlsChildren[groupTitle.."_header"] = Roact.createElement(ControlEntryHeader, {
			title = groupTitle,
			LayoutOrder = layoutOrder,
		})

		layoutOrder = layoutOrder + 1

		for controlIndex, controlAction in ipairs(controlsGroup.controls) do
			numEntries = numEntries + 1
			controlsChildren[groupTitle.."_"..controlIndex] = Roact.createElement(ControlEntry, {
				LayoutOrder = layoutOrder,
				actionDescription = controlAction.desc,
				inputs = controlAction.inputs,
				isList = controlAction.list,
				hasDivider = controlIndex ~= #controlsGroup.controls,
			})

			layoutOrder = layoutOrder + 1
		end
	end

	local canvasHeight = (HEADER_HEIGHT * numHeaders) + (ENTRY_HEIGHT * numEntries)

	return Roact.createElement(ControlLayoutContainer, {
		titleText = "CoreScripts.InGameMenu.Controls.KeyboardAndMouseTitle",
	}, {
		ScrollContent = Roact.createElement(PaddedScrollFrame, {
			CanvasSize = UDim2.new(0, 0, 0, canvasHeight),
			ScrollingDirection = Enum.ScrollingDirection.Y,
			Size = UDim2.new(1, 0, 1, -BOTTOM_PADDING),
		}, {
			ListContainer = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				AnchorPoint = Vector2.new(0.5, 0),
				Position = UDim2.new(0.5, 0, 0, 0)
			}, controlsChildren)
		})
	})
end

return KeyboardControls
