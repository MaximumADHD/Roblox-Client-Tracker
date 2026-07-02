PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["actions"]
        3 JUMPIFNOT                        R0 ; [+17]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["actions"]
        7 LENGTH                           R0 R1
        8 GETUPVAL                         R1 1
        9 JUMPIFNOTLT                      R1 R0 ; [+11]
       11 GETUPVAL                         R0 2
       12 LOADK                            R3 K1 ["Alert components only support up to %* actions"]
       13 GETUPVAL                         R5 1
       14 NAMECALL                         R3 R3 K2 ["format"]
       16 CALL                             R3 2 1
       17 MOVE                             R2 R3
       18 NAMECALL                         R0 R0 K3 ["warning"]
       20 CALL                             R0 2 0
       21 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["actions"]
        3 JUMPIFNOT                        R0 ; [+55]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["actions"]
        7 LENGTH                           R0 R1
        8 LOADN                            R1 0
        9 JUMPIFNOTLT                      R1 R0 ; [+49]
       11 NEWTABLE                         R0 0 0
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K0 ["actions"]
       16 LOADNIL                          R2
       17 LOADNIL                          R3
       18 FORGPREP                         R1
       19 GETUPVAL                         R6 1
       20 JUMPIFLT                         R6 R4 ; [+37]
       22 GETUPVAL                         R6 2
       23 GETTABLEKS                       R6 R6 K1 ["join"]
       25 MOVE                             R7 R5
       26 DUPTABLE                         R8 K5 [{"LayoutOrder", "size", "testId"}]
       27 SETTABLEKS                       R4 R8 K2 ["LayoutOrder"]
       29 GETUPVAL                         R9 3
       30 GETTABLEKS                       R9 R9 K6 ["Small"]
       32 SETTABLEKS                       R9 R8 K3 ["size"]
       34 LOADK                            R10 K7 ["%*--action-%*"]
       35 GETUPVAL                         R12 0
       36 GETTABLEKS                       R12 R12 K4 ["testId"]
       38 MOVE                             R13 R4
       39 NAMECALL                         R10 R10 K8 ["format"]
       41 CALL                             R10 3 1
       42 MOVE                             R9 R10
       43 SETTABLEKS                       R9 R8 K4 ["testId"]
       45 CALL                             R6 2 1
       46 LOADK                            R8 K9 ["ActionButton"]
       47 MOVE                             R9 R4
       48 CONCAT                           R7 R8 R9
       49 GETUPVAL                         R8 4
       50 GETTABLEKS                       R8 R8 K10 ["createElement"]
       52 GETUPVAL                         R9 5
       53 MOVE                             R10 R6
       54 CALL                             R8 2 1
       55 SETTABLE                         R8 R0 R7
       56 FORGLOOP                         R1 2 ; [-38]
       58 RETURN                           R0 1
       59 LOADNIL                          R0
       60 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 1
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K0 ["useEffect"]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          VAL R1
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U4
       11 NEWTABLE                         R4 0 1
       13 GETTABLEKS                       R5 R1 K1 ["actions"]
       15 SETLIST                          R4 R5 1 [1]
       17 CALL                             R2 2 0
       18 GETUPVAL                         R2 2
       19 GETTABLEKS                       R2 R2 K2 ["useMemo"]
       21 NEWCLOSURE                       R3 P1
       22 CAPTURE                          VAL R1
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          UPVAL U5
       25 CAPTURE                          UPVAL U6
       26 CAPTURE                          UPVAL U2
       27 CAPTURE                          UPVAL U7
       28 NEWTABLE                         R4 0 2
       30 GETTABLEKS                       R5 R1 K1 ["actions"]
       32 GETTABLEKS                       R6 R1 K3 ["testId"]
       34 SETLIST                          R4 R5 2 [1]
       36 CALL                             R2 2 1
       37 JUMPIF                           R2 ; [+2]
       38 LOADNIL                          R3
       39 RETURN                           R3 1
       40 GETUPVAL                         R3 2
       41 GETTABLEKS                       R3 R3 K4 ["createElement"]
       43 GETUPVAL                         R4 8
       44 GETUPVAL                         R5 9
       45 MOVE                             R6 R1
       46 DUPTABLE                         R7 K7 [{"tag", "padding"}]
       47 GETTABLEKS                       R9 R1 K5 ["tag"]
       49 ORK                              R8 R9 K8 ["auto-xy row gap-small"]
       50 SETTABLEKS                       R8 R7 K5 ["tag"]
       52 GETTABLEKS                       R8 R1 K6 ["padding"]
       54 SETTABLEKS                       R8 R7 K6 ["padding"]
       56 CALL                             R5 2 1
       57 MOVE                             R6 R2
       58 CALL                             R3 3 -1
       59 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["Button"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Enums"]
       30 GETTABLEKS                       R6 R6 K12 ["InputSize"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K13 ["Utility"]
       37 GETTABLEKS                       R7 R7 K14 ["Logger"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K9 ["Components"]
       44 GETTABLEKS                       R8 R8 K15 ["Types"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K9 ["Components"]
       51 GETTABLEKS                       R9 R9 K16 ["View"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K13 ["Utility"]
       58 GETTABLEKS                       R10 R10 K17 ["withCommonProps"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R11 R0 K13 ["Utility"]
       65 GETTABLEKS                       R11 R11 K18 ["withDefaults"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K6 [require]
       70 GETIMPORT                        R12 K1 [script]
       72 GETTABLEKS                       R12 R12 K4 ["Parent"]
       74 GETTABLEKS                       R12 R12 K19 ["AlertConstants"]
       76 CALL                             R11 1 1
       77 GETTABLEKS                       R12 R11 K20 ["MAX_ACTION_COUNT"]
       79 DUPTABLE                         R13 K23 [{["testId"] = "--foundation-alert-actions"}]
       80 DUPCLOSURE                       R14 K24 [PROTO_2]
       81 CAPTURE                          VAL R10
       82 CAPTURE                          VAL R13
       83 CAPTURE                          VAL R3
       84 CAPTURE                          VAL R12
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R2
       87 CAPTURE                          VAL R5
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R8
       90 CAPTURE                          VAL R9
       91 GETTABLEKS                       R15 R3 K25 ["memo"]
       93 MOVE                             R16 R14
       94 CALL                             R15 1 -1
       95 RETURN                           R15 -1
