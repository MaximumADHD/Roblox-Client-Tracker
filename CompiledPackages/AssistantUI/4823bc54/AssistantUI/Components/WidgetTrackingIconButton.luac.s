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
       31 GETTABLEKS                       R9 R9 K10 ["FFlagAssistantUseBuilderIcons"]
       33 JUMPIFNOT                        R9 ; [+42]
       34 GETUPVAL                         R8 2
       35 GETUPVAL                         R9 5
       36 DUPTABLE                         R10 K17 [{["icon"], ["size"], ["variant"], ["isCircular"] = True, ["onActivated"], ["LayoutOrder"], ["testId"]}]
       37 GETUPVAL                         R11 6
       38 GETTABLEKS                       R11 R11 K18 ["Enums"]
       40 GETTABLEKS                       R11 R11 K19 ["IconName"]
       42 GETTABLEKS                       R11 R11 K20 ["ThreeSlidersHorizontal"]
       44 SETTABLEKS                       R11 R10 K11 ["icon"]
       46 GETUPVAL                         R11 6
       47 GETTABLEKS                       R11 R11 K18 ["Enums"]
       49 GETTABLEKS                       R11 R11 K21 ["InputSize"]
       51 GETTABLEKS                       R11 R11 K22 ["XSmall"]
       53 SETTABLEKS                       R11 R10 K12 ["size"]
       55 GETUPVAL                         R11 6
       56 GETTABLEKS                       R11 R11 K18 ["Enums"]
       58 GETTABLEKS                       R11 R11 K23 ["ButtonVariant"]
       60 GETTABLEKS                       R11 R11 K24 ["Utility"]
       62 SETTABLEKS                       R11 R10 K13 ["variant"]
       64 SETTABLEKS                       R3 R10 K2 ["onActivated"]
       66 MOVE                             R11 R2
       67 CALL                             R11 0 1
       68 SETTABLEKS                       R11 R10 K5 ["LayoutOrder"]
       70 GETTABLEKS                       R11 R0 K16 ["testId"]
       72 SETTABLEKS                       R11 R10 K16 ["testId"]
       74 CALL                             R8 2 1
       75 JUMP                             ; [+14]
       76 GETUPVAL                         R8 2
       77 GETUPVAL                         R9 7
       78 DUPTABLE                         R10 K29 [{["testId"], ["icon"] = "icons/actions/adjust", ["tag"] = "align-x-center align-y-center size-600-600 radius-circle", ["iconTag"] = "size-600-600 content-emphasis", ["LayoutOrder"], ["onActivated"]}]
       79 GETTABLEKS                       R11 R0 K16 ["testId"]
       81 SETTABLEKS                       R11 R10 K16 ["testId"]
       83 MOVE                             R11 R2
       84 CALL                             R11 0 1
       85 SETTABLEKS                       R11 R10 K5 ["LayoutOrder"]
       87 SETTABLEKS                       R3 R10 K2 ["onActivated"]
       89 CALL                             R8 2 1
       90 SETTABLEKS                       R8 R7 K8 ["IconButton"]
       92 CALL                             R4 3 -1
       93 RETURN                           R4 -1

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
       16 GETTABLEKS                       R3 R0 K8 ["Flags"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Parent"]
       23 GETTABLEKS                       R4 R4 K10 ["Foundation"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K9 ["Parent"]
       30 GETTABLEKS                       R5 R5 K11 ["React"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K9 ["Parent"]
       37 GETTABLEKS                       R6 R6 K12 ["ReactUtils"]
       39 CALL                             R5 1 1
       40 GETTABLEKS                       R6 R3 K13 ["IconButton"]
       42 GETTABLEKS                       R7 R3 K14 ["View"]
       44 GETTABLEKS                       R8 R5 K15 ["createNextOrder"]
       46 GETTABLEKS                       R9 R4 K16 ["createElement"]
       48 DUPCLOSURE                       R10 K17 [PROTO_1]
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R8
       51 CAPTURE                          VAL R9
       52 CAPTURE                          VAL R7
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R1
       57 GETTABLEKS                       R11 R4 K18 ["memo"]
       59 MOVE                             R12 R10
       60 CALL                             R11 1 -1
       61 RETURN                           R11 -1
