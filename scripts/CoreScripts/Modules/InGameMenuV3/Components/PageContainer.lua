--!nonstrict
local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local t = InGameMenuDependencies.t
local InGameMenu = script.Parent.Parent

local BlurredModalPortal = require(script.Parent.BlurredModalPortal)
local Pages = require(script.Parent.Pages)

local GetFFlagUseIGMControllerBar = require(InGameMenu.Flags.GetFFlagUseIGMControllerBar)

local Constants = require(script.Parent.Parent.Resources.Constants)
local animateLeftGoal, animateRightGoal = -1.0, 0.5
local PerfUtils = require(InGameMenu.Utility.PerfUtils)

local TWEEN_TIME = Constants.MenuOpenTweenTime
local TWEEN_EASE_RAMP = Enum.EasingDirection.InOut
local TWEEN_EASE_CURVE = Enum.EasingStyle.Sine
local HIDE_POSITION = -100
local SIDE_NAV_WIDTH = Constants.SideNavigationWidth

local pageComponents = {}
for key, pageInfo in pairs(Pages.pagesByKey) do
	pageComponents[key] = pageInfo.component and require(pageInfo.component)
end

local withLocalization = require(InGameMenu.Localization.withLocalization)

local PageContainer = Roact.PureComponent:extend("PageContainer")
PageContainer.validateProps = t.strictInterface({
	currentPage = t.string,
	visible = t.boolean,
	controllerBarHeight = GetFFlagUseIGMControllerBar() and t.number or nil,
	controllerBarCount = t.number,
})

local function tweenYPosition(rbx, scale, offset, completeCallback)
	if rbx then
		rbx:TweenPosition(
			UDim2.new(scale, offset or 0, 0, 0),
			TWEEN_EASE_RAMP,
			TWEEN_EASE_CURVE,
			TWEEN_TIME,
			true,
			completeCallback
					and function(status)
						if status == Enum.TweenStatus.Completed then
							completeCallback()
						end
					end
				or nil
		)
	end
end

function PageContainer:init(props)
	self.pageContainerRef = Roact.createRef()
	self.pageRbxComponents = {}

	self.onContainerRenderedForKey = function(rbx, key)
		if rbx then
			if self.pageRbxComponents[key] ~= rbx then
				self.pageRbxComponents[key] = rbx
				self.pageRbxComponents[key].Position = UDim2.new(-1, 0, 0, 0)
				self.pageRbxComponents[key].Visible = false
			end
			local selectionParentName = self.getSelectionParentNameFromKey(key)
			GuiService:RemoveSelectionGroup(selectionParentName)
			GuiService:AddSelectionParent(selectionParentName, rbx)
		end
	end

	self.getSelectionParentNameFromKey = function(key)
		return key .. "_IGMPageSelectionGroup"
	end

	self.onContainerRendered = {}
	for key, _ in pairs(Pages.pagesByKey) do
		self.onContainerRendered[key] = function(rbx)
			self.onContainerRenderedForKey(rbx, key)
		end
	end
end

function PageContainer:render()
	local pageElements = {}

	for key, pageInfo in pairs(Pages.pagesByKey) do
		pageElements[key] = withLocalization({
			title = pageInfo.title,
		})(function(localized)
			if not pageInfo.isModal then
				return Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundTransparency = 1,
					ZIndex = pageInfo.navigationDepth,
					[Roact.Ref] = self.onContainerRendered[key],
				}, {
					Page = pageComponents[key] and Roact.createElement(pageComponents[key], {
						pageTitle = pageInfo.title and localized.title,
					}),
				})
			else
				return Roact.createElement(BlurredModalPortal, {
					Enabled = self.props.currentPage == key,
				}, {
					ModalPageContent = pageComponents[key] and Roact.createElement(pageComponents[key], {
						pageTitle = localized.title,
					}),
				})
			end
		end)
	end

	local yOffset = (self.props.controllerBarCount > 0) and -1 * Constants.ControllerBarHeight or nil

	return Roact.createElement("Frame", {
		Size = UDim2.new(0, Constants.PageWidth, 1, yOffset),
		BackgroundTransparency = 1,
		ClipsDescendants = true,
		[Roact.Ref] = self.pageContainerRef,
	}, pageElements)
end

function PageContainer:didMount()
	local containerFrame = self.pageContainerRef:getValue()
	local activePosition = self.props.visible and SIDE_NAV_WIDTH or HIDE_POSITION
	if containerFrame then
		containerFrame.Visible = self.props.visible
		containerFrame.Position = UDim2.new(0, activePosition, 0, 0)
	end
end

function PageContainer:didUpdate(oldProps, oldState)
	local visibilityChanged = self.props.visible ~= oldProps.visible
	if visibilityChanged then
		local activePosition = self.props.visible and SIDE_NAV_WIDTH or HIDE_POSITION
		local containerFrame = self.pageContainerRef:getValue()
		if containerFrame then
			containerFrame.Visible = true
			tweenYPosition(containerFrame, 0, activePosition, function()
				if self.props.visible then
					PerfUtils.menuOpenComplete()
				else
					PerfUtils.menuCloseComplete()
					containerFrame.Visible = false
				end
			end)
		end

		if not self.props.visible then
			for _, page in pairs(self.pageRbxComponents) do
				tweenYPosition(page, animateLeftGoal)
			end
		end
	end

	local lastPage = oldProps.currentPage
	local currentPage = self.props.currentPage
	if lastPage ~= currentPage then
		local currentPageIsModal = Pages.pagesByKey[currentPage].isModal
		local lastPageWasModal = Pages.pagesByKey[lastPage].isModal
		if currentPageIsModal or lastPageWasModal then
			return
		end

		local sameNavigationDepth = Pages.pagesByKey[lastPage].navigationDepth
			== Pages.pagesByKey[currentPage].navigationDepth
		if Pages.pagesByKey[lastPage].navigationDepth < Pages.pagesByKey[currentPage].navigationDepth then
			-- nav down
			if not currentPageIsModal then
				tweenYPosition(self.pageRbxComponents[lastPage], animateRightGoal, 0, function()
					if self.props.currentPage ~= lastPage then
						self.pageRbxComponents[lastPage].Visible = false
					end
				end)
			end
		elseif sameNavigationDepth then
			-- this is added temporarily to fix crash that caused by nav from invite friends to players in "Make Friends"
			if self.pageRbxComponents[lastPage] then
				self.pageRbxComponents[lastPage].Visible = false
				self.pageRbxComponents[lastPage].Position = UDim2.new(animateLeftGoal, 0, 0, 0)
			end
		else
			-- nav up/ nav to top
			-- To accomodate Navigate to Top, containter needs to move all used pages over. Therefore if current page and last page are not
			-- parent-child pages, it will move all parent pages of lastPage until it reaches currentPage
			local pageOnNavPath = lastPage
			while pageOnNavPath ~= nil and pageOnNavPath ~= currentPage do
				local page = pageOnNavPath
				tweenYPosition(self.pageRbxComponents[page], animateLeftGoal, 0, function()
					if self.props.currentPage ~= page then
						self.pageRbxComponents[page].Visible = false
					end
				end)
				pageOnNavPath = Pages.pagesByKey[pageOnNavPath].parentPage
			end
		end

		if self.pageRbxComponents[currentPage] then
			self.pageRbxComponents[currentPage].Visible = true
			if not visibilityChanged and sameNavigationDepth then
				self.pageRbxComponents[currentPage].Position = UDim2.new(0, 0, 0, 0)
			else
				if
					self.props.visible
					and visibilityChanged
					and self.pageRbxComponents[currentPage].Position.X.Scale <= animateLeftGoal
				then
					-- on first shown, the parent also animates,
					-- set to an advanced position to avoid unnecessary speed and delay
					self.pageRbxComponents[currentPage].Position = UDim2.new(-0.8, 0, 0, 0)
				end
				tweenYPosition(self.pageRbxComponents[currentPage], 0)
			end
		end
	end
end

function PageContainer:willUnmount()
	for key, pageInfo in pairs(Pages.pagesByKey) do
		if not pageInfo.isModal then
			local selectionParentName = self.getSelectionParentNameFromKey(key)
			GuiService:RemoveSelectionGroup(selectionParentName)
		end
	end
end

return RoactRodux.UNSTABLE_connect2(function(state)
	local controllerBarHeight = nil -- can inline once flag is removed
	if GetFFlagUseIGMControllerBar() then
		controllerBarHeight = state.controllerBarHeight
	end

	local controllerBarCount = state.controllerBarCount

	return {
		currentPage = state.menuPage,
		visible = state.isMenuOpen,
		controllerBarHeight = controllerBarHeight,
		controllerBarCount = controllerBarCount,
	}
end)(PageContainer)
