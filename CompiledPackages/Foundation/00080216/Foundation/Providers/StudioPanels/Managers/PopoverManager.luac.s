PROTO_0:
        0 LOADK                            R4 K0 ["PluginGui"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+4]
        5 MOVE                             R4 R1
        6 NAMECALL                         R2 R0 K2 ["BindToClose"]
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_1:
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
       29 SETTABLEKS                       R3 R2 K10 ["_active"]
       31 NEWTABLE                         R3 0 0
       33 SETTABLEKS                       R3 R2 K11 ["_pool"]
       35 RETURN                           R2 1

PROTO_2:
        0 LOADN                            R3 184
        1 GETTABLEKS                       R4 R0 K0 ["X"]
        3 FASTCALL2                        MATH_MIN R3 R4 ; [+3]
        5 GETIMPORT                        R2 K3 [math.min]
        7 CALL                             R2 2 1
        8 FASTCALL1                        MATH_CEIL R2 ; [+2]
        9 GETIMPORT                        R1 K5 [math.ceil]
       11 CALL                             R1 1 1
       12 LOADN                            R4 184
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

PROTO_3:
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

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["_closePopover"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_5:
        0 MOVE                             R5 R2
        1 NAMECALL                         R3 R0 K0 ["_acquirePanelAsync"]
        3 CALL                             R3 2 1
        4 GETTABLEKS                       R4 R3 K1 ["panel"]
        6 LOADB                            R5 0
        7 SETTABLEKS                       R5 R4 K2 ["Enabled"]
        9 GETTABLEKS                       R4 R0 K3 ["_panels"]
       11 GETTABLEKS                       R6 R3 K4 ["uri"]
       13 DUPTABLE                         R7 K9 [{"TargetWidgetUri", "TargetAnchorPoint", "SubjectAnchorPoint", "Offset"}]
       14 GETTABLEKS                       R8 R1 K10 ["targetWidgetUri"]
       16 SETTABLEKS                       R8 R7 K5 ["TargetWidgetUri"]
       18 GETTABLEKS                       R8 R1 K11 ["targetAnchorPoint"]
       20 SETTABLEKS                       R8 R7 K6 ["TargetAnchorPoint"]
       22 GETTABLEKS                       R8 R1 K12 ["subjectAnchorPoint"]
       24 SETTABLEKS                       R8 R7 K7 ["SubjectAnchorPoint"]
       26 GETTABLEKS                       R8 R1 K13 ["offset"]
       28 SETTABLEKS                       R8 R7 K8 ["Offset"]
       30 NAMECALL                         R4 R4 K14 ["SetAttachmentAsync"]
       32 CALL                             R4 3 0
       33 GETTABLEKS                       R4 R0 K3 ["_panels"]
       35 GETTABLEKS                       R6 R3 K4 ["uri"]
       37 GETIMPORT                        R7 K17 [Vector2.new]
       39 LOADN                            R8 0
       40 LOADN                            R9 0
       41 CALL                             R7 2 -1
       42 NAMECALL                         R4 R4 K18 ["SetSizeAsync"]
       44 CALL                             R4 -1 0
       45 GETTABLEKS                       R4 R3 K1 ["panel"]
       47 LOADB                            R5 1
       48 SETTABLEKS                       R5 R4 K2 ["Enabled"]
       50 LOADB                            R4 1
       51 SETTABLEKS                       R4 R3 K19 ["open"]
       53 DUPTABLE                         R4 K24 [{"container", "setSizeAsync", "updateAsync", "close"}]
       54 GETTABLEKS                       R5 R3 K1 ["panel"]
       56 SETTABLEKS                       R5 R4 K20 ["container"]
       58 NEWCLOSURE                       R5 P0
       59 CAPTURE                          VAL R0
       60 CAPTURE                          VAL R3
       61 SETTABLEKS                       R5 R4 K21 ["setSizeAsync"]
       63 NEWCLOSURE                       R5 P1
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R0
       66 SETTABLEKS                       R5 R4 K22 ["updateAsync"]
       68 NEWCLOSURE                       R5 P2
       69 CAPTURE                          VAL R0
       70 CAPTURE                          VAL R3
       71 SETTABLEKS                       R5 R4 K23 ["close"]
       73 RETURN                           R4 1

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["_plugin"]
        2 MOVE                             R4 R1
        3 DUPTABLE                         R5 K8 [{"Id", "InitialEnabled", "Tooltip", "Transparent", "Resizable", "Title", "ZIndex"}]
        4 SETTABLEKS                       R1 R5 K1 ["Id"]
        6 LOADB                            R6 1
        7 SETTABLEKS                       R6 R5 K2 ["InitialEnabled"]
        9 LOADB                            R6 1
       10 SETTABLEKS                       R6 R5 K3 ["Tooltip"]
       12 LOADB                            R6 1
       13 SETTABLEKS                       R6 R5 K4 ["Transparent"]
       15 LOADB                            R6 1
       16 SETTABLEKS                       R6 R5 K5 ["Resizable"]
       18 SETTABLEKS                       R1 R5 K6 ["Title"]
       20 LOADN                            R6 200
       21 SETTABLEKS                       R6 R5 K7 ["ZIndex"]
       23 NAMECALL                         R2 R2 K9 ["CreateQWidgetPluginGui"]
       25 CALL                             R2 3 1
       26 GETIMPORT                        R3 K13 [Enum.ZIndexBehavior.Sibling]
       28 SETTABLEKS                       R3 R2 K11 ["ZIndexBehavior"]
       30 MOVE                             R3 R2
       31 GETUPVAL                         R4 0
       32 GETTABLEKS                       R4 R4 K14 ["join"]
       34 GETTABLEKS                       R5 R0 K15 ["_pluginUri"]
       36 DUPTABLE                         R6 K18 [{"Category", "ItemId"}]
       37 LOADK                            R7 K19 ["Panels"]
       38 SETTABLEKS                       R7 R6 K16 ["Category"]
       40 SETTABLEKS                       R1 R6 K17 ["ItemId"]
       42 CALL                             R4 2 -1
       43 RETURN                           R3 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["_closePopover"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R2 K2 [table.remove]
        2 GETTABLEKS                       R3 R0 K3 ["_pool"]
        4 CALL                             R2 1 1
        5 JUMPIFNOT                        R2 ; [+11]
        6 SETTABLEKS                       R1 R2 K4 ["onClose"]
        8 LOADB                            R3 0
        9 SETTABLEKS                       R3 R2 K5 ["open"]
       11 GETTABLEKS                       R3 R0 K6 ["_active"]
       13 GETTABLEKS                       R4 R2 K7 ["id"]
       15 SETTABLE                         R2 R3 R4
       16 RETURN                           R2 1
       17 GETTABLEKS                       R4 R0 K8 ["_uriScope"]
       19 JUMPIFNOT                        R4 ; [+8]
       20 LOADK                            R4 K9 ["/%*"]
       21 GETTABLEKS                       R6 R0 K8 ["_uriScope"]
       23 NAMECALL                         R4 R4 K10 ["format"]
       25 CALL                             R4 2 1
       26 MOVE                             R3 R4
       27 JUMP                             ; [+1]
       28 LOADK                            R3 K11 [""]
       29 LOADK                            R5 K12 ["Popovers%*/%*"]
       30 MOVE                             R7 R3
       31 GETUPVAL                         R8 0
       32 LOADB                            R10 0
       33 NAMECALL                         R8 R8 K13 ["GenerateGUID"]
       35 CALL                             R8 2 1
       36 NAMECALL                         R5 R5 K10 ["format"]
       38 CALL                             R5 3 1
       39 MOVE                             R4 R5
       40 MOVE                             R7 R4
       41 NAMECALL                         R5 R0 K14 ["_createPanelAsync"]
       43 CALL                             R5 2 2
       44 DUPTABLE                         R7 K17 [{"id", "uri", "panel", "open", "onClose"}]
       45 SETTABLEKS                       R4 R7 K7 ["id"]
       47 SETTABLEKS                       R6 R7 K15 ["uri"]
       49 SETTABLEKS                       R5 R7 K16 ["panel"]
       51 LOADB                            R8 0
       52 SETTABLEKS                       R8 R7 K5 ["open"]
       54 SETTABLEKS                       R1 R7 K4 ["onClose"]
       56 NEWCLOSURE                       R8 P0
       57 CAPTURE                          VAL R0
       58 CAPTURE                          VAL R7
       59 LOADK                            R11 K18 ["PluginGui"]
       60 NAMECALL                         R9 R5 K19 ["IsA"]
       62 CALL                             R9 2 1
       63 JUMPIFNOT                        R9 ; [+4]
       64 MOVE                             R11 R8
       65 NAMECALL                         R9 R5 K20 ["BindToClose"]
       67 CALL                             R9 2 0
       68 GETTABLEKS                       R8 R0 K6 ["_active"]
       70 SETTABLE                         R7 R8 R4
       71 RETURN                           R7 1

PROTO_9:
        0 GETTABLEKS                       R2 R1 K0 ["open"]
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R0 0
        4 LOADB                            R2 0
        5 SETTABLEKS                       R2 R1 K0 ["open"]
        7 GETTABLEKS                       R2 R1 K1 ["panel"]
        9 LOADB                            R3 0
       10 SETTABLEKS                       R3 R2 K2 ["Enabled"]
       12 GETTABLEKS                       R2 R1 K3 ["onClose"]
       14 JUMPIFNOT                        R2 ; [+3]
       15 GETTABLEKS                       R2 R1 K3 ["onClose"]
       17 CALL                             R2 0 0
       18 GETTABLEKS                       R2 R0 K4 ["_active"]
       20 GETTABLEKS                       R3 R1 K5 ["id"]
       22 LOADNIL                          R4
       23 SETTABLE                         R4 R2 R3
       24 GETTABLEKS                       R3 R0 K6 ["_pool"]
       26 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
       28 MOVE                             R4 R1
       29 GETIMPORT                        R2 K9 [table.insert]
       31 CALL                             R2 2 0
       32 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["_active"]
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 FORGPREP                         R1
        5 GETTABLEKS                       R6 R5 K1 ["open"]
        7 JUMPIFNOT                        R6 ; [+22]
        8 LOADB                            R6 0
        9 SETTABLEKS                       R6 R5 K1 ["open"]
       11 GETTABLEKS                       R6 R5 K2 ["panel"]
       13 LOADB                            R7 0
       14 SETTABLEKS                       R7 R6 K3 ["Enabled"]
       16 GETTABLEKS                       R6 R5 K4 ["onClose"]
       18 JUMPIFNOT                        R6 ; [+3]
       19 GETTABLEKS                       R6 R5 K4 ["onClose"]
       21 CALL                             R6 0 0
       22 GETTABLEKS                       R7 R0 K5 ["_pool"]
       24 FASTCALL2                        TABLE_INSERT R7 R5 ; [+4]
       26 MOVE                             R8 R5
       27 GETIMPORT                        R6 K8 [table.insert]
       29 CALL                             R6 2 0
       30 FORGLOOP                         R1 2 ; [-26]
       32 NEWTABLE                         R1 0 0
       34 SETTABLEKS                       R1 R0 K0 ["_active"]
       36 RETURN                           R0 0

PROTO_11:
        0 NAMECALL                         R1 R0 K0 ["closeAll"]
        2 CALL                             R1 1 0
        3 GETTABLEKS                       R1 R0 K1 ["_pool"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 GETTABLEKS                       R6 R5 K2 ["panel"]
       10 JUMPIFNOT                        R6 ; [+5]
       11 GETTABLEKS                       R6 R5 K2 ["panel"]
       13 NAMECALL                         R6 R6 K3 ["Destroy"]
       15 CALL                             R6 1 0
       16 FORGLOOP                         R1 2 ; [-9]
       18 NEWTABLE                         R1 0 0
       20 SETTABLEKS                       R1 R0 K1 ["_pool"]
       22 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["Foundation"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Utility"]
       17 GETTABLEKS                       R3 R3 K11 ["Plugin"]
       19 GETTABLEKS                       R3 R3 K12 ["StudioUri"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETIMPORT                        R4 K5 [script]
       26 GETTABLEKS                       R4 R4 K13 ["Parent"]
       28 GETTABLEKS                       R4 R4 K13 ["Parent"]
       30 GETTABLEKS                       R4 R4 K14 ["Types"]
       32 CALL                             R3 1 1
       33 DUPCLOSURE                       R4 K15 [PROTO_0]
       34 NEWTABLE                         R5 8 0
       36 SETTABLEKS                       R5 R5 K16 ["__index"]
       38 DUPCLOSURE                       R6 K17 [PROTO_1]
       39 CAPTURE                          VAL R5
       40 CAPTURE                          VAL R2
       41 SETTABLEKS                       R6 R5 K18 ["new"]
       43 DUPCLOSURE                       R6 K19 [PROTO_5]
       44 SETTABLEKS                       R6 R5 K20 ["openAtAsync"]
       46 DUPCLOSURE                       R6 K21 [PROTO_6]
       47 CAPTURE                          VAL R2
       48 SETTABLEKS                       R6 R5 K22 ["_createPanelAsync"]
       50 DUPCLOSURE                       R6 K23 [PROTO_8]
       51 CAPTURE                          VAL R0
       52 SETTABLEKS                       R6 R5 K24 ["_acquirePanelAsync"]
       54 DUPCLOSURE                       R6 K25 [PROTO_9]
       55 SETTABLEKS                       R6 R5 K26 ["_closePopover"]
       57 DUPCLOSURE                       R6 K27 [PROTO_10]
       58 SETTABLEKS                       R6 R5 K28 ["closeAll"]
       60 DUPCLOSURE                       R6 K29 [PROTO_11]
       61 SETTABLEKS                       R6 R5 K30 ["destroy"]
       63 RETURN                           R5 1
