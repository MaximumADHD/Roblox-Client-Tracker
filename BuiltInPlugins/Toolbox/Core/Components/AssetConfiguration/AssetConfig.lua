--[[
	This component is responsible for managing the AssetConfiguration page.
	It will need to display tabs, and change pages acorrding to current tab selection.

	Necessary props:
	assetId, numeber, will be used to request assetData on didMount.
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local RoactRodux = require(Libs.RoactRodux)
local Cryo = require(Plugin.Libs.Cryo)

local Components = Plugin.Core.Components
local AssetConfiguration = Components.AssetConfiguration
local PreviewArea = require(AssetConfiguration.PreviewArea)
local PublishAsset = require(AssetConfiguration.PublishAsset)
local AssetConfigFooter = require(AssetConfiguration.AssetConfigFooter)
local Versions = require(AssetConfiguration.Versions)
local Sales = require(AssetConfiguration.Sales)
local ScreenSetup = require(AssetConfiguration.ScreenSetup)
local OverrideAsset = require(AssetConfiguration.OverrideAsset)
local MessageBox = require(Components.MessageBox.MessageBox)

local Util = Plugin.Core.Util
local ContextHelper = require(Util.ContextHelper)
local ContextGetter = require(Util.ContextGetter)
local Images = require(Util.Images)
local AssetConfigConstants =require(Util.AssetConfigConstants)
local Constants = require(Util.Constants)

local getNetwork = ContextGetter.getNetwork
local getPlugin = ContextGetter.getPlugin

local MakeChangeRequest = require(Plugin.Core.Networking.Requests.MakeChangeRequest)

local ConfigTypes = require(Plugin.Core.Types.ConfigTypes)

local Requests = Plugin.Core.Networking.Requests
local GetAssetConfigDataRequest = require(Requests.GetAssetConfigDataRequest)
local UploadCatalogItemRequest = require(Requests.UploadCatalogItemRequest)
local ConfigureCatalogItemRequest = require(Requests.ConfigureCatalogItemRequest)
local GetAssetDetailsRequest = require(Requests.GetAssetDetailsRequest)
local PostRevertVersionRequest = require(Requests.PostRevertVersionRequest)
local PatchAssetRequest = require(Requests.PatchAssetRequest)
local PostUploadAssetRequest = require(Requests.PostUploadAssetRequest)
local PostOverrideAssetRequest = require(Requests.PostOverrideAssetRequest)
local GetIsVerifiedCreatorRequest = require(Requests.GetIsVerifiedCreatorRequest)

local SetAssetConfigTab = require(Plugin.Core.Actions.SetAssetConfigTab)

local withTheme = ContextHelper.withTheme
local withModal = ContextHelper.withModal
local withLocalization = ContextHelper.withLocalization

local AssetConfig = Roact.PureComponent:extend("AssetConfig")

local FOOTER_HEIGHT = 80
local PREVIEW_WIDTH = 240
local DEFAULT_GENRE = "All"

local function getPriceRange(allowedAssetTypesForRelease, assetTypeEnum)
	local releaseDataForAssetType = allowedAssetTypesForRelease and assetTypeEnum and allowedAssetTypesForRelease[assetTypeEnum.Name]
	return releaseDataForAssetType and releaseDataForAssetType.allowedPriceRange or {}
end

local function getMinPrice(allowedAssetTypesForRelease, assetTypeEnum)
	local priceRange = getPriceRange(allowedAssetTypesForRelease, assetTypeEnum)
	return priceRange.minRobux and tonumber(priceRange.minRobux) or 0
end

local function getMaxPrice(allowedAssetTypesForRelease, assetTypeEnum)
	local priceRange = getPriceRange(allowedAssetTypesForRelease, assetTypeEnum)
	return priceRange.maxRobux and tonumber(priceRange.maxRobux) or 0
end

function AssetConfig:init(props)
	self.state = {
		assetId = nil,

		-- Those states should be managed by the most common parrent. In this case, assetConfig.
		name = nil,
		description = nil,
		-- We will be ignoreing the assetTypeEnum send from the server.
		-- Because from pubishing new asset, we will be selecting the assetType. From Editing, we already have the
		-- We will be using teh AssetTypeEnum passed in instead.
		owner = nil,
		genres = {
			DEFAULT_GENRE
		},
		allowCopy = true, -- Enable the copy toggle if the flag to modify copy behavoir is off or user is verified.
		copyOn = false,
		allowComment = true,  -- Default to allow comment, but off.
		commentOn = nil,
		price = getMinPrice(props.allowedAssetTypesForRelease, props.assetTypeEnum),
		status = nil,

		isShowChangeDiscardMessageBox = false,

		overrideAssetId = nil,
		groupId = nil,
	}

		-- Used to fetching name before publish
	self.nameString = nil
	self.descriptionString = nil

	self.tryPublish = function()
		local function tryPublishGeneral()
			local function getExtension(allowedAssetTypesForUpload, assetTypeEnum)
				local uploadDataForAssetType = allowedAssetTypesForUpload and assetTypeEnum and allowedAssetTypesForUpload[assetTypeEnum.Name]
				local allowedFileExtensions = uploadDataForAssetType and uploadDataForAssetType.allowedFileExtensions
				local extension = (allowedFileExtensions and #allowedFileExtensions > 0) and allowedFileExtensions[1]
				-- if we have an extension, remove the '.' from the front of the extension string
				return extension and (string.gsub(extension, "^%.", "")) or "rbxm"
			end

			local props = self.props
			local state = self.state

			if AssetConfigConstants.FLOW_TYPE.EDIT_FLOW == props.screenFlowType then
				if AssetConfigConstants.isCatalogAsset(props.assetTypeEnum) then
					if props.assetConfigData and props.assetConfigData.Status then
						props.configureCatalogItem(
							getNetwork(self),
							props.assetId,
							state.name,
							state.description,
							props.assetConfigData.Status,
							state.status,
							props.assetConfigData.Price,
							state.price
						)
					else
						warn("Could not configure sales, missing Asset Status!")
					end
				elseif AssetConfigConstants.isMarketplaceAsset(props.assetTypeEnum) then
					props.configureMarketplaceItem(
						getNetwork(self),
						state.assetId,
						state.name,
						state.description,
						state.genres,
						state.commentOn,
						state.copyOn
					)
				end
			elseif AssetConfigConstants.FLOW_TYPE.UPLOAD_FLOW == props.screenFlowType then
				if AssetConfigConstants.isCatalogAsset(props.assetTypeEnum) then
					props.uploadCatalogItem(
						getNetwork(self),
						self.state.name,
						getExtension(props.allowedAssetTypesForUpload, props.assetTypeEnum),
						self.state.description,
						props.assetTypeEnum,
						props.instances
					)
				elseif AssetConfigConstants.isMarketplaceAsset(props.assetTypeEnum) and
					ConfigTypes:isOverride(props.currentTab) then
					-- Only need assetId from existing asset
					props.overrideAsset(
						getNetwork(self),
						state.overrideAssetId,
						props.assetTypeEnum.Name,
						props.instances
					)
				else -- Publishing new asset
					local genre = (state.genres or {})[1]
					local genreTypeId = Enum.Genre[genre].Value + 1 -- All is 1 based

					props.uploadMarketplaceItem(
						getNetwork(self),
						0, 								-- empyt or 0 for new asset
						props.assetTypeEnum.Name,		-- accepts both id and name of the assetType.
						state.name,
						state.description,
						genreTypeId, 					-- Convert into a ID
						state.copyOn,
						state.commentOn,
						state.groupId,					-- Used only for upload group asset.
						props.instances
					)
				end
			end
		end

		local function tryPublishVersions(changeTable)
			local assetConfigData = self.props.assetConfigData
			local assetId = assetConfigData.Id
			local assetVersionNumber = changeTable.VersionItemSelect

			if assetId and assetVersionNumber then
				self.props.postRevertVersion(getNetwork(self), assetId, assetVersionNumber)
			end
		end

		local changeTable = self.props.changeTable
		local changed = next(changeTable) ~= nil

		-- Our actions maybe defferent depends on if we
		-- changed any thing on the page or not.
		if changed then
			tryPublishGeneral()
			tryPublishVersions(changeTable)
		end
	end

	self.tryCancel = function(canYield)
		-- Check if we have changed any settings.
		local changeTable = self.props.changeTable or {}
		local changed = next(changeTable) ~= nil
		if changed then
			local function showDiscardMessageBox()
				self:setState({
					isShowChangeDiscardMessageBox = true,
				})
			end

			if canYield then
				showDiscardMessageBox()
			else
				spawn(showDiscardMessageBox)
			end
		else
			self.props.onClose()
		end
	end

	self.tryCancelNoYield = function()
		self.tryCancel(false)
	end

	self.tryCancelWithYield = function()
		self.tryCancel(true)
	end

	self.onMessageBoxClosed = function()
		self:setState({
			isShowChangeDiscardMessageBox = false,
		})
	end

	self.tryCloseAssetConfig = function(index, action)
		if action == "yes" then
			-- Close the assetConfig
			local _, pluginGui = getPlugin(self)
			-- And we will let AssetConfigWrapper to handle the onClose and unMount.
			pluginGui.Enabled = false
		else
			self:setState({
				isShowChangeDiscardMessageBox = false,
			})
		end
	end

	local function getCurrent(var, default)
		return self.props.assetConfigData and self.props.assetConfigData[var] or default
	end

	self.onNameChange = function(newName)
		self.props.makeChangeRequest("AssetConfigName", getCurrent("Name", ""), newName)

		self:setState({
			name = newName
		})
	end

	self.onDescChange = function(newDesc)
		self.props.makeChangeRequest("AssetConfigDesc", getCurrent("Description", ""), newDesc)
		self:setState({
			description = newDesc
		})
	end

	self.onStatusChange = function(newStatus)
		self.props.makeChangeRequest("AssetConfigStatus", getCurrent("Status"), newStatus)
		self:setState({
			status = newStatus
		})
	end

	self.onPriceChange = function(newPrice)
		self.props.makeChangeRequest("AssetConfigPrice", getCurrent("Price"), newPrice)
		self:setState({
			price = newPrice
		})
	end

	self.onAccessChange = function(newOwnerIndex, item)
		local Creator = self.props.assetConfigData.Creator or {}
		self.props.makeChangeRequest("AssetConfigOwner", Creator.type or 1, newOwnerIndex)

		local groupId = nil
		if item.creatorType == "Group" then
			groupId = item.creatorId
		end

		self:setState({
			owner =	Cryo.Dictionary.join(self.state.owner or {}, {
				typeId = newOwnerIndex,
			}),
			groupId = groupId
		})
	end

	self.onGenreChange = function(newGenreIndex, item)
		local Genres = self.props.assetConfigData.Genres or {}
		self.props.makeChangeRequest("AssetConfigGenre", Genres[1] or DEFAULT_GENRE, item.name)

		local newGenreName = AssetConfigConstants.getGenreName(newGenreIndex)
		self:setState({
			genres = Cryo.Dictionary.join(self.state.genres or {}, {
				[1] = newGenreName,
			})
		})
	end

	self.toggleCopy = function(newCopyStatus)
		self:setState({
			copyOn = newCopyStatus
		})

		self.props.makeChangeRequest("AssetConfigCopy", self.props.assetConfigData.IsCopyingAllowed or false, newCopyStatus)
	end

	self.toggleComment = function(newCommentStatus)
		self:setState({
			commentOn = newCommentStatus
		})

		self.props.makeChangeRequest("AssetConfigComment", self.props.assetConfigData.EnableComments or false, newCommentStatus)
	end

	self.onTabSelect = function(index, tabItem)
		props.setTab(tabItem)
	end

	self.onOverrideAssetSelected = function(assetId)
		self:setState({
			overrideAssetId = assetId
		})
	end
end

function AssetConfig:attachXButtonCallback()
	if self.props.pluginGui then
		self.props.pluginGui:BindToClose(self.tryCancelNoYield)
	end
end

function AssetConfig:detachXButtonCallback()
	if self.props.pluginGui then
		self.props.pluginGui:BindToClose(nil)
	end
end

function AssetConfig:didUpdate(previousProps, previousState)
	self:attachXButtonCallback()

	-- If we have assetConfigData and state is nil(defualt state),
	-- then we will use the data retrived from the assetConfigData to trigger a re-render.
	if self.props.screenFlowType == AssetConfigConstants.FLOW_TYPE.EDIT_FLOW then
		local assetConfigData = self.props.assetConfigData
		if next(assetConfigData) and (not self.state.name) then
			self:setState({
				assetId = AssetConfigConstants.isMarketplaceAsset(self.props.assetTypeEnum) and assetConfigData.Id or assetConfigData.assetId, -- assetId is named differently in the data returned by different end-points

				name = assetConfigData.Name,
				description = assetConfigData.Description,
				owner = assetConfigData.Creator,
				genres = assetConfigData.Genres,
				allowCopy = assetConfigData.IsPublicDomainEnabled,
				copyOn = assetConfigData.IsCopyingAllowed,
				commentOn = assetConfigData.EnableComments,
				price = assetConfigData.Price or getMinPrice(self.props.allowedAssetTypesForRelease, self.props.assetTypeEnum),
				status = assetConfigData.Status,
			})
		end
	else
		if (self.props.isVerifiedCreator ~= nil) and self.state.allowCopy ~= self.props.isVerifiedCreator then
			self:setState({
				allowCopy = self.props.isVerifiedCreator
			})
		end
	end
end

function AssetConfig:didMount()
	self:attachXButtonCallback()

	-- From here, we can reqeust assetConfig data if we have assetId.
	if AssetConfigConstants.FLOW_TYPE.EDIT_FLOW == self.props.screenFlowType then
		if self.props.assetId then
			if AssetConfigConstants.isCatalogAsset(self.props.assetTypeEnum) then
				self.props.getAssetDetails(getNetwork(self), self.props.assetId)
			elseif AssetConfigConstants.isMarketplaceAsset(self.props.assetTypeEnum) then
				self.props.getAssetConfigData(getNetwork(self), self.props.assetId)
			end
		end
	else -- If not edit, then we are in publish flow
		self.props.getIsVerifiedCreator(getNetwork(self))
	end
end

function AssetConfig:willUnmount()
	self:detachXButtonCallback()
end

local function validatePrice(text, minPrice, maxPrice, assetStatus)
	local result = true
	if Constants.AssetStatus.OnSale == assetStatus then
		result = false
		text = tostring(text)
		local isInt = text and text:match("%d+") == text
		if isInt then
			local num = tonumber(text)
			if num then
				result = num >= minPrice and num <= maxPrice
			end
		end
	end
	return result
end

local function canSave(changeTable, name, description, price, minPrice, maxPrice, assetStatus, currentTab)
	-- For now, override asset is nique, we only care if we change anything from the override.
	if ConfigTypes:isOverride(currentTab) then
		return changeTable.OverrideAssetId
	else
		local changed = next(changeTable) ~= nil
		local nameDataIsOk = (#name <= AssetConfigConstants.NAME_CHARACTER_LIMIT) and (tostring(name) ~= "")
		local descriptionDataIsOk = #description <= AssetConfigConstants.DESCRIPTION_CHARACTER_LIMIT
		local priceDataIsOk = validatePrice(price, minPrice, maxPrice, assetStatus)
		return changed and nameDataIsOk and descriptionDataIsOk and priceDataIsOk
	end
end

-- Check if the networkError contains Error for GetAssetConfigDataRequest
-- And replace the MessageBox's props based on the networkError.
local function getMessageBoxProps(getAssetFailed, localizedContent, cancelFunc, closeFunc)
	local messageProps = {
		Name = "AssetConfigMessageBox",
		TextSize = Constants.FONT_SIZE_MEDIUM,
		Font = Constants.FONT,
		Icon = Images.INFO_ICON,
		onButtonClicked = closeFunc,
		onClose = cancelFunc
	}

	-- Check error
	if getAssetFailed then
		messageProps.Title = localizedContent.AssetConfig.Error
		messageProps.Text = localizedContent.AssetConfig.GetAssetFailed

		messageProps.buttons = {
			{
				Text = localizedContent.AssetConfig.Close,
				Font = Constants.FONT,
				TextSize = Constants.FONT_SIZE_MEDIUM,
				action = "yes",
			}
		}
	else
		messageProps.Title = localizedContent.AssetConfig.Discard
		messageProps.Text = localizedContent.AssetConfig.DiscardMessage

		messageProps.buttons = {
			{
				Text = localizedContent.AssetConfig.Cancel,
				Font = Constants.FONT,
				TextSize = Constants.FONT_SIZE_MEDIUM,
				action = "no",
			}, {
				Text = localizedContent.AssetConfig.Discard,
				Font = Constants.FONT,
				TextSize = Constants.FONT_SIZE_MEDIUM,
				action = "yes",
			}
		}
	end

	return messageProps
end

function AssetConfig:render()
	return withTheme(function(theme)
		return withModal(function(modalTarget)
			return withLocalization(function(_, localizedContent)
				local props = self.props
				local state = self.state

				local Size = props.Size

				local currentTab = props.currentTab
				local assetId = state.assetId or props.assetId
				local name = state.name or ""
				local description = state.description or ""
				local owner = state.owner
				local genres = state.genres
				local allowCopy = state.allowCopy
				local copyOn = state.copyOn
				local allowComment = state.allowComment
				local commentOn = state.commentOn
				local status = state.status
				local showGetAssetFailed = props.networkErrorAction == ConfigTypes.GET_ASSET_DETAIL_FAILURE_ACTION
				local isShowChangeDiscardMessageBox = state.isShowChangeDiscardMessageBox or showGetAssetFailed

				local assetConfigData = props.assetConfigData or {}
				local assetTypeEnum = props.assetTypeEnum
				local screenFlowType = props.screenFlowType
				local changeTable = props.changeTable or {}
				local allowedAssetTypesForRelease = props.allowedAssetTypesForRelease

				local minPrice = getMinPrice(allowedAssetTypesForRelease, assetTypeEnum)
				local maxPrice = getMaxPrice(allowedAssetTypesForRelease, assetTypeEnum)
				local price = state.price
				local showSalesTab = ScreenSetup.queryParam(screenFlowType, assetTypeEnum, ScreenSetup.keys.SHOW_SALES_TAB)
				local showOwnership = ScreenSetup.queryParam(screenFlowType, assetTypeEnum, ScreenSetup.keys.SHOW_OWNERSHIP)
				local showGenre = ScreenSetup.queryParam(screenFlowType, assetTypeEnum, ScreenSetup.keys.SHOW_GENRE)
				local showCopy = ScreenSetup.queryParam(screenFlowType, assetTypeEnum, ScreenSetup.keys.SHOW_COPY)
				local showComment = ScreenSetup.queryParam(screenFlowType, assetTypeEnum, ScreenSetup.keys.SHOW_COMMENT)
				local showAssetType = ScreenSetup.queryParam(screenFlowType, assetTypeEnum, ScreenSetup.keys.SHOW_ASSET_TYPE)

				return Roact.createElement("Frame", {
					Size = Size,

					BackgroundTransparency = 0,
					BackgroundColor3 = theme.assetConfig.backgroundColor,
					BorderSizePixel = 0,
				}, {
					UIListLayout = Roact.createElement("UIListLayout", {
						FillDirection = Enum.FillDirection.Vertical,
						HorizontalAlignment = Enum.HorizontalAlignment.Left,
						VerticalAlignment = Enum.VerticalAlignment.Bottom,
						SortOrder = Enum.SortOrder.LayoutOrder,
						Padding = UDim.new(0, 0),
					}),

					AssetConfigMessageBox = isShowChangeDiscardMessageBox and Roact.createElement(MessageBox,
						getMessageBoxProps(showGetAssetFailed, localizedContent, self.onMessageBoxClosed, self.tryCloseAssetConfig)),

					MainPage = Roact.createElement("Frame", {
						Size = UDim2.new(1, 0, 1, -FOOTER_HEIGHT),

						BackgroundTransparency = 1,

						LayoutOrder = 1,
					}, {
						UIListLayout = Roact.createElement("UIListLayout", {
							FillDirection = Enum.FillDirection.Horizontal,
							HorizontalAlignment = Enum.HorizontalAlignment.Left,
							VerticalAlignment = Enum.VerticalAlignment.Top,
							SortOrder = Enum.SortOrder.LayoutOrder,
							Padding = UDim.new(0, 0),
						}),

						Preview = Roact.createElement(PreviewArea, {
							TotalWidth = PREVIEW_WIDTH,

							tabItems = ConfigTypes:getAssetconfigContent(screenFlowType, assetTypeEnum),

							CurrentTab = currentTab,

							ShowThumbnailImage = not props.instances and true or false,
							ShowViewport = props.instances and true or false,
							AssetStatus = (AssetConfigConstants.FLOW_TYPE.EDIT_FLOW == props.screenFlowType and assetConfigData) and assetConfigData.Status or nil,
							AssetId = AssetConfigConstants.FLOW_TYPE.EDIT_FLOW == props.screenFlowType and assetId or nil,

							OnTabSelect = self.onTabSelect,

							LayoutOrder = 1,
						}),

						VerticalLine = Roact.createElement("Frame", {
							Size = UDim2.new(0 , 2, 1, 0),

							BackgroundTransparency = 0,
							BackgroundColor3 = theme.divider.verticalLineColor,
							BorderSizePixel = 0,

							LayoutOrder = 2,
						}),

						PublishAsset = ConfigTypes:isGeneral(currentTab) and Roact.createElement(PublishAsset, {
							Size = UDim2.new(1, -PREVIEW_WIDTH, 1, 0),

							assetId = assetId,
							name = name,
							description = description,
							owner = owner,
							genres = genres,
							allowCopy = allowCopy,
							copyOn = copyOn,
							allowComment = allowComment,
							commentOn = commentOn,

							assetTypeEnum = assetTypeEnum,
							onNameChange = self.onNameChange,
							onDescChange = self.onDescChange,
							onOwnerSelected = self.onAccessChange,
							onGenreSelected = self.onGenreChange,
							toggleCopy = self.toggleCopy,
							toggleComment = self.toggleComment,

							displayOwnership = showOwnership,
							displayGenre = showGenre,
							displayCopy = showCopy,
							displayComment = showComment,
							displayAssetType = showAssetType,

							LayoutOrder = 3,
						}),

						Versions = ConfigTypes:isVersions(currentTab) and Roact.createElement(Versions, {
							Size = UDim2.new(1, -150, 1, 0),

							assetId = assetId,

							LayoutOrder = 3,
						}),

						Sales = ConfigTypes:isSales(currentTab) and Roact.createElement(Sales, {
							Size = UDim2.new(1, -150, 1, 0),

							AssetTypeEnum = props.assetTypeEnum,

							AllowedAssetTypesForRelease = allowedAssetTypesForRelease,
							AssetStatusChanged = status or Constants.AssetStatus.Unknown,
							AssetStatusInBackend = assetConfigData and assetConfigData.Status or Constants.AssetStatus.Unknown,
							Price = price,
							MinPrice = minPrice,
							MaxPrice = maxPrice,

							onStatusChange = self.onStatusChange,
							onPriceChange = self.onPriceChange,
							validatePrice = function(text)
								return validatePrice(text, minPrice, maxPrice, status or Constants.AssetStatus.Unknown)
							end,

							LayoutOrder = 3,
						}),

						OverrideAsset = ConfigTypes:isOverride(currentTab) and Roact.createElement(OverrideAsset, {
							Size = UDim2.new(1, -150, 1, 0),

							assetTypeEnum = assetTypeEnum,
							instances = props.instances,
							onOverrideAssetSelected = self.onOverrideAssetSelected,

							LayoutOrder = 3,
						})
					}),

					Footer = Roact.createElement(AssetConfigFooter, {
						Size = UDim2.new(1, 0, 0, FOOTER_HEIGHT),
						CanSave = canSave(changeTable, name, description, price, minPrice, maxPrice, status or Constants.AssetStatus.Unknown, currentTab),

						tryCancel = self.tryCancelWithYield,
						tryPublish = self.tryPublish,

						LayoutOrder = 2
					})
				})
			end)
		end)
	end)
end

local function mapStateToProps(state, props)
	state = state or {}

	local assetConfigData = state.assetConfigData or {}
	local changed = state.changed

	return {
		assetConfigData = assetConfigData,
		assetTypeEnum = state.assetTypeEnum,
		currentScreen = state.currentScreen,
		changeTable = changed,
		screenFlowType = state.screenFlowType,
		instances = state.instances,
		allowedAssetTypesForRelease = state.allowedAssetTypesForRelease,
		allowedAssetTypesForUpload = state.allowedAssetTypesForUpload,
		currentTab = state.currentTab,
		isVerifiedCreator = state.isVerifiedCreator,
		networkError = state.networkError,
		networkErrorAction = state.networkErrorAction
	}
end

local function mapDispatchToProps(dispatch)
	return {
		getAssetConfigData = function(networkInterface, assetId)
			dispatch(GetAssetConfigDataRequest(networkInterface, assetId))
		end,

		getAssetDetails = function(networkInterface, assetId)
			dispatch(GetAssetDetailsRequest(networkInterface, assetId))
		end,

		makeChangeRequest = function(setting, currentValue, newValue)
			dispatch(MakeChangeRequest(setting, currentValue, newValue))
		end,

		uploadCatalogItem = function(networkInterface, nameWithoutExtension, extension, description, assetTypeEnum, instances)
			dispatch(UploadCatalogItemRequest(networkInterface, nameWithoutExtension, extension, description, assetTypeEnum, instances))
		end,

		configureCatalogItem = function(networkInterface, assetId, nameWithoutExtension, description, fromStatus, toStatus, fromPrice, toPrice)
			dispatch(ConfigureCatalogItemRequest(networkInterface, assetId, nameWithoutExtension, description, fromStatus, toStatus, fromPrice, toPrice))
		end,

		-- For locale changes, we have no UI for them now, but we can add that in the future.
		configureMarketplaceItem = function(networkInterface, assetid, name, description, genres, enableComments, isCopyingAllowed, locale, localName, localDescription)
			dispatch(PatchAssetRequest(networkInterface, assetid, name, description, genres, enableComments, isCopyingAllowed, locale, localName, localDescription))
		end,

		uploadMarketplaceItem = function(networkInterface, assetid, type, name, description, genreTypeId, ispublic, allowComments, groupId, instances)
			dispatch(PostUploadAssetRequest(networkInterface, assetid, type, name, description, genreTypeId, ispublic, allowComments, groupId, instances))
		end,

		postRevertVersion = function(networkInterface, assetId, assetVersionNumber)
			dispatch(PostRevertVersionRequest(networkInterface, assetId, assetVersionNumber))
		end,

		setTab = function(tabItem)
			dispatch(SetAssetConfigTab(tabItem))
		end,

		overrideAsset = function(networkInterface, assetid, type, instances)
			dispatch(PostOverrideAssetRequest(networkInterface, assetid, type, instances))
		end,

		getIsVerifiedCreator = function(networkInterface)
			dispatch(GetIsVerifiedCreatorRequest(networkInterface))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(AssetConfig)