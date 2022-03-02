return function()
	local main = script.Parent.Parent.Parent

	local DebugFlags = require(main.Src.Utility.DebugFlags)
	if DebugFlags.RunningUnderCLI() then
		return false
	end

	local getFFlagEnableAssetImporter = require(main.Src.Flags.getFFlagEnableAssetImporter)
	if not getFFlagEnableAssetImporter() then
		return false
	end

	return true
end
