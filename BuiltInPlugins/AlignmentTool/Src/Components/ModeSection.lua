--[[
	Alignment mode UI section.

	Displays buttons for choosing whether to align selected parts by their
	negative sides, centers, or positive sides.
]]

local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local ContextServices = require(Plugin.Packages.Framework.ContextServices)

local UI = require(Plugin.Packages.Framework.UI)
local Container = UI.Container

local Util = require(Plugin.Packages.Framework.Util)
local LayoutOrderIterator = Util.LayoutOrderIterator

local SetAlignmentMode = require(Plugin.Src.Actions.SetAlignmentMode)
local ImageButton = require(Plugin.Src.Components.ImageButton)
local UpdateAlignEnabled = require(Plugin.Src.Thunks.UpdateAlignEnabled)
local AlignmentMode = require(Plugin.Src.Utility.AlignmentMode)

local ButtonDefinitions = {
	[1] = {
		Image = "rbxasset://textures/AlignTool/Min.png",
		Mode = AlignmentMode.Min,
	},
	[2] = {
		Image = "rbxasset://textures/AlignTool/Center.png",
		Mode = AlignmentMode.Center,
	},
	[3] = {
		Image = "rbxasset://textures/AlignTool/Max.png",
		Mode = AlignmentMode.Max,
	},
}

local ModeSection = Roact.PureComponent:extend("ModeSection")

function ModeSection:render()
	local props = self.props

	local alignmentMode = props.alignmentMode
	local layoutOrder = props.LayoutOrder
	local localization = props.Localization
	local theme = props.Theme:get("Plugin")

	local layoutOrderIterator = LayoutOrderIterator.new()

	local function makeButton(mode, image)
		local text = localization:getText("ModeSection", mode)
		local isSelected = mode == alignmentMode

		return Roact.createElement(ImageButton, {
			Id = mode,
			Image = image,
			Text = text,
			Selected = isSelected,
			OnClick = self.props.setAlignmentMode,
			LayoutOrder = layoutOrderIterator:getNextOrder(),
		})
	end

	local buttons = {}
	for _, button in ipairs(ButtonDefinitions) do
		local image = button.Image
		local mode = button.Mode
		buttons[tostring(mode)] = makeButton(mode, image)
	end

	return Roact.createElement(Container, {
		LayoutOrder = layoutOrder,
		Size = theme.ModeSection.Size,
	}, {
		ButtonContainer = Roact.createElement(Container, {
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.new(0.5, 0, 0.5, 0),
			Size = theme.ModeSection.ButtonContainerSize,
		}, {
			Layout = Roact.createElement("UIGridLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				CellPadding = theme.ModeSection.CellPadding,
				CellSize = theme.ModeSection.CellSize,
			}),

			ModeButtons = Roact.createFragment(buttons),
		}),
	})
end

ContextServices.mapToProps(ModeSection, {
	Localization = ContextServices.Localization,
	Theme = ContextServices.Theme,
})

local function mapStateToProps(state, _)
	return {
		alignmentMode = state.alignmentMode
	}
end

local function mapDispatchToProps(dispatch)
	return {
		setAlignmentMode = function(mode)
			dispatch(SetAlignmentMode(mode))
			dispatch(UpdateAlignEnabled())
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(ModeSection)
