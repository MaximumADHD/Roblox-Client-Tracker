PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["isModerated"]
        2 JUMPIFNOT                        R1 ; [+2]
        3 LOADB                            R1 0
        4 RETURN                           R1 1
        5 LOADB                            R1 1
        6 GETTABLEKS                       R2 R0 K1 ["reviewStatus"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R3 R4 K2 ["Finished"]
       11 JUMPIFEQ                         R2 R3 ; [+10]
       13 GETTABLEKS                       R2 R0 K1 ["reviewStatus"]
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R3 R4 K3 ["DoesNotRequire"]
       18 JUMPIFEQ                         R2 R3 ; [+2]
       20 LOADB                            R1 0 +1
       21 LOADB                            R1 1
       22 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["reviewStatus"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["Pending"]
        5 JUMPIFNOTEQ                      R2 R3 ; [+7]
        7 LOADK                            R4 K2 ["AssetItem"]
        8 LOADK                            R5 K3 ["PendingModerationTooltip"]
        9 NAMECALL                         R2 R0 K4 ["getText"]
       11 CALL                             R2 3 -1
       12 RETURN                           R2 -1
       13 GETTABLEKS                       R2 R1 K5 ["isModerated"]
       15 JUMPIFNOT                        R2 ; [+6]
       16 LOADK                            R4 K2 ["AssetItem"]
       17 LOADK                            R5 K6 ["FailedModerationTooltip"]
       18 NAMECALL                         R2 R0 K4 ["getText"]
       20 CALL                             R2 3 -1
       21 RETURN                           R2 -1
       22 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R4 R0 K5 ["Src"]
       13 GETTABLEKS                       R3 R4 K6 ["Util"]
       15 GETTABLEKS                       R2 R3 K7 ["ReviewStatus"]
       17 CALL                             R1 1 1
       18 NEWTABLE                         R2 2 0
       20 DUPCLOSURE                       R3 K8 [PROTO_0]
       21 CAPTURE                          VAL R1
       22 SETTABLEKS                       R3 R2 K9 ["isApprovedAsset"]
       24 DUPCLOSURE                       R3 K10 [PROTO_1]
       25 CAPTURE                          VAL R1
       26 SETTABLEKS                       R3 R2 K11 ["getModerationTooltip"]
       28 RETURN                           R2 1
