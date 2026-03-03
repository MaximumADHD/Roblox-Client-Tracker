PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onActivated"]
        3 JUMPIFNOT                        R0 ; [+11]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K1 ["current"]
        7 JUMPIFNOT                        R0 ; [+7]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R0 R1 K0 ["onActivated"]
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R1 R2 K1 ["current"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 CALL                             R2 0 1
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K1 ["useCallback"]
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R1
       13 NEWTABLE                         R5 0 1
       15 GETTABLEKS                       R6 R0 K2 ["onActivated"]
       17 SETLIST                          R5 R6 1 [1]
       19 CALL                             R3 2 1
       20 GETUPVAL                         R4 2
       21 GETUPVAL                         R5 3
       22 DUPTABLE                         R6 K6 [{"tag", "LayoutOrder", "ref"}]
       23 LOADK                            R7 K7 ["auto-xy"]
       24 SETTABLEKS                       R7 R6 K3 ["tag"]
       26 GETTABLEKS                       R7 R0 K4 ["LayoutOrder"]
       28 SETTABLEKS                       R7 R6 K4 ["LayoutOrder"]
       30 SETTABLEKS                       R1 R6 K5 ["ref"]
       32 DUPTABLE                         R7 K9 [{"IconButton"}]
       33 GETUPVAL                         R8 2
       34 GETUPVAL                         R9 4
       35 DUPTABLE                         R10 K13 [{"testId", "icon", "tag", "iconTag", "LayoutOrder", "onActivated"}]
       36 GETTABLEKS                       R11 R0 K10 ["testId"]
       38 SETTABLEKS                       R11 R10 K10 ["testId"]
       40 LOADK                            R11 K14 ["icons/actions/adjust"]
       41 SETTABLEKS                       R11 R10 K11 ["icon"]
       43 LOADK                            R11 K15 ["size-600-600 radius-circle align-x-center align-y-center"]
       44 SETTABLEKS                       R11 R10 K3 ["tag"]
       46 LOADK                            R11 K16 ["size-600-600 content-emphasis"]
       47 SETTABLEKS                       R11 R10 K12 ["iconTag"]
       49 MOVE                             R11 R2
       50 CALL                             R11 0 1
       51 SETTABLEKS                       R11 R10 K4 ["LayoutOrder"]
       53 SETTABLEKS                       R3 R10 K2 ["onActivated"]
       55 CALL                             R8 2 1
       56 SETTABLEKS                       R8 R7 K8 ["IconButton"]
       58 CALL                             R4 3 -1
       59 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R3 K7 ["CustomIconButton"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R4 K9 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R5 K10 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Parent"]
       32 GETTABLEKS                       R5 R6 K11 ["ReactUtils"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R2 K12 ["View"]
       37 GETTABLEKS                       R6 R4 K13 ["createNextOrder"]
       39 GETTABLEKS                       R7 R3 K14 ["createElement"]
       41 DUPCLOSURE                       R8 K15 [PROTO_1]
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R6
       44 CAPTURE                          VAL R7
       45 CAPTURE                          VAL R5
       46 CAPTURE                          VAL R1
       47 GETTABLEKS                       R9 R3 K16 ["memo"]
       49 MOVE                             R10 R8
       50 CALL                             R9 1 -1
       51 RETURN                           R9 -1
