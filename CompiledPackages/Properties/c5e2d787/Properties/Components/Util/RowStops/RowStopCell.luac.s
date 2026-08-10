PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["number"] ; [+6]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K3 ["onChange"]
       10 MOVE                             R2 R0
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["cell"]
        2 GETTABLEKS                       R2 R1 K1 ["kind"]
        4 JUMPIFNOTEQKS                    R2 K2 ["Number"] ; [+65]
        6 GETUPVAL                         R2 0
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 1
        9 GETUPVAL                         R4 2
       10 DUPTABLE                         R5 K6 [{["tag"] = "row flex-x-fill align-y-center items-center gap-medium auto-y", ["LayoutOrder"]}]
       11 GETTABLEKS                       R6 R0 K5 ["LayoutOrder"]
       13 SETTABLEKS                       R6 R5 K5 ["LayoutOrder"]
       15 DUPTABLE                         R6 K9 [{"Label", "NumberInput"}]
       16 GETUPVAL                         R7 1
       17 GETUPVAL                         R8 3
       18 DUPTABLE                         R9 K12 [{["Text"], ["tag"] = "auto-xy text-label-medium", ["LayoutOrder"]}]
       19 GETTABLEKS                       R10 R1 K13 ["name"]
       21 SETTABLEKS                       R10 R9 K10 ["Text"]
       23 MOVE                             R10 R2
       24 CALL                             R10 0 1
       25 SETTABLEKS                       R10 R9 K5 ["LayoutOrder"]
       27 CALL                             R7 2 1
       28 SETTABLEKS                       R7 R6 K7 ["Label"]
       30 GETUPVAL                         R7 1
       31 GETUPVAL                         R8 4
       32 DUPTABLE                         R9 K21 [{["propertyPart"], ["readonly"] = False, ["slider"], ["onEditStart"], ["onChange"], ["onEditFinish"], ["LayoutOrder"]}]
       33 GETTABLEKS                       R10 R1 K22 ["part"]
       35 SETTABLEKS                       R10 R9 K14 ["propertyPart"]
       37 DUPTABLE                         R10 K25 [{"step", "bounds"}]
       38 GETTABLEKS                       R12 R1 K23 ["step"]
       40 ORK                              R11 R12 K26 [0.05]
       41 SETTABLEKS                       R11 R10 K23 ["step"]
       43 GETTABLEKS                       R11 R1 K24 ["bounds"]
       45 SETTABLEKS                       R11 R10 K24 ["bounds"]
       47 SETTABLEKS                       R10 R9 K17 ["slider"]
       49 GETTABLEKS                       R10 R0 K18 ["onEditStart"]
       51 SETTABLEKS                       R10 R9 K18 ["onEditStart"]
       53 NEWCLOSURE                       R10 P0
       54 CAPTURE                          VAL R1
       55 SETTABLEKS                       R10 R9 K19 ["onChange"]
       57 GETTABLEKS                       R10 R0 K20 ["onEditFinish"]
       59 SETTABLEKS                       R10 R9 K20 ["onEditFinish"]
       61 MOVE                             R10 R2
       62 CALL                             R10 0 1
       63 SETTABLEKS                       R10 R9 K5 ["LayoutOrder"]
       65 CALL                             R7 2 1
       66 SETTABLEKS                       R7 R6 K8 ["NumberInput"]
       68 CALL                             R3 3 -1
       69 RETURN                           R3 -1
       70 GETIMPORT                        R2 K28 [error]
       72 LOADK                            R4 K29 ["Cannot create RowStopCell element for kind: %*"]
       73 GETTABLEKS                       R6 R1 K1 ["kind"]
       75 NAMECALL                         R4 R4 K30 ["format"]
       77 CALL                             R4 2 1
       78 MOVE                             R3 R4
       79 CALL                             R2 1 0
       80 LOADNIL                          R2
       81 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Util"]
       13 GETTABLEKS                       R3 R3 K8 ["Expressions"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R1 K9 ["Foundation"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K10 ["PropertyTypes"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R1 K11 ["React"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R7 R1 K12 ["ReactUtils"]
       35 CALL                             R6 1 1
       36 GETIMPORT                        R7 K6 [require]
       38 GETTABLEKS                       R8 R0 K13 ["Components"]
       40 GETTABLEKS                       R8 R8 K7 ["Util"]
       42 GETTABLEKS                       R8 R8 K14 ["Number"]
       44 GETTABLEKS                       R8 R8 K15 ["SingleNumberInput"]
       46 CALL                             R7 1 1
       47 GETTABLEKS                       R8 R3 K16 ["View"]
       49 GETTABLEKS                       R9 R3 K17 ["Text"]
       51 GETTABLEKS                       R10 R6 K18 ["createNextOrder"]
       53 GETTABLEKS                       R11 R5 K19 ["createElement"]
       55 DUPCLOSURE                       R12 K20 [PROTO_1]
       56 CAPTURE                          VAL R10
       57 CAPTURE                          VAL R11
       58 CAPTURE                          VAL R8
       59 CAPTURE                          VAL R9
       60 CAPTURE                          VAL R7
       61 GETTABLEKS                       R13 R5 K21 ["memo"]
       63 MOVE                             R14 R12
       64 CALL                             R13 1 -1
       65 RETURN                           R13 -1
