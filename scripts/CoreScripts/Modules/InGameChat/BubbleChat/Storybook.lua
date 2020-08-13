local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Packages.Roact)

Roact.setGlobalConfig({
	elementTracing = true,
	propValidation = true,
})

return {
    name = "Chat",
    storyRoot = script.Parent,
}
