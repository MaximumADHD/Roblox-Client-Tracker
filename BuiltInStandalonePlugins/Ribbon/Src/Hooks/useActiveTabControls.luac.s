PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+3]
        2 NEWTABLE                         R0 0 0
        4 RETURN                           R0 1
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R1 0
        7 CALL                             R0 1 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R2 R3 K0 ["TabControls"]
       11 GETTABLE                         R1 R2 R0
       12 JUMPIF                           R1 ; [+12]
       13 GETIMPORT                        R1 K2 [warn]
       15 LOADK                            R3 K3 ["Tab \"%*\" is not known!"]
       16 MOVE                             R5 R0
       17 NAMECALL                         R3 R3 K4 ["format"]
       19 CALL                             R3 2 1
       20 MOVE                             R2 R3
       21 CALL                             R1 1 0
       22 NEWTABLE                         R1 0 0
       24 RETURN                           R1 1
       25 GETIMPORT                        R1 K7 [table.clone]
       27 GETUPVAL                         R5 2
       28 GETTABLEKS                       R4 R5 K0 ["TabControls"]
       30 GETTABLE                         R3 R4 R0
       31 GETTABLEKS                       R2 R3 K8 ["Controls"]
       33 CALL                             R1 1 1
       34 GETUPVAL                         R2 3
       35 GETUPVAL                         R4 4
       36 GETTABLEKS                       R3 R4 K9 ["wrap"]
       38 GETUPVAL                         R4 5
       39 NAMECALL                         R4 R4 K10 ["GetUri"]
       41 CALL                             R4 1 -1
       42 CALL                             R3 -1 1
       43 MOVE                             R4 R0
       44 MOVE                             R5 R1
       45 GETIMPORT                        R6 K7 [table.clone]
       47 GETUPVAL                         R7 6
       48 CALL                             R6 1 -1
       49 CALL                             R2 -1 0
       50 GETIMPORT                        R2 K12 [table.freeze]
       52 MOVE                             R3 R1
       53 CALL                             R2 1 1
       54 MOVE                             R1 R2
       55 GETUPVAL                         R3 0
       56 GETTABLEKS                       R2 R3 K13 ["Type"]
       58 JUMPIFNOTEQKS                    R2 K14 ["Custom"] ; [+5]
       60 LENGTH                           R2 R1
       61 JUMPIFNOTEQKN                    R2 K15 [0] ; [+2]
       63 GETUPVAL                         R1 7
       64 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["use"]
        3 CALL                             R2 0 1
        4 NAMECALL                         R2 R2 K1 ["get"]
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 1
        8 GETUPVAL                         R4 2
        9 CALL                             R3 1 1
       10 GETTABLEKS                       R4 R3 K2 ["Definition"]
       12 GETUPVAL                         R5 3
       13 NEWCLOSURE                       R6 P0
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          VAL R4
       17 CAPTURE                          UPVAL U5
       18 CAPTURE                          UPVAL U6
       19 CAPTURE                          VAL R2
       20 CAPTURE                          VAL R1
       21 CAPTURE                          UPVAL U7
       22 NEWTABLE                         R7 0 4
       24 MOVE                             R8 R2
       25 MOVE                             R9 R4
       26 MOVE                             R10 R0
       27 MOVE                             R11 R1
       28 SETLIST                          R7 R8 4 [1]
       30 CALL                             R5 2 1
       31 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K9 ["Src"]
       25 GETTABLEKS                       R5 R6 K10 ["Contexts"]
       27 GETTABLEKS                       R4 R5 K11 ["RibbonDefinition"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K6 ["Packages"]
       34 GETTABLEKS                       R5 R6 K12 ["StudioFoundation"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R6 R4 K13 ["Util"]
       39 GETTABLEKS                       R5 R6 K14 ["StudioUri"]
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R8 R0 K9 ["Src"]
       45 GETTABLEKS                       R7 R8 K15 ["Types"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K5 [require]
       50 GETTABLEKS                       R10 R0 K9 ["Src"]
       52 GETTABLEKS                       R9 R10 K13 ["Util"]
       54 GETTABLEKS                       R8 R9 K16 ["deepFreeze"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K5 [require]
       59 GETTABLEKS                       R11 R0 K9 ["Src"]
       61 GETTABLEKS                       R10 R11 K13 ["Util"]
       63 GETTABLEKS                       R9 R10 K17 ["addCustomControls"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K5 [require]
       68 GETTABLEKS                       R12 R0 K9 ["Src"]
       70 GETTABLEKS                       R11 R12 K13 ["Util"]
       72 GETTABLEKS                       R10 R11 K18 ["controlsIdentifierToString"]
       74 CALL                             R9 1 1
       75 GETTABLEKS                       R11 R1 K19 ["ContextServices"]
       77 GETTABLEKS                       R10 R11 K20 ["Plugin"]
       79 GETTABLEKS                       R11 R2 K21 ["useContext"]
       81 GETTABLEKS                       R12 R2 K22 ["useMemo"]
       83 DUPTABLE                         R13 K27 [{"Id", "Type", "Enabled", "Action"}]
       84 LOADK                            R14 K28 ["AddTools"]
       85 SETTABLEKS                       R14 R13 K23 ["Id"]
       87 LOADK                            R14 K29 ["IconButton"]
       88 SETTABLEKS                       R14 R13 K24 ["Type"]
       90 LOADB                            R14 1
       91 SETTABLEKS                       R14 R13 K25 ["Enabled"]
       93 GETTABLEKS                       R14 R5 K30 ["wrap"]
       95 DUPTABLE                         R15 K36 [{"Category", "DataModel", "ItemId", "PluginId", "PluginType"}]
       96 LOADK                            R16 K37 ["Actions"]
       97 SETTABLEKS                       R16 R15 K31 ["Category"]
       99 LOADK                            R16 K38 ["Standalone"]
      100 SETTABLEKS                       R16 R15 K32 ["DataModel"]
      102 LOADK                            R16 K28 ["AddTools"]
      103 SETTABLEKS                       R16 R15 K33 ["ItemId"]
      105 LOADK                            R16 K2 ["Ribbon"]
      106 SETTABLEKS                       R16 R15 K34 ["PluginId"]
      108 LOADK                            R16 K38 ["Standalone"]
      109 SETTABLEKS                       R16 R15 K35 ["PluginType"]
      111 CALL                             R14 1 1
      112 SETTABLEKS                       R14 R13 K26 ["Action"]
      114 MOVE                             R14 R7
      115 NEWTABLE                         R15 0 1
      117 MOVE                             R16 R13
      118 SETLIST                          R15 R16 1 [1]
      120 CALL                             R14 1 1
      121 DUPCLOSURE                       R15 K39 [PROTO_1]
      122 CAPTURE                          VAL R10
      123 CAPTURE                          VAL R11
      124 CAPTURE                          VAL R3
      125 CAPTURE                          VAL R12
      126 CAPTURE                          VAL R9
      127 CAPTURE                          VAL R8
      128 CAPTURE                          VAL R5
      129 CAPTURE                          VAL R14
      130 RETURN                           R15 1
