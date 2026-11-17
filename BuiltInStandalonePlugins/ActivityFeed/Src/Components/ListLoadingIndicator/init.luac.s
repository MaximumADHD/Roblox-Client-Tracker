PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 LOADK                            R1 K1 ["Frame"]
        4 NEWTABLE                         R2 1 0
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K2 ["Tag"]
        9 GETUPVAL                         R4 1
       10 LOADK                            R5 K3 ["Component-ListLoadingIndicator"]
       11 LOADK                            R6 K4 ["X-Center"]
       12 LOADK                            R7 K5 ["X-Middle"]
       13 CALL                             R4 3 1
       14 SETTABLE                         R4 R2 R3
       15 DUPTABLE                         R3 K7 [{"LoadingIndicator"}]
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K0 ["createElement"]
       19 GETUPVAL                         R5 2
       20 NEWTABLE                         R6 0 0
       22 CALL                             R4 2 1
       23 SETTABLEKS                       R4 R3 K6 ["LoadingIndicator"]
       25 CALL                             R0 3 -1
       26 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["Styling"]
       25 GETTABLEKS                       R3 R3 K9 ["joinTags"]
       27 GETTABLEKS                       R4 R2 K10 ["UI"]
       29 GETTABLEKS                       R5 R4 K11 ["LoadingIndicator"]
       31 DUPCLOSURE                       R6 K12 [PROTO_0]
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R5
       35 RETURN                           R6 1
