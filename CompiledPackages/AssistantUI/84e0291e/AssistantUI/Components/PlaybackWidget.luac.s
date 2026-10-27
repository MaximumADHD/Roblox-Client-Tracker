PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isPlaying"]
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["setPlaying"]
        7 LOADB                            R2 0
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K2 ["seek"]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K3 ["currentTime"]
       15 ADD                              R3 R4 R0
       16 LOADN                            R4 0
       17 GETUPVAL                         R5 1
       18 FASTCALL                         MATH_CLAMP ; [+2]
       19 GETIMPORT                        R2 K6 [math.clamp]
       21 CALL                             R2 3 1
       22 CALL                             R1 1 0
       23 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 DIVRK                            R1 K0 [-1] R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 DIVRK                            R1 K0 [1] R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["toolUseId"]
        2 GETUPVAL                         R2 0
        3 DUPTABLE                         R3 K3 [{"toolUseId", "duration", "disabled"}]
        4 SETTABLEKS                       R1 R3 K0 ["toolUseId"]
        6 GETTABLEKS                       R5 R0 K1 ["duration"]
        8 ORK                              R4 R5 K4 [10]
        9 SETTABLEKS                       R4 R3 K1 ["duration"]
       11 GETTABLEKS                       R4 R0 K2 ["disabled"]
       13 SETTABLEKS                       R4 R3 K2 ["disabled"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R3 R2 K1 ["duration"]
       18 LOADB                            R4 1
       19 GETTABLEKS                       R5 R0 K2 ["disabled"]
       21 JUMPIFEQKB                       R5 TRUE ; [+4]
       23 GETTABLEKS                       R5 R2 K5 ["available"]
       25 NOT                              R4 R5
       26 GETUPVAL                         R5 1
       27 GETTABLEKS                       R5 R5 K6 ["useCallback"]
       29 NEWCLOSURE                       R6 P0
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R3
       32 NEWTABLE                         R7 0 2
       34 MOVE                             R8 R2
       35 MOVE                             R9 R3
       36 SETLIST                          R7 R8 2 [1]
       38 CALL                             R5 2 1
       39 GETUPVAL                         R6 2
       40 CALL                             R6 0 1
       41 GETUPVAL                         R7 3
       42 GETUPVAL                         R8 4
       43 DUPTABLE                         R9 K10 [{["tag"] = "col gap-small size-full-0 auto-y padding-small", ["LayoutOrder"]}]
       44 GETTABLEKS                       R10 R0 K11 ["layoutOrder"]
       46 SETTABLEKS                       R10 R9 K9 ["LayoutOrder"]
       48 DUPTABLE                         R10 K14 [{"ScrubBar", "PlaybackUI"}]
       49 GETUPVAL                         R11 3
       50 GETUPVAL                         R12 5
       51 DUPTABLE                         R13 K21 [{"LayoutOrder", "value", "range", "isDisabled", "onValueChanged", "onDragStarted", "onDragEnded"}]
       52 MOVE                             R14 R6
       53 CALL                             R14 0 1
       54 SETTABLEKS                       R14 R13 K9 ["LayoutOrder"]
       56 GETTABLEKS                       R14 R2 K22 ["currentTime"]
       58 SETTABLEKS                       R14 R13 K15 ["value"]
       60 GETIMPORT                        R14 K25 [NumberRange.new]
       62 LOADN                            R15 0
       63 MOVE                             R16 R3
       64 CALL                             R14 2 1
       65 SETTABLEKS                       R14 R13 K16 ["range"]
       67 GETTABLEKS                       R14 R0 K2 ["disabled"]
       69 SETTABLEKS                       R14 R13 K17 ["isDisabled"]
       71 GETTABLEKS                       R14 R2 K26 ["seek"]
       73 SETTABLEKS                       R14 R13 K18 ["onValueChanged"]
       75 GETTABLEKS                       R14 R2 K27 ["beginScrub"]
       77 SETTABLEKS                       R14 R13 K19 ["onDragStarted"]
       79 GETTABLEKS                       R14 R2 K28 ["endScrub"]
       81 SETTABLEKS                       R14 R13 K20 ["onDragEnded"]
       83 CALL                             R11 2 1
       84 SETTABLEKS                       R11 R10 K12 ["ScrubBar"]
       86 GETUPVAL                         R11 3
       87 GETUPVAL                         R12 4
       88 DUPTABLE                         R13 K30 [{["tag"] = "row align-y-center gap-small auto-xy", ["LayoutOrder"]}]
       89 MOVE                             R14 R6
       90 CALL                             R14 0 1
       91 SETTABLEKS                       R14 R13 K9 ["LayoutOrder"]
       93 DUPTABLE                         R14 K35 [{"PlayPauseButton", "BackButton", "ForwardButton", "Timestamp"}]
       94 GETUPVAL                         R15 3
       95 GETUPVAL                         R16 6
       96 DUPTABLE                         R17 K39 [{"LayoutOrder", "icon", "size", "isDisabled", "onActivated"}]
       97 MOVE                             R18 R6
       98 CALL                             R18 0 1
       99 SETTABLEKS                       R18 R17 K9 ["LayoutOrder"]
      101 GETTABLEKS                       R19 R2 K40 ["isPlaying"]
      103 JUMPIFNOT                        R19 ; [+8]
      104 GETUPVAL                         R18 7
      105 GETTABLEKS                       R18 R18 K41 ["Enums"]
      107 GETTABLEKS                       R18 R18 K42 ["IconName"]
      109 GETTABLEKS                       R18 R18 K43 ["PauseLarge"]
      111 JUMP                             ; [+7]
      112 GETUPVAL                         R18 7
      113 GETTABLEKS                       R18 R18 K41 ["Enums"]
      115 GETTABLEKS                       R18 R18 K42 ["IconName"]
      117 GETTABLEKS                       R18 R18 K44 ["PlayLarge"]
      119 SETTABLEKS                       R18 R17 K36 ["icon"]
      121 GETUPVAL                         R18 7
      122 GETTABLEKS                       R18 R18 K41 ["Enums"]
      124 GETTABLEKS                       R18 R18 K45 ["IconSize"]
      126 GETTABLEKS                       R18 R18 K46 ["XSmall"]
      128 SETTABLEKS                       R18 R17 K37 ["size"]
      130 SETTABLEKS                       R4 R17 K17 ["isDisabled"]
      132 GETTABLEKS                       R18 R2 K47 ["togglePlaying"]
      134 SETTABLEKS                       R18 R17 K38 ["onActivated"]
      136 CALL                             R15 2 1
      137 SETTABLEKS                       R15 R14 K31 ["PlayPauseButton"]
      139 GETUPVAL                         R15 3
      140 GETUPVAL                         R16 6
      141 DUPTABLE                         R17 K39 [{"LayoutOrder", "icon", "size", "isDisabled", "onActivated"}]
      142 MOVE                             R18 R6
      143 CALL                             R18 0 1
      144 SETTABLEKS                       R18 R17 K9 ["LayoutOrder"]
      146 GETUPVAL                         R18 7
      147 GETTABLEKS                       R18 R18 K41 ["Enums"]
      149 GETTABLEKS                       R18 R18 K42 ["IconName"]
      151 GETTABLEKS                       R18 R18 K48 ["SkipStartSmall"]
      153 SETTABLEKS                       R18 R17 K36 ["icon"]
      155 GETUPVAL                         R18 7
      156 GETTABLEKS                       R18 R18 K41 ["Enums"]
      158 GETTABLEKS                       R18 R18 K45 ["IconSize"]
      160 GETTABLEKS                       R18 R18 K46 ["XSmall"]
      162 SETTABLEKS                       R18 R17 K37 ["size"]
      164 SETTABLEKS                       R4 R17 K17 ["isDisabled"]
      166 NEWCLOSURE                       R18 P1
      167 CAPTURE                          VAL R5
      168 CAPTURE                          UPVAL U8
      169 SETTABLEKS                       R18 R17 K38 ["onActivated"]
      171 CALL                             R15 2 1
      172 SETTABLEKS                       R15 R14 K32 ["BackButton"]
      174 GETUPVAL                         R15 3
      175 GETUPVAL                         R16 6
      176 DUPTABLE                         R17 K39 [{"LayoutOrder", "icon", "size", "isDisabled", "onActivated"}]
      177 MOVE                             R18 R6
      178 CALL                             R18 0 1
      179 SETTABLEKS                       R18 R17 K9 ["LayoutOrder"]
      181 GETUPVAL                         R18 7
      182 GETTABLEKS                       R18 R18 K41 ["Enums"]
      184 GETTABLEKS                       R18 R18 K42 ["IconName"]
      186 GETTABLEKS                       R18 R18 K49 ["SkipEndSmall"]
      188 SETTABLEKS                       R18 R17 K36 ["icon"]
      190 GETUPVAL                         R18 7
      191 GETTABLEKS                       R18 R18 K41 ["Enums"]
      193 GETTABLEKS                       R18 R18 K45 ["IconSize"]
      195 GETTABLEKS                       R18 R18 K46 ["XSmall"]
      197 SETTABLEKS                       R18 R17 K37 ["size"]
      199 SETTABLEKS                       R4 R17 K17 ["isDisabled"]
      201 NEWCLOSURE                       R18 P2
      202 CAPTURE                          VAL R5
      203 CAPTURE                          UPVAL U8
      204 SETTABLEKS                       R18 R17 K38 ["onActivated"]
      206 CALL                             R15 2 1
      207 SETTABLEKS                       R15 R14 K33 ["ForwardButton"]
      209 GETUPVAL                         R15 3
      210 GETUPVAL                         R16 9
      211 DUPTABLE                         R17 K52 [{["LayoutOrder"], ["tag"] = "shrink auto-xy text-body-small text-wrap text-align-x-left", ["Text"]}]
      212 MOVE                             R18 R6
      213 CALL                             R18 0 1
      214 SETTABLEKS                       R18 R17 K9 ["LayoutOrder"]
      216 GETIMPORT                        R18 K55 [string.format]
      218 LOADK                            R19 K56 ["%.2f / %.2f"]
      219 GETTABLEKS                       R20 R2 K22 ["currentTime"]
      221 MOVE                             R21 R3
      222 CALL                             R18 3 1
      223 SETTABLEKS                       R18 R17 K51 ["Text"]
      225 CALL                             R15 2 1
      226 SETTABLEKS                       R15 R14 K34 ["Timestamp"]
      228 CALL                             R11 3 1
      229 SETTABLEKS                       R11 R10 K13 ["PlaybackUI"]
      231 CALL                             R7 3 -1
      232 RETURN                           R7 -1

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
       35 GETTABLEKS                       R7 R0 K13 ["Hooks"]
       37 GETTABLEKS                       R7 R7 K14 ["useAnimationPlaybackController"]
       39 CALL                             R6 1 1
       40 GETTABLEKS                       R7 R3 K15 ["IconButton"]
       42 GETTABLEKS                       R8 R3 K16 ["Slider"]
       44 GETTABLEKS                       R9 R3 K17 ["Text"]
       46 GETTABLEKS                       R10 R3 K18 ["View"]
       48 GETTABLEKS                       R11 R5 K19 ["createNextOrder"]
       50 GETTABLEKS                       R12 R4 K20 ["createElement"]
       52 GETTABLEKS                       R13 R2 K21 ["DEFAULT_GENERATION_FPS"]
       54 DUPCLOSURE                       R14 K22 [PROTO_3]
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R11
       58 CAPTURE                          VAL R12
       59 CAPTURE                          VAL R10
       60 CAPTURE                          VAL R8
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R13
       64 CAPTURE                          VAL R9
       65 RETURN                           R14 1
