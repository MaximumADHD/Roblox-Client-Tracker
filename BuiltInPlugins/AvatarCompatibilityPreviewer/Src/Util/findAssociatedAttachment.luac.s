PROTO_0:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["LIMBS"]
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 FORGPREP                         R3
        8 MOVE                             R10 R7
        9 NAMECALL                         R8 R0 K1 ["FindFirstChild"]
       11 CALL                             R8 2 1
       12 JUMPIFEQKNIL                     R8 ; [+14]
       14 MOVE                             R11 R1
       15 MOVE                             R12 R2
       16 NAMECALL                         R9 R8 K1 ["FindFirstChild"]
       18 CALL                             R9 3 1
       19 JUMPIFEQKNIL                     R9 ; [+7]
       21 LOADK                            R12 K2 ["Attachment"]
       22 NAMECALL                         R10 R9 K3 ["IsA"]
       24 CALL                             R10 2 1
       25 JUMPIFNOT                        R10 ; [+1]
       26 RETURN                           R9 1
       27 FORGLOOP                         R3 2 ; [-20]
       29 LOADNIL                          R3
       30 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["Constants"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["Flags"]
       22 GETTABLEKS                       R3 R3 K10 ["getFFlagAvatarPreviewerBoneNestedAttachmentFix"]
       24 CALL                             R2 1 1
       25 DUPCLOSURE                       R3 K11 [PROTO_0]
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R1
       28 RETURN                           R3 1
