PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["assertNullableType"]
        3 MOVE                             R2 R0
        4 LOADK                            R3 K1 ["string"]
        5 LOADK                            R4 K2 ["SetChooseGameQuery arg"]
        6 CALL                             R1 3 0
        7 DUPTABLE                         R1 K4 [{"queryState"}]
        8 SETTABLEKS                       R0 R1 K3 ["queryState"]
       10 GETUPVAL                         R2 1
       11 CALL                             R2 0 1
       12 JUMPIFNOT                        R2 ; [+12]
       13 GETUPVAL                         R2 2
       14 GETTABLEKS                       R2 R2 K5 ["QUERY_STATE"]
       16 GETTABLEKS                       R2 R2 K6 ["QUERY_STATE_QUERYING"]
       18 JUMPIFNOTEQ                      R0 R2 ; [+6]
       20 GETUPVAL                         R2 3
       21 GETTABLEKS                       R2 R2 K7 ["None"]
       23 SETTABLEKS                       R2 R1 K8 ["nextPageCursor"]
       25 DUPTABLE                         R2 K10 [{"gameInfo"}]
       26 SETTABLEKS                       R1 R2 K9 ["gameInfo"]
       28 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Cryo"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Src"]
       20 GETTABLEKS                       R3 R3 K8 ["Resources"]
       22 GETTABLEKS                       R3 R3 K9 ["Constants"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K7 ["Src"]
       29 GETTABLEKS                       R4 R4 K10 ["Util"]
       31 GETTABLEKS                       R4 R4 K11 ["AssertType"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K4 [require]
       36 GETIMPORT                        R5 K1 [script]
       38 GETTABLEKS                       R5 R5 K2 ["Parent"]
       40 GETTABLEKS                       R5 R5 K12 ["Action"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K4 [require]
       45 GETTABLEKS                       R6 R0 K7 ["Src"]
       47 GETTABLEKS                       R6 R6 K13 ["Flags"]
       49 GETTABLEKS                       R6 R6 K14 ["getFFlagCOLLAB6755TimingBug2"]
       51 CALL                             R5 1 1
       52 MOVE                             R6 R4
       53 GETIMPORT                        R7 K1 [script]
       55 GETTABLEKS                       R7 R7 K15 ["Name"]
       57 DUPCLOSURE                       R8 K16 [PROTO_0]
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R1
       62 CALL                             R6 2 -1
       63 RETURN                           R6 -1
