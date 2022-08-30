local CorePackages = game:GetService("CorePackages")
local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux

local InGameMenu = script.Parent.Parent.Parent
local Constants = require(InGameMenu.Resources.Constants)
local PageNavigationWatcher = require(InGameMenu.Components.PageNavigationWatcher)
--local React = require(CorePackages.Packages.React)

local ScrollDownState = Roact.PureComponent:extend("ScrollDownState")
function ScrollDownState:init()
	self.priorScrollPosition = 0

	self.onScroll = function(rbx)
		if rbx and rbx.CanvasPosition and rbx.MaxCanvasPosition then
			local scrollPosition = math.min(math.max(0, rbx.CanvasPosition.Y), rbx.MaxCanvasPosition.Y)
			if math.abs(self.priorScrollPosition - scrollPosition) > 5 then
				local scrollingDown = scrollPosition > self.priorScrollPosition
				self.priorScrollPosition = scrollPosition
				if scrollingDown ~= self.state.scrollingDown then
					self:setState({
						scrollingDown = scrollingDown,
					})
				end
			end
		end
	end

	self.menuOpenChanged = function(menuOpen, wasOpen)
		if
			not menuOpen
			and wasOpen
			and self.state.scrollingDown == true
		then
			self:setState({
				scrollingDown = false,
			})
		end
	end

	self:setState({
		scrollingDown = false,
	})
end

function ScrollDownState:render()
	return Roact.createFragment({
		Watcher = Roact.createElement(PageNavigationWatcher, {
			desiredPage = "",
			onNavigate = self.menuOpenChanged,
		}),
		Child = self.props.render(self.onScroll, self.state.scrollingDown or self.props.showingLeavePage)
	})
end

ScrollDownState = RoactRodux.connect(function(state)
	return {
		showingLeavePage = state.menuPage == Constants.LeaveGamePromptPageKey
			or state.menuPage == Constants.LeaveToAppPromptPageKey,
	}
end)(ScrollDownState)

local utils = {
	withScrollDownState = function(render)
		return Roact.createElement(ScrollDownState, {
			render = render,
		})
	end,
}

return utils
