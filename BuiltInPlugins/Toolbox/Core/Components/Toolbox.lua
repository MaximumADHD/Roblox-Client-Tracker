--[[
	The toolbox itself

	Props (many of these come from the store):
		number initialWidth = 0
		number initialSelectedBackgroundIndex = 1
		number initialSelectedCategoryIndex = 1
		string initialSearchTerm = ""
		number initialSelectedSortIndex = 1

		Backgrounds backgrounds
		Categories categories
		Suggestions suggestions
		Sorts sorts

		callback loadManageableGroups()
		callback updatePageInfo()
]]

local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local RoactRodux = require(Libs.RoactRodux)

local Constants = require(Plugin.Core.Util.Constants)
local ContextGetter = require(Plugin.Core.Util.ContextGetter)
local ContextHelper = require(Plugin.Core.Util.ContextHelper)

local Sort = require(Plugin.Core.Types.Sort)

local getNetwork = ContextGetter.getNetwork
local getSettings = ContextGetter.getSettings
local withTheme = ContextHelper.withTheme

local Footer = require(Plugin.Core.Components.Footer.Footer)
local Header = require(Plugin.Core.Components.Header)
local MainView = require(Plugin.Core.Components.MainView.MainView)
local SoundPreviewComponent = require(Plugin.Core.Components.SoundPreviewComponent)

local GetManageableGroupsRequest = require(Plugin.Core.Networking.Requests.GetManageableGroupsRequest)
local UpdatePageInfoAndSendRequest = require(Plugin.Core.Networking.Requests.UpdatePageInfoAndSendRequest)

local FFlagStudioLuaWidgetToolboxV2 = settings():GetFFlag("StudioLuaWidgetToolboxV2")

local Toolbox = Roact.PureComponent:extend("Toolbox")

function Toolbox:handleInitialSettings()
	local networkInterface = getNetwork(self)
	local settings = getSettings(self)
	local initialSettings = settings:loadInitialSettings()

	-- Load the initial values and make sure they're safe
	local initialSelectedCategoryIndex = initialSettings.categoryIndex or 1
	if initialSelectedCategoryIndex < 1 or initialSelectedCategoryIndex > #self.props.categories then
		initialSelectedCategoryIndex = 1
	end

	local initialSearchTerm = initialSettings.searchTerm or ""

	local initialSelectedSortIndex = initialSettings.sortIndex or 1
	if initialSelectedSortIndex < 1 or initialSelectedSortIndex > #self.props.sorts then
		initialSelectedSortIndex = Sort.getDefaultSortForCategory(initialSelectedCategoryIndex)
	end

	local initialSelectedBackgroundIndex = initialSettings.backgroundIndex or 1

	-- Set the initial page info for the toolbox
	-- This will trigger a web request to load the first round of assets
	self.props.updatePageInfo(networkInterface, settings, {
		categoryIndex = initialSelectedCategoryIndex,
		searchTerm = initialSearchTerm,
		sortIndex = initialSelectedSortIndex,
		groupIndex = 0,
		page = 1,
		pageSize = Constants.GET_ITEMS_PAGE_SIZE,
		selectedBackgroundIndex = initialSelectedBackgroundIndex,
	})
end

function Toolbox:init(props)
	self.state = {
		toolboxWidth = math.max(props.initialWidth or 0, Constants.TOOLBOX_MIN_WIDTH),
	}

	self.toolboxRef = Roact.createRef()

	-- If flag is on, use function that gets ref, else use old with rbx param
	self.onAbsoluteSizeChange = FFlagStudioLuaWidgetToolboxV2 and function()
		local toolboxWidth = math.max(self.toolboxRef.current.AbsoluteSize.x,
			Constants.TOOLBOX_MIN_WIDTH)
		if self.state.toolboxWidth ~= toolboxWidth then
			self:setState({
				toolboxWidth = toolboxWidth,
			})
		end
	end or function(rbx)
		local toolboxWidth = math.max(rbx.AbsoluteSize.x, Constants.TOOLBOX_MIN_WIDTH)
		if self.state.toolboxWidth ~= toolboxWidth then
			self:setState({
				toolboxWidth = toolboxWidth,
			})
		end
	end

	if not FFlagStudioLuaWidgetToolboxV2 then
		self:handleInitialSettings()
	end
end

function Toolbox:didMount()
	if FFlagStudioLuaWidgetToolboxV2 then
		if self.toolboxRef.current then
			self.toolboxRef.current:GetPropertyChangedSignal("AbsoluteSize"):connect(self.onAbsoluteSizeChange)
		end

		self:handleInitialSettings()
	end

	self.props.loadManageableGroups(getNetwork(self))
end

function Toolbox:render()
	return withTheme(function(theme)
		local props = self.props
		local state = self.state

		local toolboxWidth = state.toolboxWidth

		local backgrounds = props.backgrounds
		local suggestions = props.suggestions or {}

		local toolboxTheme = theme.toolbox

		local onAbsoluteSizeChange = nil
		if not FFlagStudioLuaWidgetToolboxV2 then
			onAbsoluteSizeChange = self.onAbsoluteSizeChange
		end

		return Roact.createElement("Frame", {
			Position = UDim2.new(0, 0, 0, 0),
			Size = UDim2.new(1, 0, 1, 0),

			BorderSizePixel = 0,
			BackgroundColor3 = toolboxTheme.backgroundColor,

			[Roact.Ref] = self.toolboxRef,
			[Roact.Change.AbsoluteSize] = onAbsoluteSizeChange,
		}, {
			Header = Roact.createElement(Header, {
				maxWidth = toolboxWidth,
			}),

			MainView = Roact.createElement(MainView, {
				Position = UDim2.new(0, 0, 0, Constants.HEADER_HEIGHT + 1),
				Size = UDim2.new(1, 0, 1, -(Constants.HEADER_HEIGHT + Constants.FOOTER_HEIGHT + 2)),

				maxWidth = toolboxWidth,
				suggestions = suggestions,
			}),

			Footer = Roact.createElement(Footer, {
				backgrounds = backgrounds,
			}),

			AudioPreview = Roact.createElement(SoundPreviewComponent)
		})
	end)
end

local function mapStateToProps(state, props)
	state = state or {}
	local pageInfo = state.pageInfo or {}

	return {
		categories = pageInfo.categories or {},
		sorts = pageInfo.sorts or {}
	}
end

local function mapDispatchToProps(dispatch)
	return {
		loadManageableGroups = function(networkInterface)
			dispatch(GetManageableGroupsRequest(networkInterface))
		end,

		updatePageInfo = function(networkInterface, settings, newPageInfo)
			dispatch(UpdatePageInfoAndSendRequest(networkInterface, settings, newPageInfo))
		end,
	}
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, mapDispatchToProps)(Toolbox)
