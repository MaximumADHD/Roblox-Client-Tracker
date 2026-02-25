PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Filter_SaveType"]
        2 GETUPVAL                         R3 1
        3 NAMECALL                         R0 R0 K1 ["SetSetting"]
        5 CALL                             R0 3 0
        6 GETUPVAL                         R0 0
        7 LOADK                            R2 K2 ["Filter_Published"]
        8 GETUPVAL                         R3 2
        9 NAMECALL                         R0 R0 K1 ["SetSetting"]
       11 CALL                             R0 3 0
       12 GETUPVAL                         R0 0
       13 LOADK                            R2 K3 ["Filter_HasNotes"]
       14 GETUPVAL                         R3 3
       15 NAMECALL                         R0 R0 K1 ["SetSetting"]
       17 CALL                             R0 3 0
       18 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["SetNumberAsync"]
        5 CALL                             R0 3 0
        6 GETUPVAL                         R0 0
        7 GETUPVAL                         R2 3
        8 GETUPVAL                         R3 4
        9 NAMECALL                         R0 R0 K0 ["SetNumberAsync"]
       11 CALL                             R0 3 0
       12 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Value"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Value"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 NAMECALL                         R1 R1 K1 ["get"]
        6 CALL                             R1 1 1
        7 LOADK                            R4 K2 ["Settings"]
        8 NAMECALL                         R2 R1 K3 ["GetPluginComponent"]
       10 CALL                             R2 2 1
       11 NEWTABLE                         R6 0 1
       13 GETUPVAL                         R7 1
       14 SETLIST                          R6 R7 1 [1]
       16 NAMECALL                         R4 R2 K4 ["GetAsync"]
       18 CALL                             R4 2 1
       19 GETTABLEN                        R3 R4 1
       20 GETUPVAL                         R5 2
       21 GETTABLEKS                       R4 R5 K5 ["useState"]
       23 JUMPIFNOT                        R3 ; [+3]
       24 GETTABLEKS                       R5 R3 K6 ["Value"]
       26 JUMP                             ; [+1]
       27 LOADN                            R5 0
       28 CALL                             R4 1 2
       29 NEWTABLE                         R9 0 1
       31 GETUPVAL                         R10 3
       32 SETLIST                          R9 R10 1 [1]
       34 NAMECALL                         R7 R2 K4 ["GetAsync"]
       36 CALL                             R7 2 1
       37 GETTABLEN                        R6 R7 1
       38 GETUPVAL                         R8 2
       39 GETTABLEKS                       R7 R8 K5 ["useState"]
       41 JUMPIFNOT                        R6 ; [+3]
       42 GETTABLEKS                       R8 R6 K6 ["Value"]
       44 JUMP                             ; [+1]
       45 LOADN                            R8 0
       46 CALL                             R7 1 2
       47 LOADK                            R11 K7 ["Filter_SaveType"]
       48 NAMECALL                         R9 R1 K8 ["GetSetting"]
       50 CALL                             R9 2 1
       51 GETUPVAL                         R11 2
       52 GETTABLEKS                       R10 R11 K5 ["useState"]
       54 MOVE                             R11 R9
       55 CALL                             R10 1 2
       56 LOADK                            R14 K9 ["Filter_Published"]
       57 NAMECALL                         R12 R1 K8 ["GetSetting"]
       59 CALL                             R12 2 1
       60 GETUPVAL                         R14 2
       61 GETTABLEKS                       R13 R14 K5 ["useState"]
       63 MOVE                             R14 R12
       64 CALL                             R13 1 2
       65 LOADK                            R17 K10 ["Filter_HasNotes"]
       66 NAMECALL                         R15 R1 K8 ["GetSetting"]
       68 CALL                             R15 2 1
       69 GETUPVAL                         R17 2
       70 GETTABLEKS                       R16 R17 K5 ["useState"]
       72 MOVE                             R17 R15
       73 CALL                             R16 1 2
       74 GETUPVAL                         R19 2
       75 GETTABLEKS                       R18 R19 K11 ["useEffect"]
       77 NEWCLOSURE                       R19 P0
       78 CAPTURE                          VAL R1
       79 CAPTURE                          VAL R10
       80 CAPTURE                          VAL R13
       81 CAPTURE                          VAL R16
       82 NEWTABLE                         R20 0 3
       84 MOVE                             R21 R10
       85 MOVE                             R22 R13
       86 MOVE                             R23 R16
       87 SETLIST                          R20 R21 3 [1]
       89 CALL                             R18 2 0
       90 GETUPVAL                         R19 2
       91 GETTABLEKS                       R18 R19 K11 ["useEffect"]
       93 NEWCLOSURE                       R19 P1
       94 CAPTURE                          VAL R2
       95 CAPTURE                          UPVAL U1
       96 CAPTURE                          VAL R4
       97 CAPTURE                          UPVAL U3
       98 CAPTURE                          VAL R7
       99 NEWTABLE                         R20 0 2
      101 MOVE                             R21 R4
      102 MOVE                             R22 R7
      103 SETLIST                          R20 R21 2 [1]
      105 CALL                             R18 2 0
      106 GETUPVAL                         R18 4
      107 GETUPVAL                         R21 1
      108 NAMECALL                         R19 R2 K12 ["BindAsync"]
      110 CALL                             R19 2 1
      111 NEWCLOSURE                       R20 P2
      112 CAPTURE                          VAL R5
      113 NEWTABLE                         R21 0 0
      115 CALL                             R18 3 0
      116 GETUPVAL                         R18 4
      117 GETUPVAL                         R21 3
      118 NAMECALL                         R19 R2 K12 ["BindAsync"]
      120 CALL                             R19 2 1
      121 NEWCLOSURE                       R20 P3
      122 CAPTURE                          VAL R8
      123 NEWTABLE                         R21 0 0
      125 CALL                             R18 3 0
      126 GETUPVAL                         R19 2
      127 GETTABLEKS                       R18 R19 K13 ["createElement"]
      129 GETUPVAL                         R20 5
      130 GETTABLEKS                       R19 R20 K14 ["Provider"]
      132 DUPTABLE                         R20 K16 [{"value"}]
      133 DUPTABLE                         R21 K27 [{"placeId", "setPlaceId", "universeId", "setUniverseId", "saveType", "setSaveType", "published", "setPublished", "hasNotes", "setHasNotes"}]
      134 SETTABLEKS                       R7 R21 K17 ["placeId"]
      136 SETTABLEKS                       R8 R21 K18 ["setPlaceId"]
      138 SETTABLEKS                       R4 R21 K19 ["universeId"]
      140 SETTABLEKS                       R5 R21 K20 ["setUniverseId"]
      142 SETTABLEKS                       R10 R21 K21 ["saveType"]
      144 SETTABLEKS                       R11 R21 K22 ["setSaveType"]
      146 SETTABLEKS                       R13 R21 K23 ["published"]
      148 SETTABLEKS                       R14 R21 K24 ["setPublished"]
      150 SETTABLEKS                       R16 R21 K25 ["hasNotes"]
      152 SETTABLEKS                       R17 R21 K26 ["setHasNotes"]
      154 SETTABLEKS                       R21 R20 K15 ["value"]
      156 GETTABLEKS                       R21 R0 K28 ["children"]
      158 CALL                             R18 3 -1
      159 RETURN                           R18 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceVersionHistory"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R5 R0 K10 ["Src"]
       30 GETTABLEKS                       R4 R5 K11 ["Contexts"]
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R6 R4 K12 ["SettingContext"]
       36 CALL                             R5 1 1
       37 GETTABLEKS                       R7 R3 K13 ["ContextServices"]
       39 GETTABLEKS                       R6 R7 K14 ["Plugin"]
       41 GETTABLEKS                       R7 R2 K15 ["useEventConnection"]
       43 GETIMPORT                        R8 K5 [require]
       45 GETTABLEKS                       R10 R0 K10 ["Src"]
       47 GETTABLEKS                       R9 R10 K16 ["Types"]
       49 CALL                             R8 1 1
       50 DUPTABLE                         R9 K21 [{"DataModel", "PluginId", "Category", "ItemId"}]
       51 LOADK                            R10 K22 ["Standalone"]
       52 SETTABLEKS                       R10 R9 K17 ["DataModel"]
       54 LOADK                            R10 K2 ["PlaceVersionHistory"]
       55 SETTABLEKS                       R10 R9 K18 ["PluginId"]
       57 LOADK                            R10 K23 ["Settings"]
       58 SETTABLEKS                       R10 R9 K19 ["Category"]
       60 LOADK                            R10 K24 ["UniverseId"]
       61 SETTABLEKS                       R10 R9 K20 ["ItemId"]
       63 DUPTABLE                         R10 K21 [{"DataModel", "PluginId", "Category", "ItemId"}]
       64 LOADK                            R11 K22 ["Standalone"]
       65 SETTABLEKS                       R11 R10 K17 ["DataModel"]
       67 LOADK                            R11 K2 ["PlaceVersionHistory"]
       68 SETTABLEKS                       R11 R10 K18 ["PluginId"]
       70 LOADK                            R11 K23 ["Settings"]
       71 SETTABLEKS                       R11 R10 K19 ["Category"]
       73 LOADK                            R11 K25 ["PlaceId"]
       74 SETTABLEKS                       R11 R10 K20 ["ItemId"]
       76 DUPCLOSURE                       R11 K26 [PROTO_4]
       77 CAPTURE                          VAL R6
       78 CAPTURE                          VAL R9
       79 CAPTURE                          VAL R1
       80 CAPTURE                          VAL R10
       81 CAPTURE                          VAL R7
       82 CAPTURE                          VAL R5
       83 RETURN                           R11 1
