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
       20 JUMPIFNOT                        R12 ; [+33]
       21 LOADK                            R13 K5 ["Ribbon/%*/%*"]
       22 GETTABLEKS                       R15 R6 K6 ["Name"]
       24 GETTABLEKS                       R16 R11 K4 ["Id"]
       26 NAMECALL                         R13 R13 K7 ["format"]
       28 CALL                             R13 3 1
       29 MOVE                             R12 R13
       30 DUPTABLE                         R13 K13 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
       31 LOADK                            R14 K14 ["Standalone"]
       32 SETTABLEKS                       R14 R13 K8 ["DataModel"]
       34 LOADK                            R14 K14 ["Standalone"]
       35 SETTABLEKS                       R14 R13 K9 ["PluginType"]
       37 LOADK                            R14 K15 ["Ribbon"]
       38 SETTABLEKS                       R14 R13 K10 ["PluginId"]
       40 LOADK                            R14 K16 ["Widgets"]
       41 SETTABLEKS                       R14 R13 K11 ["Category"]
       43 LOADK                            R15 K17 ["Tabs/%*/%*"]
       44 MOVE                             R17 R5
       45 GETTABLEKS                       R18 R11 K4 ["Id"]
       47 NAMECALL                         R15 R15 K7 ["format"]
       49 CALL                             R15 3 1
       50 MOVE                             R14 R15
       51 SETTABLEKS                       R14 R13 K12 ["ItemId"]
       53 SETTABLE                         R13 R0 R12
       54 FORGLOOP                         R7 2 ; [-37]
       56 FORGLOOP                         R2 2 ; [-44]
       58 GETTABLEKS                       R2 R1 K18 ["MezzanineControls"]
       60 LOADNIL                          R3
       61 LOADNIL                          R4
       62 FORGPREP                         R2
       63 GETIMPORT                        R8 K21 [string.find]
       65 MOVE                             R9 R5
       66 LOADK                            R10 K22 ["Left"]
       67 CALL                             R8 2 1
       68 JUMPIFNOTEQKNIL                  R8 ; [+2]
       70 LOADB                            R7 0 +1
       71 LOADB                            R7 1
       72 JUMPIFNOT                        R7 ; [+2]
       73 LOADK                            R8 K23 ["LeftMezzanine"]
       74 JUMP                             ; [+1]
       75 LOADK                            R8 K24 ["RightMezzanine"]
       76 GETTABLEKS                       R9 R6 K3 ["Controls"]
       78 LOADNIL                          R10
       79 LOADNIL                          R11
       80 FORGPREP                         R9
       81 GETTABLEKS                       R14 R13 K4 ["Id"]
       83 JUMPIFNOT                        R14 ; [+32]
       84 LOADK                            R15 K5 ["Ribbon/%*/%*"]
       85 MOVE                             R17 R8
       86 GETTABLEKS                       R18 R13 K4 ["Id"]
       88 NAMECALL                         R15 R15 K7 ["format"]
       90 CALL                             R15 3 1
       91 MOVE                             R14 R15
       92 DUPTABLE                         R15 K13 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
       93 LOADK                            R16 K14 ["Standalone"]
       94 SETTABLEKS                       R16 R15 K8 ["DataModel"]
       96 LOADK                            R16 K14 ["Standalone"]
       97 SETTABLEKS                       R16 R15 K9 ["PluginType"]
       99 LOADK                            R16 K15 ["Ribbon"]
      100 SETTABLEKS                       R16 R15 K10 ["PluginId"]
      102 LOADK                            R16 K16 ["Widgets"]
      103 SETTABLEKS                       R16 R15 K11 ["Category"]
      105 LOADK                            R17 K25 ["%*/%*"]
      106 MOVE                             R19 R8
      107 GETTABLEKS                       R20 R13 K4 ["Id"]
      109 NAMECALL                         R17 R17 K7 ["format"]
      111 CALL                             R17 3 1
      112 MOVE                             R16 R17
      113 SETTABLEKS                       R16 R15 K12 ["ItemId"]
      115 SETTABLE                         R15 R0 R14
      116 FORGLOOP                         R9 2 ; [-36]
      118 FORGLOOP                         R2 2 ; [-56]
      120 RETURN                           R0 1

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
       25 DUPTABLE                         R4 K13 [{"PluginId", "Category", "ItemId"}]
       26 LOADK                            R5 K14 ["Properties"]
       27 SETTABLEKS                       R5 R4 K10 ["PluginId"]
       29 LOADK                            R5 K15 ["Widgets"]
       30 SETTABLEKS                       R5 R4 K11 ["Category"]
       32 LOADK                            R5 K16 ["Main"]
       33 SETTABLEKS                       R5 R4 K12 ["ItemId"]
       35 SETTABLEKS                       R4 R3 K17 ["Widgets/Properties"]
       37 DUPTABLE                         R4 K20 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
       38 LOADK                            R5 K21 ["Standalone"]
       39 SETTABLEKS                       R5 R4 K18 ["DataModel"]
       41 LOADK                            R5 K21 ["Standalone"]
       42 SETTABLEKS                       R5 R4 K19 ["PluginType"]
       44 LOADK                            R5 K22 ["ExplorerPlugin"]
       45 SETTABLEKS                       R5 R4 K10 ["PluginId"]
       47 LOADK                            R5 K15 ["Widgets"]
       48 SETTABLEKS                       R5 R4 K11 ["Category"]
       50 LOADK                            R5 K22 ["ExplorerPlugin"]
       51 SETTABLEKS                       R5 R4 K12 ["ItemId"]
       53 SETTABLEKS                       R4 R3 K23 ["Widgets/Explorer"]
       55 DUPTABLE                         R4 K20 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
       56 LOADK                            R5 K24 ["Edit"]
       57 SETTABLEKS                       R5 R4 K18 ["DataModel"]
       59 LOADK                            R5 K25 ["Asset"]
       60 SETTABLEKS                       R5 R4 K19 ["PluginType"]
       62 LOADK                            R5 K26 ["Toolbox"]
       63 SETTABLEKS                       R5 R4 K10 ["PluginId"]
       65 LOADK                            R5 K15 ["Widgets"]
       66 SETTABLEKS                       R5 R4 K11 ["Category"]
       68 LOADK                            R5 K26 ["Toolbox"]
       69 SETTABLEKS                       R5 R4 K12 ["ItemId"]
       71 SETTABLEKS                       R4 R3 K27 ["Widgets/Toolbox"]
       73 DUPCLOSURE                       R4 K28 [PROTO_0]
       74 CAPTURE                          VAL R2
       75 DUPCLOSURE                       R5 K29 [PROTO_1]
       76 CAPTURE                          VAL R1
       77 CAPTURE                          VAL R3
       78 CAPTURE                          VAL R4
       79 RETURN                           R5 1
