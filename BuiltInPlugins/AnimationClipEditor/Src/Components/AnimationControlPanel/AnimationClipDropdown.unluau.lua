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
   local var707 = {}
   var707.showMenu = false
   var707.showSaveAsPrompt = false
   var707.showCreateNewPrompt = false
   var707.showImportAnimModelChoicePrompt = false
   var707.showPromotePrompt = false
   var707.overwriteName = nil
   var707.loadingName = nil
   var707.isActionLegacyAnimSaves = nil
   var707.showCreateAnimationFromVideoTutorial = false
   arg1.state = var707
   function arg1.showMenu()
      if not arg1.props.ReadOnly then
         arg1.props.SetPlayState(var6.PLAY_STATE.Pause)
         local var727 = {}
         var727.showMenu = true
         arg1:setState(var727)
      end
   end
   
   function arg1.hideMenu()
      local var731 = {}
      var731.showMenu = false
      arg1:setState(var731)
   end
   
   function arg1.showOverwritePrompt(arg1, arg2)
      local var737 = {}
      var737.overwriteName = arg1
      var737.isActionLegacyAnimSaves = arg2
      arg1:setState(var737)
   end
   
   function arg1.hideOverwritePrompt()
      local var740 = {}
      var740.overwriteName = var5.None
      var740.isActionLegacyAnimSaves = var5.None
      arg1:setState(var740)
   end
   
   function arg1.showSaveAsPrompt()
      local var747 = {}
      var747.showSaveAsPrompt = true
      arg1:setState(var747)
   end
   
   function arg1.hideSaveAsPrompt()
      local var751 = {}
      var751.showSaveAsPrompt = false
      arg1:setState(var751)
   end
   
   function arg1.showImportAnimModelChoicePrompt()
      local var755 = {}
      var755.showImportAnimModelChoicePrompt = true
      arg1:setState(var755)
   end
   
   function arg1.hideImportAnimModelChoicePrompt()
      local var759 = {}
      var759.showImportAnimModelChoicePrompt = false
      arg1:setState(var759)
   end
   
   function arg1.showReduceKeyframesDialog()
      arg1.props.SetReduceKeyframesDialogMode(var6.REDUCE_KEYFRAMES_DIALOG_MODE.FromMenu)
   end
   
   function arg1.showCreateNewPrompt()
      local var769 = {}
      var769.showCreateNewPrompt = true
      arg1:setState(var769)
   end
   
   function arg1.hideCreateNewPrompt()
      local var773 = {}
      var773.showCreateNewPrompt = false
      arg1:setState(var773)
   end
   
   function arg1.showPromotePrompt()
      local var777 = {}
      var777.showPromotePrompt = true
      arg1:setState(var777)
   end
   
   function arg1.hidePromotePrompt()
      local var781 = {}
      var781.showPromotePrompt = false
      arg1:setState(var781)
   end
   
   function arg1.showLoadNewPrompt(arg1, arg2)
      local var787 = {}
      var787.loadingName = arg1
      var787.isActionLegacyAnimSaves = arg2
      arg1:setState(var787)
   end
   
   function arg1.hideLoadNewPrompt()
      local var790 = {}
      var790.loadingName = var5.None
      var790.isActionLegacyAnimSaves = var5.None
      arg1:setState(var790)
   end
   
   function arg1.setShowCreateAnimationFromVideoTutorial(arg1)
      local var798 = {}
      var798.showCreateAnimationFromVideoTutorial = arg1
      arg1:setState(var798)
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
      local var822 = arg1.props
      var822 = arg1.props.Plugin
      var822.ImportKeyframeSequence(var822, arg1.props.Analytics)
   end
   
   function arg1.importFbxRequested()
      if arg1.props.IsDirty then
         arg1.showLoadNewPrompt(var2)
      end
      arg1.props.SetInReviewState(false)
      local var841 = arg1.props
      var841 = arg1.props.Plugin
      var841.ImportFBXAnimationUserMayChooseModel(var841, arg1, arg1.props.Analytics)
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
      local var881 = arg1
      if var881.props.IsDirty then
         local var884 = arg1
         var884 = arg1
         var881 = arg2
         var884.showLoadNewPrompt(var884, var881)
      end
      arg1.props.SetInReviewState(false)
      local var890 = arg1
      local var891 = var890.props
      var891 = arg1
      var890 = arg2
      var891.LoadAnimation(var891, var890, arg1.props.Analytics)
   end
   
   function arg1.handleLoadNewPrompt()
      local var0 = arg1.props
      local var1 = arg1.state
      local var2 = var1.loadingName
      local var3 = arg1.props.Plugin
      arg1.hideLoadNewPrompt()
      local var907 = arg1
      var907.props.SetInReviewState(false)
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
      var907 = var1.isActionLegacyAnimSaves
      var0.LoadAnimation(var2, var907, var0.Analytics)
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
   local var964 = {}
   var964.Size = UDim2.new(1, var6.CONTROLS_WIDTH - var6.TIME_DISPLAY_WIDTH, 1, 0)
   var964.BackgroundTransparency = 1
   var964.ImageTransparency = 1
   var964.AutoButtonColor = false
   var964.LayoutOrder = var1.LayoutOrder
   var5.Event.Activated = arg1.showMenu
   local var983 = {}
   local var987 = {}
   var987.PaddingLeft = var8
   var987.PaddingRight = var8
   var983.Padding = var5.createElement("UIPadding", var987)
   local var994 = {}
   var994.Size = UDim2.new(1, var6.TRACKLIST_BUTTON_SIZE - var6.INDENT_PADDING, 1, 0)
   var994.BackgroundTransparency = 1
   var994.Text = var4
   var994.TextTruncate = Enum.TextTruncate.AtEnd
   var994.TextSize = var5.textSize
   var994.Font = var3.font
   var994.TextColor3 = var5.textColor
   var994.TextXAlignment = Enum.TextXAlignment.Left
   var983.AnimationClipLabel = var5.createElement("TextLabel", var994)
   local var1016 = {}
   var1016.AnchorPoint = Vector2.new(1, 0.5)
   var1016.Position = UDim2.new(1, 0, 0.5, 0)
   var1016.OnActivated = arg1.showMenu
   var983.ContextButton = var5.createElement(var19, var1016)
   local var1032 = {}
   var1032.ShowMenu = var2.showMenu
   var1032.CurrentAnimation = var4
   var1032.IsLegacyAnimSaves = var1.IsLegacyAnimSaves
   var1032.IsChannelAnimation = var1.IsChannelAnimation
   var1032.OnMenuOpened = arg1.hideMenu
   var1032.OnOverwriteRequested = arg1.showOverwritePrompt
   var1032.OnSaveAsRequested = arg1.showSaveAsPrompt
   var1032.OnCreateNewRequested = arg1.createNew
   var1032.OnLoadRequested = arg1.loadNew
   var1032.OnImportRequested = arg1.importRequested
   var1032.OnImportFbxRequested = arg1.importFbxRequested
   var1032.OnCreateFromVideoRequested = arg1.createFromVideoRequested
   var1032.OnPromoteRequested = arg1.showPromotePrompt
   var1032.OnReduceKeyframesRequested = arg1.showReduceKeyframesDialog
   var1032.OnSanitizeAnimation = arg1.onSanitizeAnimation
   local var1044 = var5.createElement(var18, var1032)
   var983.AnimationClipMenu = var1044
   var1044 = var2.showCreateNewPrompt
   if var1044 then
      local var1048 = {}
      var1048.PromptText = var0:getText("Title", "CreateNew")
      var1048.InputText = var0:getText("Dialog", "AnimationName")
      var1048.Text = var0:getText("Title", "DefaultAnimationName")
      local var0 = {}
      var0.Key = false
      var0.Text = var0:getText("Dialog", "Cancel")
      var0.Style = "Round"
      local var1 = {}
      var1.Key = true
      var1.Text = var0:getText("Dialog", "Create")
      var1.Style = "RoundPrimary"
      var1048.Buttons = {}
      function var1048.OnTextSubmitted()
         if not arg1.props.ReadOnly then
            arg1.props.SetPlayState(var6.PLAY_STATE.Pause)
            local var1086 = {}
            var1086.showMenu = true
            arg1:setState(var1086)
         end
      end
      
      var1048.OnClose = arg1.hideCreateNewPrompt
      local var2 = var5.createElement(var21, var1048)
   end
   var983.CreateNewPrompt = var1044
   var1044 = var2.showSaveAsPrompt
   if var1044 then
      local var1094 = {}
      var1094.PromptText = var0:getText("Title", "SaveAsNew")
      var1094.InputText = var0:getText("Dialog", "AnimationName")
      var1094.NoticeText = var0:getText("Dialog", "SaveLocation")
      var1094.Text = var4
      local var0 = {}
      var0.Key = false
      var0.Text = var0:getText("Dialog", "Cancel")
      var0.Style = "Round"
      local var1 = {}
      var1.Key = true
      var1.Text = var0:getText("Dialog", "Save")
      var1.Style = "RoundPrimary"
      var1094.Buttons = {}
      function var1094.OnTextSubmitted()
         local var1123 = {}
         var1123.showMenu = false
         arg1:setState(var1123)
      end
      
      var1094.OnClose = arg1.hideSaveAsPrompt
      local var2 = var5.createElement(var21, var1094)
   end
   var983.SaveAsPrompt = var1044
   var1044 = var2.showImportAnimModelChoicePrompt
   if var1044 then
      local var1131 = {}
      var1131.Text = var0:getText("Toast", "AnimationImportModelsDiffer")
      var1131.ButtonWidth = var6.PROMPT_BUTTON_SIZE.X * 1.5
      local var0 = {}
      var0.Key = true
      var0.Text = var0:getText("Toast", "AnimationImportUseFBX")
      var0.Style = "Round"
      local var1 = {}
      var1.Key = false
      var1.Text = var0:getText("Toast", "AnimationImportUseSelected")
      var1.Style = "Round"
      var1131.Buttons = {}
      function var1131.OnButtonClicked(arg1, arg2)
         local var1158 = {}
         var1158.overwriteName = arg1
         var1158.isActionLegacyAnimSaves = arg2
         arg1:setState(var1158)
      end
      
      local var2 = var5.createElement(var17, var1131)
   end
   var983.ImportAnimModelChoicePrompt = var1044
   var1044 = var6
   if var1044 then
      local var1164 = {}
      local var1167 = {}
      var1167.overwriteName = var6
      var1164.PromptText = var0:getText("Menu", "Overwrite_Migrated", var1167)
      local var0 = {}
      var0.Key = false
      var0.Text = var0:getText("Dialog", "No")
      var0.Style = "Round"
      local var1 = {}
      var1.Key = true
      var1.Text = var0:getText("Dialog", "Yes")
      var1.Style = "RoundPrimary"
      var1164.Buttons = {}
      function var1164.OnButtonClicked()
         local var1186 = {}
         var1186.overwriteName = var5.None
         var1186.isActionLegacyAnimSaves = var5.None
         arg1:setState(var1186)
      end
      
      var1164.OnClose = arg1.hideOverwritePrompt
      local var2 = var5.createElement(var20, var1164)
   end
   var983.OverwritePrompt = var1044
   if var2.showPromotePrompt then
      local var1197 = {}
      var1197.PromptText = var0:getText("Dialog", "PromotePrompt")
      local var0 = {}
      var0.Key = false
      var0.Text = var0:getText("Dialog", "Cancel")
      var0.Style = "Round"
      local var1 = {}
      var1.Key = true
      var1.Text = var0:getText("Dialog", "Confirm")
      var1.Style = "RoundPrimary"
      var1197.Buttons = {}
      function var1197.OnButtonClicked()
         local var1218 = {}
         var1218.showSaveAsPrompt = true
         arg1:setState(var1218)
      end
      
      var1197.OnClose = arg1.hidePromotePrompt
      local var2 = var5.createElement(var20, var1197) or nil
   end
   local var11 = nil
   var983.PromotePrompt = var11
   var11 = var2.loadingName
   if var11 then
      local var1229 = {}
      var1229.PromptText = var0:getText("Title", "ConfirmSave")
      var1229.InputText = var0:getText("Dialog", "AnimationName")
      var1229.NoticeText = var0:getText("Dialog", "SaveLocation")
      var1229.Text = var4
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
      var1229.Buttons = {}
      function var1229.OnButtonClicked()
         local var1265 = {}
         var1265.showSaveAsPrompt = false
         arg1:setState(var1265)
      end
      
      function var1229.OnTextSubmitted()
         local var1269 = {}
         var1269.showImportAnimModelChoicePrompt = true
         arg1:setState(var1269)
      end
      
      var1229.OnClose = arg1.hideLoadNewPrompt
      local var3 = var5.createElement(var21, var1229)
   end
   var983.LoadNewPrompt = var11
   var11 = var8
   if var11 then
      local var1277 = {}
      var1277.PromptText = var0:getText("AnimationFromVideo", "TutorialText")
      local var0 = {}
      var0.Key = false
      var0.Text = var0:getText("Dialog", "Cancel")
      var0.Style = "Round"
      local var1 = {}
      var1.Key = true
      var1.Text = var0:getText("AnimationFromVideo", "ChooseVideo")
      var1.Style = "RoundPrimary"
      var1277.Buttons = {}
      function var1277.OnButtonClicked()
         local var1298 = {}
         var1298.showImportAnimModelChoicePrompt = false
         arg1:setState(var1298)
      end
      
      function var1277.OnClose()
         arg1.props.SetReduceKeyframesDialogMode(var6.REDUCE_KEYFRAMES_DIALOG_MODE.FromMenu)
      end
      
      local var2 = var5.createElement(var20, var1277)
   end
   var983.CreateAnimationFromVideoTutorial = var11
   var11 = var9
   if var11 then
      local var1311 = {}
      var1311.Size = UDim2.new(0, var6.PROMPT_SIZE.Width.Offset, 0, 180)
      var1311.PromptText = var0:getText("AnimationFromVideo", "AgeRestricted")
      local var0 = {}
      var0.Key = false
      var0.Text = var0:getText("Dialog", "Cancel")
      var0.Style = "Round"
      var1311.Buttons = {}
      function var1311.OnButtonClicked()
         local var1334 = {}
         var1334.showCreateNewPrompt = true
         arg1:setState(var1334)
      end
      
      function var1311.OnClose()
         local var1338 = {}
         var1338.showCreateNewPrompt = false
         arg1:setState(var1338)
      end
      
      local var1 = var5.createElement(var20, var1311)
   end
   var983.CreateAnimationFromVideoAgeGate = var11
   return var5.createElement("ImageButton", var964, var983)
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
   local var964 = {}
   var964.Size = UDim2.new(1, var6.CONTROLS_WIDTH - var6.TIME_DISPLAY_WIDTH, 1, 0)
   var964.BackgroundTransparency = 1
   var964.ImageTransparency = 1
   var964.AutoButtonColor = false
   var964.LayoutOrder = var1.LayoutOrder
   var5.Event.Activated = arg1.showMenu
   local var983 = {}
   local var987 = {}
   var987.PaddingLeft = var8
   var987.PaddingRight = var8
   var983.Padding = var5.createElement("UIPadding", var987)
   local var994 = {}
   var994.Size = UDim2.new(1, var6.TRACKLIST_BUTTON_SIZE - var6.INDENT_PADDING, 1, 0)
   var994.BackgroundTransparency = 1
   var994.Text = var4
   var994.TextTruncate = Enum.TextTruncate.AtEnd
   var994.TextSize = var5.textSize
   var994.Font = var3.font
   var994.TextColor3 = var5.textColor
   var994.TextXAlignment = Enum.TextXAlignment.Left
   var983.AnimationClipLabel = var5.createElement("TextLabel", var994)
   local var1016 = {}
   var1016.AnchorPoint = Vector2.new(1, 0.5)
   var1016.Position = UDim2.new(1, 0, 0.5, 0)
   var1016.OnActivated = arg1.showMenu
   var983.ContextButton = var5.createElement(var19, var1016)
   local var1032 = {}
   var1032.ShowMenu = var2.showMenu
   var1032.CurrentAnimation = var4
   var1032.IsLegacyAnimSaves = var1.IsLegacyAnimSaves
   var1032.IsChannelAnimation = var1.IsChannelAnimation
   var1032.OnMenuOpened = arg1.hideMenu
   var1032.OnOverwriteRequested = arg1.showOverwritePrompt
   var1032.OnSaveAsRequested = arg1.showSaveAsPrompt
   var1032.OnCreateNewRequested = arg1.createNew
   var1032.OnLoadRequested = arg1.loadNew
   var1032.OnImportRequested = arg1.importRequested
   var1032.OnImportFbxRequested = arg1.importFbxRequested
   var1032.OnCreateFromVideoRequested = arg1.createFromVideoRequested
   var1032.OnPromoteRequested = arg1.showPromotePrompt
   var1032.OnReduceKeyframesRequested = arg1.showReduceKeyframesDialog
   var1032.OnSanitizeAnimation = arg1.onSanitizeAnimation
   local var1044 = var5.createElement(var18, var1032)
   var983.AnimationClipMenu = var1044
   var1044 = var2.showCreateNewPrompt
   if var1044 then
      local var1048 = {}
      var1048.PromptText = var0:getText("Title", "CreateNew")
      var1048.InputText = var0:getText("Dialog", "AnimationName")
      var1048.Text = var0:getText("Title", "DefaultAnimationName")
      local var0 = {}
      var0.Key = false
      var0.Text = var0:getText("Dialog", "Cancel")
      var0.Style = "Round"
      local var1 = {}
      var1.Key = true
      var1.Text = var0:getText("Dialog", "Create")
      var1.Style = "RoundPrimary"
      var1048.Buttons = {}
      function var1048.OnTextSubmitted()
         if not arg1.props.ReadOnly then
            arg1.props.SetPlayState(var6.PLAY_STATE.Pause)
            local var1086 = {}
            var1086.showMenu = true
            arg1:setState(var1086)
         end
      end
      
      var1048.OnClose = arg1.hideCreateNewPrompt
      local var2 = var5.createElement(var21, var1048)
   end
   var983.CreateNewPrompt = var1044
   var1044 = var2.showSaveAsPrompt
   if var1044 then
      local var1094 = {}
      var1094.PromptText = var0:getText("Title", "SaveAsNew")
      var1094.InputText = var0:getText("Dialog", "AnimationName")
      var1094.NoticeText = var0:getText("Dialog", "SaveLocation")
      var1094.Text = var4
      local var0 = {}
      var0.Key = false
      var0.Text = var0:getText("Dialog", "Cancel")
      var0.Style = "Round"
      local var1 = {}
      var1.Key = true
      var1.Text = var0:getText("Dialog", "Save")
      var1.Style = "RoundPrimary"
      var1094.Buttons = {}
      function var1094.OnTextSubmitted()
         local var1123 = {}
         var1123.showMenu = false
         arg1:setState(var1123)
      end
      
      var1094.OnClose = arg1.hideSaveAsPrompt
      local var2 = var5.createElement(var21, var1094)
   end
   var983.SaveAsPrompt = var1044
   var1044 = var2.showImportAnimModelChoicePrompt
   if var1044 then
      local var1131 = {}
      var1131.Text = var0:getText("Toast", "AnimationImportModelsDiffer")
      var1131.ButtonWidth = var6.PROMPT_BUTTON_SIZE.X * 1.5
      local var0 = {}
      var0.Key = true
      var0.Text = var0:getText("Toast", "AnimationImportUseFBX")
      var0.Style = "Round"
      local var1 = {}
      var1.Key = false
      var1.Text = var0:getText("Toast", "AnimationImportUseSelected")
      var1.Style = "Round"
      var1131.Buttons = {}
      function var1131.OnButtonClicked(arg1, arg2)
         local var1158 = {}
         var1158.overwriteName = arg1
         var1158.isActionLegacyAnimSaves = arg2
         arg1:setState(var1158)
      end
      
      local var2 = var5.createElement(var17, var1131)
   end
   var983.ImportAnimModelChoicePrompt = var1044
   var1044 = var6
   if var1044 then
      local var1164 = {}
      local var1167 = {}
      var1167.overwriteName = var6
      var1164.PromptText = var0:getText("Menu", "Overwrite_Migrated", var1167)
      local var0 = {}
      var0.Key = false
      var0.Text = var0:getText("Dialog", "No")
      var0.Style = "Round"
      local var1 = {}
      var1.Key = true
      var1.Text = var0:getText("Dialog", "Yes")
      var1.Style = "RoundPrimary"
      var1164.Buttons = {}
      function var1164.OnButtonClicked()
         local var1186 = {}
         var1186.overwriteName = var5.None
         var1186.isActionLegacyAnimSaves = var5.None
         arg1:setState(var1186)
      end
      
      var1164.OnClose = arg1.hideOverwritePrompt
      local var2 = var5.createElement(var20, var1164)
   end
   var983.OverwritePrompt = var1044
   if var2.showPromotePrompt then
      local var1197 = {}
      var1197.PromptText = var0:getText("Dialog", "PromotePrompt")
      local var0 = {}
      var0.Key = false
      var0.Text = var0:getText("Dialog", "Cancel")
      var0.Style = "Round"
      local var1 = {}
      var1.Key = true
      var1.Text = var0:getText("Dialog", "Confirm")
      var1.Style = "RoundPrimary"
      var1197.Buttons = {}
      function var1197.OnButtonClicked()
         local var1218 = {}
         var1218.showSaveAsPrompt = true
         arg1:setState(var1218)
      end
      
      var1197.OnClose = arg1.hidePromotePrompt
      local var2 = var5.createElement(var20, var1197) or nil
   end
   local var11 = nil
   var983.PromotePrompt = var11
   var11 = var2.loadingName
   if var11 then
      local var1229 = {}
      var1229.PromptText = var0:getText("Title", "ConfirmSave")
      var1229.InputText = var0:getText("Dialog", "AnimationName")
      var1229.NoticeText = var0:getText("Dialog", "SaveLocation")
      var1229.Text = var4
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
      var1229.Buttons = {}
      function var1229.OnButtonClicked()
         local var1265 = {}
         var1265.showSaveAsPrompt = false
         arg1:setState(var1265)
      end
      
      function var1229.OnTextSubmitted()
         local var1269 = {}
         var1269.showImportAnimModelChoicePrompt = true
         arg1:setState(var1269)
      end
      
      var1229.OnClose = arg1.hideLoadNewPrompt
      local var3 = var5.createElement(var21, var1229)
   end
   var983.LoadNewPrompt = var11
   var11 = var8
   if var11 then
      local var1277 = {}
      var1277.PromptText = var0:getText("AnimationFromVideo", "TutorialText")
      local var0 = {}
      var0.Key = false
      var0.Text = var0:getText("Dialog", "Cancel")
      var0.Style = "Round"
      local var1 = {}
      var1.Key = true
      var1.Text = var0:getText("AnimationFromVideo", "ChooseVideo")
      var1.Style = "RoundPrimary"
      var1277.Buttons = {}
      function var1277.OnButtonClicked()
         local var1298 = {}
         var1298.showImportAnimModelChoicePrompt = false
         arg1:setState(var1298)
      end
      
      function var1277.OnClose()
         arg1.props.SetReduceKeyframesDialogMode(var6.REDUCE_KEYFRAMES_DIALOG_MODE.FromMenu)
      end
      
      local var2 = var5.createElement(var20, var1277)
   end
   var983.CreateAnimationFromVideoTutorial = var11
   var11 = var9
   if var11 then
      local var1311 = {}
      var1311.Size = UDim2.new(0, var6.PROMPT_SIZE.Width.Offset, 0, 180)
      var1311.PromptText = var0:getText("AnimationFromVideo", "AgeRestricted")
      local var0 = {}
      var0.Key = false
      var0.Text = var0:getText("Dialog", "Cancel")
      var0.Style = "Round"
      var1311.Buttons = {}
      function var1311.OnButtonClicked()
         local var1334 = {}
         var1334.showCreateNewPrompt = true
         arg1:setState(var1334)
      end
      
      function var1311.OnClose()
         local var1338 = {}
         var1338.showCreateNewPrompt = false
         arg1:setState(var1338)
      end
      
      local var1 = var5.createElement(var20, var1311)
   end
   var983.CreateAnimationFromVideoAgeGate = var11
   return var5.createElement("ImageButton", var964, var983)
end

fun52 = var9.withContext
local var1343 = {}
var1343.Stylizer = var9.Stylizer
var1343.Localization = var9.Localization
var1343.Plugin = var9.Plugin
var1343.Analytics = var9.Analytics
var31 = fun52(var1343)(var31)
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
         local var1371 = {}
         var1371.showMenu = true
         arg1:setState(var1371)
      end
   end
   
   function var0.LoadAnimation()
      local var1375 = {}
      var1375.showMenu = false
      arg1:setState(var1375)
   end
   
   function var0.SaveAnimation(arg1, arg2)
      local var1381 = {}
      var1381.overwriteName = arg1
      var1381.isActionLegacyAnimSaves = arg2
      arg1:setState(var1381)
   end
   
   function var0.ImportKeyframeSequence()
      local var1384 = {}
      var1384.overwriteName = var5.None
      var1384.isActionLegacyAnimSaves = var5.None
      arg1:setState(var1384)
   end
   
   function var0.ImportFBXAnimationUserMayChooseModel()
      local var1391 = {}
      var1391.showSaveAsPrompt = true
      arg1:setState(var1391)
   end
   
   function var0.CreateFromVideoAndImportFBXAnimationUserMayChooseModel()
      local var1395 = {}
      var1395.showSaveAsPrompt = false
      arg1:setState(var1395)
   end
   
   function var0.ImportLoadedFBXAnimation()
      local var1399 = {}
      var1399.showImportAnimModelChoicePrompt = true
      arg1:setState(var1399)
   end
   
   function var0.SanitizeAnimation()
      local var1403 = {}
      var1403.showImportAnimModelChoicePrompt = false
      arg1:setState(var1403)
   end
   
   function var0.SetInReviewState()
      arg1.props.SetReduceKeyframesDialogMode(var6.REDUCE_KEYFRAMES_DIALOG_MODE.FromMenu)
   end
   
   function var0.SetIsDirty()
      local var1413 = {}
      var1413.showCreateNewPrompt = true
      arg1:setState(var1413)
   end
   
   function var0.SetIsLegacyAnimSaves()
      local var1417 = {}
      var1417.showCreateNewPrompt = false
      arg1:setState(var1417)
   end
   
   function var0.SetPlayState()
      local var1421 = {}
      var1421.showPromotePrompt = true
      arg1:setState(var1421)
   end
   
   function var0.SetReduceKeyframesDialogMode()
      local var1425 = {}
      var1425.showPromotePrompt = false
      arg1:setState(var1425)
   end
   
   return var0
end)(var31)
