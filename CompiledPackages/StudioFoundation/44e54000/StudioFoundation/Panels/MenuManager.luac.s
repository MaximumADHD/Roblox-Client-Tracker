PROTO_0:
        0 NEWTABLE                         R3 8 0
        2 GETUPVAL                         R4 0
        3 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
        5 GETIMPORT                        R2 K1 [setmetatable]
        7 CALL                             R2 2 1
        8 SETTABLEKS                       R1 R2 K2 ["_uriScope"]
       10 SETTABLEKS                       R0 R2 K3 ["_plugin"]
       12 LOADK                            R5 K4 ["Panels"]
       13 NAMECALL                         R3 R0 K5 ["GetPluginComponent"]
       15 CALL                             R3 2 1
       16 SETTABLEKS                       R3 R2 K6 ["_panels"]
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R3 R3 K7 ["wrap"]
       21 NAMECALL                         R4 R0 K8 ["GetUri"]
       23 CALL                             R4 1 -1
       24 CALL                             R3 -1 1
       25 SETTABLEKS                       R3 R2 K9 ["_pluginUri"]
       27 NEWTABLE                         R3 0 0
       29 SETTABLEKS                       R3 R2 K10 ["_menus"]
       31 GETUPVAL                         R3 2
       32 GETTABLEKS                       R3 R3 K11 ["createSignal"]
       34 CALL                             R3 0 2
       35 SETTABLEKS                       R3 R2 K12 ["_onWillOpen"]
       37 SETTABLEKS                       R4 R2 K13 ["_fireOnWillOpen"]
       39 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["_onWillOpen"]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K1 ["subscribe"]
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["_plugin"]
        2 MOVE                             R5 R1
        3 DUPTABLE                         R6 K12 [{["Id"], ["InitialEnabled"] = False, ["MinSize"], ["Modal"] = False, ["Popup"], ["Resizable"] = True, ["Size"], ["Title"], ["ZIndex"]}]
        4 SETTABLEKS                       R1 R6 K1 ["Id"]
        6 GETIMPORT                        R7 K15 [Vector2.new]
        8 LOADN                            R8 100
        9 LOADN                            R9 100
       10 CALL                             R7 2 1
       11 SETTABLEKS                       R7 R6 K4 ["MinSize"]
       13 DUPTABLE                         R7 K17 [{["PassesThroughMouseEvents"] = True}]
       14 SETTABLEKS                       R7 R6 K6 ["Popup"]
       16 GETIMPORT                        R7 K15 [Vector2.new]
       18 LOADN                            R8 100
       19 LOADN                            R9 100
       20 CALL                             R7 2 1
       21 SETTABLEKS                       R7 R6 K9 ["Size"]
       23 SETTABLEKS                       R1 R6 K10 ["Title"]
       25 ADDK                             R7 R2 K18 [200]
       26 SETTABLEKS                       R7 R6 K11 ["ZIndex"]
       28 NAMECALL                         R3 R3 K19 ["CreateQWidgetPluginGui"]
       30 CALL                             R3 3 1
       31 GETIMPORT                        R4 K23 [Enum.ZIndexBehavior.Sibling]
       33 SETTABLEKS                       R4 R3 K21 ["ZIndexBehavior"]
       35 MOVE                             R4 R3
       36 GETUPVAL                         R5 0
       37 GETTABLEKS                       R5 R5 K24 ["join"]
       39 GETTABLEKS                       R6 R0 K25 ["_pluginUri"]
       41 DUPTABLE                         R7 K29 [{["Category"] = "Panels", ["ItemId"]}]
       42 SETTABLEKS                       R1 R7 K28 ["ItemId"]
       44 CALL                             R5 2 -1
       45 RETURN                           R4 -1

PROTO_3:
        0 LOADK                            R5 K0 ["PluginGui"]
        1 NAMECALL                         R3 R1 K1 ["IsA"]
        3 CALL                             R3 2 1
        4 JUMPIFNOT                        R3 ; [+4]
        5 MOVE                             R5 R2
        6 NAMECALL                         R3 R1 K2 ["BindToClose"]
        8 CALL                             R3 2 0
        9 RETURN                           R0 0

PROTO_4:
        0 LOADNIL                          R0
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R4 R4 K0 ["_menus"]
        4 LENGTH                           R3 R4
        5 LOADN                            R1 1
        6 LOADN                            R2 -1
        7 FORNPREP                         R1
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K0 ["_menus"]
       11 GETTABLE                         R4 R5 R3
       12 GETTABLEKS                       R4 R4 K1 ["open"]
       14 JUMPIFNOT                        R4 ; [+5]
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R4 R4 K0 ["_menus"]
       18 GETTABLE                         R0 R4 R3
       19 JUMP                             ; [+1]
       20 FORNLOOP                         R1
       21 GETUPVAL                         R1 1
       22 JUMPIFNOTEQ                      R1 R0 ; [+6]
       24 GETUPVAL                         R1 0
       25 GETUPVAL                         R3 1
       26 NAMECALL                         R1 R1 K2 ["_closeMenu"]
       28 CALL                             R1 2 0
       29 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R4 R0 K0 ["_menus"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIFNOT                        R3 ; [+3]
        4 SETTABLEKS                       R2 R3 K1 ["onClose"]
        6 RETURN                           R3 1
        7 GETTABLEKS                       R5 R0 K2 ["_uriScope"]
        9 JUMPIFNOT                        R5 ; [+8]
       10 LOADK                            R5 K3 ["/%*"]
       11 GETTABLEKS                       R7 R0 K2 ["_uriScope"]
       13 NAMECALL                         R5 R5 K4 ["format"]
       15 CALL                             R5 2 1
       16 MOVE                             R4 R5
       17 JUMP                             ; [+1]
       18 LOADK                            R4 K5 [""]
       19 LOADK                            R6 K6 ["Menus%*/%*"]
       20 MOVE                             R8 R4
       21 MOVE                             R9 R1
       22 NAMECALL                         R6 R6 K4 ["format"]
       24 CALL                             R6 3 1
       25 MOVE                             R5 R6
       26 MOVE                             R8 R5
       27 MOVE                             R9 R1
       28 NAMECALL                         R6 R0 K7 ["_createMenuPanelAsync"]
       30 CALL                             R6 3 2
       31 DUPTABLE                         R8 K14 [{["depth"], ["id"], ["uri"], ["panel"], ["open"] = False, ["onClose"]}]
       32 SETTABLEKS                       R1 R8 K8 ["depth"]
       34 SETTABLEKS                       R5 R8 K9 ["id"]
       36 SETTABLEKS                       R7 R8 K10 ["uri"]
       38 SETTABLEKS                       R6 R8 K11 ["panel"]
       40 SETTABLEKS                       R2 R8 K1 ["onClose"]
       42 MOVE                             R11 R6
       43 NEWCLOSURE                       R12 P0
       44 CAPTURE                          VAL R0
       45 CAPTURE                          VAL R8
       46 NAMECALL                         R9 R0 K15 ["_bindToClose"]
       48 CALL                             R9 3 0
       49 GETTABLEKS                       R9 R0 K0 ["_menus"]
       51 SETTABLE                         R8 R9 R1
       52 RETURN                           R8 1

PROTO_6:
        0 LOADN                            R3 3000
        1 GETTABLEKS                       R4 R0 K0 ["X"]
        3 FASTCALL2                        MATH_MIN R3 R4 ; [+3]
        5 GETIMPORT                        R2 K3 [math.min]
        7 CALL                             R2 2 1
        8 FASTCALL1                        MATH_CEIL R2 ; [+2]
        9 GETIMPORT                        R1 K5 [math.ceil]
       11 CALL                             R1 1 1
       12 LOADN                            R4 3000
       13 GETTABLEKS                       R5 R0 K6 ["Y"]
       15 FASTCALL2                        MATH_MIN R4 R5 ; [+3]
       17 GETIMPORT                        R3 K3 [math.min]
       19 CALL                             R3 2 1
       20 FASTCALL1                        MATH_CEIL R3 ; [+2]
       21 GETIMPORT                        R2 K5 [math.ceil]
       23 CALL                             R2 1 1
       24 GETUPVAL                         R3 0
       25 GETTABLEKS                       R3 R3 K7 ["_panels"]
       27 GETUPVAL                         R5 1
       28 GETTABLEKS                       R5 R5 K8 ["uri"]
       30 GETIMPORT                        R6 K11 [Vector2.new]
       32 MOVE                             R7 R1
       33 MOVE                             R8 R2
       34 CALL                             R6 2 -1
       35 NAMECALL                         R3 R3 K12 ["SetSizeAsync"]
       37 CALL                             R3 -1 0
       38 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["uri"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["_panels"]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K0 ["uri"]
       11 DUPTABLE                         R4 K6 [{"TargetWidgetUri", "TargetAnchorPoint", "SubjectAnchorPoint", "Offset"}]
       12 GETTABLEKS                       R5 R0 K7 ["targetWidgetUri"]
       14 SETTABLEKS                       R5 R4 K2 ["TargetWidgetUri"]
       16 GETTABLEKS                       R5 R0 K8 ["targetAnchorPoint"]
       18 SETTABLEKS                       R5 R4 K3 ["TargetAnchorPoint"]
       20 GETTABLEKS                       R5 R0 K9 ["subjectAnchorPoint"]
       22 SETTABLEKS                       R5 R4 K4 ["SubjectAnchorPoint"]
       24 GETTABLEKS                       R5 R0 K10 ["offset"]
       26 SETTABLEKS                       R5 R4 K5 ["Offset"]
       28 NAMECALL                         R1 R1 K11 ["SetAttachmentAsync"]
       30 CALL                             R1 3 0
       31 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["_closeMenu"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R4 R0 K0 ["_fireOnWillOpen"]
        2 MOVE                             R5 R1
        3 CALL                             R4 1 0
        4 MOVE                             R6 R1
        5 MOVE                             R7 R3
        6 NAMECALL                         R4 R0 K1 ["_ensurePanelExistsAsync"]
        8 CALL                             R4 3 1
        9 GETTABLEKS                       R5 R0 K2 ["_panels"]
       11 GETTABLEKS                       R7 R4 K3 ["uri"]
       13 DUPTABLE                         R8 K8 [{"TargetWidgetUri", "TargetAnchorPoint", "SubjectAnchorPoint", "Offset"}]
       14 GETTABLEKS                       R9 R2 K9 ["targetWidgetUri"]
       16 SETTABLEKS                       R9 R8 K4 ["TargetWidgetUri"]
       18 GETTABLEKS                       R9 R2 K10 ["targetAnchorPoint"]
       20 SETTABLEKS                       R9 R8 K5 ["TargetAnchorPoint"]
       22 GETTABLEKS                       R9 R2 K11 ["subjectAnchorPoint"]
       24 SETTABLEKS                       R9 R8 K6 ["SubjectAnchorPoint"]
       26 GETTABLEKS                       R9 R2 K12 ["offset"]
       28 SETTABLEKS                       R9 R8 K7 ["Offset"]
       30 NAMECALL                         R5 R5 K13 ["SetAttachmentAsync"]
       32 CALL                             R5 3 0
       33 GETTABLEKS                       R5 R0 K2 ["_panels"]
       35 GETTABLEKS                       R7 R4 K3 ["uri"]
       37 GETIMPORT                        R8 K16 [Vector2.new]
       39 LOADN                            R9 0
       40 LOADN                            R10 0
       41 CALL                             R8 2 -1
       42 NAMECALL                         R5 R5 K17 ["SetSizeAsync"]
       44 CALL                             R5 -1 0
       45 GETTABLEKS                       R5 R4 K18 ["panel"]
       47 LOADB                            R6 1
       48 SETTABLEKS                       R6 R5 K19 ["Enabled"]
       50 LOADB                            R5 1
       51 SETTABLEKS                       R5 R4 K20 ["open"]
       53 GETIMPORT                        R5 K23 [os.clock]
       55 CALL                             R5 0 1
       56 SETTABLEKS                       R5 R4 K24 ["lastOpenTime"]
       58 DUPTABLE                         R5 K29 [{"container", "setSizeAsync", "updateAsync", "close"}]
       59 GETTABLEKS                       R6 R4 K18 ["panel"]
       61 SETTABLEKS                       R6 R5 K25 ["container"]
       63 NEWCLOSURE                       R6 P0
       64 CAPTURE                          VAL R0
       65 CAPTURE                          VAL R4
       66 SETTABLEKS                       R6 R5 K26 ["setSizeAsync"]
       68 NEWCLOSURE                       R6 P1
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R0
       71 SETTABLEKS                       R6 R5 K27 ["updateAsync"]
       73 NEWCLOSURE                       R6 P2
       74 CAPTURE                          VAL R0
       75 CAPTURE                          VAL R4
       76 SETTABLEKS                       R6 R5 K28 ["close"]
       78 RETURN                           R5 1

PROTO_10:
        0 GETTABLEKS                       R2 R0 K0 ["_menus"]
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 JUMPIFNOT                        R1 ; [+4]
        6 GETTABLEKS                       R7 R1 K1 ["depth"]
        8 JUMPIFLT                         R5 R7 ; [+18]
       10 GETTABLEKS                       R7 R6 K2 ["open"]
       12 JUMPIFNOT                        R7 ; [+14]
       13 LOADB                            R7 0
       14 SETTABLEKS                       R7 R6 K2 ["open"]
       16 GETTABLEKS                       R7 R6 K3 ["panel"]
       18 LOADB                            R8 0
       19 SETTABLEKS                       R8 R7 K4 ["Enabled"]
       21 GETTABLEKS                       R7 R6 K5 ["onClose"]
       23 JUMPIFNOT                        R7 ; [+3]
       24 GETTABLEKS                       R7 R6 K5 ["onClose"]
       26 CALL                             R7 0 0
       27 FORGLOOP                         R2 2 ; [-23]
       29 RETURN                           R0 0

PROTO_11:
        0 NAMECALL                         R1 R0 K0 ["_closeMenu"]
        2 CALL                             R1 1 0
        3 GETTABLEKS                       R1 R0 K1 ["_menus"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 GETTABLEKS                       R6 R5 K2 ["panel"]
       10 JUMPIFNOT                        R6 ; [+5]
       11 GETTABLEKS                       R6 R5 K2 ["panel"]
       13 NAMECALL                         R6 R6 K3 ["Destroy"]
       15 CALL                             R6 1 0
       16 FORGLOOP                         R1 2 ; [-9]
       18 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StudioFoundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Util"]
       13 GETTABLEKS                       R3 R3 K8 ["StudioUri"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Types"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R1 K10 ["Signal"]
       25 CALL                             R4 1 1
       26 NEWTABLE                         R5 16 0
       28 SETTABLEKS                       R5 R5 K11 ["__index"]
       30 DUPCLOSURE                       R6 K12 [PROTO_0]
       31 CAPTURE                          VAL R5
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R4
       34 SETTABLEKS                       R6 R5 K13 ["new"]
       36 DUPCLOSURE                       R6 K14 [PROTO_1]
       37 SETTABLEKS                       R6 R5 K15 ["onWillOpen"]
       39 DUPCLOSURE                       R6 K16 [PROTO_2]
       40 CAPTURE                          VAL R2
       41 SETTABLEKS                       R6 R5 K17 ["_createMenuPanelAsync"]
       43 DUPCLOSURE                       R6 K18 [PROTO_3]
       44 SETTABLEKS                       R6 R5 K19 ["_bindToClose"]
       46 DUPCLOSURE                       R6 K20 [PROTO_5]
       47 SETTABLEKS                       R6 R5 K21 ["_ensurePanelExistsAsync"]
       49 DUPCLOSURE                       R6 K22 [PROTO_9]
       50 SETTABLEKS                       R6 R5 K23 ["openAtAsync"]
       52 DUPCLOSURE                       R6 K24 [PROTO_10]
       53 SETTABLEKS                       R6 R5 K25 ["_closeMenu"]
       55 DUPCLOSURE                       R6 K26 [PROTO_11]
       56 SETTABLEKS                       R6 R5 K27 ["destroy"]
       58 RETURN                           R5 1
