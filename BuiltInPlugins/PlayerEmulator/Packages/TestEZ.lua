-- TODO: jbousellam - Remove file with FFlagPlayerEmulatorDeduplicatePackages
local FFlagPlayerEmulatorDeduplicatePackages = game:GetFastFlag("PlayerEmulatorDeduplicatePackages")
if not FFlagPlayerEmulatorDeduplicatePackages then
	local PackageIndex = script.Parent._Old
	return require(PackageIndex["TestEZ-8df2367f907e-821c1e1c2a45"].packages["TestEZ"])
end
