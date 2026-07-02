PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onActivated"]
        3 JUMPIFNOT                        R0 ; [+11]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["current"]
        7 JUMPIFNOT                        R0 ; [+7]
        8 GETUPVAL                         R0 0
        9 GETTABLEKS                       R0 R0 K0 ["onActivated"]
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K1 ["current"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 CALL                             R2 0 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K1 ["useCallback"]
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R1
       13 NEWTABLE                         R5 0 1
       15 GETTABLEKS                       R6 R0 K2 ["onActivated"]
       17 SETLIST                          R5 R6 1 [1]
       19 CALL                             R3 2 1
       20 GETUPVAL                         R4 2
       21 GETUPVAL                         R5 3
       22 DUPTABLE                         R6 K7 [{["tag"] = "auto-xy", ["LayoutOrder"], ["ref"]}]
       23 GETTABLEKS                       R7 R0 K5 ["LayoutOrder"]
       25 SETTABLEKS                       R7 R6 K5 ["LayoutOrder"]
       27 SETTABLEKS                       R1 R6 K6 ["ref"]
       29 DUPTABLE                         R7 K9 [{"IconButton"}]
       30 GETUPVAL                         R9 4
       31 CALL                             R9 0 1
       32 JUMPIFNOT                        R9 ; [+42]
       33 GETUPVAL                         R8 2
       34 GETUPVAL                         R9 5
       35 DUPTABLE                         R10 K16 [{["icon"], ["size"], ["variant"], ["isCircular"] = True, ["onActivated"], ["LayoutOrder"], ["testId"]}]
       36 GETUPVAL                         R11 6
       37 GETTABLEKS                       R11 R11 K17 ["Enums"]
       39 GETTABLEKS                       R11 R11 K18 ["IconName"]
       41 GETTABLEKS                       R11 R11 K19 ["ThreeSlidersHorizontal"]
       43 SETTABLEKS                       R11 R10 K10 ["icon"]
       45 GETUPVAL                         R11 6
       46 GETTABLEKS                       R11 R11 K17 ["Enums"]
       48 GETTABLEKS                       R11 R11 K20 ["InputSize"]
       50 GETTABLEKS                       R11 R11 K21 ["XSmall"]
       52 SETTABLEKS                       R11 R10 K11 ["size"]
       54 GETUPVAL                         R11 6
       55 GETTABLEKS                       R11 R11 K17 ["Enums"]
       57 GETTABLEKS                       R11 R11 K22 ["ButtonVariant"]
       59 GETTABLEKS                       R11 R11 K23 ["Utility"]
       61 SETTABLEKS                       R11 R10 K12 ["variant"]
       63 SETTABLEKS                       R3 R10 K2 ["onActivated"]
       65 MOVE                             R11 R2
       66 CALL                             R11 0 1
       67 SETTABLEKS                       R11 R10 K5 ["LayoutOrder"]
       69 GETTABLEKS                       R11 R0 K15 ["testId"]
       71 SETTABLEKS                       R11 R10 K15 ["testId"]
       73 CALL                             R8 2 1
       74 JUMP                             ; [+14]
       75 GETUPVAL                         R8 2
       76 GETUPVAL                         R9 7
       77 DUPTABLE                         R10 K28 [{["testId"], ["icon"] = "icons/actions/adjust", ["tag"] = "align-x-center align-y-center size-600-600 radius-circle", ["iconTag"] = "size-600-600 content-emphasis", ["LayoutOrder"], ["onActivated"]}]
       78 GETTABLEKS                       R11 R0 K15 ["testId"]
       80 SETTABLEKS                       R11 R10 K15 ["testId"]
       82 MOVE                             R11 R2
       83 CALL                             R11 0 1
       84 SETTABLEKS                       R11 R10 K5 ["LayoutOrder"]
       86 SETTABLEKS                       R3 R10 K2 ["onActivated"]
       88 CALL                             R8 2 1
       89 SETTABLEKS                       R8 R7 K8 ["IconButton"]
       91 CALL                             R4 3 -1
       92 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["CustomIconButton"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Parent"]
       32 GETTABLEKS                       R5 R5 K11 ["ReactUtils"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K12 ["Flags"]
       39 GETTABLEKS                       R6 R6 K13 ["FFlagAssistantUseBuilderIcons"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R2 K14 ["IconButton"]
       44 GETTABLEKS                       R7 R2 K15 ["View"]
       46 GETTABLEKS                       R8 R4 K16 ["createNextOrder"]
       48 GETTABLEKS                       R9 R3 K17 ["createElement"]
       50 DUPCLOSURE                       R10 K18 [PROTO_1]
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R8
       53 CAPTURE                          VAL R9
       54 CAPTURE                          VAL R7
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R6
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R1
       59 GETTABLEKS                       R11 R3 K19 ["memo"]
       61 MOVE                             R12 R10
       62 CALL                             R11 1 -1
       63 RETURN                           R11 -1
