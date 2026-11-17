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
        1 NAMECALL                         R1 R1 K0 ["getState"]
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R1 R1 K1 ["CurrentSoundId"]
        6 GETUPVAL                         R2 1
        7 JUMPIFEQ                         R1 R2 ; [+2]
        9 LOADB                            R0 0 +1
       10 LOADB                            R0 1
       11 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETUPVAL                         R1 1
        4 MOVE                             R3 R0
        5 NAMECALL                         R1 R1 K0 ["seek"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 1
        3 JUMPIFNOT                        R1 ; [+6]
        4 GETUPVAL                         R1 2
        5 NAMECALL                         R1 R1 K0 ["getState"]
        7 CALL                             R1 1 1
        8 GETTABLEKS                       R1 R1 K1 ["IsPlaying"]
       10 SETTABLEKS                       R1 R0 K2 ["current"]
       12 GETUPVAL                         R0 0
       13 GETTABLEKS                       R0 R0 K2 ["current"]
       15 JUMPIFNOT                        R0 ; [+4]
       16 GETUPVAL                         R0 2
       17 NAMECALL                         R0 R0 K3 ["pause"]
       19 CALL                             R0 1 0
       20 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K1 ["resume"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 0
        9 LOADB                            R1 0
       10 SETTABLEKS                       R1 R0 K0 ["current"]
       12 RETURN                           R0 0

PROTO_7:
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

PROTO_8:
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

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["togglePlayback"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 NAMECALL                         R2 R1 K1 ["getAudioPreviewManager"]
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 1
        8 CALL                             R3 0 1
        9 GETTABLEKS                       R4 R0 K2 ["AssetId"]
       11 GETTABLEKS                       R6 R3 K3 ["CurrentSoundId"]
       13 JUMPIFEQ                         R6 R4 ; [+2]
       15 LOADB                            R5 0 +1
       16 LOADB                            R5 1
       17 MOVE                             R6 R5
       18 JUMPIFNOT                        R6 ; [+11]
       19 GETTABLEKS                       R7 R3 K4 ["IsLoading"]
       21 NOT                              R6 R7
       22 JUMPIFNOT                        R6 ; [+7]
       23 GETTABLEKS                       R7 R3 K5 ["TotalTime"]
       25 LOADN                            R8 0
       26 JUMPIFLT                         R8 R7 ; [+2]
       28 LOADB                            R6 0 +1
       29 LOADB                            R6 1
       30 JUMPIFNOT                        R6 ; [+3]
       31 GETTABLEKS                       R7 R3 K5 ["TotalTime"]
       33 JUMP                             ; [+3]
       34 GETTABLEKS                       R8 R0 K7 ["Duration"]
       36 ORK                              R7 R8 K6 [0]
       37 LOADN                            R9 600
       38 JUMPIFLE                         R9 R7 ; [+2]
       40 LOADB                            R8 0 +1
       41 LOADB                            R8 1
       42 GETUPVAL                         R9 2
       43 GETTABLEKS                       R9 R9 K8 ["useRef"]
       45 LOADB                            R10 0
       46 CALL                             R9 1 1
       47 GETUPVAL                         R10 2
       48 GETTABLEKS                       R10 R10 K9 ["useEffect"]
       50 NEWCLOSURE                       R11 P0
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R4
       53 NEWTABLE                         R12 0 1
       55 MOVE                             R13 R4
       56 SETLIST                          R12 R13 1 [1]
       58 CALL                             R10 2 0
       59 GETUPVAL                         R10 2
       60 GETTABLEKS                       R10 R10 K10 ["useCallback"]
       62 NEWCLOSURE                       R11 P1
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R4
       65 NEWTABLE                         R12 0 1
       67 MOVE                             R13 R4
       68 SETLIST                          R12 R13 1 [1]
       70 CALL                             R10 2 1
       71 GETUPVAL                         R11 2
       72 GETTABLEKS                       R11 R11 K10 ["useCallback"]
       74 NEWCLOSURE                       R12 P2
       75 CAPTURE                          VAL R10
       76 CAPTURE                          VAL R2
       77 NEWTABLE                         R13 0 1
       79 MOVE                             R14 R10
       80 SETLIST                          R13 R14 1 [1]
       82 CALL                             R11 2 1
       83 GETUPVAL                         R12 2
       84 GETTABLEKS                       R12 R12 K10 ["useCallback"]
       86 NEWCLOSURE                       R13 P3
       87 CAPTURE                          VAL R9
       88 CAPTURE                          VAL R10
       89 CAPTURE                          VAL R2
       90 NEWTABLE                         R14 0 1
       92 MOVE                             R15 R10
       93 SETLIST                          R14 R15 1 [1]
       95 CALL                             R12 2 1
       96 GETUPVAL                         R13 2
       97 GETTABLEKS                       R13 R13 K10 ["useCallback"]
       99 NEWCLOSURE                       R14 P4
      100 CAPTURE                          VAL R9
      101 CAPTURE                          VAL R2
      102 NEWTABLE                         R15 0 0
      104 CALL                             R13 2 1
      105 GETUPVAL                         R14 2
      106 GETTABLEKS                       R14 R14 K11 ["useMemo"]
      108 NEWCLOSURE                       R15 P5
      109 CAPTURE                          VAL R6
      110 CAPTURE                          VAL R7
      111 CAPTURE                          UPVAL U3
      112 CAPTURE                          VAL R3
      113 NEWTABLE                         R16 0 3
      115 MOVE                             R17 R6
      116 MOVE                             R18 R7
      117 GETTABLEKS                       R19 R3 K12 ["ProgressBinding"]
      119 SETLIST                          R16 R17 3 [1]
      121 CALL                             R14 2 1
      122 GETUPVAL                         R15 2
      123 GETTABLEKS                       R15 R15 K13 ["createElement"]
      125 GETUPVAL                         R16 4
      126 GETTABLEKS                       R16 R16 K14 ["View"]
      128 DUPTABLE                         R17 K19 [{["tag"] = "row align-y-center gap-xsmall size-full-0 auto-y", ["testId"] = "details-drawer-audio-player"}]
      129 DUPTABLE                         R18 K23 [{"PlayPause", "Scrubber", "PlaybackTime"}]
      130 GETUPVAL                         R19 2
      131 GETTABLEKS                       R19 R19 K13 ["createElement"]
      133 GETUPVAL                         R20 4
      134 GETTABLEKS                       R20 R20 K24 ["IconButton"]
      136 DUPTABLE                         R21 K32 [{["LayoutOrder"] = 1, ["onActivated"], ["icon"], ["variant"], ["size"], ["testId"] = "details-drawer-audio-play-button"}]
      137 NEWCLOSURE                       R22 P6
      138 CAPTURE                          VAL R3
      139 CAPTURE                          VAL R4
      140 SETTABLEKS                       R22 R21 K27 ["onActivated"]
      142 JUMPIFNOT                        R5 ; [+11]
      143 GETTABLEKS                       R23 R3 K33 ["IsPlaying"]
      145 JUMPIFNOT                        R23 ; [+8]
      146 GETUPVAL                         R22 4
      147 GETTABLEKS                       R22 R22 K34 ["Enums"]
      149 GETTABLEKS                       R22 R22 K35 ["IconName"]
      151 GETTABLEKS                       R22 R22 K36 ["PauseSmall"]
      153 JUMP                             ; [+7]
      154 GETUPVAL                         R22 4
      155 GETTABLEKS                       R22 R22 K34 ["Enums"]
      157 GETTABLEKS                       R22 R22 K35 ["IconName"]
      159 GETTABLEKS                       R22 R22 K37 ["PlaySmall"]
      161 SETTABLEKS                       R22 R21 K28 ["icon"]
      163 GETUPVAL                         R22 4
      164 GETTABLEKS                       R22 R22 K34 ["Enums"]
      166 GETTABLEKS                       R22 R22 K38 ["ButtonVariant"]
      168 GETTABLEKS                       R22 R22 K39 ["Utility"]
      170 SETTABLEKS                       R22 R21 K29 ["variant"]
      172 GETUPVAL                         R22 4
      173 GETTABLEKS                       R22 R22 K34 ["Enums"]
      175 GETTABLEKS                       R22 R22 K40 ["InputSize"]
      177 GETTABLEKS                       R22 R22 K41 ["XSmall"]
      179 SETTABLEKS                       R22 R21 K30 ["size"]
      181 CALL                             R19 2 1
      182 SETTABLEKS                       R19 R18 K20 ["PlayPause"]
      184 GETUPVAL                         R19 2
      185 GETTABLEKS                       R19 R19 K13 ["createElement"]
      187 GETUPVAL                         R20 4
      188 GETTABLEKS                       R20 R20 K14 ["View"]
      190 DUPTABLE                         R21 K44 [{["LayoutOrder"] = 2, ["tag"] = "fill size-full-0 auto-y"}]
      191 DUPTABLE                         R22 K46 [{"Slider"}]
      192 GETUPVAL                         R23 2
      193 GETTABLEKS                       R23 R23 K13 ["createElement"]
      195 GETUPVAL                         R24 4
      196 GETTABLEKS                       R24 R24 K45 ["Slider"]
      198 DUPTABLE                         R25 K53 [{["value"], ["range"], ["size"], ["onValueChanged"], ["onDragStarted"], ["onDragEnded"], ["testId"] = "details-drawer-audio-scrubber"}]
      199 JUMPIFNOT                        R6 ; [+3]
      200 GETTABLEKS                       R26 R3 K12 ["ProgressBinding"]
      202 JUMP                             ; [+1]
      203 LOADN                            R26 0
      204 SETTABLEKS                       R26 R25 K47 ["value"]
      206 GETUPVAL                         R26 5
      207 SETTABLEKS                       R26 R25 K48 ["range"]
      209 GETUPVAL                         R26 4
      210 GETTABLEKS                       R26 R26 K34 ["Enums"]
      212 GETTABLEKS                       R26 R26 K40 ["InputSize"]
      214 GETTABLEKS                       R26 R26 K41 ["XSmall"]
      216 SETTABLEKS                       R26 R25 K30 ["size"]
      218 SETTABLEKS                       R11 R25 K49 ["onValueChanged"]
      220 SETTABLEKS                       R12 R25 K50 ["onDragStarted"]
      222 SETTABLEKS                       R13 R25 K51 ["onDragEnded"]
      224 CALL                             R23 2 1
      225 SETTABLEKS                       R23 R22 K45 ["Slider"]
      227 CALL                             R19 3 1
      228 SETTABLEKS                       R19 R18 K21 ["Scrubber"]
      230 GETUPVAL                         R19 2
      231 GETTABLEKS                       R19 R19 K13 ["createElement"]
      233 GETUPVAL                         R20 4
      234 GETTABLEKS                       R20 R20 K54 ["Text"]
      236 DUPTABLE                         R21 K57 [{["LayoutOrder"] = 3, ["Text"], ["tag"], ["testId"] = "details-drawer-audio-time"}]
      237 SETTABLEKS                       R14 R21 K54 ["Text"]
      239 NEWTABLE                         R22 4 0
      241 LOADB                            R23 1
      242 SETTABLEKS                       R23 R22 K58 ["auto-y text-caption-medium text-align-x-center content-muted"]
      244 SETTABLEKS                       R8 R22 K59 ["size-1900-0"]
      246 NOT                              R23 R8
      247 SETTABLEKS                       R23 R22 K60 ["size-1700-0"]
      249 SETTABLEKS                       R22 R21 K15 ["tag"]
      251 CALL                             R19 2 1
      252 SETTABLEKS                       R19 R18 K22 ["PlaybackTime"]
      254 CALL                             R15 3 -1
      255 RETURN                           R15 -1

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
       27 GETTABLEKS                       R4 R4 K11 ["ItemsController"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K12 ["Hooks"]
       36 GETTABLEKS                       R5 R5 K13 ["useAudioPreview"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETIMPORT                        R6 K1 [script]
       43 GETTABLEKS                       R6 R6 K14 ["Parent"]
       45 GETTABLEKS                       R6 R6 K15 ["Rows"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K18 [NumberRange.new]
       50 LOADN                            R7 0
       51 LOADN                            R8 100
       52 CALL                             R6 2 1
       53 DUPCLOSURE                       R7 K19 [PROTO_0]
       54 CAPTURE                          VAL R5
       55 DUPCLOSURE                       R8 K20 [PROTO_10]
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R1
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R6
       62 RETURN                           R8 1
