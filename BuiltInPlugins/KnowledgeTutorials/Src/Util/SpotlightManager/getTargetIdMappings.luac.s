PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["RibbonConfiguration"]
        5 NAMECALL                         R1 R1 K1 ["GetRibbonDefinitionAsync"]
        7 CALL                             R1 1 1
        8 GETTABLEKS                       R2 R1 K2 ["TabControls"]
       10 LOADNIL                          R3
       11 LOADNIL                          R4
       12 FORGPREP                         R2
       13 GETTABLEKS                       R7 R6 K3 ["Controls"]
       15 LOADNIL                          R8
       16 LOADNIL                          R9
       17 FORGPREP                         R7
       18 GETTABLEKS                       R12 R11 K4 ["Id"]
       20 JUMPIFNOT                        R12 ; [+21]
       21 LOADK                            R13 K5 ["Ribbon/%*/%*"]
       22 GETTABLEKS                       R15 R6 K6 ["Name"]
       24 GETTABLEKS                       R16 R11 K4 ["Id"]
       26 NAMECALL                         R13 R13 K7 ["format"]
       28 CALL                             R13 3 1
       29 MOVE                             R12 R13
       30 DUPTABLE                         R13 K16 [{["DataModel"] = "Standalone", ["PluginType"] = "Standalone", ["PluginId"] = "Ribbon", ["Category"] = "Widgets", ["ItemId"]}]
       31 LOADK                            R15 K17 ["Tabs/%*/%*"]
       32 MOVE                             R17 R5
       33 GETTABLEKS                       R18 R11 K4 ["Id"]
       35 NAMECALL                         R15 R15 K7 ["format"]
       37 CALL                             R15 3 1
       38 MOVE                             R14 R15
       39 SETTABLEKS                       R14 R13 K15 ["ItemId"]
       41 SETTABLE                         R13 R0 R12
       42 FORGLOOP                         R7 2 ; [-25]
       44 FORGLOOP                         R2 2 ; [-32]
       46 GETTABLEKS                       R2 R1 K18 ["MezzanineControls"]
       48 LOADNIL                          R3
       49 LOADNIL                          R4
       50 FORGPREP                         R2
       51 GETIMPORT                        R8 K21 [string.find]
       53 MOVE                             R9 R5
       54 LOADK                            R10 K22 ["Left"]
       55 CALL                             R8 2 1
       56 JUMPIFNOTEQKNIL                  R8 ; [+2]
       58 LOADB                            R7 0 +1
       59 LOADB                            R7 1
       60 JUMPIFNOT                        R7 ; [+2]
       61 LOADK                            R8 K23 ["LeftMezzanine"]
       62 JUMP                             ; [+1]
       63 LOADK                            R8 K24 ["RightMezzanine"]
       64 GETTABLEKS                       R9 R6 K3 ["Controls"]
       66 LOADNIL                          R10
       67 LOADNIL                          R11
       68 FORGPREP                         R9
       69 GETTABLEKS                       R14 R13 K4 ["Id"]
       71 JUMPIFNOT                        R14 ; [+20]
       72 LOADK                            R15 K5 ["Ribbon/%*/%*"]
       73 MOVE                             R17 R8
       74 GETTABLEKS                       R18 R13 K4 ["Id"]
       76 NAMECALL                         R15 R15 K7 ["format"]
       78 CALL                             R15 3 1
       79 MOVE                             R14 R15
       80 DUPTABLE                         R15 K16 [{["DataModel"] = "Standalone", ["PluginType"] = "Standalone", ["PluginId"] = "Ribbon", ["Category"] = "Widgets", ["ItemId"]}]
       81 LOADK                            R17 K25 ["%*/%*"]
       82 MOVE                             R19 R8
       83 GETTABLEKS                       R20 R13 K4 ["Id"]
       85 NAMECALL                         R17 R17 K7 ["format"]
       87 CALL                             R17 3 1
       88 MOVE                             R16 R17
       89 SETTABLEKS                       R16 R15 K15 ["ItemId"]
       91 SETTABLE                         R15 R0 R14
       92 FORGLOOP                         R9 2 ; [-24]
       94 FORGLOOP                         R2 2 ; [-44]
       96 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["join"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R2 0 1
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["KnowledgeTutorials"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETIMPORT                        R3 K1 [script]
       18 GETTABLEKS                       R3 R3 K8 ["Parent"]
       20 GETTABLEKS                       R3 R3 K9 ["PluginComponents"]
       22 CALL                             R2 1 1
       23 NEWTABLE                         R3 4 0
       25 DUPTABLE                         R4 K16 [{["PluginId"] = "Properties", ["Category"] = "Widgets", ["ItemId"] = "Main"}]
       26 SETTABLEKS                       R4 R3 K17 ["Widgets/Properties"]
       28 DUPTABLE                         R4 K22 [{["DataModel"] = "Standalone", ["PluginType"] = "Standalone", ["PluginId"] = "ExplorerPlugin", ["Category"] = "Widgets", ["ItemId"] = "ExplorerPlugin"}]
       29 SETTABLEKS                       R4 R3 K23 ["Widgets/Explorer"]
       31 DUPTABLE                         R4 K27 [{["DataModel"] = "Edit", ["PluginType"] = "Asset", ["PluginId"] = "Toolbox", ["Category"] = "Widgets", ["ItemId"] = "Toolbox"}]
       32 SETTABLEKS                       R4 R3 K28 ["Widgets/Toolbox"]
       34 DUPCLOSURE                       R4 K29 [PROTO_0]
       35 CAPTURE                          VAL R2
       36 DUPCLOSURE                       R5 K30 [PROTO_1]
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R4
       40 RETURN                           R5 1
