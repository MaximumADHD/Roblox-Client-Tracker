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
        7 GETUPVAL                         R0 2
        8 CALL                             R0 0 1
        9 JUMPIFNOT                        R0 ; [+6]
       10 GETIMPORT                        R0 K3 [task.spawn]
       12 NEWCLOSURE                       R1 P0
       13 CAPTURE                          UPVAL U3
       14 CALL                             R0 1 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R0 3
       17 GETTABLEKS                       R0 R0 K4 ["toggleIsPlayingAsync"]
       19 CALL                             R0 0 0
       20 RETURN                           R0 0

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
       22 GETUPVAL                         R4 4
       23 CALL                             R4 0 1
       24 JUMPIFNOT                        R4 ; [+5]
       25 GETUPVAL                         R3 5
       26 NEWTABLE                         R4 0 0
       28 CALL                             R3 1 1
       29 JUMP                             ; [+1]
       30 LOADB                            R3 0
       31 GETUPVAL                         R4 1
       32 GETTABLEKS                       R4 R4 K5 ["useCallback"]
       34 NEWCLOSURE                       R5 P0
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R3
       37 CAPTURE                          UPVAL U4
       38 CAPTURE                          VAL R1
       39 NEWTABLE                         R6 0 3
       41 GETTABLEKS                       R7 R2 K6 ["isOpen"]
       43 MOVE                             R8 R3
       44 GETTABLEKS                       R9 R1 K7 ["toggleIsPlayingAsync"]
       46 SETLIST                          R6 R7 3 [1]
       48 CALL                             R4 2 1
       49 LOADK                            R7 K8 ["Common"]
       50 LOADK                            R8 K9 ["AnimationEditor"]
       51 LOADK                            R9 K10 ["TogglePlay"]
       52 NAMECALL                         R5 R0 K11 ["getExternalText"]
       54 CALL                             R5 4 1
       55 GETUPVAL                         R6 1
       56 GETTABLEKS                       R6 R6 K12 ["createElement"]
       58 GETUPVAL                         R7 6
       59 DUPTABLE                         R8 K23 [{["ActionId"] = "AnimationGraphEditor_TogglePlay", ["Text"], ["StatusTip"], ["DefaultShortcut"] = " ", ["Enabled"], ["AllowBinding"] = True, ["OnTrigger"]}]
       60 SETTABLEKS                       R5 R8 K15 ["Text"]
       62 SETTABLEKS                       R5 R8 K16 ["StatusTip"]
       64 GETTABLEKS                       R9 R2 K6 ["isOpen"]
       66 JUMPIFNOT                        R9 ; [+1]
       67 NOT                              R9 R3
       68 SETTABLEKS                       R9 R8 K19 ["Enabled"]
       70 SETTABLEKS                       R4 R8 K22 ["OnTrigger"]
       72 CALL                             R6 2 -1
       73 RETURN                           R6 -1

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
       20 GETUPVAL                         R4 4
       21 CALL                             R4 0 1
       22 JUMPIFNOT                        R4 ; [+5]
       23 GETUPVAL                         R3 5
       24 NEWTABLE                         R4 0 0
       26 CALL                             R3 1 1
       27 JUMP                             ; [+1]
       28 LOADNIL                          R3
       29 GETUPVAL                         R4 2
       30 GETTABLEKS                       R4 R4 K5 ["useCallback"]
       32 NEWCLOSURE                       R5 P0
       33 CAPTURE                          VAL R2
       34 NEWTABLE                         R6 0 1
       36 GETTABLEKS                       R7 R2 K6 ["toggleIsPlayingAsync"]
       38 SETLIST                          R6 R7 1 [1]
       40 CALL                             R4 2 1
       41 GETUPVAL                         R5 2
       42 GETTABLEKS                       R5 R5 K7 ["createElement"]
       44 GETUPVAL                         R6 6
       45 GETTABLEKS                       R6 R6 K8 ["IconButton"]
       47 DUPTABLE                         R7 K15 [{"icon", "isDisabled", "variant", "size", "onActivated", "testId"}]
       48 GETTABLEKS                       R9 R2 K16 ["isPlaying"]
       50 JUMPIFNOT                        R9 ; [+8]
       51 GETUPVAL                         R8 6
       52 GETTABLEKS                       R8 R8 K17 ["Enums"]
       54 GETTABLEKS                       R8 R8 K18 ["IconName"]
       56 GETTABLEKS                       R8 R8 K19 ["PauseLarge"]
       58 JUMP                             ; [+7]
       59 GETUPVAL                         R8 6
       60 GETTABLEKS                       R8 R8 K17 ["Enums"]
       62 GETTABLEKS                       R8 R8 K18 ["IconName"]
       64 GETTABLEKS                       R8 R8 K20 ["PlayLarge"]
       66 SETTABLEKS                       R8 R7 K9 ["icon"]
       68 SETTABLEKS                       R3 R7 K10 ["isDisabled"]
       70 GETUPVAL                         R9 4
       71 CALL                             R9 0 1
       72 JUMPIFNOT                        R9 ; [+13]
       73 GETTABLEKS                       R9 R2 K16 ["isPlaying"]
       75 JUMPIFNOT                        R9 ; [+8]
       76 GETUPVAL                         R8 6
       77 GETTABLEKS                       R8 R8 K17 ["Enums"]
       79 GETTABLEKS                       R8 R8 K21 ["ButtonVariant"]
       81 GETTABLEKS                       R8 R8 K22 ["Standard"]
       83 JUMP                             ; [+3]
       84 LOADNIL                          R8
       85 JUMP                             ; [+1]
       86 LOADNIL                          R8
       87 SETTABLEKS                       R8 R7 K11 ["variant"]
       89 GETUPVAL                         R8 6
       90 GETTABLEKS                       R8 R8 K17 ["Enums"]
       92 GETTABLEKS                       R8 R8 K23 ["IconSize"]
       94 GETTABLEKS                       R8 R8 K24 ["XSmall"]
       96 SETTABLEKS                       R8 R7 K12 ["size"]
       98 GETUPVAL                         R9 4
       99 CALL                             R9 0 1
      100 JUMPIFNOT                        R9 ; [+2]
      101 MOVE                             R8 R4
      102 JUMP                             ; [+2]
      103 GETTABLEKS                       R8 R2 K6 ["toggleIsPlayingAsync"]
      105 SETTABLEKS                       R8 R7 K13 ["onActivated"]
      107 GETTABLEKS                       R9 R2 K16 ["isPlaying"]
      109 JUMPIFNOT                        R9 ; [+2]
      110 LOADK                            R8 K25 ["PlayButton-Stop"]
      111 JUMP                             ; [+1]
      112 LOADK                            R8 K26 ["PlayButton-Play"]
      113 SETTABLEKS                       R8 R7 K14 ["testId"]
      115 CALL                             R5 2 1
      116 GETUPVAL                         R6 7
      117 CALL                             R6 0 1
      118 JUMPIF                           R6 ; [+47]
      119 GETUPVAL                         R6 0
      120 CALL                             R6 0 1
      121 JUMPIFNOT                        R6 ; [+43]
      122 GETUPVAL                         R6 2
      123 GETTABLEKS                       R6 R6 K7 ["createElement"]
      125 GETUPVAL                         R7 6
      126 GETTABLEKS                       R7 R7 K27 ["Tooltip"]
      128 DUPTABLE                         R8 K31 [{"title", "side", "LayoutOrder"}]
      129 GETTABLEKS                       R10 R2 K16 ["isPlaying"]
      131 JUMPIFNOT                        R10 ; [+8]
      132 LOADK                            R11 K32 ["Common"]
      133 LOADK                            R12 K33 ["AnimationEditor"]
      134 LOADK                            R13 K34 ["Toolbar"]
      135 LOADK                            R14 K35 ["PauseTooltip"]
      136 NAMECALL                         R9 R1 K36 ["getExternalText"]
      138 CALL                             R9 5 1
      139 JUMP                             ; [+7]
      140 LOADK                            R11 K32 ["Common"]
      141 LOADK                            R12 K33 ["AnimationEditor"]
      142 LOADK                            R13 K34 ["Toolbar"]
      143 LOADK                            R14 K37 ["PlayTooltip"]
      144 NAMECALL                         R9 R1 K36 ["getExternalText"]
      146 CALL                             R9 5 1
      147 SETTABLEKS                       R9 R8 K28 ["title"]
      149 GETUPVAL                         R9 6
      150 GETTABLEKS                       R9 R9 K17 ["Enums"]
      152 GETTABLEKS                       R9 R9 K38 ["PopoverSide"]
      154 GETTABLEKS                       R9 R9 K39 ["Bottom"]
      156 SETTABLEKS                       R9 R8 K29 ["side"]
      158 GETTABLEKS                       R9 R0 K30 ["LayoutOrder"]
      160 SETTABLEKS                       R9 R8 K30 ["LayoutOrder"]
      162 MOVE                             R9 R5
      163 CALL                             R6 3 -1
      164 RETURN                           R6 -1
      165 RETURN                           R5 1
      166 LOADNIL                          R6
      167 GETUPVAL                         R7 0
      168 CALL                             R7 0 1
      169 JUMPIFNOT                        R7 ; [+44]
      170 GETUPVAL                         R7 2
      171 GETTABLEKS                       R7 R7 K7 ["createElement"]
      173 GETUPVAL                         R8 6
      174 GETTABLEKS                       R8 R8 K27 ["Tooltip"]
      176 DUPTABLE                         R9 K31 [{"title", "side", "LayoutOrder"}]
      177 GETTABLEKS                       R11 R2 K16 ["isPlaying"]
      179 JUMPIFNOT                        R11 ; [+8]
      180 LOADK                            R12 K32 ["Common"]
      181 LOADK                            R13 K33 ["AnimationEditor"]
      182 LOADK                            R14 K34 ["Toolbar"]
      183 LOADK                            R15 K35 ["PauseTooltip"]
      184 NAMECALL                         R10 R1 K36 ["getExternalText"]
      186 CALL                             R10 5 1
      187 JUMP                             ; [+7]
      188 LOADK                            R12 K32 ["Common"]
      189 LOADK                            R13 K33 ["AnimationEditor"]
      190 LOADK                            R14 K34 ["Toolbar"]
      191 LOADK                            R15 K37 ["PlayTooltip"]
      192 NAMECALL                         R10 R1 K36 ["getExternalText"]
      194 CALL                             R10 5 1
      195 SETTABLEKS                       R10 R9 K28 ["title"]
      197 GETUPVAL                         R10 6
      198 GETTABLEKS                       R10 R10 K17 ["Enums"]
      200 GETTABLEKS                       R10 R10 K38 ["PopoverSide"]
      202 GETTABLEKS                       R10 R10 K39 ["Bottom"]
      204 SETTABLEKS                       R10 R9 K29 ["side"]
      206 GETTABLEKS                       R10 R0 K30 ["LayoutOrder"]
      208 SETTABLEKS                       R10 R9 K30 ["LayoutOrder"]
      210 MOVE                             R10 R5
      211 CALL                             R7 3 1
      212 MOVE                             R6 R7
      213 JUMP                             ; [+1]
      214 MOVE                             R6 R5
      215 GETUPVAL                         R7 2
      216 GETTABLEKS                       R7 R7 K7 ["createElement"]
      218 GETUPVAL                         R8 2
      219 GETTABLEKS                       R8 R8 K40 ["Fragment"]
      221 NEWTABLE                         R9 0 0
      223 DUPTABLE                         R10 K43 [{"TogglePlayAction", "Button"}]
      224 GETUPVAL                         R11 2
      225 GETTABLEKS                       R11 R11 K7 ["createElement"]
      227 GETUPVAL                         R12 8
      228 CALL                             R11 1 1
      229 SETTABLEKS                       R11 R10 K41 ["TogglePlayAction"]
      231 SETTABLEKS                       R6 R10 K42 ["Button"]
      233 CALL                             R7 3 -1
      234 RETURN                           R7 -1

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
       67 GETTABLEKS                       R10 R0 K16 ["Flags"]
       69 GETTABLEKS                       R10 R10 K19 ["getFFlagAnimGraphUI_RunTimeDebug"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K11 ["Components"]
       76 GETTABLEKS                       R11 R11 K20 ["Toolbar"]
       78 GETTABLEKS                       R11 R11 K21 ["useIsPlayControlsDisabled"]
       80 CALL                             R10 1 1
       81 DUPCLOSURE                       R11 K22 [PROTO_2]
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R5
       84 CAPTURE                          VAL R3
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R9
       87 CAPTURE                          VAL R10
       88 CAPTURE                          VAL R4
       89 DUPCLOSURE                       R12 K23 [PROTO_5]
       90 CAPTURE                          VAL R7
       91 CAPTURE                          VAL R2
       92 CAPTURE                          VAL R5
       93 CAPTURE                          VAL R3
       94 CAPTURE                          VAL R9
       95 CAPTURE                          VAL R10
       96 CAPTURE                          VAL R1
       97 CAPTURE                          VAL R8
       98 CAPTURE                          VAL R11
       99 RETURN                           R12 1
