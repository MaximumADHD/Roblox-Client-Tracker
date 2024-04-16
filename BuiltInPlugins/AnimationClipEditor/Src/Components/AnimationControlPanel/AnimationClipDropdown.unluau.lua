-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = newproxy(true)
local var1 = newproxy(true)
local var2 = newproxy(true)
local var3 = newproxy(true)
local var4 = script:FindFirstAncestor("AnimationClipEditor")
local var5 = require(var4.Packages.Roact)
local var6 = require(var4.Src.Util.Constants)
local var7 = require(var4.Src.Util.AnimationData)
local var8 = UDim.new(0, var6.INDENT_PADDING)
local var9 = require(var4.Packages.Framework).ContextServices
local var10 = var4.Src.Actions
local var11 = require(var10.SetInReviewState)
local var12 = require(var10.SetIsDirty)
local var13 = require(var10.SetIsLegacyAnimSaves)
local var14 = require(var10.SetPlayState)
local var15 = require(var10.SetReduceKeyframesDialogMode)
local var16 = var4.Src.Components
local var17 = require(var16.Toast.ActionToast)
local var18 = require(var16.AnimationClipMenu)
local var19 = require(var16.ContextButton)
local var20 = require(var16.EditEventsDialog.FocusedPrompt)
local var21 = require(var16.TextEntryPrompt)
local var22 = var4.Src.Thunks
local var23 = require(var22.Exporting.CreateFromVideoAndImportFBXAnimationUserMayChooseModel)
local var24 = require(var22.Exporting.ImportFBXAnimationUserMayChooseModel)
local var25 = require(var22.Exporting.ImportKeyframeSequence)
local var26 = require(var22.Exporting.ImportLoadedFBXAnimation)
local var27 = require(var22.Exporting.LoadAnimation)
local var28 = require(var22.LoadAnimationData)
local var29 = require(var22.SanitizeAnimation)
local var30 = require(var22.Exporting.SaveAnimation)
local var31 = var5.PureComponent:extend("AnimationClipDropdown")
function var31.init(arg1)
   local var39 = {}
   var39.showMenu = false
   var39.showSaveAsPrompt = false
   var39.showCreateNewPrompt = false
   var39.showImportAnimModelChoicePrompt = false
   var39.showPromotePrompt = false
   var39.overwriteName = nil
   var39.loadingName = nil
   var39.isActionLegacyAnimSaves = nil
   var39.showCreateAnimationFromVideoTutorial = false
   arg1.state = var39
   function arg1.showMenu()
      if not arg1.props.ReadOnly then
         arg1.props.SetPlayState(var6.PLAY_STATE.Pause)
         local var59 = {}
         var59.showMenu = true
         arg1:setState(var59)
      end
   end
   
   function arg1.hideMenu()
      local var63 = {}
      var63.showMenu = false
      arg1:setState(var63)
   end
   
   function arg1.showOverwritePrompt(arg1, arg2)
      local var69 = {}
      var69.overwriteName = arg1
      var69.isActionLegacyAnimSaves = arg2
      arg1:setState(var69)
   end
   
   function arg1.hideOverwritePrompt()
      local var72 = {}
      var72.overwriteName = var5.None
      var72.isActionLegacyAnimSaves = var5.None
      arg1:setState(var72)
   end
   
   function arg1.showSaveAsPrompt()
      local var79 = {}
      var79.showSaveAsPrompt = true
      arg1:setState(var79)
   end
   
   function arg1.hideSaveAsPrompt()
      local var83 = {}
      var83.showSaveAsPrompt = false
      arg1:setState(var83)
   end
   
   function arg1.showImportAnimModelChoicePrompt()
      local var87 = {}
      var87.showImportAnimModelChoicePrompt = true
      arg1:setState(var87)
   end
   
   function arg1.hideImportAnimModelChoicePrompt()
      local var91 = {}
      var91.showImportAnimModelChoicePrompt = false
      arg1:setState(var91)
   end
   
   function arg1.showReduceKeyframesDialog()
      arg1.props.SetReduceKeyframesDialogMode(var6.REDUCE_KEYFRAMES_DIALOG_MODE.FromMenu)
   end
   
   function arg1.showCreateNewPrompt()
      local var101 = {}
      var101.showCreateNewPrompt = true
      arg1:setState(var101)
   end
   
   function arg1.hideCreateNewPrompt()
      local var105 = {}
      var105.showCreateNewPrompt = false
      arg1:setState(var105)
   end
   
   function arg1.showPromotePrompt()
      local var109 = {}
      var109.showPromotePrompt = true
      arg1:setState(var109)
   end
   
   function arg1.hidePromotePrompt()
      local var113 = {}
      var113.showPromotePrompt = false
      arg1:setState(var113)
   end
   
   function arg1.showLoadNewPrompt(arg1, arg2)
      local var119 = {}
      var119.loadingName = arg1
      var119.isActionLegacyAnimSaves = arg2
      arg1:setState(var119)
   end
   
   function arg1.hideLoadNewPrompt()
      local var122 = {}
      var122.loadingName = var5.None
      var122.isActionLegacyAnimSaves = var5.None
      arg1:setState(var122)
   end
   
   function arg1.setShowCreateAnimationFromVideoTutorial(arg1)
      local var130 = {}
      var130.showCreateAnimationFromVideoTutorial = arg1
      arg1:setState(var130)
   end
   
   function arg1.continueAfterCreateAnimationFromVideoTutorial()
      local var0 = arg1.props
      var0.SetInReviewState(false)
      var0.CreateFromVideoAndImportFBXAnimationUserMayChooseModel(var0.Plugin, arg1, var0.Analytics)
   end
   
   function arg1.importRequested()
      if arg1.props.IsDirty then
         arg1.showLoadNewPrompt(var1)
      end
      arg1.props.SetInReviewState(false)
      local var154 = arg1.props
      var154 = arg1.props.Plugin
      var154.ImportKeyframeSequence(var154, arg1.props.Analytics)
   end
   
   function arg1.importFbxRequested()
      if arg1.props.IsDirty then
         arg1.showLoadNewPrompt(var2)
      end
      arg1.props.SetInReviewState(false)
      local var173 = arg1.props
      var173 = arg1.props.Plugin
      var173.ImportFBXAnimationUserMayChooseModel(var173, arg1, arg1.props.Analytics)
   end
   
   function arg1.startAnimationFromVideoFlow()
      arg1.props.Analytics:report("onAnimationEditorImportVideoCreate")
      arg1.setShowCreateAnimationFromVideoTutorial(true)
   end
   
   function arg1.createFromVideoRequested()
      if arg1.props.IsDirty then
         arg1.showLoadNewPrompt(var3)
      end
      arg1.props.SetInReviewState(false)
      arg1.startAnimationFromVideoFlow()
   end
   
   function arg1.createNew()
      if arg1.props.IsDirty then
         arg1.showLoadNewPrompt(var0)
      end
      arg1.props.SetInReviewState(false)
      arg1.showCreateNewPrompt()
   end
   
   function arg1.loadNew(arg1, arg2)
      local var213 = arg1
      if var213.props.IsDirty then
         local var216 = arg1
         var216 = arg1
         var213 = arg2
         var216.showLoadNewPrompt(var216, var213)
      end
      arg1.props.SetInReviewState(false)
      local var222 = arg1
      local var223 = var222.props
      var223 = arg1
      var222 = arg2
      var223.LoadAnimation(var223, var222, arg1.props.Analytics)
   end
   
   function arg1.handleLoadNewPrompt()
      local var0 = arg1.props
      local var1 = arg1.state
      local var2 = var1.loadingName
      local var3 = arg1.props.Plugin
      arg1.hideLoadNewPrompt()
      local var239 = arg1
      var239.props.SetInReviewState(false)
      if var2 == "hideLoadNewPrompt" then
         arg1.showCreateNewPrompt()
      end
      if var2 == "hideLoadNewPrompt" then
         var0.ImportKeyframeSequence(var3, var0.Analytics)
      end
      if var2 == "hideLoadNewPrompt" then
         var0.ImportFBXAnimationUserMayChooseModel(var3, arg1, var0.Analytics)
      end
      if var2 == "hideLoadNewPrompt" then
         arg1.startAnimationFromVideoFlow()
      end
      var239 = var1.isActionLegacyAnimSaves
      var0.LoadAnimation(var2, var239, var0.Analytics)
   end
   
   function arg1.onSanitizeAnimation()
      local var0 = arg1.props
      var0.SanitizeAnimation(var0.Analytics)
   end
   
end

local function fun37(arg1)
   local var0 = arg1.props.Localization
   local var1 = arg1.props
   local var2 = arg1.state
   local var3 = var1.Stylizer
   local var4 = var1.AnimationName
   local var5 = var3.dropdownTheme
   local var6 = var2.overwriteName
   local var7 = var2.isActionLegacyAnimSaves
   local var8 = var2.showCreateAnimationFromVideoTutorial
   local var9 = false
   if var8 then
      var9 = game:GetService("AnimationFromVideoCreatorStudioService"):IsAgeRestricted()
      if var9 then
         local var0 = false
      end
   end
   local var296 = {}
   var296.Size = UDim2.new(1, var6.CONTROLS_WIDTH - var6.TIME_DISPLAY_WIDTH, 1, 0)
   var296.BackgroundTransparency = 1
   var296.ImageTransparency = 1
   var296.AutoButtonColor = false
   var296.LayoutOrder = var1.LayoutOrder
   var5.Event.Activated = arg1.showMenu
   local var315 = {}
   local var319 = {}
   var319.PaddingLeft = var8
   var319.PaddingRight = var8
   var315.Padding = var5.createElement("UIPadding", var319)
   local var326 = {}
   var326.Size = UDim2.new(1, var6.TRACKLIST_BUTTON_SIZE - var6.INDENT_PADDING, 1, 0)
   var326.BackgroundTransparency = 1
   var326.Text = var4
   var326.TextTruncate = Enum.TextTruncate.AtEnd
   var326.TextSize = var5.textSize
   var326.Font = var3.font
   var326.TextColor3 = var5.textColor
   var326.TextXAlignment = Enum.TextXAlignment.Left
   var315.AnimationClipLabel = var5.createElement("TextLabel", var326)
   local var348 = {}
   var348.AnchorPoint = Vector2.new(1, 0.5)
   var348.Position = UDim2.new(1, 0, 0.5, 0)
   var348.OnActivated = arg1.showMenu
   var315.ContextButton = var5.createElement(var19, var348)
   local var364 = {}
   var364.ShowMenu = var2.showMenu
   var364.CurrentAnimation = var4
   var364.IsLegacyAnimSaves = var1.IsLegacyAnimSaves
   var364.IsChannelAnimation = var1.IsChannelAnimation
   var364.OnMenuOpened = arg1.hideMenu
   var364.OnOverwriteRequested = arg1.showOverwritePrompt
   var364.OnSaveAsRequested = arg1.showSaveAsPrompt
   var364.OnCreateNewRequested = arg1.createNew
   var364.OnLoadRequested = arg1.loadNew
   var364.OnImportRequested = arg1.importRequested
   var364.OnImportFbxRequested = arg1.importFbxRequested
   var364.OnCreateFromVideoRequested = arg1.createFromVideoRequested
   var364.OnPromoteRequested = arg1.showPromotePrompt
   var364.OnReduceKeyframesRequested = arg1.showReduceKeyframesDialog
   var364.OnSanitizeAnimation = arg1.onSanitizeAnimation
   local var376 = var5.createElement(var18, var364)
   var315.AnimationClipMenu = var376
   var376 = var2.showCreateNewPrompt
   if var376 then
      local var380 = {}
      var380.PromptText = var0:getText("Title", "CreateNew")
      var380.InputText = var0:getText("Dialog", "AnimationName")
      var380.Text = var0:getText("Title", "DefaultAnimationName")
      local var0 = {}
      var0.Key = false
      var0.Text = var0:getText("Dialog", "Cancel")
      var0.Style = "Round"
      local var1 = {}
      var1.Key = true
      var1.Text = var0:getText("Dialog", "Create")
      var1.Style = "RoundPrimary"
      var380.Buttons = {}
      function var380.OnTextSubmitted()
         if not arg1.props.ReadOnly then
            arg1.props.SetPlayState(var6.PLAY_STATE.Pause)
            local var418 = {}
            var418.showMenu = true
            arg1:setState(var418)
         end
      end
      
      var380.OnClose = arg1.hideCreateNewPrompt
      local var2 = var5.createElement(var21, var380)
   end
   var315.CreateNewPrompt = var376
   var376 = var2.showSaveAsPrompt
   if var376 then
      local var426 = {}
      var426.PromptText = var0:getText("Title", "SaveAsNew")
      var426.InputText = var0:getText("Dialog", "AnimationName")
      var426.NoticeText = var0:getText("Dialog", "SaveLocation")
      var426.Text = var4
      local var0 = {}
      var0.Key = false
      var0.Text = var0:getText("Dialog", "Cancel")
      var0.Style = "Round"
      local var1 = {}
      var1.Key = true
      var1.Text = var0:getText("Dialog", "Save")
      var1.Style = "RoundPrimary"
      var426.Buttons = {}
      function var426.OnTextSubmitted()
         local var455 = {}
         var455.showMenu = false
         arg1:setState(var455)
      end
      
      var426.OnClose = arg1.hideSaveAsPrompt
      local var2 = var5.createElement(var21, var426)
   end
   var315.SaveAsPrompt = var376
   var376 = var2.showImportAnimModelChoicePrompt
   if var376 then
      local var463 = {}
      var463.Text = var0:getText("Toast", "AnimationImportModelsDiffer")
      var463.ButtonWidth = var6.PROMPT_BUTTON_SIZE.X * 1.5
      local var0 = {}
      var0.Key = true
      var0.Text = var0:getText("Toast", "AnimationImportUseFBX")
      var0.Style = "Round"
      local var1 = {}
      var1.Key = false
      var1.Text = var0:getText("Toast", "AnimationImportUseSelected")
      var1.Style = "Round"
      var463.Buttons = {}
      function var463.OnButtonClicked(arg1, arg2)
         local var490 = {}
         var490.overwriteName = arg1
         var490.isActionLegacyAnimSaves = arg2
         arg1:setState(var490)
      end
      
      local var2 = var5.createElement(var17, var463)
   end
   var315.ImportAnimModelChoicePrompt = var376
   var376 = var6
   if var376 then
      local var496 = {}
      local var499 = {}
      var499.overwriteName = var6
      var496.PromptText = var0:getText("Menu", "Overwrite_Migrated", var499)
      local var0 = {}
      var0.Key = false
      var0.Text = var0:getText("Dialog", "No")
      var0.Style = "Round"
      local var1 = {}
      var1.Key = true
      var1.Text = var0:getText("Dialog", "Yes")
      var1.Style = "RoundPrimary"
      var496.Buttons = {}
      function var496.OnButtonClicked()
         local var518 = {}
         var518.overwriteName = var5.None
         var518.isActionLegacyAnimSaves = var5.None
         arg1:setState(var518)
      end
      
      var496.OnClose = arg1.hideOverwritePrompt
      local var2 = var5.createElement(var20, var496)
   end
   var315.OverwritePrompt = var376
   if var2.showPromotePrompt then
      local var529 = {}
      var529.PromptText = var0:getText("Dialog", "PromotePrompt")
      local var0 = {}
      var0.Key = false
      var0.Text = var0:getText("Dialog", "Cancel")
      var0.Style = "Round"
      local var1 = {}
      var1.Key = true
      var1.Text = var0:getText("Dialog", "Confirm")
      var1.Style = "RoundPrimary"
      var529.Buttons = {}
      function var529.OnButtonClicked()
         local var550 = {}
         var550.showSaveAsPrompt = true
         arg1:setState(var550)
      end
      
      var529.OnClose = arg1.hidePromotePrompt
      local var2 = var5.createElement(var20, var529) or nil
   end
   local var11 = nil
   var315.PromotePrompt = var11
   var11 = var2.loadingName
   if var11 then
      local var561 = {}
      var561.PromptText = var0:getText("Title", "ConfirmSave")
      var561.InputText = var0:getText("Dialog", "AnimationName")
      var561.NoticeText = var0:getText("Dialog", "SaveLocation")
      var561.Text = var4
      local var0 = {}
      var0.Key = "Delete"
      var0.Text = var0:getText("Dialog", "Delete")
      var0.Style = "Round"
      local var1 = {}
      var1.Key = false
      var1.Text = var0:getText("Dialog", "Cancel")
      var1.Style = "Round"
      local var2 = {}
      var2.Key = true
      var2.Text = var0:getText("Dialog", "Save")
      var2.Style = "RoundPrimary"
      var561.Buttons = {}
      function var561.OnButtonClicked()
         local var597 = {}
         var597.showSaveAsPrompt = false
         arg1:setState(var597)
      end
      
      function var561.OnTextSubmitted()
         local var601 = {}
         var601.showImportAnimModelChoicePrompt = true
         arg1:setState(var601)
      end
      
      var561.OnClose = arg1.hideLoadNewPrompt
      local var3 = var5.createElement(var21, var561)
   end
   var315.LoadNewPrompt = var11
   var11 = var8
   if var11 then
      local var609 = {}
      var609.PromptText = var0:getText("AnimationFromVideo", "TutorialText")
      local var0 = {}
      var0.Key = false
      var0.Text = var0:getText("Dialog", "Cancel")
      var0.Style = "Round"
      local var1 = {}
      var1.Key = true
      var1.Text = var0:getText("AnimationFromVideo", "ChooseVideo")
      var1.Style = "RoundPrimary"
      var609.Buttons = {}
      function var609.OnButtonClicked()
         local var630 = {}
         var630.showImportAnimModelChoicePrompt = false
         arg1:setState(var630)
      end
      
      function var609.OnClose()
         arg1.props.SetReduceKeyframesDialogMode(var6.REDUCE_KEYFRAMES_DIALOG_MODE.FromMenu)
      end
      
      local var2 = var5.createElement(var20, var609)
   end
   var315.CreateAnimationFromVideoTutorial = var11
   var11 = var9
   if var11 then
      local var643 = {}
      var643.Size = UDim2.new(0, var6.PROMPT_SIZE.Width.Offset, 0, 180)
      var643.PromptText = var0:getText("AnimationFromVideo", "AgeRestricted")
      local var0 = {}
      var0.Key = false
      var0.Text = var0:getText("Dialog", "Cancel")
      var0.Style = "Round"
      var643.Buttons = {}
      function var643.OnButtonClicked()
         local var666 = {}
         var666.showCreateNewPrompt = true
         arg1:setState(var666)
      end
      
      function var643.OnClose()
         local var670 = {}
         var670.showCreateNewPrompt = false
         arg1:setState(var670)
      end
      
      local var1 = var5.createElement(var20, var643)
   end
   var315.CreateAnimationFromVideoAgeGate = var11
   return var5.createElement("ImageButton", var296, var315)
end

function var31.render(arg1)
   local var0 = arg1.props.Localization
   local var1 = arg1.props
   local var2 = arg1.state
   local var3 = var1.Stylizer
   local var4 = var1.AnimationName
   local var5 = var3.dropdownTheme
   local var6 = var2.overwriteName
   local var7 = var2.isActionLegacyAnimSaves
   local var8 = var2.showCreateAnimationFromVideoTutorial
   local var9 = false
   if var8 then
      var9 = game:GetService("AnimationFromVideoCreatorStudioService"):IsAgeRestricted()
      if var9 then
         local var0 = false
      end
   end
   local var296 = {}
   var296.Size = UDim2.new(1, var6.CONTROLS_WIDTH - var6.TIME_DISPLAY_WIDTH, 1, 0)
   var296.BackgroundTransparency = 1
   var296.ImageTransparency = 1
   var296.AutoButtonColor = false
   var296.LayoutOrder = var1.LayoutOrder
   var5.Event.Activated = arg1.showMenu
   local var315 = {}
   local var319 = {}
   var319.PaddingLeft = var8
   var319.PaddingRight = var8
   var315.Padding = var5.createElement("UIPadding", var319)
   local var326 = {}
   var326.Size = UDim2.new(1, var6.TRACKLIST_BUTTON_SIZE - var6.INDENT_PADDING, 1, 0)
   var326.BackgroundTransparency = 1
   var326.Text = var4
   var326.TextTruncate = Enum.TextTruncate.AtEnd
   var326.TextSize = var5.textSize
   var326.Font = var3.font
   var326.TextColor3 = var5.textColor
   var326.TextXAlignment = Enum.TextXAlignment.Left
   var315.AnimationClipLabel = var5.createElement("TextLabel", var326)
   local var348 = {}
   var348.AnchorPoint = Vector2.new(1, 0.5)
   var348.Position = UDim2.new(1, 0, 0.5, 0)
   var348.OnActivated = arg1.showMenu
   var315.ContextButton = var5.createElement(var19, var348)
   local var364 = {}
   var364.ShowMenu = var2.showMenu
   var364.CurrentAnimation = var4
   var364.IsLegacyAnimSaves = var1.IsLegacyAnimSaves
   var364.IsChannelAnimation = var1.IsChannelAnimation
   var364.OnMenuOpened = arg1.hideMenu
   var364.OnOverwriteRequested = arg1.showOverwritePrompt
   var364.OnSaveAsRequested = arg1.showSaveAsPrompt
   var364.OnCreateNewRequested = arg1.createNew
   var364.OnLoadRequested = arg1.loadNew
   var364.OnImportRequested = arg1.importRequested
   var364.OnImportFbxRequested = arg1.importFbxRequested
   var364.OnCreateFromVideoRequested = arg1.createFromVideoRequested
   var364.OnPromoteRequested = arg1.showPromotePrompt
   var364.OnReduceKeyframesRequested = arg1.showReduceKeyframesDialog
   var364.OnSanitizeAnimation = arg1.onSanitizeAnimation
   local var376 = var5.createElement(var18, var364)
   var315.AnimationClipMenu = var376
   var376 = var2.showCreateNewPrompt
   if var376 then
      local var380 = {}
      var380.PromptText = var0:getText("Title", "CreateNew")
      var380.InputText = var0:getText("Dialog", "AnimationName")
      var380.Text = var0:getText("Title", "DefaultAnimationName")
      local var0 = {}
      var0.Key = false
      var0.Text = var0:getText("Dialog", "Cancel")
      var0.Style = "Round"
      local var1 = {}
      var1.Key = true
      var1.Text = var0:getText("Dialog", "Create")
      var1.Style = "RoundPrimary"
      var380.Buttons = {}
      function var380.OnTextSubmitted()
         if not arg1.props.ReadOnly then
            arg1.props.SetPlayState(var6.PLAY_STATE.Pause)
            local var418 = {}
            var418.showMenu = true
            arg1:setState(var418)
         end
      end
      
      var380.OnClose = arg1.hideCreateNewPrompt
      local var2 = var5.createElement(var21, var380)
   end
   var315.CreateNewPrompt = var376
   var376 = var2.showSaveAsPrompt
   if var376 then
      local var426 = {}
      var426.PromptText = var0:getText("Title", "SaveAsNew")
      var426.InputText = var0:getText("Dialog", "AnimationName")
      var426.NoticeText = var0:getText("Dialog", "SaveLocation")
      var426.Text = var4
      local var0 = {}
      var0.Key = false
      var0.Text = var0:getText("Dialog", "Cancel")
      var0.Style = "Round"
      local var1 = {}
      var1.Key = true
      var1.Text = var0:getText("Dialog", "Save")
      var1.Style = "RoundPrimary"
      var426.Buttons = {}
      function var426.OnTextSubmitted()
         local var455 = {}
         var455.showMenu = false
         arg1:setState(var455)
      end
      
      var426.OnClose = arg1.hideSaveAsPrompt
      local var2 = var5.createElement(var21, var426)
   end
   var315.SaveAsPrompt = var376
   var376 = var2.showImportAnimModelChoicePrompt
   if var376 then
      local var463 = {}
      var463.Text = var0:getText("Toast", "AnimationImportModelsDiffer")
      var463.ButtonWidth = var6.PROMPT_BUTTON_SIZE.X * 1.5
      local var0 = {}
      var0.Key = true
      var0.Text = var0:getText("Toast", "AnimationImportUseFBX")
      var0.Style = "Round"
      local var1 = {}
      var1.Key = false
      var1.Text = var0:getText("Toast", "AnimationImportUseSelected")
      var1.Style = "Round"
      var463.Buttons = {}
      function var463.OnButtonClicked(arg1, arg2)
         local var490 = {}
         var490.overwriteName = arg1
         var490.isActionLegacyAnimSaves = arg2
         arg1:setState(var490)
      end
      
      local var2 = var5.createElement(var17, var463)
   end
   var315.ImportAnimModelChoicePrompt = var376
   var376 = var6
   if var376 then
      local var496 = {}
      local var499 = {}
      var499.overwriteName = var6
      var496.PromptText = var0:getText("Menu", "Overwrite_Migrated", var499)
      local var0 = {}
      var0.Key = false
      var0.Text = var0:getText("Dialog", "No")
      var0.Style = "Round"
      local var1 = {}
      var1.Key = true
      var1.Text = var0:getText("Dialog", "Yes")
      var1.Style = "RoundPrimary"
      var496.Buttons = {}
      function var496.OnButtonClicked()
         local var518 = {}
         var518.overwriteName = var5.None
         var518.isActionLegacyAnimSaves = var5.None
         arg1:setState(var518)
      end
      
      var496.OnClose = arg1.hideOverwritePrompt
      local var2 = var5.createElement(var20, var496)
   end
   var315.OverwritePrompt = var376
   if var2.showPromotePrompt then
      local var529 = {}
      var529.PromptText = var0:getText("Dialog", "PromotePrompt")
      local var0 = {}
      var0.Key = false
      var0.Text = var0:getText("Dialog", "Cancel")
      var0.Style = "Round"
      local var1 = {}
      var1.Key = true
      var1.Text = var0:getText("Dialog", "Confirm")
      var1.Style = "RoundPrimary"
      var529.Buttons = {}
      function var529.OnButtonClicked()
         local var550 = {}
         var550.showSaveAsPrompt = true
         arg1:setState(var550)
      end
      
      var529.OnClose = arg1.hidePromotePrompt
      local var2 = var5.createElement(var20, var529) or nil
   end
   local var11 = nil
   var315.PromotePrompt = var11
   var11 = var2.loadingName
   if var11 then
      local var561 = {}
      var561.PromptText = var0:getText("Title", "ConfirmSave")
      var561.InputText = var0:getText("Dialog", "AnimationName")
      var561.NoticeText = var0:getText("Dialog", "SaveLocation")
      var561.Text = var4
      local var0 = {}
      var0.Key = "Delete"
      var0.Text = var0:getText("Dialog", "Delete")
      var0.Style = "Round"
      local var1 = {}
      var1.Key = false
      var1.Text = var0:getText("Dialog", "Cancel")
      var1.Style = "Round"
      local var2 = {}
      var2.Key = true
      var2.Text = var0:getText("Dialog", "Save")
      var2.Style = "RoundPrimary"
      var561.Buttons = {}
      function var561.OnButtonClicked()
         local var597 = {}
         var597.showSaveAsPrompt = false
         arg1:setState(var597)
      end
      
      function var561.OnTextSubmitted()
         local var601 = {}
         var601.showImportAnimModelChoicePrompt = true
         arg1:setState(var601)
      end
      
      var561.OnClose = arg1.hideLoadNewPrompt
      local var3 = var5.createElement(var21, var561)
   end
   var315.LoadNewPrompt = var11
   var11 = var8
   if var11 then
      local var609 = {}
      var609.PromptText = var0:getText("AnimationFromVideo", "TutorialText")
      local var0 = {}
      var0.Key = false
      var0.Text = var0:getText("Dialog", "Cancel")
      var0.Style = "Round"
      local var1 = {}
      var1.Key = true
      var1.Text = var0:getText("AnimationFromVideo", "ChooseVideo")
      var1.Style = "RoundPrimary"
      var609.Buttons = {}
      function var609.OnButtonClicked()
         local var630 = {}
         var630.showImportAnimModelChoicePrompt = false
         arg1:setState(var630)
      end
      
      function var609.OnClose()
         arg1.props.SetReduceKeyframesDialogMode(var6.REDUCE_KEYFRAMES_DIALOG_MODE.FromMenu)
      end
      
      local var2 = var5.createElement(var20, var609)
   end
   var315.CreateAnimationFromVideoTutorial = var11
   var11 = var9
   if var11 then
      local var643 = {}
      var643.Size = UDim2.new(0, var6.PROMPT_SIZE.Width.Offset, 0, 180)
      var643.PromptText = var0:getText("AnimationFromVideo", "AgeRestricted")
      local var0 = {}
      var0.Key = false
      var0.Text = var0:getText("Dialog", "Cancel")
      var0.Style = "Round"
      var643.Buttons = {}
      function var643.OnButtonClicked()
         local var666 = {}
         var666.showCreateNewPrompt = true
         arg1:setState(var666)
      end
      
      function var643.OnClose()
         local var670 = {}
         var670.showCreateNewPrompt = false
         arg1:setState(var670)
      end
      
      local var1 = var5.createElement(var20, var643)
   end
   var315.CreateAnimationFromVideoAgeGate = var11
   return var5.createElement("ImageButton", var296, var315)
end

fun37 = var9.withContext
local var675 = {}
var675.Stylizer = var9.Stylizer
var675.Localization = var9.Localization
var675.Plugin = var9.Plugin
var675.Analytics = var9.Analytics
var31 = fun37(var675)(var31)
return require(var4.Packages.RoactRodux).connect(function(arg1, arg2)
   local var0 = {}
   var0.Analytics = arg1.Analytics
   var0.IsDirty = arg1.Status.IsDirty
   var0.ReadOnly = arg1.Status.ReadOnly
   return var0
end, function(arg1)
   local var0 = {}
   function var0.LoadAnimationData()
      if not arg1.props.ReadOnly then
         arg1.props.SetPlayState(var6.PLAY_STATE.Pause)
         local var703 = {}
         var703.showMenu = true
         arg1:setState(var703)
      end
   end
   
   function var0.LoadAnimation()
      local var707 = {}
      var707.showMenu = false
      arg1:setState(var707)
   end
   
   function var0.SaveAnimation(arg1, arg2)
      local var713 = {}
      var713.overwriteName = arg1
      var713.isActionLegacyAnimSaves = arg2
      arg1:setState(var713)
   end
   
   function var0.ImportKeyframeSequence()
      local var716 = {}
      var716.overwriteName = var5.None
      var716.isActionLegacyAnimSaves = var5.None
      arg1:setState(var716)
   end
   
   function var0.ImportFBXAnimationUserMayChooseModel()
      local var723 = {}
      var723.showSaveAsPrompt = true
      arg1:setState(var723)
   end
   
   function var0.CreateFromVideoAndImportFBXAnimationUserMayChooseModel()
      local var727 = {}
      var727.showSaveAsPrompt = false
      arg1:setState(var727)
   end
   
   function var0.ImportLoadedFBXAnimation()
      local var731 = {}
      var731.showImportAnimModelChoicePrompt = true
      arg1:setState(var731)
   end
   
   function var0.SanitizeAnimation()
      local var735 = {}
      var735.showImportAnimModelChoicePrompt = false
      arg1:setState(var735)
   end
   
   function var0.SetInReviewState()
      arg1.props.SetReduceKeyframesDialogMode(var6.REDUCE_KEYFRAMES_DIALOG_MODE.FromMenu)
   end
   
   function var0.SetIsDirty()
      local var745 = {}
      var745.showCreateNewPrompt = true
      arg1:setState(var745)
   end
   
   function var0.SetIsLegacyAnimSaves()
      local var749 = {}
      var749.showCreateNewPrompt = false
      arg1:setState(var749)
   end
   
   function var0.SetPlayState()
      local var753 = {}
      var753.showPromotePrompt = true
      arg1:setState(var753)
   end
   
   function var0.SetReduceKeyframesDialogMode()
      local var757 = {}
      var757.showPromotePrompt = false
      arg1:setState(var757)
   end
   
   return var0
end)(var31)
