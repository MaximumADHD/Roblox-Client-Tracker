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
       20 JUMPIFNOT                        R12 ; [+19]
       21 LOADK                            R12 K5 ["Ribbon/%*/%*"]
       22 GETTABLEKS                       R14 R6 K6 ["Name"]
       24 GETTABLEKS                       R15 R11 K4 ["Id"]
       26 NAMECALL                         R12 R12 K7 ["format"]
       28 CALL                             R12 3 1
       29 DUPTABLE                         R13 K16 [{["DataModel"] = "Standalone", ["PluginType"] = "Standalone", ["PluginId"] = "Ribbon", ["Category"] = "Widgets", ["ItemId"]}]
       30 LOADK                            R14 K17 ["Tabs/%*/%*"]
       31 MOVE                             R16 R5
       32 GETTABLEKS                       R17 R11 K4 ["Id"]
       34 NAMECALL                         R14 R14 K7 ["format"]
       36 CALL                             R14 3 1
       37 SETTABLEKS                       R14 R13 K15 ["ItemId"]
       39 SETTABLE                         R13 R0 R12
       40 FORGLOOP                         R7 2 ; [-23]
       42 FORGLOOP                         R2 2 ; [-30]
       44 GETTABLEKS                       R2 R1 K18 ["MezzanineControls"]
       46 LOADNIL                          R3
       47 LOADNIL                          R4
       48 FORGPREP                         R2
       49 GETIMPORT                        R8 K21 [string.find]
       51 MOVE                             R9 R5
       52 LOADK                            R10 K22 ["Left"]
       53 CALL                             R8 2 1
       54 JUMPIFNOTEQKNIL                  R8 ; [+2]
       56 LOADB                            R7 0 +1
       57 LOADB                            R7 1
       58 JUMPIFNOT                        R7 ; [+2]
       59 LOADK                            R8 K23 ["LeftMezzanine"]
       60 JUMP                             ; [+1]
       61 LOADK                            R8 K24 ["RightMezzanine"]
       62 GETTABLEKS                       R9 R6 K3 ["Controls"]
       64 LOADNIL                          R10
       65 LOADNIL                          R11
       66 FORGPREP                         R9
       67 GETTABLEKS                       R14 R13 K4 ["Id"]
       69 JUMPIFNOT                        R14 ; [+18]
       70 LOADK                            R14 K5 ["Ribbon/%*/%*"]
       71 MOVE                             R16 R8
       72 GETTABLEKS                       R17 R13 K4 ["Id"]
       74 NAMECALL                         R14 R14 K7 ["format"]
       76 CALL                             R14 3 1
       77 DUPTABLE                         R15 K16 [{["DataModel"] = "Standalone", ["PluginType"] = "Standalone", ["PluginId"] = "Ribbon", ["Category"] = "Widgets", ["ItemId"]}]
       78 LOADK                            R16 K25 ["%*/%*"]
       79 MOVE                             R18 R8
       80 GETTABLEKS                       R19 R13 K4 ["Id"]
       82 NAMECALL                         R16 R16 K7 ["format"]
       84 CALL                             R16 3 1
       85 SETTABLEKS                       R16 R15 K15 ["ItemId"]
       87 SETTABLE                         R15 R0 R14
       88 FORGLOOP                         R9 2 ; [-22]
       90 FORGLOOP                         R2 2 ; [-42]
       92 RETURN                           R0 1

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
