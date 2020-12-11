local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local Promise = require(Plugin.Promise)

local BlockingDialog = require(Plugin.SrcDeprecated.Components.BlockingDialog.BlockingDialog)

local function showBlockingDialog(plugin, children)
	local promise = Promise.new(function(resolve)
		spawn(function()
			local handle = nil
			local function closeDialog()
				if handle then
					Roact.unmount(handle)
					resolve()
				end
			end

			local dialog = Roact.createElement(BlockingDialog, {
				plugin = plugin,
				OnButtonClicked = closeDialog,
				OnClose = closeDialog,
			}, children)
			handle = Roact.mount(dialog)
		end)
	end)
	return promise:await()
end

return showBlockingDialog