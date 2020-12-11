local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local Roact = require(CorePackages.Roact)
local RoactGamepad = require(CorePackages.Packages.RoactGamepad)
local RoactRodux = require(CorePackages.RoactRodux)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)

local VerticalScrollView = UIBlox.App.Container.VerticalScrollView
local withStyle = UIBlox.Style.withStyle
local ShimmerPanel = UIBlox.Loading.ShimmerPanel
local EmptyState = UIBlox.App.Indicator.EmptyState

local ListSection = require(script.ListSection)

local AvatarEditorPrompts = script.Parent.Parent
local GetAssetsDifference = require(AvatarEditorPrompts.GetAssetsDifference)
local AddAnalyticsInfo = require(AvatarEditorPrompts.Actions.AddAnalyticsInfo)

local EngineFeatureAvatarEditorServiceAnalytics = game:GetEngineFeature("AvatarEditorServiceAnalytics")
local EngineFeatureAESConformToAvatarRules = game:GetEngineFeature("AESConformToAvatarRules")

local Modules = AvatarEditorPrompts.Parent
local FFlagAESPromptsSupportGamepad = require(Modules.Flags.FFlagAESPromptsSupportGamepad)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)

local PADDING_BETWEEN = 10

local GRADIENT_HEIGHT = 30

local ItemsList = Roact.PureComponent:extend("ItemsList")

ItemsList.validateProps = t.strictInterface({
	humanoidDescription = EngineFeatureAESConformToAvatarRules and t.optional(t.instanceOf("HumanoidDescription"))
		or t.instanceOf("HumanoidDescription"),
	loadingFailed = EngineFeatureAESConformToAvatarRules and t.boolean or nil,
	retryLoadDescription = EngineFeatureAESConformToAvatarRules and t.callback or nil,
	itemListScrollableUpdated = t.optional(t.callback),

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

	if FFlagAESPromptsSupportGamepad then
		self.addedSectionRef = Roact.createRef()
		self.removedSectionRef = Roact.createRef()
		self.noChangedAssetsRef = Roact.createRef()
	end

	self.lastWasScrollable = nil
	self.checkIsScrollable = function()
		local frame = self.frameRef:getValue()
		if not frame then
			return
		end

		if not self.props.itemListScrollableUpdated then
			return
		end

		local shouldBeScrollable = self.state.canvasSizeY > frame.AbsoluteSize.Y

		if shouldBeScrollable ~= self.lastWasScrollable then
			self.lastWasScrollable = shouldBeScrollable
			self.props.itemListScrollableUpdated(shouldBeScrollable, frame.AbsoluteSize.Y)
		end
	end

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

		if EngineFeatureAESConformToAvatarRules then
			if self.props.humanoidDescription then
				self.loadAssetNames()
			else
				self.props.retryLoadDescription()
			end
		else
			self.loadAssetNames()
		end
	end
end

function ItemsList:createEntriesList()
	local list = {}

	if #self.state.addedAssetNames > 0 then
		local addingHeaderText = RobloxTranslator:FormatByKey("CoreScripts.AvatarEditorPrompts.Adding")
		table.insert(list, Roact.createElement(
			FFlagAESPromptsSupportGamepad and RoactGamepad.Focusable[ListSection] or ListSection, {
			headerText = addingHeaderText,
			items = self.state.addedAssetNames,
			layoutOrder = 1,
			isFirstSection = true,
			isLastSection = #self.state.removedAssetNames == 0,

			NextSelectionDown = FFlagAESPromptsSupportGamepad and self.removedSectionRef or nil,
			[Roact.Ref] = FFlagAESPromptsSupportGamepad and self.addedSectionRef or nil,
		}))

		if #self.state.removedAssetNames > 0 then
			--Add some padding
			table.insert(list, Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 0, PADDING_BETWEEN * 2),
				LayoutOrder = 2,
			}))
		end
	end

	if #self.state.removedAssetNames > 0 then
		local removingHeaderText = RobloxTranslator:FormatByKey("CoreScripts.AvatarEditorPrompts.Removing")
		table.insert(list, Roact.createElement(
			FFlagAESPromptsSupportGamepad and RoactGamepad.Focusable[ListSection] or ListSection, {
			headerText = removingHeaderText,
			items = self.state.removedAssetNames,
			layoutOrder = 3,
			isFirstSection = #self.state.addedAssetNames == 0,
			isLastSection = true,

			NextSelectionUp = FFlagAESPromptsSupportGamepad and self.addedSectionRef or nil,
			[Roact.Ref] = FFlagAESPromptsSupportGamepad and self.removedSectionRef or nil,
		}))
	end

	local noChangedAssets = #self.state.addedAssetNames == 0 and #self.state.removedAssetNames == 0
	if noChangedAssets then
		local noChangedAssetsText = RobloxTranslator:FormatByKey("CoreScripts.AvatarEditorPrompts.NoChangedAssets")
		table.insert(list, Roact.createElement(
			FFlagAESPromptsSupportGamepad and RoactGamepad.Focusable[ListSection] or ListSection, {
			headerText = noChangedAssetsText,
			items = {},
			layoutOrder = 1,
			isFirstSection = true,
			isLastSection = true,

			[Roact.Ref] = FFlagAESPromptsSupportGamepad and self.noChangedAssetsRef or nil,
		}))
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

		return Roact.createElement(
			FFlagAESPromptsSupportGamepad and RoactGamepad.Focusable.Frame or "Frame", {
			defaultChild = FFlagAESPromptsSupportGamepad and self.addedSectionRef or nil,

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
	local isLoading = self.state.loading
	if EngineFeatureAESConformToAvatarRules then
		isLoading = self.state.loading and not self.props.loadingFailed
	end

	if isLoading then
		return self:renderLoading()
	elseif self.state.addedAssetNames then
		return self:renderItemsList()
	else
		return self:renderFailed()
	end
end

function ItemsList:didMount()
	self.mounted = true

	if EngineFeatureAESConformToAvatarRules then
		if self.props.humanoidDescription then
			self.loadAssetNames()
		end
	else
		self.loadAssetNames()
	end
	self.checkIsScrollable()
end

function ItemsList:didUpdate(prevProps, prevState)
	self.checkIsScrollable()

	if EngineFeatureAESConformToAvatarRules then
		if prevProps.humanoidDescription ~= self.props.humanoidDescription then
			self:setState({
				loading = true,
				addedAssetNames = Roact.None,
				removedAssetNames = Roact.None,
			})

			self.loadAssetNames()
		end
	end
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