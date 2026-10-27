PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETTABLEKS                       R6 R5 K0 ["maxDuration"]
        6 JUMPIFNOTLE                      R0 R6 ; [+4]
        8 GETTABLEKS                       R6 R5 K1 ["increment"]
       10 RETURN                           R6 1
       11 FORGLOOP                         R1 2 ; [-8]
       13 LOADN                            R1 5
       14 RETURN                           R1 1

PROTO_1:
        0 MODK                             R2 R1 K0 [1]
        1 JUMPIFEQKN                       R2 K1 [0] ; [+7]
        3 GETIMPORT                        R2 K4 [string.format]
        5 LOADK                            R3 K5 ["%.1f"]
        6 MOVE                             R4 R0
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1
        9 GETIMPORT                        R2 K4 [string.format]
       11 LOADK                            R3 K6 ["%d"]
       12 MOVE                             R4 R0
       13 CALL                             R2 2 -1
       14 RETURN                           R2 -1

PROTO_2:
        0 JUMPIFNOTEQKNIL                  R0 ; [+2]
        2 RETURN                           R0 0
        3 GETTABLEKS                       R1 R0 K0 ["revision"]
        5 JUMPIFEQKNIL                     R1 ; [+18]
        7 GETTABLEKS                       R1 R0 K0 ["revision"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K1 ["current"]
       12 JUMPIFNOTLT                      R1 R2 ; [+2]
       14 RETURN                           R0 0
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R2 R0 K0 ["revision"]
       18 SETTABLEKS                       R2 R1 K1 ["current"]
       20 GETUPVAL                         R1 1
       21 GETTABLEKS                       R2 R0 K0 ["revision"]
       23 CALL                             R1 1 0
       24 GETTABLEKS                       R1 R0 K2 ["keyframeFrameIndices"]
       26 JUMPIFNOT                        R1 ; [+16]
       27 GETUPVAL                         R1 2
       28 GETTABLEKS                       R2 R0 K2 ["keyframeFrameIndices"]
       30 CALL                             R1 1 0
       31 GETUPVAL                         R1 3
       32 GETUPVAL                         R2 4
       33 GETTABLEKS                       R2 R2 K3 ["normalizeFrameMap"]
       35 GETTABLEKS                       R3 R0 K4 ["poseIntervals"]
       37 CALL                             R2 1 -1
       38 CALL                             R1 -1 0
       39 GETUPVAL                         R1 5
       40 GETTABLEKS                       R2 R0 K5 ["selectedFrameIndex"]
       42 CALL                             R1 1 0
       43 GETTABLEKS                       R1 R0 K6 ["editedEffectorsByFrameIndex"]
       45 JUMPIFNOT                        R1 ; [+8]
       46 GETUPVAL                         R1 6
       47 GETUPVAL                         R2 4
       48 GETTABLEKS                       R2 R2 K3 ["normalizeFrameMap"]
       50 GETTABLEKS                       R3 R0 K6 ["editedEffectorsByFrameIndex"]
       52 CALL                             R2 1 -1
       53 CALL                             R1 -1 0
       54 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 NAMECALL                         R0 R0 K0 ["Fire"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R0 K1 [pcall]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["getEditScrubbarState"]
        5 DUPTABLE                         R2 K4 [{"toolUseId"}]
        6 GETUPVAL                         R3 1
        7 SETTABLEKS                       R3 R2 K3 ["toolUseId"]
        9 CALL                             R0 2 2
       10 JUMPIF                           R0 ; [+6]
       11 GETIMPORT                        R2 K6 [warn]
       13 LOADK                            R3 K7 ["[AnimationGen] Unable to read edit scrubbar state:"]
       14 MOVE                             R4 R1
       15 CALL                             R2 2 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R2 2
       18 GETTABLEKS                       R2 R2 K8 ["current"]
       20 GETUPVAL                         R3 1
       21 JUMPIFNOTEQ                      R2 R3 ; [+4]
       23 GETUPVAL                         R2 3
       24 MOVE                             R3 R1
       25 CALL                             R2 1 0
       26 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+4]
        3 GETUPVAL                         R0 1
        4 JUMPIFNOTEQKNIL                  R0 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 1
        8 GETIMPORT                        R1 K2 [task.spawn]
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U3
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 1
        5 LOADN                            R1 0
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 2
        8 NEWTABLE                         R1 0 0
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 3
       12 NEWTABLE                         R1 0 0
       14 CALL                             R0 1 0
       15 GETUPVAL                         R0 4
       16 LOADNIL                          R1
       17 CALL                             R0 1 0
       18 GETUPVAL                         R0 5
       19 NEWTABLE                         R1 0 0
       21 CALL                             R0 1 0
       22 GETUPVAL                         R0 6
       23 JUMPIFEQKNIL                     R0 ; [+3]
       25 GETUPVAL                         R0 7
       26 CALL                             R0 0 0
       27 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQKNIL                     R1 ; [+4]
        3 GETUPVAL                         R1 1
        4 JUMPIFNOTEQKNIL                  R1 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["insertPose"]
       10 DUPTABLE                         R2 K3 [{"toolUseId", "time"}]
       11 GETUPVAL                         R3 1
       12 SETTABLEKS                       R3 R2 K1 ["toolUseId"]
       14 SETTABLEKS                       R0 R2 K2 ["time"]
       16 CALL                             R1 1 1
       17 GETUPVAL                         R2 2
       18 MOVE                             R3 R1
       19 CALL                             R2 1 0
       20 GETTABLEKS                       R2 R1 K4 ["selectedFrameIndex"]
       22 RETURN                           R2 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["frameIndexToTime"]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 -1
        6 CALL                             R1 -1 -1
        7 RETURN                           R1 -1

PROTO_10:
        0 GETUPVAL                         R3 0
        1 JUMPIFEQKNIL                     R3 ; [+4]
        3 GETUPVAL                         R3 1
        4 JUMPIFNOTEQKNIL                  R3 ; [+3]
        6 LOADNIL                          R3
        7 RETURN                           R3 1
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K0 ["movePose"]
       11 DUPTABLE                         R4 K6 [{"toolUseId", "time", "toTime", "expectedBounds", "revision"}]
       12 GETUPVAL                         R5 1
       13 SETTABLEKS                       R5 R4 K1 ["toolUseId"]
       15 GETUPVAL                         R5 2
       16 GETTABLEKS                       R5 R5 K7 ["frameIndexToTime"]
       18 MOVE                             R6 R0
       19 CALL                             R5 1 1
       20 SETTABLEKS                       R5 R4 K2 ["time"]
       22 SETTABLEKS                       R1 R4 K3 ["toTime"]
       24 SETTABLEKS                       R2 R4 K4 ["expectedBounds"]
       26 GETUPVAL                         R5 3
       27 SETTABLEKS                       R5 R4 K5 ["revision"]
       29 CALL                             R3 1 1
       30 GETUPVAL                         R4 4
       31 MOVE                             R5 R3
       32 CALL                             R4 1 0
       33 GETTABLEKS                       R4 R3 K8 ["selectedFrameIndex"]
       35 RETURN                           R4 1

PROTO_11:
        0 GETUPVAL                         R4 0
        1 JUMPIFEQKNIL                     R4 ; [+4]
        3 GETUPVAL                         R4 1
        4 JUMPIFNOTEQKNIL                  R4 ; [+3]
        6 LOADNIL                          R4
        7 RETURN                           R4 1
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K0 ["resizePose"]
       11 DUPTABLE                         R5 K7 [{"toolUseId", "time", "edge", "edgeTime", "expectedBounds", "revision"}]
       12 GETUPVAL                         R6 1
       13 SETTABLEKS                       R6 R5 K1 ["toolUseId"]
       15 GETUPVAL                         R6 2
       16 GETTABLEKS                       R6 R6 K8 ["frameIndexToTime"]
       18 MOVE                             R7 R0
       19 CALL                             R6 1 1
       20 SETTABLEKS                       R6 R5 K2 ["time"]
       22 SETTABLEKS                       R1 R5 K3 ["edge"]
       24 SETTABLEKS                       R2 R5 K4 ["edgeTime"]
       26 SETTABLEKS                       R3 R5 K5 ["expectedBounds"]
       28 GETUPVAL                         R6 3
       29 SETTABLEKS                       R6 R5 K6 ["revision"]
       31 CALL                             R4 1 1
       32 GETUPVAL                         R5 4
       33 MOVE                             R6 R4
       34 CALL                             R5 1 0
       35 GETTABLEKS                       R5 R4 K9 ["selectedFrameIndex"]
       37 RETURN                           R5 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQKNIL                     R1 ; [+4]
        3 GETUPVAL                         R1 1
        4 JUMPIFNOTEQKNIL                  R1 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["deletePose"]
       10 DUPTABLE                         R2 K3 [{"toolUseId", "time"}]
       11 GETUPVAL                         R3 1
       12 SETTABLEKS                       R3 R2 K1 ["toolUseId"]
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R3 R3 K4 ["frameIndexToTime"]
       17 MOVE                             R4 R0
       18 CALL                             R3 1 1
       19 SETTABLEKS                       R3 R2 K2 ["time"]
       21 CALL                             R1 1 1
       22 GETUPVAL                         R2 3
       23 MOVE                             R3 R1
       24 CALL                             R2 1 0
       25 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+10]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+8]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["resetPose"]
        7 DUPTABLE                         R1 K2 [{"toolUseId"}]
        8 GETUPVAL                         R2 1
        9 SETTABLEKS                       R2 R1 K1 ["toolUseId"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_14:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 GETUPVAL                         R7 1
        7 GETTABLE                         R6 R7 R5
        8 JUMPIFEQKNIL                     R6 ; [+35]
       10 GETUPVAL                         R7 2
       11 GETTABLEKS                       R7 R7 K0 ["resolveFrameIndex"]
       13 GETUPVAL                         R8 3
       14 MOVE                             R9 R5
       15 CALL                             R7 2 1
       16 JUMPIFEQKNIL                     R7 ; [+4]
       18 GETUPVAL                         R9 3
       19 GETTABLE                         R8 R9 R7
       20 JUMP                             ; [+1]
       21 LOADNIL                          R8
       22 DUPTABLE                         R11 K4 [{"frameIndex", "bounds", "isEdited"}]
       23 SETTABLEKS                       R5 R11 K1 ["frameIndex"]
       25 SETTABLEKS                       R6 R11 K2 ["bounds"]
       27 LOADB                            R12 0
       28 JUMPIFEQKNIL                     R8 ; [+7]
       30 LENGTH                           R13 R8
       31 LOADN                            R14 0
       32 JUMPIFLT                         R14 R13 ; [+2]
       34 LOADB                            R12 0 +1
       35 LOADB                            R12 1
       36 SETTABLEKS                       R12 R11 K3 ["isEdited"]
       38 FASTCALL2                        TABLE_INSERT R0 R11 ; [+4]
       40 MOVE                             R10 R0
       41 GETIMPORT                        R9 K7 [table.insert]
       43 CALL                             R9 2 0
       44 FORGLOOP                         R1 2 ; [-39]
       46 RETURN                           R0 1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R2 R0 K2 ["sourceToolUseId"]
        9 GETTABLEKS                       R3 R0 K3 ["disabled"]
       11 JUMPIFNOT                        R2 ; [+4]
       12 GETUPVAL                         R4 2
       13 MOVE                             R5 R2
       14 CALL                             R4 1 1
       15 JUMP                             ; [+1]
       16 LOADNIL                          R4
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R5 R5 K4 ["useState"]
       20 NEWTABLE                         R6 0 0
       22 CALL                             R5 1 2
       23 GETUPVAL                         R7 0
       24 GETTABLEKS                       R7 R7 K4 ["useState"]
       26 NEWTABLE                         R8 0 0
       28 CALL                             R7 1 2
       29 GETUPVAL                         R9 0
       30 GETTABLEKS                       R9 R9 K4 ["useState"]
       32 LOADNIL                          R10
       33 CALL                             R9 1 2
       34 GETUPVAL                         R11 0
       35 GETTABLEKS                       R11 R11 K4 ["useState"]
       37 LOADN                            R12 0
       38 CALL                             R11 1 2
       39 GETUPVAL                         R13 0
       40 GETTABLEKS                       R13 R13 K5 ["useRef"]
       42 LOADN                            R14 0
       43 CALL                             R13 1 1
       44 GETUPVAL                         R14 0
       45 GETTABLEKS                       R14 R14 K4 ["useState"]
       47 NEWTABLE                         R15 0 0
       49 CALL                             R14 1 2
       50 GETUPVAL                         R16 0
       51 GETTABLEKS                       R16 R16 K6 ["useCallback"]
       53 NEWCLOSURE                       R17 P0
       54 CAPTURE                          VAL R13
       55 CAPTURE                          VAL R12
       56 CAPTURE                          VAL R6
       57 CAPTURE                          VAL R8
       58 CAPTURE                          UPVAL U3
       59 CAPTURE                          VAL R10
       60 CAPTURE                          VAL R15
       61 NEWTABLE                         R18 0 0
       63 CALL                             R16 2 1
       64 GETUPVAL                         R17 0
       65 GETTABLEKS                       R17 R17 K7 ["useMemo"]
       67 DUPCLOSURE                       R18 K8 [PROTO_3]
       68 CAPTURE                          UPVAL U4
       69 NEWTABLE                         R19 0 0
       71 CALL                             R17 2 1
       72 GETUPVAL                         R18 1
       73 GETTABLEKS                       R18 R18 K9 ["usePoseDeselected"]
       75 MOVE                             R19 R2
       76 GETUPVAL                         R20 0
       77 GETTABLEKS                       R20 R20 K6 ["useCallback"]
       79 NEWCLOSURE                       R21 P2
       80 CAPTURE                          VAL R10
       81 CAPTURE                          VAL R17
       82 NEWTABLE                         R22 0 1
       84 MOVE                             R23 R17
       85 SETLIST                          R22 R23 1 [1]
       87 CALL                             R20 2 -1
       88 CALL                             R18 -1 0
       89 GETUPVAL                         R18 0
       90 GETTABLEKS                       R18 R18 K5 ["useRef"]
       92 MOVE                             R19 R2
       93 CALL                             R18 1 1
       94 SETTABLEKS                       R2 R18 K10 ["current"]
       96 GETUPVAL                         R19 0
       97 GETTABLEKS                       R19 R19 K6 ["useCallback"]
       99 NEWCLOSURE                       R20 P3
      100 CAPTURE                          VAL R1
      101 CAPTURE                          VAL R2
      102 CAPTURE                          VAL R18
      103 CAPTURE                          VAL R16
      104 NEWTABLE                         R21 0 3
      106 MOVE                             R22 R1
      107 MOVE                             R23 R2
      108 MOVE                             R24 R16
      109 SETLIST                          R21 R22 3 [1]
      111 CALL                             R19 2 1
      112 GETUPVAL                         R20 1
      113 GETTABLEKS                       R20 R20 K11 ["usePoseEdited"]
      115 MOVE                             R21 R2
      116 MOVE                             R22 R19
      117 CALL                             R20 2 0
      118 GETUPVAL                         R20 0
      119 GETTABLEKS                       R20 R20 K12 ["useEffect"]
      121 NEWCLOSURE                       R21 P4
      122 CAPTURE                          VAL R13
      123 CAPTURE                          VAL R12
      124 CAPTURE                          VAL R6
      125 CAPTURE                          VAL R8
      126 CAPTURE                          VAL R10
      127 CAPTURE                          VAL R15
      128 CAPTURE                          VAL R2
      129 CAPTURE                          VAL R19
      130 NEWTABLE                         R22 0 2
      132 MOVE                             R23 R2
      133 MOVE                             R24 R19
      134 SETLIST                          R22 R23 2 [1]
      136 CALL                             R20 2 0
      137 GETUPVAL                         R20 0
      138 GETTABLEKS                       R20 R20 K6 ["useCallback"]
      140 NEWCLOSURE                       R21 P5
      141 CAPTURE                          VAL R1
      142 CAPTURE                          VAL R2
      143 CAPTURE                          VAL R16
      144 NEWTABLE                         R22 0 3
      146 MOVE                             R23 R1
      147 MOVE                             R24 R2
      148 MOVE                             R25 R16
      149 SETLIST                          R22 R23 3 [1]
      151 CALL                             R20 2 1
      152 GETUPVAL                         R21 0
      153 GETTABLEKS                       R21 R21 K6 ["useCallback"]
      155 NEWCLOSURE                       R22 P6
      156 CAPTURE                          VAL R20
      157 CAPTURE                          UPVAL U3
      158 NEWTABLE                         R23 0 1
      160 MOVE                             R24 R20
      161 SETLIST                          R23 R24 1 [1]
      163 CALL                             R21 2 1
      164 GETUPVAL                         R22 0
      165 GETTABLEKS                       R22 R22 K6 ["useCallback"]
      167 NEWCLOSURE                       R23 P7
      168 CAPTURE                          VAL R1
      169 CAPTURE                          VAL R2
      170 CAPTURE                          UPVAL U3
      171 CAPTURE                          VAL R11
      172 CAPTURE                          VAL R16
      173 NEWTABLE                         R24 0 4
      175 MOVE                             R25 R1
      176 MOVE                             R26 R2
      177 MOVE                             R27 R16
      178 MOVE                             R28 R11
      179 SETLIST                          R24 R25 4 [1]
      181 CALL                             R22 2 1
      182 GETUPVAL                         R23 0
      183 GETTABLEKS                       R23 R23 K6 ["useCallback"]
      185 NEWCLOSURE                       R24 P8
      186 CAPTURE                          VAL R1
      187 CAPTURE                          VAL R2
      188 CAPTURE                          UPVAL U3
      189 CAPTURE                          VAL R11
      190 CAPTURE                          VAL R16
      191 NEWTABLE                         R25 0 4
      193 MOVE                             R26 R1
      194 MOVE                             R27 R2
      195 MOVE                             R28 R16
      196 MOVE                             R29 R11
      197 SETLIST                          R25 R26 4 [1]
      199 CALL                             R23 2 1
      200 GETUPVAL                         R24 0
      201 GETTABLEKS                       R24 R24 K6 ["useCallback"]
      203 NEWCLOSURE                       R25 P9
      204 CAPTURE                          VAL R1
      205 CAPTURE                          VAL R2
      206 CAPTURE                          UPVAL U3
      207 CAPTURE                          VAL R16
      208 NEWTABLE                         R26 0 3
      210 MOVE                             R27 R1
      211 MOVE                             R28 R2
      212 MOVE                             R29 R16
      213 SETLIST                          R26 R27 3 [1]
      215 CALL                             R24 2 1
      216 GETUPVAL                         R25 0
      217 GETTABLEKS                       R25 R25 K6 ["useCallback"]
      219 NEWCLOSURE                       R26 P10
      220 CAPTURE                          VAL R1
      221 CAPTURE                          VAL R2
      222 NEWTABLE                         R27 0 2
      224 MOVE                             R28 R1
      225 MOVE                             R29 R2
      226 SETLIST                          R27 R28 2 [1]
      228 CALL                             R25 2 1
      229 GETUPVAL                         R26 0
      230 GETTABLEKS                       R26 R26 K7 ["useMemo"]
      232 NEWCLOSURE                       R27 P11
      233 CAPTURE                          VAL R5
      234 CAPTURE                          VAL R7
      235 CAPTURE                          UPVAL U3
      236 CAPTURE                          VAL R14
      237 NEWTABLE                         R28 0 3
      239 MOVE                             R29 R5
      240 MOVE                             R30 R14
      241 MOVE                             R31 R7
      242 SETLIST                          R28 R29 3 [1]
      244 CALL                             R26 2 1
      245 DUPTABLE                         R27 K31 [{["layoutOrder"], ["toolUseId"], ["duration"], ["disabled"], ["fps"], ["markers"], ["revision"], ["activeFrameIndex"], ["selectionClearedSignal"], ["onMarkerActivated"], ["onMarkerInserted"], ["onMarkerDeleted"], ["onMarkerMoved"], ["onMarkerResized"], ["onHidden"], ["keyframeAreaHeight"] = 28, ["getTickInterval"], ["formatTickLabel"]}]
      246 GETTABLEKS                       R28 R0 K13 ["layoutOrder"]
      248 SETTABLEKS                       R28 R27 K13 ["layoutOrder"]
      250 SETTABLEKS                       R4 R27 K14 ["toolUseId"]
      252 GETTABLEKS                       R28 R0 K15 ["duration"]
      254 SETTABLEKS                       R28 R27 K15 ["duration"]
      256 SETTABLEKS                       R3 R27 K3 ["disabled"]
      258 GETUPVAL                         R28 5
      259 GETTABLEKS                       R28 R28 K32 ["DEFAULT_GENERATION_FPS"]
      261 SETTABLEKS                       R28 R27 K16 ["fps"]
      263 SETTABLEKS                       R26 R27 K17 ["markers"]
      265 SETTABLEKS                       R11 R27 K18 ["revision"]
      267 SETTABLEKS                       R9 R27 K19 ["activeFrameIndex"]
      269 SETTABLEKS                       R17 R27 K20 ["selectionClearedSignal"]
      271 SETTABLEKS                       R21 R27 K21 ["onMarkerActivated"]
      273 SETTABLEKS                       R20 R27 K22 ["onMarkerInserted"]
      275 SETTABLEKS                       R24 R27 K23 ["onMarkerDeleted"]
      277 SETTABLEKS                       R22 R27 K24 ["onMarkerMoved"]
      279 SETTABLEKS                       R23 R27 K25 ["onMarkerResized"]
      281 SETTABLEKS                       R25 R27 K26 ["onHidden"]
      283 GETUPVAL                         R28 6
      284 SETTABLEKS                       R28 R27 K29 ["getTickInterval"]
      286 GETUPVAL                         R28 7
      287 SETTABLEKS                       R28 R27 K30 ["formatTickLabel"]
      289 RETURN                           R27 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Components"]
       13 GETTABLEKS                       R3 R3 K8 ["Contexts"]
       15 GETTABLEKS                       R3 R3 K9 ["Actions"]
       17 GETTABLEKS                       R3 R3 K10 ["AnimationGenActionsContext"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K6 [require]
       22 GETTABLEKS                       R4 R0 K11 ["Util"]
       24 GETTABLEKS                       R4 R4 K12 ["AnimationGen"]
       26 GETTABLEKS                       R4 R4 K13 ["AnimationGenConstants"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K6 [require]
       31 GETTABLEKS                       R5 R0 K14 ["Remotes"]
       33 GETTABLEKS                       R5 R5 K15 ["AnimationGenRemotes"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K6 [require]
       38 GETTABLEKS                       R6 R0 K11 ["Util"]
       40 GETTABLEKS                       R6 R6 K12 ["AnimationGen"]
       42 GETTABLEKS                       R6 R6 K16 ["Posing"]
       44 GETTABLEKS                       R6 R6 K17 ["PoseInterval"]
       46 CALL                             R5 1 1
       47 GETIMPORT                        R6 K6 [require]
       49 GETTABLEKS                       R7 R1 K18 ["React"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K6 [require]
       54 GETTABLEKS                       R8 R0 K7 ["Components"]
       56 GETTABLEKS                       R8 R8 K19 ["EditScrubbar"]
       58 GETTABLEKS                       R8 R8 K20 ["Scrubbar"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K6 [require]
       63 GETTABLEKS                       R9 R0 K11 ["Util"]
       65 GETTABLEKS                       R9 R9 K12 ["AnimationGen"]
       67 GETTABLEKS                       R9 R9 K16 ["Posing"]
       69 GETTABLEKS                       R9 R9 K21 ["ScrubbarFrameKeys"]
       71 CALL                             R8 1 1
       72 GETIMPORT                        R9 K6 [require]
       74 GETTABLEKS                       R10 R1 K22 ["Signal"]
       76 CALL                             R9 1 1
       77 GETIMPORT                        R10 K6 [require]
       79 GETTABLEKS                       R11 R0 K11 ["Util"]
       81 GETTABLEKS                       R11 R11 K12 ["AnimationGen"]
       83 GETTABLEKS                       R11 R11 K23 ["editPlaybackId"]
       85 CALL                             R10 1 1
       86 NEWTABLE                         R11 0 7
       88 DUPTABLE                         R12 K28 [{["maxDuration"] = 0.69, ["increment"] = 0.1}]
       89 DUPTABLE                         R13 K31 [{["maxDuration"] = 1, ["increment"] = 0.2}]
       90 DUPTABLE                         R14 K34 [{["maxDuration"] = 3, ["increment"] = 0.5}]
       91 DUPTABLE                         R15 K36 [{["maxDuration"] = 6, ["increment"] = 1}]
       92 DUPTABLE                         R16 K39 [{["maxDuration"] = 12, ["increment"] = 2}]
       93 DUPTABLE                         R17 K42 [{["maxDuration"] = 15, ["increment"] = 2.5}]
       94 DUPTABLE                         R18 K45 [{["maxDuration"] = 30, ["increment"] = 5}]
       95 SETLIST                          R11 R12 7 [1]
       97 DUPCLOSURE                       R12 K46 [PROTO_0]
       98 CAPTURE                          VAL R11
       99 DUPCLOSURE                       R13 K47 [PROTO_1]
      100 DUPCLOSURE                       R14 K48 [PROTO_15]
      101 CAPTURE                          VAL R6
      102 CAPTURE                          VAL R2
      103 CAPTURE                          VAL R10
      104 CAPTURE                          VAL R8
      105 CAPTURE                          VAL R9
      106 CAPTURE                          VAL R3
      107 CAPTURE                          VAL R12
      108 CAPTURE                          VAL R13
      109 RETURN                           R14 1
