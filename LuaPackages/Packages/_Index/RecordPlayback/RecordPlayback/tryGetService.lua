-- selene: allow(incorrect_standard_library_use)
export type FileSystemService = typeof(game:GetService("FileSystemService"))
-- selene: allow(incorrect_standard_library_use)
export type FileSyncService = typeof(game:GetService("FileSyncService"))

local function tryGetService(serviceName: string)
	local success, result = pcall(function()
		return game:GetService(serviceName)
	end)

	return if success then result else nil
end

return tryGetService
