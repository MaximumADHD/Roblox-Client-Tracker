PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["SETTINGS"]
        4 GETTABLEKS                       R3 R3 K1 ["TimelineUnit"]
        6 GETTABLEKS                       R4 R0 K2 ["Data"]
        8 NAMECALL                         R1 R1 K3 ["SetSetting"]
       10 CALL                             R1 3 0
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R1 R1 K4 ["SetTimelineUnit"]
       14 GETTABLEKS                       R2 R0 K2 ["Data"]
       16 CALL                             R1 1 0
       17 GETUPVAL                         R1 2
       18 GETTABLEKS                       R1 R1 K5 ["Analytics"]
       20 LOADK                            R3 K6 ["onTimeUnitChanged"]
       21 GETTABLEKS                       R4 R0 K2 ["Data"]
       23 NAMECALL                         R1 R1 K7 ["report"]
       25 CALL                             R1 3 0
       26 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        6 NAMECALL                         R3 R3 K3 ["get"]
        8 CALL                             R3 1 1
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          VAL R3
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          VAL R1
       13 DUPTABLE                         R5 K5 [{"Text"}]
       14 LOADK                            R8 K6 ["Settings"]
       15 LOADK                            R9 K7 ["TimelineUnit"]
       16 NAMECALL                         R6 R2 K8 ["getText"]
       18 CALL                             R6 3 1
       19 SETTABLEKS                       R6 R5 K4 ["Text"]
       21 GETUPVAL                         R6 0
       22 GETTABLEKS                       R6 R6 K9 ["TIMELINE_UNITS_ORDER"]
       24 LOADNIL                          R7
       25 LOADNIL                          R8
       26 FORGPREP                         R6
       27 DUPTABLE                         R13 K13 [{"Data", "Text", "Checked", "OnItemClicked"}]
       28 GETUPVAL                         R15 0
       29 GETTABLEKS                       R15 R15 K14 ["TIMELINE_UNITS"]
       31 GETTABLE                         R14 R15 R10
       32 SETTABLEKS                       R14 R13 K10 ["Data"]
       34 LOADK                            R16 K6 ["Settings"]
       35 GETUPVAL                         R18 0
       36 GETTABLEKS                       R18 R18 K14 ["TIMELINE_UNITS"]
       38 GETTABLE                         R17 R18 R10
       39 NAMECALL                         R14 R2 K8 ["getText"]
       41 CALL                             R14 3 1
       42 SETTABLEKS                       R14 R13 K4 ["Text"]
       44 GETTABLEKS                       R15 R1 K7 ["TimelineUnit"]
       46 JUMPIFEQ                         R15 R10 ; [+2]
       48 LOADB                            R14 0 +1
       49 LOADB                            R14 1
       50 SETTABLEKS                       R14 R13 K11 ["Checked"]
       52 SETTABLEKS                       R4 R13 K12 ["OnItemClicked"]
       54 FASTCALL2                        TABLE_INSERT R5 R13 ; [+4]
       56 MOVE                             R12 R5
       57 GETIMPORT                        R11 K17 [table.insert]
       59 CALL                             R11 2 0
       60 FORGLOOP                         R6 2 ; [-34]
       62 RETURN                           R5 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["SetPlaybackSpeed"]
        3 GETTABLEKS                       R2 R0 K1 ["Data"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnChangePlaybackSpeed"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["OnChangePlaybackSpeed"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["PlaybackSpeed"]
        6 LOADB                            R4 0
        7 GETIMPORT                        R5 K4 [pairs]
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R6 R6 K5 ["PLAYBACK_SPEEDS"]
       12 CALL                             R5 1 3
       13 FORGPREP_NEXT                    R5
       14 GETUPVAL                         R10 0
       15 GETTABLEKS                       R10 R10 K5 ["PLAYBACK_SPEEDS"]
       17 GETTABLEKS                       R10 R10 K6 ["CUSTOM"]
       19 JUMPIFEQ                         R9 R10 ; [+5]
       21 JUMPIFNOTEQ                      R3 R9 ; [+3]
       23 LOADB                            R4 1
       24 JUMP                             ; [+2]
       25 FORGLOOP                         R5 2 ; [-12]
       27 NEWCLOSURE                       R5 P0
       28 CAPTURE                          VAL R1
       29 NEWCLOSURE                       R6 P1
       30 CAPTURE                          VAL R1
       31 NEWTABLE                         R7 1 6
       33 LOADK                            R21 K7 ["Settings"]
       34 LOADK                            R22 K2 ["PlaybackSpeed"]
       35 NAMECALL                         R19 R2 K8 ["getText"]
       37 CALL                             R19 3 1
       38 MOVE                             R15 R19
       39 LOADK                            R16 K9 [": "]
       40 GETIMPORT                        R19 K12 [string.format]
       42 LOADK                            R20 K13 ["%.2f"]
       43 MOVE                             R21 R3
       44 CALL                             R19 2 1
       45 LOADK                            R21 K14 ["%.?0+$"]
       46 LOADK                            R22 K15 [""]
       47 NAMECALL                         R19 R19 K16 ["gsub"]
       49 CALL                             R19 3 1
       50 MOVE                             R17 R19
       51 LOADK                            R18 K17 ["x"]
       52 CONCAT                           R14 R15 R18
       53 SETTABLEKS                       R14 R7 K18 ["Text"]
       55 DUPTABLE                         R8 K22 [{"Data", "Text", "Checked", "OnItemClicked"}]
       56 GETUPVAL                         R9 0
       57 GETTABLEKS                       R9 R9 K5 ["PLAYBACK_SPEEDS"]
       59 GETTABLEKS                       R9 R9 K23 ["PBS_025"]
       61 SETTABLEKS                       R9 R8 K19 ["Data"]
       63 LOADK                            R11 K7 ["Settings"]
       64 LOADK                            R12 K24 ["025x"]
       65 NAMECALL                         R9 R2 K8 ["getText"]
       67 CALL                             R9 3 1
       68 SETTABLEKS                       R9 R8 K18 ["Text"]
       70 GETUPVAL                         R10 0
       71 GETTABLEKS                       R10 R10 K5 ["PLAYBACK_SPEEDS"]
       73 GETTABLEKS                       R10 R10 K23 ["PBS_025"]
       75 JUMPIFEQ                         R3 R10 ; [+2]
       77 LOADB                            R9 0 +1
       78 LOADB                            R9 1
       79 SETTABLEKS                       R9 R8 K20 ["Checked"]
       81 SETTABLEKS                       R5 R8 K21 ["OnItemClicked"]
       83 DUPTABLE                         R9 K22 [{"Data", "Text", "Checked", "OnItemClicked"}]
       84 GETUPVAL                         R10 0
       85 GETTABLEKS                       R10 R10 K5 ["PLAYBACK_SPEEDS"]
       87 GETTABLEKS                       R10 R10 K25 ["PBS_05"]
       89 SETTABLEKS                       R10 R9 K19 ["Data"]
       91 LOADK                            R12 K7 ["Settings"]
       92 LOADK                            R13 K26 ["05x"]
       93 NAMECALL                         R10 R2 K8 ["getText"]
       95 CALL                             R10 3 1
       96 SETTABLEKS                       R10 R9 K18 ["Text"]
       98 GETUPVAL                         R11 0
       99 GETTABLEKS                       R11 R11 K5 ["PLAYBACK_SPEEDS"]
      101 GETTABLEKS                       R11 R11 K25 ["PBS_05"]
      103 JUMPIFEQ                         R3 R11 ; [+2]
      105 LOADB                            R10 0 +1
      106 LOADB                            R10 1
      107 SETTABLEKS                       R10 R9 K20 ["Checked"]
      109 SETTABLEKS                       R5 R9 K21 ["OnItemClicked"]
      111 DUPTABLE                         R10 K22 [{"Data", "Text", "Checked", "OnItemClicked"}]
      112 GETUPVAL                         R11 0
      113 GETTABLEKS                       R11 R11 K5 ["PLAYBACK_SPEEDS"]
      115 GETTABLEKS                       R11 R11 K27 ["PBS_1"]
      117 SETTABLEKS                       R11 R10 K19 ["Data"]
      119 LOADK                            R13 K7 ["Settings"]
      120 LOADK                            R14 K28 ["1x"]
      121 NAMECALL                         R11 R2 K8 ["getText"]
      123 CALL                             R11 3 1
      124 SETTABLEKS                       R11 R10 K18 ["Text"]
      126 GETUPVAL                         R12 0
      127 GETTABLEKS                       R12 R12 K5 ["PLAYBACK_SPEEDS"]
      129 GETTABLEKS                       R12 R12 K27 ["PBS_1"]
      131 JUMPIFEQ                         R3 R12 ; [+2]
      133 LOADB                            R11 0 +1
      134 LOADB                            R11 1
      135 SETTABLEKS                       R11 R10 K20 ["Checked"]
      137 SETTABLEKS                       R5 R10 K21 ["OnItemClicked"]
      139 DUPTABLE                         R11 K22 [{"Data", "Text", "Checked", "OnItemClicked"}]
      140 GETUPVAL                         R12 0
      141 GETTABLEKS                       R12 R12 K5 ["PLAYBACK_SPEEDS"]
      143 GETTABLEKS                       R12 R12 K29 ["PBS_2"]
      145 SETTABLEKS                       R12 R11 K19 ["Data"]
      147 LOADK                            R14 K7 ["Settings"]
      148 LOADK                            R15 K30 ["2x"]
      149 NAMECALL                         R12 R2 K8 ["getText"]
      151 CALL                             R12 3 1
      152 SETTABLEKS                       R12 R11 K18 ["Text"]
      154 GETUPVAL                         R13 0
      155 GETTABLEKS                       R13 R13 K5 ["PLAYBACK_SPEEDS"]
      157 GETTABLEKS                       R13 R13 K29 ["PBS_2"]
      159 JUMPIFEQ                         R3 R13 ; [+2]
      161 LOADB                            R12 0 +1
      162 LOADB                            R12 1
      163 SETTABLEKS                       R12 R11 K20 ["Checked"]
      165 SETTABLEKS                       R5 R11 K21 ["OnItemClicked"]
      167 DUPTABLE                         R12 K22 [{"Data", "Text", "Checked", "OnItemClicked"}]
      168 GETUPVAL                         R13 0
      169 GETTABLEKS                       R13 R13 K5 ["PLAYBACK_SPEEDS"]
      171 GETTABLEKS                       R13 R13 K31 ["PBS_4"]
      173 SETTABLEKS                       R13 R12 K19 ["Data"]
      175 LOADK                            R15 K7 ["Settings"]
      176 LOADK                            R16 K32 ["4x"]
      177 NAMECALL                         R13 R2 K8 ["getText"]
      179 CALL                             R13 3 1
      180 SETTABLEKS                       R13 R12 K18 ["Text"]
      182 GETUPVAL                         R14 0
      183 GETTABLEKS                       R14 R14 K5 ["PLAYBACK_SPEEDS"]
      185 GETTABLEKS                       R14 R14 K31 ["PBS_4"]
      187 JUMPIFEQ                         R3 R14 ; [+2]
      189 LOADB                            R13 0 +1
      190 LOADB                            R13 1
      191 SETTABLEKS                       R13 R12 K20 ["Checked"]
      193 SETTABLEKS                       R5 R12 K21 ["OnItemClicked"]
      195 DUPTABLE                         R13 K33 [{"Text", "Checked", "OnItemClicked"}]
      196 LOADK                            R19 K7 ["Settings"]
      197 LOADK                            R20 K34 ["CustomPlaybackSpeed"]
      198 NAMECALL                         R17 R2 K8 ["getText"]
      200 CALL                             R17 3 1
      201 MOVE                             R15 R17
      202 LOADK                            R16 K35 ["..."]
      203 CONCAT                           R14 R15 R16
      204 SETTABLEKS                       R14 R13 K18 ["Text"]
      206 NOT                              R14 R4
      207 SETTABLEKS                       R14 R13 K20 ["Checked"]
      209 SETTABLEKS                       R6 R13 K21 ["OnItemClicked"]
      211 SETLIST                          R7 R8 6 [1]
      213 RETURN                           R7 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["SetFrameRate"]
        3 GETTABLEKS                       R2 R0 K1 ["Data"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnChangeFPS"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["OnChangeFPS"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["AnimationData"]
        6 JUMPIFNOT                        R3 ; [+3]
        7 GETTABLEKS                       R4 R3 K3 ["Metadata"]
        9 JUMPIF                           R4 ; [+12]
       10 DUPTABLE                         R4 K6 [{"Text", "Enabled"}]
       11 LOADK                            R7 K7 ["Settings"]
       12 LOADK                            R8 K8 ["FrameRate"]
       13 NAMECALL                         R5 R2 K9 ["getText"]
       15 CALL                             R5 3 1
       16 SETTABLEKS                       R5 R4 K4 ["Text"]
       18 LOADB                            R5 0
       19 SETTABLEKS                       R5 R4 K5 ["Enabled"]
       21 RETURN                           R4 1
       22 GETTABLEKS                       R4 R1 K8 ["FrameRate"]
       24 LOADB                            R5 0
       25 GETIMPORT                        R6 K11 [pairs]
       27 GETUPVAL                         R7 0
       28 GETTABLEKS                       R7 R7 K12 ["FRAMERATES"]
       30 CALL                             R6 1 3
       31 FORGPREP_NEXT                    R6
       32 GETUPVAL                         R11 0
       33 GETTABLEKS                       R11 R11 K12 ["FRAMERATES"]
       35 GETTABLEKS                       R11 R11 K13 ["CUSTOM"]
       37 JUMPIFEQ                         R10 R11 ; [+5]
       39 JUMPIFNOTEQ                      R10 R4 ; [+3]
       41 LOADB                            R5 1
       42 JUMP                             ; [+2]
       43 FORGLOOP                         R6 2 ; [-12]
       45 NEWCLOSURE                       R6 P0
       46 CAPTURE                          VAL R1
       47 NEWCLOSURE                       R7 P1
       48 CAPTURE                          VAL R1
       49 NEWTABLE                         R8 2 5
       51 LOADK                            R21 K7 ["Settings"]
       52 LOADK                            R22 K8 ["FrameRate"]
       53 NAMECALL                         R19 R2 K9 ["getText"]
       55 CALL                             R19 3 1
       56 MOVE                             R15 R19
       57 LOADK                            R16 K14 [": "]
       58 MOVE                             R17 R4
       59 LOADK                            R18 K15 [" fps"]
       60 CONCAT                           R14 R15 R18
       61 SETTABLEKS                       R14 R8 K4 ["Text"]
       63 LOADB                            R14 0
       64 SETTABLEKS                       R14 R8 K5 ["Enabled"]
       66 DUPTABLE                         R9 K19 [{"Data", "Text", "Checked", "OnItemClicked"}]
       67 GETUPVAL                         R10 0
       68 GETTABLEKS                       R10 R10 K12 ["FRAMERATES"]
       70 GETTABLEKS                       R10 R10 K20 ["FPS_24"]
       72 SETTABLEKS                       R10 R9 K16 ["Data"]
       74 LOADK                            R12 K7 ["Settings"]
       75 LOADK                            R13 K21 ["24FPS"]
       76 NAMECALL                         R10 R2 K9 ["getText"]
       78 CALL                             R10 3 1
       79 SETTABLEKS                       R10 R9 K4 ["Text"]
       81 GETUPVAL                         R11 0
       82 GETTABLEKS                       R11 R11 K12 ["FRAMERATES"]
       84 GETTABLEKS                       R11 R11 K20 ["FPS_24"]
       86 JUMPIFEQ                         R4 R11 ; [+2]
       88 LOADB                            R10 0 +1
       89 LOADB                            R10 1
       90 SETTABLEKS                       R10 R9 K17 ["Checked"]
       92 SETTABLEKS                       R6 R9 K18 ["OnItemClicked"]
       94 DUPTABLE                         R10 K19 [{"Data", "Text", "Checked", "OnItemClicked"}]
       95 GETUPVAL                         R11 0
       96 GETTABLEKS                       R11 R11 K12 ["FRAMERATES"]
       98 GETTABLEKS                       R11 R11 K22 ["FPS_30"]
      100 SETTABLEKS                       R11 R10 K16 ["Data"]
      102 LOADK                            R13 K7 ["Settings"]
      103 LOADK                            R14 K23 ["30FPS"]
      104 NAMECALL                         R11 R2 K9 ["getText"]
      106 CALL                             R11 3 1
      107 SETTABLEKS                       R11 R10 K4 ["Text"]
      109 GETUPVAL                         R12 0
      110 GETTABLEKS                       R12 R12 K12 ["FRAMERATES"]
      112 GETTABLEKS                       R12 R12 K22 ["FPS_30"]
      114 JUMPIFEQ                         R4 R12 ; [+2]
      116 LOADB                            R11 0 +1
      117 LOADB                            R11 1
      118 SETTABLEKS                       R11 R10 K17 ["Checked"]
      120 SETTABLEKS                       R6 R10 K18 ["OnItemClicked"]
      122 DUPTABLE                         R11 K19 [{"Data", "Text", "Checked", "OnItemClicked"}]
      123 GETUPVAL                         R12 0
      124 GETTABLEKS                       R12 R12 K12 ["FRAMERATES"]
      126 GETTABLEKS                       R12 R12 K24 ["FPS_60"]
      128 SETTABLEKS                       R12 R11 K16 ["Data"]
      130 LOADK                            R14 K7 ["Settings"]
      131 LOADK                            R15 K25 ["60FPS"]
      132 NAMECALL                         R12 R2 K9 ["getText"]
      134 CALL                             R12 3 1
      135 SETTABLEKS                       R12 R11 K4 ["Text"]
      137 GETUPVAL                         R13 0
      138 GETTABLEKS                       R13 R13 K12 ["FRAMERATES"]
      140 GETTABLEKS                       R13 R13 K24 ["FPS_60"]
      142 JUMPIFEQ                         R4 R13 ; [+2]
      144 LOADB                            R12 0 +1
      145 LOADB                            R12 1
      146 SETTABLEKS                       R12 R11 K17 ["Checked"]
      148 SETTABLEKS                       R6 R11 K18 ["OnItemClicked"]
      150 DUPTABLE                         R12 K19 [{"Data", "Text", "Checked", "OnItemClicked"}]
      151 GETUPVAL                         R13 0
      152 GETTABLEKS                       R13 R13 K12 ["FRAMERATES"]
      154 GETTABLEKS                       R13 R13 K26 ["FPS_120"]
      156 SETTABLEKS                       R13 R12 K16 ["Data"]
      158 LOADK                            R15 K7 ["Settings"]
      159 LOADK                            R16 K27 ["120FPS"]
      160 NAMECALL                         R13 R2 K9 ["getText"]
      162 CALL                             R13 3 1
      163 SETTABLEKS                       R13 R12 K4 ["Text"]
      165 GETUPVAL                         R14 0
      166 GETTABLEKS                       R14 R14 K12 ["FRAMERATES"]
      168 GETTABLEKS                       R14 R14 K26 ["FPS_120"]
      170 JUMPIFEQ                         R4 R14 ; [+2]
      172 LOADB                            R13 0 +1
      173 LOADB                            R13 1
      174 SETTABLEKS                       R13 R12 K17 ["Checked"]
      176 SETTABLEKS                       R6 R12 K18 ["OnItemClicked"]
      178 DUPTABLE                         R13 K28 [{"Text", "Checked", "OnItemClicked"}]
      179 LOADK                            R19 K7 ["Settings"]
      180 LOADK                            R20 K29 ["CustomFPS"]
      181 NAMECALL                         R17 R2 K9 ["getText"]
      183 CALL                             R17 3 1
      184 MOVE                             R15 R17
      185 LOADK                            R16 K30 ["..."]
      186 CONCAT                           R14 R15 R16
      187 SETTABLEKS                       R14 R13 K4 ["Text"]
      189 NOT                              R14 R5
      190 SETTABLEKS                       R14 R13 K17 ["Checked"]
      192 SETTABLEKS                       R7 R13 K18 ["OnItemClicked"]
      194 SETLIST                          R8 R9 5 [1]
      196 RETURN                           R8 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["SetGridSpeed"]
        3 GETTABLEKS                       R2 R0 K1 ["Data"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnChangeGridSpeed"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["OnChangeGridSpeed"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["GridSpeed"]
        6 LOADB                            R4 1
        7 GETIMPORT                        R5 K4 [pairs]
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R6 R6 K5 ["GRIDSPEEDS"]
       12 CALL                             R5 1 3
       13 FORGPREP_NEXT                    R5
       14 JUMPIFNOTEQ                      R9 R3 ; [+9]
       16 GETUPVAL                         R10 0
       17 GETTABLEKS                       R10 R10 K5 ["GRIDSPEEDS"]
       19 GETTABLEKS                       R10 R10 K6 ["Custom"]
       21 JUMPIFEQ                         R9 R10 ; [+2]
       23 LOADB                            R4 0
       24 FORGLOOP                         R5 2 ; [-11]
       26 NEWCLOSURE                       R5 P0
       27 CAPTURE                          VAL R1
       28 NEWCLOSURE                       R6 P1
       29 CAPTURE                          VAL R1
       30 MOVE                             R7 R3
       31 GETTABLEKS                       R8 R1 K7 ["RootInstance"]
       33 JUMPIFNOT                        R8 ; [+6]
       34 GETTABLEKS                       R8 R1 K7 ["RootInstance"]
       36 LOADK                            R10 K8 ["Humanoid"]
       37 NAMECALL                         R8 R8 K9 ["FindFirstChildOfClass"]
       39 CALL                             R8 2 1
       40 GETUPVAL                         R9 0
       41 GETTABLEKS                       R9 R9 K5 ["GRIDSPEEDS"]
       43 GETTABLEKS                       R9 R9 K10 ["FromRig"]
       45 JUMPIFNOTEQ                      R7 R9 ; [+6]
       47 JUMPIFNOT                        R8 ; [+3]
       48 GETTABLEKS                       R7 R8 K11 ["WalkSpeed"]
       50 JUMP                             ; [+1]
       51 LOADN                            R7 0
       52 NEWTABLE                         R9 2 2
       54 LOADK                            R14 K12 ["Settings"]
       55 LOADK                            R15 K2 ["GridSpeed"]
       56 DUPTABLE                         R16 K14 [{"speed"}]
       57 SETTABLEKS                       R7 R16 K13 ["speed"]
       59 NAMECALL                         R12 R2 K15 ["getText"]
       61 CALL                             R12 4 1
       62 SETTABLEKS                       R12 R9 K16 ["Text"]
       64 LOADB                            R12 0
       65 SETTABLEKS                       R12 R9 K17 ["Enabled"]
       67 DUPTABLE                         R10 K21 [{"Data", "Text", "Checked", "OnItemClicked"}]
       68 GETUPVAL                         R11 0
       69 GETTABLEKS                       R11 R11 K5 ["GRIDSPEEDS"]
       71 GETTABLEKS                       R11 R11 K22 ["Static"]
       73 SETTABLEKS                       R11 R10 K18 ["Data"]
       75 LOADK                            R13 K12 ["Settings"]
       76 LOADK                            R14 K23 ["GridSpeedStatic"]
       77 NAMECALL                         R11 R2 K15 ["getText"]
       79 CALL                             R11 3 1
       80 SETTABLEKS                       R11 R10 K16 ["Text"]
       82 GETUPVAL                         R12 0
       83 GETTABLEKS                       R12 R12 K5 ["GRIDSPEEDS"]
       85 GETTABLEKS                       R12 R12 K22 ["Static"]
       87 JUMPIFEQ                         R3 R12 ; [+2]
       89 LOADB                            R11 0 +1
       90 LOADB                            R11 1
       91 SETTABLEKS                       R11 R10 K19 ["Checked"]
       93 SETTABLEKS                       R5 R10 K20 ["OnItemClicked"]
       95 DUPTABLE                         R11 K21 [{"Data", "Text", "Checked", "OnItemClicked"}]
       96 GETUPVAL                         R12 0
       97 GETTABLEKS                       R12 R12 K5 ["GRIDSPEEDS"]
       99 GETTABLEKS                       R12 R12 K24 ["Default"]
      101 SETTABLEKS                       R12 R11 K18 ["Data"]
      103 LOADK                            R14 K12 ["Settings"]
      104 LOADK                            R15 K25 ["GridSpeedDefault"]
      105 NAMECALL                         R12 R2 K15 ["getText"]
      107 CALL                             R12 3 1
      108 SETTABLEKS                       R12 R11 K16 ["Text"]
      110 GETUPVAL                         R13 0
      111 GETTABLEKS                       R13 R13 K5 ["GRIDSPEEDS"]
      113 GETTABLEKS                       R13 R13 K24 ["Default"]
      115 JUMPIFEQ                         R3 R13 ; [+2]
      117 LOADB                            R12 0 +1
      118 LOADB                            R12 1
      119 SETTABLEKS                       R12 R11 K19 ["Checked"]
      121 SETTABLEKS                       R5 R11 K20 ["OnItemClicked"]
      123 SETLIST                          R9 R10 2 [1]
      125 JUMPIFNOT                        R8 ; [+34]
      126 DUPTABLE                         R12 K21 [{"Data", "Text", "Checked", "OnItemClicked"}]
      127 GETUPVAL                         R13 0
      128 GETTABLEKS                       R13 R13 K5 ["GRIDSPEEDS"]
      130 GETTABLEKS                       R13 R13 K10 ["FromRig"]
      132 SETTABLEKS                       R13 R12 K18 ["Data"]
      134 LOADK                            R15 K12 ["Settings"]
      135 LOADK                            R16 K26 ["GridSpeedFromRig"]
      136 NAMECALL                         R13 R2 K15 ["getText"]
      138 CALL                             R13 3 1
      139 SETTABLEKS                       R13 R12 K16 ["Text"]
      141 GETUPVAL                         R14 0
      142 GETTABLEKS                       R14 R14 K5 ["GRIDSPEEDS"]
      144 GETTABLEKS                       R14 R14 K10 ["FromRig"]
      146 JUMPIFEQ                         R3 R14 ; [+2]
      148 LOADB                            R13 0 +1
      149 LOADB                            R13 1
      150 SETTABLEKS                       R13 R12 K19 ["Checked"]
      152 SETTABLEKS                       R5 R12 K20 ["OnItemClicked"]
      154 FASTCALL2                        TABLE_INSERT R9 R12 ; [+4]
      156 MOVE                             R11 R9
      157 GETIMPORT                        R10 K29 [table.insert]
      159 CALL                             R10 2 0
      160 DUPTABLE                         R12 K21 [{"Data", "Text", "Checked", "OnItemClicked"}]
      161 GETUPVAL                         R13 0
      162 GETTABLEKS                       R13 R13 K5 ["GRIDSPEEDS"]
      164 GETTABLEKS                       R13 R13 K6 ["Custom"]
      166 SETTABLEKS                       R13 R12 K18 ["Data"]
      168 LOADK                            R15 K12 ["Settings"]
      169 LOADK                            R16 K30 ["GridSpeedCustom"]
      170 NAMECALL                         R13 R2 K15 ["getText"]
      172 CALL                             R13 3 1
      173 SETTABLEKS                       R13 R12 K16 ["Text"]
      175 SETTABLEKS                       R4 R12 K19 ["Checked"]
      177 SETTABLEKS                       R6 R12 K20 ["OnItemClicked"]
      179 FASTCALL2                        TABLE_INSERT R9 R12 ; [+4]
      181 MOVE                             R11 R9
      182 GETIMPORT                        R10 K29 [table.insert]
      184 CALL                             R10 2 0
      185 RETURN                           R9 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["SETTINGS"]
        4 GETTABLEKS                       R3 R3 K1 ["SnapMode"]
        6 GETTABLEKS                       R4 R0 K2 ["Data"]
        8 NAMECALL                         R1 R1 K3 ["SetSetting"]
       10 CALL                             R1 3 0
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R1 R1 K4 ["SetSnapMode"]
       14 GETTABLEKS                       R2 R0 K2 ["Data"]
       16 CALL                             R1 1 0
       17 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        6 NAMECALL                         R3 R3 K3 ["get"]
        8 CALL                             R3 1 1
        9 GETTABLEKS                       R4 R1 K4 ["SnapMode"]
       11 NEWCLOSURE                       R5 P0
       12 CAPTURE                          VAL R3
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          VAL R1
       15 NEWTABLE                         R6 1 3
       17 LOADK                            R12 K5 ["Settings"]
       18 LOADK                            R13 K4 ["SnapMode"]
       19 NAMECALL                         R10 R2 K6 ["getText"]
       21 CALL                             R10 3 1
       22 SETTABLEKS                       R10 R6 K7 ["Text"]
       24 DUPTABLE                         R7 K11 [{"Data", "Text", "Checked", "OnItemClicked"}]
       25 GETUPVAL                         R8 0
       26 GETTABLEKS                       R8 R8 K12 ["SNAP_MODES"]
       28 GETTABLEKS                       R8 R8 K13 ["Keyframes"]
       30 SETTABLEKS                       R8 R7 K8 ["Data"]
       32 LOADK                            R10 K5 ["Settings"]
       33 LOADK                            R11 K14 ["SnapKeyframes"]
       34 NAMECALL                         R8 R2 K6 ["getText"]
       36 CALL                             R8 3 1
       37 SETTABLEKS                       R8 R7 K7 ["Text"]
       39 GETUPVAL                         R9 0
       40 GETTABLEKS                       R9 R9 K12 ["SNAP_MODES"]
       42 GETTABLEKS                       R9 R9 K13 ["Keyframes"]
       44 JUMPIFEQ                         R4 R9 ; [+2]
       46 LOADB                            R8 0 +1
       47 LOADB                            R8 1
       48 SETTABLEKS                       R8 R7 K9 ["Checked"]
       50 SETTABLEKS                       R5 R7 K10 ["OnItemClicked"]
       52 DUPTABLE                         R8 K11 [{"Data", "Text", "Checked", "OnItemClicked"}]
       53 GETUPVAL                         R9 0
       54 GETTABLEKS                       R9 R9 K12 ["SNAP_MODES"]
       56 GETTABLEKS                       R9 R9 K15 ["Frames"]
       58 SETTABLEKS                       R9 R8 K8 ["Data"]
       60 LOADK                            R11 K5 ["Settings"]
       61 LOADK                            R12 K16 ["SnapFrames"]
       62 NAMECALL                         R9 R2 K6 ["getText"]
       64 CALL                             R9 3 1
       65 SETTABLEKS                       R9 R8 K7 ["Text"]
       67 GETUPVAL                         R10 0
       68 GETTABLEKS                       R10 R10 K12 ["SNAP_MODES"]
       70 GETTABLEKS                       R10 R10 K15 ["Frames"]
       72 JUMPIFEQ                         R4 R10 ; [+2]
       74 LOADB                            R9 0 +1
       75 LOADB                            R9 1
       76 SETTABLEKS                       R9 R8 K9 ["Checked"]
       78 SETTABLEKS                       R5 R8 K10 ["OnItemClicked"]
       80 DUPTABLE                         R9 K11 [{"Data", "Text", "Checked", "OnItemClicked"}]
       81 GETUPVAL                         R10 0
       82 GETTABLEKS                       R10 R10 K12 ["SNAP_MODES"]
       84 GETTABLEKS                       R10 R10 K17 ["None"]
       86 SETTABLEKS                       R10 R9 K8 ["Data"]
       88 LOADK                            R12 K5 ["Settings"]
       89 LOADK                            R13 K18 ["SnapNone"]
       90 NAMECALL                         R10 R2 K6 ["getText"]
       92 CALL                             R10 3 1
       93 SETTABLEKS                       R10 R9 K7 ["Text"]
       95 GETUPVAL                         R11 0
       96 GETTABLEKS                       R11 R11 K12 ["SNAP_MODES"]
       98 GETTABLEKS                       R11 R11 K17 ["None"]
      100 JUMPIFEQ                         R4 R11 ; [+2]
      102 LOADB                            R10 0 +1
      103 LOADB                            R10 1
      104 SETTABLEKS                       R10 R9 K9 ["Checked"]
      106 SETTABLEKS                       R5 R9 K10 ["OnItemClicked"]
      108 SETLIST                          R6 R7 3 [1]
      110 RETURN                           R6 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["SETTINGS"]
        4 GETTABLEKS                       R3 R3 K1 ["RotationType"]
        6 GETTABLEKS                       R4 R0 K2 ["Data"]
        8 NAMECALL                         R1 R1 K3 ["SetSetting"]
       10 CALL                             R1 3 0
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R1 R1 K4 ["SetDefaultRotationType"]
       14 GETTABLEKS                       R2 R0 K2 ["Data"]
       16 CALL                             R1 1 0
       17 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        6 NAMECALL                         R3 R3 K3 ["get"]
        8 CALL                             R3 1 1
        9 GETTABLEKS                       R4 R1 K4 ["DefaultRotationType"]
       11 NEWCLOSURE                       R5 P0
       12 CAPTURE                          VAL R3
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          VAL R1
       15 NEWTABLE                         R6 1 2
       17 LOADK                            R11 K5 ["Settings"]
       18 LOADK                            R12 K4 ["DefaultRotationType"]
       19 NAMECALL                         R9 R2 K6 ["getText"]
       21 CALL                             R9 3 1
       22 SETTABLEKS                       R9 R6 K7 ["Text"]
       24 DUPTABLE                         R7 K11 [{"Data", "Text", "Checked", "OnItemClicked"}]
       25 GETUPVAL                         R8 0
       26 GETTABLEKS                       R8 R8 K12 ["TRACK_TYPES"]
       28 GETTABLEKS                       R8 R8 K13 ["EulerAngles"]
       30 SETTABLEKS                       R8 R7 K8 ["Data"]
       32 LOADK                            R10 K5 ["Settings"]
       33 LOADK                            R11 K13 ["EulerAngles"]
       34 NAMECALL                         R8 R2 K6 ["getText"]
       36 CALL                             R8 3 1
       37 SETTABLEKS                       R8 R7 K7 ["Text"]
       39 GETUPVAL                         R9 0
       40 GETTABLEKS                       R9 R9 K12 ["TRACK_TYPES"]
       42 GETTABLEKS                       R9 R9 K13 ["EulerAngles"]
       44 JUMPIFEQ                         R4 R9 ; [+2]
       46 LOADB                            R8 0 +1
       47 LOADB                            R8 1
       48 SETTABLEKS                       R8 R7 K9 ["Checked"]
       50 SETTABLEKS                       R5 R7 K10 ["OnItemClicked"]
       52 DUPTABLE                         R8 K11 [{"Data", "Text", "Checked", "OnItemClicked"}]
       53 GETUPVAL                         R9 0
       54 GETTABLEKS                       R9 R9 K12 ["TRACK_TYPES"]
       56 GETTABLEKS                       R9 R9 K14 ["Quaternion"]
       58 SETTABLEKS                       R9 R8 K8 ["Data"]
       60 LOADK                            R11 K5 ["Settings"]
       61 LOADK                            R12 K15 ["Quaternions"]
       62 NAMECALL                         R9 R2 K6 ["getText"]
       64 CALL                             R9 3 1
       65 SETTABLEKS                       R9 R8 K7 ["Text"]
       67 GETUPVAL                         R10 0
       68 GETTABLEKS                       R10 R10 K12 ["TRACK_TYPES"]
       70 GETTABLEKS                       R10 R10 K14 ["Quaternion"]
       72 JUMPIFEQ                         R4 R10 ; [+2]
       74 LOADB                            R9 0 +1
       75 LOADB                            R9 1
       76 SETTABLEKS                       R9 R8 K9 ["Checked"]
       78 SETTABLEKS                       R5 R8 K10 ["OnItemClicked"]
       80 SETLIST                          R6 R7 2 [1]
       82 RETURN                           R6 1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["SETTINGS"]
        4 GETTABLEKS                       R3 R3 K1 ["EulerAnglesOrder"]
        6 GETTABLEKS                       R4 R0 K2 ["Data"]
        8 NAMECALL                         R1 R1 K3 ["SetSetting"]
       10 CALL                             R1 3 0
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R1 R1 K4 ["SetDefaultEulerAnglesOrder"]
       14 GETTABLEKS                       R2 R0 K2 ["Data"]
       16 CALL                             R1 1 0
       17 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        6 NAMECALL                         R3 R3 K3 ["get"]
        8 CALL                             R3 1 1
        9 GETTABLEKS                       R4 R1 K4 ["DefaultEulerAnglesOrder"]
       11 NEWCLOSURE                       R5 P0
       12 CAPTURE                          VAL R3
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          VAL R1
       15 NEWTABLE                         R6 1 6
       17 LOADK                            R15 K5 ["Settings"]
       18 LOADK                            R16 K4 ["DefaultEulerAnglesOrder"]
       19 NAMECALL                         R13 R2 K6 ["getText"]
       21 CALL                             R13 3 1
       22 SETTABLEKS                       R13 R6 K7 ["Text"]
       24 DUPTABLE                         R7 K11 [{"Data", "Text", "Checked", "OnItemClicked"}]
       25 GETIMPORT                        R8 K15 [Enum.RotationOrder.XYZ]
       27 SETTABLEKS                       R8 R7 K8 ["Data"]
       29 LOADK                            R10 K5 ["Settings"]
       30 LOADK                            R11 K14 ["XYZ"]
       31 NAMECALL                         R8 R2 K6 ["getText"]
       33 CALL                             R8 3 1
       34 SETTABLEKS                       R8 R7 K7 ["Text"]
       36 GETIMPORT                        R9 K15 [Enum.RotationOrder.XYZ]
       38 JUMPIFEQ                         R4 R9 ; [+2]
       40 LOADB                            R8 0 +1
       41 LOADB                            R8 1
       42 SETTABLEKS                       R8 R7 K9 ["Checked"]
       44 SETTABLEKS                       R5 R7 K10 ["OnItemClicked"]
       46 DUPTABLE                         R8 K11 [{"Data", "Text", "Checked", "OnItemClicked"}]
       47 GETIMPORT                        R9 K17 [Enum.RotationOrder.XZY]
       49 SETTABLEKS                       R9 R8 K8 ["Data"]
       51 LOADK                            R11 K5 ["Settings"]
       52 LOADK                            R12 K16 ["XZY"]
       53 NAMECALL                         R9 R2 K6 ["getText"]
       55 CALL                             R9 3 1
       56 SETTABLEKS                       R9 R8 K7 ["Text"]
       58 GETIMPORT                        R10 K17 [Enum.RotationOrder.XZY]
       60 JUMPIFEQ                         R4 R10 ; [+2]
       62 LOADB                            R9 0 +1
       63 LOADB                            R9 1
       64 SETTABLEKS                       R9 R8 K9 ["Checked"]
       66 SETTABLEKS                       R5 R8 K10 ["OnItemClicked"]
       68 DUPTABLE                         R9 K11 [{"Data", "Text", "Checked", "OnItemClicked"}]
       69 GETIMPORT                        R10 K19 [Enum.RotationOrder.YXZ]
       71 SETTABLEKS                       R10 R9 K8 ["Data"]
       73 LOADK                            R12 K5 ["Settings"]
       74 LOADK                            R13 K18 ["YXZ"]
       75 NAMECALL                         R10 R2 K6 ["getText"]
       77 CALL                             R10 3 1
       78 SETTABLEKS                       R10 R9 K7 ["Text"]
       80 GETIMPORT                        R11 K19 [Enum.RotationOrder.YXZ]
       82 JUMPIFEQ                         R4 R11 ; [+2]
       84 LOADB                            R10 0 +1
       85 LOADB                            R10 1
       86 SETTABLEKS                       R10 R9 K9 ["Checked"]
       88 SETTABLEKS                       R5 R9 K10 ["OnItemClicked"]
       90 DUPTABLE                         R10 K11 [{"Data", "Text", "Checked", "OnItemClicked"}]
       91 GETIMPORT                        R11 K21 [Enum.RotationOrder.YZX]
       93 SETTABLEKS                       R11 R10 K8 ["Data"]
       95 LOADK                            R13 K5 ["Settings"]
       96 LOADK                            R14 K20 ["YZX"]
       97 NAMECALL                         R11 R2 K6 ["getText"]
       99 CALL                             R11 3 1
      100 SETTABLEKS                       R11 R10 K7 ["Text"]
      102 GETIMPORT                        R12 K21 [Enum.RotationOrder.YZX]
      104 JUMPIFEQ                         R4 R12 ; [+2]
      106 LOADB                            R11 0 +1
      107 LOADB                            R11 1
      108 SETTABLEKS                       R11 R10 K9 ["Checked"]
      110 SETTABLEKS                       R5 R10 K10 ["OnItemClicked"]
      112 DUPTABLE                         R11 K11 [{"Data", "Text", "Checked", "OnItemClicked"}]
      113 GETIMPORT                        R12 K23 [Enum.RotationOrder.ZXY]
      115 SETTABLEKS                       R12 R11 K8 ["Data"]
      117 LOADK                            R14 K5 ["Settings"]
      118 LOADK                            R15 K22 ["ZXY"]
      119 NAMECALL                         R12 R2 K6 ["getText"]
      121 CALL                             R12 3 1
      122 SETTABLEKS                       R12 R11 K7 ["Text"]
      124 GETIMPORT                        R13 K23 [Enum.RotationOrder.ZXY]
      126 JUMPIFEQ                         R4 R13 ; [+2]
      128 LOADB                            R12 0 +1
      129 LOADB                            R12 1
      130 SETTABLEKS                       R12 R11 K9 ["Checked"]
      132 SETTABLEKS                       R5 R11 K10 ["OnItemClicked"]
      134 DUPTABLE                         R12 K11 [{"Data", "Text", "Checked", "OnItemClicked"}]
      135 GETIMPORT                        R13 K25 [Enum.RotationOrder.ZYX]
      137 SETTABLEKS                       R13 R12 K8 ["Data"]
      139 LOADK                            R15 K5 ["Settings"]
      140 LOADK                            R16 K24 ["ZYX"]
      141 NAMECALL                         R13 R2 K6 ["getText"]
      143 CALL                             R13 3 1
      144 SETTABLEKS                       R13 R12 K7 ["Text"]
      146 GETIMPORT                        R14 K25 [Enum.RotationOrder.ZYX]
      148 JUMPIFEQ                         R4 R14 ; [+2]
      150 LOADB                            R13 0 +1
      151 LOADB                            R13 1
      152 SETTABLEKS                       R13 R12 K9 ["Checked"]
      154 SETTABLEKS                       R5 R12 K10 ["OnItemClicked"]
      156 SETLIST                          R6 R7 6 [1]
      158 RETURN                           R6 1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["SetShowEvents"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["ShowEvents"]
        6 NOT                              R1 R2
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          VAL R1
        6 DUPTABLE                         R4 K5 [{"Text", "Checked", "OnItemClicked"}]
        7 LOADK                            R7 K6 ["Settings"]
        8 LOADK                            R8 K7 ["ShowEvents"]
        9 NAMECALL                         R5 R2 K8 ["getText"]
       11 CALL                             R5 3 1
       12 SETTABLEKS                       R5 R4 K2 ["Text"]
       14 GETTABLEKS                       R5 R1 K7 ["ShowEvents"]
       16 SETTABLEKS                       R5 R4 K3 ["Checked"]
       18 SETTABLEKS                       R3 R4 K4 ["OnItemClicked"]
       20 RETURN                           R4 1

PROTO_19:
        0 NEWTABLE                         R1 0 11
        2 NAMECALL                         R2 R0 K0 ["makeTimelineUnitMenu"]
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["MENU_SEPARATOR"]
        8 NAMECALL                         R4 R0 K2 ["makeFrameRateMenu"]
       10 CALL                             R4 1 1
       11 NAMECALL                         R5 R0 K3 ["makePlaybackSpeedMenu"]
       13 CALL                             R5 1 1
       14 NAMECALL                         R6 R0 K4 ["makeGridSpeedMenu"]
       16 CALL                             R6 1 1
       17 GETUPVAL                         R7 0
       18 GETTABLEKS                       R7 R7 K1 ["MENU_SEPARATOR"]
       20 NAMECALL                         R8 R0 K5 ["makeShowEvents"]
       22 CALL                             R8 1 1
       23 NAMECALL                         R9 R0 K6 ["makeSnapMenu"]
       25 CALL                             R9 1 1
       26 GETUPVAL                         R10 0
       27 GETTABLEKS                       R10 R10 K1 ["MENU_SEPARATOR"]
       29 NAMECALL                         R11 R0 K7 ["makeDefaultRotationTypeMenu"]
       31 CALL                             R11 1 1
       32 NAMECALL                         R12 R0 K8 ["makeEulerAnglesOrderMenu"]
       34 CALL                             R12 1 -1
       35 SETLIST                          R1 R2 -1 [1]
       37 RETURN                           R1 1

PROTO_20:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["ShowMenu"]
        4 JUMPIFNOT                        R2 ; [+16]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K2 ["createElement"]
        8 GETUPVAL                         R4 1
        9 DUPTABLE                         R5 K5 [{"Actions", "OnMenuOpened"}]
       10 NAMECALL                         R6 R0 K6 ["makeMenuActions"]
       12 CALL                             R6 1 1
       13 SETTABLEKS                       R6 R5 K3 ["Actions"]
       15 GETTABLEKS                       R6 R1 K4 ["OnMenuOpened"]
       17 SETTABLEKS                       R6 R5 K4 ["OnMenuOpened"]
       19 CALL                             R3 2 1
       20 JUMPIF                           R3 ; [+1]
       21 LOADNIL                          R3
       22 RETURN                           R3 1

PROTO_21:
        0 GETTABLEKS                       R1 R0 K0 ["Status"]
        2 DUPTABLE                         R2 K12 [{"Analytics", "AnimationData", "DefaultEulerAnglesOrder", "DefaultRotationType", "FrameRate", "GridSpeed", "PlaybackSpeed", "RootInstance", "ShowEvents", "SnapMode", "TimelineUnit"}]
        3 GETTABLEKS                       R3 R0 K1 ["Analytics"]
        5 SETTABLEKS                       R3 R2 K1 ["Analytics"]
        7 GETTABLEKS                       R3 R0 K2 ["AnimationData"]
        9 SETTABLEKS                       R3 R2 K2 ["AnimationData"]
       11 GETTABLEKS                       R3 R1 K3 ["DefaultEulerAnglesOrder"]
       13 SETTABLEKS                       R3 R2 K3 ["DefaultEulerAnglesOrder"]
       15 GETTABLEKS                       R3 R1 K4 ["DefaultRotationType"]
       17 SETTABLEKS                       R3 R2 K4 ["DefaultRotationType"]
       19 GETTABLEKS                       R3 R1 K5 ["FrameRate"]
       21 SETTABLEKS                       R3 R2 K5 ["FrameRate"]
       23 GETTABLEKS                       R3 R1 K6 ["GridSpeed"]
       25 SETTABLEKS                       R3 R2 K6 ["GridSpeed"]
       27 GETTABLEKS                       R3 R1 K7 ["PlaybackSpeed"]
       29 SETTABLEKS                       R3 R2 K7 ["PlaybackSpeed"]
       31 GETTABLEKS                       R3 R1 K8 ["RootInstance"]
       33 SETTABLEKS                       R3 R2 K8 ["RootInstance"]
       35 GETTABLEKS                       R3 R1 K9 ["ShowEvents"]
       37 SETTABLEKS                       R3 R2 K9 ["ShowEvents"]
       39 GETTABLEKS                       R3 R1 K10 ["SnapMode"]
       41 SETTABLEKS                       R3 R2 K10 ["SnapMode"]
       43 GETTABLEKS                       R3 R1 K11 ["TimelineUnit"]
       45 SETTABLEKS                       R3 R2 K11 ["TimelineUnit"]
       47 RETURN                           R2 1

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_30:
        0 DUPTABLE                         R1 K8 [{"SetDefaultEulerAnglesOrder", "SetDefaultRotationType", "SetFrameRate", "SetGridSpeed", "SetPlaybackSpeed", "SetShowEvents", "SetSnapMode", "SetTimelineUnit"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["SetDefaultEulerAnglesOrder"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["SetDefaultRotationType"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["SetFrameRate"]
       16 NEWCLOSURE                       R2 P3
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U3
       19 SETTABLEKS                       R2 R1 K3 ["SetGridSpeed"]
       21 NEWCLOSURE                       R2 P4
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U4
       24 SETTABLEKS                       R2 R1 K4 ["SetPlaybackSpeed"]
       26 NEWCLOSURE                       R2 P5
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U5
       29 SETTABLEKS                       R2 R1 K5 ["SetShowEvents"]
       31 NEWCLOSURE                       R2 P6
       32 CAPTURE                          VAL R0
       33 CAPTURE                          UPVAL U6
       34 SETTABLEKS                       R2 R1 K6 ["SetSnapMode"]
       36 NEWCLOSURE                       R2 P7
       37 CAPTURE                          VAL R0
       38 CAPTURE                          UPVAL U7
       39 SETTABLEKS                       R2 R1 K7 ["SetTimelineUnit"]
       41 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["RoactRodux"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["withContext"]
       32 GETTABLEKS                       R6 R0 K12 ["Src"]
       34 GETTABLEKS                       R6 R6 K13 ["Actions"]
       36 GETIMPORT                        R7 K5 [require]
       38 GETTABLEKS                       R8 R6 K14 ["SetDefaultEulerAnglesOrder"]
       40 CALL                             R7 1 1
       41 GETIMPORT                        R8 K5 [require]
       43 GETTABLEKS                       R9 R6 K15 ["SetDefaultRotationType"]
       45 CALL                             R8 1 1
       46 GETIMPORT                        R9 K5 [require]
       48 GETTABLEKS                       R10 R6 K16 ["SetFrameRate"]
       50 CALL                             R9 1 1
       51 GETIMPORT                        R10 K5 [require]
       53 GETTABLEKS                       R11 R6 K17 ["SetGridSpeed"]
       55 CALL                             R10 1 1
       56 GETIMPORT                        R11 K5 [require]
       58 GETTABLEKS                       R12 R6 K18 ["SetShowEvents"]
       60 CALL                             R11 1 1
       61 GETIMPORT                        R12 K5 [require]
       63 GETTABLEKS                       R13 R6 K19 ["SetSnapMode"]
       65 CALL                             R12 1 1
       66 GETIMPORT                        R13 K5 [require]
       68 GETTABLEKS                       R14 R6 K20 ["SetTimelineUnit"]
       70 CALL                             R13 1 1
       71 GETIMPORT                        R14 K5 [require]
       73 GETTABLEKS                       R15 R0 K12 ["Src"]
       75 GETTABLEKS                       R15 R15 K21 ["Components"]
       77 GETTABLEKS                       R15 R15 K22 ["ContextMenu"]
       79 CALL                             R14 1 1
       80 GETIMPORT                        R15 K5 [require]
       82 GETTABLEKS                       R16 R0 K12 ["Src"]
       84 GETTABLEKS                       R16 R16 K23 ["Thunks"]
       86 GETTABLEKS                       R16 R16 K24 ["Playback"]
       88 GETTABLEKS                       R16 R16 K25 ["SetPlaybackSpeed"]
       90 CALL                             R15 1 1
       91 GETIMPORT                        R16 K5 [require]
       93 GETTABLEKS                       R17 R0 K12 ["Src"]
       95 GETTABLEKS                       R17 R17 K26 ["Util"]
       97 GETTABLEKS                       R17 R17 K27 ["Constants"]
       99 CALL                             R16 1 1
      100 GETIMPORT                        R17 K5 [require]
      102 GETTABLEKS                       R18 R0 K12 ["Src"]
      104 GETTABLEKS                       R18 R18 K28 ["Types"]
      106 CALL                             R17 1 1
      107 GETTABLEKS                       R18 R1 K29 ["PureComponent"]
      109 LOADK                            R20 K30 ["SettingsMenu"]
      110 NAMECALL                         R18 R18 K31 ["extend"]
      112 CALL                             R18 2 1
      113 DUPCLOSURE                       R19 K32 [PROTO_1]
      114 CAPTURE                          VAL R16
      115 SETTABLEKS                       R19 R18 K33 ["makeTimelineUnitMenu"]
      117 DUPCLOSURE                       R19 K34 [PROTO_4]
      118 CAPTURE                          VAL R16
      119 SETTABLEKS                       R19 R18 K35 ["makePlaybackSpeedMenu"]
      121 DUPCLOSURE                       R19 K36 [PROTO_7]
      122 CAPTURE                          VAL R16
      123 SETTABLEKS                       R19 R18 K37 ["makeFrameRateMenu"]
      125 DUPCLOSURE                       R19 K38 [PROTO_10]
      126 CAPTURE                          VAL R16
      127 SETTABLEKS                       R19 R18 K39 ["makeGridSpeedMenu"]
      129 DUPCLOSURE                       R19 K40 [PROTO_12]
      130 CAPTURE                          VAL R16
      131 SETTABLEKS                       R19 R18 K41 ["makeSnapMenu"]
      133 DUPCLOSURE                       R19 K42 [PROTO_14]
      134 CAPTURE                          VAL R16
      135 SETTABLEKS                       R19 R18 K43 ["makeDefaultRotationTypeMenu"]
      137 DUPCLOSURE                       R19 K44 [PROTO_16]
      138 CAPTURE                          VAL R16
      139 SETTABLEKS                       R19 R18 K45 ["makeEulerAnglesOrderMenu"]
      141 DUPCLOSURE                       R19 K46 [PROTO_18]
      142 SETTABLEKS                       R19 R18 K47 ["makeShowEvents"]
      144 DUPCLOSURE                       R19 K48 [PROTO_19]
      145 CAPTURE                          VAL R16
      146 SETTABLEKS                       R19 R18 K49 ["makeMenuActions"]
      148 DUPCLOSURE                       R19 K50 [PROTO_20]
      149 CAPTURE                          VAL R1
      150 CAPTURE                          VAL R14
      151 SETTABLEKS                       R19 R18 K51 ["render"]
      153 DUPCLOSURE                       R19 K52 [PROTO_21]
      154 DUPCLOSURE                       R20 K53 [PROTO_30]
      155 CAPTURE                          VAL R7
      156 CAPTURE                          VAL R8
      157 CAPTURE                          VAL R9
      158 CAPTURE                          VAL R10
      159 CAPTURE                          VAL R15
      160 CAPTURE                          VAL R11
      161 CAPTURE                          VAL R12
      162 CAPTURE                          VAL R13
      163 MOVE                             R21 R5
      164 DUPTABLE                         R22 K57 [{"Localization", "Analytics", "Plugin"}]
      165 GETTABLEKS                       R23 R4 K54 ["Localization"]
      167 SETTABLEKS                       R23 R22 K54 ["Localization"]
      169 GETTABLEKS                       R23 R4 K55 ["Analytics"]
      171 SETTABLEKS                       R23 R22 K55 ["Analytics"]
      173 GETTABLEKS                       R23 R4 K56 ["Plugin"]
      175 SETTABLEKS                       R23 R22 K56 ["Plugin"]
      177 CALL                             R21 1 1
      178 MOVE                             R22 R18
      179 CALL                             R21 1 1
      180 MOVE                             R18 R21
      181 GETTABLEKS                       R21 R2 K58 ["connect"]
      183 MOVE                             R22 R19
      184 MOVE                             R23 R20
      185 CALL                             R21 2 1
      186 MOVE                             R22 R18
      187 CALL                             R21 1 -1
      188 RETURN                           R21 -1
