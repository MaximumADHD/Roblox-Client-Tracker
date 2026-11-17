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
       16 DUPTABLE                         R4 K7 [{["isPreviewButton"] = True}]
       17 CALL                             R3 1 1
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R4 R4 K8 ["useCallback"]
       21 NEWCLOSURE                       R5 P0
       22 CAPTURE                          VAL R2
       23 NEWTABLE                         R6 0 1
       25 GETTABLEKS                       R7 R2 K9 ["toggleIsPreviewEnabledAsync"]
       27 SETLIST                          R6 R7 1 [1]
       29 CALL                             R4 2 1
       30 GETUPVAL                         R5 1
       31 GETTABLEKS                       R5 R5 K10 ["createElement"]
       33 GETUPVAL                         R6 4
       34 GETTABLEKS                       R6 R6 K11 ["IconButton"]
       36 DUPTABLE                         R7 K18 [{"icon", "isDisabled", "variant", "size", "onActivated", "testId"}]
       37 GETTABLEKS                       R9 R2 K19 ["isPreviewEnabled"]
       39 JUMPIFNOT                        R9 ; [+8]
       40 GETUPVAL                         R8 4
       41 GETTABLEKS                       R8 R8 K20 ["Enums"]
       43 GETTABLEKS                       R8 R8 K21 ["IconName"]
       45 GETTABLEKS                       R8 R8 K22 ["Eye"]
       47 JUMP                             ; [+7]
       48 GETUPVAL                         R8 4
       49 GETTABLEKS                       R8 R8 K20 ["Enums"]
       51 GETTABLEKS                       R8 R8 K21 ["IconName"]
       53 GETTABLEKS                       R8 R8 K23 ["EyeSlash"]
       55 SETTABLEKS                       R8 R7 K12 ["icon"]
       57 SETTABLEKS                       R3 R7 K13 ["isDisabled"]
       59 GETTABLEKS                       R9 R2 K19 ["isPreviewEnabled"]
       61 JUMPIFNOT                        R9 ; [+8]
       62 GETUPVAL                         R8 4
       63 GETTABLEKS                       R8 R8 K20 ["Enums"]
       65 GETTABLEKS                       R8 R8 K24 ["ButtonVariant"]
       67 GETTABLEKS                       R8 R8 K25 ["Standard"]
       69 JUMP                             ; [+1]
       70 LOADNIL                          R8
       71 SETTABLEKS                       R8 R7 K14 ["variant"]
       73 GETUPVAL                         R8 4
       74 GETTABLEKS                       R8 R8 K20 ["Enums"]
       76 GETTABLEKS                       R8 R8 K26 ["IconSize"]
       78 GETTABLEKS                       R8 R8 K27 ["XSmall"]
       80 SETTABLEKS                       R8 R7 K15 ["size"]
       82 SETTABLEKS                       R4 R7 K16 ["onActivated"]
       84 GETTABLEKS                       R9 R2 K19 ["isPreviewEnabled"]
       86 JUMPIFNOT                        R9 ; [+2]
       87 LOADK                            R8 K28 ["PreviewEnabledButton-Stop"]
       88 JUMP                             ; [+1]
       89 LOADK                            R8 K29 ["PreviewEnabledButton-Start"]
       90 SETTABLEKS                       R8 R7 K17 ["testId"]
       92 CALL                             R5 2 1
       93 GETUPVAL                         R6 1
       94 GETTABLEKS                       R6 R6 K10 ["createElement"]
       96 GETUPVAL                         R7 4
       97 GETTABLEKS                       R7 R7 K30 ["Tooltip"]
       99 DUPTABLE                         R8 K34 [{"title", "side", "LayoutOrder"}]
      100 LOADK                            R11 K35 ["Common"]
      101 LOADK                            R12 K36 ["AnimationEditor"]
      102 LOADK                            R13 K37 ["Toolbar"]
      103 LOADK                            R14 K38 ["TogglePreviewTooltip"]
      104 NAMECALL                         R9 R1 K39 ["getExternalText"]
      106 CALL                             R9 5 1
      107 SETTABLEKS                       R9 R8 K31 ["title"]
      109 GETUPVAL                         R9 4
      110 GETTABLEKS                       R9 R9 K20 ["Enums"]
      112 GETTABLEKS                       R9 R9 K40 ["PopoverSide"]
      114 GETTABLEKS                       R9 R9 K41 ["Bottom"]
      116 SETTABLEKS                       R9 R8 K32 ["side"]
      118 GETTABLEKS                       R9 R0 K33 ["LayoutOrder"]
      120 SETTABLEKS                       R9 R8 K33 ["LayoutOrder"]
      122 MOVE                             R9 R5
      123 CALL                             R6 3 -1
      124 RETURN                           R6 -1

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
       44 DUPCLOSURE                       R6 K15 [PROTO_2]
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R5
       49 CAPTURE                          VAL R1
       50 RETURN                           R6 1
