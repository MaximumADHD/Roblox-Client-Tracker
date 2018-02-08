local Modules = game:GetService("CoreGui"):FindFirstChild("RobloxGui").Modules

local AppState = require(Modules.LuaApp.Legacy.AvatarEditor.AppState)

local Strings = require(Modules.LuaApp.Legacy.AvatarEditor.LocalizedStrings)
local Utilities = require(Modules.LuaApp.Legacy.AvatarEditor.Utilities)
local Urls = require(Modules.LuaApp.Legacy.AvatarEditor.Urls)

local SetAvatarHeight = require(Modules.LuaApp.Actions.SetAvatarHeight)
local SetAvatarWidth = require(Modules.LuaApp.Actions.SetAvatarWidth)
local SetAvatarHeadSize = require(Modules.LuaApp.Actions.SetAvatarHeadSize)
local SetAvatarBodyType = require(Modules.LuaApp.Actions.SetAvatarBodyType)
local SetAvatarProportion = require(Modules.LuaApp.Actions.SetAvatarProportion)

local Flags = require(Modules.LuaApp.Legacy.AvatarEditor.Flags)
local AvatarEditorAnthroSliders =
	Flags:GetFlag("AvatarEditorAnthroSlidersUIOnly") and
	Flags:GetFlag("AvatarEditorUseNewCommonAction")


local SKIN_COLORS = {
	'Dark taupe','Brown','Linen','Nougat','Light orange',
	'Dirt brown','Reddish brown','Cork','Burlap','Brick yellow',
	'Sand red','Dusty Rose','Medium red','Pastel orange','Carnation pink',
	'Sand blue','Steel blue','Pastel Blue','Pastel violet','Lilac',
	'Bright bluish green','Shamrock','Moss','Medium green','Br. yellowish orange',
	'Bright yellow','Daisy orange','Dark stone grey','Mid grey','Institutional white',
}


local function createPageManagerBase(characterManager)
	local this = {}
	local ScalesInfo = {
		{
			StoreName = "Height",
			WebPropertyName = "height",
			Title = Strings:LocalizedString("ScaleHeightTitle"),
			Min = 0.95,
			Max = 1.05,
			Default = 1,
			Increment = .01,
			SetScale = function(scale)
				AppState.Store:Dispatch( SetAvatarHeight(scale) )
			end,
		},
		{
			StoreName = "Width",
			WebPropertyName = "width",
			Title = Strings:LocalizedString("ScaleWidthTitle"),
			Min = 0.70,
			Max = 1.00,
			Default = 1.0,
			Increment = .01,
			SetScale = function(scale)
				AppState.Store:Dispatch( SetAvatarWidth(scale, 0.5 * scale + 0.5) )
			end,
		},
		{
			StoreName = "Head",
			WebPropertyName = "head",
			Title = Strings:LocalizedString("ScaleHeadTitle"),
			Min = 0.95,
			Max = 1.00,
			Default = 1,
			Increment = .01,
			SetScale = function(scale)
				AppState.Store:Dispatch( SetAvatarHeadSize(scale) )
			end,
		},
	}

	local AnthroEnabledScalesInfo = {
		{
			StoreName = "Height",
			WebPropertyName = "height",
			Title = Strings:LocalizedString("ScaleHeightTitle"),
			Min = 0.95,
			Max = 1.05,
			Default = 1,
			Increment = .01,
			SetScale = function(scale)
				AppState.Store:Dispatch( SetAvatarHeight(scale) )
			end,
		},
		{
			StoreName = "Width",
			WebPropertyName = "width",
			Title = Strings:LocalizedString("ScaleWidthTitle"),
			Min = 0.70,
			Max = 1.00,
			Default = 1.0,
			Increment = .01,
			SetScale = function(scale)
				AppState.Store:Dispatch( SetAvatarWidth(scale, 0.5 * scale + 0.5) )
			end,
		},
		{
			StoreName = "Head",
			WebPropertyName = "head",
			Title = Strings:LocalizedString("ScaleHeadTitle"),
			Min = 0.95,
			Max = 1.00,
			Default = 1,
			Increment = .01,
			SetScale = function(scale)
				AppState.Store:Dispatch( SetAvatarHeadSize(scale) )
			end,
		},
		{
			StoreName = "BodyType",
			WebPropertyName = "bodyType",
			Title = Strings:LocalizedString("ScaleBodyTypeTitle"),
			Min = 0.00,
			Max = 0.30,
			Default = 0.00,
			Increment = 0.01,
			SetScale = function(scale)
				AppState.Store:Dispatch( SetAvatarBodyType(scale) )
			end,
		},
		{
			StoreName = "Proportion",
			WebPropertyName = "proportion",
			Title = Strings:LocalizedString("ScaleProportionTitle"),
			Min = 0.00,
			Max = 1.00,
			Default = 0.0,
			Increment = 0.01,
			SetScale = function(scale)
				AppState.Store:Dispatch( SetAvatarProportion(scale) )
			end,
		}
	}

	local skinColorList = {}
	for i, v in pairs(SKIN_COLORS) do
		skinColorList[i] = BrickColor.new(v)
	end

	local function updateAvatarRules()
		local avatarRulesRequest = Utilities.httpGet(Urls.avatarUrlPrefix.."/v1/avatar-rules")
		avatarRulesRequest = Utilities.decodeJSON(avatarRulesRequest)
		if avatarRulesRequest then
			if AvatarEditorAnthroSliders and avatarRulesRequest['proportionsAndBodyTypeEnabledForUser'] then
				ScalesInfo = AnthroEnabledScalesInfo
			end

			local scaleRulesRequest = avatarRulesRequest['scales']
			if scaleRulesRequest then
				for _, info in pairs(ScalesInfo) do
					local rules = scaleRulesRequest[info.WebPropertyName]
					if rules then
						info.Min = rules['min'] or info.Min
						info.Max = rules['max'] or info.Max
						if rules['increment'] and rules['increment'] ~= 0 then
							info.Increment = rules['increment']
						end
					end
				end
			end

			local minDeltaEBodyColorDifference = avatarRulesRequest['minimumDeltaEBodyColorDifference']
			if minDeltaEBodyColorDifference then
				characterManager.setMinDeltaEBodyColorDifference(minDeltaEBodyColorDifference)
			end
		end
	end

	Utilities.fastSpawn(updateAvatarRules)

	function this:getScalesInfoCount()
		return #ScalesInfo
	end

	function this:getSkinColorList()
		return skinColorList
	end

	--Return bodyColor value if all parts are using the same color, otherwise return nil
	function this:getSameBodyColor()
		local bodyColors = AppState.Store:GetState().Character.BodyColors
		local bodyColor = nil
		for _, value in pairs(bodyColors) do
			if bodyColor == nil then
				bodyColor = value
			elseif bodyColor ~= value then
				return nil
			end
		end
		return bodyColor
	end

	function this:makeSlider(Slider, index, scrollingFrame)
		local info = ScalesInfo[index]
		local scales = AppState.Store:GetState().Character.Scales

		return Slider.renderSlider(
			info.StoreName,
			info.Title,
			function(_, value)
				info.SetScale( math.min(info.Max, math.max(info.Min, info.Min + value * info.Increment)) )
			end,
			(scales[info.StoreName] - info.Min) / (info.Max - info.Min),
			((info.Max - info.Min) / info.Increment) + 1,
			(info.Default - info.Min) / info.Increment,
			scrollingFrame
		)
	end

	return this
end

return createPageManagerBase
