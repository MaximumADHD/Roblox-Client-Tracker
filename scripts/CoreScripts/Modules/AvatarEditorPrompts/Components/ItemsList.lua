local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)

local VerticalScrollView = UIBlox.App.Container.VerticalScrollView
local withStyle = UIBlox.Style.withStyle
local ShimmerPanel = UIBlox.Loading.ShimmerPanel
local EmptyState = UIBlox.App.Indicator.EmptyState

local ListEntry = require(script.Parent.ListEntry)

local AvatarEditorPrompts = script.Parent.Parent
local GetAssetsDifference = require(AvatarEditorPrompts.GetAssetsDifference)
local AddAnalyticsInfo = require(AvatarEditorPrompts.Actions.AddAnalyticsInfo)

local EngineFeatureAvatarEditorServiceAnalytics = game:GetEngineFeature("AvatarEditorServiceAnalytics")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)

local PADDING_BETWEEN = 10

local GRADIENT_HEIGHT = 30

local ItemsList = Roact.PureComponent:extend("ItemsList")

ItemsList.validateProps = t.strictInterface({
	humanoidDescription = t.instanceOf("HumanoidDescription"),

	addAnalyticsInfo = t.callback,
})

function ItemsList:init()
	self:setState({
		canvasSizeY = 0,
		loading = true,
		addedAssetNames = nil,
		removedAssetNames = nil,
	})

	self.mounted = false

	self.frameRef = Roact.createRef()
	self.topGradientVisibleBinding, self.updateTopGradientVisibleBinding = Roact.createBinding(false)
	self.bottomGradientVisibleBinding, self.updateBottomGradientVisibleBinding = Roact.createBinding(false)

	self.onContentSizeChanged = function(rbx)
		self:setState({
			canvasSizeY = rbx.AbsoluteContentSize.Y
		})
	end

	self.firstEntryPositionChanged = function(rbx)
		local frame = self.frameRef:getValue()
		if not frame then
			return
		end

		if rbx.AbsolutePosition.Y < frame.AbsolutePosition.Y then
			self.updateTopGradientVisibleBinding(true)
		else
			self.updateTopGradientVisibleBinding(false)
		end
	end

	self.lastEntryPositionChanged = function(rbx)
		local frame = self.frameRef:getValue()
		if not frame then
			return
		end

		local entryMaxPosition = rbx.AbsolutePosition.Y + rbx.AbsoluteSize.Y
		local frameMaxPosition = frame.AbsolutePosition.Y + frame.AbsoluteSize.Y
		if entryMaxPosition > frameMaxPosition then
			self.updateBottomGradientVisibleBinding(true)
		else
			self.updateBottomGradientVisibleBinding(false)
		end
	end

	self.loadAssetNames = function()
		coroutine.wrap(function()
			GetAssetsDifference(self.props.humanoidDescription):andThen(function(result)
				if self.mounted then
					if EngineFeatureAvatarEditorServiceAnalytics then
						self.props.addAnalyticsInfo(result.addedAssetIds, result.removedAssetIds)
					end

					self:setState({
						loading = false,
						addedAssetNames = result.addedNames,
						removedAssetNames = result.removedNames,
					})
				end
			end, function(err)
				if self.mounted then
					self:setState({
						loading = false,
					})
				end
			end)
		end)()
	end

	self.onRetryLoading = function()
		self:setState({
			loading = true,
		})

		self.loadAssetNames()
	end
end

function ItemsList:createEntriesList()
	local list = {}

	local listIndex = 0
	if #self.state.addedAssetNames > 0 then
		list[listIndex] = Roact.createElement(ListEntry, {
			text = RobloxTranslator:FormatByKey("CoreScripts.AvatarEditorPrompts.Adding"),
			hasBullet = false,
			layoutOrder = listIndex,
			positionChangedCallback = self.firstEntryPositionChanged,
		})
		listIndex = listIndex + 1

		for index, name in ipairs(self.state.addedAssetNames) do
			local positionChangedCallback = nil
			if #self.state.removedAssetNames == 0 and index == #self.state.addedAssetNames then
				positionChangedCallback = self.lastEntryPositionChanged
			end

			list[listIndex] = Roact.createElement(ListEntry, {
				text = name,
				hasBullet = true,
				layoutOrder = listIndex,
				positionChangedCallback = positionChangedCallback,
			})
			listIndex = listIndex + 1
		end

		if #self.state.removedAssetNames > 0 then
			--Add some padding
			list[listIndex] = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 0, PADDING_BETWEEN * 2)
			})
			listIndex = listIndex + 1
		end
	end

	if #self.state.removedAssetNames > 0 then
		list[listIndex] = Roact.createElement(ListEntry, {
			text = RobloxTranslator:FormatByKey("CoreScripts.AvatarEditorPrompts.Removing"),
			hasBullet = false,
			layoutOrder = listIndex,
			positionChangedCallback = #self.state.addedAssetNames == 0 and self.firstEntryPositionChanged or nil,
		})
		listIndex = listIndex + 1

		for index, name in ipairs(self.state.removedAssetNames) do
			local positionChangedCallback = nil
			if index == #self.state.removedAssetNames then
				positionChangedCallback = self.lastEntryPositionChanged
			end

			list[listIndex] = Roact.createElement(ListEntry, {
				text = name,
				hasBullet = true,
				layoutOrder = listIndex,
				positionChangedCallback = positionChangedCallback,
			})
			listIndex = listIndex + 1
		end
	end

	local noChangedAssets = #self.state.addedAssetNames == 0 and #self.state.removedAssetNames == 0
	if noChangedAssets then
		list[listIndex] = Roact.createElement(ListEntry, {
			text = RobloxTranslator:FormatByKey("CoreScripts.AvatarEditorPrompts.NoChangedAssets"),
			hasBullet = false,
			layoutOrder = listIndex,
		})
	end

	return list
end

function ItemsList:renderItemsList()
	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme

		local list = self:createEntriesList()
		list.Layout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			Padding = UDim.new(0, PADDING_BETWEEN),
			SortOrder = Enum.SortOrder.LayoutOrder,

			[Roact.Change.AbsoluteContentSize] = self.onContentSizeChanged,
		})

		return Roact.createElement("Frame", {
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,

			[Roact.Ref] = self.frameRef,
		}, {
			TopGradient = Roact.createElement("Frame", {
				Visible = self.topGradientVisibleBinding,
				Size = UDim2.new(1, 0, 0, GRADIENT_HEIGHT),
				Position = UDim2.fromScale(0, 0),
				BackgroundColor3 = Color3.new(1, 1, 1),
				BorderSizePixel = 0,
				ZIndex = 2,
			}, {
				UIGradient = Roact.createElement("UIGradient", {
					Rotation = 90,

					Color = ColorSequence.new({
						ColorSequenceKeypoint.new(0, theme.BackgroundUIDefault.Color),
						ColorSequenceKeypoint.new(1, theme.BackgroundUIDefault.Color)
					}),

					Transparency = NumberSequence.new({
						NumberSequenceKeypoint.new(0, 0),
						NumberSequenceKeypoint.new(1, 1)
					}),
				}),
			}),

			ScrollView = Roact.createElement(VerticalScrollView, {
				size = UDim2.fromScale(1, 1),
				canvasSizeY = UDim.new(0, self.state.canvasSizeY),
			}, list),

			BottomGradient = Roact.createElement("Frame", {
				Visible = self.bottomGradientVisibleBinding,
				Size = UDim2.new(1, 0, 0, GRADIENT_HEIGHT),
				Position = UDim2.fromScale(0, 1),
				AnchorPoint = Vector2.new(0, 1),
				BackgroundColor3 = Color3.new(1, 1, 1),
				BorderSizePixel = 0,
				ZIndex = 2,
			}, {
				UIGradient = Roact.createElement("UIGradient", {
					Rotation = 90,

					Color = ColorSequence.new({
						ColorSequenceKeypoint.new(0, theme.BackgroundUIDefault.Color),
						ColorSequenceKeypoint.new(1, theme.BackgroundUIDefault.Color)
					}),

					Transparency = NumberSequence.new({
						NumberSequenceKeypoint.new(0, 1),
						NumberSequenceKeypoint.new(1, 0)
					}),
				}),
			}),
		})
	end)
end

function ItemsList:renderLoading()
	return Roact.createElement(ShimmerPanel, {
		Size = UDim2.fromScale(1, 1),
		Position = UDim2.fromScale(0.5, 0.5),
		AnchorPoint = Vector2.new(0.5, 0.5),
	})
end

function ItemsList:renderFailed()
	return Roact.createElement(EmptyState, {
		text = RobloxTranslator:FormatByKey("CoreScripts.AvatarEditorPrompts.ItemsListLoadingFailed"),
		size = UDim2.fromScale(1, 1),
		reloadAction = self.onRetryLoading,
	})
end

function ItemsList:render()
	if self.state.loading then
		return self:renderLoading()
	elseif self.state.addedAssetNames then
		return self:renderItemsList()
	else
		return self:renderFailed()
	end
end

function ItemsList:didMount()
	self.mounted = true

	self.loadAssetNames()
end

function ItemsList:willUnmount()
	self.mounted = false
end

local function mapDispatchToProps(dispatch)
	return {
		addAnalyticsInfo = function(info)
			return dispatch(AddAnalyticsInfo(info))
		end,
	}
end

return RoactRodux.UNSTABLE_connect2(nil, mapDispatchToProps)(ItemsList)