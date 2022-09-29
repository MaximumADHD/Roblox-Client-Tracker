--!strict
local Plugin = script:FindFirstAncestor("Toolbox")
local Util = Plugin.Core.Util
local Constants = require(Util.Constants)
local Category = require(Plugin.Core.Types.Category)

local columns = Constants.AUDIO_ROW.COLUMNS
local ICON_COLUMN_WIDTH = Constants.AUDIO_ROW.ICON_SIZE + (Constants.AUDIO_ROW.LEFT_RIGHT_PADDING * 2)
local DURATION_WIDTH = 50

local TINY_BREAKPOINT = 300
local SMALL_BREAKPOINT = 375

return function(audioType: string?, width: number)
	local isSoundEffectType = audioType == Category.SOUND_EFFECTS.name
	local isMusicType = audioType == Category.MUSIC.name
	local isUncategorized = not isMusicType and not isSoundEffectType

	local sizes = {
		[columns.ICON] = UDim2.new(0, ICON_COLUMN_WIDTH, 1, 0),
		[columns.NAME] = if isUncategorized
			then UDim2.new(1, -ICON_COLUMN_WIDTH - DURATION_WIDTH, 1, 0)
			else UDim2.new(0.6, -ICON_COLUMN_WIDTH - DURATION_WIDTH, 1, 0),
		[columns.CATEGORY] = UDim2.new(0.4, 0, 1, 0),
		[columns.GENRE] = UDim2.new(0.2, 0, 1, 0),
		[columns.ARTIST] = UDim2.new(0.2, 0, 1, 0),
		[columns.DURATION] = UDim2.new(0, DURATION_WIDTH, 1, 0),
	}

	if width < SMALL_BREAKPOINT then
		sizes[columns.ARTIST] = nil
		if isMusicType then
			sizes[columns.NAME] = UDim2.new(0.8, -ICON_COLUMN_WIDTH - DURATION_WIDTH, 1, 0)
		end
	end

	if width < TINY_BREAKPOINT then
		sizes[columns.CATEGORY] = nil
		sizes[columns.GENRE] = nil
		sizes[columns.NAME] = UDim2.new(1, -ICON_COLUMN_WIDTH - DURATION_WIDTH, 1, 0)
	end

	return sizes
end
