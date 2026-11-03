PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["toggleIsPlayingAsync"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isOpen"]
        3 JUMPIFNOT                        R0 ; [+2]
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+1]
        6 RETURN                           R0 0
        7 GETIMPORT                        R0 K3 [task.spawn]
        9 NEWCLOSURE                       R1 P0
       10 CAPTURE                          UPVAL U2
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ContextServices"]
        3 GETTABLEKS                       R0 R0 K1 ["Localization"]
        5 NAMECALL                         R0 R0 K2 ["use"]
        7 CALL                             R0 1 1
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K3 ["useContext"]
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K4 ["Context"]
       14 CALL                             R1 1 1
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R2 R2 K3 ["useContext"]
       18 GETUPVAL                         R3 3
       19 GETTABLEKS                       R3 R3 K4 ["Context"]
       21 CALL                             R2 1 1
       22 GETUPVAL                         R3 4
       23 NEWTABLE                         R4 0 0
       25 CALL                             R3 1 1
       26 GETUPVAL                         R4 1
       27 GETTABLEKS                       R4 R4 K5 ["useCallback"]
       29 NEWCLOSURE                       R5 P0
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R1
       33 NEWTABLE                         R6 0 3
       35 GETTABLEKS                       R7 R2 K6 ["isOpen"]
       37 MOVE                             R8 R3
       38 GETTABLEKS                       R9 R1 K7 ["toggleIsPlayingAsync"]
       40 SETLIST                          R6 R7 3 [1]
       42 CALL                             R4 2 1
       43 LOADK                            R7 K8 ["Common"]
       44 LOADK                            R8 K9 ["AnimationEditor"]
       45 LOADK                            R9 K10 ["TogglePlay"]
       46 NAMECALL                         R5 R0 K11 ["getExternalText"]
       48 CALL                             R5 4 1
       49 GETUPVAL                         R6 1
       50 GETTABLEKS                       R6 R6 K12 ["createElement"]
       52 GETUPVAL                         R7 5
       53 DUPTABLE                         R8 K23 [{["ActionId"] = "AnimationGraphEditor_TogglePlay", ["Text"], ["StatusTip"], ["DefaultShortcut"] = " ", ["Enabled"], ["AllowBinding"] = True, ["OnTrigger"]}]
       54 SETTABLEKS                       R5 R8 K15 ["Text"]
       56 SETTABLEKS                       R5 R8 K16 ["StatusTip"]
       58 GETTABLEKS                       R9 R2 K6 ["isOpen"]
       60 JUMPIFNOT                        R9 ; [+1]
       61 NOT                              R9 R3
       62 SETTABLEKS                       R9 R8 K19 ["Enabled"]
       64 SETTABLEKS                       R4 R8 K22 ["OnTrigger"]
       66 CALL                             R6 2 -1
       67 RETURN                           R6 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["toggleIsPlayingAsync"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+9]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["ContextServices"]
        6 GETTABLEKS                       R1 R1 K1 ["Localization"]
        8 NAMECALL                         R1 R1 K2 ["use"]
       10 CALL                             R1 1 1
       11 JUMP                             ; [+1]
       12 LOADNIL                          R1
       13 GETUPVAL                         R2 2
       14 GETTABLEKS                       R2 R2 K3 ["useContext"]
       16 GETUPVAL                         R3 3
       17 GETTABLEKS                       R3 R3 K4 ["Context"]
       19 CALL                             R2 1 1
       20 GETUPVAL                         R3 4
       21 NEWTABLE                         R4 0 0
       23 CALL                             R3 1 1
       24 GETUPVAL                         R4 2
       25 GETTABLEKS                       R4 R4 K5 ["useCallback"]
       27 NEWCLOSURE                       R5 P0
       28 CAPTURE                          VAL R2
       29 NEWTABLE                         R6 0 1
       31 GETTABLEKS                       R7 R2 K6 ["toggleIsPlayingAsync"]
       33 SETLIST                          R6 R7 1 [1]
       35 CALL                             R4 2 1
       36 GETUPVAL                         R5 2
       37 GETTABLEKS                       R5 R5 K7 ["createElement"]
       39 GETUPVAL                         R6 5
       40 GETTABLEKS                       R6 R6 K8 ["IconButton"]
       42 DUPTABLE                         R7 K15 [{"icon", "isDisabled", "variant", "size", "onActivated", "testId"}]
       43 GETTABLEKS                       R9 R2 K16 ["isPlaying"]
       45 JUMPIFNOT                        R9 ; [+8]
       46 GETUPVAL                         R8 5
       47 GETTABLEKS                       R8 R8 K17 ["Enums"]
       49 GETTABLEKS                       R8 R8 K18 ["IconName"]
       51 GETTABLEKS                       R8 R8 K19 ["PauseLarge"]
       53 JUMP                             ; [+7]
       54 GETUPVAL                         R8 5
       55 GETTABLEKS                       R8 R8 K17 ["Enums"]
       57 GETTABLEKS                       R8 R8 K18 ["IconName"]
       59 GETTABLEKS                       R8 R8 K20 ["PlayLarge"]
       61 SETTABLEKS                       R8 R7 K9 ["icon"]
       63 SETTABLEKS                       R3 R7 K10 ["isDisabled"]
       65 GETTABLEKS                       R9 R2 K16 ["isPlaying"]
       67 JUMPIFNOT                        R9 ; [+8]
       68 GETUPVAL                         R8 5
       69 GETTABLEKS                       R8 R8 K17 ["Enums"]
       71 GETTABLEKS                       R8 R8 K21 ["ButtonVariant"]
       73 GETTABLEKS                       R8 R8 K22 ["Standard"]
       75 JUMP                             ; [+1]
       76 LOADNIL                          R8
       77 SETTABLEKS                       R8 R7 K11 ["variant"]
       79 GETUPVAL                         R8 5
       80 GETTABLEKS                       R8 R8 K17 ["Enums"]
       82 GETTABLEKS                       R8 R8 K23 ["IconSize"]
       84 GETTABLEKS                       R8 R8 K24 ["XSmall"]
       86 SETTABLEKS                       R8 R7 K12 ["size"]
       88 SETTABLEKS                       R4 R7 K13 ["onActivated"]
       90 GETTABLEKS                       R9 R2 K16 ["isPlaying"]
       92 JUMPIFNOT                        R9 ; [+2]
       93 LOADK                            R8 K25 ["PlayButton-Stop"]
       94 JUMP                             ; [+1]
       95 LOADK                            R8 K26 ["PlayButton-Play"]
       96 SETTABLEKS                       R8 R7 K14 ["testId"]
       98 CALL                             R5 2 1
       99 GETUPVAL                         R6 6
      100 CALL                             R6 0 1
      101 JUMPIF                           R6 ; [+47]
      102 GETUPVAL                         R6 0
      103 CALL                             R6 0 1
      104 JUMPIFNOT                        R6 ; [+43]
      105 GETUPVAL                         R6 2
      106 GETTABLEKS                       R6 R6 K7 ["createElement"]
      108 GETUPVAL                         R7 5
      109 GETTABLEKS                       R7 R7 K27 ["Tooltip"]
      111 DUPTABLE                         R8 K31 [{"title", "side", "LayoutOrder"}]
      112 GETTABLEKS                       R10 R2 K16 ["isPlaying"]
      114 JUMPIFNOT                        R10 ; [+8]
      115 LOADK                            R11 K32 ["Common"]
      116 LOADK                            R12 K33 ["AnimationEditor"]
      117 LOADK                            R13 K34 ["Toolbar"]
      118 LOADK                            R14 K35 ["PauseTooltip"]
      119 NAMECALL                         R9 R1 K36 ["getExternalText"]
      121 CALL                             R9 5 1
      122 JUMP                             ; [+7]
      123 LOADK                            R11 K32 ["Common"]
      124 LOADK                            R12 K33 ["AnimationEditor"]
      125 LOADK                            R13 K34 ["Toolbar"]
      126 LOADK                            R14 K37 ["PlayTooltip"]
      127 NAMECALL                         R9 R1 K36 ["getExternalText"]
      129 CALL                             R9 5 1
      130 SETTABLEKS                       R9 R8 K28 ["title"]
      132 GETUPVAL                         R9 5
      133 GETTABLEKS                       R9 R9 K17 ["Enums"]
      135 GETTABLEKS                       R9 R9 K38 ["PopoverSide"]
      137 GETTABLEKS                       R9 R9 K39 ["Bottom"]
      139 SETTABLEKS                       R9 R8 K29 ["side"]
      141 GETTABLEKS                       R9 R0 K30 ["LayoutOrder"]
      143 SETTABLEKS                       R9 R8 K30 ["LayoutOrder"]
      145 MOVE                             R9 R5
      146 CALL                             R6 3 -1
      147 RETURN                           R6 -1
      148 RETURN                           R5 1
      149 LOADNIL                          R6
      150 GETUPVAL                         R7 0
      151 CALL                             R7 0 1
      152 JUMPIFNOT                        R7 ; [+44]
      153 GETUPVAL                         R7 2
      154 GETTABLEKS                       R7 R7 K7 ["createElement"]
      156 GETUPVAL                         R8 5
      157 GETTABLEKS                       R8 R8 K27 ["Tooltip"]
      159 DUPTABLE                         R9 K31 [{"title", "side", "LayoutOrder"}]
      160 GETTABLEKS                       R11 R2 K16 ["isPlaying"]
      162 JUMPIFNOT                        R11 ; [+8]
      163 LOADK                            R12 K32 ["Common"]
      164 LOADK                            R13 K33 ["AnimationEditor"]
      165 LOADK                            R14 K34 ["Toolbar"]
      166 LOADK                            R15 K35 ["PauseTooltip"]
      167 NAMECALL                         R10 R1 K36 ["getExternalText"]
      169 CALL                             R10 5 1
      170 JUMP                             ; [+7]
      171 LOADK                            R12 K32 ["Common"]
      172 LOADK                            R13 K33 ["AnimationEditor"]
      173 LOADK                            R14 K34 ["Toolbar"]
      174 LOADK                            R15 K37 ["PlayTooltip"]
      175 NAMECALL                         R10 R1 K36 ["getExternalText"]
      177 CALL                             R10 5 1
      178 SETTABLEKS                       R10 R9 K28 ["title"]
      180 GETUPVAL                         R10 5
      181 GETTABLEKS                       R10 R10 K17 ["Enums"]
      183 GETTABLEKS                       R10 R10 K38 ["PopoverSide"]
      185 GETTABLEKS                       R10 R10 K39 ["Bottom"]
      187 SETTABLEKS                       R10 R9 K29 ["side"]
      189 GETTABLEKS                       R10 R0 K30 ["LayoutOrder"]
      191 SETTABLEKS                       R10 R9 K30 ["LayoutOrder"]
      193 MOVE                             R10 R5
      194 CALL                             R7 3 1
      195 MOVE                             R6 R7
      196 JUMP                             ; [+1]
      197 MOVE                             R6 R5
      198 GETUPVAL                         R7 2
      199 GETTABLEKS                       R7 R7 K7 ["createElement"]
      201 GETUPVAL                         R8 2
      202 GETTABLEKS                       R8 R8 K40 ["Fragment"]
      204 NEWTABLE                         R9 0 0
      206 DUPTABLE                         R10 K43 [{"TogglePlayAction", "Button"}]
      207 GETUPVAL                         R11 2
      208 GETTABLEKS                       R11 R11 K7 ["createElement"]
      210 GETUPVAL                         R12 7
      211 CALL                             R11 1 1
      212 SETTABLEKS                       R11 R10 K41 ["TogglePlayAction"]
      214 SETTABLEKS                       R6 R10 K42 ["Button"]
      216 CALL                             R7 3 -1
      217 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Contexts"]
       25 GETTABLEKS                       R4 R4 K10 ["PlayStateContext"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Components"]
       32 GETTABLEKS                       R5 R5 K12 ["NodeView"]
       34 GETTABLEKS                       R5 R5 K13 ["PluginAction"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K6 ["Parent"]
       41 GETTABLEKS                       R6 R6 K14 ["React"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K9 ["Contexts"]
       48 GETTABLEKS                       R7 R7 K15 ["VisibleContext"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K16 ["Flags"]
       55 GETTABLEKS                       R8 R8 K17 ["getFFlagAnimGraphUIButtonTooltips"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K16 ["Flags"]
       62 GETTABLEKS                       R9 R9 K18 ["getFFlagAnimGraphUITogglePlayShortcut"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K11 ["Components"]
       69 GETTABLEKS                       R10 R10 K19 ["Toolbar"]
       71 GETTABLEKS                       R10 R10 K20 ["useIsPlayControlsDisabled"]
       73 CALL                             R9 1 1
       74 DUPCLOSURE                       R10 K21 [PROTO_2]
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R5
       77 CAPTURE                          VAL R3
       78 CAPTURE                          VAL R6
       79 CAPTURE                          VAL R9
       80 CAPTURE                          VAL R4
       81 DUPCLOSURE                       R11 K22 [PROTO_5]
       82 CAPTURE                          VAL R7
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R3
       86 CAPTURE                          VAL R9
       87 CAPTURE                          VAL R1
       88 CAPTURE                          VAL R8
       89 CAPTURE                          VAL R10
       90 RETURN                           R11 1
