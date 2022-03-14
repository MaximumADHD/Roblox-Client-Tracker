local CorePackages = game:GetService("CorePackages")
local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Cryo = InGameMenuDependencies.Cryo
local InGameMenu = script.Parent.Parent
local Pages = require(InGameMenu.Components.Pages)
local NavigateBack = require(InGameMenu.Actions.NavigateBack)
local SetCurrentPage = require(InGameMenu.Actions.SetCurrentPage)

-- Handle most of global buttons navigation here
-- Unless it needs side effects, handled in bindMenuActions or similar thunks

return function (state, action)
	local page = Pages.pagesByKey[state.menuPage]

	if action.type == NavigateBack.name then
		if state.respawn.dialogOpen then -- Close the respawn dialog if open
			return Cryo.Dictionary.join(state, {
				respawn = Cryo.Dictionary.join(state.respawn, {
					dialogOpen = false
				})
			})
		elseif state.report.dialogOpen then -- Close the report dialog if open
			return Cryo.Dictionary.join(state, {
				report = Cryo.Dictionary.join(state.report, {
					dialogOpen = false
				})
			})
		elseif state.menuPage then
			-- If you are in a child page, go to its parent
			local parentPage = page.parentPage
			if parentPage ~= nil then
				return Cryo.Dictionary.join(state, {
					menuPage = parentPage
				})
			end
		end
	elseif action.type == SetCurrentPage.name then
		return Cryo.Dictionary.join(state, {
			currentlyOpenBubble = Cryo.None,
		})
	end

	return state
end
