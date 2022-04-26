return {
	Gray_Lightest = Color3.fromRGB(244, 244, 244),	--#f4f4f4
	Gray_Lighter = Color3.fromRGB(234, 234, 234),	--#eaeaea
	Gray_Light = Color3.fromRGB(204, 204, 204),		--#cccccc
	Gray_Mid = Color3.fromRGB(107, 107, 107),		--#6b6b6b
	Gray = Color3.fromRGB(60, 60, 60),				--#3c3c3c
	Slate = Color3.fromRGB(46, 46, 46),				--#2e2e2e
	Carbon = Color3.fromRGB(34, 34, 34),			--#222222
	Blue = Color3.fromRGB(0, 162, 255),				--#00a2ff
	Blue_Dark = Color3.fromRGB(0, 117, 189),		--#0075bd
	Blue_Light = Color3.fromRGB(53, 181, 255),		--#35b5ff

	Red = Color3.fromRGB(255, 0, 0),				--#ff0000
	White = Color3.fromRGB(255, 255, 255),			--#ffffff
	Black = Color3.fromRGB(0, 0, 0),				--#000000

	-- TODO: DEVTOOLS-4869 - If we add lighter/darker functions to Color3, then refactor this to use that.
	lighter = function(color3, alpha)
		return color3:lerp(Color3.new(1, 1, 1), alpha)
	end,

	darker = function(color3, alpha)
		return color3:lerp(Color3.new(0, 0, 0), alpha)
	end,
}