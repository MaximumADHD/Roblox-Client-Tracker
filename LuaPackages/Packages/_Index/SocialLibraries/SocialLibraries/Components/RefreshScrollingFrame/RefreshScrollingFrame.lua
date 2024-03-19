--[[
	Imported from Lua App, stripped down for SocialTab use case
]]
local UserInputService = game:GetService("UserInputService")
local UserGameSettings = UserSettings():GetService("UserGameSettings")
local SocialLibraries = script:FindFirstAncestor("SocialLibraries")
local dependencies = require(SocialLibraries.dependencies)

local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox
local Otter = dependencies.Otter
local t = dependencies.t
local Cryo = dependencies.Cryo
local withStyle = UIBlox.Style.withStyle
local getIconSize = UIBlox.App.ImageSet.getIconSize

local ExternalEventConnection = require(script.Parent.ExternalEventConnection)
local Spinner = require(script.Parent.Spinner)

local SPINNER_ICON_SIZE = getIconSize(UIBlox.App.ImageSet.Enum.IconSize.Medium)

local SPINNER_ROTATION = {
	Start = -240,
	End = 0,
}

local SPINNER_TRANSPARENCY = {
	Start = 1,
	End = 0,
}

local SPRING_OPTIONS = {
	dampingRatio = 1,
	frequency = 3.5,
}

local function lerp(a, b, alpha)
	-- t need to be in range 0 - 1
	alpha = math.min(1, math.max(0, alpha))

	return a * (1 - alpha) + b * alpha
end

local RefreshScrollingFrameNew = Roact.PureComponent:extend("RefreshScrollingFrameNew")

RefreshScrollingFrameNew.defaultProps = {
	ScrollingElement = "ScrollingFrame",

	refreshThreshold = 52,
	scrollingElementProps = {},
}

RefreshScrollingFrameNew.validateProps = t.interface({
	ScrollingElement = t.union(t.string, t.callback, t.table),
	scrollingElementProps = t.optional(t.table),

	refreshThreshold = t.number,
	forwardRef = t.optional(t.table),
	onCanvasPositionChangedCallback = t.optional(t.callback),
	onStatusBarTapped = t.optional(t.callback),
	refresh = t.optional(t.callback),

	[Roact.Children] = t.optional(t.any),
})

function RefreshScrollingFrameNew:init()
	self.state = {
		isRefreshing = false,
	}

	self.startHeight = 0

	self.isUserInteracting = false

	local forwardRef = self.props.forwardRef

	local propsRef = forwardRef
	assert(
		type(propsRef) ~= "function",
		("%s does not support function ref forwarding"):format(tostring(RefreshScrollingFrameNew))
	)

	self.scrollingFrameRef = propsRef or Roact.createRef()
	self.spinnerFrameRef = Roact.createRef()
	self.spinnerRef = Roact.createRef()

	self.updateSpinner = function(newSpinnerFrameHeight)
		if self.spinnerFrameRef.current then
			self.spinnerFrameRef.current.Size = UDim2.new(1, 0, 0, newSpinnerFrameHeight)
			local refreshThreshold = self.props.refreshThreshold

			-- As the spinner is pulled down, it slightly rotates, and also changes transparency
			local lerpValue = newSpinnerFrameHeight / refreshThreshold
			self.spinnerRef.current.ImageTransparency = lerp(
				SPINNER_TRANSPARENCY.Start,
				SPINNER_TRANSPARENCY.End,
				lerpValue
			)

			local isSpinning = self.state.isRefreshing
			if not isSpinning then
				self.spinnerRef.current.Rotation = lerp(SPINNER_ROTATION.Start, SPINNER_ROTATION.End, lerpValue)
			end
		end
	end

	self.motor = Otter.createSingleMotor(0)
	self.motor:onStep(self.updateSpinner)

	self.resetSpinner = function()
		self.motor:setGoal(Otter.spring(0, SPRING_OPTIONS))
	end

	self.scrollBack = function()
		if self.scrollingFrameRef.current then
			if UserGameSettings.ReducedMotion then
				self.scrollingFrameRef.current.CanvasPosition = Vector2.new(0, 0)
			else
				self.scrollingFrameRef.current:ScrollToTop()
			end
		end
	end

	self.dispatchRefresh = function()
		local refresh = self.props.refresh
		local refreshThreshold = self.props.refreshThreshold
		local isRefreshing = self.state.isRefreshing

		if refresh == nil then
			return
		end

		if not isRefreshing then
			self:setState({
				isRefreshing = true,
			})

			self.motor:setGoal(Otter.spring(refreshThreshold, SPRING_OPTIONS))

			local function onRefreshComplete()
				if self.isMounted then
					self:setState({
						isRefreshing = false,
					})
					self.resetSpinner()
				end
			end

			refresh():andThen(onRefreshComplete, onRefreshComplete)
		end
	end

	self.onInputBegan = function(input)
		--! This is to stop refresh when someone is scrolling back up from the bottom of the list
		if not self.isUserInteracting then
			self.startHeight = self.scrollingFrameRef.current.CanvasPosition.Y
		end

		self.isUserInteracting = true
	end

	self.onInputEnded = function(input)
		self.isUserInteracting = false
		--! This is to stop refresh when someone is scrolling back up from the bottom of the list
		local startHeight = self.startHeight
		self.startHeight = 0

		-- After the user has pulled down the scrolling frame far enough, and released
		-- their finger, we do a refresh
		if self.props.refresh ~= nil and self.scrollingFrameRef.current then
			local pulldownDistance = -self.scrollingFrameRef.current.CanvasPosition.Y
			local refreshThreshold = self.props.refreshThreshold

			if pulldownDistance > refreshThreshold and pulldownDistance > startHeight then
				self.dispatchRefresh()
			elseif pulldownDistance > 0 then
				self.resetSpinner()
			end
		end
	end

	self.statusBarTapCallback = function()
		if self.props.onStatusBarTapped then
			self.props.onStatusBarTapped()
		end
		self.scrollBack()
	end

	self.onCanvasPositionChanged = function(rbx)
		if self.props.onCanvasPositionChangedCallback ~= nil then
			self.props.onCanvasPositionChangedCallback(rbx)
		end

		if self.props.refresh ~= nil and self.isUserInteracting and not self.state.isRefreshing then
			local pulldownDistance = -rbx.CanvasPosition.Y
			local refreshThreshold = self.props.refreshThreshold

			if pulldownDistance >= 0 and pulldownDistance <= refreshThreshold then
				self.motor:setGoal(Otter.instant(pulldownDistance))
			end
		end
	end

	self.onCanvasSizeChanged = function(rbx)
		if self.props.onCanvasSizeChangedCallback ~= nil then
			self.props.onCanvasSizeChangedCallback(rbx)
		end
	end
end

function RefreshScrollingFrameNew:didMount()
	self.isMounted = true
	self.resetSpinner()
end

function RefreshScrollingFrameNew:willUnmount()
	self.isMounted = false

	self.motor:destroy()
	self.motor = nil
end

function RefreshScrollingFrameNew:render()
	local children = self.props[Roact.Children]
	local isRefreshing = self.state.isRefreshing

	return withStyle(function(style)
		-- TODO this is a slightly different component now... The principals are the same
		return Roact.createElement(
			self.props.ScrollingElement,
			Cryo.Dictionary.join({
				[Roact.Change.CanvasPosition] = self.onCanvasPositionChanged,
				[Roact.Change.CanvasSize] = self.onCanvasSizeChanged,
				[Roact.Ref] = self.scrollingFrameRef,
			}, self.props.scrollingElementProps),
			{
				Layout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),
				SpinnerFrame = Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 0, 0),
					LayoutOrder = 1,
					BackgroundTransparency = 1,
					ClipsDescendants = false,
					[Roact.Ref] = self.spinnerFrameRef,
				}, {
					Spinner = Roact.createElement(Spinner, {
						Size = UDim2.new(0, SPINNER_ICON_SIZE, 0, SPINNER_ICON_SIZE),
						AnchorPoint = Vector2.new(0.5, 1),
						Position = UDim2.new(0.5, 0, 1, 0),
						isSpinning = isRefreshing,
						[Roact.Ref] = self.spinnerRef,
					}),
				}),
				Content = Roact.createElement("Frame", {
					AutomaticSize = Enum.AutomaticSize.Y,
					BackgroundTransparency = 1,
					LayoutOrder = 2,
					Size = UDim2.new(1, 0, 1, 0),
				}, children),
				inputBegan = Roact.createElement(ExternalEventConnection, {
					event = UserInputService.InputBegan,
					callback = self.onInputBegan,
				}),
				inputEnded = Roact.createElement(ExternalEventConnection, {
					event = UserInputService.InputEnded,
					callback = self.onInputEnded,
				}),
				statusBarTapped = Roact.createElement(ExternalEventConnection, {
					event = UserInputService.StatusBarTapped,
					callback = self.statusBarTapCallback,
				}),
			}
		)
	end)
end

return Roact.forwardRef(function(props, ref)
	return Roact.createElement(
		RefreshScrollingFrameNew,
		Cryo.Dictionary.join(props, {
			forwardRef = ref,
		})
	)
end)
