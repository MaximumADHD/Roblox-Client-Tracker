--[[
	Embed storybook in the current place
]]

local Main = script.Parent.Parent.Parent
local ToggleEmbedded = require(Main.Src.Actions.ToggleEmbedded)

local installStorybookEmbed = require(Main.Src.Util.installStorybookEmbed)
local demoteScripts = require(Main.Src.Util.demoteScripts)
local StarterGui = game:GetService("StarterGui")

return function()
	return function(store)
		local state = store:getState()
		if state.Stories.embedded then
			local run = game.Workspace:FindFirstChild("RunStorybook")
			if run then
				run:Destroy()
			end

			local splash = StarterGui:FindFirstChild("StorybookSplash")
			if splash then
				splash:Destroy()
			end
		else
			local root = installStorybookEmbed(game.Workspace)
			demoteScripts(root)
		end
		store:dispatch(ToggleEmbedded())
	end
end
