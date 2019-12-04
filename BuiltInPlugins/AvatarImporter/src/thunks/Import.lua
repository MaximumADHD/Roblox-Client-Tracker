local root = script.Parent.Parent.Parent

local Globals = require(root.src.Globals)

local Constants = require(root.src.Constants)

local SetScreen = require(root.src.actions.SetScreen)
local SetError = require(root.src.actions.SetError)
local ClosePlugin = require(root.src.actions.ClosePlugin)

local getLinesFromStr = require(root.src.utils.getLinesFromStr)
local setupImportedAvatar = require(root.src.utils.setupImportedAvatar)

local ERROR_START_INDEX = 3

return function(avatarType)
	local isR15 = avatarType ~= Constants.AVATAR_TYPE.CUSTOM

	return function(store)

		store:dispatch(SetScreen(Constants.SCREENS.LOADING))

		local success, avatarOrError = pcall(function()
			return Globals.plugin:ImportFbxRig(isR15)
		end)

		if success then
			setupImportedAvatar(avatarOrError, avatarType)
			store:dispatch(ClosePlugin(true))
		elseif avatarOrError == Constants.ERROR_NO_FILE then
			store:dispatch(SetScreen(Constants.SCREENS.AVATAR))
		else
			local fileName = "<filename>"
			local requirements = avatarOrError
			local errors = getLinesFromStr(avatarOrError)
			if errors[1] == "FBX Import Error(s):" and #errors >= ERROR_START_INDEX then
				fileName = errors[ERROR_START_INDEX - 1]
				for i = ERROR_START_INDEX, #errors do
					errors[i] = "- " .. errors[i]
				end
				requirements = table.concat(errors, "\n", ERROR_START_INDEX)
			end
			store:dispatch(SetError(fileName, requirements))
			store:dispatch(SetScreen(Constants.SCREENS.ERROR))
		end
	end
end