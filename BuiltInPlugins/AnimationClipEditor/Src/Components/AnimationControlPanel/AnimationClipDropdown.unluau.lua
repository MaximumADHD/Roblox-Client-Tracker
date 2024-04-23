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
   local var551 = {}
   var551.showMenu = false
   var551.showSaveAsPrompt = false
   var551.showCreateNewPrompt = false
   var551.showImportAnimModelChoicePrompt = false
   var551.showPromotePrompt = false
   var551.overwriteName = nil
   var551.loadingName = nil
   var551.isActionLegacyAnimSaves = nil
   var551.showCreateAnimationFromVideoTutorial = false
   arg1.state = var551
   function arg1.showMenu()
      if not arg1.props.ReadOnly then
         arg1.props.SetPlayState(var6.PLAY_STATE.Pause)
         local var571 = {}
         var571.showMenu = true
         arg1:setState(var571)
      end
   end
   
   function arg1.hideMenu()
      local var575 = {}
      var575.showMenu = false
      arg1:setState(var575)
   end
   
   function arg1.showOverwritePrompt(arg1, arg2)
      local var581 = {}
      var581.overwriteName = arg1
      var581.isActionLegacyAnimSaves = arg2
      arg1:setState(var581)
   end
   
   function arg1.hideOverwritePrompt()
      local var584 = {}
      var584.overwriteName = var5.None
      var584.isActionLegacyAnimSaves = var5.None
      arg1:setState(var584)
   end
   
   function arg1.showSaveAsPrompt()
      local var591 = {}
      var591.showSaveAsPrompt = true
      arg1:setState(var591)
   end
   
   function arg1.hideSaveAsPrompt()
      local var595 = {}
      var595.showSaveAsPrompt = false
      arg1:setState(var595)
   end
   
   function arg1.showImportAnimModelChoicePrompt()
      local var599 = {}
      var599.showImportAnimModelChoicePrompt = true
      arg1:setState(var599)
   end
   
   function arg1.hideImportAnimModelChoicePrompt()
      local var603 = {}
      var603.showImportAnimModelChoicePrompt = false
      arg1:setState(var603)
   end
   
   function arg1.showReduceKeyframesDialog()
      arg1.props.SetReduceKeyframesDialogMode(var6.REDUCE_KEYFRAMES_DIALOG_MODE.FromMenu)
   end
   
   function arg1.showCreateNewPrompt()
      local var613 = {}
      var613.showCreateNewPrompt = true
      arg1:setState(var613)
   end
   
   function arg1.hideCreateNewPrompt()
      local var617 = {}
      var617.showCreateNewPrompt = false
      arg1:setState(var617)
   end
   
   function arg1.showPromotePrompt()
      local var621 = {}
      var621.showPromotePrompt = true
      arg1:setState(var621)
   end
   
   function arg1.hidePromotePrompt()
      local var625 = {}
      var625.showPromotePrompt = false
      arg1:setState(var625)
   end
   
   function arg1.showLoadNewPrompt(arg1, arg2)
      local var631 = {}
      var631.loadingName = arg1
      var631.isActionLegacyAnimSaves = arg2
      arg1:setState(var631)
   end
   
   function arg1.hideLoadNewPrompt()
      local var634 = {}
      var634.loadingName = var5.None
      var634.isActionLegacyAnimSaves = var5.None
      arg1:setState(var634)
   end
   
   function arg1.setShowCreateAnimationFromVideoTutorial(arg1)
      local var642 = {}
      var642.showCreateAnimationFromVideoTutorial = arg1
      arg1:setState(var642)
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
      local var666 = arg1.props
      var666 = arg1.props.Plugin
      var666.ImportKeyframeSequence(var666, arg1.props.Analytics)
   end
   
   function arg1.importFbxRequested()
      if arg1.props.IsDirty then
         arg1.showLoadNewPrompt(var2)
      end
      arg1.props.SetInReviewState(false)
      local var685 = arg1.props
      var685 = arg1.props.Plugin
      var685.ImportFBXAnimationUserMayChooseModel(var685, arg1, arg1.props.Analytics)
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
      local var725 = arg1
      if var725.props.IsDirty then
         local var728 = arg1
         var728 = arg1
         var725 = arg2
         var728.showLoadNewPrompt(var728, var725)
      end
      arg1.props.SetInReviewState(false)
      local var734 = arg1
      local var735 = var734.props
      var735 = arg1
      var734 = arg2
      var735.LoadAnimation(var735, var734, arg1.props.Analytics)
   end
   
   function arg1.handleLoadNewPrompt()
      local var0 = arg1.props
      local var1 = arg1.state
      local var2 = var1.loadingName
      local var3 = arg1.props.Plugin
      arg1.hideLoadNewPrompt()
      local var751 = arg1
      var751.props.SetInReviewState(false)
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
      var751 = var1.isActionLegacyAnimSaves
      var0.LoadAnimation(var2, var751, var0.Analytics)
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
   local var808 = {}
   var808.Size = UDim2.new(1, var6.CONTROLS_WIDTH - var6.TIME_DISPLAY_WIDTH, 1, 0)
   var808.BackgroundTransparency = 1
   var808.ImageTransparency = 1
   var808.AutoButtonColor = false
   var808.LayoutOrder = var1.LayoutOrder
   var5.Event.Activated = arg1.showMenu
   local var827 = {}
   local var831 = {}
   var831.PaddingLeft = var8
   var831.PaddingRight = var8
   var827.Padding = var5.createElement("UIPadding", var831)
   local var838 = {}
   var838.Size = UDim2.new(1, var6.TRACKLIST_BUTTON_SIZE - var6.INDENT_PADDING, 1, 0)
   var838.BackgroundTransparency = 1
   var838.Text = var4
   var838.TextTruncate = Enum.TextTruncate.AtEnd
   var838.TextSize = var5.textSize
   var838.Font = var3.font
   var838.TextColor3 = var5.textColor
   var838.TextXAlignment = Enum.TextXAlignment.Left
   var827.AnimationClipLabel = var5.createElement("TextLabel", var838)
   local var860 = {}
   var860.AnchorPoint = Vector2.new(1, 0.5)
   var860.Position = UDim2.new(1, 0, 0.5, 0)
   var860.OnActivated = arg1.showMenu
   var827.ContextButton = var5.createElement(var19, var860)
   local var876 = {}
   var876.ShowMenu = var2.showMenu
   var876.CurrentAnimation = var4
   var876.IsLegacyAnimSaves = var1.IsLegacyAnimSaves
   var876.IsChannelAnimation = var1.IsChannelAnimation
   var876.OnMenuOpened = arg1.hideMenu
   var876.OnOverwriteRequested = arg1.showOverwritePrompt
   var876.OnSaveAsRequested = arg1.showSaveAsPrompt
   var876.OnCreateNewRequested = arg1.createNew
   var876.OnLoadRequested = arg1.loadNew
   var876.OnImportRequested = arg1.importRequested
   var876.OnImportFbxRequested = arg1.importFbxRequested
   var876.OnCreateFromVideoRequested = arg1.createFromVideoRequested
   var876.OnPromoteRequested = arg1.showPromotePrompt
   var876.OnReduceKeyframesRequested = arg1.showReduceKeyframesDialog
   var876.OnSanitizeAnimation = arg1.onSanitizeAnimation
   local var888 = var5.createElement(var18, var876)
   var827.AnimationClipMenu = var888
   var888 = var2.showCreateNewPrompt
   if var888 then
      local var892 = {}
      var892.PromptText = var0:getText("Title", "CreateNew")
      var892.InputText = var0:getText("Dialog", "AnimationName")
      var892.Text = var0:getText("Title", "DefaultAnimationName")
      local var0 = {}
      var0.Key = false
      var0.Text = var0:getText("Dialog", "Cancel")
      var0.Style = "Round"
      local var1 = {}
      var1.Key = true
      var1.Text = var0:getText("Dialog", "Create")
      var1.Style = "RoundPrimary"
      var892.Buttons = {}
      function var892.OnTextSubmitted()
         if not arg1.props.ReadOnly then
            arg1.props.SetPlayState(var6.PLAY_STATE.Pause)
            local var930 = {}
            var930.showMenu = true
            arg1:setState(var930)
         end
      end
      
      var892.OnClose = arg1.hideCreateNewPrompt
      local var2 = var5.createElement(var21, var892)
   end
   var827.CreateNewPrompt = var888
   var888 = var2.showSaveAsPrompt
   if var888 then
      local var938 = {}
      var938.PromptText = var0:getText("Title", "SaveAsNew")
      var938.InputText = var0:getText("Dialog", "AnimationName")
      var938.NoticeText = var0:getText("Dialog", "SaveLocation")
      var938.Text = var4
      local var0 = {}
      var0.Key = false
      var0.Text = var0:getText("Dialog", "Cancel")
      var0.Style = "Round"
      local var1 = {}
      var1.Key = true
      var1.Text = var0:getText("Dialog", "Save")
      var1.Style = "RoundPrimary"
      var938.Buttons = {}
      function var938.OnTextSubmitted()
         local var967 = {}
         var967.showMenu = false
         arg1:setState(var967)
      end
      
      var938.OnClose = arg1.hideSaveAsPrompt
      local var2 = var5.createElement(var21, var938)
   end
   var827.SaveAsPrompt = var888
   var888 = var2.showImportAnimModelChoicePrompt
   if var888 then
      local var975 = {}
      var975.Text = var0:getText("Toast", "AnimationImportModelsDiffer")
      var975.ButtonWidth = var6.PROMPT_BUTTON_SIZE.X * 1.5
      local var0 = {}
      var0.Key = true
      var0.Text = var0:getText("Toast", "AnimationImportUseFBX")
      var0.Style = "Round"
      local var1 = {}
      var1.Key = false
      var1.Text = var0:getText("Toast", "AnimationImportUseSelected")
      var1.Style = "Round"
      var975.Buttons = {}
      function var975.OnButtonClicked(arg1, arg2)
         local var1002 = {}
         var1002.overwriteName = arg1
         var1002.isActionLegacyAnimSaves = arg2
         arg1:setState(var1002)
      end
      
      local var2 = var5.createElement(var17, var975)
   end
   var827.ImportAnimModelChoicePrompt = var888
   var888 = var6
   if var888 then
      local var1008 = {}
      local var1011 = {}
      var1011.overwriteName = var6
      var1008.PromptText = var0:getText("Menu", "Overwrite_Migrated", var1011)
      local var0 = {}
      var0.Key = false
      var0.Text = var0:getText("Dialog", "No")
      var0.Style = "Round"
      local var1 = {}
      var1.Key = true
      var1.Text = var0:getText("Dialog", "Yes")
      var1.Style = "RoundPrimary"
      var1008.Buttons = {}
      function var1008.OnButtonClicked()
         local var1030 = {}
         var1030.overwriteName = var5.None
         var1030.isActionLegacyAnimSaves = var5.None
         arg1:setState(var1030)
      end
      
      var1008.OnClose = arg1.hideOverwritePrompt
      local var2 = var5.createElement(var20, var1008)
   end
   var827.OverwritePrompt = var888
   if var2.showPromotePrompt then
      local var1041 = {}
      var1041.PromptText = var0:getText("Dialog", "PromotePrompt")
      local var0 = {}
      var0.Key = false
      var0.Text = var0:getText("Dialog", "Cancel")
      var0.Style = "Round"
      local var1 = {}
      var1.Key = true
      var1.Text = var0:getText("Dialog", "Confirm")
      var1.Style = "RoundPrimary"
      var1041.Buttons = {}
      function var1041.OnButtonClicked()
         local var1062 = {}
         var1062.showSaveAsPrompt = true
         arg1:setState(var1062)
      end
      
      var1041.OnClose = arg1.hidePromotePrompt
      local var2 = var5.createElement(var20, var1041) or nil
   end
   local var11 = nil
   var827.PromotePrompt = var11
   var11 = var2.loadingName
   if var11 then
      local var1073 = {}
      var1073.PromptText = var0:getText("Title", "ConfirmSave")
      var1073.InputText = var0:getText("Dialog", "AnimationName")
      var1073.NoticeText = var0:getText("Dialog", "SaveLocation")
      var1073.Text = var4
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
      var1073.Buttons = {}
      function var1073.OnButtonClicked()
         local var1109 = {}
         var1109.showSaveAsPrompt = false
         arg1:setState(var1109)
      end
      
      function var1073.OnTextSubmitted()
         local var1113 = {}
         var1113.showImportAnimModelChoicePrompt = true
         arg1:setState(var1113)
      end
      
      var1073.OnClose = arg1.hideLoadNewPrompt
      local var3 = var5.createElement(var21, var1073)
   end
   var827.LoadNewPrompt = var11
   var11 = var8
   if var11 then
      local var1121 = {}
      var1121.PromptText = var0:getText("AnimationFromVideo", "TutorialText")
      local var0 = {}
      var0.Key = false
      var0.Text = var0:getText("Dialog", "Cancel")
      var0.Style = "Round"
      local var1 = {}
      var1.Key = true
      var1.Text = var0:getText("AnimationFromVideo", "ChooseVideo")
      var1.Style = "RoundPrimary"
      var1121.Buttons = {}
      function var1121.OnButtonClicked()
         local var1142 = {}
         var1142.showImportAnimModelChoicePrompt = false
         arg1:setState(var1142)
      end
      
      function var1121.OnClose()
         arg1.props.SetReduceKeyframesDialogMode(var6.REDUCE_KEYFRAMES_DIALOG_MODE.FromMenu)
      end
      
      local var2 = var5.createElement(var20, var1121)
   end
   var827.CreateAnimationFromVideoTutorial = var11
   var11 = var9
   if var11 then
      local var1155 = {}
      var1155.Size = UDim2.new(0, var6.PROMPT_SIZE.Width.Offset, 0, 180)
      var1155.PromptText = var0:getText("AnimationFromVideo", "AgeRestricted")
      local var0 = {}
      var0.Key = false
      var0.Text = var0:getText("Dialog", "Cancel")
      var0.Style = "Round"
      var1155.Buttons = {}
      function var1155.OnButtonClicked()
         local var1178 = {}
         var1178.showCreateNewPrompt = true
         arg1:setState(var1178)
      end
      
      function var1155.OnClose()
         local var1182 = {}
         var1182.showCreateNewPrompt = false
         arg1:setState(var1182)
      end
      
      local var1 = var5.createElement(var20, var1155)
   end
   var827.CreateAnimationFromVideoAgeGate = var11
   return var5.createElement("ImageButton", var808, var827)
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
   local var808 = {}
   var808.Size = UDim2.new(1, var6.CONTROLS_WIDTH - var6.TIME_DISPLAY_WIDTH, 1, 0)
   var808.BackgroundTransparency = 1
   var808.ImageTransparency = 1
   var808.AutoButtonColor = false
   var808.LayoutOrder = var1.LayoutOrder
   var5.Event.Activated = arg1.showMenu
   local var827 = {}
   local var831 = {}
   var831.PaddingLeft = var8
   var831.PaddingRight = var8
   var827.Padding = var5.createElement("UIPadding", var831)
   local var838 = {}
   var838.Size = UDim2.new(1, var6.TRACKLIST_BUTTON_SIZE - var6.INDENT_PADDING, 1, 0)
   var838.BackgroundTransparency = 1
   var838.Text = var4
   var838.TextTruncate = Enum.TextTruncate.AtEnd
   var838.TextSize = var5.textSize
   var838.Font = var3.font
   var838.TextColor3 = var5.textColor
   var838.TextXAlignment = Enum.TextXAlignment.Left
   var827.AnimationClipLabel = var5.createElement("TextLabel", var838)
   local var860 = {}
   var860.AnchorPoint = Vector2.new(1, 0.5)
   var860.Position = UDim2.new(1, 0, 0.5, 0)
   var860.OnActivated = arg1.showMenu
   var827.ContextButton = var5.createElement(var19, var860)
   local var876 = {}
   var876.ShowMenu = var2.showMenu
   var876.CurrentAnimation = var4
   var876.IsLegacyAnimSaves = var1.IsLegacyAnimSaves
   var876.IsChannelAnimation = var1.IsChannelAnimation
   var876.OnMenuOpened = arg1.hideMenu
   var876.OnOverwriteRequested = arg1.showOverwritePrompt
   var876.OnSaveAsRequested = arg1.showSaveAsPrompt
   var876.OnCreateNewRequested = arg1.createNew
   var876.OnLoadRequested = arg1.loadNew
   var876.OnImportRequested = arg1.importRequested
   var876.OnImportFbxRequested = arg1.importFbxRequested
   var876.OnCreateFromVideoRequested = arg1.createFromVideoRequested
   var876.OnPromoteRequested = arg1.showPromotePrompt
   var876.OnReduceKeyframesRequested = arg1.showReduceKeyframesDialog
   var876.OnSanitizeAnimation = arg1.onSanitizeAnimation
   local var888 = var5.createElement(var18, var876)
   var827.AnimationClipMenu = var888
   var888 = var2.showCreateNewPrompt
   if var888 then
      local var892 = {}
      var892.PromptText = var0:getText("Title", "CreateNew")
      var892.InputText = var0:getText("Dialog", "AnimationName")
      var892.Text = var0:getText("Title", "DefaultAnimationName")
      local var0 = {}
      var0.Key = false
      var0.Text = var0:getText("Dialog", "Cancel")
      var0.Style = "Round"
      local var1 = {}
      var1.Key = true
      var1.Text = var0:getText("Dialog", "Create")
      var1.Style = "RoundPrimary"
      var892.Buttons = {}
      function var892.OnTextSubmitted()
         if not arg1.props.ReadOnly then
            arg1.props.SetPlayState(var6.PLAY_STATE.Pause)
            local var930 = {}
            var930.showMenu = true
            arg1:setState(var930)
         end
      end
      
      var892.OnClose = arg1.hideCreateNewPrompt
      local var2 = var5.createElement(var21, var892)
   end
   var827.CreateNewPrompt = var888
   var888 = var2.showSaveAsPrompt
   if var888 then
      local var938 = {}
      var938.PromptText = var0:getText("Title", "SaveAsNew")
      var938.InputText = var0:getText("Dialog", "AnimationName")
      var938.NoticeText = var0:getText("Dialog", "SaveLocation")
      var938.Text = var4
      local var0 = {}
      var0.Key = false
      var0.Text = var0:getText("Dialog", "Cancel")
      var0.Style = "Round"
      local var1 = {}
      var1.Key = true
      var1.Text = var0:getText("Dialog", "Save")
      var1.Style = "RoundPrimary"
      var938.Buttons = {}
      function var938.OnTextSubmitted()
         local var967 = {}
         var967.showMenu = false
         arg1:setState(var967)
      end
      
      var938.OnClose = arg1.hideSaveAsPrompt
      local var2 = var5.createElement(var21, var938)
   end
   var827.SaveAsPrompt = var888
   var888 = var2.showImportAnimModelChoicePrompt
   if var888 then
      local var975 = {}
      var975.Text = var0:getText("Toast", "AnimationImportModelsDiffer")
      var975.ButtonWidth = var6.PROMPT_BUTTON_SIZE.X * 1.5
      local var0 = {}
      var0.Key = true
      var0.Text = var0:getText("Toast", "AnimationImportUseFBX")
      var0.Style = "Round"
      local var1 = {}
      var1.Key = false
      var1.Text = var0:getText("Toast", "AnimationImportUseSelected")
      var1.Style = "Round"
      var975.Buttons = {}
      function var975.OnButtonClicked(arg1, arg2)
         local var1002 = {}
         var1002.overwriteName = arg1
         var1002.isActionLegacyAnimSaves = arg2
         arg1:setState(var1002)
      end
      
      local var2 = var5.createElement(var17, var975)
   end
   var827.ImportAnimModelChoicePrompt = var888
   var888 = var6
   if var888 then
      local var1008 = {}
      local var1011 = {}
      var1011.overwriteName = var6
      var1008.PromptText = var0:getText("Menu", "Overwrite_Migrated", var1011)
      local var0 = {}
      var0.Key = false
      var0.Text = var0:getText("Dialog", "No")
      var0.Style = "Round"
      local var1 = {}
      var1.Key = true
      var1.Text = var0:getText("Dialog", "Yes")
      var1.Style = "RoundPrimary"
      var1008.Buttons = {}
      function var1008.OnButtonClicked()
         local var1030 = {}
         var1030.overwriteName = var5.None
         var1030.isActionLegacyAnimSaves = var5.None
         arg1:setState(var1030)
      end
      
      var1008.OnClose = arg1.hideOverwritePrompt
      local var2 = var5.createElement(var20, var1008)
   end
   var827.OverwritePrompt = var888
   if var2.showPromotePrompt then
      local var1041 = {}
      var1041.PromptText = var0:getText("Dialog", "PromotePrompt")
      local var0 = {}
      var0.Key = false
      var0.Text = var0:getText("Dialog", "Cancel")
      var0.Style = "Round"
      local var1 = {}
      var1.Key = true
      var1.Text = var0:getText("Dialog", "Confirm")
      var1.Style = "RoundPrimary"
      var1041.Buttons = {}
      function var1041.OnButtonClicked()
         local var1062 = {}
         var1062.showSaveAsPrompt = true
         arg1:setState(var1062)
      end
      
      var1041.OnClose = arg1.hidePromotePrompt
      local var2 = var5.createElement(var20, var1041) or nil
   end
   local var11 = nil
   var827.PromotePrompt = var11
   var11 = var2.loadingName
   if var11 then
      local var1073 = {}
      var1073.PromptText = var0:getText("Title", "ConfirmSave")
      var1073.InputText = var0:getText("Dialog", "AnimationName")
      var1073.NoticeText = var0:getText("Dialog", "SaveLocation")
      var1073.Text = var4
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
      var1073.Buttons = {}
      function var1073.OnButtonClicked()
         local var1109 = {}
         var1109.showSaveAsPrompt = false
         arg1:setState(var1109)
      end
      
      function var1073.OnTextSubmitted()
         local var1113 = {}
         var1113.showImportAnimModelChoicePrompt = true
         arg1:setState(var1113)
      end
      
      var1073.OnClose = arg1.hideLoadNewPrompt
      local var3 = var5.createElement(var21, var1073)
   end
   var827.LoadNewPrompt = var11
   var11 = var8
   if var11 then
      local var1121 = {}
      var1121.PromptText = var0:getText("AnimationFromVideo", "TutorialText")
      local var0 = {}
      var0.Key = false
      var0.Text = var0:getText("Dialog", "Cancel")
      var0.Style = "Round"
      local var1 = {}
      var1.Key = true
      var1.Text = var0:getText("AnimationFromVideo", "ChooseVideo")
      var1.Style = "RoundPrimary"
      var1121.Buttons = {}
      function var1121.OnButtonClicked()
         local var1142 = {}
         var1142.showImportAnimModelChoicePrompt = false
         arg1:setState(var1142)
      end
      
      function var1121.OnClose()
         arg1.props.SetReduceKeyframesDialogMode(var6.REDUCE_KEYFRAMES_DIALOG_MODE.FromMenu)
      end
      
      local var2 = var5.createElement(var20, var1121)
   end
   var827.CreateAnimationFromVideoTutorial = var11
   var11 = var9
   if var11 then
      local var1155 = {}
      var1155.Size = UDim2.new(0, var6.PROMPT_SIZE.Width.Offset, 0, 180)
      var1155.PromptText = var0:getText("AnimationFromVideo", "AgeRestricted")
      local var0 = {}
      var0.Key = false
      var0.Text = var0:getText("Dialog", "Cancel")
      var0.Style = "Round"
      var1155.Buttons = {}
      function var1155.OnButtonClicked()
         local var1178 = {}
         var1178.showCreateNewPrompt = true
         arg1:setState(var1178)
      end
      
      function var1155.OnClose()
         local var1182 = {}
         var1182.showCreateNewPrompt = false
         arg1:setState(var1182)
      end
      
      local var1 = var5.createElement(var20, var1155)
   end
   var827.CreateAnimationFromVideoAgeGate = var11
   return var5.createElement("ImageButton", var808, var827)
end

fun49 = var9.withContext
local var1187 = {}
var1187.Stylizer = var9.Stylizer
var1187.Localization = var9.Localization
var1187.Plugin = var9.Plugin
var1187.Analytics = var9.Analytics
var31 = fun49(var1187)(var31)
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
         local var1215 = {}
         var1215.showMenu = true
         arg1:setState(var1215)
      end
   end
   
   function var0.LoadAnimation()
      local var1219 = {}
      var1219.showMenu = false
      arg1:setState(var1219)
   end
   
   function var0.SaveAnimation(arg1, arg2)
      local var1225 = {}
      var1225.overwriteName = arg1
      var1225.isActionLegacyAnimSaves = arg2
      arg1:setState(var1225)
   end
   
   function var0.ImportKeyframeSequence()
      local var1228 = {}
      var1228.overwriteName = var5.None
      var1228.isActionLegacyAnimSaves = var5.None
      arg1:setState(var1228)
   end
   
   function var0.ImportFBXAnimationUserMayChooseModel()
      local var1235 = {}
      var1235.showSaveAsPrompt = true
      arg1:setState(var1235)
   end
   
   function var0.CreateFromVideoAndImportFBXAnimationUserMayChooseModel()
      local var1239 = {}
      var1239.showSaveAsPrompt = false
      arg1:setState(var1239)
   end
   
   function var0.ImportLoadedFBXAnimation()
      local var1243 = {}
      var1243.showImportAnimModelChoicePrompt = true
      arg1:setState(var1243)
   end
   
   function var0.SanitizeAnimation()
      local var1247 = {}
      var1247.showImportAnimModelChoicePrompt = false
      arg1:setState(var1247)
   end
   
   function var0.SetInReviewState()
      arg1.props.SetReduceKeyframesDialogMode(var6.REDUCE_KEYFRAMES_DIALOG_MODE.FromMenu)
   end
   
   function var0.SetIsDirty()
      local var1257 = {}
      var1257.showCreateNewPrompt = true
      arg1:setState(var1257)
   end
   
   function var0.SetIsLegacyAnimSaves()
      local var1261 = {}
      var1261.showCreateNewPrompt = false
      arg1:setState(var1261)
   end
   
   function var0.SetPlayState()
      local var1265 = {}
      var1265.showPromotePrompt = true
      arg1:setState(var1265)
   end
   
   function var0.SetReduceKeyframesDialogMode()
      local var1269 = {}
      var1269.showPromotePrompt = false
      arg1:setState(var1269)
   end
   
   return var0
end)(var31)
