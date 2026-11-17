PROTO_0:
        0 GETIMPORT                        R1 K1 [game]
        2 LOADK                            R3 K2 ["AnimationFromVideoCreatorStudioService"]
        3 NAMECALL                         R1 R1 K3 ["GetService"]
        5 CALL                             R1 2 1
        6 MOVE                             R4 R0
        7 NAMECALL                         R2 R1 K4 ["CreateAnimationByUploadingVideo"]
        9 CALL                             R2 2 -1
       10 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["CreateAnimationByUploadingVideo"]
        6 RETURN                           R0 1
