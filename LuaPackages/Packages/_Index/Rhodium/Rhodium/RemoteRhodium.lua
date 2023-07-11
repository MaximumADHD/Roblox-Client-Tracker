--!strict
local HttpService = game:GetService("HttpService")

local rootPath: Instance

local RemoteRhodium = {}

local function onCommand(command: string)
	local op = command:find("(", 1, true)
	local cp = command:reverse():find(")", 1, true)
	if cp ~= nil then
		cp = #command - cp + 1
	end

	local args = {}
	if op then
		assert(cp, 'invalid syntex, expecting ")"')
		local argStr = command:sub(op + 1, cp - 1)
		if #argStr > 0 then
			args = HttpService:JSONDecode("[" .. argStr .. "]")
		end
		command = command:sub(1, op - 1)
	end

	local subPathTab = command:split(".")

	local instance = rootPath
	for i = 1, #subPathTab do
		local part = subPathTab[i]
		instance = instance:FindFirstChild(part) :: Instance

		assert(instance, "can not find " .. part)

		if instance and instance:IsA("ModuleScript") then
			-- Typecasting to `any` to suppress "Unknown require: unsupported path"
			local module = require(instance) :: (...any) -> ...any

			assert(typeof(module) == "function", "target is not a function")

			return module(unpack(args))
		end
	end

	return nil
end

function RemoteRhodium.setCommandPath(path: Instance)
	rootPath = path
end

local success, RhodiumService = pcall(function()
	-- luau linting is not aware of RhodiumService
	-- selene: allow(incorrect_standard_library_use)
	return game:GetService("RhodiumService" :: any)
end)

if success then
	(RhodiumService :: any).onCommand = onCommand
end

return RemoteRhodium
