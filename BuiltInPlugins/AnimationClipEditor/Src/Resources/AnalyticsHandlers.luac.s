PROTO_0:
        0 JUMPIFNOT                        R0 ; [+5]
        1 GETIMPORT                        R1 K2 [string.lower]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 RETURN                           R1 1
        6 LOADNIL                          R1
        7 RETURN                           R1 1

PROTO_1:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R1 R2
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        8 GETTABLEKS                       R2 R2 K1 ["join"]
       10 DUPTABLE                         R3 K6 [{"studioSid", "clientId", "placeId", "userId"}]
       11 GETUPVAL                         R4 1
       12 NAMECALL                         R4 R4 K7 ["GetSessionId"]
       14 CALL                             R4 1 1
       15 SETTABLEKS                       R4 R3 K2 ["studioSid"]
       17 GETUPVAL                         R4 1
       18 NAMECALL                         R4 R4 K8 ["GetClientId"]
       20 CALL                             R4 1 1
       21 SETTABLEKS                       R4 R3 K3 ["clientId"]
       23 GETIMPORT                        R4 K10 [game]
       25 GETTABLEKS                       R4 R4 K11 ["PlaceId"]
       27 SETTABLEKS                       R4 R3 K4 ["placeId"]
       29 GETUPVAL                         R4 2
       30 NAMECALL                         R4 R4 K12 ["GetUserId"]
       32 CALL                             R4 1 1
       33 SETTABLEKS                       R4 R3 K5 ["userId"]
       35 MOVE                             R4 R1
       36 CALL                             R2 2 1
       37 GETUPVAL                         R3 1
       38 LOADK                            R5 K13 ["studio"]
       39 LOADK                            R6 K14 ["animationEditor"]
       40 MOVE                             R7 R0
       41 MOVE                             R8 R2
       42 NAMECALL                         R3 R3 K15 ["SendEventDeferred"]
       44 CALL                             R3 5 0
       45 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 ORK                              R5 R1 K0 [1]
        3 NAMECALL                         R2 R2 K1 ["ReportCounter"]
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 ORK                              R5 R1 K0 [1]
        3 NAMECALL                         R2 R2 K1 ["ReportStats"]
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_4:
        0 LOADK                            R2 K0 ["studio"]
        1 LOADK                            R3 K1 ["."]
        2 LOADK                            R4 K2 ["animationEditor"]
        3 LOADK                            R5 K1 ["."]
        4 MOVE                             R6 R0
        5 CONCAT                           R1 R2 R6
        6 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R4 0
        1 LOADK                            R5 K0 ["toolOpened"]
        2 DUPTABLE                         R6 K5 [{"method", "timelineUnit", "keyframeSnap", "snapMode"}]
        3 LOADN                            R7 1
        4 SETTABLEKS                       R7 R6 K1 ["method"]
        6 SETTABLEKS                       R1 R6 K2 ["timelineUnit"]
        8 SETTABLEKS                       R2 R6 K3 ["keyframeSnap"]
       10 SETTABLEKS                       R3 R6 K4 ["snapMode"]
       12 CALL                             R4 2 0
       13 LOADK                            R4 K6 ["studio.animationEditor.EditorOpened"]
       14 GETUPVAL                         R5 1
       15 MOVE                             R7 R4
       16 LOADN                            R8 1
       17 NAMECALL                         R5 R5 K7 ["ReportCounter"]
       19 CALL                             R5 3 0
       20 GETUPVAL                         R4 0
       21 LOADK                            R5 K8 ["EditorOpened"]
       22 CALL                             R4 1 0
       23 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["toolClosed"]
        2 DUPTABLE                         R4 K3 [{"timeOpen", "method"}]
        3 SETTABLEKS                       R1 R4 K1 ["timeOpen"]
        5 LOADN                            R5 1
        6 SETTABLEKS                       R5 R4 K2 ["method"]
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 LOADK                            R4 K0 ["importAnimation"]
        2 DUPTABLE                         R5 K3 [{"animationId", "guid"}]
        3 SETTABLEKS                       R1 R5 K1 ["animationId"]
        5 JUMPIFNOT                        R2 ; [+5]
        6 GETIMPORT                        R6 K6 [string.lower]
        8 MOVE                             R7 R2
        9 CALL                             R6 1 1
       10 JUMP                             ; [+1]
       11 LOADNIL                          R6
       12 SETTABLEKS                       R6 R5 K2 ["guid"]
       14 CALL                             R3 2 0
       15 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["importFbxAnimation"]
        2 DUPTABLE                         R4 K2 [{"guid"}]
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETIMPORT                        R5 K5 [string.lower]
        6 MOVE                             R6 R1
        7 CALL                             R5 1 1
        8 JUMP                             ; [+1]
        9 LOADNIL                          R5
       10 SETTABLEKS                       R5 R4 K1 ["guid"]
       12 CALL                             R2 2 0
       13 LOADK                            R2 K6 ["studio.animationEditor.FBXAnimationImported"]
       14 GETUPVAL                         R3 1
       15 MOVE                             R5 R2
       16 LOADN                            R6 1
       17 NAMECALL                         R3 R3 K7 ["ReportCounter"]
       19 CALL                             R3 3 0
       20 GETUPVAL                         R2 0
       21 LOADK                            R3 K8 ["FBXAnimationImported"]
       22 CALL                             R2 1 0
       23 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["importAnimationFromFile"]
        2 DUPTABLE                         R4 K2 [{"guid"}]
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETIMPORT                        R5 K5 [string.lower]
        6 MOVE                             R6 R1
        7 CALL                             R5 1 1
        8 JUMP                             ; [+1]
        9 LOADNIL                          R5
       10 SETTABLEKS                       R5 R4 K1 ["guid"]
       12 CALL                             R2 2 0
       13 LOADK                            R2 K6 ["studio.animationEditor.AnimationImportedFromFile"]
       14 GETUPVAL                         R3 1
       15 MOVE                             R5 R2
       16 LOADN                            R6 1
       17 NAMECALL                         R3 R3 K7 ["ReportCounter"]
       19 CALL                             R3 3 0
       20 GETUPVAL                         R2 0
       21 LOADK                            R3 K8 ["AnimationImportedFromFile"]
       22 CALL                             R2 1 0
       23 RETURN                           R0 0

PROTO_10:
        0 LOADK                            R2 K0 ["studio.animationEditor.UserChoseFBXModelForAnimImport"]
        1 GETUPVAL                         R3 0
        2 MOVE                             R5 R2
        3 LOADN                            R6 1
        4 NAMECALL                         R3 R3 K1 ["ReportCounter"]
        6 CALL                             R3 3 0
        7 GETUPVAL                         R2 1
        8 LOADK                            R3 K2 ["userChoseFBXModelForAnimImport"]
        9 DUPTABLE                         R4 K4 [{"guid"}]
       10 JUMPIFNOT                        R1 ; [+5]
       11 GETIMPORT                        R5 K7 [string.lower]
       13 MOVE                             R6 R1
       14 CALL                             R5 1 1
       15 JUMP                             ; [+1]
       16 LOADNIL                          R5
       17 SETTABLEKS                       R5 R4 K3 ["guid"]
       19 CALL                             R2 2 0
       20 RETURN                           R0 0

PROTO_11:
        0 LOADK                            R2 K0 ["studio.animationEditor.UserChoseSelectedModelForAnimImport"]
        1 GETUPVAL                         R3 0
        2 MOVE                             R5 R2
        3 LOADN                            R6 1
        4 NAMECALL                         R3 R3 K1 ["ReportCounter"]
        6 CALL                             R3 3 0
        7 GETUPVAL                         R2 1
        8 LOADK                            R3 K2 ["userChoseSelectedModelForAnimImport"]
        9 DUPTABLE                         R4 K4 [{"guid"}]
       10 JUMPIFNOT                        R1 ; [+5]
       11 GETIMPORT                        R5 K7 [string.lower]
       13 MOVE                             R6 R1
       14 CALL                             R5 1 1
       15 JUMP                             ; [+1]
       16 LOADNIL                          R5
       17 SETTABLEKS                       R5 R4 K3 ["guid"]
       19 CALL                             R2 2 0
       20 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R5 0
        1 LOADK                            R6 K0 ["exportAnimation"]
        2 DUPTABLE                         R7 K5 [{"animationType", "hasFacs", "assetId", "guid"}]
        3 SETTABLEKS                       R2 R7 K1 ["animationType"]
        5 SETTABLEKS                       R1 R7 K2 ["hasFacs"]
        7 SETTABLEKS                       R3 R7 K3 ["assetId"]
        9 JUMPIFNOT                        R4 ; [+5]
       10 GETIMPORT                        R8 K8 [string.lower]
       12 MOVE                             R9 R4
       13 CALL                             R8 1 1
       14 JUMP                             ; [+1]
       15 LOADNIL                          R8
       16 SETTABLEKS                       R8 R7 K4 ["guid"]
       18 CALL                             R5 2 0
       19 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R7 0
        1 LOADK                            R8 K0 ["loadAnimation"]
        2 DUPTABLE                         R9 K7 [{"animationType", "name", "numKeyframes", "numPoses", "numEvents", "guid"}]
        3 SETTABLEKS                       R5 R9 K1 ["animationType"]
        5 SETTABLEKS                       R1 R9 K2 ["name"]
        7 SETTABLEKS                       R2 R9 K3 ["numKeyframes"]
        9 SETTABLEKS                       R3 R9 K4 ["numPoses"]
       11 SETTABLEKS                       R4 R9 K5 ["numEvents"]
       13 JUMPIFNOT                        R6 ; [+5]
       14 GETIMPORT                        R10 K10 [string.lower]
       16 MOVE                             R11 R6
       17 CALL                             R10 1 1
       18 JUMP                             ; [+1]
       19 LOADNIL                          R10
       20 SETTABLEKS                       R10 R9 K6 ["guid"]
       22 CALL                             R7 2 0
       23 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R7 0
        1 LOADK                            R8 K0 ["saveAnimation"]
        2 DUPTABLE                         R9 K7 [{"animationType", "name", "numKeyframes", "numPoses", "numEvents", "guid"}]
        3 SETTABLEKS                       R5 R9 K1 ["animationType"]
        5 SETTABLEKS                       R1 R9 K2 ["name"]
        7 SETTABLEKS                       R2 R9 K3 ["numKeyframes"]
        9 SETTABLEKS                       R3 R9 K4 ["numPoses"]
       11 SETTABLEKS                       R4 R9 K5 ["numEvents"]
       13 JUMPIFNOT                        R6 ; [+5]
       14 GETIMPORT                        R10 K10 [string.lower]
       16 MOVE                             R11 R6
       17 CALL                             R10 1 1
       18 JUMP                             ; [+1]
       19 LOADNIL                          R10
       20 SETTABLEKS                       R10 R9 K6 ["guid"]
       22 CALL                             R7 2 0
       23 LOADK                            R7 K11 ["studio.animationEditor.ExportedKeyframes"]
       24 GETUPVAL                         R8 1
       25 MOVE                             R10 R7
       26 ORK                              R11 R2 K12 [1]
       27 NAMECALL                         R8 R8 K13 ["ReportStats"]
       29 CALL                             R8 3 0
       30 LOADK                            R7 K14 ["studio.animationEditor.ExportedPoses"]
       31 GETUPVAL                         R8 1
       32 MOVE                             R10 R7
       33 ORK                              R11 R3 K12 [1]
       34 NAMECALL                         R8 R8 K13 ["ReportStats"]
       36 CALL                             R8 3 0
       37 LOADK                            R7 K15 ["studio.animationEditor.ExportedEvents"]
       38 GETUPVAL                         R8 1
       39 MOVE                             R10 R7
       40 ORK                              R11 R4 K12 [1]
       41 NAMECALL                         R8 R8 K13 ["ReportStats"]
       43 CALL                             R8 3 0
       44 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R3 0
        1 LOADK                            R4 K0 ["createNewAnimation"]
        2 DUPTABLE                         R5 K3 [{"name", "guid"}]
        3 SETTABLEKS                       R1 R5 K1 ["name"]
        5 JUMPIFNOT                        R2 ; [+5]
        6 GETIMPORT                        R6 K6 [string.lower]
        8 MOVE                             R7 R2
        9 CALL                             R6 1 1
       10 JUMP                             ; [+1]
       11 LOADNIL                          R6
       12 SETTABLEKS                       R6 R5 K2 ["guid"]
       14 CALL                             R3 2 0
       15 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["quantizeSelection"]
        2 DUPTABLE                         R4 K2 [{"didQuantize"}]
        3 SETTABLEKS                       R1 R4 K1 ["didQuantize"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["timeUnitChanged"]
        2 DUPTABLE                         R4 K2 [{"timeUnit"}]
        3 SETTABLEKS                       R1 R4 K1 ["timeUnit"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["keyframeSnapChanged"]
        2 DUPTABLE                         R4 K2 [{"keyframeSnap"}]
        3 SETTABLEKS                       R1 R4 K1 ["keyframeSnap"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["toolChanged"]
        2 DUPTABLE                         R4 K2 [{"tool"}]
        3 SETTABLEKS                       R1 R4 K1 ["tool"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["ikEnabled"]
        2 DUPTABLE                         R4 K2 [{"guid"}]
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETIMPORT                        R5 K5 [string.lower]
        6 MOVE                             R6 R1
        7 CALL                             R5 1 1
        8 JUMP                             ; [+1]
        9 LOADNIL                          R5
       10 SETTABLEKS                       R5 R4 K1 ["guid"]
       12 CALL                             R2 2 0
       13 LOADK                            R2 K6 ["studio.animationEditor.IKEnabled"]
       14 GETUPVAL                         R3 1
       15 MOVE                             R5 R2
       16 LOADN                            R6 1
       17 NAMECALL                         R3 R3 K7 ["ReportCounter"]
       19 CALL                             R3 3 0
       20 GETUPVAL                         R2 0
       21 LOADK                            R3 K8 ["IKEnabled"]
       22 CALL                             R2 1 0
       23 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R3 0
        1 LOADK                            R4 K0 ["ikDisabled"]
        2 DUPTABLE                         R5 K3 [{"timeOpen", "guid"}]
        3 SETTABLEKS                       R1 R5 K1 ["timeOpen"]
        5 JUMPIFNOT                        R2 ; [+5]
        6 GETIMPORT                        R6 K6 [string.lower]
        8 MOVE                             R7 R2
        9 CALL                             R6 1 1
       10 JUMP                             ; [+1]
       11 LOADNIL                          R6
       12 SETTABLEKS                       R6 R5 K2 ["guid"]
       14 CALL                             R3 2 0
       15 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["controlPressed"]
        2 DUPTABLE                         R4 K2 [{"control"}]
        3 SETTABLEKS                       R1 R4 K1 ["control"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R4 0
        1 LOADK                            R5 K0 ["trackAdded"]
        2 DUPTABLE                         R6 K4 [{"trackName", "editorMode", "guid"}]
        3 SETTABLEKS                       R1 R6 K1 ["trackName"]
        5 SETTABLEKS                       R2 R6 K2 ["editorMode"]
        7 JUMPIFNOT                        R3 ; [+5]
        8 GETIMPORT                        R7 K7 [string.lower]
       10 MOVE                             R8 R3
       11 CALL                             R7 1 1
       12 JUMP                             ; [+1]
       13 LOADNIL                          R7
       14 SETTABLEKS                       R7 R6 K3 ["guid"]
       16 CALL                             R4 2 0
       17 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R5 0
        1 LOADK                            R6 K0 ["trackDeleted"]
        2 DUPTABLE                         R7 K5 [{"trackName", "hadKeyframes", "editorMode", "guid"}]
        3 SETTABLEKS                       R1 R7 K1 ["trackName"]
        5 SETTABLEKS                       R2 R7 K2 ["hadKeyframes"]
        7 SETTABLEKS                       R3 R7 K3 ["editorMode"]
        9 JUMPIFNOT                        R4 ; [+5]
       10 GETIMPORT                        R8 K8 [string.lower]
       12 MOVE                             R9 R4
       13 CALL                             R8 1 1
       14 JUMP                             ; [+1]
       15 LOADNIL                          R8
       16 SETTABLEKS                       R8 R7 K4 ["guid"]
       18 CALL                             R5 2 0
       19 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R5 0
        1 LOADK                            R6 K0 ["trackSelected"]
        2 DUPTABLE                         R7 K5 [{"trackName", "source", "editorMode", "guid"}]
        3 SETTABLEKS                       R1 R7 K1 ["trackName"]
        5 SETTABLEKS                       R2 R7 K2 ["source"]
        7 SETTABLEKS                       R3 R7 K3 ["editorMode"]
        9 JUMPIFNOT                        R4 ; [+5]
       10 GETIMPORT                        R8 K8 [string.lower]
       12 MOVE                             R9 R4
       13 CALL                             R8 1 1
       14 JUMP                             ; [+1]
       15 LOADNIL                          R8
       16 SETTABLEKS                       R8 R7 K4 ["guid"]
       18 CALL                             R5 2 0
       19 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R3 0
        1 LOADK                            R4 K0 ["renameKeyframe"]
        2 DUPTABLE                         R5 K3 [{"name", "guid"}]
        3 SETTABLEKS                       R1 R5 K1 ["name"]
        5 JUMPIFNOT                        R2 ; [+5]
        6 GETIMPORT                        R6 K6 [string.lower]
        8 MOVE                             R7 R2
        9 CALL                             R6 1 1
       10 JUMP                             ; [+1]
       11 LOADNIL                          R6
       12 SETTABLEKS                       R6 R5 K2 ["guid"]
       14 CALL                             R3 2 0
       15 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R5 0
        1 LOADK                            R6 K0 ["addEvent"]
        2 DUPTABLE                         R7 K5 [{"name", "parameter", "editorMode", "guid"}]
        3 SETTABLEKS                       R1 R7 K1 ["name"]
        5 SETTABLEKS                       R2 R7 K2 ["parameter"]
        7 SETTABLEKS                       R3 R7 K3 ["editorMode"]
        9 JUMPIFNOT                        R4 ; [+5]
       10 GETIMPORT                        R8 K8 [string.lower]
       12 MOVE                             R9 R4
       13 CALL                             R8 1 1
       14 JUMP                             ; [+1]
       15 LOADNIL                          R8
       16 SETTABLEKS                       R8 R7 K4 ["guid"]
       18 CALL                             R5 2 0
       19 LOADK                            R5 K9 ["studio.animationEditor.EventAdded"]
       20 GETUPVAL                         R6 1
       21 MOVE                             R8 R5
       22 LOADN                            R9 1
       23 NAMECALL                         R6 R6 K10 ["ReportCounter"]
       25 CALL                             R6 3 0
       26 GETUPVAL                         R5 0
       27 LOADK                            R6 K11 ["EventAdded"]
       28 CALL                             R5 1 0
       29 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R4 0
        1 LOADK                            R5 K0 ["addKeyframe"]
        2 DUPTABLE                         R6 K4 [{"trackName", "editorMode", "guid"}]
        3 SETTABLEKS                       R1 R6 K1 ["trackName"]
        5 SETTABLEKS                       R2 R6 K2 ["editorMode"]
        7 JUMPIFNOT                        R3 ; [+5]
        8 GETIMPORT                        R7 K7 [string.lower]
       10 MOVE                             R8 R3
       11 CALL                             R7 1 1
       12 JUMP                             ; [+1]
       13 LOADNIL                          R7
       14 SETTABLEKS                       R7 R6 K3 ["guid"]
       16 CALL                             R4 2 0
       17 LOADK                            R4 K8 ["studio.animationEditor.KeyframeAdded"]
       18 GETUPVAL                         R5 1
       19 MOVE                             R7 R4
       20 LOADN                            R8 1
       21 NAMECALL                         R5 R5 K9 ["ReportCounter"]
       23 CALL                             R5 3 0
       24 GETUPVAL                         R4 0
       25 LOADK                            R5 K10 ["KeyframeAdded"]
       26 CALL                             R4 1 0
       27 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R4 0
        1 LOADK                            R5 K0 ["deleteKeyframe"]
        2 DUPTABLE                         R6 K4 [{"trackName", "editorMode", "guid"}]
        3 SETTABLEKS                       R1 R6 K1 ["trackName"]
        5 SETTABLEKS                       R2 R6 K2 ["editorMode"]
        7 JUMPIFNOT                        R3 ; [+5]
        8 GETIMPORT                        R7 K7 [string.lower]
       10 MOVE                             R8 R3
       11 CALL                             R7 1 1
       12 JUMP                             ; [+1]
       13 LOADNIL                          R7
       14 SETTABLEKS                       R7 R6 K3 ["guid"]
       16 CALL                             R4 2 0
       17 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R6 0
        1 LOADK                            R7 K0 ["promoteAnimation"]
        2 DUPTABLE                         R8 K6 [{"name", "numKeyframes", "numTracks", "numEvents", "guid"}]
        3 SETTABLEKS                       R1 R8 K1 ["name"]
        5 SETTABLEKS                       R3 R8 K2 ["numKeyframes"]
        7 SETTABLEKS                       R2 R8 K3 ["numTracks"]
        9 SETTABLEKS                       R4 R8 K4 ["numEvents"]
       11 JUMPIFNOT                        R5 ; [+5]
       12 GETIMPORT                        R9 K9 [string.lower]
       14 MOVE                             R10 R5
       15 CALL                             R9 1 1
       16 JUMP                             ; [+1]
       17 LOADNIL                          R9
       18 SETTABLEKS                       R9 R8 K5 ["guid"]
       20 CALL                             R6 2 0
       21 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["animationEditorImportVideoCreate"]
        2 NEWTABLE                         R3 0 0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["animationEditorImportVideoUploadCancel"]
        2 DUPTABLE                         R4 K2 [{"duration"}]
        3 SETTABLEKS                       R1 R4 K1 ["duration"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["animationEditorImportVideoUploadSucceed"]
        2 DUPTABLE                         R4 K2 [{"duration"}]
        3 SETTABLEKS                       R1 R4 K1 ["duration"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R3 0
        1 LOADK                            R4 K0 ["animationEditorImportVideoError"]
        2 DUPTABLE                         R5 K3 [{"errorMsg", "duration"}]
        3 SETTABLEKS                       R1 R5 K1 ["errorMsg"]
        5 SETTABLEKS                       R2 R5 K2 ["duration"]
        7 CALL                             R3 2 0
        8 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["facialAnimationRecordingEnabled"]
        2 NEWTABLE                         R3 0 0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["facialAnimationRecordingStartRecording"]
        2 NEWTABLE                         R3 0 0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["facialAnimationRecordingEndRecording"]
        2 DUPTABLE                         R4 K2 [{"duration"}]
        3 SETTABLEKS                       R1 R4 K1 ["duration"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["facialAnimationRecordingReRecordPressed"]
        2 NEWTABLE                         R3 0 0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R5 0
        1 LOADK                            R6 K0 ["editorModeSwitch"]
        2 DUPTABLE                         R7 K5 [{"oldMode", "newMode", "duration", "guid"}]
        3 SETTABLEKS                       R1 R7 K1 ["oldMode"]
        5 SETTABLEKS                       R2 R7 K2 ["newMode"]
        7 SETTABLEKS                       R3 R7 K3 ["duration"]
        9 JUMPIFNOT                        R4 ; [+5]
       10 GETIMPORT                        R8 K8 [string.lower]
       12 MOVE                             R9 R4
       13 CALL                             R8 1 1
       14 JUMP                             ; [+1]
       15 LOADNIL                          R8
       16 SETTABLEKS                       R8 R7 K4 ["guid"]
       18 CALL                             R5 2 0
       19 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R7 0
        1 LOADK                            R8 K0 ["keyframeReductionApply"]
        2 DUPTABLE                         R9 K7 [{"isChannelAnimation", "tracks", "before", "after", "hasMoved", "guid"}]
        3 SETTABLEKS                       R2 R9 K1 ["isChannelAnimation"]
        5 SETTABLEKS                       R1 R9 K2 ["tracks"]
        7 SETTABLEKS                       R3 R9 K3 ["before"]
        9 SETTABLEKS                       R4 R9 K4 ["after"]
       11 SETTABLEKS                       R5 R9 K5 ["hasMoved"]
       13 JUMPIFNOT                        R6 ; [+5]
       14 GETIMPORT                        R10 K10 [string.lower]
       16 MOVE                             R11 R6
       17 CALL                             R10 1 1
       18 JUMP                             ; [+1]
       19 LOADNIL                          R10
       20 SETTABLEKS                       R10 R9 K6 ["guid"]
       22 CALL                             R7 2 0
       23 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R5 0
        1 LOADK                            R6 K0 ["keyframeReductionCancel"]
        2 DUPTABLE                         R7 K5 [{"isChannelAnimation", "tracks", "hasMoved", "guid"}]
        3 SETTABLEKS                       R2 R7 K1 ["isChannelAnimation"]
        5 SETTABLEKS                       R1 R7 K2 ["tracks"]
        7 SETTABLEKS                       R3 R7 K3 ["hasMoved"]
        9 JUMPIFNOT                        R4 ; [+5]
       10 GETIMPORT                        R8 K8 [string.lower]
       12 MOVE                             R9 R4
       13 CALL                             R8 1 1
       14 JUMP                             ; [+1]
       15 LOADNIL                          R8
       16 SETTABLEKS                       R8 R7 K4 ["guid"]
       18 CALL                             R5 2 0
       19 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["createFromVideo"]
        2 DUPTABLE                         R4 K2 [{"guid"}]
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETIMPORT                        R5 K5 [string.lower]
        6 MOVE                             R6 R1
        7 CALL                             R5 1 1
        8 JUMP                             ; [+1]
        9 LOADNIL                          R5
       10 SETTABLEKS                       R5 R4 K1 ["guid"]
       12 CALL                             R2 2 0
       13 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["clipboardOperation"]
        2 DUPTABLE                         R4 K2 [{"operation"}]
        3 SETTABLEKS                       R1 R4 K1 ["operation"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_44:
        0 GETUPVAL                         R5 0
        1 LOADK                            R6 K0 ["migrateAnimations"]
        2 DUPTABLE                         R7 K5 [{"migrate", "delete", "ignore", "skipped"}]
        3 SETTABLEKS                       R1 R7 K1 ["migrate"]
        5 SETTABLEKS                       R2 R7 K2 ["delete"]
        7 SETTABLEKS                       R3 R7 K3 ["ignore"]
        9 SETTABLEKS                       R4 R7 K4 ["skipped"]
       11 CALL                             R5 2 0
       12 RETURN                           R0 0

PROTO_45:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 NEWCLOSURE                       R2 P1
        5 CAPTURE                          VAL R0
        6 NEWCLOSURE                       R3 P2
        7 CAPTURE                          VAL R0
        8 DUPCLOSURE                       R4 K0 [PROTO_4]
        9 NEWTABLE                         R5 64 0
       11 NEWCLOSURE                       R6 P4
       12 CAPTURE                          VAL R1
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R6 R5 K1 ["onEditorOpened"]
       16 NEWCLOSURE                       R6 P5
       17 CAPTURE                          VAL R1
       18 SETTABLEKS                       R6 R5 K2 ["onEditorClosed"]
       20 NEWCLOSURE                       R6 P6
       21 CAPTURE                          VAL R1
       22 SETTABLEKS                       R6 R5 K3 ["onImportAnimation"]
       24 NEWCLOSURE                       R6 P7
       25 CAPTURE                          VAL R1
       26 CAPTURE                          VAL R0
       27 SETTABLEKS                       R6 R5 K4 ["onImportFbxAnimation"]
       29 NEWCLOSURE                       R6 P8
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R0
       32 SETTABLEKS                       R6 R5 K5 ["onImportAnimationFromFile"]
       34 NEWCLOSURE                       R6 P9
       35 CAPTURE                          VAL R0
       36 CAPTURE                          VAL R1
       37 SETTABLEKS                       R6 R5 K6 ["onUserChoseFBXModelForAnimImport"]
       39 NEWCLOSURE                       R6 P10
       40 CAPTURE                          VAL R0
       41 CAPTURE                          VAL R1
       42 SETTABLEKS                       R6 R5 K7 ["onUserChoseSelectedModelForAnimImport"]
       44 NEWCLOSURE                       R6 P11
       45 CAPTURE                          VAL R1
       46 SETTABLEKS                       R6 R5 K8 ["onExportAnimation"]
       48 NEWCLOSURE                       R6 P12
       49 CAPTURE                          VAL R1
       50 SETTABLEKS                       R6 R5 K9 ["onLoadAnimation"]
       52 NEWCLOSURE                       R6 P13
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R0
       55 SETTABLEKS                       R6 R5 K10 ["onSaveAnimation"]
       57 NEWCLOSURE                       R6 P14
       58 CAPTURE                          VAL R1
       59 SETTABLEKS                       R6 R5 K11 ["onCreateNewAnimation"]
       61 NEWCLOSURE                       R6 P15
       62 CAPTURE                          VAL R1
       63 SETTABLEKS                       R6 R5 K12 ["onQuantizeSelection"]
       65 NEWCLOSURE                       R6 P16
       66 CAPTURE                          VAL R1
       67 SETTABLEKS                       R6 R5 K13 ["onTimeUnitChanged"]
       69 NEWCLOSURE                       R6 P17
       70 CAPTURE                          VAL R1
       71 SETTABLEKS                       R6 R5 K14 ["onKeyframeSnapChanged"]
       73 NEWCLOSURE                       R6 P18
       74 CAPTURE                          VAL R1
       75 SETTABLEKS                       R6 R5 K15 ["onToolChanged"]
       77 NEWCLOSURE                       R6 P19
       78 CAPTURE                          VAL R1
       79 CAPTURE                          VAL R0
       80 SETTABLEKS                       R6 R5 K16 ["onIkEnabled"]
       82 NEWCLOSURE                       R6 P20
       83 CAPTURE                          VAL R1
       84 SETTABLEKS                       R6 R5 K17 ["onIkDisabled"]
       86 NEWCLOSURE                       R6 P21
       87 CAPTURE                          VAL R1
       88 SETTABLEKS                       R6 R5 K18 ["onControlPressed"]
       90 NEWCLOSURE                       R6 P22
       91 CAPTURE                          VAL R1
       92 SETTABLEKS                       R6 R5 K19 ["onTrackAdded"]
       94 NEWCLOSURE                       R6 P23
       95 CAPTURE                          VAL R1
       96 SETTABLEKS                       R6 R5 K20 ["onTrackDeleted"]
       98 NEWCLOSURE                       R6 P24
       99 CAPTURE                          VAL R1
      100 SETTABLEKS                       R6 R5 K21 ["onTrackSelected"]
      102 NEWCLOSURE                       R6 P25
      103 CAPTURE                          VAL R1
      104 SETTABLEKS                       R6 R5 K22 ["onRenameKeyframe"]
      106 NEWCLOSURE                       R6 P26
      107 CAPTURE                          VAL R1
      108 CAPTURE                          VAL R0
      109 SETTABLEKS                       R6 R5 K23 ["onAddEvent"]
      111 NEWCLOSURE                       R6 P27
      112 CAPTURE                          VAL R1
      113 CAPTURE                          VAL R0
      114 SETTABLEKS                       R6 R5 K24 ["onAddKeyframe"]
      116 NEWCLOSURE                       R6 P28
      117 CAPTURE                          VAL R1
      118 SETTABLEKS                       R6 R5 K25 ["onDeleteKeyframe"]
      120 NEWCLOSURE                       R6 P29
      121 CAPTURE                          VAL R1
      122 SETTABLEKS                       R6 R5 K26 ["onPromoteAnimation"]
      124 NEWCLOSURE                       R6 P30
      125 CAPTURE                          VAL R1
      126 SETTABLEKS                       R6 R5 K27 ["onAnimationEditorImportVideoCreate"]
      128 NEWCLOSURE                       R6 P31
      129 CAPTURE                          VAL R1
      130 SETTABLEKS                       R6 R5 K28 ["onAnimationEditorImportVideoUploadCancel"]
      132 NEWCLOSURE                       R6 P32
      133 CAPTURE                          VAL R1
      134 SETTABLEKS                       R6 R5 K29 ["onAnimationEditorImportVideoUploadSucceed"]
      136 NEWCLOSURE                       R6 P33
      137 CAPTURE                          VAL R1
      138 SETTABLEKS                       R6 R5 K30 ["onAnimationEditorImportVideoError"]
      140 NEWCLOSURE                       R6 P34
      141 CAPTURE                          VAL R1
      142 SETTABLEKS                       R6 R5 K31 ["onFacialAnimationRecordingEnabled"]
      144 NEWCLOSURE                       R6 P35
      145 CAPTURE                          VAL R1
      146 SETTABLEKS                       R6 R5 K32 ["onFacialAnimationRecordingStartRecording"]
      148 NEWCLOSURE                       R6 P36
      149 CAPTURE                          VAL R1
      150 SETTABLEKS                       R6 R5 K33 ["onFacialAnimationRecordingEndRecording"]
      152 NEWCLOSURE                       R6 P37
      153 CAPTURE                          VAL R1
      154 SETTABLEKS                       R6 R5 K34 ["onFacialAnimationRecordingReRecordPressed"]
      156 NEWCLOSURE                       R6 P38
      157 CAPTURE                          VAL R1
      158 SETTABLEKS                       R6 R5 K35 ["onEditorModeSwitch"]
      160 NEWCLOSURE                       R6 P39
      161 CAPTURE                          VAL R1
      162 SETTABLEKS                       R6 R5 K36 ["onKeyframeReductionApply"]
      164 NEWCLOSURE                       R6 P40
      165 CAPTURE                          VAL R1
      166 SETTABLEKS                       R6 R5 K37 ["onKeyframeReductionCancel"]
      168 NEWCLOSURE                       R6 P41
      169 CAPTURE                          VAL R1
      170 SETTABLEKS                       R6 R5 K38 ["onCreateFromVideo"]
      172 NEWCLOSURE                       R6 P42
      173 CAPTURE                          VAL R1
      174 SETTABLEKS                       R6 R5 K39 ["onClipboardOperation"]
      176 NEWCLOSURE                       R6 P43
      177 CAPTURE                          VAL R1
      178 SETTABLEKS                       R6 R5 K40 ["onMigrateAnimations"]
      180 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StudioService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AnimationClipEditor"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["Cryo"]
       19 CALL                             R2 1 1
       20 DUPCLOSURE                       R3 K12 [PROTO_0]
       21 DUPCLOSURE                       R4 K13 [PROTO_45]
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R0
       24 RETURN                           R4 1
