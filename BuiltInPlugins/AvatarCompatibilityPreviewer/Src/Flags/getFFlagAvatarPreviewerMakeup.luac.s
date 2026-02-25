PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["AvatarPreviewerMakeup"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 1
        6 JUMPIFNOT                        R0 ; [+13]
        7 GETIMPORT                        R0 K1 [game]
        9 LOADK                            R2 K4 ["WrapTextureTransferEnabled"]
       10 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
       12 CALL                             R0 2 1
       13 JUMPIFNOT                        R0 ; [+6]
       14 GETIMPORT                        R0 K1 [game]
       16 LOADK                            R2 K5 ["EnableComposeDecalAsync"]
       17 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
       19 CALL                             R0 2 1
       20 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["AvatarPreviewerMakeup"]
        4 LOADB                            R3 0
        5 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
        7 CALL                             R0 3 0
        8 GETIMPORT                        R0 K1 [game]
       10 LOADK                            R2 K4 ["WrapTextureTransferEnabled"]
       11 LOADB                            R3 0
       12 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       14 CALL                             R0 3 0
       15 GETIMPORT                        R0 K1 [game]
       17 LOADK                            R2 K5 ["EnableComposeDecalAsync"]
       18 LOADB                            R3 0
       19 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       21 CALL                             R0 3 0
       22 DUPCLOSURE                       R0 K6 [PROTO_0]
       23 RETURN                           R0 1
