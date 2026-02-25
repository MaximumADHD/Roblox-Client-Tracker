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
        1 GETTABLEKS                       R2 R0 K0 ["Value"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Value"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Value"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_7:
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
       47 NEWTABLE                         R12 0 1
       49 GETUPVAL                         R13 4
       50 SETLIST                          R12 R13 1 [1]
       52 NAMECALL                         R10 R2 K4 ["GetAsync"]
       54 CALL                             R10 2 1
       55 GETTABLEN                        R9 R10 1
       56 GETUPVAL                         R11 2
       57 GETTABLEKS                       R10 R11 K5 ["useState"]
       59 JUMPIFNOT                        R9 ; [+3]
       60 GETTABLEKS                       R11 R9 K6 ["Value"]
       62 JUMP                             ; [+1]
       63 LOADN                            R11 0
       64 CALL                             R10 1 2
       65 NEWTABLE                         R15 0 1
       67 GETUPVAL                         R16 5
       68 SETLIST                          R15 R16 1 [1]
       70 NAMECALL                         R13 R2 K4 ["GetAsync"]
       72 CALL                             R13 2 1
       73 GETTABLEN                        R12 R13 1
       74 GETUPVAL                         R14 2
       75 GETTABLEKS                       R13 R14 K5 ["useState"]
       77 JUMPIFNOT                        R12 ; [+3]
       78 GETTABLEKS                       R14 R12 K6 ["Value"]
       80 JUMP                             ; [+1]
       81 LOADN                            R14 0
       82 CALL                             R13 1 2
       83 NEWTABLE                         R18 0 1
       85 GETUPVAL                         R19 6
       86 SETLIST                          R18 R19 1 [1]
       88 NAMECALL                         R16 R2 K4 ["GetAsync"]
       90 CALL                             R16 2 1
       91 GETTABLEN                        R15 R16 1
       92 GETUPVAL                         R17 2
       93 GETTABLEKS                       R16 R17 K5 ["useState"]
       95 JUMPIFNOT                        R15 ; [+3]
       96 GETTABLEKS                       R17 R15 K6 ["Value"]
       98 JUMP                             ; [+1]
       99 LOADK                            R17 K7 ["None"]
      100 CALL                             R16 1 2
      101 LOADK                            R20 K8 ["Filter_SaveType"]
      102 NAMECALL                         R18 R1 K9 ["GetSetting"]
      104 CALL                             R18 2 1
      105 GETUPVAL                         R20 2
      106 GETTABLEKS                       R19 R20 K5 ["useState"]
      108 MOVE                             R20 R18
      109 CALL                             R19 1 2
      110 LOADK                            R23 K10 ["Filter_IsPublished"]
      111 NAMECALL                         R21 R1 K9 ["GetSetting"]
      113 CALL                             R21 2 1
      114 GETUPVAL                         R23 2
      115 GETTABLEKS                       R22 R23 K5 ["useState"]
      117 MOVE                             R23 R21
      118 CALL                             R22 1 2
      119 LOADK                            R26 K11 ["Filter_HasNotes"]
      120 NAMECALL                         R24 R1 K9 ["GetSetting"]
      122 CALL                             R24 2 1
      123 GETUPVAL                         R26 2
      124 GETTABLEKS                       R25 R26 K5 ["useState"]
      126 MOVE                             R26 R24
      127 CALL                             R25 1 2
      128 GETUPVAL                         R28 2
      129 GETTABLEKS                       R27 R28 K12 ["useEffect"]
      131 NEWCLOSURE                       R28 P0
      132 CAPTURE                          VAL R1
      133 CAPTURE                          VAL R19
      134 CAPTURE                          VAL R22
      135 CAPTURE                          VAL R25
      136 NEWTABLE                         R29 0 3
      138 MOVE                             R30 R19
      139 MOVE                             R31 R22
      140 MOVE                             R32 R25
      141 SETLIST                          R29 R30 3 [1]
      143 CALL                             R27 2 0
      144 GETUPVAL                         R28 2
      145 GETTABLEKS                       R27 R28 K12 ["useEffect"]
      147 NEWCLOSURE                       R28 P1
      148 CAPTURE                          VAL R2
      149 CAPTURE                          UPVAL U1
      150 CAPTURE                          VAL R4
      151 CAPTURE                          UPVAL U3
      152 CAPTURE                          VAL R7
      153 NEWTABLE                         R29 0 2
      155 MOVE                             R30 R4
      156 MOVE                             R31 R7
      157 SETLIST                          R29 R30 2 [1]
      159 CALL                             R27 2 0
      160 GETUPVAL                         R27 7
      161 GETUPVAL                         R30 1
      162 NAMECALL                         R28 R2 K13 ["BindAsync"]
      164 CALL                             R28 2 1
      165 NEWCLOSURE                       R29 P2
      166 CAPTURE                          VAL R5
      167 NEWTABLE                         R30 0 0
      169 CALL                             R27 3 0
      170 GETUPVAL                         R27 7
      171 GETUPVAL                         R30 3
      172 NAMECALL                         R28 R2 K13 ["BindAsync"]
      174 CALL                             R28 2 1
      175 NEWCLOSURE                       R29 P3
      176 CAPTURE                          VAL R8
      177 NEWTABLE                         R30 0 0
      179 CALL                             R27 3 0
      180 GETUPVAL                         R27 7
      181 GETUPVAL                         R30 5
      182 NAMECALL                         R28 R2 K13 ["BindAsync"]
      184 CALL                             R28 2 1
      185 NEWCLOSURE                       R29 P4
      186 CAPTURE                          VAL R14
      187 NEWTABLE                         R30 0 0
      189 CALL                             R27 3 0
      190 GETUPVAL                         R27 7
      191 GETUPVAL                         R30 4
      192 NAMECALL                         R28 R2 K13 ["BindAsync"]
      194 CALL                             R28 2 1
      195 NEWCLOSURE                       R29 P5
      196 CAPTURE                          VAL R11
      197 NEWTABLE                         R30 0 0
      199 CALL                             R27 3 0
      200 GETUPVAL                         R27 7
      201 GETUPVAL                         R30 6
      202 NAMECALL                         R28 R2 K13 ["BindAsync"]
      204 CALL                             R28 2 1
      205 NEWCLOSURE                       R29 P6
      206 CAPTURE                          VAL R17
      207 NEWTABLE                         R30 0 0
      209 CALL                             R27 3 0
      210 GETUPVAL                         R28 2
      211 GETTABLEKS                       R27 R28 K14 ["createElement"]
      213 GETUPVAL                         R29 8
      214 GETTABLEKS                       R28 R29 K15 ["Provider"]
      216 DUPTABLE                         R29 K17 [{"value"}]
      217 DUPTABLE                         R30 K31 [{"publishInProgress", "sessionPlaceId", "sessionUniverseId", "placeId", "setPlaceId", "universeId", "setUniverseId", "saveType", "setSaveType", "isPublished", "setIsPublished", "hasNotes", "setHasNotes"}]
      218 SETTABLEKS                       R16 R30 K18 ["publishInProgress"]
      220 SETTABLEKS                       R10 R30 K19 ["sessionPlaceId"]
      222 SETTABLEKS                       R13 R30 K20 ["sessionUniverseId"]
      224 SETTABLEKS                       R7 R30 K21 ["placeId"]
      226 SETTABLEKS                       R8 R30 K22 ["setPlaceId"]
      228 SETTABLEKS                       R4 R30 K23 ["universeId"]
      230 SETTABLEKS                       R5 R30 K24 ["setUniverseId"]
      232 SETTABLEKS                       R19 R30 K25 ["saveType"]
      234 SETTABLEKS                       R20 R30 K26 ["setSaveType"]
      236 SETTABLEKS                       R22 R30 K27 ["isPublished"]
      238 SETTABLEKS                       R23 R30 K28 ["setIsPublished"]
      240 SETTABLEKS                       R25 R30 K29 ["hasNotes"]
      242 SETTABLEKS                       R26 R30 K30 ["setHasNotes"]
      244 SETTABLEKS                       R30 R29 K16 ["value"]
      246 GETTABLEKS                       R30 R0 K32 ["children"]
      248 CALL                             R27 3 -1
      249 RETURN                           R27 -1

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
       76 DUPTABLE                         R11 K21 [{"DataModel", "PluginId", "Category", "ItemId"}]
       77 LOADK                            R12 K22 ["Standalone"]
       78 SETTABLEKS                       R12 R11 K17 ["DataModel"]
       80 LOADK                            R12 K2 ["PlaceVersionHistory"]
       81 SETTABLEKS                       R12 R11 K18 ["PluginId"]
       83 LOADK                            R12 K23 ["Settings"]
       84 SETTABLEKS                       R12 R11 K19 ["Category"]
       86 LOADK                            R12 K26 ["SessionPlaceId"]
       87 SETTABLEKS                       R12 R11 K20 ["ItemId"]
       89 DUPTABLE                         R12 K21 [{"DataModel", "PluginId", "Category", "ItemId"}]
       90 LOADK                            R13 K22 ["Standalone"]
       91 SETTABLEKS                       R13 R12 K17 ["DataModel"]
       93 LOADK                            R13 K2 ["PlaceVersionHistory"]
       94 SETTABLEKS                       R13 R12 K18 ["PluginId"]
       96 LOADK                            R13 K23 ["Settings"]
       97 SETTABLEKS                       R13 R12 K19 ["Category"]
       99 LOADK                            R13 K27 ["SessionUniverseId"]
      100 SETTABLEKS                       R13 R12 K20 ["ItemId"]
      102 DUPTABLE                         R13 K21 [{"DataModel", "PluginId", "Category", "ItemId"}]
      103 LOADK                            R14 K22 ["Standalone"]
      104 SETTABLEKS                       R14 R13 K17 ["DataModel"]
      106 LOADK                            R14 K2 ["PlaceVersionHistory"]
      107 SETTABLEKS                       R14 R13 K18 ["PluginId"]
      109 LOADK                            R14 K23 ["Settings"]
      110 SETTABLEKS                       R14 R13 K19 ["Category"]
      112 LOADK                            R14 K28 ["PublishInProgress"]
      113 SETTABLEKS                       R14 R13 K20 ["ItemId"]
      115 DUPCLOSURE                       R14 K29 [PROTO_7]
      116 CAPTURE                          VAL R6
      117 CAPTURE                          VAL R9
      118 CAPTURE                          VAL R1
      119 CAPTURE                          VAL R10
      120 CAPTURE                          VAL R11
      121 CAPTURE                          VAL R12
      122 CAPTURE                          VAL R13
      123 CAPTURE                          VAL R7
      124 CAPTURE                          VAL R5
      125 RETURN                           R14 1
