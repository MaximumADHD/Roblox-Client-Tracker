local CorePackages = game:GetService("CorePackages")

local Cryo = require(CorePackages.Cryo)
local Roact = require(CorePackages.Roact)
local RoactGamepad = require(CorePackages.Packages.RoactGamepad)
local t = require(CorePackages.Packages.t)
local AvatarExperienceDeps = require(CorePackages.AvatarExperienceDeps)

local RoactFitComponents = AvatarExperienceDeps.RoactFitComponents

local ListEntry = require(script.Parent.ListEntry)

local ListSection = Roact.PureComponent:extend("ListSection")

ListSection.validateProps = t.strictInterface({
	headerText = t.string,
	items = t.array(t.string),
	layoutOrder = t.integer,
	isFirstSection = t.boolean,
	isLastSection = t.boolean,

	NextSelectionLeft = t.optional(t.table),
	NextSelectionRight = t.optional(t.table),
	NextSelectionUp = t.optional(t.table),
	NextSelectionDown = t.optional(t.table),
	forwardRef = t.table,
})

function ListSection:init()
	self.listRefCache = RoactGamepad.createRefCache()
end

function ListSection:render()
	local listSection = {}

	listSection[0] = Roact.createElement(RoactGamepad.Focusable[ListEntry], {
		text = self.props.headerText,
		hasBullet = false,
		layoutOrder = 0,
		positionChangedCallback = self.props.isFirstSection and self.firstEntryPositionChanged or nil,

		NextSelectionDown = #self.props.items > 0 and self.listRefCache[1] or nil,
		[Roact.Ref] = self.listRefCache[0],
	})

	for index, name in ipairs(self.props.items) do
		local positionChangedCallback = nil
		if self.props.isLastSection and index == #self.props.items then
			positionChangedCallback = self.lastEntryPositionChanged
		end

		listSection[index] = Roact.createElement(RoactGamepad.Focusable[ListEntry], {
			text = name,
			hasBullet = true,
			layoutOrder = index,
			positionChangedCallback = positionChangedCallback,

			NextSelectionUp = self.listRefCache[index - 1],
			NextSelectionDown = index ~= #self.props.items and self.listRefCache[index + 1] or nil,
			[Roact.Ref] = self.listRefCache[index],
		})
	end

	local forwardRef = self.props.forwardRef

	return Roact.createElement(RoactGamepad.Focusable[RoactFitComponents.FitFrameVertical], {
		width = UDim.new(1, 0),

		FillDirection = Enum.FillDirection.Vertical,
		VerticalAlignment = Enum.VerticalAlignment.Top,

		BackgroundTransparency = 1,
		LayoutOrder = self.props.layoutOrder,

		defaultChild = self.listRefCache[0],
		NextSelectionLeft = self.props.NextSelectionLeft,
		NextSelectionRight = self.props.NextSelectionRight,
		NextSelectionUp = self.props.NextSelectionUp,
		NextSelectionDown = self.props.NextSelectionDown,
		[Roact.Ref] = forwardRef,
	}, listSection)
end

return Roact.forwardRef(function(props, ref)
	return Roact.createElement(ListSection, Cryo.Dictionary.join(props, {
		forwardRef = ref,
	}))
end)
