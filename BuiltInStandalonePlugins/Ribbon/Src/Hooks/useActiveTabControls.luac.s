PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+3]
        2 NEWTABLE                         R0 0 0
        4 RETURN                           R0 1
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R1 0
        7 CALL                             R0 1 1
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K0 ["TabControls"]
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
       27 GETUPVAL                         R3 2
       28 GETTABLEKS                       R3 R3 K0 ["TabControls"]
       30 GETTABLE                         R2 R3 R0
       31 GETTABLEKS                       R2 R2 K8 ["Controls"]
       33 CALL                             R1 1 1
       34 GETUPVAL                         R2 3
       35 GETUPVAL                         R3 4
       36 GETTABLEKS                       R3 R3 K9 ["wrap"]
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
       55 GETUPVAL                         R2 0
       56 GETTABLEKS                       R2 R2 K13 ["Type"]
       58 JUMPIFNOTEQKS                    R2 K14 ["Custom"] ; [+5]
       60 LENGTH                           R2 R1
       61 JUMPIFNOTEQKN                    R2 K15 [0] ; [+2]
       63 GETUPVAL                         R1 7
       64 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["use"]
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
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Contexts"]
       27 GETTABLEKS                       R4 R4 K11 ["RibbonDefinition"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K6 ["Packages"]
       34 GETTABLEKS                       R5 R5 K12 ["StudioFoundation"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R4 K13 ["Util"]
       39 GETTABLEKS                       R5 R5 K14 ["StudioUri"]
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R7 R0 K9 ["Src"]
       45 GETTABLEKS                       R7 R7 K15 ["Types"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K5 [require]
       50 GETTABLEKS                       R8 R0 K9 ["Src"]
       52 GETTABLEKS                       R8 R8 K13 ["Util"]
       54 GETTABLEKS                       R8 R8 K16 ["deepFreeze"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K5 [require]
       59 GETTABLEKS                       R9 R0 K9 ["Src"]
       61 GETTABLEKS                       R9 R9 K13 ["Util"]
       63 GETTABLEKS                       R9 R9 K17 ["addCustomControls"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K5 [require]
       68 GETTABLEKS                       R10 R0 K9 ["Src"]
       70 GETTABLEKS                       R10 R10 K13 ["Util"]
       72 GETTABLEKS                       R10 R10 K18 ["controlsIdentifierToString"]
       74 CALL                             R9 1 1
       75 GETTABLEKS                       R10 R1 K19 ["ContextServices"]
       77 GETTABLEKS                       R10 R10 K20 ["Plugin"]
       79 GETTABLEKS                       R11 R2 K21 ["useContext"]
       81 GETTABLEKS                       R12 R2 K22 ["useMemo"]
       83 DUPTABLE                         R13 K30 [{["Id"] = "AddTools", ["Type"] = "IconButton", ["Enabled"] = True, ["Action"]}]
       84 GETTABLEKS                       R14 R5 K31 ["wrap"]
       86 DUPTABLE                         R15 K39 [{["Category"] = "Actions", ["DataModel"] = "Standalone", ["ItemId"] = "AddTools", ["PluginId"] = "Ribbon", ["PluginType"] = "Standalone"}]
       87 CALL                             R14 1 1
       88 SETTABLEKS                       R14 R13 K29 ["Action"]
       90 MOVE                             R14 R7
       91 NEWTABLE                         R15 0 1
       93 MOVE                             R16 R13
       94 SETLIST                          R15 R16 1 [1]
       96 CALL                             R14 1 1
       97 DUPCLOSURE                       R15 K40 [PROTO_1]
       98 CAPTURE                          VAL R10
       99 CAPTURE                          VAL R11
      100 CAPTURE                          VAL R3
      101 CAPTURE                          VAL R12
      102 CAPTURE                          VAL R9
      103 CAPTURE                          VAL R8
      104 CAPTURE                          VAL R5
      105 CAPTURE                          VAL R14
      106 RETURN                           R15 1
