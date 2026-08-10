PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setCurrentTimeAsync"]
        3 LOADN                            R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

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
       33 CAPTURE                          VAL R2
       34 NEWTABLE                         R6 0 1
       36 GETTABLEKS                       R7 R2 K6 ["setCurrentTimeAsync"]
       38 SETLIST                          R6 R7 1 [1]
       40 CALL                             R4 2 1
       41 GETUPVAL                         R5 2
       42 GETTABLEKS                       R5 R5 K7 ["createElement"]
       44 GETUPVAL                         R6 6
       45 GETTABLEKS                       R6 R6 K8 ["IconButton"]
       47 DUPTABLE                         R7 K14 [{"icon", "isDisabled", "size", "onActivated", "testId"}]
       48 GETUPVAL                         R8 6
       49 GETTABLEKS                       R8 R8 K15 ["Enums"]
       51 GETTABLEKS                       R8 R8 K16 ["IconName"]
       53 GETTABLEKS                       R8 R8 K17 ["ArrowSpinCounterClockwise"]
       55 SETTABLEKS                       R8 R7 K9 ["icon"]
       57 SETTABLEKS                       R3 R7 K10 ["isDisabled"]
       59 GETUPVAL                         R8 6
       60 GETTABLEKS                       R8 R8 K15 ["Enums"]
       62 GETTABLEKS                       R8 R8 K18 ["IconSize"]
       64 GETTABLEKS                       R8 R8 K19 ["XSmall"]
       66 SETTABLEKS                       R8 R7 K11 ["size"]
       68 SETTABLEKS                       R4 R7 K12 ["onActivated"]
       70 GETTABLEKS                       R9 R2 K20 ["isPreviewEnabled"]
       72 JUMPIFNOT                        R9 ; [+2]
       73 LOADK                            R8 K21 ["ResetRigButton-Stop"]
       74 JUMP                             ; [+1]
       75 LOADK                            R8 K22 ["ResetRigButton-Start"]
       76 SETTABLEKS                       R8 R7 K13 ["testId"]
       78 CALL                             R5 2 1
       79 GETUPVAL                         R6 0
       80 CALL                             R6 0 1
       81 JUMPIFNOT                        R6 ; [+32]
       82 GETUPVAL                         R6 2
       83 GETTABLEKS                       R6 R6 K7 ["createElement"]
       85 GETUPVAL                         R7 6
       86 GETTABLEKS                       R7 R7 K23 ["Tooltip"]
       88 DUPTABLE                         R8 K27 [{"title", "side", "LayoutOrder"}]
       89 LOADK                            R11 K28 ["Common"]
       90 LOADK                            R12 K29 ["AnimationEditor"]
       91 LOADK                            R13 K30 ["Toolbar"]
       92 LOADK                            R14 K31 ["ResetToStartTooltip"]
       93 NAMECALL                         R9 R1 K32 ["getExternalText"]
       95 CALL                             R9 5 1
       96 SETTABLEKS                       R9 R8 K24 ["title"]
       98 GETUPVAL                         R9 6
       99 GETTABLEKS                       R9 R9 K15 ["Enums"]
      101 GETTABLEKS                       R9 R9 K33 ["PopoverSide"]
      103 GETTABLEKS                       R9 R9 K34 ["Bottom"]
      105 SETTABLEKS                       R9 R8 K25 ["side"]
      107 GETTABLEKS                       R9 R0 K26 ["LayoutOrder"]
      109 SETTABLEKS                       R9 R8 K26 ["LayoutOrder"]
      111 MOVE                             R9 R5
      112 CALL                             R6 3 -1
      113 RETURN                           R6 -1
      114 RETURN                           R5 1

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
       58 DUPCLOSURE                       R8 K18 [PROTO_2]
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R6
       64 CAPTURE                          VAL R7
       65 CAPTURE                          VAL R1
       66 RETURN                           R8 1
