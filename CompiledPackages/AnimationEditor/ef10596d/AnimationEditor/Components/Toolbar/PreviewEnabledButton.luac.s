PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["toggleIsPreviewEnabledAsync"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

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
       20 GETUPVAL                         R3 4
       21 DUPTABLE                         R4 K7 [{["isPreviewButton"] = True}]
       22 CALL                             R3 1 1
       23 GETUPVAL                         R4 2
       24 GETTABLEKS                       R4 R4 K8 ["useCallback"]
       26 NEWCLOSURE                       R5 P0
       27 CAPTURE                          VAL R2
       28 NEWTABLE                         R6 0 1
       30 GETTABLEKS                       R7 R2 K9 ["toggleIsPreviewEnabledAsync"]
       32 SETLIST                          R6 R7 1 [1]
       34 CALL                             R4 2 1
       35 GETUPVAL                         R5 2
       36 GETTABLEKS                       R5 R5 K10 ["createElement"]
       38 GETUPVAL                         R6 5
       39 GETTABLEKS                       R6 R6 K11 ["IconButton"]
       41 DUPTABLE                         R7 K18 [{"icon", "isDisabled", "variant", "size", "onActivated", "testId"}]
       42 GETTABLEKS                       R9 R2 K19 ["isPreviewEnabled"]
       44 JUMPIFNOT                        R9 ; [+8]
       45 GETUPVAL                         R8 5
       46 GETTABLEKS                       R8 R8 K20 ["Enums"]
       48 GETTABLEKS                       R8 R8 K21 ["IconName"]
       50 GETTABLEKS                       R8 R8 K22 ["Eye"]
       52 JUMP                             ; [+7]
       53 GETUPVAL                         R8 5
       54 GETTABLEKS                       R8 R8 K20 ["Enums"]
       56 GETTABLEKS                       R8 R8 K21 ["IconName"]
       58 GETTABLEKS                       R8 R8 K23 ["EyeSlash"]
       60 SETTABLEKS                       R8 R7 K12 ["icon"]
       62 SETTABLEKS                       R3 R7 K13 ["isDisabled"]
       64 GETTABLEKS                       R9 R2 K19 ["isPreviewEnabled"]
       66 JUMPIFNOT                        R9 ; [+8]
       67 GETUPVAL                         R8 5
       68 GETTABLEKS                       R8 R8 K20 ["Enums"]
       70 GETTABLEKS                       R8 R8 K24 ["ButtonVariant"]
       72 GETTABLEKS                       R8 R8 K25 ["Standard"]
       74 JUMP                             ; [+1]
       75 LOADNIL                          R8
       76 SETTABLEKS                       R8 R7 K14 ["variant"]
       78 GETUPVAL                         R8 5
       79 GETTABLEKS                       R8 R8 K20 ["Enums"]
       81 GETTABLEKS                       R8 R8 K26 ["IconSize"]
       83 GETTABLEKS                       R8 R8 K27 ["XSmall"]
       85 SETTABLEKS                       R8 R7 K15 ["size"]
       87 SETTABLEKS                       R4 R7 K16 ["onActivated"]
       89 GETTABLEKS                       R9 R2 K19 ["isPreviewEnabled"]
       91 JUMPIFNOT                        R9 ; [+2]
       92 LOADK                            R8 K28 ["PreviewEnabledButton-Stop"]
       93 JUMP                             ; [+1]
       94 LOADK                            R8 K29 ["PreviewEnabledButton-Start"]
       95 SETTABLEKS                       R8 R7 K17 ["testId"]
       97 CALL                             R5 2 1
       98 GETUPVAL                         R6 0
       99 CALL                             R6 0 1
      100 JUMPIFNOT                        R6 ; [+32]
      101 GETUPVAL                         R6 2
      102 GETTABLEKS                       R6 R6 K10 ["createElement"]
      104 GETUPVAL                         R7 5
      105 GETTABLEKS                       R7 R7 K30 ["Tooltip"]
      107 DUPTABLE                         R8 K34 [{"title", "side", "LayoutOrder"}]
      108 LOADK                            R11 K35 ["Common"]
      109 LOADK                            R12 K36 ["AnimationEditor"]
      110 LOADK                            R13 K37 ["Toolbar"]
      111 LOADK                            R14 K38 ["TogglePreviewTooltip"]
      112 NAMECALL                         R9 R1 K39 ["getExternalText"]
      114 CALL                             R9 5 1
      115 SETTABLEKS                       R9 R8 K31 ["title"]
      117 GETUPVAL                         R9 5
      118 GETTABLEKS                       R9 R9 K20 ["Enums"]
      120 GETTABLEKS                       R9 R9 K40 ["PopoverSide"]
      122 GETTABLEKS                       R9 R9 K41 ["Bottom"]
      124 SETTABLEKS                       R9 R8 K32 ["side"]
      126 GETTABLEKS                       R9 R0 K33 ["LayoutOrder"]
      128 SETTABLEKS                       R9 R8 K33 ["LayoutOrder"]
      130 MOVE                             R9 R5
      131 CALL                             R6 3 -1
      132 RETURN                           R6 -1
      133 RETURN                           R5 1

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
       51 DUPCLOSURE                       R7 K17 [PROTO_2]
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R6
       57 CAPTURE                          VAL R1
       58 RETURN                           R7 1
