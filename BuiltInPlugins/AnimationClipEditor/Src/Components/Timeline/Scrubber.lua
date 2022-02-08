--[[
	Generic implementation of a Scrubber for a Timeline

	Properties:
		UDim2 Position = position of the scrubber head
		UDim2 HeadSize = size of the scrubber head
		float Height = length of the scrubber line
		bool ShowHead = whether or not the scrubber head is visible
		Vector2 AnchorPoint = anchor point for the Scrubber component
		int ZIndex = display order of the scrubber component
		int thickness = pixel width of the scrubber line
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local Scrubber = Roact.PureComponent:extend("Scrubber")

function Scrubber:render()
		local props = self.props
		local theme = THEME_REFACTOR and props.Stylizer.PluginTheme or props.Theme:get("PluginTheme")
		local position = props.Position
		local headSize = props.HeadSize
		local height = props.Height
		local showHead = props.ShowHead
		local anchorPoint = props.AnchorPoint
		local zIndex = props.ZIndex
		local thickness = props.Thickness

		local children = props[Roact.Children]
		if not children then
			children = {}
		end
		if showHead then
			table.insert(children, Roact.createElement("ImageLabel", {
				Image = THEME_REFACTOR and theme.scrubberTheme.image or theme.scrubber.image,
				ImageColor3 = THEME_REFACTOR and theme.scrubberTheme.backgroundColor or theme.scrubber.backgroundColor,
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 1, 0),
			}))
		end

		table.insert(children, Roact.createElement("Frame", {
			Position = UDim2.new(0.5, 0, 0, 0),
			Size = UDim2.new(0, thickness, 0, height),
			BackgroundColor3 = THEME_REFACTOR and theme.scrubberTheme.backgroundColor or theme.scrubber.backgroundColor,
			AnchorPoint = Vector2.new(0.5, 0),
			BorderSizePixel = 0,
		}))

		return Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Position = position,
			Size = headSize,
			ZIndex = zIndex,
			AnchorPoint = anchorPoint,
			[Roact.Event.InputBegan] = self.onDragBegan,
		}, children)
end


Scrubber = withContext({
	Theme = (not THEME_REFACTOR) and ContextServices.Theme or nil,
	Stylizer = THEME_REFACTOR and ContextServices.Stylizer or nil,
})(Scrubber)




return Scrubber