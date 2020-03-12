local InGameMenu = script.Parent.Parent
local SetCurrentPage = require(InGameMenu.Actions.SetCurrentPage)
local Pages = require(InGameMenu.Components.Pages)

return function(store)
	local state = store:getState()
	store:dispatch(SetCurrentPage(Pages.pagesByKey[state.menuPage].parentPage))
end