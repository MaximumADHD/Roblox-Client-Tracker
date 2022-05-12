local root = script.Parent.Parent.Parent
local FFlagAvatarImporterDeduplicatePackages = game:GetFastFlag("AvatarImporterDeduplicatePackages")

local Roact = if FFlagAvatarImporterDeduplicatePackages then require(root.Packages.Roact) else require(root.Packages._Old.lib.Roact)
local RoactRodux = if FFlagAvatarImporterDeduplicatePackages then require(root.Packages.RoactRodux) else require(root.Packages._Old.lib.RoactRodux)

local function MockWrapper(props)
	local store = props.store
	return Roact.createElement(RoactRodux.StoreProvider, {
		store = store
	}, props[Roact.Children])
end

return MockWrapper
