--[[
	A wrapper that sets up full assets functionality, minus the get.
	It sets up asset insertion, AssetPreview, asset hover, and messageBoxes.
	Any view that renders Assets should be wrapped by this function.
]]
local HttpService = game:GetService("HttpService")

local FFlagToolboxEnableScriptConfirmation = game:GetFastFlag("ToolboxEnableScriptConfirmation")

local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Packages
local Cryo = require(Libs.Cryo)
local Roact = require(Libs.Roact)
local RoactRodux = require(Libs.RoactRodux)

local Util = Plugin.Core.Util
local Constants = require(Util.Constants)
local ContextGetter = require(Util.ContextGetter)
local Images = require(Util.Images)
local AssetAnalyticsContextItem = require(Util.Analytics.AssetAnalyticsContextItem)
local InsertToolPromise = require(Util.InsertToolPromise)
local InsertAsset = require(Util.InsertAsset)

local Category = require(Plugin.Core.Types.Category)

local getNetwork = ContextGetter.getNetwork

local AssetPreviewWrapper = require(Plugin.Core.Components.Asset.Preview.AssetPreviewWrapper)
local MessageBox = require(Plugin.Core.Components.MessageBox.MessageBox)
local ScriptConfirmationDialog = require(Plugin.Core.Components.ScriptConfirmationDialog)

local PostInsertAssetRequest = require(Plugin.Core.Networking.Requests.PostInsertAssetRequest)

local SetMostRecentAssetInsertTime = require(Plugin.Core.Actions.SetMostRecentAssetInsertTime)

local Framework = require(Libs.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Settings = require(Plugin.Core.ContextServices.Settings)

type _ExternalProps = {
	AutomaticSize : Enum.AutomaticSize?,
	Position : UDim2?,
	Size : UDim2?,
	TryOpenAssetConfig : (
		(
			assetId : number?,
			flowType : string,
			instances : any,
			assetTypeEnum : Enum.AssetType
		) -> any
	),
}

type _InternalProps = {
	-- mapStateToProps
	categoryName : string?,
	isPreviewing : boolean,
	searchTerm : string?,
	-- mapDispatchToProps
	postInsertAssetRequest : ((networkInterface: any, assetId: number)-> any),
	setMostRecentAssetInsertTime : (()-> any),
	-- ContextItems
	AssetAnalytics: any,
	Plugin: any,
	Settings: any,
}

type _State = {
	absoluteSize : Vector2,
	absolutePosition : Vector2,
	hoveredAssetId : number,
	isShowingToolMessageBox : boolean,
	isShowingScriptWarningMessageBox : boolean,
	scriptWarningInfo : any?,
}

type _Props = _ExternalProps & _InternalProps

local AssetLogicWrapperFunction = function(wrappedComponent)
	local AssetLogicWrapper = Roact.PureComponent:extend("AssetLogicWrapper")

	AssetLogicWrapper.defaultProps = {
		Size = UDim2.new(1, 0, 1, 0),
	}

	function AssetLogicWrapper:init()
		self.ref = Roact.createRef()

		self.state = {
			absoluteSize = Vector2.new(Constants.TOOLBOX_MIN_WIDTH, 0),
			absolutePosition = Vector2.new(),
			hoveredAssetId = 0,
			isShowingToolMessageBox = false,
			isShowingScriptWarningMessageBox = false,
			scriptWarningInfo = nil,
		}

		--[[
			We need to track when the user last triggered an insertion, because inserting
			an asset can take several seconds depending on the asset's loading speed. This
			means throttling inserts via "onAssetInserted" does not work as intended
			because a user can queue up several inserts of an asset which is not loaded yet,
			and "onAssetInserted" does not fire and update the last inserted time until
			the asset in question has finished loading.
		]]
		self.lastInsertAttemptTime = 0

		self.canInsertAsset = function()
			return (tick() - self.lastInsertAttemptTime > Constants.TIME_BETWEEN_ASSET_INSERTION)
				and not self.insertToolPromise:isWaiting()
		end

		self.onMessageBoxClosed = function()
			self:setState({
				isShowingToolMessageBox = false,
			})

			self.insertToolPromise:insertToWorkspace()
		end

		self.onMessageBoxButtonClicked = function(index, action)
			self:setState({
				isShowingToolMessageBox = false,
			})

			if action == "yes" then
				self.insertToolPromise:insertToStarterPack()
			elseif action == "no" then
				self.insertToolPromise:insertToWorkspace()
			end
		end

		self.onInsertToolPrompt = function()
			self:setState({
				isShowingToolMessageBox = true,
			})
		end

		self.onScriptWarningBoxClosed = function()
			if not FFlagToolboxEnableScriptConfirmation then
				return
			end
			self:setState({
				isShowingScriptWarningMessageBox = false,
			})
			self.insertToolPromise:dismissWarningPrompt()
		end

		self.onInsertScriptWarningPrompt = function(info)
			if not FFlagToolboxEnableScriptConfirmation then
				return
			end
			local settings = self.props.Settings:get("Plugin")
			if settings:getShowScriptWarning() then
				self:setState({
					isShowingScriptWarningMessageBox = true,
					scriptWarningInfo = info,
				})
				return true
			else
				return false
			end
		end

		self.onScriptWarningBoxToggleShow = function(showState)
			local settings = self.props.Settings:get("Plugin")
			settings:setShowScriptWarning(showState)
		end

		self.insertToolPromise = InsertToolPromise.new(self.onInsertToolPrompt, self.onInsertScriptWarningPrompt)

		self.tryInsert = function(assetData, assetWasDragged, insertionMethod)
			self.lastInsertAttemptTime = tick()

			local asset = assetData.Asset
			local assetId = asset.Id
			local assetName = asset.Name
			local assetTypeId = asset.TypeId

			local currentProps = self.props
			local categoryName = currentProps.categoryName
			local searchTerm = currentProps.searchTerm or ""
			local assetIndex = currentProps.assetIndex

			local currentCategoryName = categoryName

			local plugin = self.props.Plugin:get()
			InsertAsset.tryInsert({
				plugin = plugin,
				assetId = assetId,
				assetName = assetName,
				assetTypeId = assetTypeId,
				onSuccess = function(assetId, insertedInstance)
					self.props.postInsertAssetRequest(getNetwork(self), assetId)
					self.props.setMostRecentAssetInsertTime()
					insertionMethod = insertionMethod or (assetWasDragged and "DragInsert" or "ClickInsert")
					self.props.AssetAnalytics:get():logInsert(assetData, insertionMethod, insertedInstance)
				end,
				currentCategoryName = currentCategoryName,
				categoryName = categoryName,
				searchTerm = searchTerm,
				assetIndex = assetIndex,
			}, self.insertToolPromise, assetWasDragged)
		end

		self.updateBoundaryVariables = function()
			local ref = self.ref.current
			if not ref then
				return
			end
			if self.state.absolutePosition ~= ref.AbsolutePosition or self.state.absoluteSize ~= ref.AbsoluteSize then
				self:setState({
					absoluteSize = ref.AbsoluteSize,
					absolutePosition = ref.AbsolutePosition,
				})
			end
		end
	end

	function AssetLogicWrapper:didMount()
		self.updateBoundaryVariables()
	end

	function AssetLogicWrapper:willUnmount()
		self.insertToolPromise:destroy()
	end

	function AssetLogicWrapper:render()
		local props : _Props = self.props
		local state : _State = self.state

		local automaticSize = props.AutomaticSize
		local isPreviewing = props.isPreviewing
		local position = props.Position
		local size = props.Size
		local tryOpenAssetConfig = props.TryOpenAssetConfig

		local isShowingToolMessageBox = state.isShowingToolMessageBox
		local isShowingScriptWarningMessageBox = state.isShowingScriptWarningMessageBox
		local scriptWarningInfo = state.scriptWarningInfo

		local wrappedProps = Cryo.Dictionary.join(props, {
			CanInsertAsset = self.canInsertAsset,
			ClearHoveredAsset = self.clearHoveredAsset,
			ParentAbsolutePosition = state.absolutePosition,
			ParentSize = state.absoluteSize,
			TryInsert = self.tryInsert,
			TryOpenAssetConfig = tryOpenAssetConfig,
		})

		return Roact.createFragment({
			Sizing = Roact.createElement("Frame", {
				AutomaticSize = automaticSize,
				BackgroundTransparency = 1,
				Position = position,
				Size = size,
				ZIndex = -1,
				[Roact.Ref] = self.ref,
				[Roact.Change.AbsolutePosition] = self.updateBoundaryVariables,
				[Roact.Change.AbsoluteSize] = self.updateBoundaryVariables,
			}),

			ToolScriptWarningMessageBox = isShowingScriptWarningMessageBox
				and Roact.createElement(ScriptConfirmationDialog, {
					Name = string.format("ToolboxToolScriptWarningMessageBox-%s", HttpService:GenerateGUID()),

					Info = scriptWarningInfo,
					Icon = Images.INFO_ICON,

					onClose = self.onScriptWarningBoxClosed,
					onButtonClicked = self.onScriptWarningBoxClosed,
					onChangeShowDialog = self.onScriptWarningBoxToggleShow,
				}),

			ToolMessageBox = isShowingToolMessageBox and Roact.createElement(MessageBox, {
				Name = string.format("ToolboxToolMessageBox-%s", HttpService:GenerateGUID()),

				Title = "Insert Tool",
				Text = "Put this tool into the starter pack?",
				Icon = Images.INFO_ICON,

				onClose = self.onMessageBoxClosed,
				onButtonClicked = self.onMessageBoxButtonClicked,

				buttons = {
					{
						Text = "Yes",
						action = "yes",
					},
					{
						Text = "No",
						action = "no",
					},
				},
			}),

			AssetPreview = isPreviewing and Roact.createElement(AssetPreviewWrapper, {
				tryInsert = self.tryInsert,
				tryOpenAssetConfig = tryOpenAssetConfig,
			}),

			Contents = Roact.createElement(wrappedComponent, wrappedProps)
		})
	end

	AssetLogicWrapper = withContext({
		AssetAnalytics = AssetAnalyticsContextItem,
		Plugin = ContextServices.Plugin,
		Settings = Settings,
	})(AssetLogicWrapper)

	local function mapStateToProps(state, props)
		state = state or {}
		local assets = state.assets or {}
		local pageInfo = state.pageInfo or {}
		local categoryName = pageInfo.categoryName or Category.DEFAULT.name

		return {
			categoryName = categoryName,
			isPreviewing = assets.isPreviewing or false,
			searchTerm = pageInfo.searchTerm or "",
		}
	end

	local function mapDispatchToProps(dispatch)
		return {
			postInsertAssetRequest = function(networkInterface: any, assetId: number)
				dispatch(PostInsertAssetRequest(networkInterface, assetId))
			end,
			setMostRecentAssetInsertTime = function()
				dispatch(SetMostRecentAssetInsertTime())
			end,
		}
	end

	return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(AssetLogicWrapper)
end

return AssetLogicWrapperFunction