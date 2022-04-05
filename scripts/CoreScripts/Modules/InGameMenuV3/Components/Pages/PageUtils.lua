
local utils = {
	-- mixin functionality to track scroll frame scroll direction
	-- used by various panels of the menu that host a "Leave" button
	-- outputs state boolean "scrollingDown == true" if we last scrolled down, otherwise false
	initOnScrollDownState = function(componentIns)
		componentIns._priorScrollPosition = 0
		componentIns.onScroll = function(rbx)
			-- account for mobile scrolling spring that goes out of bounds
			local scrollPosition = math.min(math.max(0, rbx.CanvasPosition.Y), rbx.MaxCanvasPosition.Y)
			if componentIns._priorScrollPosition  ~= scrollPosition then
				local scrollingDown = scrollPosition > componentIns._priorScrollPosition
				componentIns._priorScrollPosition = scrollPosition
				if scrollingDown ~= componentIns.state.scrollingDown then
					componentIns:setState({
						scrollingDown = scrollingDown
					})
				end
			end
		end
	end
}

return utils
