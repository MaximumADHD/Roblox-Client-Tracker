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
       30 GETUPVAL                         R8 2
       31 GETUPVAL                         R9 4
       32 DUPTABLE                         R10 K16 [{["icon"], ["size"], ["variant"], ["isCircular"] = True, ["onActivated"], ["LayoutOrder"], ["testId"]}]
       33 GETUPVAL                         R11 5
       34 GETTABLEKS                       R11 R11 K17 ["Enums"]
       36 GETTABLEKS                       R11 R11 K18 ["IconName"]
       38 GETTABLEKS                       R11 R11 K19 ["ThreeSlidersHorizontal"]
       40 SETTABLEKS                       R11 R10 K10 ["icon"]
       42 GETUPVAL                         R11 5
       43 GETTABLEKS                       R11 R11 K17 ["Enums"]
       45 GETTABLEKS                       R11 R11 K20 ["InputSize"]
       47 GETTABLEKS                       R11 R11 K21 ["XSmall"]
       49 SETTABLEKS                       R11 R10 K11 ["size"]
       51 GETUPVAL                         R11 5
       52 GETTABLEKS                       R11 R11 K17 ["Enums"]
       54 GETTABLEKS                       R11 R11 K22 ["ButtonVariant"]
       56 GETTABLEKS                       R11 R11 K23 ["Utility"]
       58 SETTABLEKS                       R11 R10 K12 ["variant"]
       60 SETTABLEKS                       R3 R10 K2 ["onActivated"]
       62 MOVE                             R11 R2
       63 CALL                             R11 0 1
       64 SETTABLEKS                       R11 R10 K5 ["LayoutOrder"]
       66 GETTABLEKS                       R11 R0 K15 ["testId"]
       68 SETTABLEKS                       R11 R10 K15 ["testId"]
       70 CALL                             R8 2 1
       71 SETTABLEKS                       R8 R7 K8 ["IconButton"]
       73 CALL                             R4 3 -1
       74 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R1 K10 ["IconButton"]
       30 GETTABLEKS                       R5 R1 K11 ["View"]
       32 GETTABLEKS                       R6 R3 K12 ["createNextOrder"]
       34 GETTABLEKS                       R7 R2 K13 ["createElement"]
       36 DUPCLOSURE                       R8 K14 [PROTO_1]
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R6
       39 CAPTURE                          VAL R7
       40 CAPTURE                          VAL R5
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R1
       43 GETTABLEKS                       R9 R2 K15 ["memo"]
       45 MOVE                             R10 R8
       46 CALL                             R9 1 -1
       47 RETURN                           R9 -1
