--[[
	CLILUACORE-310: Retrieve these values via native platform code,
	like we do with Xbox, or from some reasonable endpoint
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
		}
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
		}
	}
}

return NativeProducts