local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local Otter = InGameMenuDependencies.Otter
local t = InGameMenuDependencies.t

local InGameMenu = script.Parent.Parent

local BlurredModalPortal = require(script.Parent.BlurredModalPortal)
local Pages = require(script.Parent.Pages)

local FFlagFixMakeFriendsNavCrash = require(InGameMenu.Flags.FFlagFixMakeFriendsNavCrash)

local FFlagFixInGameNavTreeCrash = require(InGameMenu.Flags.FFlagFixInGameNavTreeCrash)

local pageComponents = {}
for key, pageInfo in pairs(Pages.pagesByKey) do
	pageComponents[key] = require(pageInfo.component)
end

local withLocalization = require(InGameMenu.Localization.withLocalization)

local PageContainer = Roact.PureComponent:extend("PageContainer")
PageContainer.validateProps = t.strictInterface({
	currentPage = t.string,
	visible = t.boolean,
})

function PageContainer:init(props)

	local pageBindings, pageBindingUpdaters, motorDefaults = {}, {}, {}
	self.pagePositions = {}
	for key, _ in pairs(Pages.pagesByKey) do
		local defaultValue = props.currentPage == key and 1 or 0
		pageBindings[key], pageBindingUpdaters[key] = Roact.createBinding(defaultValue)
		motorDefaults[key] = defaultValue

		self.pagePositions[key] = pageBindings[key]:map(function(value)
			return UDim2.new(1 - value, 0, 0, 0)
		end)
	end

	self.pageMotor = Otter.createGroupMotor(motorDefaults)
	self.pageMotor:onStep(function(values)
		for key, newValue in pairs(values) do
			pageBindingUpdaters[key](newValue)
		end
	end)
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
					Position = self.pagePositions[key],
					BackgroundTransparency = 1,
					ZIndex = pageInfo.navigationDepth,
				},{
					Page = Roact.createElement(pageComponents[key], {
						pageTitle = pageInfo.title and localized.title,
					}),
				})
			else
				return Roact.createElement(BlurredModalPortal, {
					Enabled = self.props.currentPage == key,
				}, {
					ModalPageContent = Roact.createElement(pageComponents[key], {
						pageTitle = localized.title,
					}),
				})
			end
		end)
	end

	return Roact.createElement("Frame", {
		Size = UDim2.new(0, 400, 1, 0),
		Position = UDim2.new(0, 64, 0, 0),
		BackgroundTransparency = 1,
		Visible = self.props.visible,
		ClipsDescendants = true,
	}, pageElements)
end

function PageContainer:didUpdate(oldProps, oldState)
	local lastPage = oldProps.currentPage
	local currentPage = self.props.currentPage

	if lastPage ~= currentPage then

		local currentPageIsModal = Pages.pagesByKey[currentPage].isModal
		local lastPageWasModal = Pages.pagesByKey[lastPage].isModal
		if currentPageIsModal or lastPageWasModal then return end

		if Pages.pagesByKey[lastPage].navigationDepth < Pages.pagesByKey[currentPage].navigationDepth then

			-- nav down
			if not currentPageIsModal then
				self.pageMotor:setGoal({
					[lastPage] = Otter.spring(1.25, {frequency = 2.5}),
				})
			end

		elseif FFlagFixMakeFriendsNavCrash and Pages.pagesByKey[lastPage].navigationDepth == Pages.pagesByKey[currentPage].navigationDepth then
			-- this is added temporarily to fix crash that caused by nav from invite friends to players in "Make Friends"
			self.pageMotor:setGoal({
				[lastPage] = Otter.spring(0, {frequency = 2.5}),
			})
		else

			-- nav up/ nav to top
			-- To accomodate Navigate to Top, containter needs to move all used pages over. Therefore if current page and last page are not
			-- parent-child pages, it will move all parent pages of lastPage until it reaches currentPage
			local pagesToSlideRight = {}
			local pageOnNavPath = lastPage
			if FFlagFixInGameNavTreeCrash then
				while pageOnNavPath ~= nil and pageOnNavPath ~= currentPage do
					pagesToSlideRight[pageOnNavPath] = Otter.spring(0, {frequency = 3.5})
					pageOnNavPath = Pages.pagesByKey[pageOnNavPath].parentPage
				end
			else
				while pageOnNavPath ~= currentPage do
					pagesToSlideRight[pageOnNavPath] = Otter.spring(0, {frequency = 3.5})
					pageOnNavPath = Pages.pagesByKey[pageOnNavPath].parentPage
				end
			end

			self.pageMotor:setGoal(pagesToSlideRight)
		end

		self.pageMotor:setGoal({
			[currentPage] = Otter.spring(1, {frequency = 2.5})
		})
	end
end

return RoactRodux.UNSTABLE_connect2(function(state)
	return {
		currentPage = state.menuPage,
		visible = state.isMenuOpen,
	}
end)(PageContainer)
