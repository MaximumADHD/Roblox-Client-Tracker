--[[
	Progress bar for currently playing audio

	Required Props
		number assetId: used to mark selected asset
		number currentSoundId: used to check the assetType

	Optional Props
		UDim2 AnchorPoint: The anchorpoint of the component
		number LayoutOrder: The layoutOrder of the component
		UDim2 Position: The position of the component
		UDim2 Size: The size of the component
]]
local Plugin = script.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local RoactRodux = require(Libs.RoactRodux)
local ContextServices = require(Libs.Framework.ContextServices)

local Util = Plugin.Core.Util
local FlagsList = require(Util.FlagsList)

local AudioProgressBar = Roact.PureComponent:extend("AudioProgressBar")

function AudioProgressBar:init()
	self.progress = 0
end

function AudioProgressBar:shouldUpdate(nextProps, nextState)
	return not (nextProps.currentSoundId ~= nextProps.assetId and self.progress == 0)
end

function AudioProgressBar:render()
	local props = self.props

	local anchorPoint = props.AnchorPoint
	local assetId = props.assetId
	local currentSoundId = props.currentSoundId
	local layoutOrder = props.LayoutOrder
	local elapsedTime = props.elapsedTime
	local position = props.Position
	local size = props.Size
	local totalTime = props.totalTime

	local progressBarColor
	if FlagsList:get("FFlagRefactorDevFrameworkTheme") then
		progressBarColor = props.Stylizer.progressBarColor
	else
		progressBarColor = props.Theme:get("Plugin").progressBarColor
	end

	self.progress = 0
	if totalTime ~= nil and totalTime ~= 0
		and currentSoundId == assetId then
		self.progress = elapsedTime / totalTime
	end

	return Roact.createElement("Frame", {
		AnchorPoint = anchorPoint,
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
		Position = position,
		Size = size,
	}, {
		ProgressBar = Roact.createElement("Frame", {
			AnchorPoint = Vector2.new(0, 0.5),
			BackgroundColor3 = progressBarColor,
			BackgroundTransparency = 0,
			BorderSizePixel = 0,
			Position = UDim2.new(0, 0, 0.5, 0),
			Size = UDim2.new(self.progress, 0, 1, 0),
		})
	})
end

local function mapStateToProps(state, props)
	state = state or {}

	local sound = state.sound or {}
	return {
		elapsedTime = sound.elapsedTime or 0,
		totalTime = sound.totalTime or 0,
	}
end

ContextServices.mapToProps(AudioProgressBar, {
	Stylizer = FlagsList:get("FFlagRefactorDevFrameworkTheme") and ContextServices.Stylizer or nil,
	Theme = (not FlagsList:get("FFlagRefactorDevFrameworkTheme")) and ContextServices.Theme or nil,
})

return RoactRodux.connect(mapStateToProps, nil)(AudioProgressBar)
