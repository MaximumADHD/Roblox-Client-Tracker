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
       20 GETUPVAL                         R4 4
       21 CALL                             R4 0 1
       22 JUMPIFNOT                        R4 ; [+4]
       23 GETUPVAL                         R3 5
       24 DUPTABLE                         R4 K7 [{["isPreviewButton"] = True}]
       25 CALL                             R3 1 1
       26 JUMP                             ; [+1]
       27 LOADNIL                          R3
       28 GETUPVAL                         R4 2
       29 GETTABLEKS                       R4 R4 K8 ["useCallback"]
       31 NEWCLOSURE                       R5 P0
       32 CAPTURE                          VAL R2
       33 NEWTABLE                         R6 0 1
       35 GETTABLEKS                       R7 R2 K9 ["toggleIsPreviewEnabledAsync"]
       37 SETLIST                          R6 R7 1 [1]
       39 CALL                             R4 2 1
       40 GETUPVAL                         R5 2
       41 GETTABLEKS                       R5 R5 K10 ["createElement"]
       43 GETUPVAL                         R6 6
       44 GETTABLEKS                       R6 R6 K11 ["IconButton"]
       46 DUPTABLE                         R7 K18 [{"icon", "isDisabled", "variant", "size", "onActivated", "testId"}]
       47 GETTABLEKS                       R9 R2 K19 ["isPreviewEnabled"]
       49 JUMPIFNOT                        R9 ; [+8]
       50 GETUPVAL                         R8 6
       51 GETTABLEKS                       R8 R8 K20 ["Enums"]
       53 GETTABLEKS                       R8 R8 K21 ["IconName"]
       55 GETTABLEKS                       R8 R8 K22 ["Eye"]
       57 JUMP                             ; [+7]
       58 GETUPVAL                         R8 6
       59 GETTABLEKS                       R8 R8 K20 ["Enums"]
       61 GETTABLEKS                       R8 R8 K21 ["IconName"]
       63 GETTABLEKS                       R8 R8 K23 ["EyeSlash"]
       65 SETTABLEKS                       R8 R7 K12 ["icon"]
       67 SETTABLEKS                       R3 R7 K13 ["isDisabled"]
       69 GETTABLEKS                       R9 R2 K19 ["isPreviewEnabled"]
       71 JUMPIFNOT                        R9 ; [+8]
       72 GETUPVAL                         R8 6
       73 GETTABLEKS                       R8 R8 K20 ["Enums"]
       75 GETTABLEKS                       R8 R8 K24 ["ButtonVariant"]
       77 GETTABLEKS                       R8 R8 K25 ["Standard"]
       79 JUMP                             ; [+1]
       80 LOADNIL                          R8
       81 SETTABLEKS                       R8 R7 K14 ["variant"]
       83 GETUPVAL                         R8 6
       84 GETTABLEKS                       R8 R8 K20 ["Enums"]
       86 GETTABLEKS                       R8 R8 K26 ["IconSize"]
       88 GETTABLEKS                       R8 R8 K27 ["XSmall"]
       90 SETTABLEKS                       R8 R7 K15 ["size"]
       92 SETTABLEKS                       R4 R7 K16 ["onActivated"]
       94 GETTABLEKS                       R9 R2 K19 ["isPreviewEnabled"]
       96 JUMPIFNOT                        R9 ; [+2]
       97 LOADK                            R8 K28 ["PreviewEnabledButton-Stop"]
       98 JUMP                             ; [+1]
       99 LOADK                            R8 K29 ["PreviewEnabledButton-Start"]
      100 SETTABLEKS                       R8 R7 K17 ["testId"]
      102 CALL                             R5 2 1
      103 GETUPVAL                         R6 0
      104 CALL                             R6 0 1
      105 JUMPIFNOT                        R6 ; [+32]
      106 GETUPVAL                         R6 2
      107 GETTABLEKS                       R6 R6 K10 ["createElement"]
      109 GETUPVAL                         R7 6
      110 GETTABLEKS                       R7 R7 K30 ["Tooltip"]
      112 DUPTABLE                         R8 K34 [{"title", "side", "LayoutOrder"}]
      113 LOADK                            R11 K35 ["Common"]
      114 LOADK                            R12 K36 ["AnimationEditor"]
      115 LOADK                            R13 K37 ["Toolbar"]
      116 LOADK                            R14 K38 ["TogglePreviewTooltip"]
      117 NAMECALL                         R9 R1 K39 ["getExternalText"]
      119 CALL                             R9 5 1
      120 SETTABLEKS                       R9 R8 K31 ["title"]
      122 GETUPVAL                         R9 6
      123 GETTABLEKS                       R9 R9 K20 ["Enums"]
      125 GETTABLEKS                       R9 R9 K40 ["PopoverSide"]
      127 GETTABLEKS                       R9 R9 K41 ["Bottom"]
      129 SETTABLEKS                       R9 R8 K32 ["side"]
      131 GETTABLEKS                       R9 R0 K33 ["LayoutOrder"]
      133 SETTABLEKS                       R9 R8 K33 ["LayoutOrder"]
      135 MOVE                             R9 R5
      136 CALL                             R6 3 -1
      137 RETURN                           R6 -1
      138 RETURN                           R5 1

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
