--[[
	This component is responsible for managing the ConvertToPackageWindow page.
	It will need to display tabs, and change pages according to current tab selection.

	Necessary props:
	assetId, number, will be used to request assetData on didMount.
]]
local FFlagUpdateConvertToPackageToDFContextServices = game:GetFastFlag("UpdateConvertToPackageToDFContextServices")
local FFlagUpdateFocusToUsePropsConvertToPackage = game:DefineFastFlag("UpdateFocusToUsePropsConvertToPackage", false)
local Plugin = script.Parent.Parent.Parent.Parent
local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
local RoactRodux = require(Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = if FFlagUpdateConvertToPackageToDFContextServices then ContextServices.withContext else require(Plugin.Src.ContextServices.withContext)

local Components = Plugin.Src.Components
local ConvertToPackageWindow = Components.ConvertToPackageWindow
local PreviewArea = require(ConvertToPackageWindow.PreviewArea)
local PublishAsset = require(ConvertToPackageWindow.PublishAsset)
local AssetConfigFooter = require(ConvertToPackageWindow.AssetConfigFooter)
local MessageBox = require(Components.MessageBox.MessageBox)
local SetAssetName = require(Plugin.Src.Actions.SetAssetName)

local Util = Plugin.Src.Util
local Constants = require(Util.Constants)

local getPluginGui = if FFlagUpdateConvertToPackageToDFContextServices then nil else require(Plugin.Src.ContextServices.PluginContext).getPluginGui
local getUserId = require(Plugin.Src.Util.getUserId)

local MakeChangeRequest = require(Plugin.Src.Thunks.MakeChangeRequest)
local UploadConvertToPackageRequest = require(Plugin.Src.Thunks.UploadConvertToPackageRequest)

local AssetConfig = Roact.PureComponent:extend("AssetConfig")

local FOOTER_HEIGHT = 65
local PREVIEW_WIDTH = 240
local DEFAULT_GENRE = "All"

function AssetConfig:init(props)
	local defaultOwner = nil
	if game.CreatorId == 0 then
		-- default owner is local user if game has no owner
		defaultOwner = { creatorId = getUserId() }
	else
		-- default owner is game owner
		defaultOwner = { creatorId = game.CreatorId }
	end
	self.state = {
		assetId = nil,

		-- Those states should be managed by the most common parent. In this case, assetConfig.
		name = nil,
		description = nil,
		owner = defaultOwner,
		genres = {
			DEFAULT_GENRE
		},
		allowCopy = false, -- Enable the copy toggle if the flag to modify copy behavior is off or user is verified.
		copyOn = false,
		allowComment = true,  -- Default to allow comment, but off.
		commentOn = nil,
		status = nil,
		isShowChangeDiscardMessageBox = false,
		groupId =  (game.CreatorType == Enum.CreatorType.Group and game.CreatorId) or nil, -- if game owner is group, then set groupId
	}
		-- Used to fetching name before publish
	self.tryPublish = function()
		local props = self.props
		local state = self.state
		local genre = (state.genres or {})[1]
		local genreTypeId = Enum.Genre[genre].Value + 1 -- All is 1 based
		props.sendConvertToPackageItem(
			0, 								-- empty or 0 for new asset
			state.name or props.assetName,
			state.description,
			genreTypeId, 					-- Convert into a ID
			state.copyOn,
			state.commentOn,
			state.groupId,					-- Used only for upload group asset.
			props.instances,
			props.clonedInstances
		)
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

	self.closeAssetConfig = function()
		-- Close the assetConfig
		local pluginGui

		if FFlagUpdateFocusToUsePropsConvertToPackage and FFlagUpdateConvertToPackageToDFContextServices then
			pluginGui = self.props.pluginGui
		elseif FFlagUpdateConvertToPackageToDFContextServices then
			pluginGui = self.props.Plugin:get()
		else
			pluginGui = getPluginGui(self)
		end
		-- And we will let AssetConfigWrapper to handle the onClose and unMount.
		pluginGui.Enabled = false
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

	self.onAccessChange = function(item)
		local groupId = nil
		if item.creatorType == "Group" then
			groupId = item.creatorId
		end

		self:setState({
			owner = { creatorId = item.creatorId },
			groupId = (groupId or ""),
		})
	end

	self.toggleComment = function(newCommentStatus)
		self:setState({
			commentOn = newCommentStatus
		})

		self.props.makeChangeRequest("AssetConfigComment", self.props.assetConfigData.EnableComments or false, newCommentStatus)
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
end

function AssetConfig:didMount()
	self:attachXButtonCallback()
end

function AssetConfig:willUnmount()
	self:detachXButtonCallback()
end

local function canSave(name,description)
	local nameDataIsOk = (#name <= Constants.NAME_CHARACTER_LIMIT) and (tostring(name) ~= "")
	local descriptionDataIsOk = #description <= Constants.DESCRIPTION_CHARACTER_LIMIT
	return nameDataIsOk and descriptionDataIsOk
end

-- Replace the MessageBox's props based on the networkError.
local function getMessageBoxProps(localization, cancelFunc, closeFunc)
	local messageProps = {
		Name = "AssetConfigMessageBox",
		TextSize = Constants.FONT_SIZE_MEDIUM,
		Font = Constants.FONT,
		onClose = cancelFunc
	}

	messageProps.Title = localization:getText("Action", "Discard")
	messageProps.Text = localization:getText("General", "DiscardMessage")

	messageProps.buttons = {
		{
			Text = localization:getText("Action", "Cancel"),
			Font = Constants.FONT,
			TextSize = Constants.FONT_SIZE_MEDIUM,
			action = "no",
			OnClick = cancelFunc
		}, {
			Text = localization:getText("Action", "Discard"),
			Font = Constants.FONT,
			TextSize = Constants.FONT_SIZE_MEDIUM,
			OnClick = closeFunc
		}
	}

	return messageProps
end

function AssetConfig:render()
	local style = self.props.Stylizer

	local function renderWithContext(localization, theme)
		local props = self.props
		local state = self.state
		local Size = props.Size
		local assetId = props.assetId
		local name = state.name or props.assetName or ""
		local description = state.description or ""
		local owner = state.owner
		local allowComment = state.allowComment
		local commentOn = state.commentOn
		local isShowChangeDiscardMessageBox = state.isShowChangeDiscardMessageBox

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
				getMessageBoxProps(localization, self.onMessageBoxClosed, self.closeAssetConfig)),

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
					LayoutOrder = 1
				}),

				VerticalLine = Roact.createElement("Frame", {
					Size = UDim2.new(0 , 2, 1, 0),

					BackgroundTransparency = 0,
					BackgroundColor3 = theme.divider.verticalLineColor,
					BorderSizePixel = 0,

					LayoutOrder = 2,
				}),

				PublishAsset = Roact.createElement(PublishAsset, {
					Size = UDim2.new(1, -PREVIEW_WIDTH, 1, 0),

					assetId = assetId,
					name = name,
					description = description,
					owner = owner,
					allowComment = allowComment,
					commentOn = commentOn,
					onNameChange = self.onNameChange,
					onDescChange = self.onDescChange,
					onOwnerSelected = self.onAccessChange,
					toggleComment = self.toggleComment,
					LayoutOrder = 3,
				})
			}),

			Footer = Roact.createElement(AssetConfigFooter, {
				Size = UDim2.new(1, 0, 0, FOOTER_HEIGHT),
				CanSave = canSave(name, description),

				tryCancel = self.tryCancelWithYield,
				tryPublish = self.tryPublish,

				LayoutOrder = 2
			})
		})
	end

	return if FFlagUpdateConvertToPackageToDFContextServices then renderWithContext(self.props.Localization, style) else withContext(renderWithContext)
end

if FFlagUpdateConvertToPackageToDFContextServices then
	AssetConfig = withContext({
		Localization = ContextServices.Localization,
		Plugin = if FFlagUpdateFocusToUsePropsConvertToPackage then nil else ContextServices.Plugin,
		Stylizer = ContextServices.Stylizer,
	})(AssetConfig)
end

local function mapStateToProps(state, props)
	state = state or {}

	local assetConfigData = state.AssetConfigReducer.assetConfigData or {}
	local changed = state.AssetConfigReducer.changed

	return {
		assetConfigData = assetConfigData,
		currentScreen = state.AssetConfigReducer.currentScreen,
		changeTable = changed,
		networkError = state.NetworkReducer.networkError,
		networkErrorAction = state.NetworkReducer.networkErrorAction,
		instances = state.AssetConfigReducer.instances,
		clonedInstances = state.AssetConfigReducer.clonedInstances
	}
end

local function mapDispatchToProps(dispatch)
	return {
		makeChangeRequest = function(setting, currentValue, newValue)
			dispatch(MakeChangeRequest(setting, currentValue, newValue))
		end,
		sendConvertToPackageItem = function(assetid, name, description, genreTypeId, ispublic, allowComments, groupId, instances, clonedInstances)
			dispatch(SetAssetName(name))
			dispatch(UploadConvertToPackageRequest(assetid, name, description, genreTypeId, ispublic, allowComments, groupId, instances, clonedInstances))
		end
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(AssetConfig)
