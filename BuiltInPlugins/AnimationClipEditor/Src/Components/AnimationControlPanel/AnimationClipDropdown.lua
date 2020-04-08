--[[
	Represents the label for the current Animation Clip being edited,
	and spawns the menu used to load and save animations.

	This component is also responsible for the prompts related to saving
	and creating a new animation when an animation is already loaded.

	Properties:
		string AnimationName = name of the current clip being edited
		int LayoutOrder = display order of this frame, if in a layout
]]

local NEW_KEY = newproxy(true)
local IMPORT_KEY = newproxy(true)
local IMPORT_FBX_KEY = newproxy(true)

local Plugin = script.Parent.Parent.Parent.Parent
local UILibrary = require(Plugin.UILibrary)

local Roact = require(Plugin.Roact)
local RoactRodux = require(Plugin.RoactRodux)
local Constants = require(Plugin.Src.Util.Constants)
local AnimationData = require(Plugin.Src.Util.AnimationData)
local PADDING = UDim.new(0, Constants.INDENT_PADDING)

local PluginContext = require(Plugin.Src.Context.Plugin)
local getPlugin = PluginContext.getPlugin

local Localizing = UILibrary.Localizing
local withLocalization = Localizing.withLocalization

local Theme = require(Plugin.Src.Context.Theme)
local withTheme = Theme.withTheme

local AnimationClipMenu = require(Plugin.Src.Components.AnimationClipMenu)
local ContextButton = require(Plugin.Src.Components.ContextButton)
local FocusedPrompt = require(Plugin.Src.Components.EditEventsDialog.FocusedPrompt)
local TextEntryPrompt = require(Plugin.Src.Components.TextEntryPrompt)
local LoadKeyframeSequence = require(Plugin.Src.Thunks.Exporting.LoadKeyframeSequence)
local SaveKeyframeSequence = require(Plugin.Src.Thunks.Exporting.SaveKeyframeSequence)
local ImportKeyframeSequence = require(Plugin.Src.Thunks.Exporting.ImportKeyframeSequence)
local ImportFBXAnimation = require(Plugin.Src.Thunks.Exporting.ImportFBXAnimation)
local LoadAnimationData = require(Plugin.Src.Thunks.LoadAnimationData)
local SetIsPlaying = require(Plugin.Src.Actions.SetIsPlaying)
local SetIsDirty = require(Plugin.Src.Actions.SetIsDirty)

local AnimationClipDropdown = Roact.PureComponent:extend("AnimationClipDropdown")

function AnimationClipDropdown:init()
	self.state = {
		showMenu = false,
		showSaveAsPrompt = false,
		showCreateNewPrompt = false,
		overwriteName = nil,
		loadingName = nil,
	}

	self.showMenu = function()
		self.props.SetIsPlaying(false)
		self:setState({
			showMenu = true,
		})
	end

	self.hideMenu = function()
		self:setState({
			showMenu = false,
		})
	end

	self.showOverwritePrompt = function(name)
		self:setState({
			overwriteName = name,
		})
	end

	self.hideOverwritePrompt = function()
		self:setState({
			overwriteName = Roact.None,
		})
	end

	self.showSaveAsPrompt = function()
		self:setState({
			showSaveAsPrompt = true,
		})
	end

	self.hideSaveAsPrompt = function()
		self:setState({
			showSaveAsPrompt = false,
		})
	end

	self.showCreateNewPrompt = function()
		self:setState({
			showCreateNewPrompt = true,
		})
	end

	self.hideCreateNewPrompt = function()
		self:setState({
			showCreateNewPrompt = false,
		})
	end

	self.showLoadNewPrompt = function(name)
		self:setState({
			loadingName = name,
		})
	end

	self.hideLoadNewPrompt = function()
		self:setState({
			loadingName = Roact.None,
		})
	end

	self.createNew = function()
		if self.props.IsDirty then
			self.showLoadNewPrompt(NEW_KEY)
		else
			self.showCreateNewPrompt()
		end
	end

	self.importRequested = function()
		if self.props.IsDirty then
			self.showLoadNewPrompt(IMPORT_KEY)
		else
			local plugin = getPlugin(self)
			self.props.ImportKeyframeSequence(plugin)
		end
	end

	self.importFbxRequested = function()
		if self.props.IsDirty then
			self.showLoadNewPrompt(IMPORT_FBX_KEY)
		else
			local plugin = getPlugin(self)
			self.props.ImportFBXAnimation(plugin)
		end
	end

	self.createNew = function()
		if self.props.IsDirty then
			self.showLoadNewPrompt(NEW_KEY)
		else
			self.showCreateNewPrompt()
		end
	end

	self.loadNew = function(name)
		if self.props.IsDirty then
			self.showLoadNewPrompt(name)
		else
			self.props.LoadKeyframeSequence(name)
		end
	end

	self.handleLoadNewPrompt = function()
		local props = self.props
		local state = self.state
		local loadingName = state.loadingName
		local plugin = getPlugin(self)

		if loadingName == NEW_KEY then
			self.hideLoadNewPrompt()
			self.showCreateNewPrompt()
		elseif loadingName == IMPORT_KEY then
			self.hideLoadNewPrompt()
			props.ImportKeyframeSequence(plugin)
		elseif loadingName == IMPORT_FBX_KEY then
			self.hideLoadNewPrompt()
			props.ImportFBXAnimation(plugin)
		else
			props.LoadKeyframeSequence(loadingName)
			self.hideLoadNewPrompt()
		end
	end
end

function AnimationClipDropdown:render()
	return withLocalization(function(localization)
		return withTheme(function(theme)
			local props = self.props
			local state = self.state

			local animationName = props.AnimationName
			local layoutOrder = props.LayoutOrder

			local dropdownTheme = theme.dropdownTheme

			local showMenu = state.showMenu
			local showSaveAsPrompt = state.showSaveAsPrompt
			local showCreateNewPrompt = state.showCreateNewPrompt
			local overwriteName = state.overwriteName
			local loadingName = state.loadingName

			return Roact.createElement("ImageButton", {
				Size = UDim2.new(1, -Constants.CONTROLS_WIDTH - Constants.TIME_DISPLAY_WIDTH, 1, 0),
				BackgroundTransparency = 1,
				ImageTransparency = 1,
				AutoButtonColor = false,
				LayoutOrder = layoutOrder,

				[Roact.Event.Activated] = self.showMenu,
			}, {
				Padding = Roact.createElement("UIPadding", {
					PaddingLeft = PADDING,
					PaddingRight = PADDING,
				}),

				AnimationClipLabel = Roact.createElement("TextLabel", {
					Size = UDim2.new(1, -Constants.TRACKLIST_BUTTON_SIZE - Constants.INDENT_PADDING, 1, 0),
					BackgroundTransparency = 1,

					Text = animationName,
					TextTruncate = Enum.TextTruncate.AtEnd,
					TextSize = dropdownTheme.textSize,
					Font = theme.font,
					TextColor3 = dropdownTheme.textColor,
					TextXAlignment = Enum.TextXAlignment.Left,
				}),

				ContextButton = Roact.createElement(ContextButton, {
					AnchorPoint = Vector2.new(1, 0.5),
					Position = UDim2.new(1, 0, 0.5, 0),
					OnActivated = self.showMenu,
				}),

				AnimationClipMenu = Roact.createElement(AnimationClipMenu, {
					ShowMenu = showMenu,
					CurrentAnimation = animationName,
					OnMenuOpened = self.hideMenu,
					OnOverwriteRequested = self.showOverwritePrompt,
					OnSaveAsRequested = self.showSaveAsPrompt,
					OnCreateNewRequested = self.createNew,
					OnLoadRequested = self.loadNew,
					OnImportRequested = self.importRequested,
					OnImportFbxRequested = self.importFbxRequested,
				}),

				CreateNewPrompt = showCreateNewPrompt and Roact.createElement(TextEntryPrompt, {
					PromptText = localization:getText("Title", "CreateNew"),
					InputText = localization:getText("Dialog", "AnimationName"),
					Text = Constants.DEFAULT_ANIMATION_NAME,
					Buttons = {
						{Key = false, Text = localization:getText("Dialog", "Cancel")},
						{Key = true, Text = localization:getText("Dialog", "Create"), Style = "Primary"},
					},
					OnTextSubmitted = function(text)
						self.hideCreateNewPrompt()
						local newData = AnimationData.newRigAnimation(text)
						props.LoadAnimationData(newData)
						props.SetIsDirty(false)

						props.Analytics:onCreateNewAnimation(text)
					end,
					OnClose = self.hideCreateNewPrompt,
				}),

				SaveAsPrompt = showSaveAsPrompt and Roact.createElement(TextEntryPrompt, {
					PromptText = localization:getText("Title", "SaveAsNew"),
					InputText = localization:getText("Dialog", "AnimationName"),
					NoticeText = localization:getText("Dialog", "SaveLocation"),
					Text = animationName,
					Buttons = {
						{Key = false, Text = localization:getText("Dialog", "Cancel")},
						{Key = true, Text = localization:getText("Dialog", "Save"), Style = "Primary"},
					},
					OnTextSubmitted = function(text)
						self.hideSaveAsPrompt()
						props.SaveKeyframeSequence(text)
					end,
					OnClose = self.hideSaveAsPrompt,
				}),

				OverwritePrompt = overwriteName and Roact.createElement(FocusedPrompt, {
					PromptText = localization:getText("Menu", "Overwrite", overwriteName),
					Buttons = {
						{Key = false, Text = localization:getText("Dialog", "No")},
						{Key = true, Text = localization:getText("Dialog", "Yes"), Style = "Primary"},
					},
					OnButtonClicked = function(didSave)
						self.hideOverwritePrompt()
						if didSave then
							props.SaveKeyframeSequence(overwriteName)
						end
					end,
					OnClose = self.hideOverwritePrompt,
				}),

				LoadNewPrompt = loadingName and Roact.createElement(TextEntryPrompt, {
					PromptText = localization:getText("Title", "ConfirmSave"),
					InputText = localization:getText("Dialog", "AnimationName"),
					NoticeText = localization:getText("Dialog", "SaveLocation"),
					Text = animationName,
					Buttons = {
						{Key = "Delete", Text = localization:getText("Dialog", "Delete")},
						{Key = false, Text = localization:getText("Dialog", "Cancel")},
						{Key = true, Text = localization:getText("Dialog", "Save"), Style = "Primary"},
					},
					OnButtonClicked = function(text)
						if text == "Delete" then
							self.handleLoadNewPrompt()
						end
					end,
					OnTextSubmitted = function(text)
						props.SaveKeyframeSequence(text)
						self.handleLoadNewPrompt()
					end,
					OnClose = self.hideLoadNewPrompt,
				}),
			})
		end)
	end)
end

local function mapStateToProps(state, props)
	return {
		IsDirty = state.Status.IsDirty,
		Analytics = state.Analytics,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		LoadAnimationData = function(name)
			dispatch(LoadAnimationData(name))
		end,

		LoadKeyframeSequence = function(name)
			dispatch(LoadKeyframeSequence(name))
		end,

		SaveKeyframeSequence = function(name)
			dispatch(SaveKeyframeSequence(name))
		end,

		SetIsPlaying = function(isPlaying)
			dispatch(SetIsPlaying(isPlaying))
		end,

		ImportKeyframeSequence = function(plugin)
			dispatch(ImportKeyframeSequence(plugin))
		end,

		ImportFBXAnimation = function(plugin)
			dispatch(ImportFBXAnimation(plugin))
		end,

		SetIsDirty = function(isDirty)
			dispatch(SetIsDirty(isDirty))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(AnimationClipDropdown)