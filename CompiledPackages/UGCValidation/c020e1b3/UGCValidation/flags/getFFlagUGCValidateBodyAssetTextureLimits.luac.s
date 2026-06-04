PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+6]
        3 GETIMPORT                        R0 K1 [game]
        5 LOADK                            R2 K2 ["UGCValidateBodyAssetTextureLimits"]
        6 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        8 CALL                             R0 2 1
        9 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["flags"]
       11 GETTABLEKS                       R2 R2 K6 ["getEngineUGCValidateAssetTextureLimits"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K8 [game]
       16 LOADK                            R4 K9 ["UGCValidateBodyAssetTextureLimits"]
       17 LOADB                            R5 0
       18 NAMECALL                         R2 R2 K10 ["DefineFastFlag"]
       20 CALL                             R2 3 0
       21 DUPCLOSURE                       R2 K11 [PROTO_0]
       22 CAPTURE                          VAL R1
       23 RETURN                           R2 1
