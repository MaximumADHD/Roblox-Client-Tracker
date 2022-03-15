--[[

	Invokes a specified callback when a page has focus.

]]

local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local t = InGameMenuDependencies.t

local PageNavigationWatcher = Roact.PureComponent:extend("PageNavigationWatcher")
PageNavigationWatcher.validateProps = t.strictInterface({
	desiredPage = t.string,
	onNavigateTo = t.optional(t.callback),
	onNavigateAway = t.optional(t.callback),

	-- RoactRodux bound props
	currentPage = t.string,
	menuOpen = t.boolean,
})

function PageNavigationWatcher:init(props)
	self:setState({
		lastPage = props.currentPage,
		lastMenuOpen = props.menuOpen,
	})
end

function PageNavigationWatcher:render()
	return Roact.createFragment(self.props[Roact.Children])
end

function PageNavigationWatcher:didUpdate()
	local lastPage = self.state.lastPage
	local lastMenuOpen = self.state.lastMenuOpen
	local currentPage = self.props.currentPage
	local currentMenuOpen = self.props.menuOpen

	if lastPage ~= currentPage or lastMenuOpen ~= currentMenuOpen then
		self:setState({
			lastPage = currentPage,
			lastMenuOpen = currentMenuOpen,
		})

		if currentPage == self.props.desiredPage and currentMenuOpen and self.props.onNavigateTo ~= nil then
			self.props.onNavigateTo()
		elseif lastPage == self.props.desiredPage and lastMenuOpen and self.props.onNavigateAway ~= nil then
			self.props.onNavigateAway()
		elseif lastMenuOpen and not currentMenuOpen and self.props.onNavigateAway ~= nil then
			self.props.onNavigateAway()
		end
	end
end

return RoactRodux.UNSTABLE_connect2(function(state)
	return {
		currentPage = state.menuPage,
		menuOpen = state.isMenuOpen,
	}
end)(PageNavigationWatcher)