PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["set"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["setHostIsPlaying"]
        8 JUMPIFNOT                        R1 ; [+5]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K1 ["setHostIsPlaying"]
       12 MOVE                             R2 R0
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["snapTimeToFrame"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R1
        7 CALL                             R2 1 0
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K1 ["setHostCurrentTime"]
       11 JUMPIFNOT                        R2 ; [+5]
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R2 R2 K1 ["setHostCurrentTime"]
       15 MOVE                             R3 R1
       16 CALL                             R2 1 0
       17 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["frameIndexToTime"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 LOADB                            R3 0
        7 CALL                             R2 1 0
        8 GETUPVAL                         R2 2
        9 MOVE                             R3 R1
       10 CALL                             R2 1 0
       11 GETUPVAL                         R2 3
       12 MOVE                             R3 R0
       13 CALL                             R2 1 0
       14 GETUPVAL                         R2 4
       15 GETTABLEKS                       R2 R2 K1 ["insertHostPose"]
       17 JUMPIFNOT                        R2 ; [+5]
       18 GETUPVAL                         R2 4
       19 GETTABLEKS                       R2 R2 K1 ["insertHostPose"]
       21 MOVE                             R3 R0
       22 CALL                             R2 1 0
       23 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFEQ                         R2 R3 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 0
        8 MOVE                             R3 R0
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["timeToFrameIndex"]
        6 GETUPVAL                         R1 2
        7 CALL                             R0 1 1
        8 GETUPVAL                         R1 3
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K1 ["frameIndexToTime"]
       12 MOVE                             R3 R0
       13 CALL                             R2 1 -1
       14 CALL                             R1 -1 0
       15 GETUPVAL                         R1 4
       16 MOVE                             R2 R0
       17 CALL                             R1 1 0
       18 GETUPVAL                         R1 5
       19 GETTABLEKS                       R1 R1 K2 ["insertHostPose"]
       21 JUMPIFNOT                        R1 ; [+5]
       22 GETUPVAL                         R1 5
       23 GETTABLEKS                       R1 R1 K2 ["insertHostPose"]
       25 MOVE                             R2 R0
       26 CALL                             R1 1 0
       27 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 LOADB                            R1 0
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 2
        8 GETTABLEKS                       R0 R0 K0 ["deleteHostPose"]
       10 JUMPIFNOT                        R0 ; [+5]
       11 GETUPVAL                         R0 2
       12 GETTABLEKS                       R0 R0 K0 ["deleteHostPose"]
       14 GETUPVAL                         R1 0
       15 CALL                             R0 1 0
       16 GETUPVAL                         R0 3
       17 LOADNIL                          R1
       18 CALL                             R0 1 0
       19 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["enabled"]
        3 JUMPIFNOT                        R1 ; [+3]
        4 GETUPVAL                         R1 1
        5 LOADB                            R2 0
        6 CALL                             R1 1 0
        7 GETUPVAL                         R3 2
        8 ADD                              R2 R3 R0
        9 LOADN                            R3 0
       10 GETUPVAL                         R4 3
       11 FASTCALL                         MATH_CLAMP ; [+2]
       12 GETIMPORT                        R1 K3 [math.clamp]
       14 CALL                             R1 3 1
       15 GETUPVAL                         R2 4
       16 MOVE                             R3 R1
       17 CALL                             R2 1 0
       18 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["enabled"]
        3 NOT                              R0 R1
        4 JUMPIFNOT                        R0 ; [+12]
        5 GETUPVAL                         R1 1
        6 LOADNIL                          R2
        7 CALL                             R1 1 0
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R1 R1 K1 ["setHostCurrentTime"]
       11 JUMPIFNOT                        R1 ; [+5]
       12 GETUPVAL                         R1 2
       13 GETTABLEKS                       R1 R1 K1 ["setHostCurrentTime"]
       15 GETUPVAL                         R2 3
       16 CALL                             R1 1 0
       17 GETUPVAL                         R1 4
       18 MOVE                             R2 R0
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["animatorRemovedSignal"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K0 ["animatorRemovedSignal"]
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          UPVAL U1
       10 NAMECALL                         R0 R0 K1 ["Connect"]
       12 CALL                             R0 2 1
       13 NEWCLOSURE                       R1 P1
       14 CAPTURE                          VAL R0
       15 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["poseDeselectedSignal"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K0 ["poseDeselectedSignal"]
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          UPVAL U1
       10 NAMECALL                         R0 R0 K1 ["Connect"]
       12 CALL                             R0 2 1
       13 NEWCLOSURE                       R1 P1
       14 CAPTURE                          VAL R0
       15 RETURN                           R1 1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["playbackRestartedSignal"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K0 ["playbackRestartedSignal"]
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          UPVAL U1
       10 NAMECALL                         R0 R0 K1 ["Connect"]
       12 CALL                             R0 2 1
       13 NEWCLOSURE                       R1 P1
       14 CAPTURE                          VAL R0
       15 RETURN                           R1 1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 DIVRK                            R1 K0 [-1] R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 DIVRK                            R1 K0 [1] R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R2 R0 K1 ["duration"]
        2 ORK                              R1 R2 K0 [10]
        3 GETUPVAL                         R2 0
        4 CALL                             R2 0 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K2 ["useToggleState"]
        8 LOADB                            R4 0
        9 CALL                             R3 1 1
       10 GETUPVAL                         R4 2
       11 DUPTABLE                         R5 K6 [{["isPlaying"], ["playbackSpeed"] = 1, ["duration"]}]
       12 GETTABLEKS                       R7 R3 K7 ["enabled"]
       14 SETTABLEKS                       R7 R5 K3 ["isPlaying"]
       16 SETTABLEKS                       R1 R5 K1 ["duration"]
       18 CALL                             R4 1 3
       19 GETUPVAL                         R7 3
       20 GETTABLEKS                       R7 R7 K8 ["useState"]
       22 LOADNIL                          R8
       23 CALL                             R7 1 2
       24 GETUPVAL                         R9 3
       25 GETTABLEKS                       R9 R9 K9 ["useCallback"]
       27 NEWCLOSURE                       R10 P0
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R0
       30 NEWTABLE                         R11 0 2
       32 MOVE                             R12 R3
       33 GETTABLEKS                       R13 R0 K10 ["setHostIsPlaying"]
       35 SETLIST                          R11 R12 2 [1]
       37 CALL                             R9 2 1
       38 GETUPVAL                         R10 3
       39 GETTABLEKS                       R10 R10 K9 ["useCallback"]
       41 NEWCLOSURE                       R11 P1
       42 CAPTURE                          UPVAL U4
       43 CAPTURE                          VAL R5
       44 CAPTURE                          VAL R0
       45 NEWTABLE                         R12 0 2
       47 MOVE                             R13 R5
       48 GETTABLEKS                       R14 R0 K11 ["setHostCurrentTime"]
       50 SETLIST                          R12 R13 2 [1]
       52 CALL                             R10 2 1
       53 GETUPVAL                         R11 3
       54 GETTABLEKS                       R11 R11 K9 ["useCallback"]
       56 NEWCLOSURE                       R12 P2
       57 CAPTURE                          UPVAL U4
       58 CAPTURE                          VAL R9
       59 CAPTURE                          VAL R10
       60 CAPTURE                          VAL R8
       61 CAPTURE                          VAL R0
       62 NEWTABLE                         R13 0 3
       64 MOVE                             R14 R9
       65 MOVE                             R15 R10
       66 GETTABLEKS                       R16 R0 K12 ["insertHostPose"]
       68 SETLIST                          R13 R14 3 [1]
       70 CALL                             R11 2 1
       71 GETUPVAL                         R12 3
       72 GETTABLEKS                       R12 R12 K9 ["useCallback"]
       74 NEWCLOSURE                       R13 P3
       75 CAPTURE                          VAL R11
       76 NEWTABLE                         R14 0 1
       78 MOVE                             R15 R11
       79 SETLIST                          R14 R15 1 [1]
       81 CALL                             R12 2 1
       82 GETUPVAL                         R13 3
       83 GETTABLEKS                       R13 R13 K9 ["useCallback"]
       85 NEWCLOSURE                       R14 P4
       86 CAPTURE                          VAL R9
       87 CAPTURE                          UPVAL U4
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R10
       90 CAPTURE                          VAL R8
       91 CAPTURE                          VAL R0
       92 NEWTABLE                         R15 0 4
       94 MOVE                             R16 R9
       95 MOVE                             R17 R4
       96 MOVE                             R18 R10
       97 GETTABLEKS                       R19 R0 K12 ["insertHostPose"]
       99 SETLIST                          R15 R16 4 [1]
      101 CALL                             R13 2 1
      102 GETUPVAL                         R14 3
      103 GETTABLEKS                       R14 R14 K9 ["useCallback"]
      105 NEWCLOSURE                       R15 P5
      106 CAPTURE                          VAL R7
      107 CAPTURE                          VAL R9
      108 CAPTURE                          VAL R0
      109 CAPTURE                          VAL R8
      110 NEWTABLE                         R16 0 3
      112 MOVE                             R17 R7
      113 MOVE                             R18 R9
      114 GETTABLEKS                       R19 R0 K13 ["deleteHostPose"]
      116 SETLIST                          R16 R17 3 [1]
      118 CALL                             R14 2 1
      119 GETUPVAL                         R15 3
      120 GETTABLEKS                       R15 R15 K9 ["useCallback"]
      122 NEWCLOSURE                       R16 P6
      123 CAPTURE                          VAL R3
      124 CAPTURE                          VAL R9
      125 CAPTURE                          VAL R4
      126 CAPTURE                          VAL R1
      127 CAPTURE                          VAL R10
      128 NEWTABLE                         R17 0 5
      130 MOVE                             R18 R3
      131 MOVE                             R19 R9
      132 MOVE                             R20 R4
      133 MOVE                             R21 R1
      134 MOVE                             R22 R10
      135 SETLIST                          R17 R18 5 [1]
      137 CALL                             R15 2 1
      138 GETUPVAL                         R16 3
      139 GETTABLEKS                       R16 R16 K9 ["useCallback"]
      141 NEWCLOSURE                       R17 P7
      142 CAPTURE                          VAL R3
      143 CAPTURE                          VAL R8
      144 CAPTURE                          VAL R0
      145 CAPTURE                          VAL R4
      146 CAPTURE                          VAL R9
      147 NEWTABLE                         R18 0 4
      149 MOVE                             R19 R3
      150 MOVE                             R20 R4
      151 MOVE                             R21 R9
      152 GETTABLEKS                       R22 R0 K11 ["setHostCurrentTime"]
      154 SETLIST                          R18 R19 4 [1]
      156 CALL                             R16 2 1
      157 GETUPVAL                         R17 3
      158 GETTABLEKS                       R17 R17 K9 ["useCallback"]
      160 NEWCLOSURE                       R18 P8
      161 CAPTURE                          VAL R8
      162 NEWTABLE                         R19 0 0
      164 CALL                             R17 2 1
      165 GETUPVAL                         R18 5
      166 DUPTABLE                         R19 K17 [{"duration", "seekTo", "isPlaying", "setIsPlaying", "onScrubStart"}]
      167 SETTABLEKS                       R1 R19 K1 ["duration"]
      169 SETTABLEKS                       R10 R19 K14 ["seekTo"]
      171 GETTABLEKS                       R20 R3 K7 ["enabled"]
      173 SETTABLEKS                       R20 R19 K3 ["isPlaying"]
      175 SETTABLEKS                       R9 R19 K15 ["setIsPlaying"]
      177 SETTABLEKS                       R17 R19 K16 ["onScrubStart"]
      179 CALL                             R18 1 2
      180 GETUPVAL                         R20 3
      181 GETTABLEKS                       R20 R20 K18 ["useEffect"]
      183 NEWCLOSURE                       R21 P9
      184 CAPTURE                          VAL R0
      185 CAPTURE                          VAL R9
      186 NEWTABLE                         R22 0 2
      188 GETTABLEKS                       R23 R0 K19 ["animatorRemovedSignal"]
      190 MOVE                             R24 R9
      191 SETLIST                          R22 R23 2 [1]
      193 CALL                             R20 2 0
      194 GETUPVAL                         R20 3
      195 GETTABLEKS                       R20 R20 K18 ["useEffect"]
      197 NEWCLOSURE                       R21 P10
      198 CAPTURE                          VAL R0
      199 CAPTURE                          VAL R8
      200 NEWTABLE                         R22 0 1
      202 GETTABLEKS                       R23 R0 K20 ["poseDeselectedSignal"]
      204 SETLIST                          R22 R23 1 [1]
      206 CALL                             R20 2 0
      207 GETUPVAL                         R20 3
      208 GETTABLEKS                       R20 R20 K18 ["useEffect"]
      210 NEWCLOSURE                       R21 P11
      211 CAPTURE                          VAL R0
      212 CAPTURE                          VAL R6
      213 NEWTABLE                         R22 0 2
      215 GETTABLEKS                       R23 R0 K21 ["playbackRestartedSignal"]
      217 MOVE                             R24 R6
      218 SETLIST                          R22 R23 2 [1]
      220 CALL                             R20 2 0
      221 LOADN                            R21 0
      222 JUMPIFNOTLT                      R21 R1 ; [+3]
      224 DIV                              R20 R4 R1
      225 JUMP                             ; [+1]
      226 LOADN                            R20 0
      227 GETUPVAL                         R21 6
      228 CALL                             R21 0 1
      229 GETUPVAL                         R22 6
      230 CALL                             R22 0 1
      231 LOADB                            R23 0
      232 JUMPIFEQKNIL                     R7 ; [+16]
      234 LOADB                            R23 0
      235 GETTABLEKS                       R24 R0 K22 ["keyframeFrameIndices"]
      237 JUMPIFEQKNIL                     R24 ; [+11]
      239 GETIMPORT                        R24 K25 [table.find]
      241 GETTABLEKS                       R25 R0 K22 ["keyframeFrameIndices"]
      243 MOVE                             R26 R7
      244 CALL                             R24 2 1
      245 JUMPIFNOTEQKNIL                  R24 ; [+2]
      247 LOADB                            R23 0 +1
      248 LOADB                            R23 1
      249 GETUPVAL                         R24 7
      250 GETUPVAL                         R25 8
      251 DUPTABLE                         R26 K29 [{["tag"] = "col gap-small size-full-0 auto-y padding-small radius-small bg-shift-200", ["LayoutOrder"]}]
      252 GETTABLEKS                       R27 R0 K30 ["layoutOrder"]
      254 SETTABLEKS                       R27 R26 K28 ["LayoutOrder"]
      256 DUPTABLE                         R27 K33 [{"ControlsRow", "TrackArea"}]
      257 GETUPVAL                         R28 7
      258 GETUPVAL                         R29 8
      259 DUPTABLE                         R30 K35 [{"LayoutOrder", "Size"}]
      260 MOVE                             R31 R21
      261 CALL                             R31 0 1
      262 SETTABLEKS                       R31 R30 K28 ["LayoutOrder"]
      264 GETIMPORT                        R31 K38 [UDim2.new]
      266 LOADN                            R32 1
      267 LOADN                            R33 0
      268 LOADN                            R34 0
      269 LOADN                            R35 24
      270 CALL                             R31 4 1
      271 SETTABLEKS                       R31 R30 K34 ["Size"]
      273 DUPTABLE                         R31 K41 [{"ButtonGroup", "Timestamp"}]
      274 GETUPVAL                         R32 7
      275 GETUPVAL                         R33 8
      276 DUPTABLE                         R34 K43 [{["tag"] = "row align-y-center gap-xsmall auto-xy position-center-left anchor-center-left"}]
      277 DUPTABLE                         R35 K49 [{"BackButton", "PlayPauseButton", "ForwardButton", "InsertPoseButton", "DeletePoseButton"}]
      278 GETUPVAL                         R36 7
      279 GETUPVAL                         R37 9
      280 DUPTABLE                         R38 K54 [{"LayoutOrder", "icon", "size", "isDisabled", "onActivated"}]
      281 MOVE                             R39 R22
      282 CALL                             R39 0 1
      283 SETTABLEKS                       R39 R38 K28 ["LayoutOrder"]
      285 GETUPVAL                         R39 10
      286 GETTABLEKS                       R39 R39 K55 ["Enums"]
      288 GETTABLEKS                       R39 R39 K56 ["IconName"]
      290 GETTABLEKS                       R39 R39 K57 ["SkipStartSmall"]
      292 SETTABLEKS                       R39 R38 K50 ["icon"]
      294 GETUPVAL                         R39 10
      295 GETTABLEKS                       R39 R39 K55 ["Enums"]
      297 GETTABLEKS                       R39 R39 K58 ["IconSize"]
      299 GETTABLEKS                       R39 R39 K59 ["XSmall"]
      301 SETTABLEKS                       R39 R38 K51 ["size"]
      303 GETTABLEKS                       R39 R0 K60 ["disabled"]
      305 SETTABLEKS                       R39 R38 K52 ["isDisabled"]
      307 NEWCLOSURE                       R39 P12
      308 CAPTURE                          VAL R15
      309 CAPTURE                          UPVAL U11
      310 SETTABLEKS                       R39 R38 K53 ["onActivated"]
      312 CALL                             R36 2 1
      313 SETTABLEKS                       R36 R35 K44 ["BackButton"]
      315 GETUPVAL                         R36 7
      316 GETUPVAL                         R37 9
      317 DUPTABLE                         R38 K54 [{"LayoutOrder", "icon", "size", "isDisabled", "onActivated"}]
      318 MOVE                             R39 R22
      319 CALL                             R39 0 1
      320 SETTABLEKS                       R39 R38 K28 ["LayoutOrder"]
      322 GETTABLEKS                       R40 R3 K7 ["enabled"]
      324 JUMPIFNOT                        R40 ; [+8]
      325 GETUPVAL                         R39 10
      326 GETTABLEKS                       R39 R39 K55 ["Enums"]
      328 GETTABLEKS                       R39 R39 K56 ["IconName"]
      330 GETTABLEKS                       R39 R39 K61 ["PauseLarge"]
      332 JUMP                             ; [+7]
      333 GETUPVAL                         R39 10
      334 GETTABLEKS                       R39 R39 K55 ["Enums"]
      336 GETTABLEKS                       R39 R39 K56 ["IconName"]
      338 GETTABLEKS                       R39 R39 K62 ["PlayLarge"]
      340 SETTABLEKS                       R39 R38 K50 ["icon"]
      342 GETUPVAL                         R39 10
      343 GETTABLEKS                       R39 R39 K55 ["Enums"]
      345 GETTABLEKS                       R39 R39 K58 ["IconSize"]
      347 GETTABLEKS                       R39 R39 K59 ["XSmall"]
      349 SETTABLEKS                       R39 R38 K51 ["size"]
      351 GETTABLEKS                       R39 R0 K60 ["disabled"]
      353 SETTABLEKS                       R39 R38 K52 ["isDisabled"]
      355 SETTABLEKS                       R16 R38 K53 ["onActivated"]
      357 CALL                             R36 2 1
      358 SETTABLEKS                       R36 R35 K45 ["PlayPauseButton"]
      360 GETUPVAL                         R36 7
      361 GETUPVAL                         R37 9
      362 DUPTABLE                         R38 K54 [{"LayoutOrder", "icon", "size", "isDisabled", "onActivated"}]
      363 MOVE                             R39 R22
      364 CALL                             R39 0 1
      365 SETTABLEKS                       R39 R38 K28 ["LayoutOrder"]
      367 GETUPVAL                         R39 10
      368 GETTABLEKS                       R39 R39 K55 ["Enums"]
      370 GETTABLEKS                       R39 R39 K56 ["IconName"]
      372 GETTABLEKS                       R39 R39 K63 ["SkipEndSmall"]
      374 SETTABLEKS                       R39 R38 K50 ["icon"]
      376 GETUPVAL                         R39 10
      377 GETTABLEKS                       R39 R39 K55 ["Enums"]
      379 GETTABLEKS                       R39 R39 K58 ["IconSize"]
      381 GETTABLEKS                       R39 R39 K59 ["XSmall"]
      383 SETTABLEKS                       R39 R38 K51 ["size"]
      385 GETTABLEKS                       R39 R0 K60 ["disabled"]
      387 SETTABLEKS                       R39 R38 K52 ["isDisabled"]
      389 NEWCLOSURE                       R39 P13
      390 CAPTURE                          VAL R15
      391 CAPTURE                          UPVAL U11
      392 SETTABLEKS                       R39 R38 K53 ["onActivated"]
      394 CALL                             R36 2 1
      395 SETTABLEKS                       R36 R35 K46 ["ForwardButton"]
      397 GETTABLEKS                       R36 R0 K12 ["insertHostPose"]
      399 JUMPIFNOT                        R36 ; [+44]
      400 GETUPVAL                         R36 7
      401 GETUPVAL                         R37 9
      402 DUPTABLE                         R38 K54 [{"LayoutOrder", "icon", "size", "isDisabled", "onActivated"}]
      403 MOVE                             R39 R22
      404 CALL                             R39 0 1
      405 SETTABLEKS                       R39 R38 K28 ["LayoutOrder"]
      407 DUPTABLE                         R39 K66 [{"name", "variant"}]
      408 GETUPVAL                         R40 10
      409 GETTABLEKS                       R40 R40 K55 ["Enums"]
      411 GETTABLEKS                       R40 R40 K56 ["IconName"]
      413 GETTABLEKS                       R40 R40 K67 ["DiamondSimplified"]
      415 SETTABLEKS                       R40 R39 K64 ["name"]
      417 GETUPVAL                         R40 10
      418 GETTABLEKS                       R40 R40 K55 ["Enums"]
      420 GETTABLEKS                       R40 R40 K68 ["IconVariant"]
      422 GETTABLEKS                       R40 R40 K69 ["Filled"]
      424 SETTABLEKS                       R40 R39 K65 ["variant"]
      426 SETTABLEKS                       R39 R38 K50 ["icon"]
      428 GETUPVAL                         R39 10
      429 GETTABLEKS                       R39 R39 K55 ["Enums"]
      431 GETTABLEKS                       R39 R39 K58 ["IconSize"]
      433 GETTABLEKS                       R39 R39 K59 ["XSmall"]
      435 SETTABLEKS                       R39 R38 K51 ["size"]
      437 GETTABLEKS                       R39 R0 K60 ["disabled"]
      439 SETTABLEKS                       R39 R38 K52 ["isDisabled"]
      441 SETTABLEKS                       R13 R38 K53 ["onActivated"]
      443 CALL                             R36 2 1
      444 SETTABLEKS                       R36 R35 K47 ["InsertPoseButton"]
      446 GETTABLEKS                       R36 R0 K13 ["deleteHostPose"]
      448 JUMPIFNOT                        R36 ; [+34]
      449 GETUPVAL                         R36 7
      450 GETUPVAL                         R37 9
      451 DUPTABLE                         R38 K54 [{"LayoutOrder", "icon", "size", "isDisabled", "onActivated"}]
      452 MOVE                             R39 R22
      453 CALL                             R39 0 1
      454 SETTABLEKS                       R39 R38 K28 ["LayoutOrder"]
      456 GETUPVAL                         R39 10
      457 GETTABLEKS                       R39 R39 K55 ["Enums"]
      459 GETTABLEKS                       R39 R39 K56 ["IconName"]
      461 GETTABLEKS                       R39 R39 K70 ["TrashCan"]
      463 SETTABLEKS                       R39 R38 K50 ["icon"]
      465 GETUPVAL                         R39 10
      466 GETTABLEKS                       R39 R39 K55 ["Enums"]
      468 GETTABLEKS                       R39 R39 K58 ["IconSize"]
      470 GETTABLEKS                       R39 R39 K59 ["XSmall"]
      472 SETTABLEKS                       R39 R38 K51 ["size"]
      474 GETTABLEKS                       R39 R0 K60 ["disabled"]
      476 JUMPIF                           R39 ; [+1]
      477 NOT                              R39 R23
      478 SETTABLEKS                       R39 R38 K52 ["isDisabled"]
      480 SETTABLEKS                       R14 R38 K53 ["onActivated"]
      482 CALL                             R36 2 1
      483 SETTABLEKS                       R36 R35 K48 ["DeletePoseButton"]
      485 CALL                             R32 3 1
      486 SETTABLEKS                       R32 R31 K39 ["ButtonGroup"]
      488 GETUPVAL                         R32 7
      489 GETUPVAL                         R33 12
      490 DUPTABLE                         R34 K73 [{["tag"] = "auto-xy text-body-small content-muted position-center-right anchor-center-right", ["Text"]}]
      491 GETIMPORT                        R35 K76 [string.format]
      493 LOADK                            R36 K77 ["%.2f / %.2f seconds"]
      494 MOVE                             R37 R4
      495 MOVE                             R38 R1
      496 CALL                             R35 3 1
      497 SETTABLEKS                       R35 R34 K72 ["Text"]
      499 CALL                             R32 2 1
      500 SETTABLEKS                       R32 R31 K40 ["Timestamp"]
      502 CALL                             R28 3 1
      503 SETTABLEKS                       R28 R27 K31 ["ControlsRow"]
      505 GETUPVAL                         R28 7
      506 GETUPVAL                         R29 8
      507 DUPTABLE                         R30 K79 [{"LayoutOrder", "Size", "stroke"}]
      508 MOVE                             R31 R21
      509 CALL                             R31 0 1
      510 SETTABLEKS                       R31 R30 K28 ["LayoutOrder"]
      512 GETIMPORT                        R31 K38 [UDim2.new]
      514 LOADN                            R32 1
      515 LOADN                            R33 0
      516 LOADN                            R34 0
      517 LOADN                            R35 56
      518 CALL                             R31 4 1
      519 SETTABLEKS                       R31 R30 K34 ["Size"]
      521 DUPTABLE                         R31 K83 [{["Color"], ["Transparency"], ["Thickness"] = 1}]
      522 GETTABLEKS                       R32 R2 K80 ["Color"]
      524 GETTABLEKS                       R32 R32 K84 ["OverMedia"]
      526 GETTABLEKS                       R32 R32 K85 ["OverMedia_0"]
      528 GETTABLEKS                       R32 R32 K86 ["Color3"]
      530 SETTABLEKS                       R32 R31 K80 ["Color"]
      532 GETTABLEKS                       R32 R2 K80 ["Color"]
      534 GETTABLEKS                       R32 R32 K84 ["OverMedia"]
      536 GETTABLEKS                       R32 R32 K85 ["OverMedia_0"]
      538 GETTABLEKS                       R32 R32 K81 ["Transparency"]
      540 SETTABLEKS                       R32 R31 K81 ["Transparency"]
      542 SETTABLEKS                       R31 R30 K78 ["stroke"]
      544 DUPTABLE                         R31 K90 [{"ScrubInput", "Track", "Head"}]
      545 GETUPVAL                         R32 7
      546 LOADK                            R33 K91 ["Frame"]
      547 NEWTABLE                         R34 4 0
      549 GETIMPORT                        R35 K38 [UDim2.new]
      551 LOADN                            R36 1
      552 LOADN                            R37 0
      553 LOADN                            R38 0
      554 LOADN                            R39 28
      555 CALL                             R35 4 1
      556 SETTABLEKS                       R35 R34 K34 ["Size"]
      558 LOADN                            R35 1
      559 SETTABLEKS                       R35 R34 K92 ["BackgroundTransparency"]
      561 GETUPVAL                         R35 3
      562 GETTABLEKS                       R35 R35 K93 ["Event"]
      564 GETTABLEKS                       R35 R35 K94 ["InputBegan"]
      566 GETTABLEKS                       R37 R0 K60 ["disabled"]
      568 JUMPIF                           R37 ; [+2]
      569 MOVE                             R36 R19
      570 JUMP                             ; [+1]
      571 LOADNIL                          R36
      572 SETTABLE                         R36 R34 R35
      573 SETTABLEKS                       R18 R34 K95 ["ref"]
      575 CALL                             R32 2 1
      576 SETTABLEKS                       R32 R31 K87 ["ScrubInput"]
      578 GETUPVAL                         R32 7
      579 GETUPVAL                         R33 13
      580 DUPTABLE                         R34 K102 [{["duration"], ["timelineHeight"] = 28, ["trackHeight"] = 56, ["keyframeFrameIndices"], ["selectedFrameIndex"], ["onKeyframeInputBegan"]}]
      581 SETTABLEKS                       R1 R34 K1 ["duration"]
      583 GETTABLEKS                       R35 R0 K22 ["keyframeFrameIndices"]
      585 SETTABLEKS                       R35 R34 K22 ["keyframeFrameIndices"]
      587 SETTABLEKS                       R7 R34 K100 ["selectedFrameIndex"]
      589 GETTABLEKS                       R36 R0 K60 ["disabled"]
      591 JUMPIF                           R36 ; [+2]
      592 MOVE                             R35 R12
      593 JUMP                             ; [+1]
      594 LOADNIL                          R35
      595 SETTABLEKS                       R35 R34 K101 ["onKeyframeInputBegan"]
      597 CALL                             R32 2 1
      598 SETTABLEKS                       R32 R31 K88 ["Track"]
      600 GETUPVAL                         R32 7
      601 GETUPVAL                         R33 14
      602 DUPTABLE                         R34 K104 [{["normalizedPosition"], ["trackHeight"] = 56}]
      603 SETTABLEKS                       R20 R34 K103 ["normalizedPosition"]
      605 CALL                             R32 2 1
      606 SETTABLEKS                       R32 R31 K89 ["Head"]
      608 CALL                             R28 3 1
      609 SETTABLEKS                       R28 R27 K32 ["TrackArea"]
      611 CALL                             R24 3 -1
      612 RETURN                           R24 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Util"]
       13 GETTABLEKS                       R3 R3 K8 ["AnimationGen"]
       15 GETTABLEKS                       R3 R3 K9 ["AnimationGenConstants"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R1 K10 ["Foundation"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R1 K11 ["React"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R1 K12 ["ReactUtils"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETIMPORT                        R7 K1 [script]
       37 GETTABLEKS                       R7 R7 K4 ["Parent"]
       39 GETTABLEKS                       R7 R7 K13 ["ScrubbarHead"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETIMPORT                        R8 K1 [script]
       46 GETTABLEKS                       R8 R8 K4 ["Parent"]
       48 GETTABLEKS                       R8 R8 K14 ["ScrubbarTrack"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K6 [require]
       53 GETTABLEKS                       R9 R0 K7 ["Util"]
       55 GETTABLEKS                       R9 R9 K8 ["AnimationGen"]
       57 GETTABLEKS                       R9 R9 K15 ["ScrubbarUtils"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K6 [require]
       62 GETTABLEKS                       R10 R1 K16 ["Signal"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K6 [require]
       67 GETTABLEKS                       R11 R0 K7 ["Util"]
       69 GETTABLEKS                       R11 R11 K8 ["AnimationGen"]
       71 GETTABLEKS                       R11 R11 K17 ["usePlayedCurrentTime"]
       73 CALL                             R10 1 1
       74 GETIMPORT                        R11 K6 [require]
       76 GETIMPORT                        R12 K1 [script]
       78 GETTABLEKS                       R12 R12 K4 ["Parent"]
       80 GETTABLEKS                       R12 R12 K18 ["useScrubDrag"]
       82 CALL                             R11 1 1
       83 GETTABLEKS                       R12 R3 K19 ["IconButton"]
       85 GETTABLEKS                       R13 R3 K20 ["Text"]
       87 GETTABLEKS                       R14 R3 K21 ["View"]
       89 GETTABLEKS                       R15 R3 K22 ["Hooks"]
       91 GETTABLEKS                       R15 R15 K23 ["useTokens"]
       93 GETTABLEKS                       R16 R5 K24 ["createNextOrder"]
       95 GETTABLEKS                       R17 R4 K25 ["createElement"]
       97 GETTABLEKS                       R18 R2 K26 ["DEFAULT_GENERATION_FPS"]
       99 DUPCLOSURE                       R19 K27 [PROTO_20]
      100 CAPTURE                          VAL R15
      101 CAPTURE                          VAL R5
      102 CAPTURE                          VAL R10
      103 CAPTURE                          VAL R4
      104 CAPTURE                          VAL R8
      105 CAPTURE                          VAL R11
      106 CAPTURE                          VAL R16
      107 CAPTURE                          VAL R17
      108 CAPTURE                          VAL R14
      109 CAPTURE                          VAL R12
      110 CAPTURE                          VAL R3
      111 CAPTURE                          VAL R18
      112 CAPTURE                          VAL R13
      113 CAPTURE                          VAL R7
      114 CAPTURE                          VAL R6
      115 RETURN                           R19 1
