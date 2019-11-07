local Cryo = require(script.Parent.Parent.Parent.Cryo)
local Roact = require(script.Parent.Parent.Parent.Roact)
local validate = require(script.Parent.Parent.utils.validate)

--[[
	ContentHeightFitFrame creates a UIListLayout-based FitFrame around a single child.
	The FitFrame will grow/shrink in height to exactly fit its child, but takes up the
	entire useable horizontal space in its parent container.

	Props:
		contentHorizontalAlignment	- How a smaller-than-width child should be aligned
										within the ContentHeightFitFrame. (Optional)
		initialHeight 		- Starting height for the ContentHeightFirFrame. (Optional)
		onHeightChanged 	- Callback to monitor height changes. (Optional)

	In addition to the above props, the normal Frame props can be passed through
	(BackgroundColor3, BackgroundTransparency, etc).
]]
local ContentHeightFitFrame = Roact.Component:extend("ContentHeightFitFrame")

ContentHeightFitFrame.defaultProps = {
	initialHeight = 0,
	contentHorizontalAlignment = Enum.HorizontalAlignment.Center,
}

function ContentHeightFitFrame:init()
	self._layoutRef = Roact.createRef()

	local containerRef = Roact.createRef()
	self._getRef = function()
		return self.props[Roact.Ref] or containerRef
	end

	self._onResize = function()
		local onHeightChanged = self.props.onHeightChanged
		local layoutInstance = self._layoutRef.current
		local containerInstance = self:_getRef().current

		if not layoutInstance or not containerInstance then
			return
		end

		local layoutSize = layoutInstance.AbsoluteContentSize
		if layoutSize.Y ~= containerInstance.Size.Y then
			containerInstance.Size = UDim2.new(1, 0, 0, layoutSize.Y)

			if onHeightChanged then
				onHeightChanged(layoutSize.Y)
			end
		end
	end
end

function ContentHeightFitFrame:render()
	validate(self.props.Size == nil, "Size cannot be specified with ContentHeightFitFrame!")
	local contentHorizontalAlignment = self.props.contentHorizontalAlignment
	local initialHeight = self.props.initialHeight
	local children = self.props[Roact.Children]

	local containerProps = Cryo.Dictionary.join(self.props, {
		contentHorizontalAlignment = Cryo.None,
		initialHeight = Cryo.None,
		onHeightChanged = Cryo.None,
		[Roact.Children] = Cryo.None,
		[Roact.Ref] = self:_getRef(),
		Size = UDim2.new(1, 0, 0, initialHeight), -- Will adjust by size change callback.
	})

	return Roact.createElement("Frame", containerProps, {
		["$FitLayout"] = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			HorizontalAlignment = contentHorizontalAlignment,
			VerticalAlignment = Enum.VerticalAlignment.Top,
			Padding = UDim.new(0, 0),
			[Roact.Change.AbsoluteContentSize] = self._onResize,
			[Roact.Ref] = self._layoutRef,
		}),
		["$Content"] = Roact.oneChild(children),
	})
end

function ContentHeightFitFrame:didMount()
	self._onResize()
end

function ContentHeightFitFrame:didUpdate()
	self._onResize()
end

return ContentHeightFitFrame
