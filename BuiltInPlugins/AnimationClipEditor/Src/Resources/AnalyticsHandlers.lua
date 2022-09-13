local StudioService = game:GetService("StudioService")
local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)
local TARGET = "studio"
local CONTEXT = "animationEditor"

local GetFFlagFacsAnimationExportAnalytics = require(Plugin.LuaFlags.GetFFlagFacsAnimationExportAnalytics)

return function(analyticsService)
	local function sendEvent(eventName, additionalArgs)
        additionalArgs = additionalArgs or {}

        local args = Cryo.Dictionary.join({
            studioSid = analyticsService:GetSessionId(),
            clientId = analyticsService:GetClientId(),
            placeId = game.PlaceId,
            userId = StudioService:GetUserId(),
        }, additionalArgs)

        analyticsService:SendEventDeferred("studio", "animationEditor", eventName, args)
	end

	local function reportCounter(counterName, count)
        analyticsService:ReportCounter(counterName, count or 1)
    end

    local function reportStats(statName, count)
        analyticsService:ReportStats(statName, count or 1)
    end

    local function makeStatName(name)
        return TARGET .."." ..CONTEXT .."." ..name
    end

    return {
        onEditorOpened = function (_, timelineUnit, keyframeSnap, snapMode)
            sendEvent("toolOpened", {
                method = 1,
                timelineUnit = timelineUnit,
                keyframeSnap = keyframeSnap,
                snapMode = snapMode,
            })
            reportCounter(makeStatName("EditorOpened"))
            sendEvent("EditorOpened")
        end,

        onEditorClosed = function(_, timeOpen)
            sendEvent("toolClosed", {
                timeOpen = timeOpen,
                method = 1,
            })
        end,

        onImportAnimation = function(_, animationId)
            sendEvent("importAnimation", {
                animationId = animationId,
            })
        end,

        onImportFbxAnimation = function(_)
            sendEvent("importFbxAnimation", {})
            reportCounter(makeStatName("FBXAnimationImported"))
            sendEvent("FBXAnimationImported")
        end,

        onUserChoseFBXModelForAnimImport = function(_)
            reportCounter(makeStatName("UserChoseFBXModelForAnimImport"))
            sendEvent("userChoseFBXModelForAnimImport")
        end,

        onUserChoseSelectedModelForAnimImport = function(_)
            reportCounter(makeStatName("UserChoseSelectedModelForAnimImport"))
            sendEvent("userChoseSelectedModelForAnimImport")
        end,

        onExportAnimation = function(_, hasFacs, animationType)
            sendEvent("exportAnimation", {
                animationType = animationType,
                hasFacs = if GetFFlagFacsAnimationExportAnalytics() then hasFacs else nil,
            })
        end,

        onLoadAnimation = function(_, name, numKeyframes, numPoses, numEvents, animationType)
            sendEvent("loadAnimation", {
                animationType = animationType,
                name = name,
                numKeyframes = numKeyframes,
                numPoses = numPoses,
                numEvents = numEvents,
            })
        end,

        onSaveAnimation = function(_, name, numKeyframes, numPoses, numEvents, animationType)
            sendEvent("saveAnimation", {
                animationType = animationType,
                name = name,
                numKeyframes = numKeyframes,
                numPoses = numPoses,
                numEvents = numEvents,
            })
            reportStats(makeStatName("ExportedKeyframes"), numKeyframes)
            reportStats(makeStatName("ExportedPoses"), numPoses)
            reportStats(makeStatName("ExportedEvents"), numEvents)
        end,

        onCreateNewAnimation = function(_, name)
            sendEvent("createNewAnimation", {
                name = name,
            })
        end,

        onQuantizeSelection = function(_, didQuantize)
            sendEvent("quantizeSelection", {
                didQuantize = didQuantize,
            })
        end,

        onTimeUnitChanged = function(_, timeUnit)
            sendEvent("timeUnitChanged", {
                timeUnit = timeUnit,
            })
        end,

        onKeyframeSnapChanged = function(_, keyframeSnap)
            sendEvent("keyframeSnapChanged", {
                keyframeSnap = keyframeSnap,
            })
        end,

        onToolChanged = function(_, tool)
            sendEvent("toolChanged", {
                tool = tool,
            })
        end,

        onIkEnabled = function(_)
            sendEvent("ikEnabled", {})
            reportCounter(makeStatName("IKEnabled"))
            sendEvent("IKEnabled")
        end,

        onIkDisabled = function(_, timeOpen)
            sendEvent("ikDisabled", {
                timeOpen = timeOpen,
            })
        end,

        onControlPressed = function(_, control)
            sendEvent("controlPressed", {
                control = control,
            })
        end,

        onTrackAdded = function(_, trackName, editorMode)
            sendEvent("trackAdded", {
                trackName = trackName,
                editorMode = editorMode,
            })
        end,

        onTrackDeleted = function(_, trackName, hadKeyframes, editorMode)
            sendEvent("trackDeleted", {
                trackName = trackName,
                hadKeyframes = hadKeyframes,
                editorMode = editorMode,
            })
        end,

        onTrackSelected = function(_, trackName, source, editorMode)
            sendEvent("trackSelected", {
                trackName = trackName,
                source = source,
                editorMode = editorMode,
            })
        end,

        onRenameKeyframe = function(_, name)
            sendEvent("renameKeyframe", {
                name = name,
            })
        end,

        onAddEvent = function(_, name, parameter, editorMode)
            sendEvent("addEvent", {
                name = name,
                parameter = parameter,
                editorMode = editorMode,
            })
            reportCounter(makeStatName("EventAdded"))
            sendEvent("EventAdded")
        end,

        onAddKeyframe = function(_, trackName, editorMode)
            sendEvent("addKeyframe", {
                trackName = trackName,
                editorMode = editorMode,
            })
            reportCounter(makeStatName("KeyframeAdded"))
            sendEvent("KeyframeAdded")
        end,

        onDeleteKeyframe = function(_, trackName, editorMode)
            sendEvent("deleteKeyframe", {
                trackName = trackName,
                editorMode = editorMode,
            })
        end,

        onPromoteAnimation = function(_, name, numTracks, numKeyframes, numEvents)
            sendEvent("promoteAnimation", {
                name = name,
                numKeyframes = numKeyframes,
                numTracks = numTracks,
                numEvents = numEvents,
            })
        end,

        onAnimationEditorImportVideoCreate = function(_)
            sendEvent("animationEditorImportVideoCreate", {})
        end,

        onAnimationEditorImportVideoUploadCancel = function(_)
            sendEvent("animationEditorImportVideoUploadCancel", {})
        end,

        onAnimationEditorImportVideoUploadSucceed = function(_)
            sendEvent("animationEditorImportVideoUploadSucceed", {})
        end,

        onAnimationEditorImportVideoError = function(_, errorMsg)
            sendEvent("animationEditorImportVideoError", {
                errorMsg = errorMsg
            })
        end,

        onFacialAnimationRecordingEnabled = function(_)
            sendEvent("facialAnimationRecordingEnabled", {})
        end,

        onFacialAnimationRecordingStartRecording = function(_)
            sendEvent("facialAnimationRecordingStartRecording", {})
        end,

        onFacialAnimationRecordingEndRecording = function(_, duration)
            sendEvent("facialAnimationRecordingEndRecording", {
                duration = duration,
            })
        end,

        onFacialAnimationRecordingReRecordPressed = function(_)
            sendEvent("facialAnimationRecordingReRecordPressed", {})
        end,

		onEditorModeSwitch = function(_, oldMode, newMode, duration)
            sendEvent("editorModeSwitch", {
                oldMode = oldMode,
                newMode = newMode,
                duration = duration,
            })
        end,

        onKeyframeReductionApply = function(_, tracks, isChannelAnimation, before, after)
            sendEvent("keyframeReductionApply", {
                isChannelAnimation = isChannelAnimation,
                tracks = tracks,
                before = before,
                after = after,
            })
        end,

        onKeyframeReductionCancel = function(_, tracks, isChannelAnimation)
            sendEvent("keyframeReductionCancel", {
                isChannelAnimation = isChannelAnimation,
                tracks = tracks,
            })
        end,
    }
end
