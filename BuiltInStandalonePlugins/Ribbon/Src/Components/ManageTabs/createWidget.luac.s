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
        0 LOADK                            R5 K0 ["ManageTabs"]
        1 DUPTABLE                         R6 K8 [{["Id"] = "ManageTabs", ["MinSize"], ["Resizable"] = True, ["ToolDialog"] = True, ["Size"], ["Name"] = "ManageTabs"}]
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
       27 GETUPVAL                         R4 1
       28 GETTABLEKS                       R4 R4 K18 ["wrap"]
       30 NAMECALL                         R5 R1 K19 ["GetUri"]
       32 CALL                             R5 1 -1
       33 CALL                             R4 -1 1
       34 GETUPVAL                         R5 1
       35 GETTABLEKS                       R5 R5 K20 ["join"]
       37 MOVE                             R6 R4
       38 DUPTABLE                         R7 K24 [{["Category"] = "Panels", ["ItemId"] = "ManageTabs"}]
       39 CALL                             R5 2 1
       40 LOADK                            R8 K22 ["Panels"]
       41 NAMECALL                         R6 R1 K25 ["GetPluginComponent"]
       43 CALL                             R6 2 1
       44 MOVE                             R9 R5
       45 GETUPVAL                         R10 0
       46 NAMECALL                         R7 R6 K26 ["SetSizeAsync"]
       48 CALL                             R7 3 0
       49 GETUPVAL                         R7 2
       50 CALL                             R7 0 1
       51 JUMPIFNOT                        R7 ; [+6]
       52 GETUPVAL                         R7 3
       53 GETTABLEKS                       R7 R7 K27 ["watchPluginGui"]
       55 MOVE                             R8 R1
       56 MOVE                             R9 R3
       57 CALL                             R7 2 0
       58 LOADK                            R9 K28 ["PlaceManager"]
       59 NAMECALL                         R7 R1 K25 ["GetPluginComponent"]
       61 CALL                             R7 2 1
       62 GETTABLEKS                       R8 R7 K29 ["PlaceDocPanelClosed"]
       64 NEWCLOSURE                       R10 P1
       65 CAPTURE                          VAL R2
       66 NAMECALL                         R8 R8 K30 ["Connect"]
       68 CALL                             R8 2 0
       69 RETURN                           R3 1

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
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R0 K10 ["Src"]
       29 GETTABLEKS                       R5 R5 K12 ["SharedFlags"]
       31 GETTABLEKS                       R5 R5 K13 ["getFFlagDebugEnableFoundationInspector"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K16 [Vector2.new]
       36 LOADN                            R6 302
       37 LOADN                            R7 302
       38 CALL                             R5 2 1
       39 DUPCLOSURE                       R6 K17 [PROTO_2]
       40 CAPTURE                          VAL R5
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R3
       44 RETURN                           R6 1
