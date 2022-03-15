local Stories = script.Parent.Parent.Parent.Parent

local Packages = Stories.Parent.Parent
local Roact = require(Packages.Roact)

local App = Packages.UIBlox.App
local LogoTray = require(App.Button.LogoTray)
local IconSize = require(App.ImageSet.Enum.IconSize)
local Images = require(App.ImageSet.Images)

local LOGO_SIZE_DEFAULT = IconSize.Large
local LOGO_PADDING_DEFAULT = 12

local createLogoTrayWithIcons = function(itemList, itemSize, padding)
	return Roact.createElement(LogoTray, {
		itemList = itemList,
		itemSize = itemSize,
		padding = padding,
		layoutOrder = 1,
		handleItemClick = function(key)
			print("logo clicked: " .. key)
		end,
	})
end

return {
	name = "Logo Tray",
	summary = "A tray of logos rendered horizontally",
	controls = {
		itemSize = { LOGO_SIZE_DEFAULT, IconSize.Small, IconSize.Medium, IconSize.XLarge, IconSize.XXLarge },
		padding = { LOGO_PADDING_DEFAULT, 0, 16, 20, 24, 36, 48 },
	},
	stories = {
		{
			name = "Logo Tray - Local",
			summary = "Logo Tray with logos from local contentSource",
			story = function(props)
				return createLogoTrayWithIcons({
					{ key = "logo 1", logo = Images["icons/logo/block"] },
					{ key = "logo 2", logo = Images["icons/logo/studiologo_large"] },
					{ key = "logo 3", logo = Images["icons/logo/block"] },
				}, props.controls.itemSize, UDim.new(0, props.controls.padding))
			end,
		},
		{
			name = "Logo Tray - Asset(rbxasset)",
			summary = "Logo Tray with logos from rbxasset",
			story = function(props)
				return createLogoTrayWithIcons({
					{ key = "logo_twitter", logo = "rbxasset://textures/ui/LuaApp/ExternalSite/twitter.png" },
					{ key = "logo_facebook", logo = "rbxasset://textures/ui/LuaApp/ExternalSite/facebook.png" },
					{ key = "logo_discord", logo = "rbxasset://textures/ui/LuaApp/ExternalSite/discord.png" },
					{ key = "logo_youtube", logo = "rbxasset://textures/ui/LuaApp/ExternalSite/youtube.png" },
					{ key = "logo_amazon", logo = "rbxasset://textures/ui/LuaApp/ExternalSite/amazon.png" },
					{ key = "logo_guilded", logo = "rbxasset://textures/ui/LuaApp/ExternalSite/guilded.png" },
				}, props.controls.itemSize, UDim.new(0, props.controls.padding))
			end,
		},
		{
			name = "Logo Tray - Asset(rbxassetid)",
			summary = "Logo Tray with logos from rbxassetid",
			story = function(props)
				return createLogoTrayWithIcons({
					{ key = "4126499279", logo = "rbxassetid://4126499279" },
					{ key = "2610133241", logo = "rbxassetid://2610133241" },
				}, props.controls.itemSize, UDim.new(0, props.controls.padding))
			end,
		},
		{
			name = "Logo Tray - Network",
			summary = "Logo Tray with logos from network",
			story = function(props)
				return createLogoTrayWithIcons({
					{ key = "2583107839", logo = "http://www.roblox.com/asset/?id=2583107839" },
					{ key = "410689385", logo = "http://www.roblox.com/asset/?id=410689385" },
					{ key = "410690022", logo = "http://www.roblox.com/asset/?id=410690022" },
					{ key = "410689825", logo = "http://www.roblox.com/asset/?id=410689825" },
					{ key = "410689711", logo = "http://www.roblox.com/asset/?id=410689711" },
				}, props.controls.itemSize, UDim.new(0, props.controls.padding))
			end,
		},
	},
}
