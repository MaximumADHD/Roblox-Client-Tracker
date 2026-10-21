PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["resetGraphAsync"]
        5 CALL                             R0 0 0
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K1 ["setCurrentTimeAsync"]
        9 LOADN                            R1 0
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_2:
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
       33 CAPTURE                          UPVAL U6
       34 CAPTURE                          VAL R2
       35 NEWTABLE                         R6 0 2
       37 GETTABLEKS                       R7 R2 K6 ["resetGraphAsync"]
       39 GETTABLEKS                       R8 R2 K7 ["setCurrentTimeAsync"]
       41 SETLIST                          R6 R7 2 [1]
       43 CALL                             R4 2 1
       44 GETUPVAL                         R5 2
       45 GETTABLEKS                       R5 R5 K8 ["createElement"]
       47 GETUPVAL                         R6 7
       48 GETTABLEKS                       R6 R6 K9 ["IconButton"]
       50 DUPTABLE                         R7 K15 [{"icon", "isDisabled", "size", "onActivated", "testId"}]
       51 GETUPVAL                         R8 7
       52 GETTABLEKS                       R8 R8 K16 ["Enums"]
       54 GETTABLEKS                       R8 R8 K17 ["IconName"]
       56 GETTABLEKS                       R8 R8 K18 ["ArrowSpinCounterClockwise"]
       58 SETTABLEKS                       R8 R7 K10 ["icon"]
       60 SETTABLEKS                       R3 R7 K11 ["isDisabled"]
       62 GETUPVAL                         R8 7
       63 GETTABLEKS                       R8 R8 K16 ["Enums"]
       65 GETTABLEKS                       R8 R8 K19 ["IconSize"]
       67 GETTABLEKS                       R8 R8 K20 ["XSmall"]
       69 SETTABLEKS                       R8 R7 K12 ["size"]
       71 SETTABLEKS                       R4 R7 K13 ["onActivated"]
       73 GETTABLEKS                       R9 R2 K21 ["isPreviewEnabled"]
       75 JUMPIFNOT                        R9 ; [+2]
       76 LOADK                            R8 K22 ["ResetRigButton-Stop"]
       77 JUMP                             ; [+1]
       78 LOADK                            R8 K23 ["ResetRigButton-Start"]
       79 SETTABLEKS                       R8 R7 K14 ["testId"]
       81 CALL                             R5 2 1
       82 GETUPVAL                         R6 0
       83 CALL                             R6 0 1
       84 JUMPIFNOT                        R6 ; [+32]
       85 GETUPVAL                         R6 2
       86 GETTABLEKS                       R6 R6 K8 ["createElement"]
       88 GETUPVAL                         R7 7
       89 GETTABLEKS                       R7 R7 K24 ["Tooltip"]
       91 DUPTABLE                         R8 K28 [{"title", "side", "LayoutOrder"}]
       92 LOADK                            R11 K29 ["Common"]
       93 LOADK                            R12 K30 ["AnimationEditor"]
       94 LOADK                            R13 K31 ["Toolbar"]
       95 LOADK                            R14 K32 ["ResetToStartTooltip"]
       96 NAMECALL                         R9 R1 K33 ["getExternalText"]
       98 CALL                             R9 5 1
       99 SETTABLEKS                       R9 R8 K25 ["title"]
      101 GETUPVAL                         R9 7
      102 GETTABLEKS                       R9 R9 K16 ["Enums"]
      104 GETTABLEKS                       R9 R9 K34 ["PopoverSide"]
      106 GETTABLEKS                       R9 R9 K35 ["Bottom"]
      108 SETTABLEKS                       R9 R8 K26 ["side"]
      110 GETTABLEKS                       R9 R0 K27 ["LayoutOrder"]
      112 SETTABLEKS                       R9 R8 K27 ["LayoutOrder"]
      114 MOVE                             R9 R5
      115 CALL                             R6 3 -1
      116 RETURN                           R6 -1
      117 RETURN                           R5 1

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
       30 GETTABLEKS                       R5 R0 K6 ["Parent"]
       32 GETTABLEKS                       R5 R5 K11 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K12 ["Flags"]
       39 GETTABLEKS                       R6 R6 K13 ["getFFlagAnimGraphUIButtonTooltips"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K12 ["Flags"]
       46 GETTABLEKS                       R7 R7 K14 ["getFFlagAnimGraphUI_RunTimeDebug"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K15 ["Components"]
       53 GETTABLEKS                       R8 R8 K16 ["Toolbar"]
       55 GETTABLEKS                       R8 R8 K17 ["useIsPlayControlsDisabled"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K19 [game]
       60 LOADK                            R10 K20 ["AnimGraphResetAPI"]
       61 NAMECALL                         R8 R8 K21 ["GetEngineFeature"]
       63 CALL                             R8 2 1
       64 DUPCLOSURE                       R9 K22 [PROTO_2]
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R4
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R6
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R8
       72 CAPTURE                          VAL R1
       73 RETURN                           R9 1
