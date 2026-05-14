PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Filter_SaveType"]
        2 GETUPVAL                         R3 1
        3 NAMECALL                         R0 R0 K1 ["SetSetting"]
        5 CALL                             R0 3 0
        6 GETUPVAL                         R0 0
        7 LOADK                            R2 K2 ["Filter_IsPublished"]
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
        6 RETURN                           R0 0

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
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K4 ["useState"]
       14 LOADK                            R7 K6 ["UniverseId"]
       15 NAMECALL                         R5 R1 K7 ["GetItem"]
       17 CALL                             R5 2 1
       18 ORK                              R4 R5 K5 [0]
       19 CALL                             R3 1 2
       20 GETUPVAL                         R5 1
       21 GETTABLEKS                       R5 R5 K4 ["useState"]
       23 MOVE                             R6 R3
       24 CALL                             R5 1 2
       25 GETUPVAL                         R7 1
       26 GETTABLEKS                       R7 R7 K4 ["useState"]
       28 LOADK                            R11 K8 ["PlaceId"]
       29 NAMECALL                         R9 R1 K7 ["GetItem"]
       31 CALL                             R9 2 1
       32 ORK                              R8 R9 K5 [0]
       33 CALL                             R7 1 2
       34 GETUPVAL                         R9 1
       35 GETTABLEKS                       R9 R9 K4 ["useState"]
       37 MOVE                             R10 R7
       38 CALL                             R9 1 2
       39 GETUPVAL                         R11 1
       40 GETTABLEKS                       R11 R11 K4 ["useState"]
       42 LOADK                            R14 K9 ["Filter_SaveType"]
       43 NAMECALL                         R12 R1 K10 ["GetSetting"]
       45 CALL                             R12 2 -1
       46 CALL                             R11 -1 2
       47 GETUPVAL                         R13 1
       48 GETTABLEKS                       R13 R13 K4 ["useState"]
       50 LOADK                            R16 K11 ["Filter_IsPublished"]
       51 NAMECALL                         R14 R1 K10 ["GetSetting"]
       53 CALL                             R14 2 -1
       54 CALL                             R13 -1 2
       55 GETUPVAL                         R15 1
       56 GETTABLEKS                       R15 R15 K4 ["useState"]
       58 LOADK                            R18 K12 ["Filter_HasNotes"]
       59 NAMECALL                         R16 R1 K10 ["GetSetting"]
       61 CALL                             R16 2 -1
       62 CALL                             R15 -1 2
       63 GETUPVAL                         R17 1
       64 GETTABLEKS                       R17 R17 K4 ["useState"]
       66 LOADK                            R18 K13 ["None"]
       67 CALL                             R17 1 2
       68 LOADK                            R21 K8 ["PlaceId"]
       69 MOVE                             R22 R8
       70 NAMECALL                         R19 R1 K14 ["OnSetItem"]
       72 CALL                             R19 3 0
       73 LOADK                            R21 K8 ["PlaceId"]
       74 MOVE                             R22 R10
       75 NAMECALL                         R19 R1 K14 ["OnSetItem"]
       77 CALL                             R19 3 0
       78 LOADK                            R21 K6 ["UniverseId"]
       79 MOVE                             R22 R4
       80 NAMECALL                         R19 R1 K14 ["OnSetItem"]
       82 CALL                             R19 3 0
       83 LOADK                            R21 K6 ["UniverseId"]
       84 MOVE                             R22 R6
       85 NAMECALL                         R19 R1 K14 ["OnSetItem"]
       87 CALL                             R19 3 0
       88 GETUPVAL                         R19 1
       89 GETTABLEKS                       R19 R19 K15 ["useEffect"]
       91 NEWCLOSURE                       R20 P0
       92 CAPTURE                          VAL R1
       93 CAPTURE                          VAL R11
       94 CAPTURE                          VAL R13
       95 CAPTURE                          VAL R15
       96 NEWTABLE                         R21 0 3
       98 MOVE                             R22 R11
       99 MOVE                             R23 R13
      100 MOVE                             R24 R15
      101 SETLIST                          R21 R22 3 [1]
      103 CALL                             R19 2 0
      104 GETUPVAL                         R19 1
      105 GETTABLEKS                       R19 R19 K15 ["useEffect"]
      107 NEWCLOSURE                       R20 P1
      108 CAPTURE                          VAL R2
      109 CAPTURE                          UPVAL U2
      110 CAPTURE                          VAL R9
      111 NEWTABLE                         R21 0 1
      113 MOVE                             R22 R9
      114 SETLIST                          R21 R22 1 [1]
      116 CALL                             R19 2 0
      117 GETUPVAL                         R19 3
      118 GETUPVAL                         R22 2
      119 NAMECALL                         R20 R2 K16 ["BindAsync"]
      121 CALL                             R20 2 1
      122 NEWCLOSURE                       R21 P2
      123 CAPTURE                          VAL R10
      124 NEWTABLE                         R22 0 0
      126 CALL                             R19 3 0
      127 GETUPVAL                         R19 3
      128 GETUPVAL                         R22 4
      129 NAMECALL                         R20 R2 K16 ["BindAsync"]
      131 CALL                             R20 2 1
      132 NEWCLOSURE                       R21 P3
      133 CAPTURE                          VAL R18
      134 NEWTABLE                         R22 0 0
      136 CALL                             R19 3 0
      137 GETUPVAL                         R19 1
      138 GETTABLEKS                       R19 R19 K17 ["createElement"]
      140 GETUPVAL                         R20 5
      141 GETTABLEKS                       R20 R20 K18 ["Provider"]
      143 DUPTABLE                         R21 K20 [{"value"}]
      144 DUPTABLE                         R22 K34 [{"publishInProgress", "sessionPlaceId", "sessionUniverseId", "placeId", "setPlaceId", "universeId", "setUniverseId", "saveType", "setSaveType", "isPublished", "setIsPublished", "hasNotes", "setHasNotes"}]
      145 SETTABLEKS                       R17 R22 K21 ["publishInProgress"]
      147 SETTABLEKS                       R7 R22 K22 ["sessionPlaceId"]
      149 SETTABLEKS                       R3 R22 K23 ["sessionUniverseId"]
      151 SETTABLEKS                       R9 R22 K24 ["placeId"]
      153 SETTABLEKS                       R10 R22 K25 ["setPlaceId"]
      155 SETTABLEKS                       R5 R22 K26 ["universeId"]
      157 SETTABLEKS                       R6 R22 K27 ["setUniverseId"]
      159 SETTABLEKS                       R11 R22 K28 ["saveType"]
      161 SETTABLEKS                       R12 R22 K29 ["setSaveType"]
      163 SETTABLEKS                       R13 R22 K30 ["isPublished"]
      165 SETTABLEKS                       R14 R22 K31 ["setIsPublished"]
      167 SETTABLEKS                       R15 R22 K32 ["hasNotes"]
      169 SETTABLEKS                       R16 R22 K33 ["setHasNotes"]
      171 SETTABLEKS                       R22 R21 K19 ["value"]
      173 GETTABLEKS                       R22 R0 K35 ["children"]
      175 CALL                             R19 3 -1
      176 RETURN                           R19 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceVersionHistory"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R0 K10 ["Src"]
       30 GETTABLEKS                       R4 R4 K11 ["Contexts"]
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R6 R4 K12 ["SettingContext"]
       36 CALL                             R5 1 1
       37 GETTABLEKS                       R6 R3 K13 ["ContextServices"]
       39 GETTABLEKS                       R6 R6 K14 ["Plugin"]
       41 GETTABLEKS                       R7 R2 K15 ["useEventConnection"]
       43 GETIMPORT                        R8 K5 [require]
       45 GETTABLEKS                       R9 R0 K10 ["Src"]
       47 GETTABLEKS                       R9 R9 K16 ["Types"]
       49 CALL                             R8 1 1
       50 DUPTABLE                         R9 K21 [{"DataModel", "PluginId", "Category", "ItemId"}]
       51 LOADK                            R10 K22 ["Standalone"]
       52 SETTABLEKS                       R10 R9 K17 ["DataModel"]
       54 LOADK                            R10 K2 ["PlaceVersionHistory"]
       55 SETTABLEKS                       R10 R9 K18 ["PluginId"]
       57 LOADK                            R10 K23 ["Settings"]
       58 SETTABLEKS                       R10 R9 K19 ["Category"]
       60 LOADK                            R10 K24 ["PlaceId"]
       61 SETTABLEKS                       R10 R9 K20 ["ItemId"]
       63 DUPTABLE                         R10 K21 [{"DataModel", "PluginId", "Category", "ItemId"}]
       64 LOADK                            R11 K22 ["Standalone"]
       65 SETTABLEKS                       R11 R10 K17 ["DataModel"]
       67 LOADK                            R11 K2 ["PlaceVersionHistory"]
       68 SETTABLEKS                       R11 R10 K18 ["PluginId"]
       70 LOADK                            R11 K23 ["Settings"]
       71 SETTABLEKS                       R11 R10 K19 ["Category"]
       73 LOADK                            R11 K25 ["PublishInProgress"]
       74 SETTABLEKS                       R11 R10 K20 ["ItemId"]
       76 DUPCLOSURE                       R11 K26 [PROTO_4]
       77 CAPTURE                          VAL R6
       78 CAPTURE                          VAL R1
       79 CAPTURE                          VAL R9
       80 CAPTURE                          VAL R7
       81 CAPTURE                          VAL R10
       82 CAPTURE                          VAL R5
       83 RETURN                           R11 1
