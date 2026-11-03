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
       20 GETUPVAL                         R3 4
       21 NEWTABLE                         R4 0 0
       23 CALL                             R3 1 1
       24 GETUPVAL                         R4 2
       25 GETTABLEKS                       R4 R4 K5 ["useCallback"]
       27 NEWCLOSURE                       R5 P0
       28 CAPTURE                          UPVAL U5
       29 CAPTURE                          VAL R2
       30 NEWTABLE                         R6 0 2
       32 GETTABLEKS                       R7 R2 K6 ["resetGraphAsync"]
       34 GETTABLEKS                       R8 R2 K7 ["setCurrentTimeAsync"]
       36 SETLIST                          R6 R7 2 [1]
       38 CALL                             R4 2 1
       39 GETUPVAL                         R5 2
       40 GETTABLEKS                       R5 R5 K8 ["createElement"]
       42 GETUPVAL                         R6 6
       43 GETTABLEKS                       R6 R6 K9 ["IconButton"]
       45 DUPTABLE                         R7 K15 [{"icon", "isDisabled", "size", "onActivated", "testId"}]
       46 GETUPVAL                         R8 6
       47 GETTABLEKS                       R8 R8 K16 ["Enums"]
       49 GETTABLEKS                       R8 R8 K17 ["IconName"]
       51 GETTABLEKS                       R8 R8 K18 ["ArrowSpinCounterClockwise"]
       53 SETTABLEKS                       R8 R7 K10 ["icon"]
       55 SETTABLEKS                       R3 R7 K11 ["isDisabled"]
       57 GETUPVAL                         R8 6
       58 GETTABLEKS                       R8 R8 K16 ["Enums"]
       60 GETTABLEKS                       R8 R8 K19 ["IconSize"]
       62 GETTABLEKS                       R8 R8 K20 ["XSmall"]
       64 SETTABLEKS                       R8 R7 K12 ["size"]
       66 SETTABLEKS                       R4 R7 K13 ["onActivated"]
       68 GETTABLEKS                       R9 R2 K21 ["isPreviewEnabled"]
       70 JUMPIFNOT                        R9 ; [+2]
       71 LOADK                            R8 K22 ["ResetRigButton-Stop"]
       72 JUMP                             ; [+1]
       73 LOADK                            R8 K23 ["ResetRigButton-Start"]
       74 SETTABLEKS                       R8 R7 K14 ["testId"]
       76 CALL                             R5 2 1
       77 GETUPVAL                         R6 0
       78 CALL                             R6 0 1
       79 JUMPIFNOT                        R6 ; [+32]
       80 GETUPVAL                         R6 2
       81 GETTABLEKS                       R6 R6 K8 ["createElement"]
       83 GETUPVAL                         R7 6
       84 GETTABLEKS                       R7 R7 K24 ["Tooltip"]
       86 DUPTABLE                         R8 K28 [{"title", "side", "LayoutOrder"}]
       87 LOADK                            R11 K29 ["Common"]
       88 LOADK                            R12 K30 ["AnimationEditor"]
       89 LOADK                            R13 K31 ["Toolbar"]
       90 LOADK                            R14 K32 ["ResetToStartTooltip"]
       91 NAMECALL                         R9 R1 K33 ["getExternalText"]
       93 CALL                             R9 5 1
       94 SETTABLEKS                       R9 R8 K25 ["title"]
       96 GETUPVAL                         R9 6
       97 GETTABLEKS                       R9 R9 K16 ["Enums"]
       99 GETTABLEKS                       R9 R9 K34 ["PopoverSide"]
      101 GETTABLEKS                       R9 R9 K35 ["Bottom"]
      103 SETTABLEKS                       R9 R8 K26 ["side"]
      105 GETTABLEKS                       R9 R0 K27 ["LayoutOrder"]
      107 SETTABLEKS                       R9 R8 K27 ["LayoutOrder"]
      109 MOVE                             R9 R5
      110 CALL                             R6 3 -1
      111 RETURN                           R6 -1
      112 RETURN                           R5 1

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
       44 GETTABLEKS                       R7 R0 K14 ["Components"]
       46 GETTABLEKS                       R7 R7 K15 ["Toolbar"]
       48 GETTABLEKS                       R7 R7 K16 ["useIsPlayControlsDisabled"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K18 [game]
       53 LOADK                            R9 K19 ["AnimGraphResetAPI"]
       54 NAMECALL                         R7 R7 K20 ["GetEngineFeature"]
       56 CALL                             R7 2 1
       57 DUPCLOSURE                       R8 K21 [PROTO_2]
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R1
       65 RETURN                           R8 1
