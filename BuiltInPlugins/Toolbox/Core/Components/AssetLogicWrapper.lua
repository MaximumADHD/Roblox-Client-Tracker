--[[
	A wrapper that sets up full assets functionality, minus the get.
	It sets up asset insertion, AssetPreview, asset hover, and messageBoxes.
	Any view that renders Assets should be wrapped by this function.'

	(!) IMPORTANT
	Make sure withContext is called AFTER wrapping the component with AssetLogicWrapper.
	Ex: component = AssetLogicWrapper(component)
	Otherwise the component will get AssetLogicWrapper's withContext items and BRIEFLY omit component's
	ContextItems and cause unecessary re-renders. This can cause issues within prop comparisons on the
	component's willUpdate/shouldUpdate.
]]
local HttpService = game:GetService("HttpService")

local FFlagToolboxEnableAudioGrantDialog = game:GetFastFlag("ToolboxEnableAudioGrantDialog")
local FFlagToolboxUsePageInfoInsteadOfAssetContext = game:GetFastFlag("ToolboxUsePageInfoInsteadOfAssetContext2")

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
local GetPageInfoAnalyticsContextInfo = require(Plugin.Core.Thunks.GetPageInfoAnalyticsContextInfo)
local SetAssetPreview = require(Plugin.Core.Actions.SetAssetPreview)

local Framework = require(Libs.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Settings = require(Plugin.Core.ContextServices.Settings)

local FrameworkUtil = require(Libs.Framework).Util
local deepEqual = FrameworkUtil.deepEqual
local Dash = Framework.Dash

export type TryOpenAssetConfigFn = ((
	assetId: number?,
	flowType: string,
	instances: any,
	assetTypeEnum: Enum.AssetType
) -> ())

export type AssetLogicWrapperProps = {
	CanInsertAsset: (() -> boolean)?,
	OnAssetPreviewButtonClicked: ((assetData: any) -> ()),
	TryInsert: ((assetData: any, assetWasDragged: boolean, insertionMethod: string) -> any),
	TryOpenAssetConfig: TryOpenAssetConfigFn,
}

type _ExternalProps = {
	AutomaticSize: Enum.AutomaticSize?,
	Position: UDim2?,
	Size: UDim2?,
	TryOpenAssetConfig: ((
		assetId: number?,
		flowType: string,
		instances: any,
		assetTypeEnum: Enum.AssetType
	) -> any),
}

type _InternalProps = {
	-- mapStateToProps
	_categoryName: string?,
	_isPreviewing: boolean,
	_searchTerm: string?,
	-- mapDispatchToProps
	_onPreviewToggled: ((isPreviewing: boolean, previewAssetId: number?) -> any),
	_postInsertAssetRequest: ((networkInterface: any, assetId: number) -> any),
	_setMostRecentAssetInsertTime: (() -> any),
	_getPageInfoAnalyticsContextInfo: any, --(() -> ())
	-- ContextItems
	_AssetAnalytics: any,
	_Plugin: any,
	_Settings: any,
	_Localization: any,
}

type _State = {
	hoveredAssetId: number,
	isShowingToolMessageBox: boolean,
	isShowingScriptWarningMessageBox: boolean,
	previewAssetData: any?,
	isShowingGrantPermissionsMessageBox: boolean,
	scriptWarningInfo: any?,
	grantPermissionsInfo: any?,
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
			hoveredAssetId = 0,
			isShowingToolMessageBox = false,
			isShowingScriptWarningMessageBox = false,
			previewAssetData = Roact.None,
			isShowingGrantPermissionsMessageBox = false,
			scriptWarningInfo = nil,
			grantPermissionsInfo = nil,
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
			self:setState({
				isShowingScriptWarningMessageBox = false,
			})
			self.insertToolPromise:dismissWarningPrompt()
		end

		self.onInsertScriptWarningPrompt = function(info)
			local settings = self.props._Settings:get("Plugin")
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
			local settings = self.props._Settings:get("Plugin")
			settings:setShowScriptWarning(showState)
		end

		self.onPermissionsGrantClosed = function()
			if not FFlagToolboxEnableAudioGrantDialog then
				return
			end
			self:setState({
				isShowingGrantPermissionsMessageBox = false,
			})
			self.insertToolPromise:returnResult(false)
		end

		self.onPermissionsGranted = function(index, action)
			if not FFlagToolboxEnableAudioGrantDialog then
				return
			end
			self:setState({
				isShowingGrantPermissionsMessageBox = false,
			})

			local result = if action == "yes" then true else false
			self.insertToolPromise:returnResult(result)
		end

		self.onPermissionsGrantCallback = function(info)
			if not FFlagToolboxEnableAudioGrantDialog then
				return
			end
			self:setState({
				isShowingGrantPermissionsMessageBox = true,
				grantPermissionsInfo = info,
			})
		end

		self.insertToolPromise = InsertToolPromise.new(
			self.onInsertToolPrompt,
			self.onInsertScriptWarningPrompt,
			self.onPermissionsGrantCallback
		)

		self.tryInsert = function(assetData, assetWasDragged: boolean, insertionMethod: string?)
			self.lastInsertAttemptTime = tick()

			local asset = assetData.Asset
			local assetId = asset.Id
			local assetName = asset.Name
			local assetTypeId = asset.TypeId

			local currentProps = self.props
			local categoryName = currentProps._categoryName
			local searchTerm = currentProps._searchTerm or ""
			local assetIndex = currentProps.assetIndex

			local currentCategoryName = categoryName

			local assetAnalyticsContext
			if FFlagToolboxUsePageInfoInsteadOfAssetContext then
				local getPageInfoAnalyticsContextInfo = self.props._getPageInfoAnalyticsContextInfo
				assetAnalyticsContext = getPageInfoAnalyticsContextInfo()
			end

			local plugin = self.props._Plugin:get()
			InsertAsset.tryInsert({
				plugin = plugin,
				assetId = assetId,
				assetName = assetName,
				assetTypeId = assetTypeId,
				onSuccess = function(assetId, insertedInstance)
					self.props._postInsertAssetRequest(getNetwork(self), assetId)
					self.props._setMostRecentAssetInsertTime()
					insertionMethod = insertionMethod or (assetWasDragged and "DragInsert" or "ClickInsert")
					self.props._AssetAnalytics
						:get()
						:logInsert(assetData, insertionMethod, insertedInstance, assetAnalyticsContext)
				end,
				currentCategoryName = currentCategoryName,
				categoryName = categoryName,
				searchTerm = searchTerm,
				assetIndex = assetIndex,
			}, self.insertToolPromise, assetWasDragged, getNetwork(self)) -- networkInterface added with FFLagInsertAssetBubbleUpNetwork
		end

		self.openAssetPreview = function(assetData)
			self:setState(function()
				return {
					previewAssetData = assetData,
				}
			end)
			local assetId = assetData.Asset.Id
			self.props._onPreviewToggled(true, assetId)
		end

		self.closeAssetPreview = function(assetData)
			self:setState(function()
				return {
					previewAssetData = Roact.None,
				}
			end)
			self.props._onPreviewToggled(false, Roact.None)
		end
	end

	function AssetLogicWrapper:willUnmount()
		self.insertToolPromise:destroy()
	end

	function AssetLogicWrapper:render()
		local props: _Props = self.props
		local state: _State = self.state

		local automaticSize = props.AutomaticSize
		local isPreviewing = props._isPreviewing
		local position = props.Position
		local size = props.Size
		local tryOpenAssetConfig = props.TryOpenAssetConfig

		local isShowingToolMessageBox = state.isShowingToolMessageBox
		local previewAssetData = state.previewAssetData
		local isShowingScriptWarningMessageBox = state.isShowingScriptWarningMessageBox
		local isShowingGrantPermissionsMessageBox = state.isShowingGrantPermissionsMessageBox
		local scriptWarningInfo = state.scriptWarningInfo
		local grantPermissionsInfo = state.grantPermissionsInfo

		local localization = self.props._Localization

		local wrappedProps = Cryo.Dictionary.join(props, {
			CanInsertAsset = self.canInsertAsset,
			ClearHoveredAsset = self.clearHoveredAsset,
			TryInsert = self.tryInsert,
			TryOpenAssetConfig = tryOpenAssetConfig,

			OnAssetPreviewButtonClicked = self.openAssetPreview,
		})

		local showAssetPreview = isPreviewing and previewAssetData ~= Roact.None
		wrappedProps = Dash.omit(wrappedProps, {
			-- mapStateToProps
			"_categoryName",
			"_isPreviewing",
			"_previewAssetId",
			"_searchTerm",
			-- mapDispatchToProps
			"_onPreviewToggled",
			"_postInsertAssetRequest",
			"_setMostRecentAssetInsertTime",
			-- ContextItems
			"_AssetAnalytics",
			"_Localization",
			"_Plugin",
			"_Settings",
		})

		return Roact.createFragment({
			ToolScriptWarningMessageBox = isShowingScriptWarningMessageBox and Roact.createElement(
				ScriptConfirmationDialog,
				{
					Name = string.format("ToolboxToolScriptWarningMessageBox-%s", HttpService:GenerateGUID()),

					Info = scriptWarningInfo,
					Icon = Images.INFO_ICON,

					onClose = self.onScriptWarningBoxClosed,
					onButtonClicked = self.onScriptWarningBoxClosed,
					onChangeShowDialog = self.onScriptWarningBoxToggleShow,
				}
			),

			GrantPermissionsMessageBox = isShowingGrantPermissionsMessageBox and Roact.createElement(MessageBox, {
				Name = string.format("ToolboxPermissionsMessageBox-%s", HttpService:GenerateGUID()),

				Title = localization:getText("General", "RobloxStudio"),
				Text = localization:getText("GrantAssetPermission", "DialogText"),
				InformativeText = localization:getText("GrantAssetPermission", "Information", {
					assetName = grantPermissionsInfo.assetName,
					assetId = grantPermissionsInfo.assetId,
					assetType = grantPermissionsInfo.assetType,
				}),
				Icon = Images.WARNING_ICON,
				IconColor = Color3.fromHex("#FFAA21"),

				onClose = self.onPermissionsGrantClosed,
				onButtonClicked = self.onPermissionsGranted,

				buttons = {
					{
						Text = localization:getText("GrantAssetPermission", "CancelButton"),
						action = "no",
					},
					{
						Text = localization:getText("GrantAssetPermission", "GrantButton"),
						action = "yes",
					},
				},
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

			AssetPreview = showAssetPreview and Roact.createElement(AssetPreviewWrapper, {
				assetData = previewAssetData,
				onClose = self.closeAssetPreview,
				tryInsert = self.tryInsert,
				tryOpenAssetConfig = tryOpenAssetConfig,
			}),

			Contents = Roact.createElement(wrappedComponent, wrappedProps),
		})
	end

	AssetLogicWrapper = withContext({
		_AssetAnalytics = AssetAnalyticsContextItem,
		_Localization = ContextServices.Localization,
		_Plugin = ContextServices.Plugin,
		_Settings = Settings,
	})(AssetLogicWrapper)

	local function mapStateToProps(state, props)
		state = state or {}
		local assets = state.assets or {}
		local pageInfo = state.pageInfo or {}
		local categoryName = pageInfo.categoryName or Category.DEFAULT.name

		return {
			_categoryName = categoryName,
			_isPreviewing = assets.isPreviewing or false,
			_searchTerm = pageInfo.searchTerm or "",
		}
	end

	local function mapDispatchToProps(dispatch)
		return {
			_onPreviewToggled = function(isPreviewing, previewAssetId)
				dispatch(SetAssetPreview(isPreviewing, previewAssetId))
			end,
			_postInsertAssetRequest = function(networkInterface: any, assetId: number)
				dispatch(PostInsertAssetRequest(networkInterface, assetId))
			end,
			_setMostRecentAssetInsertTime = function()
				dispatch(SetMostRecentAssetInsertTime())
			end,
			_getPageInfoAnalyticsContextInfo = if FFlagToolboxUsePageInfoInsteadOfAssetContext
				then function()
					return dispatch(GetPageInfoAnalyticsContextInfo())
				end
				else nil,
		}
	end

	return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(AssetLogicWrapper)
end

return AssetLogicWrapperFunction
