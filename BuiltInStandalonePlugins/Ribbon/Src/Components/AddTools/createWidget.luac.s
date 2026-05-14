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
        1 DUPTABLE                         R6 K7 [{"Id", "MinSize", "Resizable", "ToolDialog", "Size", "Name"}]
        2 LOADK                            R7 K0 ["AddTools"]
        3 SETTABLEKS                       R7 R6 K1 ["Id"]
        5 GETUPVAL                         R7 0
        6 SETTABLEKS                       R7 R6 K2 ["MinSize"]
        8 LOADB                            R7 1
        9 SETTABLEKS                       R7 R6 K3 ["Resizable"]
       11 LOADB                            R7 1
       12 SETTABLEKS                       R7 R6 K4 ["ToolDialog"]
       14 GETUPVAL                         R7 0
       15 SETTABLEKS                       R7 R6 K5 ["Size"]
       17 LOADK                            R7 K0 ["AddTools"]
       18 SETTABLEKS                       R7 R6 K6 ["Name"]
       20 NAMECALL                         R3 R1 K8 ["CreateQWidgetPluginGui"]
       22 CALL                             R3 3 1
       23 LOADK                            R6 K9 ["PluginGui"]
       24 NAMECALL                         R4 R3 K10 ["IsA"]
       26 CALL                             R4 2 1
       27 JUMPIFNOT                        R4 ; [+7]
       28 SETTABLEKS                       R0 R3 K11 ["Title"]
       30 NEWCLOSURE                       R6 P0
       31 CAPTURE                          VAL R2
       32 NAMECALL                         R4 R3 K12 ["BindToClose"]
       34 CALL                             R4 2 0
       35 GETIMPORT                        R4 K16 [Enum.ZIndexBehavior.Sibling]
       37 SETTABLEKS                       R4 R3 K14 ["ZIndexBehavior"]
       39 NAMECALL                         R4 R1 K17 ["GetUri"]
       41 CALL                             R4 1 1
       42 GETUPVAL                         R5 1
       43 GETTABLEKS                       R5 R5 K18 ["join"]
       45 MOVE                             R6 R4
       46 DUPTABLE                         R7 K21 [{"Category", "ItemId"}]
       47 LOADK                            R8 K22 ["Panels"]
       48 SETTABLEKS                       R8 R7 K19 ["Category"]
       50 LOADK                            R8 K0 ["AddTools"]
       51 SETTABLEKS                       R8 R7 K20 ["ItemId"]
       53 CALL                             R5 2 1
       54 LOADK                            R8 K22 ["Panels"]
       55 NAMECALL                         R6 R1 K23 ["GetPluginComponent"]
       57 CALL                             R6 2 1
       58 MOVE                             R9 R5
       59 GETUPVAL                         R10 0
       60 NAMECALL                         R7 R6 K24 ["SetSizeAsync"]
       62 CALL                             R7 3 0
       63 GETUPVAL                         R7 2
       64 CALL                             R7 0 1
       65 JUMPIFNOT                        R7 ; [+6]
       66 GETUPVAL                         R7 3
       67 GETTABLEKS                       R7 R7 K25 ["watchPluginGui"]
       69 MOVE                             R8 R1
       70 MOVE                             R9 R3
       71 CALL                             R7 2 0
       72 LOADK                            R9 K26 ["PlaceManager"]
       73 NAMECALL                         R7 R1 K23 ["GetPluginComponent"]
       75 CALL                             R7 2 1
       76 GETTABLEKS                       R8 R7 K27 ["PlaceDocPanelClosed"]
       78 NEWCLOSURE                       R10 P1
       79 CAPTURE                          VAL R2
       80 NAMECALL                         R8 R8 K28 ["Connect"]
       82 CALL                             R8 2 0
       83 RETURN                           R3 1

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
       27 LOADN                            R5 128
       28 LOADN                            R6 244
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
