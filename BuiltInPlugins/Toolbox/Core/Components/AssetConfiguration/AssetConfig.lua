--[[
	This component is responsible for managing the AssetConfiguration page.
	It will need to display tabs, and change pages acorrding to current tab selection.

	Necessary props:
	assetId, number, will be used to request assetData on didMount.
]]

local FFlagToolboxAudioAssetConfigIdVerification = game:GetFastFlag("ToolboxAudioAssetConfigIdVerification")
local FFlagToolboxAssetConfigurationMatchPluginFlow = game:GetFastFlag("ToolboxAssetConfigurationMatchPluginFlow")
local FFlagAssetConfigCleanupDuplicateActions = game:GetFastFlag("AssetConfigCleanupDuplicateActions")

local StudioService = game:GetService("StudioService")

local Plugin = script.Parent.Parent.Parent.Parent

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
local RoactRodux = require(Packages.RoactRodux)
local Cryo = require(Packages.Cryo)

local Components = Plugin.Core.Components
local AssetConfiguration = Components.AssetConfiguration
local PreviewArea = require(AssetConfiguration.PreviewArea)
local PublishAsset = require(AssetConfiguration.PublishAsset)
local AssetConfigFooter = require(AssetConfiguration.AssetConfigFooter)
local Versions = require(AssetConfiguration.Versions)
local SalesPage = require(AssetConfiguration.SalesPage)
local Permissions = require(AssetConfiguration.Permissions.Permissions)
local WarningDialog = require(AssetConfiguration.WarningDialog)

local OverrideAsset = require(AssetConfiguration.OverrideAsset)
local MessageBox = require(Components.MessageBox.MessageBox)

local Util = Plugin.Core.Util
local AssetPermissionUtil = require(Util.AssetPermissionUtil)
local ContextHelper = require(Util.ContextHelper)
local ContextGetter = require(Util.ContextGetter)
local Images = require(Util.Images)
local AssetConfigConstants = require(Util.AssetConfigConstants)
local Constants = require(Util.Constants)
local ScreenSetup = require(Util.ScreenSetup)
local AssetConfigUtil = require(Util.AssetConfigUtil)
local TagsUtil = require(Util.TagsUtil)

local getNetwork = ContextGetter.getNetwork

local MakeChangeRequest = require(Plugin.Core.Networking.Requests.MakeChangeRequest)

local ConfigTypes = require(Plugin.Core.Types.ConfigTypes)

local Requests = Plugin.Core.Networking.Requests
local UploadCatalogItemRequest = require(Requests.UploadCatalogItemRequest)
local ConfigureCatalogItemRequest = require(Requests.ConfigureCatalogItemRequest)
local GetAssetDetailsRequest = require(Requests.GetAssetDetailsRequest)
local GetAssetItemTagsRequest = require(Requests.GetAssetItemTagsRequest)
local PostRevertVersionRequest = require(Requests.PostRevertVersionRequest)
local PatchAssetRequest = require(Requests.PatchAssetRequest)
local PostUploadAssetRequest = require(Requests.PostUploadAssetRequest)
local PostOverrideAssetRequest = require(Requests.PostOverrideAssetRequest)
local PostUploadAnimationRequest = require(Requests.PostUploadAnimationRequest)
local PostOverrideAnimationRequest = require(Requests.PostOverrideAnimationRequest)
local GetIsVerifiedCreatorRequest = require(Requests.GetIsVerifiedCreatorRequest)
local PostPackageMetadataRequest = require(Requests.PostPackageMetadataRequest)
local GetPackageCollaboratorsRequest = require(Requests.GetPackageCollaboratorsRequest)
local PutPackagePermissionsRequest = require(Requests.PutPackagePermissionsRequest)
local PostAssetCheckPermissions = require(Requests.PostAssetCheckPermissions)
local GetMarketplaceInfoRequest = require(Requests.GetMarketplaceInfoRequest)
local AvatarAssetsGetUploadFeeRequest = require(Requests.AvatarAssetsGetUploadFeeRequest)
local AvatarAssetsUploadRequest = require(Requests.AvatarAssetsUploadRequest)
local PatchMakeAssetPublicRequest = require(Requests.PatchMakeAssetPublicRequest)
local GetAssetPermissionsRequest = require(Requests.GetAssetPermissionsRequest)
local GetVerificationStatusRequest = require(Requests.GetVerificationStatusRequest)

local ClearChange = require(Plugin.Core.Actions.ClearChange)
local SetAssetConfigTab = require(Plugin.Core.Actions.SetAssetConfigTab)
local UpdateAssetConfigStore = require(Plugin.Core.Actions.UpdateAssetConfigStore)
local SetDescendantPermissions = require(Plugin.Core.Actions.SetDescendantPermissions)

local GetGroupMetadata = require(Plugin.Core.Thunks.GetGroupMetadata)
local GetGroupRoleInfo = require(Plugin.Core.Thunks.GetGroupRoleInfo)
local GetUsername = require(Plugin.Core.Thunks.GetUsername)

local withModal = ContextHelper.withModal
local withLocalization = ContextHelper.withLocalization

local ContextServices = require(Packages.Framework).ContextServices
local withContext = ContextServices.withContext

local Framework = require(Packages.Framework)
local LoadingIndicator = Framework.UI.LoadingIndicator
local Container = Framework.UI.Container

local AssetConfig = Roact.PureComponent:extend("AssetConfig")

local FOOTER_HEIGHT = 62
local PREVIEW_WIDTH = 240
local DEFAULT_GENRE = "All"

-- Default "empty" value for selected assetId used by the Animation Editor's AssetConfig.
local DIRECT_IMPORT_ID_DEFAULT = ""

function AssetConfig:init(props)
	self.state = {
		assetId = nil,

		-- Those states should be managed by the most common parent. In this case, assetConfig.
		name = nil,
		description = nil,
		tags = nil,
		-- We will be ignoring the assetTypeEnum sent from the server.
		-- Because from pubishing new asset, we will be selecting the assetType. From Editing, we already have the
		-- We will be using the AssetTypeEnum passed in instead.
		owner = nil,
		genres = {
			DEFAULT_GENRE
		},
		allowCopy = true, -- Enable the copy toggle if the flag to modify copy behavior is off or user is verified.
		copyOn = false,
		copyChanged = false, -- If the user has changed the copy status
		allowComment = true,  -- Default to allow comment, but off.
		commentOn = nil,
		price = nil,		-- The price has to be nil in the first place for the price to load correctly when initial load.
		status = nil,
		isAssetPublic = false,

		isShowChangeDiscardMessageBox = false,

		isPublishAssetsDialogEnabled = false,
		descendantIds = {},

		overrideAssetId = nil,
		groupId = nil,
		iconFile = nil, -- Need for setting thumbnails for asset.

		dispatchGetFunction = false,

		isConfirmationDialogEnabled = false,
		confirmationDialogKey = false,
	}

	if AssetConfigUtil.isMarketplaceAsset(props.assetTypeEnum) then
		self.state.status = AssetConfigConstants.ASSET_STATUS.OffSale
	end
	if AssetConfigUtil.isCatalogAsset(props.assetTypeEnum) then
		self.state.price = AssetConfigUtil.getMinPrice(props.allowedAssetTypesForRelease, props.assetTypeEnum)
	end

	-- Used to fetching name before publish
	self.nameString = nil
	self.descriptionString = nil
	self.init = false

	self.onDialogAccepted = function()
		local state = self.state
		self:setState(function()
			self.tryPublish(state.confirmationDialogKey)
			return {
				confirmationDialogKey = DIRECT_IMPORT_ID_DEFAULT,
				isConfirmationDialogEnabled = false,
			}
		end)
	end

	self.onDialogCanceled = function()
		self:setState(function()
			return {
				confirmationDialogKey = DIRECT_IMPORT_ID_DEFAULT,
				isConfirmationDialogEnabled = false,
			}
		end)
	end

	self.onAssetPublishDialogAccepted = function()
		self:setState(function()
			return {
				isPublishAssetsDialogEnabled = false,
			}
		end)
		self.tryMakeAssetsPublic()
	end

	self.onAssetPublishDialogCanceled = function()
		self:setState(function()
			return {
				isPublishAssetsDialogEnabled = false,
			}
		end)
	end

	self.tryMakeAssetsPublic = function()
		local props = self.props
		local state = self.state
		for _, assetId in pairs(state.descendantIds) do
			props.dispatchPatchMakeAssetPublicRequest(getNetwork(self), assetId)
		end

		self.tryPublish(nil)
	end

	self.tryPublishWithConfirmDialog = function(directImportId)
		self:setState(function(state)
			local props = self.props
			local isAudio = props.assetTypeEnum == Enum.AssetType.Audio
			local isModel = props.assetTypeEnum == Enum.AssetType.Model
			if isAudio
				and state.isAssetPublicOriginalValue ~= true
				and state.isAssetPublic == AssetConfigConstants.SHARING_KEYS.Public
			then
				return {
					confirmationDialogKey = directImportId or DIRECT_IMPORT_ID_DEFAULT,
					isConfirmationDialogEnabled = true,
				}
			elseif isModel
					and state.isAssetPublic == AssetConfigConstants.SHARING_KEYS.Public
					and AssetConfigConstants.FLOW_TYPE.UPLOAD_FLOW == props.screenFlowType
			then
				local hasPrivateDescendant = false
				for _, permission in pairs(props.descendantPermissions) do
					if not AssetPermissionUtil.isAssetPublic(permission) then
						hasPrivateDescendant = true
						break
					end
				end
				if hasPrivateDescendant then
					self:setState(function()
						return {
							isPublishAssetsDialogEnabled = true,
						}
					end)
				else
					self.tryPublish(nil)
				end
			else
				self.tryPublish(directImportId)
			end
		end)
	end

	self.tryPublish = function(directImportId)
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

			if AssetConfigConstants.FLOW_TYPE.DOWNLOAD_FLOW == props.screenFlowType then
				-- download flow should only be for animations currently
				StudioService:AnimationIdSelected(directImportId ~= DIRECT_IMPORT_ID_DEFAULT and directImportId or state.overrideAssetId)

				props.onClose()
			elseif AssetConfigConstants.FLOW_TYPE.EDIT_FLOW == props.screenFlowType then
				if AssetConfigUtil.isCatalogAsset(props.assetTypeEnum) then
					if props.assetConfigData and props.assetConfigData.Status then
						props.configureCatalogItem(
							getNetwork(self),
							props.assetId,
							state.name,
							state.description or "",
							props.assetConfigData.Status,
							state.status,
							props.assetConfigData.Price,
							state.price,
							props.assetConfigData.ItemTags or {},
							state.tags
						)
					else
						warn("Could not configure sales, missing Asset Status!")
					end
				elseif AssetConfigUtil.isMarketplaceAsset(props.assetTypeEnum) then

					local copyOn = state.copyOn
					if not state.copyChanged then
						-- DEVTOOLS-3926: Don't submit this optional field unless the user has changed it
						copyOn = nil
					end

					props.configureMarketplaceItem({
						networkInterface = getNetwork(self),
						assetId = state.assetId,
						name = state.name,
						description = state.description or "",
						genres = state.genres,
						commentOn = state.commentOn,
						copyOn = copyOn,
						saleStatus = state.status,
						price = state.price,
						iconFile = state.iconFile,
						isAssetPublic = state.isAssetPublic,
					})
				end
			elseif AssetConfigConstants.FLOW_TYPE.UPLOAD_FLOW == props.screenFlowType then
				if props.assetTypeEnum == Enum.AssetType.Animation then
					if ConfigTypes:isOverride(props.currentTab) then
						props.overrideAnimationAsset(
							getNetwork(self),
							state.overrideAssetId,
							props.instances
						)
					else
						props.uploadAnimationAsset({
							networkInterface = getNetwork(self),
							assetId = 0, 								-- empyt or 0 for new asset
							name = state.name,
							description = state.description or "",
							groupId = state.groupId,					-- Used only for upload group asset.
							instance = props.instances,
						})
					end
				elseif AssetConfigUtil.isCatalogAsset(props.assetTypeEnum) then
					if props.isUploadFeeEnabled then
						props.uploadCatalogItemWithFee(
							getNetwork(self),
							self.state.name,
							getExtension(props.allowedAssetTypesForUpload, props.assetTypeEnum),
							self.state.description or "",
							props.assetTypeEnum,
							props.instances,
							self.state.tags,
							state.groupId
						)
					else
						props.uploadCatalogItem(
							getNetwork(self),
							self.state.name,
							getExtension(props.allowedAssetTypesForUpload, props.assetTypeEnum),
							self.state.description or "",
							props.assetTypeEnum,
							props.instances,
							self.state.tags
						)
					end
				elseif AssetConfigUtil.isMarketplaceAsset(props.assetTypeEnum) and
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

					props.uploadMarketplaceItem({
						networkInterface = getNetwork(self),
						assetId = 0, 								-- empyt or 0 for new asset
						assetType = props.assetTypeEnum.Name,		-- accepts both id and name of the assetType.
						name = state.name,
						description = state.description or "",
						genreTypeId = genreTypeId, 					-- Convert into a ID
						copyOn = state.copyOn,
						commentOn = state.commentOn,
						groupId = state.groupId,					-- Used only for upload group asset.
						instances = props.instances,
						saleStatus = state.status,
						price = state.price,
						iconFile = state.iconFile,
					})
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

		local function tryPublishPermissions(changeTable)
			local assetConfigData = self.props.assetConfigData
			local assetId = assetConfigData.Id
			local assetVersionNumber = changeTable.VersionItemSelect

			if assetId then
				self.props.dispatchPutPackagePermissionsRequest(getNetwork(self), assetId, assetVersionNumber)
			end
		end

		local changeTable = self.props.changeTable
		local changed = changeTable and next(changeTable) ~= nil

		-- Always try to publish the asset if we could save
		-- This allows the default asset to be published (default name, no changes)
		tryPublishGeneral()

		-- If the asset was modified, publish versions and permissions
		if changed then
			tryPublishVersions(changeTable)
			if self.props.isPackageAsset then
				tryPublishPermissions(changeTable)
			end
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
			local pluginGui = self.props.Focus:get()

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

	self.onTagsChange = function(newTags)
		self.props.makeChangeRequest("AssetItemTags", getCurrent("ItemTags", {}), newTags, TagsUtil.areSetsDifferent)
		self:setState({
			tags = newTags
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

		local newGenreName = AssetConfigUtil.getGenreName(newGenreIndex)
		self:setState({
			genres = Cryo.Dictionary.join(self.state.genres or {}, {
				[1] = newGenreName,
			})
		})
	end

	self.toggleCopy = function(newCopyStatus, copyChanged)
		if copyChanged == nil then
			copyChanged = true
		end

		self:setState({
			copyChanged = copyChanged,
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

	self.chooseThumbnail = function()
		local iconFile
		local success, response = pcall(function()
			iconFile = AssetConfigUtil.promptImagePicker()
		end)

		-- Probably need to handle the if it fails
		if success and iconFile then
			self:setState({
				iconFile = iconFile
			})

			self.props.makeChangeRequest("AssetConfigIconSelect", "", iconFile.Name)
			self.props.updateStore({iconFile = iconFile})
		end
	end

	self.onSharingChanged = function(isAssetPublic)
		self:setState({
			isAssetPublic = isAssetPublic
		})
		self.props.makeChangeRequest("SharingEnabled", self.props.assetConfigData.SharingEnabled or false, isAssetPublic)

		if not isAssetPublic then
			local state = self.state
			local hasCopyValueChanged = state.copyOnOriginalValue ~= state.copyOn
			self.toggleCopy(false, hasCopyValueChanged)
		end
	end

	if FFlagToolboxAudioAssetConfigIdVerification then
		self.getVerficationStatus = function()
			self.props.dispatchGetVerificationStatus(getNetwork(self))
		end
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

function AssetConfig:isLoading()
	return self.props.screenFlowType == AssetConfigConstants.FLOW_TYPE.EDIT_FLOW and not self.state.assetId
end

function AssetConfig:didUpdate(previousProps, previousState)
	if self.props.screenFlowType == AssetConfigConstants.FLOW_TYPE.EDIT_FLOW then
		local assetConfigData = self.props.assetConfigData
		if next(assetConfigData) and (not self.state.dispatchGetFunction) then
			local creator = assetConfigData.Creator or {}
			local groupMetadataMissing = not self.state.groupMetadata or next(self.state.groupMetadata) == nil
			if creator.typeId == ConfigTypes.OWNER_TYPES.User and not creator.username then
				self.props.dispatchGetUsername(creator.targetId)
				self:setState({
					dispatchGetFunction = true,
				})
			elseif creator.typeId == ConfigTypes.OWNER_TYPES.Group and groupMetadataMissing then
				self.props.dispatchGetGroupMetadata(creator.targetId)
				self.props.dispatchGetGroupRoleInfo(getNetwork(self), creator.targetId)
				self:setState({
					dispatchGetFunction = true,
				})
			end
		end
	end

	-- If we have assetConfigData and state is nil(default state),
	-- then we will use the data retrived from the assetConfigData to trigger a re-render.
	if self.props.screenFlowType == AssetConfigConstants.FLOW_TYPE.EDIT_FLOW then
		local assetConfigData = self.props.assetConfigData
		if next(assetConfigData) and (not self.init) then

			local isAssetPublic
			if assetConfigData["AssetPermissions"] then
				isAssetPublic = AssetPermissionUtil.isAssetPublic(assetConfigData["AssetPermissions"])
			end

			self:setState({
				-- assetId is named differently in the data returned by different end-points
				assetId = AssetConfigUtil.isMarketplaceAsset(self.props.assetTypeEnum)
					and assetConfigData.Id
					or assetConfigData.AssetId,
				name = assetConfigData.Name,
				description = assetConfigData.Description,
				owner = assetConfigData.Creator,
				genres = assetConfigData.Genres,
				allowCopy = assetConfigData.IsPublicDomainEnabled,
				copyOn = assetConfigData.IsCopyingAllowed,
				copyOnOriginalValue = assetConfigData.IsCopyingAllowed,
				commentOn = assetConfigData.EnableComments,
				price = assetConfigData.Price or AssetConfigUtil.getMinPrice(self.props.allowedAssetTypesForRelease, self.props.assetTypeEnum),
				status = assetConfigData.Status,
				isAssetPublic = isAssetPublic,
				isAssetPublicOriginalValue = isAssetPublic,
			})
			self.init = true
		end

		if assetConfigData.ItemTags and self.state.tags == nil then
			self:setState({
				tags = TagsUtil.getTagsFromItemTags(assetConfigData.ItemTags),
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

	if FFlagToolboxAudioAssetConfigIdVerification and self.props.assetTypeEnum == Enum.AssetType.Audio then
		self.getVerficationStatus()
	end

	-- From here, we can reqeust assetConfig data if we have assetId.
	if AssetConfigConstants.FLOW_TYPE.EDIT_FLOW == self.props.screenFlowType then
		if self.props.assetId then
			if AssetConfigUtil.isCatalogAsset(self.props.assetTypeEnum) then
				self.props.getAssetDetails(getNetwork(self), self.props.assetId, false)

				if TagsUtil.areTagsEnabled(self.props.isItemTagsFeatureEnabled, self.props.enabledAssetTypesForItemTags, self.props.assetTypeEnum) then
					self.props.getAssetTags(getNetwork(self), self.props.assetId)
				end
			else
				if FFlagAssetConfigCleanupDuplicateActions then 
					self.props.getMarketplaceAsset(getNetwork(self), self.props.assetId)
				else
					if AssetConfigUtil.isBuyableMarketplaceAsset(self.props.assetTypeEnum) then
						self.props.getMarketplaceAsset(getNetwork(self), self.props.assetId)
					else
						self.props.getAssetConfigData(getNetwork(self), self.props.assetId)
					end
				end

				if self.props.isPackageAsset == nil then
					self.props.dispatchPostPackageMetadataRequest(getNetwork(self), self.props.assetId)
				end
				self.props.dispatchGetPackageCollaboratorsRequest(getNetwork(self), self.props.assetId)
				-- Current user's package permissions is not known when Asset Config is opened from Game Explorer,
				-- so a call needs to be made to query for it.
				if not self.props.hasPackagePermission then
					self.props.dispatchPostAssetCheckPermissions(getNetwork(self), { self.props.assetId })
				end
			end
		end
	else -- If not edit, then we are in publish flow
		local instances = self.props.instances
		if instances and #instances > 0 then
			self:setState({
				name = instances[1].Name
			})
		end

		self.props.getIsVerifiedCreator(getNetwork(self))

		if AssetConfigUtil.isCatalogAsset(self.props.assetTypeEnum) then
			self.props.getCatalogItemUploadFee(getNetwork(self), self.props.assetTypeEnum, self.props.instances)
		end

		self.props.dispatchSetDescendantPermissions({})
		self:setState({
			descendantIds = {},
		})
		local audioIds = {}
		if instances and self.props.assetTypeEnum == Enum.AssetType.Model then
			for _,instance in pairs(instances) do
				local descendants = instance:GetDescendants()
				for _, descendant in pairs(descendants) do
					-- Add audio instances that are descendants of model
					if descendant:IsA("Sound") then
						local sanitizedAssetId = string.gsub(descendant.SoundId, "rbxassetid://", "")
						self.props.dispatchGetAssetPermissionsRequest(getNetwork(self), sanitizedAssetId)
						table.insert(audioIds, sanitizedAssetId)
					end
				end
			end
			self:setState({
				descendantIds = audioIds,
			})
		end
	end
end

function AssetConfig:willUnmount()
	self:detachXButtonCallback()
end

local function validatePrice(text, minPrice, maxPrice, assetStatus)
	local result = true

	local shouldValidate = AssetConfigConstants.ASSET_STATUS.OnSale == assetStatus and text ~= nil

	if FFlagToolboxAssetConfigurationMatchPluginFlow then
		if shouldValidate then
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
	else
		if shouldValidate and AssetConfigConstants.ASSET_STATUS.OnSale == assetStatus then
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
	end
	return result
end

local function checkCanSave(changeTable, name, description, price, minPrice, maxPrice,
	assetStatus, currentTab, screenFlowType, assetTypeEnum)

	if ConfigTypes:isOverride(currentTab) then
		-- Overwriting an existing asset is a separate flow, we can only save if an asset is selected
		return changeTable and changeTable.OverrideAssetId
	elseif ConfigTypes:isPermissions(currentTab) then
		local changed = changeTable and next(changeTable) ~= nil
		local changedPermissions = changeTable.permissions and next(changeTable.permissions) ~= nil
		return changed and changedPermissions
	else
		local changed = changeTable and next(changeTable) ~= nil
		local nameDataIsOk = (#name <= AssetConfigConstants.NAME_CHARACTER_LIMIT) and (tostring(name) ~= "")
		local descriptionDataIsOk = #description <= AssetConfigConstants.DESCRIPTION_CHARACTER_LIMIT
		if AssetConfigUtil.isCatalogAsset(assetTypeEnum) then
			descriptionDataIsOk = descriptionDataIsOk and (tostring(description) ~= "")
		end
		local priceDataIsOk = validatePrice(price, minPrice, maxPrice, assetStatus)

		local isValid = nameDataIsOk and descriptionDataIsOk and priceDataIsOk
		if screenFlowType == AssetConfigConstants.FLOW_TYPE.UPLOAD_FLOW then
			-- If we are uploading a new asset, we can still submit even if no changes
			-- were made. So, we should only check that the data is valid in this case.
			return isValid
		else
			-- When editing an existing asset, we shouldn't be able to save unless
			-- there are actual changes to save. Otherwise, it's a no-op.
			return isValid and changed
		end
	end
end

-- Check if the networkError contains Error for GetMarketplaceInfoRequest
-- And replace the MessageBox's props based on the networkError.
local function getMessageBoxProps(getAssetFailed, localizedContent, cancelFunc, closeFunc)
	local messageProps = {
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
	return withModal(function(modalTarget)
		return withLocalization(function(_, localizedContent)
			return self:renderContent(modalTarget, localizedContent)
		end)
	end)
end

function AssetConfig:renderContent(modalTarget, localizedContent)
	local props = self.props
	local state = self.state
	local theme = props.Stylizer

	local Size = props.Size

	local isAssetPublicOriginalValue = state.isAssetPublicOriginalValue
	local currentTab = props.currentTab
	local assetId = state.assetId or props.assetId
	local name = state.name or ""
	local description = state.description or ""
	local tags = state.tags or {}
	local owner = state.owner
	local genres = state.genres
	local allowCopy = state.allowCopy
	local copyOn = state.copyOn
	local allowComment = state.allowComment
	local commentOn = state.commentOn
	local newAssetStatus = state.status
	local isAssetPublic = state.isAssetPublic

	local showGetAssetFailed = props.networkErrorAction == ConfigTypes.GET_ASSET_DETAIL_FAILURE_ACTION
	local isShowChangeDiscardMessageBox = state.isShowChangeDiscardMessageBox or showGetAssetFailed
	local iconFile = state.iconFile

	local assetTypeEnum = props.assetTypeEnum
	local screenFlowType = props.screenFlowType
	local changeTable = props.changeTable or {}
	local allowedAssetTypesForRelease = props.allowedAssetTypesForRelease

	local currentAssetStatus = newAssetStatus or AssetConfigConstants.ASSET_STATUS.Unknown

	local minPrice, maxPrice, feeRate = AssetConfigUtil.getPriceInfo(allowedAssetTypesForRelease, assetTypeEnum)

	local price = state.price
	local showOwnership = ScreenSetup.queryParam(screenFlowType, assetTypeEnum, ScreenSetup.keys.SHOW_OWNERSHIP)
	local showGenre = ScreenSetup.queryParam(screenFlowType, assetTypeEnum, ScreenSetup.keys.SHOW_GENRE)
	local showCopy = ScreenSetup.queryParam(screenFlowType, assetTypeEnum, ScreenSetup.keys.SHOW_COPY)
	if props.isPackageAsset then
		showCopy = false
	end
	local showComment = ScreenSetup.queryParam(screenFlowType, assetTypeEnum, ScreenSetup.keys.SHOW_COMMENT)
	local showAssetType = ScreenSetup.queryParam(screenFlowType, assetTypeEnum, ScreenSetup.keys.SHOW_ASSET_TYPE)
	-- And then we show price according to the sales status and if user is whitelisted.
	local previewType = AssetConfigUtil.getPreviewType(assetTypeEnum, props.instances)

	local showTags = TagsUtil.areTagsEnabled(props.isItemTagsFeatureEnabled, props.enabledAssetTypesForItemTags, assetTypeEnum)

	local isPriceValid = validatePrice(price, minPrice, maxPrice, newAssetStatus)
	local isMarketBuyAndNonWhiteList
	local tabItems
	if FFlagToolboxAssetConfigurationMatchPluginFlow then
		isMarketBuyAndNonWhiteList = nil
		tabItems = ConfigTypes:getAssetconfigContent(
			screenFlowType,
			assetTypeEnum,
			self.props.isPackageAsset,
			owner
		)
	else
		isMarketBuyAndNonWhiteList = AssetConfigUtil.isBuyableMarketplaceAsset(assetTypeEnum) and (not allowedAssetTypesForRelease[assetTypeEnum.Name])
		tabItems = ConfigTypes:getAssetconfigContent(
			screenFlowType,
			assetTypeEnum,
			isMarketBuyAndNonWhiteList,
			self.props.isPackageAsset,
			owner
		)
	end

	local isLoading = self:isLoading()

	local canSave = checkCanSave(changeTable, name, description, price, minPrice, maxPrice,
		newAssetStatus, currentTab, screenFlowType, assetTypeEnum) and not isLoading

	local packagePermissionsWidth = -PREVIEW_WIDTH - Constants.SCROLLBAR_PADDING

	local isAudio = props.assetTypeEnum == Enum.AssetType.Audio
	local isModel = props.assetTypeEnum == Enum.AssetType.Model
	local isPlugin = FFlagToolboxAssetConfigurationMatchPluginFlow and props.assetTypeEnum == Enum.AssetType.Plugin

	local allowSelectPrivate
	local showSharing = false
	local localization = props.Localization
	-- Confirmation Dialog localization
	local publicConfirmationAcceptText = localization:getText("General", "Proceed")
	local publicConfirmationCancelText = localization:getText("General", "GoBack")
	local publicConfirmationHeading = localization:getText("AssetConfigSharing", "PublicConfirmationHeading")
	local publicConfirmationMessage = localization:getText("AssetConfigSharing", "PublicConfirmationMessage")
	local publicConfirmationTitle = localization:getText("AssetConfigSharing", "PublicConfirmationTitle")

	local isConfirmationDialogEnabled = state.isConfirmationDialogEnabled
	local confirmationDialogKey = state.confirmationDialogKey

	-- Publish Model Dialog localization
	local assetPublishAcceptText = localization:getText("AssetConfig", "PublishAssetDialogPublish")
	local assetPublishCancelText = localization:getText("General", "Cancel")
	local assetPublishDescription = localization:getText("AssetConfig", "PublishAssetDialogDescription")
	local assetPublishHeading = localization:getText("AssetConfig", "PublishAssetDialogHeading")
	local assetPublishTitle = localization:getText("General", "RobloxStudio")

	local isPublishAssetsDialogEnabled = state.isPublishAssetsDialogEnabled
	if isAudio then
		allowSelectPrivate = not isAssetPublicOriginalValue
	elseif isModel then
		allowSelectPrivate = true
	end
	if isAudio then
		showSharing = true
	end
	
	if isAudio then
		allowCopy = isAssetPublic
	end

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

		AssetConfigMakeAssetPublicMessageBox = if isPublishAssetsDialogEnabled then Roact.createElement(WarningDialog, {
			AcceptText = assetPublishAcceptText,
			CancelText = assetPublishCancelText,
			ConfirmationKey = nil,
			Description = assetPublishDescription,
			Enabled = isPublishAssetsDialogEnabled,
			Heading = assetPublishHeading,
			OnAccepted = self.onAssetPublishDialogAccepted,
			OnCanceled = self.onAssetPublishDialogCanceled,
			Title = assetPublishTitle,
		}) else nil,

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

			SharingConfirmationDialog = Roact.createElement(WarningDialog, {
				AcceptText = publicConfirmationAcceptText,
				CancelText = publicConfirmationCancelText,
				ConfirmationKey = confirmationDialogKey,
				Description = publicConfirmationMessage,
				Enabled = isConfirmationDialogEnabled,
				Heading = publicConfirmationHeading,
				OnAccepted = self.onDialogAccepted,
				OnCanceled = self.onDialogCanceled,
				Title = publicConfirmationTitle,
			}),

			Preview = Roact.createElement(PreviewArea, {
				TotalWidth = PREVIEW_WIDTH,

				TabItems = tabItems,

				CurrentTab = currentTab,

				PreviewType = previewType,
				ScreenFlowType = screenFlowType,
				AssetStatus = newAssetStatus,
				AssetId = assetId,
				IconFile = iconFile,
				AssetTypeEnum = assetTypeEnum,

				OnTabSelect = self.onTabSelect,
				ChooseThumbnail = self.chooseThumbnail,

				LayoutOrder = 1,
			}),

			VerticalLine = Roact.createElement("Frame", {
				Size = UDim2.new(0 , 2, 1, 0),

				BackgroundTransparency = 0,
				BackgroundColor3 = theme.divider.verticalLineColor,
				BorderSizePixel = 0,

				LayoutOrder = 2,
			}),

			LoadingIndicatorWrapper = isLoading and Roact.createElement(Container, {
				LayoutOrder = 3,
				Size = UDim2.new(1, -PREVIEW_WIDTH, 1, 0),
			}, {
				LoadingIndicator = Roact.createElement(LoadingIndicator, {
					Size = UDim2.new(0, 100, 0, 100),
					AnchorPoint = Vector2.new(0.5, 0.5),
					Position = UDim2.fromScale(0.5, 0.5),
				})
			}),

			PublishAsset = not isLoading and
				(ConfigTypes:isGeneral(currentTab) and Roact.createElement(PublishAsset, {
					Size = UDim2.new(1, -PREVIEW_WIDTH, 1, 0),

					allowSelectPrivate = allowSelectPrivate,
					assetId = assetId,
					name = name,
					description = description,
					tags = tags,
					owner = owner,
					genres = genres,
					allowCopy = allowCopy,
					copyOn = copyOn,
					allowComment = allowComment,
					commentOn = commentOn,
					isAssetPublic = isAssetPublic,

					assetTypeEnum = assetTypeEnum,
					onClickRefreshVerficationStatus = if FFlagToolboxAudioAssetConfigIdVerification then self.getVerficationStatus else nil,
					onNameChange = self.onNameChange,
					onDescChange = self.onDescChange,
					onTagsChange = self.onTagsChange,
					onOwnerSelected = self.onAccessChange,
					onGenreSelected = self.onGenreChange,
					onSharingChanged = self.onSharingChanged,
					toggleCopy = self.toggleCopy,
					toggleComment = self.toggleComment,

					displayOwnership = showOwnership,
					displayGenre = showGenre,
					displayCopy = showCopy,
					displayComment = showComment,
					displayAssetType = showAssetType,
					displayTags = showTags,
					displaySharing = showSharing,

					maximumItemTagsPerItem = props.maximumItemTagsPerItem,

					allowedAssetTypesForRelease = isPlugin and allowedAssetTypesForRelease or nil,
					newAssetStatus = isPlugin and newAssetStatus or nil,
					currentAssetStatus = isPlugin and currentAssetStatus or nil,

					onStatusChange = isPlugin and self.onStatusChange or nil,
					onPriceChange = isPlugin and self.onPriceChange or nil,
					price = isPlugin and price or nil,
					minPrice = isPlugin and minPrice or nil,
					maxPrice = isPlugin and maxPrice or nil,
					feeRate = isPlugin and feeRate or nil,
					isPriceValid = isPlugin and isPriceValid or nil,

					LayoutOrder = 3,
				})),

			Versions = ConfigTypes:isVersions(currentTab) and Roact.createElement(Versions, {
				Size = UDim2.new(1, -PREVIEW_WIDTH, 1, 0),

				assetId = assetId,

				LayoutOrder = 3,
			}),

			Sales = ConfigTypes:isSales(currentTab) and Roact.createElement(SalesPage, {
				size = UDim2.new(1, -PREVIEW_WIDTH, 1, 0),

				assetTypeEnum = props.assetTypeEnum,

				allowedAssetTypesForRelease = allowedAssetTypesForRelease,
				newAssetStatus = newAssetStatus,
				currentAssetStatus = currentAssetStatus,
				price = price,
				minPrice = minPrice,
				maxPrice = maxPrice,
				feeRate = feeRate,
				isPriceValid = isPriceValid,

				onStatusChange = self.onStatusChange,
				onPriceChange = self.onPriceChange,

				layoutOrder = 3,
			}),

			OverrideAsset = ConfigTypes:isOverride(currentTab) and Roact.createElement(OverrideAsset, {
				Size = UDim2.new(1, -PREVIEW_WIDTH, 1, 0),

				assetTypeEnum = assetTypeEnum,
				instances = props.instances,
				onOverrideAssetSelected = self.onOverrideAssetSelected,

				LayoutOrder = 3,
			}),

			PackagePermissions = ConfigTypes:isPermissions(currentTab) and Roact.createElement(Permissions, {
				Size = UDim2.new(1, packagePermissionsWidth, 1, 0),

				Owner = owner,
				AssetId = assetId,

				LayoutOrder = 3,
			}),
		}),

		Footer = Roact.createElement(AssetConfigFooter, {
			Size = UDim2.new(1, 0, 0, FOOTER_HEIGHT),
			CanSave = canSave,

			AssetId = state.overrideAssetId,

			TryCancel = self.tryCancelWithYield,
			TryPublish = self.tryPublishWithConfirmDialog,

			LayoutOrder = 2
		})
	})
end


AssetConfig = withContext({
	Focus = ContextServices.Focus,
	Localization = ContextServices.Localization,
	Stylizer = ContextServices.Stylizer,
})(AssetConfig)



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
		networkErrorAction = state.networkErrorAction or {},
		isPackageAsset = state.isPackageAsset,
		hasPackagePermission = props.assetId and state.packagePermissions[props.assetId] ~= nil,
		isItemTagsFeatureEnabled = state.isItemTagsFeatureEnabled,
		enabledAssetTypesForItemTags = state.enabledAssetTypesForItemTags,
		maximumItemTagsPerItem = state.maximumItemTagsPerItem,
		isUploadFeeEnabled = state.isUploadFeeEnabled,
		descendantPermissions = state.descendantPermissions,
	}
end

local function mapDispatchToProps(dispatch)
	local dispatchToProps = {
		getAssetConfigData = if not FFlagAssetConfigCleanupDuplicateActions then function(networkInterface, assetId)
			dispatch(GetMarketplaceInfoRequest(networkInterface, assetId))
		end else nil,

		getAssetDetails = function(networkInterface, assetId, isMarketBuy)
			dispatch(GetAssetDetailsRequest(networkInterface, assetId, isMarketBuy))
		end,

		getMarketplaceAsset = function(networkInterface, assetId)
			dispatch(GetMarketplaceInfoRequest(networkInterface, assetId))
		end,

		getAssetTags = function(networkInterface, assetId)
			dispatch(GetAssetItemTagsRequest(networkInterface, assetId))
		end,

		makeChangeRequest = function(setting, currentValue, newValue, comparisonFunc)
			dispatch(MakeChangeRequest(setting, currentValue, newValue, comparisonFunc))
		end,

		uploadCatalogItem = function(networkInterface, nameWithoutExtension, extension, description, assetTypeEnum, instances, tags)
			dispatch(UploadCatalogItemRequest(networkInterface, nameWithoutExtension, extension, description, assetTypeEnum, instances, tags))
		end,

		configureCatalogItem = function(networkInterface, assetId, nameWithoutExtension, description, fromStatus, toStatus, fromPrice, toPrice, fromItemTags, toTags)
			dispatch(ConfigureCatalogItemRequest(networkInterface, assetId, nameWithoutExtension, description, fromStatus, toStatus, fromPrice, toPrice, fromItemTags, toTags))
		end,

		-- For locale changes, we have no UI for them now, but we can add that in the future.
		configureMarketplaceItem = function(requestInfo)
			dispatch(PatchAssetRequest(requestInfo))
		end,

		uploadMarketplaceItem = function(requestInfo)
			dispatch(PostUploadAssetRequest(requestInfo))
		end,

		postRevertVersion = function(networkInterface, assetId, assetVersionNumber)
			dispatch(PostRevertVersionRequest(networkInterface, assetId, assetVersionNumber))
		end,

		setTab = function(tabItem)
			dispatch(SetAssetConfigTab(tabItem))
			dispatch(ClearChange(AssetConfigConstants.OVERRIDE_ASSET_ID))
		end,

		overrideAsset = function(networkInterface, assetid, type, instances)
			dispatch(PostOverrideAssetRequest(networkInterface, assetid, type, instances))
		end,

		getIsVerifiedCreator = function(networkInterface)
			dispatch(GetIsVerifiedCreatorRequest(networkInterface))
		end,

		getCatalogItemUploadFee = function(networkInterface, assetTypeEnum, instances)
			dispatch(AvatarAssetsGetUploadFeeRequest(networkInterface, assetTypeEnum, instances))
		end,

		uploadCatalogItemWithFee = function(networkInterface, nameWithoutExtension, extension, description, assetTypeEnum, instances, tags, groupId)
			dispatch(AvatarAssetsUploadRequest(networkInterface, nameWithoutExtension, extension, description, assetTypeEnum, instances, tags, groupId))
		end,

		dispatchPostPackageMetadataRequest = function(networkInterface, assetId)
			dispatch(PostPackageMetadataRequest(networkInterface, assetId))
		end,

		updateStore = function(storeData)
			dispatch(UpdateAssetConfigStore(storeData))
		end,

		dispatchGetPackageCollaboratorsRequest = function(networkInterface, assetId)
			dispatch(GetPackageCollaboratorsRequest(networkInterface, assetId))
		end,

		dispatchPutPackagePermissionsRequest = function(networkInterface, assetId)
			dispatch(PutPackagePermissionsRequest(networkInterface, assetId))
		end,

		dispatchPostAssetCheckPermissions = function(networkInterface, assetId)
			dispatch(PostAssetCheckPermissions(networkInterface, assetId))
		end,

		dispatchGetGroupMetadata = function(groupId)
            dispatch(GetGroupMetadata(groupId))
		end,

		dispatchGetGroupRoleInfo = function(networkInterface, groupId)
            dispatch(GetGroupRoleInfo(networkInterface, groupId))
        end,

		dispatchGetUsername = function(userId)
			dispatch(GetUsername(userId))
		end,

		dispatchPatchMakeAssetPublicRequest = function(networkInterface, assetId)
			dispatch(PatchMakeAssetPublicRequest(networkInterface, assetId))
		end,

		dispatchGetAssetPermissionsRequest = function(networkInterface, assetId)
			dispatch(GetAssetPermissionsRequest(networkInterface, assetId))
		end,

		dispatchSetDescendantPermissions = function(descendantPermissions) 
			dispatch(SetDescendantPermissions(descendantPermissions))
		end,

		dispatchGetVerificationStatus = function(networkInterface)
			dispatch(GetVerificationStatusRequest(networkInterface))
		end,
	}

	dispatchToProps["uploadAnimationAsset"] = function(requestInfo)
		dispatch(PostUploadAnimationRequest(requestInfo))
	end

	dispatchToProps["overrideAnimationAsset"] = function(networkInterface, assetid, instance)
		dispatch(PostOverrideAnimationRequest(networkInterface, assetid, instance))
	end

	return dispatchToProps
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(AssetConfig)
