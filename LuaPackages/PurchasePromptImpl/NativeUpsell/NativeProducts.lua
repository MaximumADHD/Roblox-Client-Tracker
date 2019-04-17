--[[
	New products (Premium):

	Product naming conventions:
		All prefixed with "com.roblox.robloxmobile"
		iOS: PascalCase product name
		Android, Amazon, UWP: all lowercase product name

	Old products (Builders Club). Separated into iOS and everything else:

	Product naming conventions:
		iOS: prefixed with "com.roblox.robloxmobile", PascalCase product name
		Android, Amazon, UWP: prefixed with "com.roblox.client", all lowercase product name

	CLILUACORE-310: Ideally we would retrieve these values via native platform code,
	like we do with Xbox, or from some reasonable endpoint. As it's implemented now,
	we need to make client changes in order to introduce new products
]]
local NativeProducts = {
	IOS = {
		BC = {
			{
				robuxValue = 90,
				productId = "com.roblox.robloxmobile.90RobuxBC"
			}, {
				robuxValue = 180,
				productId = "com.roblox.robloxmobile.180RobuxBC",
			}, {
				robuxValue = 270,
				productId = "com.roblox.robloxmobile.270RobuxBC",
			}, {
				robuxValue = 360,
				productId = "com.roblox.robloxmobile.360RobuxBC",
			}, {
				robuxValue = 450,
				productId = "com.roblox.robloxmobile.450RobuxBC",
			}, {
				robuxValue = 1000,
				productId = "com.roblox.robloxmobile.1000RobuxBC",
			}, {
				robuxValue = 2750,
				productId = "com.roblox.robloxmobile.2750RobuxBC",
			},
		},
		NonBC = {
			{
				robuxValue = 80,
				productId = "com.roblox.robloxmobile.80RobuxNonBC",
			}, {
				robuxValue = 160,
				productId = "com.roblox.robloxmobile.160RobuxNonBC",
			}, {
				robuxValue = 240,
				productId = "com.roblox.robloxmobile.240RobuxNonBC",
			}, {
				robuxValue = 320,
				productId = "com.roblox.robloxmobile.320RobuxNonBC",
			}, {
				robuxValue = 400,
				productId = "com.roblox.robloxmobile.400RobuxNonBC",
			}, {
				robuxValue = 800,
				productId = "com.roblox.robloxmobile.800RobuxNonBC",
			}, {
				robuxValue = 2000,
				productId = "com.roblox.robloxmobile.2000RobuxNonBC",
			},
		},
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
		BC = {
			{
				robuxValue = 90,
				productId = "com.roblox.client.robux90bc",
			}, {
				robuxValue = 180,
				productId = "com.roblox.client.robux180bc",
			}, {
				robuxValue = 270,
				productId = "com.roblox.client.robux270bc",
			}, {
				robuxValue = 360,
				productId = "com.roblox.client.robux360bc",
			}, {
				robuxValue = 450,
				productId = "com.roblox.client.robux450bc",
			}, {
				robuxValue = 1000,
				productId = "com.roblox.client.robux1000bc",
			}, {
				robuxValue = 2750,
				productId = "com.roblox.client.robux2750bc",
			},
		},
		NonBC = {
			{
				robuxValue = 80,
				productId = "com.roblox.client.robux80",
			}, {
				robuxValue = 160,
				productId = "com.roblox.client.robux160",
			}, {
				robuxValue = 240,
				productId = "com.roblox.client.robux240",
			}, {
				robuxValue = 320,
				productId = "com.roblox.client.robux320",
			}, {
				robuxValue = 400,
				productId = "com.roblox.client.robux400",
			}, {
				robuxValue = 800,
				productId = "com.roblox.client.robux800",
			}, {
				robuxValue = 2000,
				productId = "com.roblox.client.robux2000",
			},
		},
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
	}
}

return NativeProducts