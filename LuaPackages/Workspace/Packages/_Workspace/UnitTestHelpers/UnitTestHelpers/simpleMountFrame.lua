local HttpService = game:GetService("HttpService")

local Root = script.Parent
local Packages = Root.Parent

local UIBlox = require(Packages.UIBlox)
local Roact = require(Packages.Roact)

local DarkTheme = require(Packages.Style).Themes.DarkTheme
local Gotham = require(Packages.Style).Fonts.Gotham

local function mockStyle(element)
	return Roact.createElement(UIBlox.Style.Provider, {
		style = {
			Theme = DarkTheme,
			Font = Gotham,
		},
	}, {
		TestElement = element,
	})
end

return function(element)
	local parent = Instance.new("Frame")
	parent.Name = HttpService:GenerateGUID(false)

	local tree = mockStyle(element)
	local handle = Roact.mount(tree, parent)
	return parent, function()
		Roact.unmount(handle)
		parent:Destroy()
	end
end
