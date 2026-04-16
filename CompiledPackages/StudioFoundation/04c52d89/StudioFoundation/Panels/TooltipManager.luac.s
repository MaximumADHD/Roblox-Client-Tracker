PROTO_0:
        0 NEWTABLE                         R3 8 0
        2 GETUPVAL                         R4 0
        3 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
        5 GETIMPORT                        R2 K1 [setmetatable]
        7 CALL                             R2 2 1
        8 SETTABLEKS                       R0 R2 K2 ["_plugin"]
       10 LOADK                            R5 K3 ["Panels"]
       11 NAMECALL                         R3 R0 K4 ["GetPluginComponent"]
       13 CALL                             R3 2 1
       14 SETTABLEKS                       R3 R2 K5 ["_panels"]
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R3 R4 K6 ["wrap"]
       19 NAMECALL                         R4 R0 K7 ["GetUri"]
       21 CALL                             R4 1 -1
       22 CALL                             R3 -1 1
       23 SETTABLEKS                       R3 R2 K8 ["_pluginUri"]
       25 LOADNIL                          R3
       26 SETTABLEKS                       R3 R2 K9 ["_panel"]
       28 LOADNIL                          R3
       29 SETTABLEKS                       R3 R2 K10 ["_panelUri"]
       31 LOADN                            R3 0
       32 SETTABLEKS                       R3 R2 K11 ["_currentToken"]
       34 LOADB                            R3 0
       35 SETTABLEKS                       R3 R2 K12 ["_creating"]
       37 SETTABLEKS                       R1 R2 K13 ["_uriScope"]
       39 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["_plugin"]
        2 MOVE                             R4 R1
        3 DUPTABLE                         R5 K10 [{"Id", "InitialEnabled", "MinSize", "Modal", "Tooltip", "Resizable", "Size", "Title", "ZIndex"}]
        4 SETTABLEKS                       R1 R5 K1 ["Id"]
        6 LOADB                            R6 0
        7 SETTABLEKS                       R6 R5 K2 ["InitialEnabled"]
        9 GETIMPORT                        R6 K13 [Vector2.new]
       11 LOADN                            R7 50
       12 LOADN                            R8 50
       13 CALL                             R6 2 1
       14 SETTABLEKS                       R6 R5 K3 ["MinSize"]
       16 LOADB                            R6 0
       17 SETTABLEKS                       R6 R5 K4 ["Modal"]
       19 LOADB                            R6 1
       20 SETTABLEKS                       R6 R5 K5 ["Tooltip"]
       22 LOADB                            R6 1
       23 SETTABLEKS                       R6 R5 K6 ["Resizable"]
       25 GETIMPORT                        R6 K13 [Vector2.new]
       27 LOADN                            R7 220
       28 LOADN                            R8 224
       29 CALL                             R6 2 1
       30 SETTABLEKS                       R6 R5 K7 ["Size"]
       32 LOADK                            R6 K5 ["Tooltip"]
       33 SETTABLEKS                       R6 R5 K8 ["Title"]
       35 LOADN                            R6 100
       36 SETTABLEKS                       R6 R5 K9 ["ZIndex"]
       38 NAMECALL                         R2 R2 K14 ["CreateQWidgetPluginGui"]
       40 CALL                             R2 3 1
       41 GETIMPORT                        R3 K18 [Enum.ZIndexBehavior.Sibling]
       43 SETTABLEKS                       R3 R2 K16 ["ZIndexBehavior"]
       45 MOVE                             R3 R2
       46 GETUPVAL                         R5 0
       47 GETTABLEKS                       R4 R5 K19 ["join"]
       49 GETTABLEKS                       R5 R0 K20 ["_pluginUri"]
       51 DUPTABLE                         R6 K23 [{"Category", "ItemId"}]
       52 LOADK                            R7 K24 ["Panels"]
       53 SETTABLEKS                       R7 R6 K21 ["Category"]
       55 SETTABLEKS                       R1 R6 K22 ["ItemId"]
       57 CALL                             R4 2 -1
       58 RETURN                           R3 -1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["_panel"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K1 ["_panelUri"]
        5 JUMPIFNOT                        R1 ; [+5]
        6 GETTABLEKS                       R1 R0 K0 ["_panel"]
        8 GETTABLEKS                       R2 R0 K1 ["_panelUri"]
       10 RETURN                           R1 2
       11 GETTABLEKS                       R1 R0 K2 ["_creating"]
       13 JUMPIFNOT                        R1 ; [+12]
       14 GETTABLEKS                       R1 R0 K2 ["_creating"]
       16 JUMPIFNOT                        R1 ; [+4]
       17 GETIMPORT                        R1 K5 [task.wait]
       19 CALL                             R1 0 0
       20 JUMPBACK                         ; [-7]
       21 GETTABLEKS                       R1 R0 K0 ["_panel"]
       23 GETTABLEKS                       R2 R0 K1 ["_panelUri"]
       25 RETURN                           R1 2
       26 LOADB                            R1 1
       27 SETTABLEKS                       R1 R0 K2 ["_creating"]
       29 GETTABLEKS                       R2 R0 K6 ["_uriScope"]
       31 JUMPIFNOT                        R2 ; [+8]
       32 LOADK                            R2 K7 ["/%*"]
       33 GETTABLEKS                       R4 R0 K6 ["_uriScope"]
       35 NAMECALL                         R2 R2 K8 ["format"]
       37 CALL                             R2 2 1
       38 MOVE                             R1 R2
       39 JUMP                             ; [+1]
       40 LOADK                            R1 K9 [""]
       41 LOADK                            R3 K10 ["Tooltip_%*%*"]
       42 GETIMPORT                        R5 K13 [math.random]
       44 CALL                             R5 0 1
       45 MOVE                             R6 R1
       46 NAMECALL                         R3 R3 K8 ["format"]
       48 CALL                             R3 3 1
       49 MOVE                             R2 R3
       50 MOVE                             R5 R2
       51 NAMECALL                         R3 R0 K14 ["_createTooltipPanelAsync"]
       53 CALL                             R3 2 2
       54 SETTABLEKS                       R3 R0 K0 ["_panel"]
       56 SETTABLEKS                       R4 R0 K1 ["_panelUri"]
       58 LOADB                            R5 0
       59 SETTABLEKS                       R5 R0 K2 ["_creating"]
       61 RETURN                           R3 2

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["_currentToken"]
        4 JUMPIFEQ                         R1 R2 ; [+2]
        6 LOADB                            R0 0 +1
        7 LOADB                            R0 1
        8 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["_currentToken"]
        4 JUMPIFEQ                         R2 R3 ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 JUMPIFNOT                        R1 ; [+4]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R1 R2 K1 ["_panelUri"]
       12 JUMPIF                           R1 ; [+1]
       13 RETURN                           R0 0
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R1 R2 K2 ["_panels"]
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R3 R4 K1 ["_panelUri"]
       20 MOVE                             R4 R0
       21 NAMECALL                         R1 R1 K3 ["SetSizeAsync"]
       23 CALL                             R1 3 0
       24 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["_currentToken"]
        4 JUMPIFEQ                         R2 R3 ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 JUMPIFNOT                        R1 ; [+4]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R1 R2 K1 ["_panelUri"]
       12 JUMPIF                           R1 ; [+1]
       13 RETURN                           R0 0
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R1 R2 K2 ["_panels"]
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R3 R4 K1 ["_panelUri"]
       20 DUPTABLE                         R4 K8 [{"TargetWidgetUri", "TargetAnchorPoint", "SubjectAnchorPoint", "Offset", "AutoHide"}]
       21 GETTABLEKS                       R5 R0 K9 ["targetWidgetUri"]
       23 SETTABLEKS                       R5 R4 K3 ["TargetWidgetUri"]
       25 GETTABLEKS                       R5 R0 K10 ["targetAnchorPoint"]
       27 SETTABLEKS                       R5 R4 K4 ["TargetAnchorPoint"]
       29 GETTABLEKS                       R5 R0 K11 ["subjectAnchorPoint"]
       31 SETTABLEKS                       R5 R4 K5 ["SubjectAnchorPoint"]
       33 GETTABLEKS                       R5 R0 K12 ["offset"]
       35 SETTABLEKS                       R5 R4 K6 ["Offset"]
       37 LOADB                            R5 1
       38 SETTABLEKS                       R5 R4 K7 ["AutoHide"]
       40 NAMECALL                         R1 R1 K13 ["SetAttachmentAsync"]
       42 CALL                             R1 3 0
       43 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["_currentToken"]
        4 JUMPIFEQ                         R1 R2 ; [+2]
        6 LOADB                            R0 0 +1
        7 LOADB                            R0 1
        8 JUMPIFNOT                        R0 ; [+4]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R0 R1 K1 ["_panel"]
       12 JUMPIF                           R0 ; [+1]
       13 RETURN                           R0 0
       14 GETUPVAL                         R1 1
       15 GETTABLEKS                       R0 R1 K1 ["_panel"]
       17 LOADB                            R1 0
       18 SETTABLEKS                       R1 R0 K2 ["Enabled"]
       20 RETURN                           R0 0

PROTO_7:
        0 NAMECALL                         R2 R0 K0 ["_ensurePanelExistsAsync"]
        2 CALL                             R2 1 2
        3 GETTABLEKS                       R4 R0 K1 ["_currentToken"]
        5 ADDK                             R4 R4 K2 [1]
        6 SETTABLEKS                       R4 R0 K1 ["_currentToken"]
        8 GETTABLEKS                       R4 R0 K1 ["_currentToken"]
       10 GETTABLEKS                       R5 R0 K3 ["_panels"]
       12 MOVE                             R7 R3
       13 DUPTABLE                         R8 K9 [{"TargetWidgetUri", "TargetAnchorPoint", "SubjectAnchorPoint", "Offset", "AutoHide"}]
       14 GETTABLEKS                       R9 R1 K10 ["targetWidgetUri"]
       16 SETTABLEKS                       R9 R8 K4 ["TargetWidgetUri"]
       18 GETTABLEKS                       R9 R1 K11 ["targetAnchorPoint"]
       20 SETTABLEKS                       R9 R8 K5 ["TargetAnchorPoint"]
       22 GETTABLEKS                       R9 R1 K12 ["subjectAnchorPoint"]
       24 SETTABLEKS                       R9 R8 K6 ["SubjectAnchorPoint"]
       26 GETTABLEKS                       R9 R1 K13 ["offset"]
       28 SETTABLEKS                       R9 R8 K7 ["Offset"]
       30 LOADB                            R9 1
       31 SETTABLEKS                       R9 R8 K8 ["AutoHide"]
       33 NAMECALL                         R5 R5 K14 ["SetAttachmentAsync"]
       35 CALL                             R5 3 0
       36 GETTABLEKS                       R5 R0 K3 ["_panels"]
       38 MOVE                             R7 R3
       39 NAMECALL                         R5 R5 K15 ["ShowIfAttachedAsync"]
       41 CALL                             R5 2 0
       42 NEWCLOSURE                       R5 P0
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R0
       45 DUPTABLE                         R6 K20 [{"container", "setSizeAsync", "updateAsync", "close"}]
       46 SETTABLEKS                       R2 R6 K16 ["container"]
       48 NEWCLOSURE                       R7 P1
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R0
       51 SETTABLEKS                       R7 R6 K17 ["setSizeAsync"]
       53 NEWCLOSURE                       R7 P2
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R0
       56 SETTABLEKS                       R7 R6 K18 ["updateAsync"]
       58 NEWCLOSURE                       R7 P3
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R0
       61 SETTABLEKS                       R7 R6 K19 ["close"]
       63 RETURN                           R6 1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["_currentToken"]
        2 ADDK                             R1 R1 K1 [1]
        3 SETTABLEKS                       R1 R0 K0 ["_currentToken"]
        5 GETTABLEKS                       R1 R0 K2 ["_panel"]
        7 JUMPIFNOT                        R1 ; [+5]
        8 GETTABLEKS                       R1 R0 K2 ["_panel"]
       10 LOADB                            R2 0
       11 SETTABLEKS                       R2 R1 K3 ["Enabled"]
       13 RETURN                           R0 0

PROTO_9:
        0 NAMECALL                         R1 R0 K0 ["closeAll"]
        2 CALL                             R1 1 0
        3 GETTABLEKS                       R1 R0 K1 ["_panel"]
        5 JUMPIFNOT                        R1 ; [+5]
        6 GETTABLEKS                       R1 R0 K1 ["_panel"]
        8 NAMECALL                         R1 R1 K2 ["Destroy"]
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StudioFoundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R3 K7 ["StudioUri"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Types"]
       18 CALL                             R2 1 1
       19 NEWTABLE                         R3 8 0
       21 SETTABLEKS                       R3 R3 K9 ["__index"]
       23 DUPCLOSURE                       R4 K10 [PROTO_0]
       24 CAPTURE                          VAL R3
       25 CAPTURE                          VAL R1
       26 SETTABLEKS                       R4 R3 K11 ["new"]
       28 DUPCLOSURE                       R4 K12 [PROTO_1]
       29 CAPTURE                          VAL R1
       30 SETTABLEKS                       R4 R3 K13 ["_createTooltipPanelAsync"]
       32 DUPCLOSURE                       R4 K14 [PROTO_2]
       33 SETTABLEKS                       R4 R3 K15 ["_ensurePanelExistsAsync"]
       35 DUPCLOSURE                       R4 K16 [PROTO_7]
       36 SETTABLEKS                       R4 R3 K17 ["openAsync"]
       38 DUPCLOSURE                       R4 K18 [PROTO_8]
       39 SETTABLEKS                       R4 R3 K19 ["closeAll"]
       41 DUPCLOSURE                       R4 K20 [PROTO_9]
       42 SETTABLEKS                       R4 R3 K21 ["destroy"]
       44 RETURN                           R3 1
