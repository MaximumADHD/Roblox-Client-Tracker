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
       23 CAPTURE                          UPVAL U4
       24 CAPTURE                          VAL R2
       25 NEWTABLE                         R6 0 2
       27 GETTABLEKS                       R7 R2 K6 ["resetGraphAsync"]
       29 GETTABLEKS                       R8 R2 K7 ["setCurrentTimeAsync"]
       31 SETLIST                          R6 R7 2 [1]
       33 CALL                             R4 2 1
       34 GETUPVAL                         R5 1
       35 GETTABLEKS                       R5 R5 K8 ["createElement"]
       37 GETUPVAL                         R6 5
       38 GETTABLEKS                       R6 R6 K9 ["IconButton"]
       40 DUPTABLE                         R7 K15 [{"icon", "isDisabled", "size", "onActivated", "testId"}]
       41 GETUPVAL                         R8 5
       42 GETTABLEKS                       R8 R8 K16 ["Enums"]
       44 GETTABLEKS                       R8 R8 K17 ["IconName"]
       46 GETTABLEKS                       R8 R8 K18 ["ArrowSpinCounterClockwise"]
       48 SETTABLEKS                       R8 R7 K10 ["icon"]
       50 SETTABLEKS                       R3 R7 K11 ["isDisabled"]
       52 GETUPVAL                         R8 5
       53 GETTABLEKS                       R8 R8 K16 ["Enums"]
       55 GETTABLEKS                       R8 R8 K19 ["IconSize"]
       57 GETTABLEKS                       R8 R8 K20 ["XSmall"]
       59 SETTABLEKS                       R8 R7 K12 ["size"]
       61 SETTABLEKS                       R4 R7 K13 ["onActivated"]
       63 GETTABLEKS                       R9 R2 K21 ["isPreviewEnabled"]
       65 JUMPIFNOT                        R9 ; [+2]
       66 LOADK                            R8 K22 ["ResetRigButton-Stop"]
       67 JUMP                             ; [+1]
       68 LOADK                            R8 K23 ["ResetRigButton-Start"]
       69 SETTABLEKS                       R8 R7 K14 ["testId"]
       71 CALL                             R5 2 1
       72 GETUPVAL                         R6 1
       73 GETTABLEKS                       R6 R6 K8 ["createElement"]
       75 GETUPVAL                         R7 5
       76 GETTABLEKS                       R7 R7 K24 ["Tooltip"]
       78 DUPTABLE                         R8 K28 [{"title", "side", "LayoutOrder"}]
       79 LOADK                            R11 K29 ["Common"]
       80 LOADK                            R12 K30 ["AnimationEditor"]
       81 LOADK                            R13 K31 ["Toolbar"]
       82 LOADK                            R14 K32 ["ResetToStartTooltip"]
       83 NAMECALL                         R9 R1 K33 ["getExternalText"]
       85 CALL                             R9 5 1
       86 SETTABLEKS                       R9 R8 K25 ["title"]
       88 GETUPVAL                         R9 5
       89 GETTABLEKS                       R9 R9 K16 ["Enums"]
       91 GETTABLEKS                       R9 R9 K34 ["PopoverSide"]
       93 GETTABLEKS                       R9 R9 K35 ["Bottom"]
       95 SETTABLEKS                       R9 R8 K26 ["side"]
       97 GETTABLEKS                       R9 R0 K27 ["LayoutOrder"]
       99 SETTABLEKS                       R9 R8 K27 ["LayoutOrder"]
      101 MOVE                             R9 R5
      102 CALL                             R6 3 -1
      103 RETURN                           R6 -1

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
       37 GETTABLEKS                       R6 R0 K12 ["Components"]
       39 GETTABLEKS                       R6 R6 K13 ["Toolbar"]
       41 GETTABLEKS                       R6 R6 K14 ["useIsPlayControlsDisabled"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K16 [game]
       46 LOADK                            R8 K17 ["AnimGraphResetAPI"]
       47 NAMECALL                         R6 R6 K18 ["GetEngineFeature"]
       49 CALL                             R6 2 1
       50 DUPCLOSURE                       R7 K19 [PROTO_2]
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R1
       57 RETURN                           R7 1
