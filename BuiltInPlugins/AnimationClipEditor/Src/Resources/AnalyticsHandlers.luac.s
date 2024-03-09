PROTO_0:
  JUMPIFNOT R0 [+5]
  GETIMPORT R1 K2 [string.lower]
  MOVE R2 R0
  CALL R1 1 1
  RETURN R1 1
  LOADNIL R1
  RETURN R1 1

PROTO_1:
  MOVE R2 R1
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  MOVE R1 R2
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  DUPTABLE R3 K6 [{"studioSid", "clientId", "placeId", "userId"}]
  GETUPVAL R4 1
  NAMECALL R4 R4 K7 ["GetSessionId"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K2 ["studioSid"]
  GETUPVAL R4 1
  NAMECALL R4 R4 K8 ["GetClientId"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K3 ["clientId"]
  GETIMPORT R5 K10 [game]
  GETTABLEKS R4 R5 K11 ["PlaceId"]
  SETTABLEKS R4 R3 K4 ["placeId"]
  GETUPVAL R4 2
  NAMECALL R4 R4 K12 ["GetUserId"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K5 ["userId"]
  MOVE R4 R1
  CALL R2 2 1
  GETUPVAL R3 1
  LOADK R5 K13 ["studio"]
  LOADK R6 K14 ["animationEditor"]
  MOVE R7 R0
  MOVE R8 R2
  NAMECALL R3 R3 K15 ["SendEventDeferred"]
  CALL R3 5 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  MOVE R4 R0
  ORK R5 R1 K0 [1]
  NAMECALL R2 R2 K1 ["ReportCounter"]
  CALL R2 3 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  MOVE R4 R0
  ORK R5 R1 K0 [1]
  NAMECALL R2 R2 K1 ["ReportStats"]
  CALL R2 3 0
  RETURN R0 0

PROTO_4:
  LOADK R2 K0 ["studio"]
  LOADK R3 K1 ["."]
  LOADK R4 K2 ["animationEditor"]
  LOADK R5 K1 ["."]
  MOVE R6 R0
  CONCAT R1 R2 R6
  RETURN R1 1

PROTO_5:
  GETUPVAL R4 0
  LOADK R5 K0 ["toolOpened"]
  DUPTABLE R6 K5 [{"method", "timelineUnit", "keyframeSnap", "snapMode"}]
  LOADN R7 1
  SETTABLEKS R7 R6 K1 ["method"]
  SETTABLEKS R1 R6 K2 ["timelineUnit"]
  SETTABLEKS R2 R6 K3 ["keyframeSnap"]
  SETTABLEKS R3 R6 K4 ["snapMode"]
  CALL R4 2 0
  LOADK R5 K6 ["studio"]
  LOADK R6 K7 ["."]
  LOADK R7 K8 ["animationEditor"]
  LOADK R8 K7 ["."]
  LOADK R9 K9 ["EditorOpened"]
  CONCAT R4 R5 R9
  GETUPVAL R5 1
  MOVE R7 R4
  LOADN R8 1
  NAMECALL R5 R5 K10 ["ReportCounter"]
  CALL R5 3 0
  GETUPVAL R4 0
  LOADK R5 K9 ["EditorOpened"]
  CALL R4 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R2 0
  LOADK R3 K0 ["toolClosed"]
  DUPTABLE R4 K3 [{"timeOpen", "method"}]
  SETTABLEKS R1 R4 K1 ["timeOpen"]
  LOADN R5 1
  SETTABLEKS R5 R4 K2 ["method"]
  CALL R2 2 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R3 0
  LOADK R4 K0 ["importAnimation"]
  DUPTABLE R5 K3 [{"animationId", "guid"}]
  SETTABLEKS R1 R5 K1 ["animationId"]
  JUMPIFNOT R2 [+5]
  GETIMPORT R6 K6 [string.lower]
  MOVE R7 R2
  CALL R6 1 1
  JUMP [+1]
  LOADNIL R6
  SETTABLEKS R6 R5 K2 ["guid"]
  CALL R3 2 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R2 0
  LOADK R3 K0 ["importFbxAnimation"]
  DUPTABLE R4 K2 [{"guid"}]
  JUMPIFNOT R1 [+5]
  GETIMPORT R5 K5 [string.lower]
  MOVE R6 R1
  CALL R5 1 1
  JUMP [+1]
  LOADNIL R5
  SETTABLEKS R5 R4 K1 ["guid"]
  CALL R2 2 0
  LOADK R3 K6 ["studio"]
  LOADK R4 K7 ["."]
  LOADK R5 K8 ["animationEditor"]
  LOADK R6 K7 ["."]
  LOADK R7 K9 ["FBXAnimationImported"]
  CONCAT R2 R3 R7
  GETUPVAL R3 1
  MOVE R5 R2
  LOADN R6 1
  NAMECALL R3 R3 K10 ["ReportCounter"]
  CALL R3 3 0
  GETUPVAL R2 0
  LOADK R3 K9 ["FBXAnimationImported"]
  CALL R2 1 0
  RETURN R0 0

PROTO_9:
  LOADK R3 K0 ["studio"]
  LOADK R4 K1 ["."]
  LOADK R5 K2 ["animationEditor"]
  LOADK R6 K1 ["."]
  LOADK R7 K3 ["UserChoseFBXModelForAnimImport"]
  CONCAT R2 R3 R7
  GETUPVAL R3 0
  MOVE R5 R2
  LOADN R6 1
  NAMECALL R3 R3 K4 ["ReportCounter"]
  CALL R3 3 0
  GETUPVAL R2 1
  LOADK R3 K5 ["userChoseFBXModelForAnimImport"]
  DUPTABLE R4 K7 [{"guid"}]
  JUMPIFNOT R1 [+5]
  GETIMPORT R5 K10 [string.lower]
  MOVE R6 R1
  CALL R5 1 1
  JUMP [+1]
  LOADNIL R5
  SETTABLEKS R5 R4 K6 ["guid"]
  CALL R2 2 0
  RETURN R0 0

PROTO_10:
  LOADK R3 K0 ["studio"]
  LOADK R4 K1 ["."]
  LOADK R5 K2 ["animationEditor"]
  LOADK R6 K1 ["."]
  LOADK R7 K3 ["UserChoseSelectedModelForAnimImport"]
  CONCAT R2 R3 R7
  GETUPVAL R3 0
  MOVE R5 R2
  LOADN R6 1
  NAMECALL R3 R3 K4 ["ReportCounter"]
  CALL R3 3 0
  GETUPVAL R2 1
  LOADK R3 K5 ["userChoseSelectedModelForAnimImport"]
  DUPTABLE R4 K7 [{"guid"}]
  JUMPIFNOT R1 [+5]
  GETIMPORT R5 K10 [string.lower]
  MOVE R6 R1
  CALL R5 1 1
  JUMP [+1]
  LOADNIL R5
  SETTABLEKS R5 R4 K6 ["guid"]
  CALL R2 2 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R5 0
  LOADK R6 K0 ["exportAnimation"]
  DUPTABLE R7 K5 [{"animationType", "hasFacs", "assetId", "guid"}]
  SETTABLEKS R2 R7 K1 ["animationType"]
  SETTABLEKS R1 R7 K2 ["hasFacs"]
  SETTABLEKS R3 R7 K3 ["assetId"]
  JUMPIFNOT R4 [+5]
  GETIMPORT R8 K8 [string.lower]
  MOVE R9 R4
  CALL R8 1 1
  JUMP [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K4 ["guid"]
  CALL R5 2 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R7 0
  LOADK R8 K0 ["loadAnimation"]
  DUPTABLE R9 K7 [{"animationType", "name", "numKeyframes", "numPoses", "numEvents", "guid"}]
  SETTABLEKS R5 R9 K1 ["animationType"]
  SETTABLEKS R1 R9 K2 ["name"]
  SETTABLEKS R2 R9 K3 ["numKeyframes"]
  SETTABLEKS R3 R9 K4 ["numPoses"]
  SETTABLEKS R4 R9 K5 ["numEvents"]
  JUMPIFNOT R6 [+5]
  GETIMPORT R10 K10 [string.lower]
  MOVE R11 R6
  CALL R10 1 1
  JUMP [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K6 ["guid"]
  CALL R7 2 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R7 0
  LOADK R8 K0 ["saveAnimation"]
  DUPTABLE R9 K7 [{"animationType", "name", "numKeyframes", "numPoses", "numEvents", "guid"}]
  SETTABLEKS R5 R9 K1 ["animationType"]
  SETTABLEKS R1 R9 K2 ["name"]
  SETTABLEKS R2 R9 K3 ["numKeyframes"]
  SETTABLEKS R3 R9 K4 ["numPoses"]
  SETTABLEKS R4 R9 K5 ["numEvents"]
  JUMPIFNOT R6 [+5]
  GETIMPORT R10 K10 [string.lower]
  MOVE R11 R6
  CALL R10 1 1
  JUMP [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K6 ["guid"]
  CALL R7 2 0
  LOADK R8 K11 ["studio"]
  LOADK R9 K12 ["."]
  LOADK R10 K13 ["animationEditor"]
  LOADK R11 K12 ["."]
  LOADK R12 K14 ["ExportedKeyframes"]
  CONCAT R7 R8 R12
  GETUPVAL R8 1
  MOVE R10 R7
  ORK R11 R2 K15 [1]
  NAMECALL R8 R8 K16 ["ReportStats"]
  CALL R8 3 0
  LOADK R8 K11 ["studio"]
  LOADK R9 K12 ["."]
  LOADK R10 K13 ["animationEditor"]
  LOADK R11 K12 ["."]
  LOADK R12 K17 ["ExportedPoses"]
  CONCAT R7 R8 R12
  GETUPVAL R8 1
  MOVE R10 R7
  ORK R11 R3 K15 [1]
  NAMECALL R8 R8 K16 ["ReportStats"]
  CALL R8 3 0
  LOADK R8 K11 ["studio"]
  LOADK R9 K12 ["."]
  LOADK R10 K13 ["animationEditor"]
  LOADK R11 K12 ["."]
  LOADK R12 K18 ["ExportedEvents"]
  CONCAT R7 R8 R12
  GETUPVAL R8 1
  MOVE R10 R7
  ORK R11 R4 K15 [1]
  NAMECALL R8 R8 K16 ["ReportStats"]
  CALL R8 3 0
  RETURN R0 0

PROTO_14:
  GETUPVAL R3 0
  LOADK R4 K0 ["createNewAnimation"]
  DUPTABLE R5 K3 [{"name", "guid"}]
  SETTABLEKS R1 R5 K1 ["name"]
  JUMPIFNOT R2 [+5]
  GETIMPORT R6 K6 [string.lower]
  MOVE R7 R2
  CALL R6 1 1
  JUMP [+1]
  LOADNIL R6
  SETTABLEKS R6 R5 K2 ["guid"]
  CALL R3 2 0
  RETURN R0 0

PROTO_15:
  GETUPVAL R2 0
  LOADK R3 K0 ["quantizeSelection"]
  DUPTABLE R4 K2 [{"didQuantize"}]
  SETTABLEKS R1 R4 K1 ["didQuantize"]
  CALL R2 2 0
  RETURN R0 0

PROTO_16:
  GETUPVAL R2 0
  LOADK R3 K0 ["timeUnitChanged"]
  DUPTABLE R4 K2 [{"timeUnit"}]
  SETTABLEKS R1 R4 K1 ["timeUnit"]
  CALL R2 2 0
  RETURN R0 0

PROTO_17:
  GETUPVAL R2 0
  LOADK R3 K0 ["keyframeSnapChanged"]
  DUPTABLE R4 K2 [{"keyframeSnap"}]
  SETTABLEKS R1 R4 K1 ["keyframeSnap"]
  CALL R2 2 0
  RETURN R0 0

PROTO_18:
  GETUPVAL R2 0
  LOADK R3 K0 ["toolChanged"]
  DUPTABLE R4 K2 [{"tool"}]
  SETTABLEKS R1 R4 K1 ["tool"]
  CALL R2 2 0
  RETURN R0 0

PROTO_19:
  GETUPVAL R2 0
  LOADK R3 K0 ["ikEnabled"]
  DUPTABLE R4 K2 [{"guid"}]
  JUMPIFNOT R1 [+5]
  GETIMPORT R5 K5 [string.lower]
  MOVE R6 R1
  CALL R5 1 1
  JUMP [+1]
  LOADNIL R5
  SETTABLEKS R5 R4 K1 ["guid"]
  CALL R2 2 0
  LOADK R3 K6 ["studio"]
  LOADK R4 K7 ["."]
  LOADK R5 K8 ["animationEditor"]
  LOADK R6 K7 ["."]
  LOADK R7 K9 ["IKEnabled"]
  CONCAT R2 R3 R7
  GETUPVAL R3 1
  MOVE R5 R2
  LOADN R6 1
  NAMECALL R3 R3 K10 ["ReportCounter"]
  CALL R3 3 0
  GETUPVAL R2 0
  LOADK R3 K9 ["IKEnabled"]
  CALL R2 1 0
  RETURN R0 0

PROTO_20:
  GETUPVAL R3 0
  LOADK R4 K0 ["ikDisabled"]
  DUPTABLE R5 K3 [{"timeOpen", "guid"}]
  SETTABLEKS R1 R5 K1 ["timeOpen"]
  JUMPIFNOT R2 [+5]
  GETIMPORT R6 K6 [string.lower]
  MOVE R7 R2
  CALL R6 1 1
  JUMP [+1]
  LOADNIL R6
  SETTABLEKS R6 R5 K2 ["guid"]
  CALL R3 2 0
  RETURN R0 0

PROTO_21:
  GETUPVAL R2 0
  LOADK R3 K0 ["controlPressed"]
  DUPTABLE R4 K2 [{"control"}]
  SETTABLEKS R1 R4 K1 ["control"]
  CALL R2 2 0
  RETURN R0 0

PROTO_22:
  GETUPVAL R4 0
  LOADK R5 K0 ["trackAdded"]
  DUPTABLE R6 K4 [{"trackName", "editorMode", "guid"}]
  SETTABLEKS R1 R6 K1 ["trackName"]
  SETTABLEKS R2 R6 K2 ["editorMode"]
  JUMPIFNOT R3 [+5]
  GETIMPORT R7 K7 [string.lower]
  MOVE R8 R3
  CALL R7 1 1
  JUMP [+1]
  LOADNIL R7
  SETTABLEKS R7 R6 K3 ["guid"]
  CALL R4 2 0
  RETURN R0 0

PROTO_23:
  GETUPVAL R5 0
  LOADK R6 K0 ["trackDeleted"]
  DUPTABLE R7 K5 [{"trackName", "hadKeyframes", "editorMode", "guid"}]
  SETTABLEKS R1 R7 K1 ["trackName"]
  SETTABLEKS R2 R7 K2 ["hadKeyframes"]
  SETTABLEKS R3 R7 K3 ["editorMode"]
  JUMPIFNOT R4 [+5]
  GETIMPORT R8 K8 [string.lower]
  MOVE R9 R4
  CALL R8 1 1
  JUMP [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K4 ["guid"]
  CALL R5 2 0
  RETURN R0 0

PROTO_24:
  GETUPVAL R5 0
  LOADK R6 K0 ["trackSelected"]
  DUPTABLE R7 K5 [{"trackName", "source", "editorMode", "guid"}]
  SETTABLEKS R1 R7 K1 ["trackName"]
  SETTABLEKS R2 R7 K2 ["source"]
  SETTABLEKS R3 R7 K3 ["editorMode"]
  JUMPIFNOT R4 [+5]
  GETIMPORT R8 K8 [string.lower]
  MOVE R9 R4
  CALL R8 1 1
  JUMP [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K4 ["guid"]
  CALL R5 2 0
  RETURN R0 0

PROTO_25:
  GETUPVAL R3 0
  LOADK R4 K0 ["renameKeyframe"]
  DUPTABLE R5 K3 [{"name", "guid"}]
  SETTABLEKS R1 R5 K1 ["name"]
  JUMPIFNOT R2 [+5]
  GETIMPORT R6 K6 [string.lower]
  MOVE R7 R2
  CALL R6 1 1
  JUMP [+1]
  LOADNIL R6
  SETTABLEKS R6 R5 K2 ["guid"]
  CALL R3 2 0
  RETURN R0 0

PROTO_26:
  GETUPVAL R5 0
  LOADK R6 K0 ["addEvent"]
  DUPTABLE R7 K5 [{"name", "parameter", "editorMode", "guid"}]
  SETTABLEKS R1 R7 K1 ["name"]
  SETTABLEKS R2 R7 K2 ["parameter"]
  SETTABLEKS R3 R7 K3 ["editorMode"]
  JUMPIFNOT R4 [+5]
  GETIMPORT R8 K8 [string.lower]
  MOVE R9 R4
  CALL R8 1 1
  JUMP [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K4 ["guid"]
  CALL R5 2 0
  LOADK R6 K9 ["studio"]
  LOADK R7 K10 ["."]
  LOADK R8 K11 ["animationEditor"]
  LOADK R9 K10 ["."]
  LOADK R10 K12 ["EventAdded"]
  CONCAT R5 R6 R10
  GETUPVAL R6 1
  MOVE R8 R5
  LOADN R9 1
  NAMECALL R6 R6 K13 ["ReportCounter"]
  CALL R6 3 0
  GETUPVAL R5 0
  LOADK R6 K12 ["EventAdded"]
  CALL R5 1 0
  RETURN R0 0

PROTO_27:
  GETUPVAL R4 0
  LOADK R5 K0 ["addKeyframe"]
  DUPTABLE R6 K4 [{"trackName", "editorMode", "guid"}]
  SETTABLEKS R1 R6 K1 ["trackName"]
  SETTABLEKS R2 R6 K2 ["editorMode"]
  JUMPIFNOT R3 [+5]
  GETIMPORT R7 K7 [string.lower]
  MOVE R8 R3
  CALL R7 1 1
  JUMP [+1]
  LOADNIL R7
  SETTABLEKS R7 R6 K3 ["guid"]
  CALL R4 2 0
  LOADK R5 K8 ["studio"]
  LOADK R6 K9 ["."]
  LOADK R7 K10 ["animationEditor"]
  LOADK R8 K9 ["."]
  LOADK R9 K11 ["KeyframeAdded"]
  CONCAT R4 R5 R9
  GETUPVAL R5 1
  MOVE R7 R4
  LOADN R8 1
  NAMECALL R5 R5 K12 ["ReportCounter"]
  CALL R5 3 0
  GETUPVAL R4 0
  LOADK R5 K11 ["KeyframeAdded"]
  CALL R4 1 0
  RETURN R0 0

PROTO_28:
  GETUPVAL R4 0
  LOADK R5 K0 ["deleteKeyframe"]
  DUPTABLE R6 K4 [{"trackName", "editorMode", "guid"}]
  SETTABLEKS R1 R6 K1 ["trackName"]
  SETTABLEKS R2 R6 K2 ["editorMode"]
  JUMPIFNOT R3 [+5]
  GETIMPORT R7 K7 [string.lower]
  MOVE R8 R3
  CALL R7 1 1
  JUMP [+1]
  LOADNIL R7
  SETTABLEKS R7 R6 K3 ["guid"]
  CALL R4 2 0
  RETURN R0 0

PROTO_29:
  GETUPVAL R6 0
  LOADK R7 K0 ["promoteAnimation"]
  DUPTABLE R8 K6 [{"name", "numKeyframes", "numTracks", "numEvents", "guid"}]
  SETTABLEKS R1 R8 K1 ["name"]
  SETTABLEKS R3 R8 K2 ["numKeyframes"]
  SETTABLEKS R2 R8 K3 ["numTracks"]
  SETTABLEKS R4 R8 K4 ["numEvents"]
  JUMPIFNOT R5 [+5]
  GETIMPORT R9 K9 [string.lower]
  MOVE R10 R5
  CALL R9 1 1
  JUMP [+1]
  LOADNIL R9
  SETTABLEKS R9 R8 K5 ["guid"]
  CALL R6 2 0
  RETURN R0 0

PROTO_30:
  GETUPVAL R1 0
  LOADK R2 K0 ["animationEditorImportVideoCreate"]
  NEWTABLE R3 0 0
  CALL R1 2 0
  RETURN R0 0

PROTO_31:
  GETUPVAL R2 0
  LOADK R3 K0 ["animationEditorImportVideoUploadCancel"]
  DUPTABLE R4 K2 [{"duration"}]
  SETTABLEKS R1 R4 K1 ["duration"]
  CALL R2 2 0
  RETURN R0 0

PROTO_32:
  GETUPVAL R2 0
  LOADK R3 K0 ["animationEditorImportVideoUploadSucceed"]
  DUPTABLE R4 K2 [{"duration"}]
  SETTABLEKS R1 R4 K1 ["duration"]
  CALL R2 2 0
  RETURN R0 0

PROTO_33:
  GETUPVAL R3 0
  LOADK R4 K0 ["animationEditorImportVideoError"]
  DUPTABLE R5 K3 [{"errorMsg", "duration"}]
  SETTABLEKS R1 R5 K1 ["errorMsg"]
  SETTABLEKS R2 R5 K2 ["duration"]
  CALL R3 2 0
  RETURN R0 0

PROTO_34:
  GETUPVAL R1 0
  LOADK R2 K0 ["facialAnimationRecordingEnabled"]
  NEWTABLE R3 0 0
  CALL R1 2 0
  RETURN R0 0

PROTO_35:
  GETUPVAL R1 0
  LOADK R2 K0 ["facialAnimationRecordingStartRecording"]
  NEWTABLE R3 0 0
  CALL R1 2 0
  RETURN R0 0

PROTO_36:
  GETUPVAL R2 0
  LOADK R3 K0 ["facialAnimationRecordingEndRecording"]
  DUPTABLE R4 K2 [{"duration"}]
  SETTABLEKS R1 R4 K1 ["duration"]
  CALL R2 2 0
  RETURN R0 0

PROTO_37:
  GETUPVAL R1 0
  LOADK R2 K0 ["facialAnimationRecordingReRecordPressed"]
  NEWTABLE R3 0 0
  CALL R1 2 0
  RETURN R0 0

PROTO_38:
  GETUPVAL R5 0
  LOADK R6 K0 ["editorModeSwitch"]
  DUPTABLE R7 K5 [{"oldMode", "newMode", "duration", "guid"}]
  SETTABLEKS R1 R7 K1 ["oldMode"]
  SETTABLEKS R2 R7 K2 ["newMode"]
  SETTABLEKS R3 R7 K3 ["duration"]
  JUMPIFNOT R4 [+5]
  GETIMPORT R8 K8 [string.lower]
  MOVE R9 R4
  CALL R8 1 1
  JUMP [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K4 ["guid"]
  CALL R5 2 0
  RETURN R0 0

PROTO_39:
  GETUPVAL R7 0
  LOADK R8 K0 ["keyframeReductionApply"]
  DUPTABLE R9 K7 [{"isChannelAnimation", "tracks", "before", "after", "hasMoved", "guid"}]
  SETTABLEKS R2 R9 K1 ["isChannelAnimation"]
  SETTABLEKS R1 R9 K2 ["tracks"]
  SETTABLEKS R3 R9 K3 ["before"]
  SETTABLEKS R4 R9 K4 ["after"]
  SETTABLEKS R5 R9 K5 ["hasMoved"]
  JUMPIFNOT R6 [+5]
  GETIMPORT R10 K10 [string.lower]
  MOVE R11 R6
  CALL R10 1 1
  JUMP [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K6 ["guid"]
  CALL R7 2 0
  RETURN R0 0

PROTO_40:
  GETUPVAL R5 0
  LOADK R6 K0 ["keyframeReductionCancel"]
  DUPTABLE R7 K5 [{"isChannelAnimation", "tracks", "hasMoved", "guid"}]
  SETTABLEKS R2 R7 K1 ["isChannelAnimation"]
  SETTABLEKS R1 R7 K2 ["tracks"]
  SETTABLEKS R3 R7 K3 ["hasMoved"]
  JUMPIFNOT R4 [+5]
  GETIMPORT R8 K8 [string.lower]
  MOVE R9 R4
  CALL R8 1 1
  JUMP [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K4 ["guid"]
  CALL R5 2 0
  RETURN R0 0

PROTO_41:
  GETUPVAL R2 0
  LOADK R3 K0 ["createFromVideo"]
  DUPTABLE R4 K2 [{"guid"}]
  JUMPIFNOT R1 [+5]
  GETIMPORT R5 K5 [string.lower]
  MOVE R6 R1
  CALL R5 1 1
  JUMP [+1]
  LOADNIL R5
  SETTABLEKS R5 R4 K1 ["guid"]
  CALL R2 2 0
  RETURN R0 0

PROTO_42:
  GETUPVAL R2 0
  LOADK R3 K0 ["clipboardOperation"]
  DUPTABLE R4 K2 [{"operation"}]
  SETTABLEKS R1 R4 K1 ["operation"]
  CALL R2 2 0
  RETURN R0 0

PROTO_43:
  GETUPVAL R5 0
  LOADK R6 K0 ["migrateAnimations"]
  DUPTABLE R7 K5 [{"migrate", "delete", "ignore", "skipped"}]
  SETTABLEKS R1 R7 K1 ["migrate"]
  SETTABLEKS R2 R7 K2 ["delete"]
  SETTABLEKS R3 R7 K3 ["ignore"]
  SETTABLEKS R4 R7 K4 ["skipped"]
  CALL R5 2 0
  RETURN R0 0

PROTO_44:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  NEWCLOSURE R3 P2
  CAPTURE VAL R0
  DUPCLOSURE R4 K0 [PROTO_4]
  NEWTABLE R5 64 0
  NEWCLOSURE R6 P4
  CAPTURE VAL R1
  CAPTURE VAL R0
  SETTABLEKS R6 R5 K1 ["onEditorOpened"]
  NEWCLOSURE R6 P5
  CAPTURE VAL R1
  SETTABLEKS R6 R5 K2 ["onEditorClosed"]
  NEWCLOSURE R6 P6
  CAPTURE VAL R1
  SETTABLEKS R6 R5 K3 ["onImportAnimation"]
  NEWCLOSURE R6 P7
  CAPTURE VAL R1
  CAPTURE VAL R0
  SETTABLEKS R6 R5 K4 ["onImportFbxAnimation"]
  NEWCLOSURE R6 P8
  CAPTURE VAL R0
  CAPTURE VAL R1
  SETTABLEKS R6 R5 K5 ["onUserChoseFBXModelForAnimImport"]
  NEWCLOSURE R6 P9
  CAPTURE VAL R0
  CAPTURE VAL R1
  SETTABLEKS R6 R5 K6 ["onUserChoseSelectedModelForAnimImport"]
  NEWCLOSURE R6 P10
  CAPTURE VAL R1
  SETTABLEKS R6 R5 K7 ["onExportAnimation"]
  NEWCLOSURE R6 P11
  CAPTURE VAL R1
  SETTABLEKS R6 R5 K8 ["onLoadAnimation"]
  NEWCLOSURE R6 P12
  CAPTURE VAL R1
  CAPTURE VAL R0
  SETTABLEKS R6 R5 K9 ["onSaveAnimation"]
  NEWCLOSURE R6 P13
  CAPTURE VAL R1
  SETTABLEKS R6 R5 K10 ["onCreateNewAnimation"]
  NEWCLOSURE R6 P14
  CAPTURE VAL R1
  SETTABLEKS R6 R5 K11 ["onQuantizeSelection"]
  NEWCLOSURE R6 P15
  CAPTURE VAL R1
  SETTABLEKS R6 R5 K12 ["onTimeUnitChanged"]
  NEWCLOSURE R6 P16
  CAPTURE VAL R1
  SETTABLEKS R6 R5 K13 ["onKeyframeSnapChanged"]
  NEWCLOSURE R6 P17
  CAPTURE VAL R1
  SETTABLEKS R6 R5 K14 ["onToolChanged"]
  NEWCLOSURE R6 P18
  CAPTURE VAL R1
  CAPTURE VAL R0
  SETTABLEKS R6 R5 K15 ["onIkEnabled"]
  NEWCLOSURE R6 P19
  CAPTURE VAL R1
  SETTABLEKS R6 R5 K16 ["onIkDisabled"]
  NEWCLOSURE R6 P20
  CAPTURE VAL R1
  SETTABLEKS R6 R5 K17 ["onControlPressed"]
  NEWCLOSURE R6 P21
  CAPTURE VAL R1
  SETTABLEKS R6 R5 K18 ["onTrackAdded"]
  NEWCLOSURE R6 P22
  CAPTURE VAL R1
  SETTABLEKS R6 R5 K19 ["onTrackDeleted"]
  NEWCLOSURE R6 P23
  CAPTURE VAL R1
  SETTABLEKS R6 R5 K20 ["onTrackSelected"]
  NEWCLOSURE R6 P24
  CAPTURE VAL R1
  SETTABLEKS R6 R5 K21 ["onRenameKeyframe"]
  NEWCLOSURE R6 P25
  CAPTURE VAL R1
  CAPTURE VAL R0
  SETTABLEKS R6 R5 K22 ["onAddEvent"]
  NEWCLOSURE R6 P26
  CAPTURE VAL R1
  CAPTURE VAL R0
  SETTABLEKS R6 R5 K23 ["onAddKeyframe"]
  NEWCLOSURE R6 P27
  CAPTURE VAL R1
  SETTABLEKS R6 R5 K24 ["onDeleteKeyframe"]
  NEWCLOSURE R6 P28
  CAPTURE VAL R1
  SETTABLEKS R6 R5 K25 ["onPromoteAnimation"]
  NEWCLOSURE R6 P29
  CAPTURE VAL R1
  SETTABLEKS R6 R5 K26 ["onAnimationEditorImportVideoCreate"]
  NEWCLOSURE R6 P30
  CAPTURE VAL R1
  SETTABLEKS R6 R5 K27 ["onAnimationEditorImportVideoUploadCancel"]
  NEWCLOSURE R6 P31
  CAPTURE VAL R1
  SETTABLEKS R6 R5 K28 ["onAnimationEditorImportVideoUploadSucceed"]
  NEWCLOSURE R6 P32
  CAPTURE VAL R1
  SETTABLEKS R6 R5 K29 ["onAnimationEditorImportVideoError"]
  NEWCLOSURE R6 P33
  CAPTURE VAL R1
  SETTABLEKS R6 R5 K30 ["onFacialAnimationRecordingEnabled"]
  NEWCLOSURE R6 P34
  CAPTURE VAL R1
  SETTABLEKS R6 R5 K31 ["onFacialAnimationRecordingStartRecording"]
  NEWCLOSURE R6 P35
  CAPTURE VAL R1
  SETTABLEKS R6 R5 K32 ["onFacialAnimationRecordingEndRecording"]
  NEWCLOSURE R6 P36
  CAPTURE VAL R1
  SETTABLEKS R6 R5 K33 ["onFacialAnimationRecordingReRecordPressed"]
  NEWCLOSURE R6 P37
  CAPTURE VAL R1
  SETTABLEKS R6 R5 K34 ["onEditorModeSwitch"]
  NEWCLOSURE R6 P38
  CAPTURE VAL R1
  SETTABLEKS R6 R5 K35 ["onKeyframeReductionApply"]
  NEWCLOSURE R6 P39
  CAPTURE VAL R1
  SETTABLEKS R6 R5 K36 ["onKeyframeReductionCancel"]
  NEWCLOSURE R6 P40
  CAPTURE VAL R1
  SETTABLEKS R6 R5 K37 ["onCreateFromVideo"]
  NEWCLOSURE R6 P41
  CAPTURE VAL R1
  SETTABLEKS R6 R5 K38 ["onClipboardOperation"]
  NEWCLOSURE R6 P42
  CAPTURE VAL R1
  SETTABLEKS R6 R5 K39 ["onMigrateAnimations"]
  RETURN R5 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["StudioService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [script]
  LOADK R3 K6 ["AnimationClipEditor"]
  NAMECALL R1 R1 K7 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R4 R1 K10 ["Packages"]
  GETTABLEKS R3 R4 K11 ["Cryo"]
  CALL R2 1 1
  DUPCLOSURE R3 K12 [PROTO_0]
  DUPCLOSURE R4 K13 [PROTO_44]
  CAPTURE VAL R2
  CAPTURE VAL R0
  RETURN R4 1
