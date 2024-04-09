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
   local var556 = {}
   var556.showMenu = false
   var556.showSaveAsPrompt = false
   var556.showCreateNewPrompt = false
   var556.showImportAnimModelChoicePrompt = false
   var556.showPromotePrompt = false
   var556.overwriteName = nil
   var556.loadingName = nil
   var556.isActionLegacyAnimSaves = nil
   var556.showCreateAnimationFromVideoTutorial = false
   arg1.state = var556
   function arg1.showMenu()
      if not arg1.props.ReadOnly then
         arg1.props.SetPlayState(var6.PLAY_STATE.Pause)
         local var576 = {}
         var576.showMenu = true
         arg1:setState(var576)
      end
   end
   
   function arg1.hideMenu()
      local var580 = {}
      var580.showMenu = false
      arg1:setState(var580)
   end
   
   function arg1.showOverwritePrompt(arg1, arg2)
      local var586 = {}
      var586.overwriteName = arg1
      var586.isActionLegacyAnimSaves = arg2
      arg1:setState(var586)
   end
   
   function arg1.hideOverwritePrompt()
      local var589 = {}
      var589.overwriteName = var5.None
      var589.isActionLegacyAnimSaves = var5.None
      arg1:setState(var589)
   end
   
   function arg1.showSaveAsPrompt()
      local var596 = {}
      var596.showSaveAsPrompt = true
      arg1:setState(var596)
   end
   
   function arg1.hideSaveAsPrompt()
      local var600 = {}
      var600.showSaveAsPrompt = false
      arg1:setState(var600)
   end
   
   function arg1.showImportAnimModelChoicePrompt()
      local var604 = {}
      var604.showImportAnimModelChoicePrompt = true
      arg1:setState(var604)
   end
   
   function arg1.hideImportAnimModelChoicePrompt()
      local var608 = {}
      var608.showImportAnimModelChoicePrompt = false
      arg1:setState(var608)
   end
   
   function arg1.showReduceKeyframesDialog()
      arg1.props.SetReduceKeyframesDialogMode(var6.REDUCE_KEYFRAMES_DIALOG_MODE.FromMenu)
   end
   
   function arg1.showCreateNewPrompt()
      local var618 = {}
      var618.showCreateNewPrompt = true
      arg1:setState(var618)
   end
   
   function arg1.hideCreateNewPrompt()
      local var622 = {}
      var622.showCreateNewPrompt = false
      arg1:setState(var622)
   end
   
   function arg1.showPromotePrompt()
      local var626 = {}
      var626.showPromotePrompt = true
      arg1:setState(var626)
   end
   
   function arg1.hidePromotePrompt()
      local var630 = {}
      var630.showPromotePrompt = false
      arg1:setState(var630)
   end
   
   function arg1.showLoadNewPrompt(arg1, arg2)
      local var636 = {}
      var636.loadingName = arg1
      var636.isActionLegacyAnimSaves = arg2
      arg1:setState(var636)
   end
   
   function arg1.hideLoadNewPrompt()
      local var639 = {}
      var639.loadingName = var5.None
      var639.isActionLegacyAnimSaves = var5.None
      arg1:setState(var639)
   end
   
   function arg1.setShowCreateAnimationFromVideoTutorial(arg1)
      local var647 = {}
      var647.showCreateAnimationFromVideoTutorial = arg1
      arg1:setState(var647)
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
      local var671 = arg1.props
      var671 = arg1.props.Plugin
      var671.ImportKeyframeSequence(var671, arg1.props.Analytics)
   end
   
   function arg1.importFbxRequested()
      if arg1.props.IsDirty then
         arg1.showLoadNewPrompt(var2)
      end
      arg1.props.SetInReviewState(false)
      local var690 = arg1.props
      var690 = arg1.props.Plugin
      var690.ImportFBXAnimationUserMayChooseModel(var690, arg1, arg1.props.Analytics)
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
      local var730 = arg1
      if var730.props.IsDirty then
         local var733 = arg1
         var733 = arg1
         var730 = arg2
         var733.showLoadNewPrompt(var733, var730)
      end
      arg1.props.SetInReviewState(false)
      local var739 = arg1
      local var740 = var739.props
      var740 = arg1
      var739 = arg2
      var740.LoadAnimation(var740, var739, arg1.props.Analytics)
   end
   
   function arg1.handleLoadNewPrompt()
      local var0 = arg1.props
      local var1 = arg1.state
      local var2 = var1.loadingName
      local var3 = arg1.props.Plugin
      arg1.hideLoadNewPrompt()
      local var756 = arg1
      var756.props.SetInReviewState(false)
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
      var756 = var1.isActionLegacyAnimSaves
      var0.LoadAnimation(var2, var756, var0.Analytics)
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
   local var813 = {}
   var813.Size = UDim2.new(1, var6.CONTROLS_WIDTH - var6.TIME_DISPLAY_WIDTH, 1, 0)
   var813.BackgroundTransparency = 1
   var813.ImageTransparency = 1
   var813.AutoButtonColor = false
   var813.LayoutOrder = var1.LayoutOrder
   var5.Event.Activated = arg1.showMenu
   local var832 = {}
   local var836 = {}
   var836.PaddingLeft = var8
   var836.PaddingRight = var8
   var832.Padding = var5.createElement("UIPadding", var836)
   local var843 = {}
   var843.Size = UDim2.new(1, var6.TRACKLIST_BUTTON_SIZE - var6.INDENT_PADDING, 1, 0)
   var843.BackgroundTransparency = 1
   var843.Text = var4
   var843.TextTruncate = Enum.TextTruncate.AtEnd
   var843.TextSize = var5.textSize
   var843.Font = var3.font
   var843.TextColor3 = var5.textColor
   var843.TextXAlignment = Enum.TextXAlignment.Left
   var832.AnimationClipLabel = var5.createElement("TextLabel", var843)
   local var865 = {}
   var865.AnchorPoint = Vector2.new(1, 0.5)
   var865.Position = UDim2.new(1, 0, 0.5, 0)
   var865.OnActivated = arg1.showMenu
   var832.ContextButton = var5.createElement(var19, var865)
   local var881 = {}
   var881.ShowMenu = var2.showMenu
   var881.CurrentAnimation = var4
   var881.IsLegacyAnimSaves = var1.IsLegacyAnimSaves
   var881.IsChannelAnimation = var1.IsChannelAnimation
   var881.OnMenuOpened = arg1.hideMenu
   var881.OnOverwriteRequested = arg1.showOverwritePrompt
   var881.OnSaveAsRequested = arg1.showSaveAsPrompt
   var881.OnCreateNewRequested = arg1.createNew
   var881.OnLoadRequested = arg1.loadNew
   var881.OnImportRequested = arg1.importRequested
   var881.OnImportFbxRequested = arg1.importFbxRequested
   var881.OnCreateFromVideoRequested = arg1.createFromVideoRequested
   var881.OnPromoteRequested = arg1.showPromotePrompt
   var881.OnReduceKeyframesRequested = arg1.showReduceKeyframesDialog
   var881.OnSanitizeAnimation = arg1.onSanitizeAnimation
   local var893 = var5.createElement(var18, var881)
   var832.AnimationClipMenu = var893
   var893 = var2.showCreateNewPrompt
   if var893 then
      local var897 = {}
      var897.PromptText = var0:getText("Title", "CreateNew")
      var897.InputText = var0:getText("Dialog", "AnimationName")
      var897.Text = var0:getText("Title", "DefaultAnimationName")
      local var0 = {}
      var0.Key = false
      var0.Text = var0:getText("Dialog", "Cancel")
      var0.Style = "Round"
      local var1 = {}
      var1.Key = true
      var1.Text = var0:getText("Dialog", "Create")
      var1.Style = "RoundPrimary"
      var897.Buttons = {}
      function var897.OnTextSubmitted()
         if not arg1.props.ReadOnly then
            arg1.props.SetPlayState(var6.PLAY_STATE.Pause)
            local var935 = {}
            var935.showMenu = true
            arg1:setState(var935)
         end
      end
      
      var897.OnClose = arg1.hideCreateNewPrompt
      local var2 = var5.createElement(var21, var897)
   end
   var832.CreateNewPrompt = var893
   var893 = var2.showSaveAsPrompt
   if var893 then
      local var943 = {}
      var943.PromptText = var0:getText("Title", "SaveAsNew")
      var943.InputText = var0:getText("Dialog", "AnimationName")
      var943.NoticeText = var0:getText("Dialog", "SaveLocation")
      var943.Text = var4
      local var0 = {}
      var0.Key = false
      var0.Text = var0:getText("Dialog", "Cancel")
      var0.Style = "Round"
      local var1 = {}
      var1.Key = true
      var1.Text = var0:getText("Dialog", "Save")
      var1.Style = "RoundPrimary"
      var943.Buttons = {}
      function var943.OnTextSubmitted()
         local var972 = {}
         var972.showMenu = false
         arg1:setState(var972)
      end
      
      var943.OnClose = arg1.hideSaveAsPrompt
      local var2 = var5.createElement(var21, var943)
   end
   var832.SaveAsPrompt = var893
   var893 = var2.showImportAnimModelChoicePrompt
   if var893 then
      local var980 = {}
      var980.Text = var0:getText("Toast", "AnimationImportModelsDiffer")
      var980.ButtonWidth = var6.PROMPT_BUTTON_SIZE.X * 1.5
      local var0 = {}
      var0.Key = true
      var0.Text = var0:getText("Toast", "AnimationImportUseFBX")
      var0.Style = "Round"
      local var1 = {}
      var1.Key = false
      var1.Text = var0:getText("Toast", "AnimationImportUseSelected")
      var1.Style = "Round"
      var980.Buttons = {}
      function var980.OnButtonClicked(arg1, arg2)
         local var1007 = {}
         var1007.overwriteName = arg1
         var1007.isActionLegacyAnimSaves = arg2
         arg1:setState(var1007)
      end
      
      local var2 = var5.createElement(var17, var980)
   end
   var832.ImportAnimModelChoicePrompt = var893
   var893 = var6
   if var893 then
      local var1013 = {}
      local var1016 = {}
      var1016.overwriteName = var6
      var1013.PromptText = var0:getText("Menu", "Overwrite_Migrated", var1016)
      local var0 = {}
      var0.Key = false
      var0.Text = var0:getText("Dialog", "No")
      var0.Style = "Round"
      local var1 = {}
      var1.Key = true
      var1.Text = var0:getText("Dialog", "Yes")
      var1.Style = "RoundPrimary"
      var1013.Buttons = {}
      function var1013.OnButtonClicked()
         local var1035 = {}
         var1035.overwriteName = var5.None
         var1035.isActionLegacyAnimSaves = var5.None
         arg1:setState(var1035)
      end
      
      var1013.OnClose = arg1.hideOverwritePrompt
      local var2 = var5.createElement(var20, var1013)
   end
   var832.OverwritePrompt = var893
   if var2.showPromotePrompt then
      local var1046 = {}
      var1046.PromptText = var0:getText("Dialog", "PromotePrompt")
      local var0 = {}
      var0.Key = false
      var0.Text = var0:getText("Dialog", "Cancel")
      var0.Style = "Round"
      local var1 = {}
      var1.Key = true
      var1.Text = var0:getText("Dialog", "Confirm")
      var1.Style = "RoundPrimary"
      var1046.Buttons = {}
      function var1046.OnButtonClicked()
         local var1067 = {}
         var1067.showSaveAsPrompt = true
         arg1:setState(var1067)
      end
      
      var1046.OnClose = arg1.hidePromotePrompt
      local var2 = var5.createElement(var20, var1046) or nil
   end
   local var11 = nil
   var832.PromotePrompt = var11
   var11 = var2.loadingName
   if var11 then
      local var1078 = {}
      var1078.PromptText = var0:getText("Title", "ConfirmSave")
      var1078.InputText = var0:getText("Dialog", "AnimationName")
      var1078.NoticeText = var0:getText("Dialog", "SaveLocation")
      var1078.Text = var4
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
      var1078.Buttons = {}
      function var1078.OnButtonClicked()
         local var1114 = {}
         var1114.showSaveAsPrompt = false
         arg1:setState(var1114)
      end
      
      function var1078.OnTextSubmitted()
         local var1118 = {}
         var1118.showImportAnimModelChoicePrompt = true
         arg1:setState(var1118)
      end
      
      var1078.OnClose = arg1.hideLoadNewPrompt
      local var3 = var5.createElement(var21, var1078)
   end
   var832.LoadNewPrompt = var11
   var11 = var8
   if var11 then
      local var1126 = {}
      var1126.PromptText = var0:getText("AnimationFromVideo", "TutorialText")
      local var0 = {}
      var0.Key = false
      var0.Text = var0:getText("Dialog", "Cancel")
      var0.Style = "Round"
      local var1 = {}
      var1.Key = true
      var1.Text = var0:getText("AnimationFromVideo", "ChooseVideo")
      var1.Style = "RoundPrimary"
      var1126.Buttons = {}
      function var1126.OnButtonClicked()
         local var1147 = {}
         var1147.showImportAnimModelChoicePrompt = false
         arg1:setState(var1147)
      end
      
      function var1126.OnClose()
         arg1.props.SetReduceKeyframesDialogMode(var6.REDUCE_KEYFRAMES_DIALOG_MODE.FromMenu)
      end
      
      local var2 = var5.createElement(var20, var1126)
   end
   var832.CreateAnimationFromVideoTutorial = var11
   var11 = var9
   if var11 then
      local var1160 = {}
      var1160.Size = UDim2.new(0, var6.PROMPT_SIZE.Width.Offset, 0, 180)
      var1160.PromptText = var0:getText("AnimationFromVideo", "AgeRestricted")
      local var0 = {}
      var0.Key = false
      var0.Text = var0:getText("Dialog", "Cancel")
      var0.Style = "Round"
      var1160.Buttons = {}
      function var1160.OnButtonClicked()
         local var1183 = {}
         var1183.showCreateNewPrompt = true
         arg1:setState(var1183)
      end
      
      function var1160.OnClose()
         local var1187 = {}
         var1187.showCreateNewPrompt = false
         arg1:setState(var1187)
      end
      
      local var1 = var5.createElement(var20, var1160)
   end
   var832.CreateAnimationFromVideoAgeGate = var11
   return var5.createElement("ImageButton", var813, var832)
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
   local var813 = {}
   var813.Size = UDim2.new(1, var6.CONTROLS_WIDTH - var6.TIME_DISPLAY_WIDTH, 1, 0)
   var813.BackgroundTransparency = 1
   var813.ImageTransparency = 1
   var813.AutoButtonColor = false
   var813.LayoutOrder = var1.LayoutOrder
   var5.Event.Activated = arg1.showMenu
   local var832 = {}
   local var836 = {}
   var836.PaddingLeft = var8
   var836.PaddingRight = var8
   var832.Padding = var5.createElement("UIPadding", var836)
   local var843 = {}
   var843.Size = UDim2.new(1, var6.TRACKLIST_BUTTON_SIZE - var6.INDENT_PADDING, 1, 0)
   var843.BackgroundTransparency = 1
   var843.Text = var4
   var843.TextTruncate = Enum.TextTruncate.AtEnd
   var843.TextSize = var5.textSize
   var843.Font = var3.font
   var843.TextColor3 = var5.textColor
   var843.TextXAlignment = Enum.TextXAlignment.Left
   var832.AnimationClipLabel = var5.createElement("TextLabel", var843)
   local var865 = {}
   var865.AnchorPoint = Vector2.new(1, 0.5)
   var865.Position = UDim2.new(1, 0, 0.5, 0)
   var865.OnActivated = arg1.showMenu
   var832.ContextButton = var5.createElement(var19, var865)
   local var881 = {}
   var881.ShowMenu = var2.showMenu
   var881.CurrentAnimation = var4
   var881.IsLegacyAnimSaves = var1.IsLegacyAnimSaves
   var881.IsChannelAnimation = var1.IsChannelAnimation
   var881.OnMenuOpened = arg1.hideMenu
   var881.OnOverwriteRequested = arg1.showOverwritePrompt
   var881.OnSaveAsRequested = arg1.showSaveAsPrompt
   var881.OnCreateNewRequested = arg1.createNew
   var881.OnLoadRequested = arg1.loadNew
   var881.OnImportRequested = arg1.importRequested
   var881.OnImportFbxRequested = arg1.importFbxRequested
   var881.OnCreateFromVideoRequested = arg1.createFromVideoRequested
   var881.OnPromoteRequested = arg1.showPromotePrompt
   var881.OnReduceKeyframesRequested = arg1.showReduceKeyframesDialog
   var881.OnSanitizeAnimation = arg1.onSanitizeAnimation
   local var893 = var5.createElement(var18, var881)
   var832.AnimationClipMenu = var893
   var893 = var2.showCreateNewPrompt
   if var893 then
      local var897 = {}
      var897.PromptText = var0:getText("Title", "CreateNew")
      var897.InputText = var0:getText("Dialog", "AnimationName")
      var897.Text = var0:getText("Title", "DefaultAnimationName")
      local var0 = {}
      var0.Key = false
      var0.Text = var0:getText("Dialog", "Cancel")
      var0.Style = "Round"
      local var1 = {}
      var1.Key = true
      var1.Text = var0:getText("Dialog", "Create")
      var1.Style = "RoundPrimary"
      var897.Buttons = {}
      function var897.OnTextSubmitted()
         if not arg1.props.ReadOnly then
            arg1.props.SetPlayState(var6.PLAY_STATE.Pause)
            local var935 = {}
            var935.showMenu = true
            arg1:setState(var935)
         end
      end
      
      var897.OnClose = arg1.hideCreateNewPrompt
      local var2 = var5.createElement(var21, var897)
   end
   var832.CreateNewPrompt = var893
   var893 = var2.showSaveAsPrompt
   if var893 then
      local var943 = {}
      var943.PromptText = var0:getText("Title", "SaveAsNew")
      var943.InputText = var0:getText("Dialog", "AnimationName")
      var943.NoticeText = var0:getText("Dialog", "SaveLocation")
      var943.Text = var4
      local var0 = {}
      var0.Key = false
      var0.Text = var0:getText("Dialog", "Cancel")
      var0.Style = "Round"
      local var1 = {}
      var1.Key = true
      var1.Text = var0:getText("Dialog", "Save")
      var1.Style = "RoundPrimary"
      var943.Buttons = {}
      function var943.OnTextSubmitted()
         local var972 = {}
         var972.showMenu = false
         arg1:setState(var972)
      end
      
      var943.OnClose = arg1.hideSaveAsPrompt
      local var2 = var5.createElement(var21, var943)
   end
   var832.SaveAsPrompt = var893
   var893 = var2.showImportAnimModelChoicePrompt
   if var893 then
      local var980 = {}
      var980.Text = var0:getText("Toast", "AnimationImportModelsDiffer")
      var980.ButtonWidth = var6.PROMPT_BUTTON_SIZE.X * 1.5
      local var0 = {}
      var0.Key = true
      var0.Text = var0:getText("Toast", "AnimationImportUseFBX")
      var0.Style = "Round"
      local var1 = {}
      var1.Key = false
      var1.Text = var0:getText("Toast", "AnimationImportUseSelected")
      var1.Style = "Round"
      var980.Buttons = {}
      function var980.OnButtonClicked(arg1, arg2)
         local var1007 = {}
         var1007.overwriteName = arg1
         var1007.isActionLegacyAnimSaves = arg2
         arg1:setState(var1007)
      end
      
      local var2 = var5.createElement(var17, var980)
   end
   var832.ImportAnimModelChoicePrompt = var893
   var893 = var6
   if var893 then
      local var1013 = {}
      local var1016 = {}
      var1016.overwriteName = var6
      var1013.PromptText = var0:getText("Menu", "Overwrite_Migrated", var1016)
      local var0 = {}
      var0.Key = false
      var0.Text = var0:getText("Dialog", "No")
      var0.Style = "Round"
      local var1 = {}
      var1.Key = true
      var1.Text = var0:getText("Dialog", "Yes")
      var1.Style = "RoundPrimary"
      var1013.Buttons = {}
      function var1013.OnButtonClicked()
         local var1035 = {}
         var1035.overwriteName = var5.None
         var1035.isActionLegacyAnimSaves = var5.None
         arg1:setState(var1035)
      end
      
      var1013.OnClose = arg1.hideOverwritePrompt
      local var2 = var5.createElement(var20, var1013)
   end
   var832.OverwritePrompt = var893
   if var2.showPromotePrompt then
      local var1046 = {}
      var1046.PromptText = var0:getText("Dialog", "PromotePrompt")
      local var0 = {}
      var0.Key = false
      var0.Text = var0:getText("Dialog", "Cancel")
      var0.Style = "Round"
      local var1 = {}
      var1.Key = true
      var1.Text = var0:getText("Dialog", "Confirm")
      var1.Style = "RoundPrimary"
      var1046.Buttons = {}
      function var1046.OnButtonClicked()
         local var1067 = {}
         var1067.showSaveAsPrompt = true
         arg1:setState(var1067)
      end
      
      var1046.OnClose = arg1.hidePromotePrompt
      local var2 = var5.createElement(var20, var1046) or nil
   end
   local var11 = nil
   var832.PromotePrompt = var11
   var11 = var2.loadingName
   if var11 then
      local var1078 = {}
      var1078.PromptText = var0:getText("Title", "ConfirmSave")
      var1078.InputText = var0:getText("Dialog", "AnimationName")
      var1078.NoticeText = var0:getText("Dialog", "SaveLocation")
      var1078.Text = var4
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
      var1078.Buttons = {}
      function var1078.OnButtonClicked()
         local var1114 = {}
         var1114.showSaveAsPrompt = false
         arg1:setState(var1114)
      end
      
      function var1078.OnTextSubmitted()
         local var1118 = {}
         var1118.showImportAnimModelChoicePrompt = true
         arg1:setState(var1118)
      end
      
      var1078.OnClose = arg1.hideLoadNewPrompt
      local var3 = var5.createElement(var21, var1078)
   end
   var832.LoadNewPrompt = var11
   var11 = var8
   if var11 then
      local var1126 = {}
      var1126.PromptText = var0:getText("AnimationFromVideo", "TutorialText")
      local var0 = {}
      var0.Key = false
      var0.Text = var0:getText("Dialog", "Cancel")
      var0.Style = "Round"
      local var1 = {}
      var1.Key = true
      var1.Text = var0:getText("AnimationFromVideo", "ChooseVideo")
      var1.Style = "RoundPrimary"
      var1126.Buttons = {}
      function var1126.OnButtonClicked()
         local var1147 = {}
         var1147.showImportAnimModelChoicePrompt = false
         arg1:setState(var1147)
      end
      
      function var1126.OnClose()
         arg1.props.SetReduceKeyframesDialogMode(var6.REDUCE_KEYFRAMES_DIALOG_MODE.FromMenu)
      end
      
      local var2 = var5.createElement(var20, var1126)
   end
   var832.CreateAnimationFromVideoTutorial = var11
   var11 = var9
   if var11 then
      local var1160 = {}
      var1160.Size = UDim2.new(0, var6.PROMPT_SIZE.Width.Offset, 0, 180)
      var1160.PromptText = var0:getText("AnimationFromVideo", "AgeRestricted")
      local var0 = {}
      var0.Key = false
      var0.Text = var0:getText("Dialog", "Cancel")
      var0.Style = "Round"
      var1160.Buttons = {}
      function var1160.OnButtonClicked()
         local var1183 = {}
         var1183.showCreateNewPrompt = true
         arg1:setState(var1183)
      end
      
      function var1160.OnClose()
         local var1187 = {}
         var1187.showCreateNewPrompt = false
         arg1:setState(var1187)
      end
      
      local var1 = var5.createElement(var20, var1160)
   end
   var832.CreateAnimationFromVideoAgeGate = var11
   return var5.createElement("ImageButton", var813, var832)
end

fun49 = var9.withContext
local var1192 = {}
var1192.Stylizer = var9.Stylizer
var1192.Localization = var9.Localization
var1192.Plugin = var9.Plugin
var1192.Analytics = var9.Analytics
var31 = fun49(var1192)(var31)
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
         local var1220 = {}
         var1220.showMenu = true
         arg1:setState(var1220)
      end
   end
   
   function var0.LoadAnimation()
      local var1224 = {}
      var1224.showMenu = false
      arg1:setState(var1224)
   end
   
   function var0.SaveAnimation(arg1, arg2)
      local var1230 = {}
      var1230.overwriteName = arg1
      var1230.isActionLegacyAnimSaves = arg2
      arg1:setState(var1230)
   end
   
   function var0.ImportKeyframeSequence()
      local var1233 = {}
      var1233.overwriteName = var5.None
      var1233.isActionLegacyAnimSaves = var5.None
      arg1:setState(var1233)
   end
   
   function var0.ImportFBXAnimationUserMayChooseModel()
      local var1240 = {}
      var1240.showSaveAsPrompt = true
      arg1:setState(var1240)
   end
   
   function var0.CreateFromVideoAndImportFBXAnimationUserMayChooseModel()
      local var1244 = {}
      var1244.showSaveAsPrompt = false
      arg1:setState(var1244)
   end
   
   function var0.ImportLoadedFBXAnimation()
      local var1248 = {}
      var1248.showImportAnimModelChoicePrompt = true
      arg1:setState(var1248)
   end
   
   function var0.SanitizeAnimation()
      local var1252 = {}
      var1252.showImportAnimModelChoicePrompt = false
      arg1:setState(var1252)
   end
   
   function var0.SetInReviewState()
      arg1.props.SetReduceKeyframesDialogMode(var6.REDUCE_KEYFRAMES_DIALOG_MODE.FromMenu)
   end
   
   function var0.SetIsDirty()
      local var1262 = {}
      var1262.showCreateNewPrompt = true
      arg1:setState(var1262)
   end
   
   function var0.SetIsLegacyAnimSaves()
      local var1266 = {}
      var1266.showCreateNewPrompt = false
      arg1:setState(var1266)
   end
   
   function var0.SetPlayState()
      local var1270 = {}
      var1270.showPromotePrompt = true
      arg1:setState(var1270)
   end
   
   function var0.SetReduceKeyframesDialogMode()
      local var1274 = {}
      var1274.showPromotePrompt = false
      arg1:setState(var1274)
   end
   
   return var0
end)(var31)
