PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["setState"]
        3 DUPTABLE                         R2 K2 [{"expand"}]
        4 GETTABLEKS                       R3 R0 K1 ["expand"]
        6 SETTABLEKS                       R3 R2 K1 ["expand"]
        8 CALL                             R1 1 0
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R1 R2 K3 ["extend"]
       12 DUPTABLE                         R2 K6 [{"toMatchSnapshot", "toThrowErrorMatchingSnapshot"}]
       13 GETUPVAL                         R3 1
       14 SETTABLEKS                       R3 R2 K4 ["toMatchSnapshot"]
       16 GETUPVAL                         R3 2
       17 SETTABLEKS                       R3 R2 K5 ["toThrowErrorMatchingSnapshot"]
       19 CALL                             R1 1 0
       20 GETUPVAL                         R1 0
       21 GETUPVAL                         R2 3
       22 SETTABLEKS                       R2 R1 K7 ["addSnapshotSerializer"]
       24 GETUPVAL                         R1 0
       25 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 NEWTABLE                         R1 1 0
       13 GETIMPORT                        R2 K4 [require]
       15 GETTABLEKS                       R3 R0 K5 ["JestTypes"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K4 [require]
       20 GETTABLEKS                       R4 R0 K6 ["Expect"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K4 [require]
       25 GETTABLEKS                       R5 R0 K7 ["JestSnapshot"]
       27 CALL                             R4 1 1
       28 GETTABLEKS                       R5 R4 K8 ["addSerializer"]
       30 GETTABLEKS                       R6 R4 K9 ["toMatchSnapshot"]
       32 GETTABLEKS                       R7 R4 K10 ["toThrowErrorMatchingSnapshot"]
       34 DUPCLOSURE                       R8 K11 [PROTO_0]
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R6
       37 CAPTURE                          VAL R7
       38 CAPTURE                          VAL R5
       39 SETTABLEKS                       R8 R1 K12 ["default"]
       41 RETURN                           R1 1
