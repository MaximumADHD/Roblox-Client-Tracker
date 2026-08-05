PROTO_0:
        0 DUPTABLE                         R0 K8 [{"AssetInsert", "Channel", "CreatorStore", "ExecuteLuau", "Instance", "MaterialGen", "MeshGen", "ReadFile"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["AssetInsert"]
        4 GETTABLEKS                       R1 R1 K9 ["createGuestContext"]
        6 LOADNIL                          R2
        7 LOADNIL                          R3
        8 CALL                             R1 2 1
        9 GETTABLEKS                       R1 R1 K10 ["bridge"]
       11 SETTABLEKS                       R1 R0 K0 ["AssetInsert"]
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K1 ["Channel"]
       16 GETTABLEKS                       R1 R1 K9 ["createGuestContext"]
       18 LOADNIL                          R2
       19 LOADNIL                          R3
       20 CALL                             R1 2 1
       21 GETTABLEKS                       R1 R1 K10 ["bridge"]
       23 SETTABLEKS                       R1 R0 K1 ["Channel"]
       25 GETUPVAL                         R1 0
       26 GETTABLEKS                       R1 R1 K2 ["CreatorStore"]
       28 GETTABLEKS                       R1 R1 K9 ["createGuestContext"]
       30 LOADNIL                          R2
       31 LOADNIL                          R3
       32 CALL                             R1 2 1
       33 GETTABLEKS                       R1 R1 K10 ["bridge"]
       35 SETTABLEKS                       R1 R0 K2 ["CreatorStore"]
       37 GETUPVAL                         R1 0
       38 GETTABLEKS                       R1 R1 K3 ["ExecuteLuau"]
       40 GETTABLEKS                       R1 R1 K9 ["createGuestContext"]
       42 LOADNIL                          R2
       43 LOADNIL                          R3
       44 CALL                             R1 2 1
       45 GETTABLEKS                       R1 R1 K10 ["bridge"]
       47 SETTABLEKS                       R1 R0 K3 ["ExecuteLuau"]
       49 GETUPVAL                         R1 0
       50 GETTABLEKS                       R1 R1 K4 ["Instance"]
       52 GETTABLEKS                       R1 R1 K9 ["createGuestContext"]
       54 LOADNIL                          R2
       55 LOADNIL                          R3
       56 CALL                             R1 2 1
       57 GETTABLEKS                       R1 R1 K10 ["bridge"]
       59 SETTABLEKS                       R1 R0 K4 ["Instance"]
       61 GETUPVAL                         R1 0
       62 GETTABLEKS                       R1 R1 K5 ["MaterialGen"]
       64 GETTABLEKS                       R1 R1 K9 ["createGuestContext"]
       66 LOADNIL                          R2
       67 LOADNIL                          R3
       68 CALL                             R1 2 1
       69 GETTABLEKS                       R1 R1 K10 ["bridge"]
       71 SETTABLEKS                       R1 R0 K5 ["MaterialGen"]
       73 GETUPVAL                         R1 0
       74 GETTABLEKS                       R1 R1 K6 ["MeshGen"]
       76 GETTABLEKS                       R1 R1 K9 ["createGuestContext"]
       78 LOADNIL                          R2
       79 LOADNIL                          R3
       80 CALL                             R1 2 1
       81 GETTABLEKS                       R1 R1 K10 ["bridge"]
       83 SETTABLEKS                       R1 R0 K6 ["MeshGen"]
       85 GETUPVAL                         R1 0
       86 GETTABLEKS                       R1 R1 K7 ["ReadFile"]
       88 GETTABLEKS                       R1 R1 K9 ["createGuestContext"]
       90 LOADNIL                          R2
       91 LOADNIL                          R3
       92 CALL                             R1 2 1
       93 GETTABLEKS                       R1 R1 K10 ["bridge"]
       95 SETTABLEKS                       R1 R0 K7 ["ReadFile"]
       97 RETURN                           R0 1

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
       13 LOADN                            R3 7
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
       36 GETTABLEKS                       R8 R1 K10 ["Channel"]
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
       51 GETTABLEKS                       R8 R1 K11 ["CreatorStore"]
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
       66 GETTABLEKS                       R8 R1 K12 ["ExecuteLuau"]
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
       81 GETTABLEKS                       R8 R1 K13 ["Instance"]
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
       96 GETTABLEKS                       R8 R1 K14 ["MaterialGen"]
       98 SETTABLEKS                       R8 R7 K5 ["value"]
      100 CALL                             R5 2 -1
      101 FASTCALL                         TABLE_INSERT ; [+2]
      102 GETIMPORT                        R3 K9 [table.insert]
      104 CALL                             R3 -1 0
      105 MOVE                             R4 R2
      106 GETUPVAL                         R5 1
      107 GETUPVAL                         R6 8
      108 GETTABLEKS                       R6 R6 K4 ["Provider"]
      110 DUPTABLE                         R7 K6 [{"value"}]
      111 GETTABLEKS                       R8 R1 K15 ["MeshGen"]
      113 SETTABLEKS                       R8 R7 K5 ["value"]
      115 CALL                             R5 2 -1
      116 FASTCALL                         TABLE_INSERT ; [+2]
      117 GETIMPORT                        R3 K9 [table.insert]
      119 CALL                             R3 -1 0
      120 MOVE                             R4 R2
      121 GETUPVAL                         R5 1
      122 GETUPVAL                         R6 9
      123 GETTABLEKS                       R6 R6 K4 ["Provider"]
      125 DUPTABLE                         R7 K6 [{"value"}]
      126 GETTABLEKS                       R8 R1 K16 ["ReadFile"]
      128 SETTABLEKS                       R8 R7 K5 ["value"]
      130 CALL                             R5 2 -1
      131 FASTCALL                         TABLE_INSERT ; [+2]
      132 GETIMPORT                        R3 K9 [table.insert]
      134 CALL                             R3 -1 0
      135 RETURN                           R2 1

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
       31 GETTABLEKS                       R4 R4 K11 ["ChannelActionsContext"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K6 ["Components"]
       38 GETTABLEKS                       R5 R5 K7 ["Contexts"]
       40 GETTABLEKS                       R5 R5 K8 ["Actions"]
       42 GETTABLEKS                       R5 R5 K12 ["CreatorStoreActionsContext"]
       44 CALL                             R4 1 1
       45 GETIMPORT                        R5 K5 [require]
       47 GETTABLEKS                       R6 R0 K6 ["Components"]
       49 GETTABLEKS                       R6 R6 K7 ["Contexts"]
       51 GETTABLEKS                       R6 R6 K8 ["Actions"]
       53 GETTABLEKS                       R6 R6 K13 ["ExecuteLuauActionsContext"]
       55 CALL                             R5 1 1
       56 GETIMPORT                        R6 K5 [require]
       58 GETTABLEKS                       R7 R0 K6 ["Components"]
       60 GETTABLEKS                       R7 R7 K7 ["Contexts"]
       62 GETTABLEKS                       R7 R7 K8 ["Actions"]
       64 GETTABLEKS                       R7 R7 K14 ["InstanceActionsContext"]
       66 CALL                             R6 1 1
       67 GETIMPORT                        R7 K5 [require]
       69 GETTABLEKS                       R8 R0 K6 ["Components"]
       71 GETTABLEKS                       R8 R8 K7 ["Contexts"]
       73 GETTABLEKS                       R8 R8 K8 ["Actions"]
       75 GETTABLEKS                       R8 R8 K15 ["MaterialGenActionsContext"]
       77 CALL                             R7 1 1
       78 GETIMPORT                        R8 K5 [require]
       80 GETTABLEKS                       R9 R0 K6 ["Components"]
       82 GETTABLEKS                       R9 R9 K7 ["Contexts"]
       84 GETTABLEKS                       R9 R9 K8 ["Actions"]
       86 GETTABLEKS                       R9 R9 K16 ["MeshGenActionsContext"]
       88 CALL                             R8 1 1
       89 GETIMPORT                        R9 K5 [require]
       91 GETTABLEKS                       R10 R0 K17 ["Parent"]
       93 GETTABLEKS                       R10 R10 K18 ["React"]
       95 CALL                             R9 1 1
       96 GETIMPORT                        R10 K5 [require]
       98 GETTABLEKS                       R11 R0 K6 ["Components"]
      100 GETTABLEKS                       R11 R11 K7 ["Contexts"]
      102 GETTABLEKS                       R11 R11 K8 ["Actions"]
      104 GETTABLEKS                       R11 R11 K19 ["ReadFileActionsContext"]
      106 CALL                             R10 1 1
      107 GETTABLEKS                       R11 R9 K20 ["createElement"]
      109 DUPCLOSURE                       R12 K21 [PROTO_1]
      110 CAPTURE                          VAL R9
      111 CAPTURE                          VAL R11
      112 CAPTURE                          VAL R1
      113 CAPTURE                          VAL R3
      114 CAPTURE                          VAL R4
      115 CAPTURE                          VAL R5
      116 CAPTURE                          VAL R6
      117 CAPTURE                          VAL R7
      118 CAPTURE                          VAL R8
      119 CAPTURE                          VAL R10
      120 RETURN                           R12 1
