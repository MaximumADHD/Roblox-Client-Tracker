PROTO_0:
        0 LOADK                            R2 K0 ["%* / %*"]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R4 R4 K1 ["formatDuration"]
        4 MOVE                             R5 R0
        5 CALL                             R4 1 1
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K1 ["formatDuration"]
        9 MOVE                             R6 R1
       10 CALL                             R5 1 1
       11 NAMECALL                         R2 R2 K2 ["format"]
       13 CALL                             R2 3 1
       14 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getState"]
        3 CALL                             R0 1 1
        4 GETTABLEKS                       R0 R0 K1 ["CurrentSoundId"]
        6 GETUPVAL                         R1 1
        7 JUMPIFNOTEQ                      R0 R1 ; [+5]
        9 GETUPVAL                         R0 0
       10 NAMECALL                         R0 R0 K2 ["stop"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["getMousePosition"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["current"]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K1 ["current"]
       10 JUMPIFNOT                        R3 ; [+11]
       11 JUMPIFNOT                        R1 ; [+10]
       12 JUMPIFNOT                        R2 ; [+9]
       13 GETUPVAL                         R3 3
       14 GETUPVAL                         R5 4
       15 MOVE                             R6 R1
       16 MOVE                             R7 R2
       17 CALL                             R5 2 -1
       18 NAMECALL                         R3 R3 K2 ["seek"]
       20 CALL                             R3 -1 0
       21 RETURN                           R0 0
       22 GETUPVAL                         R3 3
       23 MOVE                             R5 R0
       24 NAMECALL                         R3 R3 K2 ["seek"]
       26 CALL                             R3 2 0
       27 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R1 2
        6 NAMECALL                         R1 R1 K1 ["getState"]
        8 CALL                             R1 1 1
        9 GETTABLEKS                       R1 R1 K2 ["IsPlaying"]
       11 SETTABLEKS                       R1 R0 K0 ["current"]
       13 GETUPVAL                         R0 1
       14 GETTABLEKS                       R0 R0 K0 ["current"]
       16 JUMPIFNOT                        R0 ; [+4]
       17 GETUPVAL                         R0 2
       18 NAMECALL                         R0 R0 K3 ["pause"]
       20 CALL                             R0 1 0
       21 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["current"]
        7 JUMPIFNOT                        R0 ; [+4]
        8 GETUPVAL                         R0 2
        9 NAMECALL                         R0 R0 K1 ["resume"]
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 1
       13 LOADB                            R1 0
       14 SETTABLEKS                       R1 R0 K0 ["current"]
       16 RETURN                           R0 0

PROTO_6:
        0 DIVK                             R3 R0 K0 [100]
        1 GETUPVAL                         R4 0
        2 MUL                              R2 R3 R4
        3 GETUPVAL                         R3 0
        4 LOADK                            R4 K1 ["%* / %*"]
        5 GETUPVAL                         R6 1
        6 GETTABLEKS                       R6 R6 K2 ["formatDuration"]
        8 MOVE                             R7 R2
        9 CALL                             R6 1 1
       10 GETUPVAL                         R7 1
       11 GETTABLEKS                       R7 R7 K2 ["formatDuration"]
       13 MOVE                             R8 R3
       14 CALL                             R7 1 1
       15 NAMECALL                         R4 R4 K3 ["format"]
       17 CALL                             R4 3 1
       18 MOVE                             R1 R4
       19 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+17]
        2 GETUPVAL                         R1 1
        3 LOADK                            R2 K0 ["%* / %*"]
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R4 R4 K1 ["formatDuration"]
        7 LOADN                            R5 0
        8 CALL                             R4 1 1
        9 GETUPVAL                         R5 2
       10 GETTABLEKS                       R5 R5 K1 ["formatDuration"]
       12 MOVE                             R6 R1
       13 CALL                             R5 1 1
       14 NAMECALL                         R2 R2 K2 ["format"]
       16 CALL                             R2 3 1
       17 MOVE                             R0 R2
       18 RETURN                           R0 1
       19 GETUPVAL                         R0 3
       20 GETTABLEKS                       R0 R0 K3 ["ProgressBinding"]
       22 NEWCLOSURE                       R2 P0
       23 CAPTURE                          UPVAL U1
       24 CAPTURE                          UPVAL U2
       25 NAMECALL                         R0 R0 K4 ["map"]
       27 CALL                             R0 2 -1
       28 RETURN                           R0 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["togglePlayback"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["use"]
        7 CALL                             R2 0 1
        8 NAMECALL                         R3 R2 K1 ["getAudioPreviewManager"]
       10 CALL                             R3 1 1
       11 GETUPVAL                         R4 2
       12 CALL                             R4 0 1
       13 GETTABLEKS                       R5 R0 K2 ["AssetId"]
       15 GETTABLEKS                       R7 R4 K3 ["CurrentSoundId"]
       17 JUMPIFEQ                         R7 R5 ; [+2]
       19 LOADB                            R6 0 +1
       20 LOADB                            R6 1
       21 MOVE                             R7 R6
       22 JUMPIFNOT                        R7 ; [+11]
       23 GETTABLEKS                       R8 R4 K4 ["IsLoading"]
       25 NOT                              R7 R8
       26 JUMPIFNOT                        R7 ; [+7]
       27 GETTABLEKS                       R8 R4 K5 ["TotalTime"]
       29 LOADN                            R9 0
       30 JUMPIFLT                         R9 R8 ; [+2]
       32 LOADB                            R7 0 +1
       33 LOADB                            R7 1
       34 JUMPIFNOT                        R7 ; [+3]
       35 GETTABLEKS                       R8 R4 K5 ["TotalTime"]
       37 JUMP                             ; [+3]
       38 GETTABLEKS                       R9 R0 K7 ["Duration"]
       40 ORK                              R8 R9 K6 [0]
       41 LOADN                            R10 600
       42 JUMPIFLE                         R10 R8 ; [+2]
       44 LOADB                            R9 0 +1
       45 LOADB                            R9 1
       46 GETUPVAL                         R10 3
       47 GETTABLEKS                       R10 R10 K8 ["useRef"]
       49 LOADNIL                          R11
       50 CALL                             R10 1 1
       51 GETUPVAL                         R11 3
       52 GETTABLEKS                       R11 R11 K8 ["useRef"]
       54 LOADB                            R12 0
       55 CALL                             R11 1 1
       56 GETUPVAL                         R12 3
       57 GETTABLEKS                       R12 R12 K8 ["useRef"]
       59 LOADB                            R13 0
       60 CALL                             R12 1 1
       61 GETUPVAL                         R13 3
       62 GETTABLEKS                       R13 R13 K9 ["useEffect"]
       64 NEWCLOSURE                       R14 P0
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R5
       67 NEWTABLE                         R15 0 1
       69 MOVE                             R16 R5
       70 SETLIST                          R15 R16 1 [1]
       72 CALL                             R13 2 0
       73 GETUPVAL                         R13 3
       74 GETTABLEKS                       R13 R13 K10 ["useCallback"]
       76 NEWCLOSURE                       R14 P1
       77 CAPTURE                          VAL R1
       78 CAPTURE                          VAL R10
       79 CAPTURE                          VAL R11
       80 CAPTURE                          VAL R3
       81 CAPTURE                          UPVAL U4
       82 NEWTABLE                         R15 0 0
       84 CALL                             R13 2 1
       85 GETUPVAL                         R14 3
       86 GETTABLEKS                       R14 R14 K10 ["useCallback"]
       88 NEWCLOSURE                       R15 P2
       89 CAPTURE                          VAL R11
       90 CAPTURE                          VAL R12
       91 CAPTURE                          VAL R3
       92 NEWTABLE                         R16 0 0
       94 CALL                             R14 2 1
       95 GETUPVAL                         R15 3
       96 GETTABLEKS                       R15 R15 K10 ["useCallback"]
       98 NEWCLOSURE                       R16 P3
       99 CAPTURE                          VAL R11
      100 CAPTURE                          VAL R12
      101 CAPTURE                          VAL R3
      102 NEWTABLE                         R17 0 0
      104 CALL                             R15 2 1
      105 GETUPVAL                         R16 3
      106 GETTABLEKS                       R16 R16 K11 ["useMemo"]
      108 NEWCLOSURE                       R17 P4
      109 CAPTURE                          VAL R7
      110 CAPTURE                          VAL R8
      111 CAPTURE                          UPVAL U5
      112 CAPTURE                          VAL R4
      113 NEWTABLE                         R18 0 3
      115 MOVE                             R19 R7
      116 MOVE                             R20 R8
      117 GETTABLEKS                       R21 R4 K12 ["ProgressBinding"]
      119 SETLIST                          R18 R19 3 [1]
      121 CALL                             R16 2 1
      122 GETUPVAL                         R17 3
      123 GETTABLEKS                       R17 R17 K13 ["createElement"]
      125 GETUPVAL                         R18 6
      126 GETTABLEKS                       R18 R18 K14 ["View"]
      128 DUPTABLE                         R19 K19 [{["tag"] = "row align-y-center gap-xsmall size-full-0 auto-y", ["testId"] = "details-drawer-audio-player"}]
      129 DUPTABLE                         R20 K23 [{"PlayPause", "Scrubber", "PlaybackTime"}]
      130 GETUPVAL                         R21 3
      131 GETTABLEKS                       R21 R21 K13 ["createElement"]
      133 GETUPVAL                         R22 6
      134 GETTABLEKS                       R22 R22 K24 ["IconButton"]
      136 DUPTABLE                         R23 K32 [{["LayoutOrder"] = 1, ["onActivated"], ["icon"], ["variant"], ["size"], ["testId"] = "details-drawer-audio-play-button"}]
      137 NEWCLOSURE                       R24 P5
      138 CAPTURE                          VAL R4
      139 CAPTURE                          VAL R5
      140 SETTABLEKS                       R24 R23 K27 ["onActivated"]
      142 JUMPIFNOT                        R6 ; [+11]
      143 GETTABLEKS                       R25 R4 K33 ["IsPlaying"]
      145 JUMPIFNOT                        R25 ; [+8]
      146 GETUPVAL                         R24 6
      147 GETTABLEKS                       R24 R24 K34 ["Enums"]
      149 GETTABLEKS                       R24 R24 K35 ["IconName"]
      151 GETTABLEKS                       R24 R24 K36 ["PauseSmall"]
      153 JUMP                             ; [+7]
      154 GETUPVAL                         R24 6
      155 GETTABLEKS                       R24 R24 K34 ["Enums"]
      157 GETTABLEKS                       R24 R24 K35 ["IconName"]
      159 GETTABLEKS                       R24 R24 K37 ["PlaySmall"]
      161 SETTABLEKS                       R24 R23 K28 ["icon"]
      163 GETUPVAL                         R24 6
      164 GETTABLEKS                       R24 R24 K34 ["Enums"]
      166 GETTABLEKS                       R24 R24 K38 ["ButtonVariant"]
      168 GETTABLEKS                       R24 R24 K39 ["Utility"]
      170 SETTABLEKS                       R24 R23 K29 ["variant"]
      172 GETUPVAL                         R24 6
      173 GETTABLEKS                       R24 R24 K34 ["Enums"]
      175 GETTABLEKS                       R24 R24 K40 ["InputSize"]
      177 GETTABLEKS                       R24 R24 K41 ["XSmall"]
      179 SETTABLEKS                       R24 R23 K30 ["size"]
      181 CALL                             R21 2 1
      182 SETTABLEKS                       R21 R20 K20 ["PlayPause"]
      184 GETUPVAL                         R21 3
      185 GETTABLEKS                       R21 R21 K13 ["createElement"]
      187 GETUPVAL                         R22 6
      188 GETTABLEKS                       R22 R22 K14 ["View"]
      190 DUPTABLE                         R23 K45 [{["LayoutOrder"] = 2, ["ref"], ["tag"] = "fill size-full-0 auto-y"}]
      191 SETTABLEKS                       R10 R23 K43 ["ref"]
      193 DUPTABLE                         R24 K47 [{"Slider"}]
      194 GETUPVAL                         R25 3
      195 GETTABLEKS                       R25 R25 K13 ["createElement"]
      197 GETUPVAL                         R26 6
      198 GETTABLEKS                       R26 R26 K46 ["Slider"]
      200 DUPTABLE                         R27 K55 [{["value"], ["range"], ["size"], ["isDisabled"], ["onValueChanged"], ["onDragStarted"], ["onDragEnded"], ["testId"] = "details-drawer-audio-scrubber"}]
      201 JUMPIFNOT                        R7 ; [+3]
      202 GETTABLEKS                       R28 R4 K12 ["ProgressBinding"]
      204 JUMP                             ; [+1]
      205 LOADN                            R28 0
      206 SETTABLEKS                       R28 R27 K48 ["value"]
      208 GETUPVAL                         R28 7
      209 SETTABLEKS                       R28 R27 K49 ["range"]
      211 GETUPVAL                         R28 6
      212 GETTABLEKS                       R28 R28 K34 ["Enums"]
      214 GETTABLEKS                       R28 R28 K40 ["InputSize"]
      216 GETTABLEKS                       R28 R28 K41 ["XSmall"]
      218 SETTABLEKS                       R28 R27 K30 ["size"]
      220 NOT                              R28 R7
      221 SETTABLEKS                       R28 R27 K50 ["isDisabled"]
      223 SETTABLEKS                       R13 R27 K51 ["onValueChanged"]
      225 SETTABLEKS                       R14 R27 K52 ["onDragStarted"]
      227 SETTABLEKS                       R15 R27 K53 ["onDragEnded"]
      229 CALL                             R25 2 1
      230 SETTABLEKS                       R25 R24 K46 ["Slider"]
      232 CALL                             R21 3 1
      233 SETTABLEKS                       R21 R20 K21 ["Scrubber"]
      235 GETUPVAL                         R21 3
      236 GETTABLEKS                       R21 R21 K13 ["createElement"]
      238 GETUPVAL                         R22 6
      239 GETTABLEKS                       R22 R22 K56 ["Text"]
      241 DUPTABLE                         R23 K59 [{["LayoutOrder"] = 3, ["Text"], ["tag"], ["testId"] = "details-drawer-audio-time"}]
      242 SETTABLEKS                       R16 R23 K56 ["Text"]
      244 NEWTABLE                         R24 4 0
      246 LOADB                            R25 1
      247 SETTABLEKS                       R25 R24 K60 ["auto-y text-caption-medium text-align-x-center content-muted"]
      249 SETTABLEKS                       R9 R24 K61 ["size-1900-0"]
      251 NOT                              R25 R9
      252 SETTABLEKS                       R25 R24 K62 ["size-1700-0"]
      254 SETTABLEKS                       R24 R23 K15 ["tag"]
      256 CALL                             R21 2 1
      257 SETTABLEKS                       R21 R20 K22 ["PlaybackTime"]
      259 CALL                             R17 3 -1
      260 RETURN                           R17 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Controllers"]
       27 GETTABLEKS                       R4 R4 K11 ["Input"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K10 ["Controllers"]
       36 GETTABLEKS                       R5 R5 K12 ["ItemsController"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K9 ["Src"]
       43 GETTABLEKS                       R6 R6 K13 ["Hooks"]
       45 GETTABLEKS                       R6 R6 K14 ["useAudioPreview"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K9 ["Src"]
       52 GETTABLEKS                       R7 R7 K15 ["Util"]
       54 GETTABLEKS                       R7 R7 K16 ["getScrubProgress"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETIMPORT                        R8 K1 [script]
       61 GETTABLEKS                       R8 R8 K17 ["Parent"]
       63 GETTABLEKS                       R8 R8 K18 ["Rows"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K21 [NumberRange.new]
       68 LOADN                            R9 0
       69 LOADN                            R10 100
       70 CALL                             R8 2 1
       71 DUPCLOSURE                       R9 K22 [PROTO_0]
       72 CAPTURE                          VAL R7
       73 DUPCLOSURE                       R10 K23 [PROTO_9]
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R5
       77 CAPTURE                          VAL R1
       78 CAPTURE                          VAL R6
       79 CAPTURE                          VAL R7
       80 CAPTURE                          VAL R2
       81 CAPTURE                          VAL R8
       82 RETURN                           R10 1
