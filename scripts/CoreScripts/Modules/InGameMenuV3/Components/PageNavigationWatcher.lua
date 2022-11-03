--!nonstrict

--[[

	Invokes a specified callback when a page has focus.

]]

local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)
local useSelector = require(CorePackages.Workspace.Packages.RoactUtils).Hooks.RoactRodux.useSelector

local function menuOpenSelector(state)
	return state.isMenuOpen
end

local function currentPageSelector(state)
	return state.menuPage
end

return function(props)
	local menuOpen = useSelector(menuOpenSelector)
	local currentPage = useSelector(currentPageSelector)

	-- "usePrevious" but with non-nil starting value
	local lastMenuOpen = React.useRef(menuOpen)
	local lastPage = React.useRef(currentPage)

	React.useEffect(function()
		if props.onNavigate then
			props.onNavigate(menuOpen, lastMenuOpen.current, currentPage, lastPage.current)
		end
		if currentPage == props.desiredPage and menuOpen and props.onNavigateTo ~= nil then
			props.onNavigateTo()
		elseif ((lastPage.current == props.desiredPage and lastMenuOpen.current) or (lastMenuOpen.current and not menuOpen)) and props.onNavigateAway ~= nil then
			props.onNavigateAway()
		end

		lastPage.current = currentPage
		lastMenuOpen.current = menuOpen
	end, {menuOpen, currentPage})

	return React.createElement(React.Fragment, nil, props.children)
end
