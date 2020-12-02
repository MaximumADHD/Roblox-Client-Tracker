local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)
local RoactGamepad = require(CorePackages.Packages.RoactGamepad)
local t = require(CorePackages.Packages.t)
local AvatarExperienceDeps = require(CorePackages.AvatarExperienceDeps)

local RoactFitComponents = AvatarExperienceDeps.RoactFitComponents

local ListEntry = require(script.Parent.ListEntry)

local AvatarEditorPrompts = script.Parent.Parent.Parent

local Modules = AvatarEditorPrompts.Parent
local FFlagAESPromptsSupportGamepad = require(Modules.Flags.FFlagAESPromptsSupportGamepad)

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
	[Roact.Ref] = t.table,
})

function ListSection:init()
	if FFlagAESPromptsSupportGamepad then
		self.listRefCache = RoactGamepad.createRefCache()
	end
end

function ListSection:render()
	local listSection = {}

	listSection[0] = Roact.createElement(
		FFlagAESPromptsSupportGamepad and RoactGamepad.Focusable[ListEntry] or ListEntry, {
		text = self.props.headerText,
		hasBullet = false,
		layoutOrder = 0,
		positionChangedCallback = self.props.isFirstSection and self.firstEntryPositionChanged or nil,

		NextSelectionDown = FFlagAESPromptsSupportGamepad and
			#self.props.items > 0 and self.listRefCache[1] or nil,
		[Roact.Ref] = FFlagAESPromptsSupportGamepad and self.listRefCache[0] or nil,
	})

	for index, name in ipairs(self.props.items) do
		local positionChangedCallback = nil
		if self.props.isLastSection and index == #self.props.items then
			positionChangedCallback = self.lastEntryPositionChanged
		end

		listSection[index] = Roact.createElement(
			FFlagAESPromptsSupportGamepad and RoactGamepad.Focusable[ListEntry] or ListEntry, {
			text = name,
			hasBullet = true,
			layoutOrder = index,
			positionChangedCallback = positionChangedCallback,

			NextSelectionUp = FFlagAESPromptsSupportGamepad and self.listRefCache[index - 1] or nil,
			NextSelectionDown = FFlagAESPromptsSupportGamepad and
				index ~= #self.props.items and self.listRefCache[index + 1] or nil,
			[Roact.Ref] = FFlagAESPromptsSupportGamepad and self.listRefCache[index] or nil,
		})
	end

	return Roact.createElement(
		FFlagAESPromptsSupportGamepad and RoactGamepad.Focusable[RoactFitComponents.FitFrameVertical]
			or RoactFitComponents.FitFrameVertical, {
		width = UDim.new(1, 0),

		FillDirection = Enum.FillDirection.Vertical,
		VerticalAlignment = Enum.VerticalAlignment.Top,

		BackgroundTransparency = 1,
		LayoutOrder = self.props.layoutOrder,

		defaultChild = FFlagAESPromptsSupportGamepad and self.listRefCache[0] or nil,
		NextSelectionLeft = self.props.NextSelectionLeft,
		NextSelectionRight = self.props.NextSelectionRight,
		NextSelectionUp = self.props.NextSelectionUp,
		NextSelectionDown = self.props.NextSelectionDown,
		[Roact.Ref] = self.props[Roact.Ref],
	}, listSection)
end

return ListSection