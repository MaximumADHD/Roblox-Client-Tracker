PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 LOADK                            R5 K0 ["AddTools"]
        1 DUPTABLE                         R6 K8 [{["Id"] = "AddTools", ["MinSize"], ["Resizable"] = True, ["ToolDialog"] = True, ["Size"], ["Name"] = "AddTools"}]
        2 GETUPVAL                         R7 0
        3 SETTABLEKS                       R7 R6 K2 ["MinSize"]
        5 GETUPVAL                         R7 0
        6 SETTABLEKS                       R7 R6 K6 ["Size"]
        8 NAMECALL                         R3 R1 K9 ["CreateQWidgetPluginGui"]
       10 CALL                             R3 3 1
       11 LOADK                            R6 K10 ["PluginGui"]
       12 NAMECALL                         R4 R3 K11 ["IsA"]
       14 CALL                             R4 2 1
       15 JUMPIFNOT                        R4 ; [+7]
       16 SETTABLEKS                       R0 R3 K12 ["Title"]
       18 NEWCLOSURE                       R6 P0
       19 CAPTURE                          VAL R2
       20 NAMECALL                         R4 R3 K13 ["BindToClose"]
       22 CALL                             R4 2 0
       23 GETIMPORT                        R4 K17 [Enum.ZIndexBehavior.Sibling]
       25 SETTABLEKS                       R4 R3 K15 ["ZIndexBehavior"]
       27 NAMECALL                         R4 R1 K18 ["GetUri"]
       29 CALL                             R4 1 1
       30 GETUPVAL                         R5 1
       31 GETTABLEKS                       R5 R5 K19 ["join"]
       33 MOVE                             R6 R4
       34 DUPTABLE                         R7 K23 [{["Category"] = "Panels", ["ItemId"] = "AddTools"}]
       35 CALL                             R5 2 1
       36 LOADK                            R8 K21 ["Panels"]
       37 NAMECALL                         R6 R1 K24 ["GetPluginComponent"]
       39 CALL                             R6 2 1
       40 MOVE                             R9 R5
       41 GETUPVAL                         R10 0
       42 NAMECALL                         R7 R6 K25 ["SetSizeAsync"]
       44 CALL                             R7 3 0
       45 GETUPVAL                         R7 2
       46 CALL                             R7 0 1
       47 JUMPIFNOT                        R7 ; [+6]
       48 GETUPVAL                         R7 3
       49 GETTABLEKS                       R7 R7 K26 ["watchPluginGui"]
       51 MOVE                             R8 R1
       52 MOVE                             R9 R3
       53 CALL                             R7 2 0
       54 LOADK                            R9 K27 ["PlaceManager"]
       55 NAMECALL                         R7 R1 K24 ["GetPluginComponent"]
       57 CALL                             R7 2 1
       58 GETTABLEKS                       R8 R7 K28 ["PlaceDocPanelClosed"]
       60 NEWCLOSURE                       R10 P1
       61 CAPTURE                          VAL R2
       62 NAMECALL                         R8 R8 K29 ["Connect"]
       64 CALL                             R8 2 0
       65 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["StudioFoundation"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Util"]
       16 GETTABLEKS                       R2 R2 K9 ["StudioUri"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R0 K10 ["Src"]
       22 GETTABLEKS                       R4 R4 K11 ["FoundationInspector"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K14 [Vector2.new]
       27 LOADN                            R5 640
       28 LOADN                            R6 500
       29 CALL                             R4 2 1
       30 GETIMPORT                        R5 K5 [require]
       32 GETTABLEKS                       R6 R0 K10 ["Src"]
       34 GETTABLEKS                       R6 R6 K15 ["SharedFlags"]
       36 GETTABLEKS                       R6 R6 K16 ["getFFlagDebugEnableFoundationInspector"]
       38 CALL                             R5 1 1
       39 DUPCLOSURE                       R6 K17 [PROTO_2]
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R3
       44 RETURN                           R6 1
