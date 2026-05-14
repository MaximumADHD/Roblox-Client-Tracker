PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+6]
        3 GETIMPORT                        R0 K1 [game]
        5 LOADK                            R2 K2 ["AvatarPreviewerAvatarLooksEnabled_DEV"]
        6 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        8 CALL                             R0 2 1
        9 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["getFFlagAvatarPreviewerLookComposer"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K7 [game]
       12 LOADK                            R3 K8 ["AvatarPreviewerAvatarLooksEnabled_DEV"]
       13 LOADB                            R4 0
       14 NAMECALL                         R1 R1 K9 ["DefineFastFlag"]
       16 CALL                             R1 3 0
       17 DUPCLOSURE                       R1 K10 [PROTO_0]
       18 CAPTURE                          VAL R0
       19 RETURN                           R1 1
