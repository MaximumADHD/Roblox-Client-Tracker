PROTO_0:
        0 DUPTABLE                         R0 K6 [{"AssetInsert", "CreatorStore", "ExecuteLuau", "Instance", "MaterialGen", "ReadFile"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["AssetInsert"]
        4 GETTABLEKS                       R1 R1 K7 ["createGuestContext"]
        6 LOADNIL                          R2
        7 LOADNIL                          R3
        8 CALL                             R1 2 1
        9 GETTABLEKS                       R1 R1 K8 ["bridge"]
       11 SETTABLEKS                       R1 R0 K0 ["AssetInsert"]
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K1 ["CreatorStore"]
       16 GETTABLEKS                       R1 R1 K7 ["createGuestContext"]
       18 LOADNIL                          R2
       19 LOADNIL                          R3
       20 CALL                             R1 2 1
       21 GETTABLEKS                       R1 R1 K8 ["bridge"]
       23 SETTABLEKS                       R1 R0 K1 ["CreatorStore"]
       25 GETUPVAL                         R1 0
       26 GETTABLEKS                       R1 R1 K2 ["ExecuteLuau"]
       28 GETTABLEKS                       R1 R1 K7 ["createGuestContext"]
       30 LOADNIL                          R2
       31 LOADNIL                          R3
       32 CALL                             R1 2 1
       33 GETTABLEKS                       R1 R1 K8 ["bridge"]
       35 SETTABLEKS                       R1 R0 K2 ["ExecuteLuau"]
       37 GETUPVAL                         R1 0
       38 GETTABLEKS                       R1 R1 K3 ["Instance"]
       40 GETTABLEKS                       R1 R1 K7 ["createGuestContext"]
       42 LOADNIL                          R2
       43 LOADNIL                          R3
       44 CALL                             R1 2 1
       45 GETTABLEKS                       R1 R1 K8 ["bridge"]
       47 SETTABLEKS                       R1 R0 K3 ["Instance"]
       49 GETUPVAL                         R1 0
       50 GETTABLEKS                       R1 R1 K4 ["MaterialGen"]
       52 GETTABLEKS                       R1 R1 K7 ["createGuestContext"]
       54 LOADNIL                          R2
       55 LOADNIL                          R3
       56 CALL                             R1 2 1
       57 GETTABLEKS                       R1 R1 K8 ["bridge"]
       59 SETTABLEKS                       R1 R0 K4 ["MaterialGen"]
       61 GETUPVAL                         R1 0
       62 GETTABLEKS                       R1 R1 K5 ["ReadFile"]
       64 GETTABLEKS                       R1 R1 K7 ["createGuestContext"]
       66 LOADNIL                          R2
       67 LOADNIL                          R3
       68 CALL                             R1 2 1
       69 GETTABLEKS                       R1 R1 K8 ["bridge"]
       71 SETTABLEKS                       R1 R0 K5 ["ReadFile"]
       73 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 NEWTABLE                         R3 0 1
        7 MOVE                             R4 R0
        8 SETLIST                          R3 R4 1 [1]
       10 CALL                             R1 2 1
       11 GETIMPORT                        R2 K3 [table.create]
       13 LOADN                            R3 6
       14 CALL                             R2 1 1
       15 MOVE                             R4 R2
       16 GETUPVAL                         R5 1
       17 GETUPVAL                         R6 2
       18 GETTABLEKS                       R6 R6 K4 ["Provider"]
       20 DUPTABLE                         R7 K6 [{"value"}]
       21 GETTABLEKS                       R8 R1 K7 ["AssetInsert"]
       23 SETTABLEKS                       R8 R7 K5 ["value"]
       25 CALL                             R5 2 -1
       26 FASTCALL                         TABLE_INSERT ; [+2]
       27 GETIMPORT                        R3 K9 [table.insert]
       29 CALL                             R3 -1 0
       30 MOVE                             R4 R2
       31 GETUPVAL                         R5 1
       32 GETUPVAL                         R6 3
       33 GETTABLEKS                       R6 R6 K4 ["Provider"]
       35 DUPTABLE                         R7 K6 [{"value"}]
       36 GETTABLEKS                       R8 R1 K10 ["CreatorStore"]
       38 SETTABLEKS                       R8 R7 K5 ["value"]
       40 CALL                             R5 2 -1
       41 FASTCALL                         TABLE_INSERT ; [+2]
       42 GETIMPORT                        R3 K9 [table.insert]
       44 CALL                             R3 -1 0
       45 MOVE                             R4 R2
       46 GETUPVAL                         R5 1
       47 GETUPVAL                         R6 4
       48 GETTABLEKS                       R6 R6 K4 ["Provider"]
       50 DUPTABLE                         R7 K6 [{"value"}]
       51 GETTABLEKS                       R8 R1 K11 ["ExecuteLuau"]
       53 SETTABLEKS                       R8 R7 K5 ["value"]
       55 CALL                             R5 2 -1
       56 FASTCALL                         TABLE_INSERT ; [+2]
       57 GETIMPORT                        R3 K9 [table.insert]
       59 CALL                             R3 -1 0
       60 MOVE                             R4 R2
       61 GETUPVAL                         R5 1
       62 GETUPVAL                         R6 5
       63 GETTABLEKS                       R6 R6 K4 ["Provider"]
       65 DUPTABLE                         R7 K6 [{"value"}]
       66 GETTABLEKS                       R8 R1 K12 ["Instance"]
       68 SETTABLEKS                       R8 R7 K5 ["value"]
       70 CALL                             R5 2 -1
       71 FASTCALL                         TABLE_INSERT ; [+2]
       72 GETIMPORT                        R3 K9 [table.insert]
       74 CALL                             R3 -1 0
       75 MOVE                             R4 R2
       76 GETUPVAL                         R5 1
       77 GETUPVAL                         R6 6
       78 GETTABLEKS                       R6 R6 K4 ["Provider"]
       80 DUPTABLE                         R7 K6 [{"value"}]
       81 GETTABLEKS                       R8 R1 K13 ["MaterialGen"]
       83 SETTABLEKS                       R8 R7 K5 ["value"]
       85 CALL                             R5 2 -1
       86 FASTCALL                         TABLE_INSERT ; [+2]
       87 GETIMPORT                        R3 K9 [table.insert]
       89 CALL                             R3 -1 0
       90 MOVE                             R4 R2
       91 GETUPVAL                         R5 1
       92 GETUPVAL                         R6 7
       93 GETTABLEKS                       R6 R6 K4 ["Provider"]
       95 DUPTABLE                         R7 K6 [{"value"}]
       96 GETTABLEKS                       R8 R1 K14 ["ReadFile"]
       98 SETTABLEKS                       R8 R7 K5 ["value"]
      100 CALL                             R5 2 -1
      101 FASTCALL                         TABLE_INSERT ; [+2]
      102 GETIMPORT                        R3 K9 [table.insert]
      104 CALL                             R3 -1 0
      105 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R2 K8 ["Actions"]
       15 GETTABLEKS                       R2 R2 K9 ["AssetInsertActionsContext"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K10 ["Bridges"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Components"]
       27 GETTABLEKS                       R4 R4 K7 ["Contexts"]
       29 GETTABLEKS                       R4 R4 K8 ["Actions"]
       31 GETTABLEKS                       R4 R4 K11 ["CreatorStoreActionsContext"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K6 ["Components"]
       38 GETTABLEKS                       R5 R5 K7 ["Contexts"]
       40 GETTABLEKS                       R5 R5 K8 ["Actions"]
       42 GETTABLEKS                       R5 R5 K12 ["ExecuteLuauActionsContext"]
       44 CALL                             R4 1 1
       45 GETIMPORT                        R5 K5 [require]
       47 GETTABLEKS                       R6 R0 K6 ["Components"]
       49 GETTABLEKS                       R6 R6 K7 ["Contexts"]
       51 GETTABLEKS                       R6 R6 K8 ["Actions"]
       53 GETTABLEKS                       R6 R6 K13 ["InstanceActionsContext"]
       55 CALL                             R5 1 1
       56 GETIMPORT                        R6 K5 [require]
       58 GETTABLEKS                       R7 R0 K6 ["Components"]
       60 GETTABLEKS                       R7 R7 K7 ["Contexts"]
       62 GETTABLEKS                       R7 R7 K8 ["Actions"]
       64 GETTABLEKS                       R7 R7 K14 ["MaterialGenActionsContext"]
       66 CALL                             R6 1 1
       67 GETIMPORT                        R7 K5 [require]
       69 GETTABLEKS                       R8 R0 K15 ["Parent"]
       71 GETTABLEKS                       R8 R8 K16 ["React"]
       73 CALL                             R7 1 1
       74 GETIMPORT                        R8 K5 [require]
       76 GETTABLEKS                       R9 R0 K6 ["Components"]
       78 GETTABLEKS                       R9 R9 K7 ["Contexts"]
       80 GETTABLEKS                       R9 R9 K8 ["Actions"]
       82 GETTABLEKS                       R9 R9 K17 ["ReadFileActionsContext"]
       84 CALL                             R8 1 1
       85 GETTABLEKS                       R9 R7 K18 ["createElement"]
       87 DUPCLOSURE                       R10 K19 [PROTO_1]
       88 CAPTURE                          VAL R7
       89 CAPTURE                          VAL R9
       90 CAPTURE                          VAL R1
       91 CAPTURE                          VAL R3
       92 CAPTURE                          VAL R4
       93 CAPTURE                          VAL R5
       94 CAPTURE                          VAL R6
       95 CAPTURE                          VAL R8
       96 RETURN                           R10 1
