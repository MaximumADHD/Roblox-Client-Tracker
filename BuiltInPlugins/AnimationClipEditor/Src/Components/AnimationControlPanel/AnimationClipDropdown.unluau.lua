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
   local var589 = {}
   var589.showMenu = false
   var589.showSaveAsPrompt = false
   var589.showCreateNewPrompt = false
   var589.showImportAnimModelChoicePrompt = false
   var589.showPromotePrompt = false
   var589.overwriteName = nil
   var589.loadingName = nil
   var589.isActionLegacyAnimSaves = nil
   var589.showCreateAnimationFromVideoTutorial = false
   arg1.state = var589
   function arg1.showMenu()
      if not arg1.props.ReadOnly then
         arg1.props.SetPlayState(var6.PLAY_STATE.Pause)
         local var609 = {}
         var609.showMenu = true
         arg1:setState(var609)
      end
   end
   
   function arg1.hideMenu()
      local var613 = {}
      var613.showMenu = false
      arg1:setState(var613)
   end
   
   function arg1.showOverwritePrompt(arg1, arg2)
      local var619 = {}
      var619.overwriteName = arg1
      var619.isActionLegacyAnimSaves = arg2
      arg1:setState(var619)
   end
   
   function arg1.hideOverwritePrompt()
      local var622 = {}
      var622.overwriteName = var5.None
      var622.isActionLegacyAnimSaves = var5.None
      arg1:setState(var622)
   end
   
   function arg1.showSaveAsPrompt()
      local var629 = {}
      var629.showSaveAsPrompt = true
      arg1:setState(var629)
   end
   
   function arg1.hideSaveAsPrompt()
      local var633 = {}
      var633.showSaveAsPrompt = false
      arg1:setState(var633)
   end
   
   function arg1.showImportAnimModelChoicePrompt()
      local var637 = {}
      var637.showImportAnimModelChoicePrompt = true
      arg1:setState(var637)
   end
   
   function arg1.hideImportAnimModelChoicePrompt()
      local var641 = {}
      var641.showImportAnimModelChoicePrompt = false
      arg1:setState(var641)
   end
   
   function arg1.showReduceKeyframesDialog()
      arg1.props.SetReduceKeyframesDialogMode(var6.REDUCE_KEYFRAMES_DIALOG_MODE.FromMenu)
   end
   
   function arg1.showCreateNewPrompt()
      local var651 = {}
      var651.showCreateNewPrompt = true
      arg1:setState(var651)
   end
   
   function arg1.hideCreateNewPrompt()
      local var655 = {}
      var655.showCreateNewPrompt = false
      arg1:setState(var655)
   end
   
   function arg1.showPromotePrompt()
      local var659 = {}
      var659.showPromotePrompt = true
      arg1:setState(var659)
   end
   
   function arg1.hidePromotePrompt()
      local var663 = {}
      var663.showPromotePrompt = false
      arg1:setState(var663)
   end
   
   function arg1.showLoadNewPrompt(arg1, arg2)
      local var669 = {}
      var669.loadingName = arg1
      var669.isActionLegacyAnimSaves = arg2
      arg1:setState(var669)
   end
   
   function arg1.hideLoadNewPrompt()
      local var672 = {}
      var672.loadingName = var5.None
      var672.isActionLegacyAnimSaves = var5.None
      arg1:setState(var672)
   end
   
   function arg1.setShowCreateAnimationFromVideoTutorial(arg1)
      local var680 = {}
      var680.showCreateAnimationFromVideoTutorial = arg1
      arg1:setState(var680)
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
      local var704 = arg1.props
      var704 = arg1.props.Plugin
      var704.ImportKeyframeSequence(var704, arg1.props.Analytics)
   end
   
   function arg1.importFbxRequested()
      if arg1.props.IsDirty then
         arg1.showLoadNewPrompt(var2)
      end
      arg1.props.SetInReviewState(false)
      local var723 = arg1.props
      var723 = arg1.props.Plugin
      var723.ImportFBXAnimationUserMayChooseModel(var723, arg1, arg1.props.Analytics)
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
      local var763 = arg1
      if var763.props.IsDirty then
         local var766 = arg1
         var766 = arg1
         var763 = arg2
         var766.showLoadNewPrompt(var766, var763)
      end
      arg1.props.SetInReviewState(false)
      local var772 = arg1
      local var773 = var772.props
      var773 = arg1
      var772 = arg2
      var773.LoadAnimation(var773, var772, arg1.props.Analytics)
   end
   
   function arg1.handleLoadNewPrompt()
      local var0 = arg1.props
      local var1 = arg1.state
      local var2 = var1.loadingName
      local var3 = arg1.props.Plugin
      arg1.hideLoadNewPrompt()
      local var789 = arg1
      var789.props.SetInReviewState(false)
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
      var789 = var1.isActionLegacyAnimSaves
      var0.LoadAnimation(var2, var789, var0.Analytics)
   end
   
   function arg1.onSanitizeAnimation()
      local var0 = arg1.props
      var0.SanitizeAnimation(var0.Analytics)
   end
   
end

local function fun52(arg1)
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
   local var846 = {}
   var846.Size = UDim2.new(1, var6.CONTROLS_WIDTH - var6.TIME_DISPLAY_WIDTH, 1, 0)
   var846.BackgroundTransparency = 1
   var846.ImageTransparency = 1
   var846.AutoButtonColor = false
   var846.LayoutOrder = var1.LayoutOrder
   var5.Event.Activated = arg1.showMenu
   local var865 = {}
   local var869 = {}
   var869.PaddingLeft = var8
   var869.PaddingRight = var8
   var865.Padding = var5.createElement("UIPadding", var869)
   local var876 = {}
   var876.Size = UDim2.new(1, var6.TRACKLIST_BUTTON_SIZE - var6.INDENT_PADDING, 1, 0)
   var876.BackgroundTransparency = 1
   var876.Text = var4
   var876.TextTruncate = Enum.TextTruncate.AtEnd
   var876.TextSize = var5.textSize
   var876.Font = var3.font
   var876.TextColor3 = var5.textColor
   var876.TextXAlignment = Enum.TextXAlignment.Left
   var865.AnimationClipLabel = var5.createElement("TextLabel", var876)
   local var898 = {}
   var898.AnchorPoint = Vector2.new(1, 0.5)
   var898.Position = UDim2.new(1, 0, 0.5, 0)
   var898.OnActivated = arg1.showMenu
   var865.ContextButton = var5.createElement(var19, var898)
   local var914 = {}
   var914.ShowMenu = var2.showMenu
   var914.CurrentAnimation = var4
   var914.IsLegacyAnimSaves = var1.IsLegacyAnimSaves
   var914.IsChannelAnimation = var1.IsChannelAnimation
   var914.OnMenuOpened = arg1.hideMenu
   var914.OnOverwriteRequested = arg1.showOverwritePrompt
   var914.OnSaveAsRequested = arg1.showSaveAsPrompt
   var914.OnCreateNewRequested = arg1.createNew
   var914.OnLoadRequested = arg1.loadNew
   var914.OnImportRequested = arg1.importRequested
   var914.OnImportFbxRequested = arg1.importFbxRequested
   var914.OnCreateFromVideoRequested = arg1.createFromVideoRequested
   var914.OnPromoteRequested = arg1.showPromotePrompt
   var914.OnReduceKeyframesRequested = arg1.showReduceKeyframesDialog
   var914.OnSanitizeAnimation = arg1.onSanitizeAnimation
   local var926 = var5.createElement(var18, var914)
   var865.AnimationClipMenu = var926
   var926 = var2.showCreateNewPrompt
   if var926 then
      local var930 = {}
      var930.PromptText = var0:getText("Title", "CreateNew")
      var930.InputText = var0:getText("Dialog", "AnimationName")
      var930.Text = var0:getText("Title", "DefaultAnimationName")
      local var0 = {}
      var0.Key = false
      var0.Text = var0:getText("Dialog", "Cancel")
      var0.Style = "Round"
      local var1 = {}
      var1.Key = true
      var1.Text = var0:getText("Dialog", "Create")
      var1.Style = "RoundPrimary"
      var930.Buttons = {}
      function var930.OnTextSubmitted()
         if not arg1.props.ReadOnly then
            arg1.props.SetPlayState(var6.PLAY_STATE.Pause)
            local var968 = {}
            var968.showMenu = true
            arg1:setState(var968)
         end
      end
      
      var930.OnClose = arg1.hideCreateNewPrompt
      local var2 = var5.createElement(var21, var930)
   end
   var865.CreateNewPrompt = var926
   var926 = var2.showSaveAsPrompt
   if var926 then
      local var976 = {}
      var976.PromptText = var0:getText("Title", "SaveAsNew")
      var976.InputText = var0:getText("Dialog", "AnimationName")
      var976.NoticeText = var0:getText("Dialog", "SaveLocation")
      var976.Text = var4
      local var0 = {}
      var0.Key = false
      var0.Text = var0:getText("Dialog", "Cancel")
      var0.Style = "Round"
      local var1 = {}
      var1.Key = true
      var1.Text = var0:getText("Dialog", "Save")
      var1.Style = "RoundPrimary"
      var976.Buttons = {}
      function var976.OnTextSubmitted()
         local var1005 = {}
         var1005.showMenu = false
         arg1:setState(var1005)
      end
      
      var976.OnClose = arg1.hideSaveAsPrompt
      local var2 = var5.createElement(var21, var976)
   end
   var865.SaveAsPrompt = var926
   var926 = var2.showImportAnimModelChoicePrompt
   if var926 then
      local var1013 = {}
      var1013.Text = var0:getText("Toast", "AnimationImportModelsDiffer")
      var1013.ButtonWidth = var6.PROMPT_BUTTON_SIZE.X * 1.5
      local var0 = {}
      var0.Key = true
      var0.Text = var0:getText("Toast", "AnimationImportUseFBX")
      var0.Style = "Round"
      local var1 = {}
      var1.Key = false
      var1.Text = var0:getText("Toast", "AnimationImportUseSelected")
      var1.Style = "Round"
      var1013.Buttons = {}
      function var1013.OnButtonClicked(arg1, arg2)
         local var1040 = {}
         var1040.overwriteName = arg1
         var1040.isActionLegacyAnimSaves = arg2
         arg1:setState(var1040)
      end
      
      local var2 = var5.createElement(var17, var1013)
   end
   var865.ImportAnimModelChoicePrompt = var926
   var926 = var6
   if var926 then
      local var1046 = {}
      local var1049 = {}
      var1049.overwriteName = var6
      var1046.PromptText = var0:getText("Menu", "Overwrite_Migrated", var1049)
      local var0 = {}
      var0.Key = false
      var0.Text = var0:getText("Dialog", "No")
      var0.Style = "Round"
      local var1 = {}
      var1.Key = true
      var1.Text = var0:getText("Dialog", "Yes")
      var1.Style = "RoundPrimary"
      var1046.Buttons = {}
      function var1046.OnButtonClicked()
         local var1068 = {}
         var1068.overwriteName = var5.None
         var1068.isActionLegacyAnimSaves = var5.None
         arg1:setState(var1068)
      end
      
      var1046.OnClose = arg1.hideOverwritePrompt
      local var2 = var5.createElement(var20, var1046)
   end
   var865.OverwritePrompt = var926
   if var2.showPromotePrompt then
      local var1079 = {}
      var1079.PromptText = var0:getText("Dialog", "PromotePrompt")
      local var0 = {}
      var0.Key = false
      var0.Text = var0:getText("Dialog", "Cancel")
      var0.Style = "Round"
      local var1 = {}
      var1.Key = true
      var1.Text = var0:getText("Dialog", "Confirm")
      var1.Style = "RoundPrimary"
      var1079.Buttons = {}
      function var1079.OnButtonClicked()
         local var1100 = {}
         var1100.showSaveAsPrompt = true
         arg1:setState(var1100)
      end
      
      var1079.OnClose = arg1.hidePromotePrompt
      local var2 = var5.createElement(var20, var1079) or nil
   end
   local var11 = nil
   var865.PromotePrompt = var11
   var11 = var2.loadingName
   if var11 then
      local var1111 = {}
      var1111.PromptText = var0:getText("Title", "ConfirmSave")
      var1111.InputText = var0:getText("Dialog", "AnimationName")
      var1111.NoticeText = var0:getText("Dialog", "SaveLocation")
      var1111.Text = var4
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
      var1111.Buttons = {}
      function var1111.OnButtonClicked()
         local var1147 = {}
         var1147.showSaveAsPrompt = false
         arg1:setState(var1147)
      end
      
      function var1111.OnTextSubmitted()
         local var1151 = {}
         var1151.showImportAnimModelChoicePrompt = true
         arg1:setState(var1151)
      end
      
      var1111.OnClose = arg1.hideLoadNewPrompt
      local var3 = var5.createElement(var21, var1111)
   end
   var865.LoadNewPrompt = var11
   var11 = var8
   if var11 then
      local var1159 = {}
      var1159.PromptText = var0:getText("AnimationFromVideo", "TutorialText")
      local var0 = {}
      var0.Key = false
      var0.Text = var0:getText("Dialog", "Cancel")
      var0.Style = "Round"
      local var1 = {}
      var1.Key = true
      var1.Text = var0:getText("AnimationFromVideo", "ChooseVideo")
      var1.Style = "RoundPrimary"
      var1159.Buttons = {}
      function var1159.OnButtonClicked()
         local var1180 = {}
         var1180.showImportAnimModelChoicePrompt = false
         arg1:setState(var1180)
      end
      
      function var1159.OnClose()
         arg1.props.SetReduceKeyframesDialogMode(var6.REDUCE_KEYFRAMES_DIALOG_MODE.FromMenu)
      end
      
      local var2 = var5.createElement(var20, var1159)
   end
   var865.CreateAnimationFromVideoTutorial = var11
   var11 = var9
   if var11 then
      local var1193 = {}
      var1193.Size = UDim2.new(0, var6.PROMPT_SIZE.Width.Offset, 0, 180)
      var1193.PromptText = var0:getText("AnimationFromVideo", "AgeRestricted")
      local var0 = {}
      var0.Key = false
      var0.Text = var0:getText("Dialog", "Cancel")
      var0.Style = "Round"
      var1193.Buttons = {}
      function var1193.OnButtonClicked()
         local var1216 = {}
         var1216.showCreateNewPrompt = true
         arg1:setState(var1216)
      end
      
      function var1193.OnClose()
         local var1220 = {}
         var1220.showCreateNewPrompt = false
         arg1:setState(var1220)
      end
      
      local var1 = var5.createElement(var20, var1193)
   end
   var865.CreateAnimationFromVideoAgeGate = var11
   return var5.createElement("ImageButton", var846, var865)
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
   local var846 = {}
   var846.Size = UDim2.new(1, var6.CONTROLS_WIDTH - var6.TIME_DISPLAY_WIDTH, 1, 0)
   var846.BackgroundTransparency = 1
   var846.ImageTransparency = 1
   var846.AutoButtonColor = false
   var846.LayoutOrder = var1.LayoutOrder
   var5.Event.Activated = arg1.showMenu
   local var865 = {}
   local var869 = {}
   var869.PaddingLeft = var8
   var869.PaddingRight = var8
   var865.Padding = var5.createElement("UIPadding", var869)
   local var876 = {}
   var876.Size = UDim2.new(1, var6.TRACKLIST_BUTTON_SIZE - var6.INDENT_PADDING, 1, 0)
   var876.BackgroundTransparency = 1
   var876.Text = var4
   var876.TextTruncate = Enum.TextTruncate.AtEnd
   var876.TextSize = var5.textSize
   var876.Font = var3.font
   var876.TextColor3 = var5.textColor
   var876.TextXAlignment = Enum.TextXAlignment.Left
   var865.AnimationClipLabel = var5.createElement("TextLabel", var876)
   local var898 = {}
   var898.AnchorPoint = Vector2.new(1, 0.5)
   var898.Position = UDim2.new(1, 0, 0.5, 0)
   var898.OnActivated = arg1.showMenu
   var865.ContextButton = var5.createElement(var19, var898)
   local var914 = {}
   var914.ShowMenu = var2.showMenu
   var914.CurrentAnimation = var4
   var914.IsLegacyAnimSaves = var1.IsLegacyAnimSaves
   var914.IsChannelAnimation = var1.IsChannelAnimation
   var914.OnMenuOpened = arg1.hideMenu
   var914.OnOverwriteRequested = arg1.showOverwritePrompt
   var914.OnSaveAsRequested = arg1.showSaveAsPrompt
   var914.OnCreateNewRequested = arg1.createNew
   var914.OnLoadRequested = arg1.loadNew
   var914.OnImportRequested = arg1.importRequested
   var914.OnImportFbxRequested = arg1.importFbxRequested
   var914.OnCreateFromVideoRequested = arg1.createFromVideoRequested
   var914.OnPromoteRequested = arg1.showPromotePrompt
   var914.OnReduceKeyframesRequested = arg1.showReduceKeyframesDialog
   var914.OnSanitizeAnimation = arg1.onSanitizeAnimation
   local var926 = var5.createElement(var18, var914)
   var865.AnimationClipMenu = var926
   var926 = var2.showCreateNewPrompt
   if var926 then
      local var930 = {}
      var930.PromptText = var0:getText("Title", "CreateNew")
      var930.InputText = var0:getText("Dialog", "AnimationName")
      var930.Text = var0:getText("Title", "DefaultAnimationName")
      local var0 = {}
      var0.Key = false
      var0.Text = var0:getText("Dialog", "Cancel")
      var0.Style = "Round"
      local var1 = {}
      var1.Key = true
      var1.Text = var0:getText("Dialog", "Create")
      var1.Style = "RoundPrimary"
      var930.Buttons = {}
      function var930.OnTextSubmitted()
         if not arg1.props.ReadOnly then
            arg1.props.SetPlayState(var6.PLAY_STATE.Pause)
            local var968 = {}
            var968.showMenu = true
            arg1:setState(var968)
         end
      end
      
      var930.OnClose = arg1.hideCreateNewPrompt
      local var2 = var5.createElement(var21, var930)
   end
   var865.CreateNewPrompt = var926
   var926 = var2.showSaveAsPrompt
   if var926 then
      local var976 = {}
      var976.PromptText = var0:getText("Title", "SaveAsNew")
      var976.InputText = var0:getText("Dialog", "AnimationName")
      var976.NoticeText = var0:getText("Dialog", "SaveLocation")
      var976.Text = var4
      local var0 = {}
      var0.Key = false
      var0.Text = var0:getText("Dialog", "Cancel")
      var0.Style = "Round"
      local var1 = {}
      var1.Key = true
      var1.Text = var0:getText("Dialog", "Save")
      var1.Style = "RoundPrimary"
      var976.Buttons = {}
      function var976.OnTextSubmitted()
         local var1005 = {}
         var1005.showMenu = false
         arg1:setState(var1005)
      end
      
      var976.OnClose = arg1.hideSaveAsPrompt
      local var2 = var5.createElement(var21, var976)
   end
   var865.SaveAsPrompt = var926
   var926 = var2.showImportAnimModelChoicePrompt
   if var926 then
      local var1013 = {}
      var1013.Text = var0:getText("Toast", "AnimationImportModelsDiffer")
      var1013.ButtonWidth = var6.PROMPT_BUTTON_SIZE.X * 1.5
      local var0 = {}
      var0.Key = true
      var0.Text = var0:getText("Toast", "AnimationImportUseFBX")
      var0.Style = "Round"
      local var1 = {}
      var1.Key = false
      var1.Text = var0:getText("Toast", "AnimationImportUseSelected")
      var1.Style = "Round"
      var1013.Buttons = {}
      function var1013.OnButtonClicked(arg1, arg2)
         local var1040 = {}
         var1040.overwriteName = arg1
         var1040.isActionLegacyAnimSaves = arg2
         arg1:setState(var1040)
      end
      
      local var2 = var5.createElement(var17, var1013)
   end
   var865.ImportAnimModelChoicePrompt = var926
   var926 = var6
   if var926 then
      local var1046 = {}
      local var1049 = {}
      var1049.overwriteName = var6
      var1046.PromptText = var0:getText("Menu", "Overwrite_Migrated", var1049)
      local var0 = {}
      var0.Key = false
      var0.Text = var0:getText("Dialog", "No")
      var0.Style = "Round"
      local var1 = {}
      var1.Key = true
      var1.Text = var0:getText("Dialog", "Yes")
      var1.Style = "RoundPrimary"
      var1046.Buttons = {}
      function var1046.OnButtonClicked()
         local var1068 = {}
         var1068.overwriteName = var5.None
         var1068.isActionLegacyAnimSaves = var5.None
         arg1:setState(var1068)
      end
      
      var1046.OnClose = arg1.hideOverwritePrompt
      local var2 = var5.createElement(var20, var1046)
   end
   var865.OverwritePrompt = var926
   if var2.showPromotePrompt then
      local var1079 = {}
      var1079.PromptText = var0:getText("Dialog", "PromotePrompt")
      local var0 = {}
      var0.Key = false
      var0.Text = var0:getText("Dialog", "Cancel")
      var0.Style = "Round"
      local var1 = {}
      var1.Key = true
      var1.Text = var0:getText("Dialog", "Confirm")
      var1.Style = "RoundPrimary"
      var1079.Buttons = {}
      function var1079.OnButtonClicked()
         local var1100 = {}
         var1100.showSaveAsPrompt = true
         arg1:setState(var1100)
      end
      
      var1079.OnClose = arg1.hidePromotePrompt
      local var2 = var5.createElement(var20, var1079) or nil
   end
   local var11 = nil
   var865.PromotePrompt = var11
   var11 = var2.loadingName
   if var11 then
      local var1111 = {}
      var1111.PromptText = var0:getText("Title", "ConfirmSave")
      var1111.InputText = var0:getText("Dialog", "AnimationName")
      var1111.NoticeText = var0:getText("Dialog", "SaveLocation")
      var1111.Text = var4
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
      var1111.Buttons = {}
      function var1111.OnButtonClicked()
         local var1147 = {}
         var1147.showSaveAsPrompt = false
         arg1:setState(var1147)
      end
      
      function var1111.OnTextSubmitted()
         local var1151 = {}
         var1151.showImportAnimModelChoicePrompt = true
         arg1:setState(var1151)
      end
      
      var1111.OnClose = arg1.hideLoadNewPrompt
      local var3 = var5.createElement(var21, var1111)
   end
   var865.LoadNewPrompt = var11
   var11 = var8
   if var11 then
      local var1159 = {}
      var1159.PromptText = var0:getText("AnimationFromVideo", "TutorialText")
      local var0 = {}
      var0.Key = false
      var0.Text = var0:getText("Dialog", "Cancel")
      var0.Style = "Round"
      local var1 = {}
      var1.Key = true
      var1.Text = var0:getText("AnimationFromVideo", "ChooseVideo")
      var1.Style = "RoundPrimary"
      var1159.Buttons = {}
      function var1159.OnButtonClicked()
         local var1180 = {}
         var1180.showImportAnimModelChoicePrompt = false
         arg1:setState(var1180)
      end
      
      function var1159.OnClose()
         arg1.props.SetReduceKeyframesDialogMode(var6.REDUCE_KEYFRAMES_DIALOG_MODE.FromMenu)
      end
      
      local var2 = var5.createElement(var20, var1159)
   end
   var865.CreateAnimationFromVideoTutorial = var11
   var11 = var9
   if var11 then
      local var1193 = {}
      var1193.Size = UDim2.new(0, var6.PROMPT_SIZE.Width.Offset, 0, 180)
      var1193.PromptText = var0:getText("AnimationFromVideo", "AgeRestricted")
      local var0 = {}
      var0.Key = false
      var0.Text = var0:getText("Dialog", "Cancel")
      var0.Style = "Round"
      var1193.Buttons = {}
      function var1193.OnButtonClicked()
         local var1216 = {}
         var1216.showCreateNewPrompt = true
         arg1:setState(var1216)
      end
      
      function var1193.OnClose()
         local var1220 = {}
         var1220.showCreateNewPrompt = false
         arg1:setState(var1220)
      end
      
      local var1 = var5.createElement(var20, var1193)
   end
   var865.CreateAnimationFromVideoAgeGate = var11
   return var5.createElement("ImageButton", var846, var865)
end

fun52 = var9.withContext
local var1225 = {}
var1225.Stylizer = var9.Stylizer
var1225.Localization = var9.Localization
var1225.Plugin = var9.Plugin
var1225.Analytics = var9.Analytics
var31 = fun52(var1225)(var31)
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
         local var1253 = {}
         var1253.showMenu = true
         arg1:setState(var1253)
      end
   end
   
   function var0.LoadAnimation()
      local var1257 = {}
      var1257.showMenu = false
      arg1:setState(var1257)
   end
   
   function var0.SaveAnimation(arg1, arg2)
      local var1263 = {}
      var1263.overwriteName = arg1
      var1263.isActionLegacyAnimSaves = arg2
      arg1:setState(var1263)
   end
   
   function var0.ImportKeyframeSequence()
      local var1266 = {}
      var1266.overwriteName = var5.None
      var1266.isActionLegacyAnimSaves = var5.None
      arg1:setState(var1266)
   end
   
   function var0.ImportFBXAnimationUserMayChooseModel()
      local var1273 = {}
      var1273.showSaveAsPrompt = true
      arg1:setState(var1273)
   end
   
   function var0.CreateFromVideoAndImportFBXAnimationUserMayChooseModel()
      local var1277 = {}
      var1277.showSaveAsPrompt = false
      arg1:setState(var1277)
   end
   
   function var0.ImportLoadedFBXAnimation()
      local var1281 = {}
      var1281.showImportAnimModelChoicePrompt = true
      arg1:setState(var1281)
   end
   
   function var0.SanitizeAnimation()
      local var1285 = {}
      var1285.showImportAnimModelChoicePrompt = false
      arg1:setState(var1285)
   end
   
   function var0.SetInReviewState()
      arg1.props.SetReduceKeyframesDialogMode(var6.REDUCE_KEYFRAMES_DIALOG_MODE.FromMenu)
   end
   
   function var0.SetIsDirty()
      local var1295 = {}
      var1295.showCreateNewPrompt = true
      arg1:setState(var1295)
   end
   
   function var0.SetIsLegacyAnimSaves()
      local var1299 = {}
      var1299.showCreateNewPrompt = false
      arg1:setState(var1299)
   end
   
   function var0.SetPlayState()
      local var1303 = {}
      var1303.showPromotePrompt = true
      arg1:setState(var1303)
   end
   
   function var0.SetReduceKeyframesDialogMode()
      local var1307 = {}
      var1307.showPromotePrompt = false
      arg1:setState(var1307)
   end
   
   return var0
end)(var31)
