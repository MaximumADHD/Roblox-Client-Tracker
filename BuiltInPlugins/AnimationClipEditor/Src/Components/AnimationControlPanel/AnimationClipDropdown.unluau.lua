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
   local var558 = {}
   var558.showMenu = false
   var558.showSaveAsPrompt = false
   var558.showCreateNewPrompt = false
   var558.showImportAnimModelChoicePrompt = false
   var558.showPromotePrompt = false
   var558.overwriteName = nil
   var558.loadingName = nil
   var558.isActionLegacyAnimSaves = nil
   var558.showCreateAnimationFromVideoTutorial = false
   arg1.state = var558
   function arg1.showMenu()
      if not arg1.props.ReadOnly then
         arg1.props.SetPlayState(var6.PLAY_STATE.Pause)
         local var578 = {}
         var578.showMenu = true
         arg1:setState(var578)
      end
   end
   
   function arg1.hideMenu()
      local var582 = {}
      var582.showMenu = false
      arg1:setState(var582)
   end
   
   function arg1.showOverwritePrompt(arg1, arg2)
      local var588 = {}
      var588.overwriteName = arg1
      var588.isActionLegacyAnimSaves = arg2
      arg1:setState(var588)
   end
   
   function arg1.hideOverwritePrompt()
      local var591 = {}
      var591.overwriteName = var5.None
      var591.isActionLegacyAnimSaves = var5.None
      arg1:setState(var591)
   end
   
   function arg1.showSaveAsPrompt()
      local var598 = {}
      var598.showSaveAsPrompt = true
      arg1:setState(var598)
   end
   
   function arg1.hideSaveAsPrompt()
      local var602 = {}
      var602.showSaveAsPrompt = false
      arg1:setState(var602)
   end
   
   function arg1.showImportAnimModelChoicePrompt()
      local var606 = {}
      var606.showImportAnimModelChoicePrompt = true
      arg1:setState(var606)
   end
   
   function arg1.hideImportAnimModelChoicePrompt()
      local var610 = {}
      var610.showImportAnimModelChoicePrompt = false
      arg1:setState(var610)
   end
   
   function arg1.showReduceKeyframesDialog()
      arg1.props.SetReduceKeyframesDialogMode(var6.REDUCE_KEYFRAMES_DIALOG_MODE.FromMenu)
   end
   
   function arg1.showCreateNewPrompt()
      local var620 = {}
      var620.showCreateNewPrompt = true
      arg1:setState(var620)
   end
   
   function arg1.hideCreateNewPrompt()
      local var624 = {}
      var624.showCreateNewPrompt = false
      arg1:setState(var624)
   end
   
   function arg1.showPromotePrompt()
      local var628 = {}
      var628.showPromotePrompt = true
      arg1:setState(var628)
   end
   
   function arg1.hidePromotePrompt()
      local var632 = {}
      var632.showPromotePrompt = false
      arg1:setState(var632)
   end
   
   function arg1.showLoadNewPrompt(arg1, arg2)
      local var638 = {}
      var638.loadingName = arg1
      var638.isActionLegacyAnimSaves = arg2
      arg1:setState(var638)
   end
   
   function arg1.hideLoadNewPrompt()
      local var641 = {}
      var641.loadingName = var5.None
      var641.isActionLegacyAnimSaves = var5.None
      arg1:setState(var641)
   end
   
   function arg1.setShowCreateAnimationFromVideoTutorial(arg1)
      local var649 = {}
      var649.showCreateAnimationFromVideoTutorial = arg1
      arg1:setState(var649)
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
      local var673 = arg1.props
      var673 = arg1.props.Plugin
      var673.ImportKeyframeSequence(var673, arg1.props.Analytics)
   end
   
   function arg1.importFbxRequested()
      if arg1.props.IsDirty then
         arg1.showLoadNewPrompt(var2)
      end
      arg1.props.SetInReviewState(false)
      local var692 = arg1.props
      var692 = arg1.props.Plugin
      var692.ImportFBXAnimationUserMayChooseModel(var692, arg1, arg1.props.Analytics)
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
      local var732 = arg1
      if var732.props.IsDirty then
         local var735 = arg1
         var735 = arg1
         var732 = arg2
         var735.showLoadNewPrompt(var735, var732)
      end
      arg1.props.SetInReviewState(false)
      local var741 = arg1
      local var742 = var741.props
      var742 = arg1
      var741 = arg2
      var742.LoadAnimation(var742, var741, arg1.props.Analytics)
   end
   
   function arg1.handleLoadNewPrompt()
      local var0 = arg1.props
      local var1 = arg1.state
      local var2 = var1.loadingName
      local var3 = arg1.props.Plugin
      arg1.hideLoadNewPrompt()
      local var758 = arg1
      var758.props.SetInReviewState(false)
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
      var758 = var1.isActionLegacyAnimSaves
      var0.LoadAnimation(var2, var758, var0.Analytics)
   end
   
   function arg1.onSanitizeAnimation()
      local var0 = arg1.props
      var0.SanitizeAnimation(var0.Analytics)
   end
   
end

local function fun49(arg1)
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
   local var815 = {}
   var815.Size = UDim2.new(1, var6.CONTROLS_WIDTH - var6.TIME_DISPLAY_WIDTH, 1, 0)
   var815.BackgroundTransparency = 1
   var815.ImageTransparency = 1
   var815.AutoButtonColor = false
   var815.LayoutOrder = var1.LayoutOrder
   var5.Event.Activated = arg1.showMenu
   local var834 = {}
   local var838 = {}
   var838.PaddingLeft = var8
   var838.PaddingRight = var8
   var834.Padding = var5.createElement("UIPadding", var838)
   local var845 = {}
   var845.Size = UDim2.new(1, var6.TRACKLIST_BUTTON_SIZE - var6.INDENT_PADDING, 1, 0)
   var845.BackgroundTransparency = 1
   var845.Text = var4
   var845.TextTruncate = Enum.TextTruncate.AtEnd
   var845.TextSize = var5.textSize
   var845.Font = var3.font
   var845.TextColor3 = var5.textColor
   var845.TextXAlignment = Enum.TextXAlignment.Left
   var834.AnimationClipLabel = var5.createElement("TextLabel", var845)
   local var867 = {}
   var867.AnchorPoint = Vector2.new(1, 0.5)
   var867.Position = UDim2.new(1, 0, 0.5, 0)
   var867.OnActivated = arg1.showMenu
   var834.ContextButton = var5.createElement(var19, var867)
   local var883 = {}
   var883.ShowMenu = var2.showMenu
   var883.CurrentAnimation = var4
   var883.IsLegacyAnimSaves = var1.IsLegacyAnimSaves
   var883.IsChannelAnimation = var1.IsChannelAnimation
   var883.OnMenuOpened = arg1.hideMenu
   var883.OnOverwriteRequested = arg1.showOverwritePrompt
   var883.OnSaveAsRequested = arg1.showSaveAsPrompt
   var883.OnCreateNewRequested = arg1.createNew
   var883.OnLoadRequested = arg1.loadNew
   var883.OnImportRequested = arg1.importRequested
   var883.OnImportFbxRequested = arg1.importFbxRequested
   var883.OnCreateFromVideoRequested = arg1.createFromVideoRequested
   var883.OnPromoteRequested = arg1.showPromotePrompt
   var883.OnReduceKeyframesRequested = arg1.showReduceKeyframesDialog
   var883.OnSanitizeAnimation = arg1.onSanitizeAnimation
   local var895 = var5.createElement(var18, var883)
   var834.AnimationClipMenu = var895
   var895 = var2.showCreateNewPrompt
   if var895 then
      local var899 = {}
      var899.PromptText = var0:getText("Title", "CreateNew")
      var899.InputText = var0:getText("Dialog", "AnimationName")
      var899.Text = var0:getText("Title", "DefaultAnimationName")
      local var0 = {}
      var0.Key = false
      var0.Text = var0:getText("Dialog", "Cancel")
      var0.Style = "Round"
      local var1 = {}
      var1.Key = true
      var1.Text = var0:getText("Dialog", "Create")
      var1.Style = "RoundPrimary"
      var899.Buttons = {}
      function var899.OnTextSubmitted()
         if not arg1.props.ReadOnly then
            arg1.props.SetPlayState(var6.PLAY_STATE.Pause)
            local var937 = {}
            var937.showMenu = true
            arg1:setState(var937)
         end
      end
      
      var899.OnClose = arg1.hideCreateNewPrompt
      local var2 = var5.createElement(var21, var899)
   end
   var834.CreateNewPrompt = var895
   var895 = var2.showSaveAsPrompt
   if var895 then
      local var945 = {}
      var945.PromptText = var0:getText("Title", "SaveAsNew")
      var945.InputText = var0:getText("Dialog", "AnimationName")
      var945.NoticeText = var0:getText("Dialog", "SaveLocation")
      var945.Text = var4
      local var0 = {}
      var0.Key = false
      var0.Text = var0:getText("Dialog", "Cancel")
      var0.Style = "Round"
      local var1 = {}
      var1.Key = true
      var1.Text = var0:getText("Dialog", "Save")
      var1.Style = "RoundPrimary"
      var945.Buttons = {}
      function var945.OnTextSubmitted()
         local var974 = {}
         var974.showMenu = false
         arg1:setState(var974)
      end
      
      var945.OnClose = arg1.hideSaveAsPrompt
      local var2 = var5.createElement(var21, var945)
   end
   var834.SaveAsPrompt = var895
   var895 = var2.showImportAnimModelChoicePrompt
   if var895 then
      local var982 = {}
      var982.Text = var0:getText("Toast", "AnimationImportModelsDiffer")
      var982.ButtonWidth = var6.PROMPT_BUTTON_SIZE.X * 1.5
      local var0 = {}
      var0.Key = true
      var0.Text = var0:getText("Toast", "AnimationImportUseFBX")
      var0.Style = "Round"
      local var1 = {}
      var1.Key = false
      var1.Text = var0:getText("Toast", "AnimationImportUseSelected")
      var1.Style = "Round"
      var982.Buttons = {}
      function var982.OnButtonClicked(arg1, arg2)
         local var1009 = {}
         var1009.overwriteName = arg1
         var1009.isActionLegacyAnimSaves = arg2
         arg1:setState(var1009)
      end
      
      local var2 = var5.createElement(var17, var982)
   end
   var834.ImportAnimModelChoicePrompt = var895
   var895 = var6
   if var895 then
      local var1015 = {}
      local var1018 = {}
      var1018.overwriteName = var6
      var1015.PromptText = var0:getText("Menu", "Overwrite_Migrated", var1018)
      local var0 = {}
      var0.Key = false
      var0.Text = var0:getText("Dialog", "No")
      var0.Style = "Round"
      local var1 = {}
      var1.Key = true
      var1.Text = var0:getText("Dialog", "Yes")
      var1.Style = "RoundPrimary"
      var1015.Buttons = {}
      function var1015.OnButtonClicked()
         local var1037 = {}
         var1037.overwriteName = var5.None
         var1037.isActionLegacyAnimSaves = var5.None
         arg1:setState(var1037)
      end
      
      var1015.OnClose = arg1.hideOverwritePrompt
      local var2 = var5.createElement(var20, var1015)
   end
   var834.OverwritePrompt = var895
   if var2.showPromotePrompt then
      local var1048 = {}
      var1048.PromptText = var0:getText("Dialog", "PromotePrompt")
      local var0 = {}
      var0.Key = false
      var0.Text = var0:getText("Dialog", "Cancel")
      var0.Style = "Round"
      local var1 = {}
      var1.Key = true
      var1.Text = var0:getText("Dialog", "Confirm")
      var1.Style = "RoundPrimary"
      var1048.Buttons = {}
      function var1048.OnButtonClicked()
         local var1069 = {}
         var1069.showSaveAsPrompt = true
         arg1:setState(var1069)
      end
      
      var1048.OnClose = arg1.hidePromotePrompt
      local var2 = var5.createElement(var20, var1048) or nil
   end
   local var11 = nil
   var834.PromotePrompt = var11
   var11 = var2.loadingName
   if var11 then
      local var1080 = {}
      var1080.PromptText = var0:getText("Title", "ConfirmSave")
      var1080.InputText = var0:getText("Dialog", "AnimationName")
      var1080.NoticeText = var0:getText("Dialog", "SaveLocation")
      var1080.Text = var4
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
      var1080.Buttons = {}
      function var1080.OnButtonClicked()
         local var1116 = {}
         var1116.showSaveAsPrompt = false
         arg1:setState(var1116)
      end
      
      function var1080.OnTextSubmitted()
         local var1120 = {}
         var1120.showImportAnimModelChoicePrompt = true
         arg1:setState(var1120)
      end
      
      var1080.OnClose = arg1.hideLoadNewPrompt
      local var3 = var5.createElement(var21, var1080)
   end
   var834.LoadNewPrompt = var11
   var11 = var8
   if var11 then
      local var1128 = {}
      var1128.PromptText = var0:getText("AnimationFromVideo", "TutorialText")
      local var0 = {}
      var0.Key = false
      var0.Text = var0:getText("Dialog", "Cancel")
      var0.Style = "Round"
      local var1 = {}
      var1.Key = true
      var1.Text = var0:getText("AnimationFromVideo", "ChooseVideo")
      var1.Style = "RoundPrimary"
      var1128.Buttons = {}
      function var1128.OnButtonClicked()
         local var1149 = {}
         var1149.showImportAnimModelChoicePrompt = false
         arg1:setState(var1149)
      end
      
      function var1128.OnClose()
         arg1.props.SetReduceKeyframesDialogMode(var6.REDUCE_KEYFRAMES_DIALOG_MODE.FromMenu)
      end
      
      local var2 = var5.createElement(var20, var1128)
   end
   var834.CreateAnimationFromVideoTutorial = var11
   var11 = var9
   if var11 then
      local var1162 = {}
      var1162.Size = UDim2.new(0, var6.PROMPT_SIZE.Width.Offset, 0, 180)
      var1162.PromptText = var0:getText("AnimationFromVideo", "AgeRestricted")
      local var0 = {}
      var0.Key = false
      var0.Text = var0:getText("Dialog", "Cancel")
      var0.Style = "Round"
      var1162.Buttons = {}
      function var1162.OnButtonClicked()
         local var1185 = {}
         var1185.showCreateNewPrompt = true
         arg1:setState(var1185)
      end
      
      function var1162.OnClose()
         local var1189 = {}
         var1189.showCreateNewPrompt = false
         arg1:setState(var1189)
      end
      
      local var1 = var5.createElement(var20, var1162)
   end
   var834.CreateAnimationFromVideoAgeGate = var11
   return var5.createElement("ImageButton", var815, var834)
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
   local var815 = {}
   var815.Size = UDim2.new(1, var6.CONTROLS_WIDTH - var6.TIME_DISPLAY_WIDTH, 1, 0)
   var815.BackgroundTransparency = 1
   var815.ImageTransparency = 1
   var815.AutoButtonColor = false
   var815.LayoutOrder = var1.LayoutOrder
   var5.Event.Activated = arg1.showMenu
   local var834 = {}
   local var838 = {}
   var838.PaddingLeft = var8
   var838.PaddingRight = var8
   var834.Padding = var5.createElement("UIPadding", var838)
   local var845 = {}
   var845.Size = UDim2.new(1, var6.TRACKLIST_BUTTON_SIZE - var6.INDENT_PADDING, 1, 0)
   var845.BackgroundTransparency = 1
   var845.Text = var4
   var845.TextTruncate = Enum.TextTruncate.AtEnd
   var845.TextSize = var5.textSize
   var845.Font = var3.font
   var845.TextColor3 = var5.textColor
   var845.TextXAlignment = Enum.TextXAlignment.Left
   var834.AnimationClipLabel = var5.createElement("TextLabel", var845)
   local var867 = {}
   var867.AnchorPoint = Vector2.new(1, 0.5)
   var867.Position = UDim2.new(1, 0, 0.5, 0)
   var867.OnActivated = arg1.showMenu
   var834.ContextButton = var5.createElement(var19, var867)
   local var883 = {}
   var883.ShowMenu = var2.showMenu
   var883.CurrentAnimation = var4
   var883.IsLegacyAnimSaves = var1.IsLegacyAnimSaves
   var883.IsChannelAnimation = var1.IsChannelAnimation
   var883.OnMenuOpened = arg1.hideMenu
   var883.OnOverwriteRequested = arg1.showOverwritePrompt
   var883.OnSaveAsRequested = arg1.showSaveAsPrompt
   var883.OnCreateNewRequested = arg1.createNew
   var883.OnLoadRequested = arg1.loadNew
   var883.OnImportRequested = arg1.importRequested
   var883.OnImportFbxRequested = arg1.importFbxRequested
   var883.OnCreateFromVideoRequested = arg1.createFromVideoRequested
   var883.OnPromoteRequested = arg1.showPromotePrompt
   var883.OnReduceKeyframesRequested = arg1.showReduceKeyframesDialog
   var883.OnSanitizeAnimation = arg1.onSanitizeAnimation
   local var895 = var5.createElement(var18, var883)
   var834.AnimationClipMenu = var895
   var895 = var2.showCreateNewPrompt
   if var895 then
      local var899 = {}
      var899.PromptText = var0:getText("Title", "CreateNew")
      var899.InputText = var0:getText("Dialog", "AnimationName")
      var899.Text = var0:getText("Title", "DefaultAnimationName")
      local var0 = {}
      var0.Key = false
      var0.Text = var0:getText("Dialog", "Cancel")
      var0.Style = "Round"
      local var1 = {}
      var1.Key = true
      var1.Text = var0:getText("Dialog", "Create")
      var1.Style = "RoundPrimary"
      var899.Buttons = {}
      function var899.OnTextSubmitted()
         if not arg1.props.ReadOnly then
            arg1.props.SetPlayState(var6.PLAY_STATE.Pause)
            local var937 = {}
            var937.showMenu = true
            arg1:setState(var937)
         end
      end
      
      var899.OnClose = arg1.hideCreateNewPrompt
      local var2 = var5.createElement(var21, var899)
   end
   var834.CreateNewPrompt = var895
   var895 = var2.showSaveAsPrompt
   if var895 then
      local var945 = {}
      var945.PromptText = var0:getText("Title", "SaveAsNew")
      var945.InputText = var0:getText("Dialog", "AnimationName")
      var945.NoticeText = var0:getText("Dialog", "SaveLocation")
      var945.Text = var4
      local var0 = {}
      var0.Key = false
      var0.Text = var0:getText("Dialog", "Cancel")
      var0.Style = "Round"
      local var1 = {}
      var1.Key = true
      var1.Text = var0:getText("Dialog", "Save")
      var1.Style = "RoundPrimary"
      var945.Buttons = {}
      function var945.OnTextSubmitted()
         local var974 = {}
         var974.showMenu = false
         arg1:setState(var974)
      end
      
      var945.OnClose = arg1.hideSaveAsPrompt
      local var2 = var5.createElement(var21, var945)
   end
   var834.SaveAsPrompt = var895
   var895 = var2.showImportAnimModelChoicePrompt
   if var895 then
      local var982 = {}
      var982.Text = var0:getText("Toast", "AnimationImportModelsDiffer")
      var982.ButtonWidth = var6.PROMPT_BUTTON_SIZE.X * 1.5
      local var0 = {}
      var0.Key = true
      var0.Text = var0:getText("Toast", "AnimationImportUseFBX")
      var0.Style = "Round"
      local var1 = {}
      var1.Key = false
      var1.Text = var0:getText("Toast", "AnimationImportUseSelected")
      var1.Style = "Round"
      var982.Buttons = {}
      function var982.OnButtonClicked(arg1, arg2)
         local var1009 = {}
         var1009.overwriteName = arg1
         var1009.isActionLegacyAnimSaves = arg2
         arg1:setState(var1009)
      end
      
      local var2 = var5.createElement(var17, var982)
   end
   var834.ImportAnimModelChoicePrompt = var895
   var895 = var6
   if var895 then
      local var1015 = {}
      local var1018 = {}
      var1018.overwriteName = var6
      var1015.PromptText = var0:getText("Menu", "Overwrite_Migrated", var1018)
      local var0 = {}
      var0.Key = false
      var0.Text = var0:getText("Dialog", "No")
      var0.Style = "Round"
      local var1 = {}
      var1.Key = true
      var1.Text = var0:getText("Dialog", "Yes")
      var1.Style = "RoundPrimary"
      var1015.Buttons = {}
      function var1015.OnButtonClicked()
         local var1037 = {}
         var1037.overwriteName = var5.None
         var1037.isActionLegacyAnimSaves = var5.None
         arg1:setState(var1037)
      end
      
      var1015.OnClose = arg1.hideOverwritePrompt
      local var2 = var5.createElement(var20, var1015)
   end
   var834.OverwritePrompt = var895
   if var2.showPromotePrompt then
      local var1048 = {}
      var1048.PromptText = var0:getText("Dialog", "PromotePrompt")
      local var0 = {}
      var0.Key = false
      var0.Text = var0:getText("Dialog", "Cancel")
      var0.Style = "Round"
      local var1 = {}
      var1.Key = true
      var1.Text = var0:getText("Dialog", "Confirm")
      var1.Style = "RoundPrimary"
      var1048.Buttons = {}
      function var1048.OnButtonClicked()
         local var1069 = {}
         var1069.showSaveAsPrompt = true
         arg1:setState(var1069)
      end
      
      var1048.OnClose = arg1.hidePromotePrompt
      local var2 = var5.createElement(var20, var1048) or nil
   end
   local var11 = nil
   var834.PromotePrompt = var11
   var11 = var2.loadingName
   if var11 then
      local var1080 = {}
      var1080.PromptText = var0:getText("Title", "ConfirmSave")
      var1080.InputText = var0:getText("Dialog", "AnimationName")
      var1080.NoticeText = var0:getText("Dialog", "SaveLocation")
      var1080.Text = var4
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
      var1080.Buttons = {}
      function var1080.OnButtonClicked()
         local var1116 = {}
         var1116.showSaveAsPrompt = false
         arg1:setState(var1116)
      end
      
      function var1080.OnTextSubmitted()
         local var1120 = {}
         var1120.showImportAnimModelChoicePrompt = true
         arg1:setState(var1120)
      end
      
      var1080.OnClose = arg1.hideLoadNewPrompt
      local var3 = var5.createElement(var21, var1080)
   end
   var834.LoadNewPrompt = var11
   var11 = var8
   if var11 then
      local var1128 = {}
      var1128.PromptText = var0:getText("AnimationFromVideo", "TutorialText")
      local var0 = {}
      var0.Key = false
      var0.Text = var0:getText("Dialog", "Cancel")
      var0.Style = "Round"
      local var1 = {}
      var1.Key = true
      var1.Text = var0:getText("AnimationFromVideo", "ChooseVideo")
      var1.Style = "RoundPrimary"
      var1128.Buttons = {}
      function var1128.OnButtonClicked()
         local var1149 = {}
         var1149.showImportAnimModelChoicePrompt = false
         arg1:setState(var1149)
      end
      
      function var1128.OnClose()
         arg1.props.SetReduceKeyframesDialogMode(var6.REDUCE_KEYFRAMES_DIALOG_MODE.FromMenu)
      end
      
      local var2 = var5.createElement(var20, var1128)
   end
   var834.CreateAnimationFromVideoTutorial = var11
   var11 = var9
   if var11 then
      local var1162 = {}
      var1162.Size = UDim2.new(0, var6.PROMPT_SIZE.Width.Offset, 0, 180)
      var1162.PromptText = var0:getText("AnimationFromVideo", "AgeRestricted")
      local var0 = {}
      var0.Key = false
      var0.Text = var0:getText("Dialog", "Cancel")
      var0.Style = "Round"
      var1162.Buttons = {}
      function var1162.OnButtonClicked()
         local var1185 = {}
         var1185.showCreateNewPrompt = true
         arg1:setState(var1185)
      end
      
      function var1162.OnClose()
         local var1189 = {}
         var1189.showCreateNewPrompt = false
         arg1:setState(var1189)
      end
      
      local var1 = var5.createElement(var20, var1162)
   end
   var834.CreateAnimationFromVideoAgeGate = var11
   return var5.createElement("ImageButton", var815, var834)
end

fun49 = var9.withContext
local var1194 = {}
var1194.Stylizer = var9.Stylizer
var1194.Localization = var9.Localization
var1194.Plugin = var9.Plugin
var1194.Analytics = var9.Analytics
var31 = fun49(var1194)(var31)
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
         local var1222 = {}
         var1222.showMenu = true
         arg1:setState(var1222)
      end
   end
   
   function var0.LoadAnimation()
      local var1226 = {}
      var1226.showMenu = false
      arg1:setState(var1226)
   end
   
   function var0.SaveAnimation(arg1, arg2)
      local var1232 = {}
      var1232.overwriteName = arg1
      var1232.isActionLegacyAnimSaves = arg2
      arg1:setState(var1232)
   end
   
   function var0.ImportKeyframeSequence()
      local var1235 = {}
      var1235.overwriteName = var5.None
      var1235.isActionLegacyAnimSaves = var5.None
      arg1:setState(var1235)
   end
   
   function var0.ImportFBXAnimationUserMayChooseModel()
      local var1242 = {}
      var1242.showSaveAsPrompt = true
      arg1:setState(var1242)
   end
   
   function var0.CreateFromVideoAndImportFBXAnimationUserMayChooseModel()
      local var1246 = {}
      var1246.showSaveAsPrompt = false
      arg1:setState(var1246)
   end
   
   function var0.ImportLoadedFBXAnimation()
      local var1250 = {}
      var1250.showImportAnimModelChoicePrompt = true
      arg1:setState(var1250)
   end
   
   function var0.SanitizeAnimation()
      local var1254 = {}
      var1254.showImportAnimModelChoicePrompt = false
      arg1:setState(var1254)
   end
   
   function var0.SetInReviewState()
      arg1.props.SetReduceKeyframesDialogMode(var6.REDUCE_KEYFRAMES_DIALOG_MODE.FromMenu)
   end
   
   function var0.SetIsDirty()
      local var1264 = {}
      var1264.showCreateNewPrompt = true
      arg1:setState(var1264)
   end
   
   function var0.SetIsLegacyAnimSaves()
      local var1268 = {}
      var1268.showCreateNewPrompt = false
      arg1:setState(var1268)
   end
   
   function var0.SetPlayState()
      local var1272 = {}
      var1272.showPromotePrompt = true
      arg1:setState(var1272)
   end
   
   function var0.SetReduceKeyframesDialogMode()
      local var1276 = {}
      var1276.showPromotePrompt = false
      arg1:setState(var1276)
   end
   
   return var0
end)(var31)
