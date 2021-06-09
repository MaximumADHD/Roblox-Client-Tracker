local root = script.Parent.Parent.Parent

local ImportWithoutSceneLoad = require(root.src.thunks.ImportWithoutSceneLoad)

local Constants = require(root.src.Constants)
local getLinesFromStr = require(root.src.utils.getLinesFromStr)

local SetScreen = require(root.src.actions.SetScreen)
local SetError = require(root.src.actions.SetError)
local SetOriginalAvatarType = require(root.src.actions.SetOriginalAvatarType)
local ERROR_START_INDEX = 3


return function(origAvatarType)
	return function(store)
		store:dispatch(SetScreen(Constants.SCREENS.LOADING))
		store:dispatch(SetOriginalAvatarType(origAvatarType))

		local isOriginalR15 = origAvatarType ~= Constants.AVATAR_TYPE.CUSTOM

		local function redirectRig(isR15) 
			if not isOriginalR15 and isR15 then
				store:dispatch(SetScreen(Constants.SCREENS.REDIRECT_RIG))
			elseif isOriginalR15 and not isR15 then
				store:dispatch(SetScreen(Constants.SCREENS.REDIRECT_RIG))
			else
				store:dispatch(ImportWithoutSceneLoad(origAvatarType))
			end
		end

		local _, error = pcall(function()
			return game:GetService("AvatarImportService"):LoadRigAndDetectType(redirectRig)
		end)

		if error then 
			local fileName = "<filename>"
			local requirements = error
			local errors = getLinesFromStr(error)
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