PROTO_0:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["GetUserId"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 MOVE                             R4 R1
        6 NAMECALL                         R2 R2 K1 ["GetHumanoidDescriptionFromUserId"]
        8 CALL                             R2 2 1
        9 GETUPVAL                         R3 2
       10 MOVE                             R4 R2
       11 CALL                             R3 1 0
       12 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Players"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["StudioService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 GETTABLEKS                       R2 R2 K7 ["Parent"]
       17 GETTABLEKS                       R2 R2 K7 ["Parent"]
       19 GETTABLEKS                       R2 R2 K7 ["Parent"]
       21 GETIMPORT                        R3 K9 [require]
       23 GETTABLEKS                       R4 R2 K10 ["Src"]
       25 GETTABLEKS                       R4 R4 K11 ["Util"]
       27 GETTABLEKS                       R4 R4 K12 ["clearPrebakedDescriptionAnimations"]
       29 CALL                             R3 1 1
       30 DUPCLOSURE                       R4 K13 [PROTO_0]
       31 CAPTURE                          VAL R1
       32 CAPTURE                          VAL R0
       33 CAPTURE                          VAL R3
       34 RETURN                           R4 1
