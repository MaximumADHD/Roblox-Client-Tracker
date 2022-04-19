local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local Otter = InGameMenuDependencies.Otter
local t = InGameMenuDependencies.t

local InGameMenu = script.Parent.Parent

local BlurredModalPortal = require(script.Parent.BlurredModalPortal)
local Pages = require(script.Parent.Pages)

local GetFFlagUseIGMControllerBar = require(InGameMenu.Flags.GetFFlagUseIGMControllerBar)

local Constants = require(script.Parent.Parent.Resources.Constants)
local animateLeftGoal, animateRightGoal = 0, 1.25

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

local POSITION_MOTOR_OPTIONS = {
    dampingRatio = 1,
    frequency = 4,
}

function PageContainer:init(props)
	self.onContainerRendered = function(rbx, key)
		if rbx then
			local selectionParentName = self.getSelectionParentNameFromKey(key)
			GuiService:RemoveSelectionGroup(selectionParentName)
			GuiService:AddSelectionParent(selectionParentName, rbx)
		end
	end

	self.getSelectionParentNameFromKey = function(key)
		return key .. "_IGMPageSelectionGroup"
	end

	local pageBindings, pageBindingUpdaters = {}, {}
	self.motorDefaults = {}
	self.pagePositions = {}
	self.pageVisibilities = {}
	for key, _ in pairs(Pages.pagesByKey) do
		local defaultValue = props.currentPage == key and 1 or 0
		pageBindings[key], pageBindingUpdaters[key] = Roact.createBinding(defaultValue)
		self.motorDefaults[key] = defaultValue

		self.pagePositions[key] = pageBindings[key]:map(function(value)
			return UDim2.new(value - 1, 0, 0, 0)
		end)

		-- check the animation status for each page and toggles visible to false if it
		-- is finished animating to the right (1.25) or to the left (0)
		self.pageVisibilities[key] = pageBindings[key]:map(function(value)
			if (value == animateLeftGoal or value == animateRightGoal) then
				return false
			end
			return true
		end)
	end

	self.pageMotor = Otter.createGroupMotor(self.motorDefaults)
	self.pageMotor:onStep(function(values)
		for key, newValue in pairs(values) do
			pageBindingUpdaters[key](newValue)
		end
	end)

	self.positionMotor = Otter.createSingleMotor(-100)
	self.containerPosition, self.setContainerPosition = Roact.createBinding(UDim2.new(0, -100, 0, 0))
	self.positionMotor:onStep(function(position)
		self.setContainerPosition(UDim2.new(0, position, 0, 0))
	end)
end

function PageContainer:render()
	local pageElements = {}

	for key, pageInfo in pairs(Pages.pagesByKey) do

		local pageVisible = self.pageVisibilities[key]

		pageElements[key] = withLocalization({
			title = pageInfo.title,
		})(function(localized)
			if not pageInfo.isModal then
				return Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 1, 0),
					Position = self.pagePositions[key],
					BackgroundTransparency = 1,
					ZIndex = pageInfo.navigationDepth,
					Visible = pageVisible,
					[Roact.Ref] = function(rbx)
						self.onContainerRendered(rbx, key)
					end,
				},{
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

	local  yOffset = (self.props.controllerBarCount > 0) and -1 * Constants.ControllerBarHeight or nil

	return Roact.createElement("Frame", {
		Size = UDim2.new(0, Constants.PageWidth, 1, yOffset),
		Position = self.containerPosition,
		BackgroundTransparency = 1,
		Visible = self.props.visible,
		ClipsDescendants = true,
	}, pageElements)
end

function PageContainer:didUpdate(oldProps, oldState)

	self.positionMotor:setGoal(Otter.spring(self.props.visible and 64 or -100, POSITION_MOTOR_OPTIONS))

	local lastPage = oldProps.currentPage
	local currentPage = self.props.currentPage

	if not self.props.visible and self.props.visible ~= oldProps.visible then
		local instantDefault = {}
		for key, val in pairs(self.motorDefaults) do
			instantDefault[key] = Otter.instant(val)
		end
		self.pageMotor:setGoal(instantDefault)
	end

	if lastPage ~= currentPage then

		local currentPageIsModal = Pages.pagesByKey[currentPage].isModal
		local lastPageWasModal = Pages.pagesByKey[lastPage].isModal
		if currentPageIsModal or lastPageWasModal then return end

		local sameNavigationDepth = Pages.pagesByKey[lastPage].navigationDepth == Pages.pagesByKey[currentPage].navigationDepth;
		if Pages.pagesByKey[lastPage].navigationDepth < Pages.pagesByKey[currentPage].navigationDepth then
				-- nav down
				if not currentPageIsModal then
					self.pageMotor:setGoal({
						[lastPage] = Otter.spring(animateRightGoal, {frequency = 2.5}),
					})
				end
		elseif sameNavigationDepth then
			-- this is added temporarily to fix crash that caused by nav from invite friends to players in "Make Friends"
			self.pageMotor:setGoal({
				[lastPage] = Otter.instant(animateLeftGoal, {frequency = 2.5}),
			})
		else
			-- nav up/ nav to top
			-- To accomodate Navigate to Top, containter needs to move all used pages over. Therefore if current page and last page are not
			-- parent-child pages, it will move all parent pages of lastPage until it reaches currentPage
			local pagesToSlideRight = {}
			local pageOnNavPath = lastPage
			while pageOnNavPath ~= nil and pageOnNavPath ~= currentPage do
				pagesToSlideRight[pageOnNavPath] = Otter.spring(animateLeftGoal, {frequency = 3.5})
				pageOnNavPath = Pages.pagesByKey[pageOnNavPath].parentPage
			end
			self.pageMotor:setGoal(pagesToSlideRight)
		end

		self.pageMotor:setGoal({
			[currentPage] = sameNavigationDepth and Otter.instant(1, {frequency = 2.5}) or Otter.spring(1, {frequency = 2.5})
		})
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
