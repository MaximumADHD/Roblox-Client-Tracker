PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["DialogMinSize"]
        6 CALL                             R1 1 2
        7 GETUPVAL                         R3 2
        8 GETUPVAL                         R4 3
        9 GETTABLEKS                       R4 R4 K2 ["View"]
       11 DUPTABLE                         R5 K6 [{["tag"] = "size-full", ["onAbsoluteSizeChanged"]}]
       12 NEWCLOSURE                       R6 P0
       13 CAPTURE                          VAL R2
       14 SETTABLEKS                       R6 R5 K5 ["onAbsoluteSizeChanged"]
       16 NEWTABLE                         R6 0 1
       18 GETUPVAL                         R7 2
       19 GETUPVAL                         R8 4
       20 GETTABLEKS                       R8 R8 K7 ["Provider"]
       22 DUPTABLE                         R9 K9 [{"value"}]
       23 DUPTABLE                         R10 K11 [{"dialogSize"}]
       24 SETTABLEKS                       R1 R10 K10 ["dialogSize"]
       26 SETTABLEKS                       R10 R9 K8 ["value"]
       28 GETTABLEKS                       R10 R0 K12 ["children"]
       30 CALL                             R7 3 -1
       31 SETLIST                          R6 R7 -1 [1]
       33 CALL                             R3 3 -1
       34 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ReimportPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["createElement"]
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R0 K10 ["Lib"]
       27 GETTABLEKS                       R5 R5 K11 ["Constants"]
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R5 R2 K12 ["createContext"]
       32 DUPTABLE                         R6 K14 [{"dialogSize"}]
       33 GETTABLEKS                       R7 R4 K15 ["DialogMinSize"]
       35 SETTABLEKS                       R7 R6 K13 ["dialogSize"]
       37 CALL                             R5 1 1
       38 DUPCLOSURE                       R6 K16 [PROTO_1]
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R5
       44 DUPTABLE                         R7 K19 [{"Context", "Provider"}]
       45 SETTABLEKS                       R5 R7 K17 ["Context"]
       47 SETTABLEKS                       R6 R7 K18 ["Provider"]
       49 RETURN                           R7 1
