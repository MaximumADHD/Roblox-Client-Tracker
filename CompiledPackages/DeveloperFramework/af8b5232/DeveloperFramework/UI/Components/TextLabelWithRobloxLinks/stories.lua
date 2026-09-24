local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)

return function()
	local TextLabelWithRobloxLinks = require(script.Parent)

	return {
		Basic = Roact.createElement(TextLabelWithRobloxLinks, {
			AutomaticSize = Enum.AutomaticSize.Y,
			Size = UDim2.new(1, 0, 0, 0),
			Text = "Before https://www.roblox.com/users/1/profile After",
			TextWrapped = true,
		}),
		LongWrapping = Roact.createElement(TextLabelWithRobloxLinks, {
			AutomaticSize = Enum.AutomaticSize.Y,
			Size = UDim2.new(1, 0, 0, 0),
			Text = "I want to be the best there ever was To beat all the rest, yeah, that's my cause https://www.roblox.com/games/8211530112/UPDATE-1-Honk?gameSetTypeId=100000003&homePageSessionInfo=551e0c7d-ffe2-4fb4-ba56-009a4d625f64&isAd=false&numberOfLoadedTiles=6&page=homePage&placeId=8211530112&position=1&sortPos=0&universeId=3152539461 I will travel across the land, Searching far and wide, Teach Pokémon to understand, The power that's inside",
			TextWrapped = true,
		}),
		MixOfValidAndInvalidLinks = Roact.createElement(TextLabelWithRobloxLinks, {
			AutomaticSize = Enum.AutomaticSize.Y,
			Size = UDim2.new(1, 0, 0, 0),
			Text = "a valid link: https://create.roblox.com/profile/bro_i25?p=h&i=pi|pe ...no https will not work: roblox.com ...but add an https and it's good: https://roblox.com ...not a whitelisted subDomain: https://virus.roblox.com ...sneaky url might be broken but why was it being sneaky?: https://roblox.com.google/ok",
			TextWrapped = true,
		}),
		MultipleLinks = Roact.createElement(TextLabelWithRobloxLinks, {
			AutomaticSize = Enum.AutomaticSize.Y,
			Size = UDim2.new(1, 0, 0, 0),
			Text = "http://roblox.com/ or https://create.roblox.com",
			TextWrapped = true,
		}),
		InvalidLink = Roact.createElement(TextLabelWithRobloxLinks, {
			AutomaticSize = Enum.AutomaticSize.Y,
			Size = UDim2.new(1, 0, 0, 0),
			Text = "https://google.com/",
			TextWrapped = true,
		}),
	}
end
