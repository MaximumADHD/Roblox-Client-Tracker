PROTO_0:
        0 NEWTABLE                         R0 0 1
        2 DUPTABLE                         R1 K2 [{"creatorType", "id"}]
        3 LOADK                            R2 K3 ["User"]
        4 SETTABLEKS                       R2 R1 K0 ["creatorType"]
        6 GETUPVAL                         R2 0
        7 NAMECALL                         R2 R2 K4 ["GetUserId"]
        9 CALL                             R2 1 1
       10 SETTABLEKS                       R2 R1 K1 ["id"]
       12 SETLIST                          R0 R1 1 [1]
       14 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StudioService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R4 K5 [script]
        9 GETTABLEKS                       R3 R4 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K6 ["Parent"]
       13 GETTABLEKS                       R1 R2 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R5 R1 K9 ["Src"]
       19 GETTABLEKS                       R4 R5 K10 ["Types"]
       21 GETTABLEKS                       R3 R4 K11 ["UGCValidationTypes"]
       23 CALL                             R2 1 1
       24 DUPCLOSURE                       R3 K12 [PROTO_0]
       25 CAPTURE                          VAL R0
       26 RETURN                           R3 1
