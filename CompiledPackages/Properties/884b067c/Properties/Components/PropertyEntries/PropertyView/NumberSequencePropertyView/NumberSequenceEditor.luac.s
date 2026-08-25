PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fromUnorderedKeypoints"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 SETTABLEKS                       R2 R1 K3 ["selectedIndex"]
        7 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 SETTABLEKS                       R2 R1 K3 ["ghostIndex"]
        7 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ghostIndex"]
        3 JUMPIFEQKN                       R1 K1 [-1] ; [+4]
        5 GETUPVAL                         R1 1
        6 LOADN                            R2 -1
        7 CALL                             R1 1 0
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K2 ["selectedIndex"]
       11 JUMPIFEQKN                       R1 K1 [-1] ; [+9]
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K2 ["selectedIndex"]
       16 GETTABLEKS                       R3 R0 K3 ["previousUnorderedKeypoints"]
       18 LENGTH                           R2 R3
       19 JUMPIFNOTLT                      R2 R1 ; [+2]
       21 RETURN                           R0 0
       22 GETUPVAL                         R1 2
       23 GETTABLEKS                       R1 R1 K4 ["findKeypoint"]
       25 GETTABLEKS                       R2 R0 K5 ["newSortedKeypoints"]
       27 GETTABLEKS                       R4 R0 K3 ["previousUnorderedKeypoints"]
       29 GETUPVAL                         R5 0
       30 GETTABLEKS                       R5 R5 K2 ["selectedIndex"]
       32 GETTABLE                         R3 R4 R5
       33 CALL                             R1 2 1
       34 GETUPVAL                         R2 3
       35 ORK                              R3 R1 K1 [-1]
       36 CALL                             R2 1 0
       37 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["guestUpdateSignal"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R1
        7 CALL                             R2 1 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createEffect"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["WindowOpen"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+15]
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K1 ["calculateInitialYRange"]
        9 GETUPVAL                         R2 2
       10 NAMECALL                         R2 R2 K2 ["getValue"]
       12 CALL                             R2 1 1
       13 LOADN                            R3 10
       14 CALL                             R1 2 2
       15 GETUPVAL                         R3 3
       16 MOVE                             R4 R1
       17 CALL                             R3 1 0
       18 GETUPVAL                         R3 4
       19 MOVE                             R4 R2
       20 CALL                             R3 1 0
       21 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createEffect"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CALL                             R0 1 -1
       10 RETURN                           R0 -1

PROTO_10:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 SETTABLEKS                       R2 R1 K3 ["hoveredIndex"]
        7 GETUPVAL                         R2 1
        8 JUMPIF                           R2 ; [+2]
        9 GETTABLEKS                       R2 R0 K4 ["ghostIndex"]
       11 SETTABLEKS                       R2 R1 K4 ["ghostIndex"]
       13 RETURN                           R1 1

PROTO_11:
        0 JUMPIFNOTEQKS                    R1 K0 ["Start"] ; [+3]
        2 MOVE                             R2 R0
        3 JUMP                             ; [+1]
        4 LOADN                            R2 -1
        5 JUMPIFNOTEQKS                    R1 K0 ["Start"] ; [+3]
        7 LOADN                            R3 -1
        8 JUMP                             ; [+1]
        9 LOADNIL                          R3
       10 GETUPVAL                         R4 0
       11 NEWCLOSURE                       R5 P0
       12 CAPTURE                          VAL R2
       13 CAPTURE                          VAL R3
       14 CALL                             R4 1 0
       15 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["beginEditingAsync"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_13:
        0 DUPTABLE                         R1 K5 [{"selectedIndex", "draggedIndex", "hoveredIndex", "ghostIndex", "draggedFromGhost"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["selectedIndex"]
        4 GETUPVAL                         R2 1
        5 JUMPIF                           R2 ; [+2]
        6 GETTABLEKS                       R2 R0 K1 ["draggedIndex"]
        8 SETTABLEKS                       R2 R1 K1 ["draggedIndex"]
       10 GETUPVAL                         R2 2
       11 JUMPIF                           R2 ; [+2]
       12 GETTABLEKS                       R2 R0 K2 ["hoveredIndex"]
       14 SETTABLEKS                       R2 R1 K2 ["hoveredIndex"]
       16 GETTABLEKS                       R2 R0 K3 ["ghostIndex"]
       18 SETTABLEKS                       R2 R1 K3 ["ghostIndex"]
       20 GETUPVAL                         R2 3
       21 JUMPIF                           R2 ; [+2]
       22 GETTABLEKS                       R2 R0 K4 ["draggedFromGhost"]
       24 SETTABLEKS                       R2 R1 K4 ["draggedFromGhost"]
       26 RETURN                           R1 1

PROTO_14:
        0 MOVE                             R2 R0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 JUMPIFNOTEQKS                    R1 K0 ["Start"] ; [+8]
        5 GETIMPORT                        R5 K3 [task.spawn]
        7 NEWCLOSURE                       R6 P0
        8 CAPTURE                          UPVAL U0
        9 CALL                             R5 1 0
       10 MOVE                             R3 R0
       11 JUMP                             ; [+6]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K4 ["finishEditing"]
       15 CALL                             R5 0 0
       16 LOADN                            R2 -1
       17 LOADB                            R4 0
       18 GETUPVAL                         R5 1
       19 NEWCLOSURE                       R6 P1
       20 CAPTURE                          VAL R0
       21 CAPTURE                          REF R2
       22 CAPTURE                          REF R3
       23 CAPTURE                          REF R4
       24 CALL                             R5 1 0
       25 CLOSEUPVALS                      R2
       26 RETURN                           R0 0

PROTO_15:
        0 JUMPIFNOTEQKS                    R1 K0 ["Start"] ; [+22]
        2 GETUPVAL                         R2 0
        3 DUPTABLE                         R3 K8 [{["selectedIndex"], ["hoveredIndex"], ["draggedIndex"], ["ghostIndex"] = -1, ["draggedFromGhost"] = True}]
        4 SETTABLEKS                       R0 R3 K1 ["selectedIndex"]
        6 SETTABLEKS                       R0 R3 K2 ["hoveredIndex"]
        8 SETTABLEKS                       R0 R3 K3 ["draggedIndex"]
       10 CALL                             R2 1 0
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K9 ["addKeypoint"]
       14 MOVE                             R3 R0
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R4 R4 K10 ["calculateGhostKeypoint"]
       18 GETUPVAL                         R5 3
       19 MOVE                             R6 R0
       20 CALL                             R4 2 1
       21 LOADB                            R5 0
       22 CALL                             R2 3 0
       23 RETURN                           R0 0

PROTO_16:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 DUPTABLE                         R6 K1 [{"Position"}]
        7 GETIMPORT                        R7 K4 [Vector2.new]
        9 GETTABLEKS                       R8 R5 K5 ["Time"]
       11 GETTABLEKS                       R9 R5 K6 ["Value"]
       13 CALL                             R7 2 1
       14 SETTABLEKS                       R7 R6 K0 ["Position"]
       16 SETTABLE                         R6 R0 R4
       17 FORGLOOP                         R1 2 ; [-12]
       19 RETURN                           R0 1

PROTO_17:
        0 GETUPVAL                         R3 0
        1 SUB                              R2 R3 R0
        2 FASTCALL1                        MATH_ABS R2 ; [+2]
        3 GETIMPORT                        R1 K2 [math.abs]
        5 CALL                             R1 1 1
        6 LOADK                            R2 K3 [0.001]
        7 JUMPIFLT                         R1 R2 ; [+10]
        9 GETUPVAL                         R3 1
       10 SUB                              R2 R3 R0
       11 FASTCALL1                        MATH_ABS R2 ; [+2]
       12 GETIMPORT                        R1 K2 [math.abs]
       14 CALL                             R1 1 1
       15 LOADK                            R2 K3 [0.001]
       16 JUMPIFNOTLT                      R1 R2 ; [+3]
       18 LOADK                            R1 K4 [""]
       19 RETURN                           R1 1
       20 GETIMPORT                        R1 K7 [string.format]
       22 LOADK                            R2 K8 ["%.2f"]
       23 MOVE                             R3 R0
       24 CALL                             R1 2 1
       25 LOADK                            R3 K9 ["%.?0+$"]
       26 LOADK                            R4 K4 [""]
       27 NAMECALL                         R1 R1 K10 ["gsub"]
       29 CALL                             R1 3 -1
       30 RETURN                           R1 -1

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["unorderedKeypoints"]
        2 GETTABLEKS                       R2 R0 K1 ["unorderedKeypointsBinding"]
        4 GETTABLEKS                       R3 R0 K2 ["controller"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["useMemo"]
        9 NEWCLOSURE                       R5 P0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          VAL R1
       12 NEWTABLE                         R6 0 1
       14 MOVE                             R7 R1
       15 SETLIST                          R6 R7 1 [1]
       17 CALL                             R4 2 1
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R5 R5 K4 ["useState"]
       21 DUPTABLE                         R6 K12 [{["selectedIndex"] = -1, ["hoveredIndex"] = -1, ["draggedIndex"] = -1, ["ghostIndex"] = -1, ["draggedFromGhost"] = False}]
       22 CALL                             R5 1 2
       23 GETUPVAL                         R7 0
       24 GETTABLEKS                       R7 R7 K13 ["useCallback"]
       26 NEWCLOSURE                       R8 P1
       27 CAPTURE                          VAL R6
       28 NEWTABLE                         R9 0 0
       30 CALL                             R7 2 1
       31 GETUPVAL                         R8 0
       32 GETTABLEKS                       R8 R8 K13 ["useCallback"]
       34 NEWCLOSURE                       R9 P2
       35 CAPTURE                          VAL R6
       36 NEWTABLE                         R10 0 0
       38 CALL                             R8 2 1
       39 GETUPVAL                         R9 2
       40 CALL                             R9 0 1
       41 GETTABLEKS                       R10 R9 K14 ["NumberSequence"]
       43 GETTABLEKS                       R11 R10 K15 ["Scale"]
       45 GETUPVAL                         R12 0
       46 GETTABLEKS                       R12 R12 K4 ["useState"]
       48 GETTABLEKS                       R13 R11 K16 ["InitialMinY"]
       50 CALL                             R12 1 2
       51 GETUPVAL                         R14 0
       52 GETTABLEKS                       R14 R14 K4 ["useState"]
       54 GETTABLEKS                       R15 R11 K17 ["InitialMaxY"]
       56 CALL                             R14 1 2
       57 GETUPVAL                         R16 3
       58 GETTABLEKS                       R16 R16 K18 ["useEventCallback"]
       60 NEWCLOSURE                       R17 P3
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R8
       63 CAPTURE                          UPVAL U1
       64 CAPTURE                          VAL R7
       65 CALL                             R16 1 1
       66 GETUPVAL                         R17 0
       67 GETTABLEKS                       R17 R17 K19 ["useEffect"]
       69 NEWCLOSURE                       R18 P4
       70 CAPTURE                          UPVAL U4
       71 CAPTURE                          VAL R3
       72 CAPTURE                          VAL R16
       73 NEWTABLE                         R19 0 2
       75 GETTABLEKS                       R20 R3 K20 ["guestUpdateSignal"]
       77 MOVE                             R21 R16
       78 SETLIST                          R19 R20 2 [1]
       80 CALL                             R17 2 0
       81 GETUPVAL                         R17 0
       82 GETTABLEKS                       R17 R17 K19 ["useEffect"]
       84 NEWCLOSURE                       R18 P5
       85 CAPTURE                          UPVAL U4
       86 CAPTURE                          VAL R0
       87 CAPTURE                          UPVAL U1
       88 CAPTURE                          VAL R2
       89 CAPTURE                          VAL R13
       90 CAPTURE                          VAL R15
       91 NEWTABLE                         R19 0 2
       93 GETTABLEKS                       R20 R0 K21 ["WindowOpen"]
       95 MOVE                             R21 R11
       96 SETLIST                          R19 R20 2 [1]
       98 CALL                             R17 2 0
       99 GETUPVAL                         R17 3
      100 GETTABLEKS                       R17 R17 K18 ["useEventCallback"]
      102 NEWCLOSURE                       R18 P6
      103 CAPTURE                          VAL R6
      104 CALL                             R17 1 1
      105 GETUPVAL                         R18 3
      106 GETTABLEKS                       R18 R18 K18 ["useEventCallback"]
      108 NEWCLOSURE                       R19 P7
      109 CAPTURE                          VAL R3
      110 CAPTURE                          VAL R6
      111 CALL                             R18 1 1
      112 GETUPVAL                         R19 3
      113 GETTABLEKS                       R19 R19 K18 ["useEventCallback"]
      115 NEWCLOSURE                       R20 P8
      116 CAPTURE                          VAL R6
      117 CAPTURE                          VAL R3
      118 CAPTURE                          UPVAL U1
      119 CAPTURE                          VAL R4
      120 CALL                             R19 1 1
      121 GETTABLEKS                       R20 R10 K22 ["ZIndex"]
      123 NEWTABLE                         R21 0 0
      125 MOVE                             R22 R1
      126 LOADNIL                          R23
      127 LOADNIL                          R24
      128 FORGPREP                         R22
      129 GETTABLEKS                       R28 R5 K8 ["draggedIndex"]
      131 JUMPIFNOTEQ                      R25 R28 ; [+6]
      133 GETTABLEKS                       R28 R5 K10 ["draggedFromGhost"]
      135 JUMPIFNOT                        R28 ; [+2]
      136 LOADK                            R27 K23 ["Ghost"]
      137 JUMP                             ; [+6]
      138 LOADK                            R28 K24 ["%*"]
      139 MOVE                             R30 R25
      140 NAMECALL                         R28 R28 K25 ["format"]
      142 CALL                             R28 2 1
      143 MOVE                             R27 R28
      144 LOADK                            R29 K26 ["Keypoint%*"]
      145 MOVE                             R31 R27
      146 NAMECALL                         R29 R29 K25 ["format"]
      148 CALL                             R29 2 1
      149 MOVE                             R28 R29
      150 GETUPVAL                         R29 5
      151 GETUPVAL                         R30 6
      152 DUPTABLE                         R31 K36 [{"style", "ZIndex", "Keypoint", "KeypointIndex", "MinY", "MaxY", "XLocked", "OnKeypointChanged", "SetDragged", "SetHovered"}]
      153 GETTABLEKS                       R33 R5 K5 ["selectedIndex"]
      155 JUMPIFNOTEQ                      R25 R33 ; [+6]
      157 GETTABLEKS                       R32 R10 K37 ["Point"]
      159 GETTABLEKS                       R32 R32 K38 ["SelectedStyle"]
      161 JUMP                             ; [+4]
      162 GETTABLEKS                       R32 R10 K37 ["Point"]
      164 GETTABLEKS                       R32 R32 K39 ["UnselectedStyle"]
      166 SETTABLEKS                       R32 R31 K27 ["style"]
      168 GETTABLEKS                       R33 R5 K5 ["selectedIndex"]
      170 JUMPIFNOTEQ                      R25 R33 ; [+4]
      172 GETTABLEKS                       R32 R20 K40 ["SelectedKeypoint"]
      174 JUMP                             ; [+2]
      175 GETTABLEKS                       R32 R20 K28 ["Keypoint"]
      177 SETTABLEKS                       R32 R31 K22 ["ZIndex"]
      179 SETTABLEKS                       R26 R31 K28 ["Keypoint"]
      181 SETTABLEKS                       R25 R31 K29 ["KeypointIndex"]
      183 GETTABLEKS                       R32 R10 K41 ["GraphMinY"]
      185 SETTABLEKS                       R32 R31 K30 ["MinY"]
      187 GETTABLEKS                       R32 R10 K42 ["GraphMaxY"]
      189 SETTABLEKS                       R32 R31 K31 ["MaxY"]
      191 LOADB                            R32 1
      192 JUMPIFEQKN                       R25 K43 [1] ; [+6]
      194 LENGTH                           R33 R1
      195 JUMPIFEQ                         R25 R33 ; [+2]
      197 LOADB                            R32 0 +1
      198 LOADB                            R32 1
      199 SETTABLEKS                       R32 R31 K32 ["XLocked"]
      201 GETTABLEKS                       R32 R3 K44 ["updateKeypoint"]
      203 SETTABLEKS                       R32 R31 K33 ["OnKeypointChanged"]
      205 SETTABLEKS                       R18 R31 K34 ["SetDragged"]
      207 SETTABLEKS                       R17 R31 K35 ["SetHovered"]
      209 CALL                             R29 2 1
      210 SETTABLE                         R29 R21 R28
      211 FORGLOOP                         R22 2 ; [-83]
      213 GETTABLEKS                       R22 R5 K9 ["ghostIndex"]
      215 JUMPIFEQKN                       R22 K6 [-1] ; [+32]
      217 LENGTH                           R23 R4
      218 JUMPIFNOTLE                      R22 R23 ; [+29]
      220 GETUPVAL                         R23 1
      221 GETTABLEKS                       R23 R23 K45 ["calculateGhostKeypoint"]
      223 MOVE                             R24 R4
      224 MOVE                             R25 R22
      225 CALL                             R23 2 1
      226 GETUPVAL                         R24 5
      227 GETUPVAL                         R25 6
      228 DUPTABLE                         R26 K46 [{"style", "ZIndex", "Keypoint", "KeypointIndex", "SetDragged"}]
      229 GETTABLEKS                       R27 R10 K37 ["Point"]
      231 GETTABLEKS                       R27 R27 K47 ["GhostStyle"]
      233 SETTABLEKS                       R27 R26 K27 ["style"]
      235 GETTABLEKS                       R27 R20 K48 ["GhostKeypoint"]
      237 SETTABLEKS                       R27 R26 K22 ["ZIndex"]
      239 SETTABLEKS                       R23 R26 K28 ["Keypoint"]
      241 SETTABLEKS                       R22 R26 K29 ["KeypointIndex"]
      243 SETTABLEKS                       R19 R26 K34 ["SetDragged"]
      245 CALL                             R24 2 1
      246 SETTABLEKS                       R24 R21 K49 ["KeypointGhost"]
      248 GETUPVAL                         R23 0
      249 GETTABLEKS                       R23 R23 K3 ["useMemo"]
      251 NEWCLOSURE                       R24 P9
      252 CAPTURE                          VAL R4
      253 NEWTABLE                         R25 0 1
      255 MOVE                             R26 R4
      256 SETLIST                          R25 R26 1 [1]
      258 CALL                             R23 2 1
      259 GETUPVAL                         R24 0
      260 GETTABLEKS                       R24 R24 K13 ["useCallback"]
      262 NEWCLOSURE                       R25 P10
      263 CAPTURE                          VAL R14
      264 CAPTURE                          VAL R12
      265 NEWTABLE                         R26 0 2
      267 MOVE                             R27 R14
      268 MOVE                             R28 R12
      269 SETLIST                          R26 R27 2 [1]
      271 CALL                             R24 2 1
      272 GETUPVAL                         R25 7
      273 CALL                             R25 0 1
      274 DUPTABLE                         R26 K56 [{"Grid", "Curve", "GhostKeypointTracker", "XScale", "YScale", "ScaleInputs"}]
      275 GETUPVAL                         R27 5
      276 GETUPVAL                         R28 8
      277 DUPTABLE                         R29 K59 [{"XAxis", "YAxis", "ZIndex"}]
      278 DUPTABLE                         R30 K63 [{["Type"] = "Uniform", ["Unit"]}]
      279 GETTABLEKS                       R32 R10 K65 ["GraphMaxX"]
      281 DIVK                             R31 R32 K64 [4]
      282 SETTABLEKS                       R31 R30 K62 ["Unit"]
      284 SETTABLEKS                       R30 R29 K57 ["XAxis"]
      286 DUPTABLE                         R30 K67 [{["Type"] = "Uniform", ["Unit"], ["Offset"]}]
      287 SUB                              R32 R14 R12
      288 DIVK                             R31 R32 K64 [4]
      289 SETTABLEKS                       R31 R30 K62 ["Unit"]
      291 SETTABLEKS                       R12 R30 K66 ["Offset"]
      293 SETTABLEKS                       R30 R29 K58 ["YAxis"]
      295 MOVE                             R30 R25
      296 CALL                             R30 0 1
      297 SETTABLEKS                       R30 R29 K22 ["ZIndex"]
      299 CALL                             R27 2 1
      300 SETTABLEKS                       R27 R26 K50 ["Grid"]
      302 GETUPVAL                         R27 5
      303 GETUPVAL                         R28 9
      304 DUPTABLE                         R29 K72 [{["Points"], ["Color3"], ["Thickness"] = 2, ["ZIndex"]}]
      305 SETTABLEKS                       R23 R29 K68 ["Points"]
      307 GETTABLEKS                       R30 R10 K73 ["CurveColor"]
      309 SETTABLEKS                       R30 R29 K69 ["Color3"]
      311 MOVE                             R30 R25
      312 CALL                             R30 0 1
      313 SETTABLEKS                       R30 R29 K22 ["ZIndex"]
      315 CALL                             R27 2 1
      316 SETTABLEKS                       R27 R26 K51 ["Curve"]
      318 GETUPVAL                         R27 5
      319 GETUPVAL                         R28 10
      320 DUPTABLE                         R29 K77 [{"Enabled", "Keypoints", "SetGhostKeypoint", "ZIndex"}]
      321 LOADB                            R30 0
      322 LENGTH                           R31 R4
      323 GETUPVAL                         R32 11
      324 JUMPIFNOTLT                      R31 R32 ; [+12]
      326 LOADB                            R30 0
      327 GETTABLEKS                       R31 R5 K8 ["draggedIndex"]
      329 JUMPIFNOTEQKN                    R31 K6 [-1] ; [+7]
      331 GETTABLEKS                       R31 R5 K7 ["hoveredIndex"]
      333 JUMPIFEQKN                       R31 K6 [-1] ; [+2]
      335 LOADB                            R30 0 +1
      336 LOADB                            R30 1
      337 SETTABLEKS                       R30 R29 K74 ["Enabled"]
      339 SETTABLEKS                       R4 R29 K75 ["Keypoints"]
      341 SETTABLEKS                       R8 R29 K76 ["SetGhostKeypoint"]
      343 MOVE                             R30 R25
      344 CALL                             R30 0 1
      345 SETTABLEKS                       R30 R29 K22 ["ZIndex"]
      347 CALL                             R27 2 1
      348 SETTABLEKS                       R27 R26 K52 ["GhostKeypointTracker"]
      350 GETUPVAL                         R27 5
      351 GETUPVAL                         R28 12
      352 DUPTABLE                         R29 K88 [{["Side"] = "Bottom", ["Schema"], ["TickTextPadding"] = 8, ["TickLength"] = 0, ["TickTextSize"], ["TickColor"], ["BackgroundTransparency"] = 1, ["ZIndex"]}]
      353 DUPTABLE                         R30 K63 [{["Type"] = "Uniform", ["Unit"]}]
      354 GETTABLEKS                       R32 R10 K65 ["GraphMaxX"]
      356 DIVK                             R31 R32 K64 [4]
      357 SETTABLEKS                       R31 R30 K62 ["Unit"]
      359 SETTABLEKS                       R30 R29 K80 ["Schema"]
      361 GETTABLEKS                       R30 R10 K89 ["ScaleTextSize"]
      363 SETTABLEKS                       R30 R29 K85 ["TickTextSize"]
      365 GETTABLEKS                       R30 R10 K90 ["ScaleTextColor"]
      367 SETTABLEKS                       R30 R29 K86 ["TickColor"]
      369 MOVE                             R30 R25
      370 CALL                             R30 0 1
      371 SETTABLEKS                       R30 R29 K22 ["ZIndex"]
      373 CALL                             R27 2 1
      374 SETTABLEKS                       R27 R26 K53 ["XScale"]
      376 GETUPVAL                         R27 5
      377 GETUPVAL                         R28 12
      378 DUPTABLE                         R29 K94 [{["Side"] = "Left", ["Formatter"], ["Schema"], ["TickTextPadding"] = 8, ["TickLength"] = 0, ["TickTextSize"], ["TickColor"], ["BackgroundTransparency"] = 1, ["Size"], ["ZIndex"]}]
      379 SETTABLEKS                       R24 R29 K92 ["Formatter"]
      381 DUPTABLE                         R30 K67 [{["Type"] = "Uniform", ["Unit"], ["Offset"]}]
      382 SUB                              R32 R14 R12
      383 DIVK                             R31 R32 K64 [4]
      384 SETTABLEKS                       R31 R30 K62 ["Unit"]
      386 SETTABLEKS                       R12 R30 K66 ["Offset"]
      388 SETTABLEKS                       R30 R29 K80 ["Schema"]
      390 GETTABLEKS                       R30 R10 K89 ["ScaleTextSize"]
      392 SETTABLEKS                       R30 R29 K85 ["TickTextSize"]
      394 GETTABLEKS                       R30 R10 K90 ["ScaleTextColor"]
      396 SETTABLEKS                       R30 R29 K86 ["TickColor"]
      398 GETIMPORT                        R30 K97 [UDim.new]
      400 LOADN                            R31 0
      401 LOADN                            R32 30
      402 CALL                             R30 2 1
      403 SETTABLEKS                       R30 R29 K93 ["Size"]
      405 MOVE                             R30 R25
      406 CALL                             R30 0 1
      407 SETTABLEKS                       R30 R29 K22 ["ZIndex"]
      409 CALL                             R27 2 1
      410 SETTABLEKS                       R27 R26 K54 ["YScale"]
      412 GETUPVAL                         R27 5
      413 GETUPVAL                         R28 13
      414 DUPTABLE                         R29 K102 [{"unorderedKeypoints", "controller", "minY", "maxY", "setMinY", "setMaxY"}]
      415 SETTABLEKS                       R1 R29 K0 ["unorderedKeypoints"]
      417 SETTABLEKS                       R3 R29 K2 ["controller"]
      419 SETTABLEKS                       R12 R29 K98 ["minY"]
      421 SETTABLEKS                       R14 R29 K99 ["maxY"]
      423 SETTABLEKS                       R13 R29 K100 ["setMinY"]
      425 SETTABLEKS                       R15 R29 K101 ["setMaxY"]
      427 CALL                             R27 2 1
      428 SETTABLEKS                       R27 R26 K55 ["ScaleInputs"]
      430 MOVE                             R27 R21
      431 LOADNIL                          R28
      432 LOADNIL                          R29
      433 FORGPREP                         R27
      434 SETTABLE                         R31 R26 R30
      435 FORGLOOP                         R27 2 ; [-2]
      437 GETUPVAL                         R27 14
      438 CALL                             R27 0 1
      439 GETUPVAL                         R28 7
      440 CALL                             R28 0 1
      441 GETTABLEKS                       R29 R10 K103 ["EditorYPadding"]
      443 GETTABLEKS                       R30 R10 K104 ["EditorFillPadding"]
      445 GETUPVAL                         R31 5
      446 GETUPVAL                         R32 15
      447 DUPTABLE                         R33 K109 [{["tag"] = "flex-none size-full-0 auto-y", ["layout"], ["padding"]}]
      448 DUPTABLE                         R34 K112 [{"FillDirection", "Padding"}]
      449 GETIMPORT                        R35 K115 [Enum.FillDirection.Vertical]
      451 SETTABLEKS                       R35 R34 K110 ["FillDirection"]
      453 GETIMPORT                        R35 K97 [UDim.new]
      455 LOADN                            R36 0
      456 MOVE                             R37 R30
      457 CALL                             R35 2 1
      458 SETTABLEKS                       R35 R34 K111 ["Padding"]
      460 SETTABLEKS                       R34 R33 K107 ["layout"]
      462 DUPTABLE                         R34 K118 [{"top", "bottom"}]
      463 GETIMPORT                        R35 K97 [UDim.new]
      465 LOADN                            R36 0
      466 MOVE                             R37 R29
      467 CALL                             R35 2 1
      468 SETTABLEKS                       R35 R34 K116 ["top"]
      470 GETIMPORT                        R35 K97 [UDim.new]
      472 LOADN                            R36 0
      473 MOVE                             R37 R29
      474 CALL                             R35 2 1
      475 SETTABLEKS                       R35 R34 K117 ["bottom"]
      477 SETTABLEKS                       R34 R33 K108 ["padding"]
      479 DUPTABLE                         R34 K121 [{"Editor", "RowStopsContainer"}]
      480 GETUPVAL                         R35 5
      481 GETUPVAL                         R36 15
      482 DUPTABLE                         R37 K124 [{["tag"] = "flex-none size-full-0 bg-surface-200", ["Size"], ["padding"], ["LayoutOrder"]}]
      483 GETIMPORT                        R38 K126 [UDim2.new]
      485 LOADN                            R39 1
      486 LOADN                            R40 0
      487 LOADN                            R41 0
      488 GETTABLEKS                       R42 R0 K127 ["GraphHeight"]
      490 CALL                             R38 4 1
      491 SETTABLEKS                       R38 R37 K93 ["Size"]
      493 DUPTABLE                         R38 K130 [{"left", "right", "bottom"}]
      494 GETIMPORT                        R39 K97 [UDim.new]
      496 LOADN                            R40 0
      497 GETTABLEKS                       R42 R27 K111 ["Padding"]
      499 GETTABLEKS                       R42 R42 K131 ["Medium"]
      501 MULK                             R41 R42 K64 [4]
      502 CALL                             R39 2 1
      503 SETTABLEKS                       R39 R38 K128 ["left"]
      505 GETIMPORT                        R39 K97 [UDim.new]
      507 LOADN                            R40 0
      508 GETTABLEKS                       R41 R27 K111 ["Padding"]
      510 GETTABLEKS                       R41 R41 K131 ["Medium"]
      512 CALL                             R39 2 1
      513 SETTABLEKS                       R39 R38 K129 ["right"]
      515 GETIMPORT                        R39 K97 [UDim.new]
      517 LOADN                            R40 0
      518 GETTABLEKS                       R42 R27 K111 ["Padding"]
      520 GETTABLEKS                       R42 R42 K131 ["Medium"]
      522 MULK                             R41 R42 K132 [3]
      523 CALL                             R39 2 1
      524 SETTABLEKS                       R39 R38 K117 ["bottom"]
      526 SETTABLEKS                       R38 R37 K108 ["padding"]
      528 MOVE                             R38 R28
      529 CALL                             R38 0 1
      530 SETTABLEKS                       R38 R37 K123 ["LayoutOrder"]
      532 DUPTABLE                         R38 K134 [{"Canvas"}]
      533 GETUPVAL                         R39 5
      534 GETUPVAL                         R40 16
      535 DUPTABLE                         R41 K144 [{["GraphRect"], ["CanvasBackgroundColor3"], ["CanvasBackgroundTransparency"] = 0, ["ViewportBackgroundTransparency"] = 1, ["ViewportPaddingLeft"], ["ViewportPaddingRight"], ["ViewportPaddingTop"], ["ViewportPaddingBottom"], ["childrenUnclipped"]}]
      536 GETIMPORT                        R42 K146 [Rect.new]
      538 LOADN                            R43 0
      539 MOVE                             R44 R12
      540 GETTABLEKS                       R45 R10 K65 ["GraphMaxX"]
      542 MOVE                             R46 R14
      543 CALL                             R42 4 1
      544 SETTABLEKS                       R42 R41 K135 ["GraphRect"]
      546 GETTABLEKS                       R42 R27 K147 ["Color"]
      548 GETTABLEKS                       R42 R42 K148 ["Surface"]
      550 GETTABLEKS                       R42 R42 K149 ["Surface_300"]
      552 GETTABLEKS                       R42 R42 K69 ["Color3"]
      554 SETTABLEKS                       R42 R41 K136 ["CanvasBackgroundColor3"]
      556 GETUPVAL                         R42 17
      557 SETTABLEKS                       R42 R41 K139 ["ViewportPaddingLeft"]
      559 GETUPVAL                         R42 17
      560 SETTABLEKS                       R42 R41 K140 ["ViewportPaddingRight"]
      562 GETUPVAL                         R42 17
      563 SETTABLEKS                       R42 R41 K141 ["ViewportPaddingTop"]
      565 GETUPVAL                         R42 17
      566 SETTABLEKS                       R42 R41 K142 ["ViewportPaddingBottom"]
      568 SETTABLEKS                       R26 R41 K143 ["childrenUnclipped"]
      570 DUPTABLE                         R42 K151 [{"Envelope"}]
      571 GETUPVAL                         R43 5
      572 GETUPVAL                         R44 18
      573 DUPTABLE                         R45 K156 [{["Color3"], ["Transparency"], ["Keypoints"], ["OutlineThickness"] = 4, ["ScanLines"] = 300, ["ZIndex"] = -1}]
      574 GETTABLEKS                       R46 R10 K157 ["EnvelopeColor"]
      576 SETTABLEKS                       R46 R45 K69 ["Color3"]
      578 GETTABLEKS                       R46 R10 K158 ["EnvelopeTransparency"]
      580 SETTABLEKS                       R46 R45 K152 ["Transparency"]
      582 SETTABLEKS                       R4 R45 K75 ["Keypoints"]
      584 CALL                             R43 2 1
      585 SETTABLEKS                       R43 R42 K150 ["Envelope"]
      587 CALL                             R39 3 1
      588 SETTABLEKS                       R39 R38 K133 ["Canvas"]
      590 CALL                             R35 3 1
      591 SETTABLEKS                       R35 R34 K119 ["Editor"]
      593 GETUPVAL                         R35 5
      594 GETUPVAL                         R36 15
      595 DUPTABLE                         R37 K160 [{["tag"] = "size-full-0 auto-y", ["LayoutOrder"]}]
      596 MOVE                             R38 R28
      597 CALL                             R38 0 1
      598 SETTABLEKS                       R38 R37 K123 ["LayoutOrder"]
      600 DUPTABLE                         R38 K162 [{"RowStops"}]
      601 GETUPVAL                         R39 5
      602 GETUPVAL                         R40 19
      603 DUPTABLE                         R41 K165 [{"unorderedKeypoints", "unorderedKeypointsBinding", "selectedUnorderedKeypoint", "SetSelectedUnorderedKeypoint", "controller", "MinY", "MaxY"}]
      604 SETTABLEKS                       R1 R41 K0 ["unorderedKeypoints"]
      606 SETTABLEKS                       R2 R41 K1 ["unorderedKeypointsBinding"]
      608 GETTABLEKS                       R42 R5 K5 ["selectedIndex"]
      610 SETTABLEKS                       R42 R41 K163 ["selectedUnorderedKeypoint"]
      612 SETTABLEKS                       R7 R41 K164 ["SetSelectedUnorderedKeypoint"]
      614 SETTABLEKS                       R3 R41 K2 ["controller"]
      616 SETTABLEKS                       R12 R41 K30 ["MinY"]
      618 SETTABLEKS                       R14 R41 K31 ["MaxY"]
      620 CALL                             R39 2 1
      621 SETTABLEKS                       R39 R38 K161 ["RowStops"]
      623 CALL                             R35 3 1
      624 SETTABLEKS                       R35 R34 K120 ["RowStopsContainer"]
      626 CALL                             R31 3 -1
      627 RETURN                           R31 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Components"]
       13 GETTABLEKS                       R3 R3 K8 ["PropertyEntries"]
       15 GETTABLEKS                       R3 R3 K9 ["PropertyView"]
       17 GETTABLEKS                       R3 R3 K10 ["NumberSequencePropertyView"]
       19 GETTABLEKS                       R3 R3 K11 ["Constants"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K6 [require]
       24 GETTABLEKS                       R4 R1 K12 ["Foundation"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K6 [require]
       29 GETTABLEKS                       R5 R0 K7 ["Components"]
       31 GETTABLEKS                       R5 R5 K8 ["PropertyEntries"]
       33 GETTABLEKS                       R5 R5 K9 ["PropertyView"]
       35 GETTABLEKS                       R5 R5 K10 ["NumberSequencePropertyView"]
       37 GETTABLEKS                       R5 R5 K13 ["GhostKeypointTracker"]
       39 CALL                             R4 1 1
       40 GETIMPORT                        R5 K6 [require]
       42 GETTABLEKS                       R6 R1 K14 ["Graphing"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K6 [require]
       47 GETTABLEKS                       R7 R0 K7 ["Components"]
       49 GETTABLEKS                       R7 R7 K8 ["PropertyEntries"]
       51 GETTABLEKS                       R7 R7 K9 ["PropertyView"]
       53 GETTABLEKS                       R7 R7 K10 ["NumberSequencePropertyView"]
       55 GETTABLEKS                       R7 R7 K15 ["NumberSequenceEnvelope"]
       57 CALL                             R6 1 1
       58 GETIMPORT                        R7 K6 [require]
       60 GETTABLEKS                       R8 R0 K7 ["Components"]
       62 GETTABLEKS                       R8 R8 K8 ["PropertyEntries"]
       64 GETTABLEKS                       R8 R8 K9 ["PropertyView"]
       66 GETTABLEKS                       R8 R8 K10 ["NumberSequencePropertyView"]
       68 GETTABLEKS                       R8 R8 K16 ["NumberSequencePoint"]
       70 CALL                             R7 1 1
       71 GETIMPORT                        R8 K6 [require]
       73 GETTABLEKS                       R9 R0 K7 ["Components"]
       75 GETTABLEKS                       R9 R9 K8 ["PropertyEntries"]
       77 GETTABLEKS                       R9 R9 K9 ["PropertyView"]
       79 GETTABLEKS                       R9 R9 K10 ["NumberSequencePropertyView"]
       81 GETTABLEKS                       R9 R9 K17 ["NumberSequenceRowStops"]
       83 CALL                             R8 1 1
       84 GETIMPORT                        R9 K6 [require]
       86 GETTABLEKS                       R10 R0 K7 ["Components"]
       88 GETTABLEKS                       R10 R10 K8 ["PropertyEntries"]
       90 GETTABLEKS                       R10 R10 K9 ["PropertyView"]
       92 GETTABLEKS                       R10 R10 K10 ["NumberSequencePropertyView"]
       94 GETTABLEKS                       R10 R10 K18 ["Types"]
       96 CALL                             R9 1 1
       97 GETIMPORT                        R10 K6 [require]
       99 GETTABLEKS                       R11 R0 K7 ["Components"]
      101 GETTABLEKS                       R11 R11 K8 ["PropertyEntries"]
      103 GETTABLEKS                       R11 R11 K9 ["PropertyView"]
      105 GETTABLEKS                       R11 R11 K10 ["NumberSequencePropertyView"]
      107 GETTABLEKS                       R11 R11 K19 ["NumberSequenceUtil"]
      109 CALL                             R10 1 1
      110 GETIMPORT                        R11 K6 [require]
      112 GETTABLEKS                       R12 R1 K20 ["React"]
      114 CALL                             R11 1 1
      115 GETIMPORT                        R12 K6 [require]
      117 GETTABLEKS                       R13 R1 K21 ["ReactUtils"]
      119 CALL                             R12 1 1
      120 GETIMPORT                        R13 K6 [require]
      122 GETTABLEKS                       R14 R0 K7 ["Components"]
      124 GETTABLEKS                       R14 R14 K8 ["PropertyEntries"]
      126 GETTABLEKS                       R14 R14 K9 ["PropertyView"]
      128 GETTABLEKS                       R14 R14 K10 ["NumberSequencePropertyView"]
      130 GETTABLEKS                       R14 R14 K22 ["ScaleInputs"]
      132 CALL                             R13 1 1
      133 GETIMPORT                        R14 K6 [require]
      135 GETTABLEKS                       R15 R1 K23 ["Signals"]
      137 CALL                             R14 1 1
      138 GETIMPORT                        R15 K6 [require]
      140 GETTABLEKS                       R16 R0 K7 ["Components"]
      142 GETTABLEKS                       R16 R16 K8 ["PropertyEntries"]
      144 GETTABLEKS                       R16 R16 K9 ["PropertyView"]
      146 GETTABLEKS                       R16 R16 K10 ["NumberSequencePropertyView"]
      148 GETTABLEKS                       R16 R16 K24 ["useNumberSequence"]
      150 CALL                             R15 1 1
      151 GETIMPORT                        R16 K6 [require]
      153 GETTABLEKS                       R17 R0 K25 ["Hooks"]
      155 GETTABLEKS                       R17 R17 K26 ["useVisualValues"]
      157 CALL                             R16 1 1
      158 GETTABLEKS                       R17 R5 K27 ["Canvas"]
      160 GETTABLEKS                       R18 R5 K28 ["Curve"]
      162 GETTABLEKS                       R19 R5 K29 ["Grid"]
      164 GETTABLEKS                       R20 R5 K30 ["Scale"]
      166 GETTABLEKS                       R21 R3 K31 ["View"]
      168 GETTABLEKS                       R22 R12 K32 ["createNextOrder"]
      170 GETTABLEKS                       R23 R11 K33 ["createElement"]
      172 GETTABLEKS                       R24 R3 K25 ["Hooks"]
      174 GETTABLEKS                       R24 R24 K34 ["useTokens"]
      176 GETTABLEKS                       R25 R2 K35 ["MAX_POINTS"]
      178 GETIMPORT                        R26 K38 [UDim.new]
      180 LOADN                            R27 0
      181 LOADN                            R28 0
      182 CALL                             R26 2 1
      183 DUPCLOSURE                       R27 K39 [PROTO_18]
      184 CAPTURE                          VAL R11
      185 CAPTURE                          VAL R10
      186 CAPTURE                          VAL R16
      187 CAPTURE                          VAL R12
      188 CAPTURE                          VAL R14
      189 CAPTURE                          VAL R23
      190 CAPTURE                          VAL R7
      191 CAPTURE                          VAL R22
      192 CAPTURE                          VAL R19
      193 CAPTURE                          VAL R18
      194 CAPTURE                          VAL R4
      195 CAPTURE                          VAL R25
      196 CAPTURE                          VAL R20
      197 CAPTURE                          VAL R13
      198 CAPTURE                          VAL R24
      199 CAPTURE                          VAL R21
      200 CAPTURE                          VAL R17
      201 CAPTURE                          VAL R26
      202 CAPTURE                          VAL R6
      203 CAPTURE                          VAL R8
      204 RETURN                           R27 1
