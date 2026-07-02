PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 GETUPVAL                         R3 1
        4 GETTABLEN                        R2 R3 1
        5 GETTABLEKS                       R2 R2 K1 ["id"]
        7 CALL                             R1 1 2
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K2 ["createElement"]
       11 GETUPVAL                         R4 2
       12 DUPTABLE                         R5 K5 [{["tag"] = "col auto-xy"}]
       13 DUPTABLE                         R6 K7 [{"SegmentedControl"}]
       14 GETUPVAL                         R7 0
       15 GETTABLEKS                       R7 R7 K2 ["createElement"]
       17 GETUPVAL                         R8 3
       18 DUPTABLE                         R9 K12 [{"size", "segments", "value", "onActivated"}]
       19 GETTABLEKS                       R10 R0 K13 ["controls"]
       21 GETTABLEKS                       R10 R10 K8 ["size"]
       23 SETTABLEKS                       R10 R9 K8 ["size"]
       25 GETUPVAL                         R10 1
       26 SETTABLEKS                       R10 R9 K9 ["segments"]
       28 SETTABLEKS                       R1 R9 K10 ["value"]
       30 SETTABLEKS                       R2 R9 K11 ["onActivated"]
       32 CALL                             R7 2 1
       33 SETTABLEKS                       R7 R6 K6 ["SegmentedControl"]
       35 CALL                             R3 3 -1
       36 RETURN                           R3 -1

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
       23 GETTABLEKS                       R5 R5 K10 ["Types"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K9 ["Components"]
       30 GETTABLEKS                       R6 R6 K11 ["View"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K9 ["Components"]
       37 GETTABLEKS                       R7 R7 K12 ["SegmentedControl"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K13 ["Enums"]
       44 GETTABLEKS                       R8 R8 K14 ["InputSize"]
       46 CALL                             R7 1 1
       47 NEWTABLE                         R8 0 5
       49 DUPTABLE                         R9 K19 [{["id"] = "1", ["text"] = "Lorem Ipsum"}]
       50 DUPTABLE                         R10 K21 [{["id"] = "2", ["text"] = "Lorem Ipsum"}]
       51 DUPTABLE                         R11 K23 [{["id"] = "3", ["text"] = "Lorem Ipsum"}]
       52 DUPTABLE                         R12 K25 [{["id"] = "4", ["text"] = "Lorem Ipsum"}]
       53 DUPTABLE                         R13 K28 [{["id"] = "5", ["text"] = "Lorem Ipsum Long"}]
       54 SETLIST                          R8 R9 5 [1]
       56 DUPCLOSURE                       R9 K29 [PROTO_0]
       57 CAPTURE                          VAL R3
       58 CAPTURE                          VAL R8
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R6
       61 DUPTABLE                         R10 K33 [{["summary"] = "SegmentedControl", ["story"], ["controls"]}]
       62 SETTABLEKS                       R9 R10 K31 ["story"]
       64 DUPTABLE                         R11 K35 [{"size"}]
       65 GETTABLEKS                       R12 R2 K36 ["values"]
       67 MOVE                             R13 R7
       68 CALL                             R12 1 1
       69 SETTABLEKS                       R12 R11 K34 ["size"]
       71 SETTABLEKS                       R11 R10 K32 ["controls"]
       73 RETURN                           R10 1
