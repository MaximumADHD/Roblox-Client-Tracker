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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R1 K1 ["Localization"]
        5 NAMECALL                         R1 R1 K2 ["use"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["useContext"]
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K4 ["Context"]
       14 CALL                             R2 1 1
       15 GETUPVAL                         R3 3
       16 NEWTABLE                         R4 0 0
       18 CALL                             R3 1 1
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R4 R4 K5 ["useCallback"]
       22 NEWCLOSURE                       R5 P0
       23 CAPTURE                          VAL R2
       24 NEWTABLE                         R6 0 1
       26 GETTABLEKS                       R7 R2 K6 ["toggleIsPlayingAsync"]
       28 SETLIST                          R6 R7 1 [1]
       30 CALL                             R4 2 1
       31 GETUPVAL                         R5 1
       32 GETTABLEKS                       R5 R5 K7 ["createElement"]
       34 GETUPVAL                         R6 4
       35 GETTABLEKS                       R6 R6 K8 ["IconButton"]
       37 DUPTABLE                         R7 K15 [{"icon", "isDisabled", "variant", "size", "onActivated", "testId"}]
       38 GETTABLEKS                       R9 R2 K16 ["isPlaying"]
       40 JUMPIFNOT                        R9 ; [+8]
       41 GETUPVAL                         R8 4
       42 GETTABLEKS                       R8 R8 K17 ["Enums"]
       44 GETTABLEKS                       R8 R8 K18 ["IconName"]
       46 GETTABLEKS                       R8 R8 K19 ["PauseLarge"]
       48 JUMP                             ; [+7]
       49 GETUPVAL                         R8 4
       50 GETTABLEKS                       R8 R8 K17 ["Enums"]
       52 GETTABLEKS                       R8 R8 K18 ["IconName"]
       54 GETTABLEKS                       R8 R8 K20 ["PlayLarge"]
       56 SETTABLEKS                       R8 R7 K9 ["icon"]
       58 SETTABLEKS                       R3 R7 K10 ["isDisabled"]
       60 GETTABLEKS                       R9 R2 K16 ["isPlaying"]
       62 JUMPIFNOT                        R9 ; [+8]
       63 GETUPVAL                         R8 4
       64 GETTABLEKS                       R8 R8 K17 ["Enums"]
       66 GETTABLEKS                       R8 R8 K21 ["ButtonVariant"]
       68 GETTABLEKS                       R8 R8 K22 ["Standard"]
       70 JUMP                             ; [+1]
       71 LOADNIL                          R8
       72 SETTABLEKS                       R8 R7 K11 ["variant"]
       74 GETUPVAL                         R8 4
       75 GETTABLEKS                       R8 R8 K17 ["Enums"]
       77 GETTABLEKS                       R8 R8 K23 ["IconSize"]
       79 GETTABLEKS                       R8 R8 K24 ["XSmall"]
       81 SETTABLEKS                       R8 R7 K12 ["size"]
       83 SETTABLEKS                       R4 R7 K13 ["onActivated"]
       85 GETTABLEKS                       R9 R2 K16 ["isPlaying"]
       87 JUMPIFNOT                        R9 ; [+2]
       88 LOADK                            R8 K25 ["PlayButton-Stop"]
       89 JUMP                             ; [+1]
       90 LOADK                            R8 K26 ["PlayButton-Play"]
       91 SETTABLEKS                       R8 R7 K14 ["testId"]
       93 CALL                             R5 2 1
       94 GETUPVAL                         R6 1
       95 GETTABLEKS                       R6 R6 K7 ["createElement"]
       97 GETUPVAL                         R7 1
       98 GETTABLEKS                       R7 R7 K27 ["Fragment"]
      100 NEWTABLE                         R8 0 0
      102 DUPTABLE                         R9 K30 [{"TogglePlayAction", "Button"}]
      103 GETUPVAL                         R10 1
      104 GETTABLEKS                       R10 R10 K7 ["createElement"]
      106 GETUPVAL                         R11 5
      107 CALL                             R10 1 1
      108 SETTABLEKS                       R10 R9 K28 ["TogglePlayAction"]
      110 GETUPVAL                         R10 1
      111 GETTABLEKS                       R10 R10 K7 ["createElement"]
      113 GETUPVAL                         R11 4
      114 GETTABLEKS                       R11 R11 K31 ["Tooltip"]
      116 DUPTABLE                         R12 K35 [{"title", "side", "LayoutOrder"}]
      117 GETTABLEKS                       R14 R2 K16 ["isPlaying"]
      119 JUMPIFNOT                        R14 ; [+8]
      120 LOADK                            R15 K36 ["Common"]
      121 LOADK                            R16 K37 ["AnimationEditor"]
      122 LOADK                            R17 K38 ["Toolbar"]
      123 LOADK                            R18 K39 ["PauseTooltip"]
      124 NAMECALL                         R13 R1 K40 ["getExternalText"]
      126 CALL                             R13 5 1
      127 JUMP                             ; [+7]
      128 LOADK                            R15 K36 ["Common"]
      129 LOADK                            R16 K37 ["AnimationEditor"]
      130 LOADK                            R17 K38 ["Toolbar"]
      131 LOADK                            R18 K41 ["PlayTooltip"]
      132 NAMECALL                         R13 R1 K40 ["getExternalText"]
      134 CALL                             R13 5 1
      135 SETTABLEKS                       R13 R12 K32 ["title"]
      137 GETUPVAL                         R13 4
      138 GETTABLEKS                       R13 R13 K17 ["Enums"]
      140 GETTABLEKS                       R13 R13 K42 ["PopoverSide"]
      142 GETTABLEKS                       R13 R13 K43 ["Bottom"]
      144 SETTABLEKS                       R13 R12 K33 ["side"]
      146 GETTABLEKS                       R13 R0 K34 ["LayoutOrder"]
      148 SETTABLEKS                       R13 R12 K34 ["LayoutOrder"]
      150 MOVE                             R13 R5
      151 CALL                             R10 3 1
      152 SETTABLEKS                       R10 R9 K29 ["Button"]
      154 CALL                             R6 3 -1
      155 RETURN                           R6 -1

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
       53 GETTABLEKS                       R8 R0 K11 ["Components"]
       55 GETTABLEKS                       R8 R8 K16 ["Toolbar"]
       57 GETTABLEKS                       R8 R8 K17 ["useIsPlayControlsDisabled"]
       59 CALL                             R7 1 1
       60 DUPCLOSURE                       R8 K18 [PROTO_2]
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R4
       67 DUPCLOSURE                       R9 K19 [PROTO_5]
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R5
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R8
       74 RETURN                           R9 1
