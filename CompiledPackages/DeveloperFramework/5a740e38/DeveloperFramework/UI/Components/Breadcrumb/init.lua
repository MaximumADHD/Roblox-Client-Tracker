--[[
	(USES STYLESHEETS)
	A breadcrumb of instances

	Required Props:
		string Text: The current text value of the breadcrumb

	Optional Props:
		boolean Editing: Whether the breadcrumb should be edited
		Vector2 AnchorPoint: The AnchorPoint of the cell
		array[string] Delimiters: An array of patterns to match delimiters in the text
		callback GetAutocompleteItems: Return a list of autocomplete items to be chosen (text: string) -> { AutocompleteItem }?
		callback GetImageProps: If provided, called to get the props to use for an Image elements of the breadcrumb. (text: string, leftDelimiter: string?) -> any?
		number LayoutOrder: The LayoutOrder of the cell
		callback OnDoubleClick: Called when the cell is double-clicked
		callback OnPressed: Called when the cell is pressed
		callback OnRightClick: Called when the cell is right-clicked
		callback OnEdited: If provided, the Breadcumb becomes editable, and the callback is called when the value is edited by the user
		UDim2 Position: The Position of the cell
		UDim2 Size: The Size of the cell
		string PaneStyle: The style of the pane (DEPRECATED pass tags)
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext. (DEPRECATED)
		string Tooltip: The tooltip to display when hovering over the cell

	Style Values:
		number Spacing: The spacing between elements
]]
local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)
local ContextServices = require(Framework.UI.ContextServices)
local withContext = ContextServices.withContext

local React = if Framework.Parent:FindFirstChild("React") then require(Framework.Parent.React) else nil
local supportsStyleSheets = require(Framework.Styling.supportsStyleSheets)
local joinTags = require(Framework.Styling.joinTags)
local hasTag = require(Framework.Styling.hasTag)
local getStudioThemeNameOrDefault = require(Framework.Style.getStudioThemeNameOrDefault)

local Dash = require(Framework.Parent.Dash)
local join = Dash.join
local trim = Dash.trim

local Image = require(Framework.UI.Components.Image)
local Pane = require(Framework.UI.Components.Pane)
local TextInput = require(Framework.UI.Components.TextInput)
local TextLabel = require(Framework.UI.Components.TextLabel)

local Util = Framework.Util
local DoubleClickDetector = require(Util.DoubleClickDetector)
local LayoutOrderIterator = require(Util.LayoutOrderIterator)
local Typecheck = require(Util.Typecheck)

local Breadcrumb = Roact.PureComponent:extend("Breadcrumb")
Typecheck.wrap(Breadcrumb, script)

function Breadcrumb:init()
	self.state = {
		editText = self.props.Text or "",
	}
	self.onTextChanged = function(text: string)
		self:setState({
			editText = text,
		})
	end
	self.onEdited = function()
		if self.props.OnEdited then
			self.props.OnEdited(self.state.editText)
		end
	end
	self.DoubleClickDetector = DoubleClickDetector.new()

	self.onPress = function()
		if self.props.OnDoubleClick and self.DoubleClickDetector:isDoubleClick() then
			self.props.OnDoubleClick()
		elseif self.props.OnPressed then
			self.props.OnPressed()
		end
	end
end

function Breadcrumb:didUpdate(prevProps)
	if not self.props.Editing or prevProps.Text ~= self.props.Text then
		self:setState({
			editText = self.props.Text,
		})
	end
end

function Breadcrumb:render()
	local props = self.props
	local state = self.state
	local orderIterator = LayoutOrderIterator.new()
	local order

	local tags = if supportsStyleSheets then props[React.Tag] else nil
	local hasError = if supportsStyleSheets
		then hasTag(tags, "PropertyCellError")
		else props.Style == "PropertyCellError"

	local style = if supportsStyleSheets then nil else props.Stylizer
	local children = {}
	if props.Editing then
		children.Text = Roact.createElement(TextInput, {
			GetAutocompleteItems = props.GetAutocompleteItems,
			LayoutOrder = orderIterator:getNextOrder(),
			OnTextChanged = self.onTextChanged,
			OnFocusLost = self.onEdited,
			Size = UDim2.fromScale(1, 1),
			ShouldFocus = true,
			Text = state.editText,
		})
	elseif props.Delimiters then
		if hasError then
			order = orderIterator:getNextOrder()
			children[order .. " Icon"] = Roact.createElement(
				Image,
				if supportsStyleSheets
					then {
						LayoutOrder = order,
						[React.Tag] = "ErrorIcon",
					}
					else join(style.ErrorImage, {
						LayoutOrder = order,
					})
			)
		end

		local lastFoundDelimiter
		local suffix = props.Text
		while #suffix > 0 do
			local delimiterStart, delimiterEnd
			for _, delimiter in ipairs(props.Delimiters) do
				local foundStart, foundEnd = suffix:find(delimiter)
				if foundStart and (not delimiterStart or foundStart < delimiterStart) then
					delimiterStart = foundStart
					delimiterEnd = foundEnd
				end
			end
			local componentText = suffix
			local delimiterText
			if delimiterStart then
				componentText = trim(suffix:sub(1, delimiterStart - 1))
				delimiterText = suffix:sub(delimiterStart, delimiterEnd)
				suffix = suffix:sub(delimiterEnd + 1)
			else
				suffix = ""
			end

			if props.GetImageProps then
				local componentImage = props.GetImageProps(componentText, lastFoundDelimiter)
				if componentImage then
					order = orderIterator:getNextOrder()
					children[order .. " Icon"] = Roact.createElement(
						Image,
						join(componentImage, {
							LayoutOrder = order,
						})
					)
				end
			end

			if #componentText > 0 then
				order = orderIterator:getNextOrder()
				children[order .. " Text"] = Roact.createElement(
					TextLabel,
					if supportsStyleSheets
						then {
							LayoutOrder = order,
							Text = componentText,
							[React.Tag] = joinTags("X-Fit Left", if hasError then "Error" else nil),
						}
						else {
							AutomaticSize = Enum.AutomaticSize.XY,
							LayoutOrder = order,
							Text = componentText,
							TextColor = style.TextColor,
							TextXAlignment = Enum.TextXAlignment.Left,
						}
				)
			end

			if delimiterStart then
				if props.GetImageProps then
					local delimiterImage = props.GetImageProps(delimiterText)
					if delimiterImage then
						order = orderIterator:getNextOrder()
						children[order .. " Icon"] = Roact.createElement(
							Image,
							join(delimiterImage, {
								LayoutOrder = order,
							})
						)
					end
				end

				lastFoundDelimiter = delimiterText
				order = orderIterator:getNextOrder()
				children[order .. " Delimiter"] = Roact.createElement(
					TextLabel,
					if supportsStyleSheets
						then {
							LayoutOrder = order,
							Text = delimiterText,
							[React.Tag] = joinTags("X-Fit Left", if hasError then "Error" else nil),
						}
						else {
							AutomaticSize = Enum.AutomaticSize.XY,
							LayoutOrder = order,
							Text = delimiterText,
							TextColor = style.TextColor,
							TextXAlignment = Enum.TextXAlignment.Left,
						}
				)
			end
		end
	else
		if props.GetImageProps then
			local image = props.GetImageProps(props.Text)
			if image then
				order = orderIterator:getNextOrder()
				children[order .. " Icon"] = Roact.createElement(
					Image,
					join(image, {
						LayoutOrder = order,
					})
				)
			end
		end
		order = orderIterator:getNextOrder()
		children.Text = Roact.createElement(TextLabel, {
			AutomaticSize = Enum.AutomaticSize.XY,
			LayoutOrder = order,
			Text = props.Text,
			TextXAlignment = Enum.TextXAlignment.Left,
		})
	end

	return Roact.createElement(
		Pane,
		if supportsStyleSheets
			then {
				AnchorPoint = props.AnchorPoint,
				OnPress = if props.Editing then nil else self.onPress,
				OnRightClick = if not props.Editing then props.OnRightClick else nil,
				LayoutOrder = props.LayoutOrder,
				Position = props.Position,
				Size = props.Size,
				[React.Tag] = joinTags("Component-Breadcrumb", tags, "X-RowS X-Left X-Middle"),
			}
			else {
				AnchorPoint = props.AnchorPoint,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				OnPress = if props.Editing then nil else self.onPress,
				OnRightClick = if not props.Editing then props.OnRightClick else nil,
				Layout = Enum.FillDirection.Horizontal,
				LayoutOrder = props.LayoutOrder,
				Position = props.Position,
				Size = props.Size,
				Spacing = style.Spacing,
				Style = props.PaneStyle,
			},
		children
	)
end

local defaultIcon = {
	Image = "rbxasset://textures/ClassImages.png",
	ImageRectOffset = Vector2.new(0, 0),
	ImageRectSize = Vector2.new(16, 16),
	Size = UDim2.fromOffset(16, 16),
}

-- Prevent GetClassIcon throwing an error from crashing the UI
local canUseGetClassIcon = pcall(function()
	local StudioService = game:GetService("StudioService")
	return StudioService:GetClassIcon("Folder")
end)

Breadcrumb.GetSelectorIcon = function(text: string)
	if not text then
		return nil
	end

	if not canUseGetClassIcon then
		return defaultIcon
	end
	local _start, _end, className = text:find("^%s*([A-Za-z]+)")
	local icon
	if className then
		if text == "ManualWeld" or text == "ManualGlue" then
			text = "JointInstance"
		end
		local ok, result = pcall(function()
			local StudioService = game:GetService("StudioService")
			return StudioService:GetClassIcon(className)
		end)
		if ok then
			icon = result
		else
			return nil
		end
	else
		local theme = getStudioThemeNameOrDefault()
		if text:find("^%s*%.") then
			icon = {
				Image = `rbxasset://studio_svg_textures/Lua/TagEditor/{theme}/Standard/Tag.png`,
			}
		else
			return nil
		end
	end
	return join(icon, {
		Size = if icon.ImageRectSize
			then UDim2.fromOffset(icon.ImageRectSize.X, icon.ImageRectSize.Y)
			else UDim2.fromOffset(16, 16),
	})
end

if not supportsStyleSheets then
	Breadcrumb = withContext({
		Stylizer = ContextServices.Stylizer,
	})(Breadcrumb)
end

return Breadcrumb
