PROTO_0:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["hasInternalPermission"]
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["AddWaypoint"]
        3 CALL                             R1 0 0
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K1 ["SetTrackEulerAnglesOrder"]
        7 GETUPVAL                         R2 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R4 R0 K2 ["Data"]
       11 CALL                             R1 3 0
       12 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R0 K0 ["props"]
        4 GETTABLEKS                       R2 R3 K1 ["Localization"]
        6 GETTABLEKS                       R4 R0 K0 ["props"]
        8 GETTABLEKS                       R3 R4 K2 ["AnimationData"]
       10 GETTABLEKS                       R5 R0 K0 ["props"]
       12 GETTABLEKS                       R4 R5 K3 ["InstanceName"]
       14 GETTABLEKS                       R6 R0 K0 ["props"]
       16 GETTABLEKS                       R5 R6 K4 ["Path"]
       18 GETUPVAL                         R7 0
       19 GETTABLEKS                       R6 R7 K5 ["getTrack"]
       21 MOVE                             R7 R3
       22 MOVE                             R8 R4
       23 MOVE                             R9 R5
       24 CALL                             R6 3 1
       25 GETUPVAL                         R8 1
       26 GETTABLEKS                       R7 R8 K6 ["getEulerAnglesOrder"]
       28 MOVE                             R8 R6
       29 CALL                             R7 1 1
       30 JUMPIF                           R7 ; [+2]
       31 GETTABLEKS                       R7 R1 K7 ["DefaultEulerAnglesOrder"]
       33 NEWCLOSURE                       R8 P0
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R5
       37 DUPTABLE                         R9 K9 [{"Text"}]
       38 LOADK                            R12 K10 ["ContextMenu"]
       39 LOADK                            R13 K11 ["EulerAnglesOrder"]
       40 NAMECALL                         R10 R2 K12 ["getText"]
       42 CALL                             R10 3 1
       43 SETTABLEKS                       R10 R9 K8 ["Text"]
       45 GETUPVAL                         R13 2
       46 GETTABLEKS                       R10 R13 K13 ["EULER_ANGLES_ORDER"]
       48 LOADNIL                          R11
       49 LOADNIL                          R12
       50 FORGPREP                         R10
       51 DUPTABLE                         R17 K17 [{"Text", "Data", "Checked", "OnItemClicked"}]
       52 GETTABLEKS                       R18 R14 K18 ["Name"]
       54 SETTABLEKS                       R18 R17 K8 ["Text"]
       56 SETTABLEKS                       R14 R17 K14 ["Data"]
       58 JUMPIFEQ                         R7 R14 ; [+2]
       60 LOADB                            R18 0 +1
       61 LOADB                            R18 1
       62 SETTABLEKS                       R18 R17 K15 ["Checked"]
       64 SETTABLEKS                       R8 R17 K16 ["OnItemClicked"]
       66 FASTCALL2                        TABLE_INSERT R9 R17 ; [+4]
       68 MOVE                             R16 R9
       69 GETIMPORT                        R15 K21 [table.insert]
       71 CALL                             R15 2 0
       72 FORGLOOP                         R10 2 ; [-22]
       74 RETURN                           R9 1

PROTO_3:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 CALL                             R1 0 1
        3 JUMPIFNOT                        R1 ; [+9]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K0 ["getTrack"]
        7 GETUPVAL                         R2 2
        8 GETUPVAL                         R3 3
        9 GETUPVAL                         R4 4
       10 CALL                             R1 3 1
       11 MOVE                             R0 R1
       12 JUMP                             ; [+14]
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R2 R3 K1 ["Instances"]
       16 GETUPVAL                         R3 3
       17 GETTABLE                         R1 R2 R3
       18 GETUPVAL                         R2 5
       19 JUMPIF                           R2 ; [+2]
       20 GETUPVAL                         R3 4
       21 GETTABLEN                        R2 R3 1
       22 SETUPVAL                         R2 5
       23 GETTABLEKS                       R2 R1 K2 ["Tracks"]
       25 GETUPVAL                         R3 5
       26 GETTABLE                         R0 R2 R3
       27 GETIMPORT                        R1 K4 [require]
       29 GETUPVAL                         R6 6
       30 GETTABLEKS                       R5 R6 K5 ["Src"]
       32 GETTABLEKS                       R4 R5 K6 ["Util"]
       34 GETTABLEKS                       R3 R4 K7 ["Debug"]
       36 GETTABLEKS                       R2 R3 K8 ["dumpTable"]
       38 CALL                             R1 1 1
       39 MOVE                             R2 R1
       40 MOVE                             R3 R0
       41 CALL                             R2 1 0
       42 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K2 ["Src"]
        5 GETTABLEKS                       R3 R4 K3 ["Util"]
        7 GETTABLEKS                       R2 R3 K4 ["Debug"]
        9 GETTABLEKS                       R1 R2 K5 ["dumpTrack"]
       11 CALL                             R0 1 1
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R2 R3 K6 ["Instances"]
       15 GETUPVAL                         R3 2
       16 GETTABLE                         R1 R2 R3
       17 GETUPVAL                         R2 3
       18 JUMPIF                           R2 ; [+2]
       19 GETUPVAL                         R3 4
       20 GETTABLEN                        R2 R3 1
       21 SETUPVAL                         R2 3
       22 GETTABLEKS                       R3 R1 K7 ["Tracks"]
       24 GETUPVAL                         R4 3
       25 GETTABLE                         R2 R3 R4
       26 GETUPVAL                         R4 5
       27 GETTABLEKS                       R3 R4 K8 ["getEulerAnglesOrder"]
       29 MOVE                             R4 R2
       30 CALL                             R3 1 1
       31 MOVE                             R4 R0
       32 MOVE                             R5 R2
       33 GETUPVAL                         R6 3
       34 MOVE                             R7 R3
       35 JUMPIF                           R7 ; [+3]
       36 GETUPVAL                         R8 6
       37 GETTABLEKS                       R7 R8 K9 ["DefaultEulerAnglesOrder"]
       39 CALL                             R4 3 0
       40 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["PluginActions"]
        4 GETTABLEKS                       R3 R1 K2 ["IsChannelAnimation"]
        6 GETTABLEKS                       R4 R1 K3 ["Path"]
        8 GETTABLEKS                       R5 R1 K4 ["TrackEntries"]
       10 GETTABLEKS                       R6 R1 K5 ["TrackType"]
       12 GETTABLEKS                       R7 R1 K6 ["AnimationData"]
       14 GETTABLEKS                       R8 R1 K7 ["InstanceName"]
       16 GETTABLEKS                       R9 R1 K8 ["TrackName"]
       18 GETUPVAL                         R11 0
       19 GETTABLEKS                       R10 R11 K9 ["getTrack"]
       21 MOVE                             R11 R7
       22 MOVE                             R12 R8
       23 MOVE                             R13 R4
       24 CALL                             R10 3 1
       25 LOADB                            R11 0
       26 JUMPIFEQKNIL                     R10 ; [+35]
       28 LOADB                            R11 1
       29 GETTABLEKS                       R12 R10 K10 ["Type"]
       31 GETUPVAL                         R15 1
       32 GETTABLEKS                       R14 R15 K11 ["TRACK_TYPES"]
       34 GETTABLEKS                       R13 R14 K12 ["Quaternion"]
       36 JUMPIFEQ                         R12 R13 ; [+25]
       38 LOADB                            R11 0
       39 GETTABLEKS                       R12 R10 K10 ["Type"]
       41 GETUPVAL                         R15 1
       42 GETTABLEKS                       R14 R15 K11 ["TRACK_TYPES"]
       44 GETTABLEKS                       R13 R14 K13 ["CFrame"]
       46 JUMPIFNOTEQ                      R12 R13 ; [+15]
       48 GETUPVAL                         R13 2
       49 GETTABLEKS                       R12 R13 K14 ["getRotationType"]
       51 MOVE                             R13 R10
       52 CALL                             R12 1 1
       53 GETUPVAL                         R15 1
       54 GETTABLEKS                       R14 R15 K11 ["TRACK_TYPES"]
       56 GETTABLEKS                       R13 R14 K12 ["Quaternion"]
       58 JUMPIFEQ                         R12 R13 ; [+2]
       60 LOADB                            R11 0 +1
       61 LOADB                            R11 1
       62 LOADNIL                          R12
       63 GETUPVAL                         R13 3
       64 CALL                             R13 0 1
       65 JUMPIFNOT                        R13 ; [+53]
       66 NEWTABLE                         R13 0 1
       68 LOADK                            R16 K15 ["AddKeyframe"]
       69 NAMECALL                         R14 R2 K16 ["get"]
       71 CALL                             R14 2 -1
       72 SETLIST                          R13 R14 -1 [1]
       74 MOVE                             R12 R13
       75 GETUPVAL                         R14 2
       76 GETTABLEKS                       R13 R14 K17 ["findTrackEntry"]
       78 MOVE                             R14 R5
       79 MOVE                             R15 R4
       80 CALL                             R13 2 1
       81 GETTABLEKS                       R14 R13 K10 ["Type"]
       83 GETUPVAL                         R17 1
       84 GETTABLEKS                       R16 R17 K11 ["TRACK_TYPES"]
       86 GETTABLEKS                       R15 R16 K13 ["CFrame"]
       88 JUMPIFEQ                         R14 R15 ; [+10]
       90 GETTABLEKS                       R14 R13 K10 ["Type"]
       92 GETUPVAL                         R17 1
       93 GETTABLEKS                       R16 R17 K11 ["TRACK_TYPES"]
       95 GETTABLEKS                       R15 R16 K18 ["Facs"]
       97 JUMPIFNOTEQ                      R14 R15 ; [+11]
       99 MOVE                             R15 R12
      100 LOADK                            R18 K19 ["DeleteTrack"]
      101 NAMECALL                         R16 R2 K16 ["get"]
      103 CALL                             R16 2 -1
      104 FASTCALL                         TABLE_INSERT ; [+2]
      105 GETIMPORT                        R14 K22 [table.insert]
      107 CALL                             R14 -1 0
      108 JUMP                             ; [+38]
      109 MOVE                             R15 R12
      110 LOADK                            R18 K23 ["ClearTrack"]
      111 NAMECALL                         R16 R2 K16 ["get"]
      113 CALL                             R16 2 -1
      114 FASTCALL                         TABLE_INSERT ; [+2]
      115 GETIMPORT                        R14 K22 [table.insert]
      117 CALL                             R14 -1 0
      118 JUMP                             ; [+28]
      119 NOT                              R13 R3
      120 JUMPIF                           R13 ; [+9]
      121 LOADB                            R13 0
      122 JUMPIFEQKNIL                     R4 ; [+7]
      124 LENGTH                           R14 R4
      125 LOADN                            R15 1
      126 JUMPIFLE                         R14 R15 ; [+2]
      128 LOADB                            R13 0 +1
      129 LOADB                            R13 1
      130 JUMPIFNOT                        R13 ; [+2]
      131 LOADK                            R14 K19 ["DeleteTrack"]
      132 JUMP                             ; [+1]
      133 LOADK                            R14 K23 ["ClearTrack"]
      134 NEWTABLE                         R15 0 2
      136 LOADK                            R18 K15 ["AddKeyframe"]
      137 NAMECALL                         R16 R2 K16 ["get"]
      139 CALL                             R16 2 1
      140 MOVE                             R19 R14
      141 NAMECALL                         R17 R2 K16 ["get"]
      143 CALL                             R17 2 -1
      144 SETLIST                          R15 R16 -1 [1]
      146 MOVE                             R12 R15
      147 LOADB                            R13 0
      148 JUMPIFNOT                        R3 ; [+20]
      149 JUMPIFNOT                        R11 ; [+19]
      150 GETUPVAL                         R17 1
      151 GETTABLEKS                       R16 R17 K24 ["MENU_SEPARATOR"]
      153 FASTCALL2                        TABLE_INSERT R12 R16 ; [+4]
      155 MOVE                             R15 R12
      156 GETIMPORT                        R14 K22 [table.insert]
      158 CALL                             R14 2 0
      159 MOVE                             R15 R12
      160 LOADK                            R18 K25 ["ConvertToEulerAngles"]
      161 NAMECALL                         R16 R2 K16 ["get"]
      163 CALL                             R16 2 -1
      164 FASTCALL                         TABLE_INSERT ; [+2]
      165 GETIMPORT                        R14 K22 [table.insert]
      167 CALL                             R14 -1 0
      168 LOADB                            R13 1
      169 GETUPVAL                         R16 1
      170 GETTABLEKS                       R15 R16 K11 ["TRACK_TYPES"]
      172 GETTABLEKS                       R14 R15 K26 ["EulerAngles"]
      174 JUMPIFNOTEQ                      R6 R14 ; [+19]
      176 JUMPIF                           R13 ; [+9]
      177 GETUPVAL                         R17 1
      178 GETTABLEKS                       R16 R17 K24 ["MENU_SEPARATOR"]
      180 FASTCALL2                        TABLE_INSERT R12 R16 ; [+4]
      182 MOVE                             R15 R12
      183 GETIMPORT                        R14 K22 [table.insert]
      185 CALL                             R14 2 0
      186 MOVE                             R15 R12
      187 NAMECALL                         R16 R0 K27 ["makeEulerAnglesOrderSubMenu"]
      189 CALL                             R16 1 -1
      190 FASTCALL                         TABLE_INSERT ; [+2]
      191 GETIMPORT                        R14 K22 [table.insert]
      193 CALL                             R14 -1 0
      194 GETUPVAL                         R14 3
      195 CALL                             R14 0 1
      196 JUMPIFNOT                        R14 ; [+71]
      197 GETUPVAL                         R16 1
      198 GETTABLEKS                       R15 R16 K11 ["TRACK_TYPES"]
      200 GETTABLEKS                       R14 R15 K13 ["CFrame"]
      202 JUMPIFNOTEQ                      R6 R14 ; [+23]
      204 GETUPVAL                         R17 1
      205 GETTABLEKS                       R16 R17 K24 ["MENU_SEPARATOR"]
      207 FASTCALL2                        TABLE_INSERT R12 R16 ; [+4]
      209 MOVE                             R15 R12
      210 GETIMPORT                        R14 K22 [table.insert]
      212 CALL                             R14 2 0
      213 MOVE                             R15 R12
      214 GETUPVAL                         R20 1
      215 GETTABLEKS                       R19 R20 K28 ["TRACK_ACTIONS"]
      217 GETTABLEKS                       R18 R19 K29 ["AddIkTarget"]
      219 NAMECALL                         R16 R2 K16 ["get"]
      221 CALL                             R16 2 -1
      222 FASTCALL                         TABLE_INSERT ; [+2]
      223 GETIMPORT                        R14 K22 [table.insert]
      225 CALL                             R14 -1 0
      226 GETUPVAL                         R16 1
      227 GETTABLEKS                       R15 R16 K11 ["TRACK_TYPES"]
      229 GETTABLEKS                       R14 R15 K30 ["IkTarget"]
      231 JUMPIFNOTEQ                      R6 R14 ; [+36]
      233 GETUPVAL                         R17 1
      234 GETTABLEKS                       R16 R17 K24 ["MENU_SEPARATOR"]
      236 FASTCALL2                        TABLE_INSERT R12 R16 ; [+4]
      238 MOVE                             R15 R12
      239 GETIMPORT                        R14 K22 [table.insert]
      241 CALL                             R14 2 0
      242 MOVE                             R15 R12
      243 GETUPVAL                         R20 1
      244 GETTABLEKS                       R19 R20 K28 ["TRACK_ACTIONS"]
      246 GETTABLEKS                       R18 R19 K31 ["SetTargetInstance"]
      248 NAMECALL                         R16 R2 K16 ["get"]
      250 CALL                             R16 2 -1
      251 FASTCALL                         TABLE_INSERT ; [+2]
      252 GETIMPORT                        R14 K22 [table.insert]
      254 CALL                             R14 -1 0
      255 MOVE                             R15 R12
      256 GETUPVAL                         R20 1
      257 GETTABLEKS                       R19 R20 K28 ["TRACK_ACTIONS"]
      259 GETTABLEKS                       R18 R19 K32 ["DeleteIkTarget"]
      261 NAMECALL                         R16 R2 K16 ["get"]
      263 CALL                             R16 2 -1
      264 FASTCALL                         TABLE_INSERT ; [+2]
      265 GETIMPORT                        R14 K22 [table.insert]
      267 CALL                             R14 -1 0
      268 GETTABLEKS                       R14 R0 K33 ["hasInternalPermission"]
      270 JUMPIFNOT                        R14 ; [+52]
      271 GETUPVAL                         R14 3
      272 CALL                             R14 0 1
      273 JUMPIFNOT                        R14 ; [+9]
      274 GETUPVAL                         R17 1
      275 GETTABLEKS                       R16 R17 K24 ["MENU_SEPARATOR"]
      277 FASTCALL2                        TABLE_INSERT R12 R16 ; [+4]
      279 MOVE                             R15 R12
      280 GETIMPORT                        R14 K22 [table.insert]
      282 CALL                             R14 2 0
      283 DUPTABLE                         R16 K36 [{"Text", "OnItemClicked"}]
      284 LOADK                            R17 K37 ["[INTERNAL] Dump track data"]
      285 SETTABLEKS                       R17 R16 K34 ["Text"]
      287 NEWCLOSURE                       R17 P0
      288 CAPTURE                          UPVAL U3
      289 CAPTURE                          UPVAL U0
      290 CAPTURE                          VAL R7
      291 CAPTURE                          VAL R8
      292 CAPTURE                          VAL R4
      293 CAPTURE                          REF R9
      294 CAPTURE                          UPVAL U4
      295 SETTABLEKS                       R17 R16 K35 ["OnItemClicked"]
      297 FASTCALL2                        TABLE_INSERT R12 R16 ; [+4]
      299 MOVE                             R15 R12
      300 GETIMPORT                        R14 K22 [table.insert]
      302 CALL                             R14 2 0
      303 DUPTABLE                         R16 K36 [{"Text", "OnItemClicked"}]
      304 LOADK                            R17 K38 ["[INTERNAL] Dump track as CSV"]
      305 SETTABLEKS                       R17 R16 K34 ["Text"]
      307 NEWCLOSURE                       R17 P1
      308 CAPTURE                          UPVAL U4
      309 CAPTURE                          VAL R7
      310 CAPTURE                          VAL R8
      311 CAPTURE                          REF R9
      312 CAPTURE                          VAL R4
      313 CAPTURE                          UPVAL U2
      314 CAPTURE                          VAL R1
      315 SETTABLEKS                       R17 R16 K35 ["OnItemClicked"]
      317 FASTCALL2                        TABLE_INSERT R12 R16 ; [+4]
      319 MOVE                             R15 R12
      320 GETIMPORT                        R14 K22 [table.insert]
      322 CALL                             R14 2 0
      323 CLOSEUPVALS                      R9
      324 RETURN                           R12 1

PROTO_6:
        0 JUMPIFNOT                        R1 ; [+23]
        1 LOADB                            R3 0
        2 SETTABLEKS                       R3 R1 K0 ["Enabled"]
        4 GETTABLEKS                       R4 R0 K1 ["Actions"]
        6 FASTCALL2                        TABLE_INSERT R4 R1 ; [+4]
        8 MOVE                             R5 R1
        9 GETIMPORT                        R3 K4 [table.insert]
       11 CALL                             R3 2 0
       12 GETTABLEKS                       R4 R0 K5 ["Connections"]
       14 GETTABLEKS                       R5 R1 K6 ["Triggered"]
       16 MOVE                             R7 R2
       17 NAMECALL                         R5 R5 K7 ["Connect"]
       19 CALL                             R5 2 -1
       20 FASTCALL                         TABLE_INSERT ; [+2]
       21 GETIMPORT                        R3 K4 [table.insert]
       23 CALL                             R3 -1 0
       24 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["StudioService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 NAMECALL                         R0 R0 K4 ["HasInternalPermission"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R2 R0 K1 ["Path"]
        5 GETTABLEN                        R1 R2 1
        6 GETTABLEKS                       R2 R0 K2 ["AddWaypoint"]
        8 CALL                             R2 0 0
        9 GETTABLEKS                       R2 R0 K3 ["DeleteTrack"]
       11 MOVE                             R3 R1
       12 GETTABLEKS                       R4 R0 K4 ["Analytics"]
       14 CALL                             R2 2 0
       15 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["AddWaypoint"]
        5 CALL                             R0 0 0
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K0 ["props"]
        9 GETTABLEKS                       R0 R1 K2 ["ShowAddIkTargetPrompt"]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R2 R3 K0 ["props"]
       14 GETTABLEKS                       R1 R2 K3 ["InstanceName"]
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R3 R4 K0 ["props"]
       19 GETTABLEKS                       R2 R3 K4 ["Path"]
       21 CALL                             R0 2 0
       22 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["AddWaypoint"]
        5 CALL                             R0 0 0
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K0 ["props"]
        9 GETTABLEKS                       R0 R1 K2 ["ShowSelectIkTargetPrompt"]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R2 R3 K0 ["props"]
       14 GETTABLEKS                       R1 R2 K3 ["InstanceName"]
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R3 R4 K0 ["props"]
       19 GETTABLEKS                       R2 R3 K4 ["Path"]
       21 CALL                             R0 2 0
       22 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["AddWaypoint"]
        5 CALL                             R0 0 0
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K0 ["props"]
        9 GETTABLEKS                       R0 R1 K2 ["DeleteIkTarget"]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R2 R3 K0 ["props"]
       14 GETTABLEKS                       R1 R2 K3 ["Path"]
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R3 R4 K0 ["props"]
       19 GETTABLEKS                       R2 R3 K4 ["Analytics"]
       21 CALL                             R0 2 0
       22 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["AddWaypoint"]
        5 CALL                             R0 0 0
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K0 ["props"]
        9 GETTABLEKS                       R0 R1 K2 ["ClearTrack"]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R2 R3 K0 ["props"]
       14 GETTABLEKS                       R1 R2 K3 ["InstanceName"]
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R3 R4 K0 ["props"]
       19 GETTABLEKS                       R2 R3 K4 ["Path"]
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R4 R5 K0 ["props"]
       24 GETTABLEKS                       R3 R4 K5 ["Analytics"]
       26 CALL                             R0 3 0
       27 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["List"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R1
        7 CALL                             R2 2 1
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R3 R4 K2 ["SplitTrack"]
       11 GETUPVAL                         R4 3
       12 MOVE                             R5 R2
       13 MOVE                             R6 R0
       14 GETUPVAL                         R7 4
       15 GETUPVAL                         R8 5
       16 GETUPVAL                         R10 2
       17 GETTABLEKS                       R9 R10 K3 ["Analytics"]
       19 CALL                             R3 6 0
       20 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Playhead"]
        5 GETTABLEKS                       R2 R0 K2 ["TrackType"]
        7 GETTABLEKS                       R3 R0 K3 ["RotationType"]
        9 GETTABLEKS                       R4 R0 K4 ["InstanceName"]
       11 GETTABLEKS                       R5 R0 K5 ["AnimationData"]
       13 GETTABLEKS                       R6 R0 K6 ["IsChannelAnimation"]
       15 GETTABLEKS                       R7 R0 K7 ["Path"]
       17 LOADNIL                          R8
       18 JUMPIFNOT                        R4 ; [+66]
       19 JUMPIFNOT                        R7 ; [+65]
       20 GETTABLEKS                       R9 R0 K8 ["AddWaypoint"]
       22 CALL                             R9 0 0
       23 JUMPIFNOT                        R6 ; [+14]
       24 GETUPVAL                         R10 1
       25 GETTABLEKS                       R9 R10 K9 ["traverseComponents"]
       27 MOVE                             R10 R2
       28 NEWCLOSURE                       R11 P0
       29 CAPTURE                          UPVAL U2
       30 CAPTURE                          VAL R7
       31 CAPTURE                          VAL R0
       32 CAPTURE                          VAL R4
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R1
       35 MOVE                             R12 R3
       36 CALL                             R9 3 0
       37 RETURN                           R0 0
       38 GETUPVAL                         R10 3
       39 GETTABLEKS                       R9 R10 K10 ["getTrack"]
       41 MOVE                             R10 R5
       42 MOVE                             R11 R4
       43 MOVE                             R12 R7
       44 CALL                             R9 3 1
       45 JUMPIFNOT                        R9 ; [+11]
       46 GETTABLEKS                       R10 R9 K11 ["Keyframes"]
       48 JUMPIFNOT                        R10 ; [+8]
       49 GETUPVAL                         R11 4
       50 GETTABLEKS                       R10 R11 K12 ["getValue"]
       52 MOVE                             R11 R9
       53 MOVE                             R12 R1
       54 CALL                             R10 2 1
       55 MOVE                             R8 R10
       56 JUMP                             ; [+6]
       57 GETUPVAL                         R11 4
       58 GETTABLEKS                       R10 R11 K13 ["getDefaultValue"]
       60 MOVE                             R11 R2
       61 CALL                             R10 1 1
       62 MOVE                             R8 R10
       63 DUPTABLE                         R10 K17 [{"Value", "EasingStyle", "EasingDirection"}]
       64 SETTABLEKS                       R8 R10 K14 ["Value"]
       66 GETIMPORT                        R11 K21 [Enum.PoseEasingStyle.Linear]
       68 SETTABLEKS                       R11 R10 K15 ["EasingStyle"]
       70 GETIMPORT                        R11 K24 [Enum.PoseEasingDirection.In]
       72 SETTABLEKS                       R11 R10 K16 ["EasingDirection"]
       74 GETTABLEKS                       R11 R0 K25 ["AddKeyframe"]
       76 MOVE                             R12 R4
       77 MOVE                             R13 R7
       78 MOVE                             R14 R2
       79 LOADNIL                          R15
       80 MOVE                             R16 R1
       81 MOVE                             R17 R10
       82 GETTABLEKS                       R18 R0 K26 ["Analytics"]
       84 CALL                             R11 7 0
       85 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Path"]
        5 GETTABLEKS                       R2 R0 K2 ["InstanceName"]
        7 GETTABLEKS                       R3 R0 K3 ["TrackType"]
        9 GETTABLEKS                       R4 R0 K4 ["AnimationData"]
       11 GETUPVAL                         R7 1
       12 GETTABLEKS                       R6 R7 K5 ["TRACK_TYPES"]
       14 GETTABLEKS                       R5 R6 K6 ["CFrame"]
       16 JUMPIFNOTEQ                      R3 R5 ; [+30]
       18 GETUPVAL                         R9 1
       19 GETTABLEKS                       R8 R9 K7 ["PROPERTY_KEYS"]
       21 GETTABLEKS                       R7 R8 K8 ["Rotation"]
       23 FASTCALL2                        TABLE_INSERT R1 R7 ; [+4]
       25 MOVE                             R6 R1
       26 GETIMPORT                        R5 K11 [table.insert]
       28 CALL                             R5 2 0
       29 GETUPVAL                         R6 2
       30 GETTABLEKS                       R5 R6 K12 ["getTrack"]
       32 MOVE                             R6 R4
       33 MOVE                             R7 R2
       34 MOVE                             R8 R1
       35 CALL                             R5 3 1
       36 JUMPIFNOT                        R5 ; [+9]
       37 GETTABLEKS                       R6 R5 K13 ["Type"]
       39 GETUPVAL                         R9 1
       40 GETTABLEKS                       R8 R9 K5 ["TRACK_TYPES"]
       42 GETTABLEKS                       R7 R8 K14 ["Quaternion"]
       44 JUMPIFEQ                         R6 R7 ; [+2]
       46 RETURN                           R0 0
       47 GETTABLEKS                       R5 R0 K15 ["AddWaypoint"]
       49 CALL                             R5 0 0
       50 GETTABLEKS                       R5 R0 K16 ["ConvertTrack"]
       52 MOVE                             R6 R2
       53 MOVE                             R7 R1
       54 GETUPVAL                         R10 1
       55 GETTABLEKS                       R9 R10 K5 ["TRACK_TYPES"]
       57 GETTABLEKS                       R8 R9 K17 ["EulerAngles"]
       59 GETTABLEKS                       R9 R0 K18 ["Analytics"]
       61 CALL                             R5 4 0
       62 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["PluginActions"]
        4 NEWTABLE                         R2 0 0
        6 SETTABLEKS                       R2 R0 K2 ["Actions"]
        8 NEWTABLE                         R2 0 0
       10 SETTABLEKS                       R2 R0 K3 ["Connections"]
       12 GETIMPORT                        R2 K5 [pcall]
       14 DUPCLOSURE                       R3 K6 [PROTO_7]
       15 CALL                             R2 1 2
       16 JUMPIFNOT                        R2 ; [+4]
       17 JUMPIFNOT                        R3 ; [+3]
       18 LOADB                            R4 1
       19 SETTABLEKS                       R4 R0 K7 ["hasInternalPermission"]
       21 LOADK                            R8 K8 ["DeleteTrack"]
       22 NAMECALL                         R6 R1 K9 ["get"]
       24 CALL                             R6 2 1
       25 NEWCLOSURE                       R7 P1
       26 CAPTURE                          VAL R0
       27 NAMECALL                         R4 R0 K10 ["addAction"]
       29 CALL                             R4 3 0
       30 GETUPVAL                         R4 0
       31 CALL                             R4 0 1
       32 JUMPIFNOT                        R4 ; [+39]
       33 GETUPVAL                         R10 1
       34 GETTABLEKS                       R9 R10 K11 ["TRACK_ACTIONS"]
       36 GETTABLEKS                       R8 R9 K12 ["AddIkTarget"]
       38 NAMECALL                         R6 R1 K9 ["get"]
       40 CALL                             R6 2 1
       41 NEWCLOSURE                       R7 P2
       42 CAPTURE                          VAL R0
       43 NAMECALL                         R4 R0 K10 ["addAction"]
       45 CALL                             R4 3 0
       46 GETUPVAL                         R10 1
       47 GETTABLEKS                       R9 R10 K11 ["TRACK_ACTIONS"]
       49 GETTABLEKS                       R8 R9 K13 ["SetTargetInstance"]
       51 NAMECALL                         R6 R1 K9 ["get"]
       53 CALL                             R6 2 1
       54 NEWCLOSURE                       R7 P3
       55 CAPTURE                          VAL R0
       56 NAMECALL                         R4 R0 K10 ["addAction"]
       58 CALL                             R4 3 0
       59 GETUPVAL                         R10 1
       60 GETTABLEKS                       R9 R10 K11 ["TRACK_ACTIONS"]
       62 GETTABLEKS                       R8 R9 K14 ["DeleteIkTarget"]
       64 NAMECALL                         R6 R1 K9 ["get"]
       66 CALL                             R6 2 1
       67 NEWCLOSURE                       R7 P4
       68 CAPTURE                          VAL R0
       69 NAMECALL                         R4 R0 K10 ["addAction"]
       71 CALL                             R4 3 0
       72 LOADK                            R8 K15 ["ClearTrack"]
       73 NAMECALL                         R6 R1 K9 ["get"]
       75 CALL                             R6 2 1
       76 NEWCLOSURE                       R7 P5
       77 CAPTURE                          VAL R0
       78 NAMECALL                         R4 R0 K10 ["addAction"]
       80 CALL                             R4 3 0
       81 LOADK                            R8 K16 ["AddKeyframe"]
       82 NAMECALL                         R6 R1 K9 ["get"]
       84 CALL                             R6 2 1
       85 NEWCLOSURE                       R7 P6
       86 CAPTURE                          VAL R0
       87 CAPTURE                          UPVAL U2
       88 CAPTURE                          UPVAL U3
       89 CAPTURE                          UPVAL U4
       90 CAPTURE                          UPVAL U5
       91 NAMECALL                         R4 R0 K10 ["addAction"]
       93 CALL                             R4 3 0
       94 LOADK                            R8 K17 ["ConvertToEulerAngles"]
       95 NAMECALL                         R6 R1 K9 ["get"]
       97 CALL                             R6 2 1
       98 NEWCLOSURE                       R7 P7
       99 CAPTURE                          VAL R0
      100 CAPTURE                          UPVAL U1
      101 CAPTURE                          UPVAL U4
      102 NAMECALL                         R4 R0 K10 ["addAction"]
      104 CALL                             R4 3 0
      105 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["ShowMenu"]
        4 GETTABLEKS                       R3 R1 K2 ["Path"]
        6 GETTABLEKS                       R4 R1 K3 ["InstanceName"]
        8 GETTABLEKS                       R5 R1 K4 ["AnimationData"]
       10 GETTABLEKS                       R6 R1 K5 ["Playhead"]
       12 GETTABLEKS                       R7 R1 K6 ["ReadOnly"]
       14 GETTABLEKS                       R8 R0 K7 ["Actions"]
       16 GETTABLEKS                       R10 R0 K0 ["props"]
       18 GETTABLEKS                       R9 R10 K8 ["PluginActions"]
       20 GETTABLEKS                       R11 R0 K0 ["props"]
       22 GETTABLEKS                       R10 R11 K9 ["IsChannelAnimation"]
       24 GETUPVAL                         R11 0
       25 MOVE                             R12 R9
       26 CALL                             R11 1 1
       27 JUMPIF                           R11 ; [+116]
       28 JUMPIFEQKNIL                     R8 ; [+115]
       30 GETIMPORT                        R11 K11 [ipairs]
       32 MOVE                             R12 R8
       33 CALL                             R11 1 3
       34 FORGPREP_INEXT                   R11
       35 LOADB                            R16 0
       36 SETTABLEKS                       R16 R15 K12 ["Enabled"]
       38 FORGLOOP                         R11 2 [inext] ; [-4]
       40 JUMPIFNOT                        R3 ; [+45]
       41 JUMPIFNOT                        R4 ; [+44]
       42 GETUPVAL                         R12 1
       43 GETTABLEKS                       R11 R12 K13 ["getTrack"]
       45 MOVE                             R12 R5
       46 MOVE                             R13 R4
       47 MOVE                             R14 R3
       48 CALL                             R11 3 1
       49 LOADNIL                          R12
       50 JUMPIF                           R10 ; [+10]
       51 MOVE                             R13 R11
       52 JUMPIFNOT                        R13 ; [+6]
       53 GETTABLEKS                       R13 R11 K14 ["Data"]
       55 JUMPIFNOT                        R13 ; [+3]
       56 GETTABLEKS                       R14 R11 K14 ["Data"]
       58 GETTABLE                         R13 R14 R6
       59 NOT                              R12 R13
       60 JUMP                             ; [+17]
       61 JUMPIF                           R11 ; [+2]
       62 LOADB                            R12 1
       63 JUMP                             ; [+14]
       64 GETUPVAL                         R14 2
       65 GETTABLEKS                       R13 R14 K15 ["getComponentsInfo"]
       67 MOVE                             R14 R11
       68 MOVE                             R15 R6
       69 CALL                             R13 2 1
       70 GETTABLE                         R15 R13 R6
       71 NOT                              R14 R15
       72 JUMPIF                           R14 ; [+4]
       73 GETTABLE                         R16 R13 R6
       74 GETTABLEKS                       R15 R16 K16 ["Complete"]
       76 NOT                              R14 R15
       77 MOVE                             R12 R14
       78 LOADK                            R15 K17 ["AddKeyframe"]
       79 NAMECALL                         R13 R9 K18 ["get"]
       81 CALL                             R13 2 1
       82 NOT                              R15 R7
       83 AND                              R14 R15 R12
       84 SETTABLEKS                       R14 R13 K12 ["Enabled"]
       86 LOADK                            R13 K19 ["DeleteTrack"]
       87 NAMECALL                         R11 R9 K18 ["get"]
       89 CALL                             R11 2 1
       90 NOT                              R12 R7
       91 SETTABLEKS                       R12 R11 K12 ["Enabled"]
       93 LOADK                            R13 K20 ["ClearTrack"]
       94 NAMECALL                         R11 R9 K18 ["get"]
       96 CALL                             R11 2 1
       97 NOT                              R12 R7
       98 SETTABLEKS                       R12 R11 K12 ["Enabled"]
      100 JUMPIFNOT                        R10 ; [+43]
      101 LOADK                            R13 K21 ["ConvertToEulerAngles"]
      102 NAMECALL                         R11 R9 K18 ["get"]
      104 CALL                             R11 2 1
      105 NOT                              R12 R7
      106 SETTABLEKS                       R12 R11 K12 ["Enabled"]
      108 GETUPVAL                         R11 3
      109 CALL                             R11 0 1
      110 JUMPIFNOT                        R11 ; [+33]
      111 GETUPVAL                         R15 4
      112 GETTABLEKS                       R14 R15 K22 ["TRACK_ACTIONS"]
      114 GETTABLEKS                       R13 R14 K23 ["AddIkTarget"]
      116 NAMECALL                         R11 R9 K18 ["get"]
      118 CALL                             R11 2 1
      119 NOT                              R12 R7
      120 SETTABLEKS                       R12 R11 K12 ["Enabled"]
      122 GETUPVAL                         R15 4
      123 GETTABLEKS                       R14 R15 K22 ["TRACK_ACTIONS"]
      125 GETTABLEKS                       R13 R14 K24 ["SetTargetInstance"]
      127 NAMECALL                         R11 R9 K18 ["get"]
      129 CALL                             R11 2 1
      130 NOT                              R12 R7
      131 SETTABLEKS                       R12 R11 K12 ["Enabled"]
      133 GETUPVAL                         R15 4
      134 GETTABLEKS                       R14 R15 K22 ["TRACK_ACTIONS"]
      136 GETTABLEKS                       R13 R14 K25 ["DeleteIkTarget"]
      138 NAMECALL                         R11 R9 K18 ["get"]
      140 CALL                             R11 2 1
      141 NOT                              R12 R7
      142 SETTABLEKS                       R12 R11 K12 ["Enabled"]
      144 JUMPIFNOT                        R2 ; [+16]
      145 GETUPVAL                         R12 5
      146 GETTABLEKS                       R11 R12 K26 ["createElement"]
      148 GETUPVAL                         R12 6
      149 DUPTABLE                         R13 K28 [{"Actions", "OnMenuOpened"}]
      150 NAMECALL                         R14 R0 K29 ["makeMenuActions"]
      152 CALL                             R14 1 1
      153 SETTABLEKS                       R14 R13 K7 ["Actions"]
      155 GETTABLEKS                       R14 R1 K27 ["OnMenuOpened"]
      157 SETTABLEKS                       R14 R13 K27 ["OnMenuOpened"]
      159 CALL                             R11 2 1
      160 JUMPIF                           R11 ; [+1]
      161 LOADNIL                          R11
      162 RETURN                           R11 1

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["Connections"]
        2 JUMPIFNOT                        R1 ; [+15]
        3 GETIMPORT                        R1 K2 [ipairs]
        5 GETTABLEKS                       R2 R0 K0 ["Connections"]
        7 CALL                             R1 1 3
        8 FORGPREP_INEXT                   R1
        9 NAMECALL                         R6 R5 K3 ["Disconnect"]
       11 CALL                             R6 1 0
       12 FORGLOOP                         R1 2 [inext] ; [-4]
       14 NEWTABLE                         R1 0 0
       16 SETTABLEKS                       R1 R0 K0 ["Connections"]
       18 GETTABLEKS                       R1 R0 K4 ["Actions"]
       20 JUMPIFNOT                        R1 ; [+11]
       21 GETIMPORT                        R1 K2 [ipairs]
       23 GETTABLEKS                       R2 R0 K4 ["Actions"]
       25 CALL                             R1 1 3
       26 FORGPREP_INEXT                   R1
       27 LOADB                            R6 0
       28 SETTABLEKS                       R6 R5 K5 ["Enabled"]
       30 FORGLOOP                         R1 2 [inext] ; [-4]
       32 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R1 R0 K0 ["Status"]
        2 DUPTABLE                         R2 K11 [{"AnimationData", "TrackEntries", "DefaultEulerAnglesOrder", "InstanceName", "Path", "Playhead", "ReadOnly", "RotationType", "TrackName", "TrackType"}]
        3 GETTABLEKS                       R3 R0 K1 ["AnimationData"]
        5 SETTABLEKS                       R3 R2 K1 ["AnimationData"]
        7 GETTABLEKS                       R3 R1 K12 ["Tracks"]
        9 SETTABLEKS                       R3 R2 K2 ["TrackEntries"]
       11 GETTABLEKS                       R3 R1 K3 ["DefaultEulerAnglesOrder"]
       13 SETTABLEKS                       R3 R2 K3 ["DefaultEulerAnglesOrder"]
       15 GETTABLEKS                       R4 R1 K13 ["RightClickContextInfo"]
       17 GETTABLEKS                       R3 R4 K4 ["InstanceName"]
       19 SETTABLEKS                       R3 R2 K4 ["InstanceName"]
       21 GETTABLEKS                       R4 R1 K13 ["RightClickContextInfo"]
       23 GETTABLEKS                       R3 R4 K5 ["Path"]
       25 SETTABLEKS                       R3 R2 K5 ["Path"]
       27 GETTABLEKS                       R3 R1 K6 ["Playhead"]
       29 SETTABLEKS                       R3 R2 K6 ["Playhead"]
       31 GETTABLEKS                       R3 R1 K7 ["ReadOnly"]
       33 SETTABLEKS                       R3 R2 K7 ["ReadOnly"]
       35 GETTABLEKS                       R4 R1 K13 ["RightClickContextInfo"]
       37 GETTABLEKS                       R3 R4 K8 ["RotationType"]
       39 SETTABLEKS                       R3 R2 K8 ["RotationType"]
       41 GETTABLEKS                       R4 R1 K13 ["RightClickContextInfo"]
       43 GETTABLEKS                       R3 R4 K9 ["TrackName"]
       45 SETTABLEKS                       R3 R2 K9 ["TrackName"]
       47 GETTABLEKS                       R4 R1 K13 ["RightClickContextInfo"]
       49 GETTABLEKS                       R3 R4 K10 ["TrackType"]
       51 SETTABLEKS                       R3 R2 K10 ["TrackType"]
       53 RETURN                           R2 1

PROTO_20:
        0 GETUPVAL                         R7 0
        1 GETUPVAL                         R8 1
        2 MOVE                             R9 R0
        3 MOVE                             R10 R1
        4 MOVE                             R11 R2
        5 MOVE                             R12 R3
        6 MOVE                             R13 R4
        7 MOVE                             R14 R5
        8 MOVE                             R15 R6
        9 CALL                             R8 7 -1
       10 CALL                             R7 -1 0
       11 GETUPVAL                         R7 0
       12 GETUPVAL                         R8 2
       13 NEWTABLE                         R9 0 0
       15 CALL                             R8 1 -1
       16 CALL                             R7 -1 0
       17 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 GETUPVAL                         R3 0
        8 GETUPVAL                         R4 2
        9 NEWTABLE                         R5 0 0
       11 CALL                             R4 1 -1
       12 CALL                             R3 -1 0
       13 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 MOVE                             R8 R2
        5 MOVE                             R9 R3
        6 CALL                             R5 4 -1
        7 CALL                             R4 -1 0
        8 GETUPVAL                         R4 0
        9 GETUPVAL                         R5 2
       10 NEWTABLE                         R6 0 0
       12 CALL                             R5 1 -1
       13 CALL                             R4 -1 0
       14 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 GETUPVAL                         R2 0
        7 GETUPVAL                         R3 2
        8 NEWTABLE                         R4 0 0
       10 CALL                             R3 1 -1
       11 CALL                             R2 -1 0
       12 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 GETUPVAL                         R2 0
        7 GETUPVAL                         R3 2
        8 NEWTABLE                         R4 0 0
       10 CALL                             R3 1 -1
       11 CALL                             R2 -1 0
       12 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 GETUPVAL                         R3 0
        8 GETUPVAL                         R4 2
        9 NEWTABLE                         R5 0 0
       11 CALL                             R4 1 -1
       12 CALL                             R3 -1 0
       13 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R6 0
        1 GETUPVAL                         R7 1
        2 MOVE                             R8 R0
        3 MOVE                             R9 R1
        4 MOVE                             R10 R2
        5 MOVE                             R11 R3
        6 MOVE                             R12 R4
        7 MOVE                             R13 R5
        8 CALL                             R7 6 -1
        9 CALL                             R6 -1 0
       10 GETUPVAL                         R6 0
       11 GETUPVAL                         R7 2
       12 NEWTABLE                         R8 0 0
       14 CALL                             R7 1 -1
       15 CALL                             R6 -1 0
       16 RETURN                           R0 0

PROTO_28:
        0 DUPTABLE                         R1 K8 [{"AddKeyframe", "AddWaypoint", "ClearTrack", "ConvertTrack", "DeleteIkTarget", "DeleteTrack", "SetTrackEulerAnglesOrder", "SplitTrack"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 SETTABLEKS                       R2 R1 K0 ["AddKeyframe"]
        7 NEWCLOSURE                       R2 P1
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U2
       10 SETTABLEKS                       R2 R1 K1 ["AddWaypoint"]
       12 NEWCLOSURE                       R2 P2
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U1
       16 SETTABLEKS                       R2 R1 K2 ["ClearTrack"]
       18 NEWCLOSURE                       R2 P3
       19 CAPTURE                          VAL R0
       20 CAPTURE                          UPVAL U4
       21 CAPTURE                          UPVAL U1
       22 SETTABLEKS                       R2 R1 K3 ["ConvertTrack"]
       24 NEWCLOSURE                       R2 P4
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U5
       27 CAPTURE                          UPVAL U1
       28 SETTABLEKS                       R2 R1 K4 ["DeleteIkTarget"]
       30 NEWCLOSURE                       R2 P5
       31 CAPTURE                          VAL R0
       32 CAPTURE                          UPVAL U6
       33 CAPTURE                          UPVAL U1
       34 SETTABLEKS                       R2 R1 K5 ["DeleteTrack"]
       36 NEWCLOSURE                       R2 P6
       37 CAPTURE                          VAL R0
       38 CAPTURE                          UPVAL U7
       39 CAPTURE                          UPVAL U1
       40 SETTABLEKS                       R2 R1 K6 ["SetTrackEulerAnglesOrder"]
       42 NEWCLOSURE                       R2 P7
       43 CAPTURE                          VAL R0
       44 CAPTURE                          UPVAL U8
       45 CAPTURE                          UPVAL U1
       46 SETTABLEKS                       R2 R1 K7 ["SplitTrack"]
       48 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Cryo"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["RoactRodux"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R6 K10 ["Framework"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K11 ["ContextServices"]
       37 GETTABLEKS                       R6 R5 K12 ["withContext"]
       39 GETIMPORT                        R7 K5 [require]
       41 GETTABLEKS                       R10 R0 K13 ["Src"]
       43 GETTABLEKS                       R9 R10 K14 ["Components"]
       45 GETTABLEKS                       R8 R9 K15 ["ContextMenu"]
       47 CALL                             R7 1 1
       48 GETTABLEKS                       R9 R0 K13 ["Src"]
       50 GETTABLEKS                       R8 R9 K16 ["Actions"]
       52 GETIMPORT                        R9 K5 [require]
       54 GETTABLEKS                       R10 R8 K17 ["SetRightClickContextInfo"]
       56 CALL                             R9 1 1
       57 GETTABLEKS                       R11 R0 K13 ["Src"]
       59 GETTABLEKS                       R10 R11 K18 ["Thunks"]
       61 GETIMPORT                        R11 K5 [require]
       63 GETTABLEKS                       R12 R10 K19 ["AddKeyframe"]
       65 CALL                             R11 1 1
       66 GETIMPORT                        R12 K5 [require]
       68 GETTABLEKS                       R14 R10 K20 ["History"]
       70 GETTABLEKS                       R13 R14 K21 ["AddWaypoint"]
       72 CALL                             R12 1 1
       73 GETIMPORT                        R13 K5 [require]
       75 GETTABLEKS                       R14 R10 K22 ["ClearTrack"]
       77 CALL                             R13 1 1
       78 GETIMPORT                        R14 K5 [require]
       80 GETTABLEKS                       R15 R10 K23 ["ConvertTrack"]
       82 CALL                             R14 1 1
       83 GETIMPORT                        R15 K5 [require]
       85 GETTABLEKS                       R16 R10 K24 ["DeleteIkTarget"]
       87 CALL                             R15 1 1
       88 GETIMPORT                        R16 K5 [require]
       90 GETTABLEKS                       R17 R10 K25 ["DeleteTrack"]
       92 CALL                             R16 1 1
       93 GETIMPORT                        R17 K5 [require]
       95 GETTABLEKS                       R18 R10 K26 ["SetTrackEulerAnglesOrder"]
       97 CALL                             R17 1 1
       98 GETIMPORT                        R18 K5 [require]
      100 GETTABLEKS                       R19 R10 K27 ["SplitTrack"]
      102 CALL                             R18 1 1
      103 GETTABLEKS                       R20 R0 K13 ["Src"]
      105 GETTABLEKS                       R19 R20 K28 ["Util"]
      107 GETIMPORT                        R20 K5 [require]
      109 GETTABLEKS                       R21 R19 K29 ["AnimationData"]
      111 CALL                             R20 1 1
      112 GETIMPORT                        R21 K5 [require]
      114 GETTABLEKS                       R22 R19 K30 ["Constants"]
      116 CALL                             R21 1 1
      117 GETIMPORT                        R22 K5 [require]
      119 GETTABLEKS                       R23 R19 K31 ["isEmpty"]
      121 CALL                             R22 1 1
      122 GETIMPORT                        R23 K5 [require]
      124 GETTABLEKS                       R24 R19 K32 ["KeyframeUtils"]
      126 CALL                             R23 1 1
      127 GETIMPORT                        R24 K5 [require]
      129 GETTABLEKS                       R25 R19 K33 ["PathUtils"]
      131 CALL                             R24 1 1
      132 GETIMPORT                        R25 K5 [require]
      134 GETTABLEKS                       R26 R19 K34 ["TrackUtils"]
      136 CALL                             R25 1 1
      137 GETIMPORT                        R26 K5 [require]
      139 GETTABLEKS                       R28 R0 K35 ["LuaFlags"]
      141 GETTABLEKS                       R27 R28 K36 ["GetFFlagControlRig"]
      143 CALL                             R26 1 1
      144 GETTABLEKS                       R27 R1 K37 ["PureComponent"]
      146 LOADK                            R29 K38 ["TrackActions"]
      147 NAMECALL                         R27 R27 K39 ["extend"]
      149 CALL                             R27 2 1
      150 DUPCLOSURE                       R28 K40 [PROTO_0]
      151 SETTABLEKS                       R28 R27 K41 ["init"]
      153 DUPCLOSURE                       R28 K42 [PROTO_2]
      154 CAPTURE                          VAL R20
      155 CAPTURE                          VAL R25
      156 CAPTURE                          VAL R21
      157 SETTABLEKS                       R28 R27 K43 ["makeEulerAnglesOrderSubMenu"]
      159 DUPCLOSURE                       R28 K44 [PROTO_5]
      160 CAPTURE                          VAL R20
      161 CAPTURE                          VAL R21
      162 CAPTURE                          VAL R25
      163 CAPTURE                          VAL R26
      164 CAPTURE                          VAL R0
      165 SETTABLEKS                       R28 R27 K45 ["makeMenuActions"]
      167 DUPCLOSURE                       R28 K46 [PROTO_6]
      168 SETTABLEKS                       R28 R27 K47 ["addAction"]
      170 DUPCLOSURE                       R28 K48 [PROTO_16]
      171 CAPTURE                          VAL R26
      172 CAPTURE                          VAL R21
      173 CAPTURE                          VAL R25
      174 CAPTURE                          VAL R2
      175 CAPTURE                          VAL R20
      176 CAPTURE                          VAL R23
      177 SETTABLEKS                       R28 R27 K49 ["didMount"]
      179 DUPCLOSURE                       R28 K50 [PROTO_17]
      180 CAPTURE                          VAL R22
      181 CAPTURE                          VAL R20
      182 CAPTURE                          VAL R25
      183 CAPTURE                          VAL R26
      184 CAPTURE                          VAL R21
      185 CAPTURE                          VAL R1
      186 CAPTURE                          VAL R7
      187 SETTABLEKS                       R28 R27 K51 ["render"]
      189 DUPCLOSURE                       R28 K52 [PROTO_18]
      190 SETTABLEKS                       R28 R27 K53 ["willUnmount"]
      192 MOVE                             R28 R6
      193 DUPTABLE                         R29 K57 [{"Localization", "PluginActions", "Analytics"}]
      194 GETTABLEKS                       R30 R5 K54 ["Localization"]
      196 SETTABLEKS                       R30 R29 K54 ["Localization"]
      198 GETTABLEKS                       R30 R5 K55 ["PluginActions"]
      200 SETTABLEKS                       R30 R29 K55 ["PluginActions"]
      202 GETTABLEKS                       R30 R5 K56 ["Analytics"]
      204 SETTABLEKS                       R30 R29 K56 ["Analytics"]
      206 CALL                             R28 1 1
      207 MOVE                             R29 R27
      208 CALL                             R28 1 1
      209 MOVE                             R27 R28
      210 DUPCLOSURE                       R28 K58 [PROTO_19]
      211 DUPCLOSURE                       R29 K59 [PROTO_28]
      212 CAPTURE                          VAL R11
      213 CAPTURE                          VAL R9
      214 CAPTURE                          VAL R12
      215 CAPTURE                          VAL R13
      216 CAPTURE                          VAL R14
      217 CAPTURE                          VAL R15
      218 CAPTURE                          VAL R16
      219 CAPTURE                          VAL R17
      220 CAPTURE                          VAL R18
      221 GETTABLEKS                       R30 R3 K60 ["connect"]
      223 MOVE                             R31 R28
      224 MOVE                             R32 R29
      225 CALL                             R30 2 1
      226 MOVE                             R31 R27
      227 CALL                             R30 1 -1
      228 RETURN                           R30 -1
