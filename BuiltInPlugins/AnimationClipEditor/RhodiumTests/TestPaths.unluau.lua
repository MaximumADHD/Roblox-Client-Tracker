-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = {}
function var1.waitForDescendant(arg1, arg2)
   local var0 = arg1
   assert(var0, "waitForDescendant: instance cannot be nil.")
   local var1 = ipairs(arg2)
   local var2 = var0:WaitForChild(var14, 2)
   assert(var2, var18 ... " was not found under parent " ... var0:GetFullName() ... ".")
   var0 = var2
   return var0
end

function var1.getEditorController(arg1)
   local var28 = var1
   var28 = arg1
   local var0 = "AnimationClipEditor"
   local var1 = "EditorController"
   return var28.waitForDescendant(var28, {})
end

function var1.getDopeSheetController(arg1)
   local var35 = var1
   var35 = arg1
   local var38 = var1
   var38 = var35.getEditorController(var35)
   local var1 = "TrackEditor"
   local var2 = "DopeSheetController"
   return var38.waitForDescendant(var38, {})
end

function var1.getDopeSheet(arg1)
   local var45 = var1
   var45 = arg1
   local var48 = var1
   var48 = var45.getDopeSheetController(var45)
   local var1 = "DopeSheetContainer"
   local var2 = "DopeSheet"
   return var48.waitForDescendant(var48, {})
end

function var1.getTrack(arg1, arg2)
   local var56 = var1
   var56 = arg1
   local var59 = var1
   var59 = var56.getDopeSheet(var56)
   local var1 = arg2
   local var2 = "KeyframeDisplayArea"
   return var59.waitForDescendant(var59, {})
end

function var1.getTrackList(arg1)
   local var66 = var1
   var66 = arg1
   local var69 = var1
   var69 = var66.getEditorController(var66)
   local var1 = "TrackListAndScrollBar"
   local var2 = "TrackList"
   local var3 = "Canvas"
   return var69.waitForDescendant(var69, { "TrackListAndControlContainer", "EventsAndTracks" })
end

function var1.getAnimationControlPanel(arg1)
   local var79 = var1
   var79 = arg1
   local var82 = var1
   var82 = var79.getEditorController(var79)
   local var1 = "TrackListAndControlContainer"
   local var2 = "AnimationControlPanel"
   return var82.waitForDescendant(var82, {})
end

function var1.getMediaControls(arg1)
   local var89 = var1
   var89 = arg1
   local var92 = var1
   var92 = var89.getAnimationControlPanel(var89)
   local var1 = "MediaControls"
   return var92.waitForDescendant(var92, {})
end

function var1.getMediaControlButton(arg1, arg2)
   local var99 = var1
   var99 = arg1
   local var102 = var1
   var102 = var99.getMediaControls(var99)
   local var1 = arg2
   local var2 = "Button"
   local var3 = "Contents"
   local var4 = "TextButton"
   return var102.waitForDescendant(var102, {})
end

function var1.getTimeDisplay(arg1)
   local var111 = var1
   var111 = arg1
   local var114 = var1
   var114 = var111.getAnimationControlPanel(var111)
   local var1 = "TimeDisplay"
   return var114.waitForDescendant(var114, {})
end

function var1.getIKButton(arg1)
   local var120 = var1
   var120 = arg1
   local var123 = var1
   var123 = var120.getTrackList(var120)
   local var1 = "LeftButtonsListContainer"
   local var2 = "IKController"
   local var3 = "IKButton"
   return var123.waitForDescendant(var123, { "SummaryTrack" })
end

function var1.getIKWindow(arg1)
   local var132 = var1
   var132 = arg1
   local var0 = "Container"
   return var132.waitForDescendant(var132, {})
end

function var1.getIKEnableButton(arg1)
   local var138 = var1
   var138 = arg1
   local var141 = var1
   var141 = var138.getIKWindow(var138)
   local var1 = "BottomFrame"
   local var2 = "EnableIKButton"
   return var141.waitForDescendant(var141, {})
end

function var1.getIKTreeView(arg1)
   local var148 = var1
   var148 = arg1
   local var151 = var1
   var151 = var148.getIKWindow(var148)
   local var1 = "TreeView"
   local var2 = "TreeView"
   return var151.waitForDescendant(var151, {})
end

function var1.getTreeViewJoint(arg1, arg2)
   local var159 = var1
   var159 = arg1
   local var162 = var1
   var162 = var159.getIKTreeView(var159)
   local var1 = "Contents"
   local var2 = "List"
   local var3 = arg2
   return var162.waitForDescendant(var162, {})
end

function var1.getTreeViewJointPin(arg1, arg2)
   local var171 = var1
   var171 = arg1
   local var175 = var1
   var175 = var171.getTreeViewJoint(var171, arg2)
   local var1 = "Pin"
   return var175.waitForDescendant(var175, {})
end

function var1.getEventsTitleTrack(arg1)
   local var181 = var1
   var181 = arg1
   local var184 = var1
   var184 = var181.getEditorController(var181)
   local var1 = "TrackListAndControlContainer"
   local var2 = "EventsAndTracks"
   local var3 = "EventsTitle"
   return var184.waitForDescendant(var184, {})
end

function var1.getEventsTrack(arg1)
   local var192 = var1
   var192 = arg1
   local var195 = var1
   var195 = var192.getDopeSheetController(var192)
   local var1 = "Track"
   local var2 = "Markers"
   local var3 = "KeyframeDisplayArea"
   return var195.waitForDescendant(var195, { "Events" })
end

function var1.getEventsDialogContents(arg1)
   local var204 = var1
   var204 = arg1
   local var0 = "Contents"
   local var1 = "Container"
   return var204.waitForDescendant(var204, { "SolidBackground" })
end

function var1.getEventEntry(arg1, arg2)
   local var213 = var1
   var213 = arg1
   local var216 = var1
   var216 = var213.getEventsDialogContents(var213)
   local var1 = "Event_" ... arg2
   return var216.waitForDescendant(var216, {})
end

function var1.getAddEventEntry(arg1)
   local var224 = var1
   var224 = arg1
   local var227 = var1
   var227 = var224.getEventsDialogContents(var224)
   local var1 = "AddNew"
   local var2 = "AddEventEntry"
   return var227.waitForDescendant(var227, {})
end

function var1.getStyledDialogContents(arg1)
   local var234 = var1
   var234 = arg1
   local var0 = "SolidBackground"
   local var1 = "Contents"
   return var234.waitForDescendant(var234, {})
end

function var1.getKFRKeyframesText(arg1)
   local var241 = var1
   var241 = arg1
   local var244 = var1
   var244 = var241.getStyledDialogContents(var241)
   local var1 = "KeyframePane"
   local var2 = "KeyframesText"
   return var244.waitForDescendant(var244, {})
end

function var1.getKFRSlider(arg1)
   local var251 = var1
   var251 = arg1
   local var254 = var1
   var254 = var251.getStyledDialogContents(var251)
   local var1 = "Slider"
   return var254.waitForDescendant(var254, {})
end

function var1.getKFRCancel(arg1)
   local var260 = var1
   var260 = arg1
   local var0 = "SolidBackground"
   local var1 = "ButtonContainer"
   return var260.waitForDescendant(var260, {})[1]
end

function var1.getKFROk(arg1)
   local var268 = var1
   var268 = arg1
   local var0 = "SolidBackground"
   local var1 = "ButtonContainer"
   return var268.waitForDescendant(var268, {})[2]
end

function var1.getCurveEditorController(arg1)
   local var276 = var1
   var276 = arg1
   local var279 = var1
   var279 = var276.getEditorController(var276)
   local var1 = "TrackEditor"
   local var2 = "CurveEditorController"
   return var279.waitForDescendant(var279, {})
end

function var1.getCurveCanvas(arg1)
   local var286 = var1
   var286 = arg1
   local var289 = var1
   var289 = var286.getCurveEditorController(var286)
   local var1 = "CanvasContainer"
   local var2 = "CurveCanvas"
   return var289.waitForDescendant(var289, {})
end

return var1
