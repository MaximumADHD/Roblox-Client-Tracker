local Roact = require(script.Parent.Parent.Parent.Parent.Roact)
local Cryo = require(script.Parent.Parent.Parent.Parent.Cryo)
local TopBarBackButton = require(script.Parent.TopBarBackButton)
local TopBarTitleContainer = require(script.Parent.TopBarTitleContainer)
local isValidRoactElementType = require(script.Parent.Parent.Parent.utils.isValidRoactElementType)
local StackHeaderMode = require(script.Parent.Parent.StackView.StackHeaderMode)
local validate = require(script.Parent.Parent.Parent.utils.validate)

local TopBar = Roact.Component:extend("TopBar")

local DEFAULT_HEIGHT = 56
local DEFAULT_LEFT_WIDTH = UDim.new(0.3, 0)
local DEFAULT_CENTER_WIDTH = UDim.new(0.4, 0)
local DEFAULT_RIGHT_WIDTH = UDim.new(0.3, 0)

function TopBar:_getTopBarTitleString(scene)
	local options = scene.descriptor.options
	if type(options.headerTitle) == "string" then
		return options.headerTitle
	end
	if options.title and type(options.title) ~= "string" then
		error("Invalid title for route" .. scene.route.routeName ..
			" - title must be string or nil, instead it was of type " .. type(options.title))
	end
	return options.title
end

--[[
	Render either the provided headerTitleContainer component or our TopBarTitleContainer component
]]
function TopBar:_renderTitleComponent(props)

	local options = props.scene.descriptor.options
	local headerSubtitle = options.headerSubtitle
	local headerTitleContainerStyle = options.headerTitleContainerStyle or {}

	local renderHeaderTitle = options.renderHeaderTitle
	local renderHeaderSubtitle = options.renderHeaderSubtitle

	local titleString = self:_getTopBarTitleString(props.scene)
	local headerTitleStyle = options.headerTitleStyle
	local headerSubtitleStyle = options.headerSubtitleStyle

	local renderHeaderTitleContainer = options.renderHeaderTitleContainer

	headerTitleContainerStyle = Cryo.Dictionary.join({
		Size = UDim2.new(DEFAULT_CENTER_WIDTH, UDim.new(1, 0))
	}, headerTitleContainerStyle)

	if renderHeaderTitleContainer then
		return Roact.createElement(renderHeaderTitleContainer, {
			headerTitleContainerStyle = headerTitleContainerStyle,
			headerTitleStyle = headerTitleStyle,
			headerSubtitleStyle = headerSubtitleStyle,
			headerTitle = titleString,
			headerSubtitle = headerSubtitle,
			renderHeaderTitle = renderHeaderTitle,
			renderHeaderSubtitle = renderHeaderSubtitle,
		})
	end

	return Roact.createElement(TopBarTitleContainer, {
		headerTitleContainerStyle = headerTitleContainerStyle,
		headerTitleStyle = headerTitleStyle,
		headerSubtitleStyle = headerSubtitleStyle,
		headerTitle = titleString,
		headerSubtitle = headerSubtitle,
		renderHeaderTitle = renderHeaderTitle,
		renderHeaderSubtitle = renderHeaderSubtitle,
	})
end

function TopBar:_renderLeftComponent(props)
	local options = props.scene.descriptor.options

	local renderHeaderLeftContainer = options.renderHeaderLeftContainer
	local headerLeftContainerStyle = options.headerLeftContainerStyle or {}
	local renderHeaderBackButton = options.renderHeaderBackButton
	local headerBackButtonStyle = options.headerBackButtonStyle

	headerLeftContainerStyle = Cryo.Dictionary.join({
		Size = UDim2.new(DEFAULT_LEFT_WIDTH, UDim.new(1, 0)),
	}, headerLeftContainerStyle)

	local function goBack()
		props.scene.descriptor.navigation.goBack(props.scene.descriptor.key)
	end

	if renderHeaderLeftContainer then
		return Roact.createElement(renderHeaderLeftContainer, {
			goBack = goBack,
			headerLeftContainerStyle = headerLeftContainerStyle,
			renderHeaderBackButton = renderHeaderBackButton,
			headerBackButtonStyle = headerBackButtonStyle,

		})
	end

	-- Don't display anything if there's no page to go back to, by default
	if props.scene.index == 1 then
		return Roact.createElement("Frame", {
			Size = UDim2.new(DEFAULT_LEFT_WIDTH, UDim.new(1, 0)),
			BackgroundTransparency = 1,
		})
	end

	return Roact.createElement(TopBarBackButton, {
		goBack = goBack,
		headerLeftContainerStyle = headerLeftContainerStyle,
		renderHeaderBackButton = renderHeaderBackButton,
		headerBackButtonStyle = headerBackButtonStyle,
	})
end

function TopBar:_renderRightComponent(props)
	local renderHeaderRight = props.scene.descriptor.options.renderHeaderRight
	if renderHeaderRight then
		return Roact.createElement(props.scene.descriptor.options.renderHeaderRight)
	end
	return Roact.createElement("Frame", {
		Size = UDim2.new(DEFAULT_RIGHT_WIDTH, UDim.new(1, 0)),
		BackgroundTransparency = 1,
		LayoutOrder = 3,
	})
end

function TopBar:_renderHeader(props)
	local options = props.scene.descriptor.options
	local left = self:_renderLeftComponent(props)
	local center = self:_renderTitleComponent(props)
	local right = self:_renderRightComponent(props)
	local headerStyle = options.headerStyle or {}
	local DEFAULT_HEADER_STYLE = {
		Size = UDim2.new(1, 0, 0, DEFAULT_HEIGHT)
	}

	headerStyle = Cryo.Dictionary.join(DEFAULT_HEADER_STYLE, headerStyle)
	return Roact.createElement("Frame", headerStyle, {
		Layout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Horizontal,
			VerticalAlignment = Enum.VerticalAlignment.Center,
		}),
		left = left,
		center = center,
		right = right,
	})
end

function TopBar:render()
	local appBar
	local mode = self.props.mode
	local scene = self.props.scene

	if mode == StackHeaderMode.Float then
		local scenesByIndex = {}
		for _, s in ipairs(self.props.scenes) do
			scenesByIndex[scene.index] = s
		end
		-- For each scene, create its props
		local scenesProps = Cryo.List.map(Cryo.Dictionary.values(scenesByIndex), function(s, index)
			return {
				position = self.props.position,
				scene = s
			}
		end)
		appBar = Cryo.List.map(scenesProps, self._renderHeader)
		error("TODO: implement support for Float")
	else
		local headerProps = {
			scene = self.props.scene,
		}
		appBar = self:_renderHeader(headerProps)
	end
	return appBar
end

local function validateProps(props)
	local options = props.scene.descriptor.options
	local headerTitle = options.headerTitle
	local renderHeaderTitle = options.renderHeaderTitle

	local headerSubtitle = options.headerSubtitle
	local renderHeaderSubtitle = options.renderHeaderSubtitle

	local renderHeaderTitleContainer = options.renderHeaderTitleContainer
	local renderHeaderRight = options.renderHeaderRight
	local renderLeftContainer = options.renderLeftContainer
	local renderHeaderBackButton = options.renderHeaderBackButton

	validate(not (headerTitle and renderHeaderTitle), "You must not specify both headerTitle and renderHeaderTitle.")
	validate(not (headerSubtitle and renderHeaderSubtitle),
		"You must not specify both headerSubtitle and renderHeaderSubtitle.")

	if renderHeaderTitle then
		validate(isValidRoactElementType(renderHeaderTitle), "renderHeaderTitle must be a valid Roact element type.")
	end
	if renderHeaderSubtitle then
		validate(isValidRoactElementType(renderHeaderSubtitle), "renderHeaderSubtitle must be a valid Roact element type.")
	end
	if renderHeaderTitleContainer then
		validate(isValidRoactElementType(renderHeaderTitleContainer),
			"renderHeaderTitleContainer must be a valid Roact element type.")
	end
	if renderHeaderRight then
		validate(isValidRoactElementType(renderHeaderRight), "renderHeaderRight must be a valid Roact element type.")
	end
	if renderLeftContainer then
		validate(isValidRoactElementType(renderLeftContainer), "renderLeftContainer must be a valid Roact element type.")
	end
	if renderHeaderBackButton then
		validate(isValidRoactElementType(renderHeaderBackButton),
			"renderHeaderBackButton must be a valid Roact element type.")
	end
end

function TopBar.getDerivedStateFromProps(nextProps)
	validateProps(nextProps)
	return {}
end

return TopBar