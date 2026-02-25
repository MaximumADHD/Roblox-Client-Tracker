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
        1 DUPTABLE                         R6 K7 [{"Id", "MinSize", "Resizable", "ToolDialog", "Size", "Name"}]
        2 LOADK                            R7 K0 ["ManageTabs"]
        3 SETTABLEKS                       R7 R6 K1 ["Id"]
        5 GETUPVAL                         R7 0
        6 SETTABLEKS                       R7 R6 K2 ["MinSize"]
        8 LOADB                            R7 1
        9 SETTABLEKS                       R7 R6 K3 ["Resizable"]
       11 LOADB                            R7 1
       12 SETTABLEKS                       R7 R6 K4 ["ToolDialog"]
       14 GETUPVAL                         R7 0
       15 SETTABLEKS                       R7 R6 K5 ["Size"]
       17 LOADK                            R7 K0 ["ManageTabs"]
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
       39 GETUPVAL                         R5 1
       40 GETTABLEKS                       R4 R5 K17 ["wrap"]
       42 NAMECALL                         R5 R1 K18 ["GetUri"]
       44 CALL                             R5 1 -1
       45 CALL                             R4 -1 1
       46 GETUPVAL                         R6 1
       47 GETTABLEKS                       R5 R6 K19 ["join"]
       49 MOVE                             R6 R4
       50 DUPTABLE                         R7 K22 [{"Category", "ItemId"}]
       51 LOADK                            R8 K23 ["Panels"]
       52 SETTABLEKS                       R8 R7 K20 ["Category"]
       54 LOADK                            R8 K0 ["ManageTabs"]
       55 SETTABLEKS                       R8 R7 K21 ["ItemId"]
       57 CALL                             R5 2 1
       58 LOADK                            R8 K23 ["Panels"]
       59 NAMECALL                         R6 R1 K24 ["GetPluginComponent"]
       61 CALL                             R6 2 1
       62 MOVE                             R9 R5
       63 GETUPVAL                         R10 0
       64 NAMECALL                         R7 R6 K25 ["SetSizeAsync"]
       66 CALL                             R7 3 0
       67 GETUPVAL                         R7 2
       68 CALL                             R7 0 1
       69 JUMPIFNOT                        R7 ; [+6]
       70 GETUPVAL                         R8 3
       71 GETTABLEKS                       R7 R8 K26 ["watchPluginGui"]
       73 MOVE                             R8 R1
       74 MOVE                             R9 R3
       75 CALL                             R7 2 0
       76 LOADK                            R9 K27 ["PlaceManager"]
       77 NAMECALL                         R7 R1 K24 ["GetPluginComponent"]
       79 CALL                             R7 2 1
       80 GETTABLEKS                       R8 R7 K28 ["PlaceDocPanelClosed"]
       82 NEWCLOSURE                       R10 P1
       83 CAPTURE                          VAL R2
       84 NAMECALL                         R8 R8 K29 ["Connect"]
       86 CALL                             R8 2 0
       87 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["StudioFoundation"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R1 K8 ["Util"]
       16 GETTABLEKS                       R2 R3 K9 ["StudioUri"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R5 R0 K10 ["Src"]
       22 GETTABLEKS                       R4 R5 K11 ["FoundationInspector"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R7 R0 K10 ["Src"]
       29 GETTABLEKS                       R6 R7 K12 ["SharedFlags"]
       31 GETTABLEKS                       R5 R6 K13 ["getFFlagDebugEnableFoundationInspector"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K16 [Vector2.new]
       36 LOADN                            R6 46
       37 LOADN                            R7 46
       38 CALL                             R5 2 1
       39 DUPCLOSURE                       R6 K17 [PROTO_2]
       40 CAPTURE                          VAL R5
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R3
       44 RETURN                           R6 1
