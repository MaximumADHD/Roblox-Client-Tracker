--[[
	New products (Premium):

	Product naming conventions:
		All prefixed with "com.roblox.robloxmobile"
		iOS: PascalCase product name
		Android, Amazon, UWP: all lowercase product name

	Product naming conventions:
		iOS: prefixed with "com.roblox.robloxmobile", PascalCase product name
		Android, Amazon, UWP: prefixed with "com.roblox.client", all lowercase product name

	CLILUACORE-310: Ideally we would retrieve these values via native platform code,
	like we do with Xbox, or from some reasonable endpoint. As it's implemented now,
	we need to make client changes in order to introduce new products
]]

local NativeProducts = {
	IOS = {
		PremiumSubscribed = {
			{
				robuxValue = 88,
				productId = "com.roblox.robloxmobile.Premium88Subscribed",
			}, {
				robuxValue = 175,
				productId = "com.roblox.robloxmobile.Premium175Subscribed",
			}, {
				robuxValue = 265,
				productId = "com.roblox.robloxmobile.Premium265Subscribed",
			}, {
				robuxValue = 350,
				productId = "com.roblox.robloxmobile.Premium350Subscribed",
			}, {
				robuxValue = 440,
				productId = "com.roblox.robloxmobile.Premium440Subscribed2",
			}, {
				robuxValue = 880,
				productId = "com.roblox.robloxmobile.Premium880Subscribed",
			}, {
				robuxValue = 1870,
				productId = "com.roblox.robloxmobile.Premium1870Subscribed",
			},
		},
		PremiumNotSubscribed = {
			{
				robuxValue = 80,
				productId = "com.roblox.robloxmobile.Premium80Robux",
			}, {
				robuxValue = 160,
				productId = "com.roblox.robloxmobile.Premium160Robux",
			}, {
				robuxValue = 240,
				productId = "com.roblox.robloxmobile.Premium240Robux",
			}, {
				robuxValue = 320,
				productId = "com.roblox.robloxmobile.Premium320Robux",
			}, {
				robuxValue = 400,
				productId = "com.roblox.robloxmobile.Premium400Robux",
			}, {
				robuxValue = 800,
				productId = "com.roblox.robloxmobile.Premium800Robux",
			}, {
				robuxValue = 1700,
				productId = "com.roblox.robloxmobile.Premium1700Robux",
			},
		},
	},
	Standard = {
		PremiumSubscribed = {
			{
				robuxValue = 88,
				productId = "com.roblox.robloxmobile.premium88subscribed",
			}, {
				robuxValue = 175,
				productId = "com.roblox.robloxmobile.premium175subscribed",
			}, {
				robuxValue = 265,
				productId = "com.roblox.robloxmobile.premium265subscribed",
			}, {
				robuxValue = 350,
				productId = "com.roblox.robloxmobile.premium350subscribed",
			}, {
				robuxValue = 440,
				productId = "com.roblox.robloxmobile.premium440subscribed2",
			}, {
				robuxValue = 880,
				productId = "com.roblox.robloxmobile.premium880subscribed",
			}, {
				robuxValue = 1870,
				productId = "com.roblox.robloxmobile.premium1870subscribed",
			}
		},
		PremiumSubscribedLarger = {
			{
				robuxValue = 88,
				productId = "com.roblox.robloxmobile.premium88subscribed",
			}, {
				robuxValue = 175,
				productId = "com.roblox.robloxmobile.premium175subscribed",
			}, {
				robuxValue = 265,
				productId = "com.roblox.robloxmobile.premium265subscribed",
			}, {
				robuxValue = 350,
				productId = "com.roblox.robloxmobile.premium350subscribed",
			}, {
				robuxValue = 440,
				productId = "com.roblox.robloxmobile.premium440subscribed2",
			}, {
				robuxValue = 880,
				productId = "com.roblox.robloxmobile.premium880subscribed",
			}, {
				robuxValue = 1870,
				productId = "com.roblox.robloxmobile.premium1870subscribed",
			}, {
				robuxValue = 4950,
				productId = "com.roblox.robloxmobile.premium4950subscribed",
			}, {
				robuxValue = 11000,
				productId = "com.roblox.robloxmobile.premium11000subscribed",
			},
		},
		PremiumNotSubscribed = {
			{
				robuxValue = 80,
				productId = "com.roblox.robloxmobile.premium80robux",
			}, {
				robuxValue = 160,
				productId = "com.roblox.robloxmobile.premium160robux",
			}, {
				robuxValue = 240,
				productId = "com.roblox.robloxmobile.premium240robux",
			}, {
				robuxValue = 320,
				productId = "com.roblox.robloxmobile.premium320robux",
			}, {
				robuxValue = 400,
				productId = "com.roblox.robloxmobile.premium400robux",
			}, {
				robuxValue = 800,
				productId = "com.roblox.robloxmobile.premium800robux",
			}, {
				robuxValue = 1700,
				productId = "com.roblox.robloxmobile.premium1700robux",
			},
		},
		PremiumNotSubscribedLarger = {
			{
				robuxValue = 80,
				productId = "com.roblox.robloxmobile.premium80robux",
			}, {
				robuxValue = 160,
				productId = "com.roblox.robloxmobile.premium160robux",
			}, {
				robuxValue = 240,
				productId = "com.roblox.robloxmobile.premium240robux",
			}, {
				robuxValue = 320,
				productId = "com.roblox.robloxmobile.premium320robux",
			}, {
				robuxValue = 400,
				productId = "com.roblox.robloxmobile.premium400robux",
			}, {
				robuxValue = 800,
				productId = "com.roblox.robloxmobile.premium800robux",
			}, {
				robuxValue = 1700,
				productId = "com.roblox.robloxmobile.premium1700robux",
			}, {
				robuxValue = 4500,
				productId = "com.roblox.robloxmobile.premium4500robux",
			}, {
				robuxValue = 10000,
				productId = "com.roblox.robloxmobile.premium10000robux",
			},
		},
	}
}

return NativeProducts