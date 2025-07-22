--!strict

local nextUpTilesLoaded = false

return {
	setNextUpTilesLoaded = function(loaded: boolean)
		nextUpTilesLoaded = loaded
	end,

	getNextUpTilesLoaded = function(): boolean
		return nextUpTilesLoaded
	end,
}
