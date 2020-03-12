local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local Otter = InGameMenuDependencies.Otter
local t = InGameMenuDependencies.t

local InGameMenu = script.Parent.Parent

local BlurredModalPortal = require(script.Parent.BlurredModalPortal)
local Pages = require(script.Parent.Pages)
local pageComponents = {}
for key, pageInfo in pairs(Pages.pagesByKey) do
	pageComponents[key] = require(pageInfo.component)
end

local withLocalization = require(InGameMenu.Localization.withLocalization)

local ANIMATE_OUT_DELAY_THRESHOLD = 0.05
local SPRING_PARAMETERS = {
	frequency = 2.5,
}

local PageContainer = Roact.PureComponent:extend("PageContainer")
PageContainer.validateProps = t.strictInterface({
	currentPage = t.string,
	visible = t.boolean,
})

function PageContainer:init(props)
	self:setState({
		lastPage = nil,
	})

	local pageBindings, pageBindingUpdaters, motorDefaults = {}, {}, {}
	self.pagePositions = {}
	for key, _ in pairs(Pages.pagesByKey) do
		local defaultValue = props.currentPage == key and 1 or 0
		pageBindings[key], pageBindingUpdaters[key] = Roact.createBinding(defaultValue)
		motorDefaults[key] = defaultValue

		self.pagePositions[key] = pageBindings[key]:map(function(value)
			return UDim2.new(value - 1, 0, 0, 0)
		end)
	end

	self.pageProgresses = pageBindings
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
					ZIndex = key == self.props.currentPage and 2 or 1,
				}, {
					Page = Roact.createElement(pageComponents[key], {
						pageTitle = localized.title,
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
		Position = UDim2.new(0, 500, 0, 0),
		BackgroundTransparency = 1,
		Visible = self.props.visible,
	}, pageElements)
end

function PageContainer:didUpdate(oldProps, oldState)
	local lastPage = oldProps.currentPage
	local currentPage = self.props.currentPage

	if lastPage ~= currentPage then
		self:setState({
			lastPage = lastPage,
		})

		self.pageMotor:setGoal({
			[lastPage] = Otter.spring(0, SPRING_PARAMETERS),
		})

		local lastPageWasModal = Pages.pagesByKey[lastPage].isModal
		local currentPageIsModal = Pages.pagesByKey[currentPage].isModal

		if lastPageWasModal or currentPageIsModal then
			self.pageMotor:setGoal({
				[currentPage] = Otter.spring(1, SPRING_PARAMETERS)
			})
		else
			local timestamp = tick()
			local disconnect

			self.currentMotorTimestamp = timestamp
			disconnect = self.pageMotor:onStep(function(values)
				if values[lastPage] < ANIMATE_OUT_DELAY_THRESHOLD then
					disconnect()
					if self.state.lastPage == lastPage
						and self.props.currentPage == currentPage
						and self.currentMotorTimestamp == timestamp then

						self.pageMotor:setGoal({
							[currentPage] = Otter.spring(1, SPRING_PARAMETERS),
						})
					end
				end
			end)
		end
	end
end

return RoactRodux.UNSTABLE_connect2(function(state)
	return {
		currentPage = state.menuPage,
		visible = state.isMenuOpen,
	}
end)(PageContainer)