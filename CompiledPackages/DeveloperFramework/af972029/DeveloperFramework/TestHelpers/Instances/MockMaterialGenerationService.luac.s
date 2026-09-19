PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        5 GETIMPORT                        R0 K1 [setmetatable]
        7 CALL                             R0 2 1
        8 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 CALL                             R1 0 -1
        4 RETURN                           R1 -1

PROTO_2:
        0 LOADN                            R1 100
        1 RETURN                           R1 1

PROTO_3:
        0 LOADN                            R1 100
        1 RETURN                           R1 1

PROTO_4:
        0 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["MockMaterialGenerationSession"]
        9 CALL                             R0 1 1
       10 NEWTABLE                         R1 8 0
       12 SETTABLEKS                       R1 R1 K6 ["__index"]
       14 DUPCLOSURE                       R2 K7 [PROTO_0]
       15 CAPTURE                          VAL R1
       16 SETTABLEKS                       R2 R1 K8 ["new"]
       18 DUPCLOSURE                       R2 K9 [PROTO_1]
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R2 R1 K10 ["StartSession"]
       22 DUPCLOSURE                       R2 K11 [PROTO_2]
       23 SETTABLEKS                       R2 R1 K12 ["GetAccountingBalanceAsync"]
       25 DUPCLOSURE                       R2 K13 [PROTO_3]
       26 SETTABLEKS                       R2 R1 K14 ["RefillAccountingBalanceAsync"]
       28 DUPCLOSURE                       R2 K15 [PROTO_4]
       29 SETTABLEKS                       R2 R1 K16 ["Destroy"]
       31 RETURN                           R1 1
