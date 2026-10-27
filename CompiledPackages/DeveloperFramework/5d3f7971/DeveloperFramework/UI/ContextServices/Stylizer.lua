--[[
	(DEPRECATED)
	PLEASE USE Stylesheets instead of consuming Stylizer
	Wraps theme styles and update logic into a ContextItem.

	Stylizer.new(t, themeProps)
		Constructs a new Stylizer.

		Params:
			table initialStyles:
				The initial style table.
			table themeProps:
				A table of properties needed to change the theme. It should contain the following properties:
					function getThemeName: Required. Returns the current theme name.
					table themeChangedConnection: Optional. Signals when the theme changes. It should
						contain a function :Connect(). Requires themeProps to contain `themesList`.
					table themesList: Optional. Table of themes to use keyed on theme name. Is required
						when themeChangedConnection is set.

	Stylizer:getStyleKeysTable(t)
		Gets all StyleKey values in the first layer of the table t.

	Stylizer:convertStyleKeys(t, name, parent, styleKeysTable)
		Converts t's (which is a Stylizer table)'s StyleKey values into corresponding values in the styleKeysTable parameter
		and calculates each component/style's path string.

	Stylizer:getPathString()
		Gets the path of the Stylizer in relation to the overall theme table.

	Example usage:
		-- MakeTheme.lua
		local Stylizer = ContextHelpers.Stylizer
		local BaseTheme = Theme.BaseTheme

		local styleRoot = Stylizer.new(BaseTheme, themeProps)
		styleRoot:extend({
			TextBox = {
				Default = {
					TextColor = Color3.new(0,0,0),
					Font = Enum.Font.SourceSans,
				},
			},
		})
		return styleRoot

		-- TextBox.lua
		local TextBox = Roact.PureComponent:extend("TextBox")

		function TextBox:render()
			local props = self.props
			local style = props.Stylizer

			return Roact.createElement("TextBox", {
				TextColor3 = style.TextColor,
				Font = style.Font,
			})
		end


TextBox = withContext({
	Stylizer = ContextServices.Stylizer,
})(TextBox)



		return TextBox
]]

local Framework = script:FindFirstAncestor("UI").Parent
local Cryo = require(Framework.Parent.Cryo)
local ComponentSymbols = require(Framework.Style.ComponentSymbols)
local StyleKey = require(Framework.Style.StyleKey)

local ContextItem = require(Framework.UI.ContextServices.ContextItem)

local Util = require(Framework.Util)
local deepCopy = Util.deepCopy
local React = Util.React
local Signal = Util.Signal

local Stylizer = ContextItem:extend("Stylizer")

local function assertIfNotNil(value, condition, message)
	if value ~= nil then
		assert(condition, message)
	end
end

function Stylizer:getStyleKeysTable(t)
	local styleKeysTable = {}
	for k, v in pairs(t) do
		if type(k) == "table" and getmetatable(k) == StyleKey and type(v) ~= "table" then
			-- NOTE: StyleKeys need to be stringified
			styleKeysTable[tostring(k)] = v
		end
	end
	return styleKeysTable
end

--[[
	Gets the classStyle (in form of ["&ClassName"]) within a component.
--]]
function Stylizer:__getClassStyle(className, currentStyle, componentSymbol)
	local result = currentStyle[className]

	if not result then
		-- Get class style that is embedded (as an ampersandedClassName) in the component's style table
		local ampersandedClassName = "&" .. tostring(className)
		local componentStyle = currentStyle and currentStyle[componentSymbol]
		result = componentStyle and componentStyle[ampersandedClassName]
		if result and type(result) == "table" then
			local componentStyleWithoutEmbeddedClass = Cryo.Dictionary.join(componentStyle, {
				[ampersandedClassName] = Cryo.None,
			})
			result = Cryo.Dictionary.join(componentStyleWithoutEmbeddedClass, result)
			local mt = getmetatable(componentStyle[ampersandedClassName])
			result = setmetatable(result, mt)
		end
	end

	assert(
		result,
		("Stylizer:__getClassStyle could not find a Style named '%s' for component `%s`"):format(
			className,
			tostring(componentSymbol)
		)
	)

	return result
end

function Stylizer:__recalculateTheme(themeProps)
	assert(
		type(themeProps.themesList) == "table",
		"Stylizer.__recalculateTheme expects themeProps to contain a table `themesList` when themeChangedConnection is enabled"
	)

	local themeName = themeProps.getThemeName()
	if themeName == self.themeName then
		return
	end

	self.themeName = themeName

	if themeProps and themeProps.themesList then
		self:extend(themeProps.themesList[themeName])
		self.valuesChanged:Fire(self)
	end
end

function Stylizer.new(initialStyles, themeProps)
	assert(type(initialStyles) == "table", "Stylizer.new expects initialStyles parameter to be a table")
	assert(type(themeProps) == "table", "Stylizer.new expects themeProps parameter to be a table")
	assert(
		type(themeProps.getThemeName) == "function",
		"Stylizer.new expects themeProps to contain a function `getThemeName`"
	)

	local styleKeysTable = Stylizer:getStyleKeysTable(initialStyles)
	local selfCopy = deepCopy(initialStyles)
	selfCopy = Stylizer:convertStyleKeys(selfCopy, nil, nil, styleKeysTable)

	local self = {
		__calculatedStyle = selfCopy,
		__rawStyle = initialStyles,
		valuesChanged = Signal.new(),
		themeName = themeProps.getThemeName(),
	}
	setmetatable(self, Stylizer)

	if themeProps.themeChangedConnection then
		self.themeChangedConnection = themeProps.themeChangedConnection:Connect(function()
			self:__recalculateTheme(themeProps)
		end)
	end

	return self
end

function Stylizer:extend(...)
	for _, v in ipairs({ ... }) do
		local vCopy = deepCopy(v)
		local joinedStyles = Cryo.Dictionary.join(self.__rawStyle, vCopy)
		local styleKeysTable = self:getStyleKeysTable(joinedStyles)

		self.__rawStyle = deepCopy(joinedStyles)
		self.__calculatedStyle = Stylizer:convertStyleKeys(joinedStyles, nil, nil, styleKeysTable)
	end
	return self
end

function Stylizer:getSignal()
	return self.valuesChanged
end

function Stylizer:destroy()
	if self.themeChangedConnection then
		self.themeChangedConnection:Disconnect()
	end
end

function Stylizer:convertStyleKeys(t, name, parent, styleKeysTable)
	assert(t, "Style:convertStyleKeys expects 't' parameter")
	assertIfNotNil(
		parent,
		(typeof(parent) == "table"),
		("Style:convertStyleKeys expects 'parent' parameter to be a table, but got a %s"):format(typeof(table))
	)
	assertIfNotNil(
		styleKeysTable,
		(typeof(styleKeysTable) == "table"),
		("Style:convertStyleKeys expects 'styleKeysTable' parameter to be a table, but got a %s"):format(
			typeof(styleKeysTable)
		)
	)

	local mt
	if parent then
		mt = {
			__index = parent,
			__styleName = name or "[unnamed style]",
		}
	else
		mt = {
			__index = Stylizer,
			__styleName = name or "[Root Style]",
		}
	end

	-- Link input and parent styles
	local this = setmetatable(t, mt)

	-- Process properties and create nested styles
	for propName, v in pairs(t) do
		local override
		if type(v) == "table" then
			if getmetatable(v) == StyleKey then
				-- NOTE: StyleKeys need to be stringified
				override = (parent and parent[v])
					or (styleKeysTable and styleKeysTable[tostring(v)])
					or error(("StyleKey %s defines no value @ key %s"):format(v.name, propName))
			elseif type(v.render) ~= "function" then
				override = self:convertStyleKeys(v, propName, this, styleKeysTable)
			end
		elseif type(v) == "function" then
			local generated = v(this) or {}
			if type(generated) == "table" then
				override = self:convertStyleKeys(generated, propName, this, styleKeysTable)
			end
		end

		if override then
			rawset(this, propName, override)
		end
	end

	return this
end

function Stylizer:getPathString()
	local path
	local m = getmetatable(self)
	while m and m.__styleName do
		if path then
			path = tostring(m.__styleName) .. "-->" .. tostring(path)
		else
			path = m.__styleName
		end
		m = getmetatable(m.__index)
	end
	return path or ""
end

if React ~= "" then
	-- Props may indicate a style, a StyleModifier may also be set directly via React.useState
	function Stylizer:use(name, props, styleModifier)
		local style = React.useContext(self.Context)

		local function getNewValue()
			return style:get(name, props or {}, styleModifier)
		end

		local value, setValue = React.useState(getNewValue)

		React.useEffect(function()
			setValue(getNewValue)

			local signalConnection = style.valuesChanged:Connect(function()
				setValue(getNewValue)
			end)

			return function()
				signalConnection:Disconnect()
			end
		end, {
			name,
			styleModifier,
			if props then props.Style else nil,
		})

		return value
	end

	function Stylizer:get(name, props, styleModifier)
		local style = props.Style
		local currentStyle = self.__calculatedStyle
		local componentSymbol = ComponentSymbols[name]

		if not currentStyle then
			error(`Style:getConsumerItem() is unable to find the Style in context of {name}`)
			return self
		end

		local result
		if style then
			if typeof(style) == "table" then
				result = setmetatable(style, {
					__index = Stylizer,
				})
			elseif typeof(style) == "string" then
				result = self:__getClassStyle(style, currentStyle, componentSymbol)
			end
		end

		result = result or currentStyle[componentSymbol] or currentStyle or self

		local modStyle = if styleModifier then result[styleModifier] else nil
		if styleModifier and modStyle then
			setmetatable(modStyle, {
				__index = result,
			})

			for k, v in pairs(modStyle) do
				if typeof(v) == "table" and result[k] then
					setmetatable(v, {
						__index = result[k],
					})
				end
			end

			result = modStyle
		end

		return result
	end
end

function Stylizer:getConsumerItem(target)
	local style = target.props.Style
	local currentStyle = self.__calculatedStyle
	local componentSymbol = ComponentSymbols[target.__componentName]

	if not currentStyle then
		assert(false, "Style:getConsumerItem() is unable to find the Style in context of " .. target.__componentName)
		return self
	end

	local result
	if style then
		if type(style) == "table" then
			result = setmetatable(style, {
				__index = Stylizer,
			})
		elseif type(style) == "string" then
			result = self:__getClassStyle(style, currentStyle, componentSymbol)
		end
	end

	result = result or currentStyle[componentSymbol] or currentStyle or self

	local stateMetatable = getmetatable(target.state)
	local isStateUninitialized = stateMetatable and tostring(stateMetatable) == "UninitializedState"
	local modifier = target.props.StyleModifier or (if isStateUninitialized then nil else target.state.StyleModifier)

	local modStyle = result[modifier]
	if modifier and modStyle then
		setmetatable(modStyle, {
			__index = result,
		})

		for k, v in pairs(modStyle) do
			if type(v) == "table" and result[k] then
				setmetatable(v, {
					__index = result[k],
				})
			end
		end

		result = modStyle
	end

	return result
end

function Stylizer.mock(t, themeProps, callback)
	local self = Stylizer.new(t, themeProps)

	if themeProps.themeChangedConnection then
		self.themeChangedConnection:Disconnect()
		self.themeChangedConnection = themeProps.themeChangedConnection:Connect(function()
			callback()
			self:__recalculateTheme(themeProps)
		end)
	end

	return self
end
return Stylizer
