PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 JUMPIFEQKS                       R5 K0 [""] ; [+15]
        6 GETUPVAL                         R7 1
        7 GETTABLEKS                       R6 R7 K1 ["startsWith"]
        9 MOVE                             R7 R0
       10 MOVE                             R8 R5
       11 CALL                             R6 2 1
       12 JUMPIFNOT                        R6 ; [+7]
       13 GETUPVAL                         R7 1
       14 GETTABLEKS                       R6 R7 K2 ["removePrefix"]
       16 MOVE                             R7 R0
       17 MOVE                             R8 R5
       18 CALL                             R6 2 -1
       19 RETURN                           R6 -1
       20 FORGLOOP                         R1 2 ; [-17]
       22 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["getInstanceNameWithoutClassification"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R4 1
        6 CALL                             R4 0 1
        7 JUMPIFNOT                        R4 ; [+10]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R3 R4 K1 ["getAssetNamePrefix"]
       11 MOVE                             R4 R1
       12 JUMPIF                           R4 ; [+3]
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R4 R5 K2 ["DEFAULT_ASSET_CLASSIFICATION"]
       16 CALL                             R3 1 1
       17 JUMP                             ; [+9]
       18 JUMPIFEQKNIL                     R1 ; [+7]
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R3 R4 K1 ["getAssetNamePrefix"]
       23 MOVE                             R4 R1
       24 CALL                             R3 1 1
       25 JUMP                             ; [+1]
       26 LOADK                            R3 K3 [""]
       27 MOVE                             R5 R3
       28 MOVE                             R6 R2
       29 CONCAT                           R4 R5 R6
       30 RETURN                           R4 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 JUMPIFEQKS                       R5 K0 [""] ; [+9]
        6 GETUPVAL                         R7 1
        7 GETTABLEKS                       R6 R7 K1 ["startsWith"]
        9 MOVE                             R7 R0
       10 MOVE                             R8 R5
       11 CALL                             R6 2 1
       12 JUMPIFNOT                        R6 ; [+1]
       13 RETURN                           R4 1
       14 FORGLOOP                         R1 2 ; [-11]
       16 LOADK                            R1 K2 ["Automatic"]
       17 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Flags"]
       13 GETTABLEKS                       R2 R3 K8 ["getFFlagAvatarAutosetupOptionsInput"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R5 R0 K6 ["Src"]
       20 GETTABLEKS                       R4 R5 K9 ["Util"]
       22 GETTABLEKS                       R3 R4 K10 ["StringUtil"]
       24 CALL                             R2 1 1
       25 NEWTABLE                         R3 8 0
       27 LOADK                            R4 K11 ["Body"]
       28 SETTABLEKS                       R4 R3 K12 ["DEFAULT_ASSET_CLASSIFICATION"]
       30 NEWTABLE                         R4 0 3
       32 LOADK                            R5 K11 ["Body"]
       33 LOADK                            R6 K13 ["Layered"]
       34 LOADK                            R7 K14 ["Rigid"]
       35 SETLIST                          R4 R5 3 [1]
       37 SETTABLEKS                       R4 R3 K15 ["ASSET_CLASSIFICATION_OPTIONS"]
       39 DUPTABLE                         R4 K18 [{"Automatic", "Body", "Layered", "Rigid", "Avatar"}]
       40 LOADK                            R5 K19 [""]
       41 SETTABLEKS                       R5 R4 K16 ["Automatic"]
       43 LOADK                            R5 K20 ["RBX_BODY_"]
       44 SETTABLEKS                       R5 R4 K11 ["Body"]
       46 LOADK                            R5 K21 ["RBX_LC_"]
       47 SETTABLEKS                       R5 R4 K13 ["Layered"]
       49 LOADK                            R5 K22 ["RBX_RIGID_"]
       50 SETTABLEKS                       R5 R4 K14 ["Rigid"]
       52 LOADK                            R5 K19 [""]
       53 SETTABLEKS                       R5 R4 K17 ["Avatar"]
       55 DUPCLOSURE                       R5 K23 [PROTO_0]
       56 CAPTURE                          VAL R4
       57 SETTABLEKS                       R5 R3 K24 ["getAssetNamePrefix"]
       59 DUPCLOSURE                       R5 K25 [PROTO_1]
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R2
       62 SETTABLEKS                       R5 R3 K26 ["getInstanceNameWithoutClassification"]
       64 DUPCLOSURE                       R5 K27 [PROTO_2]
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R1
       67 SETTABLEKS                       R5 R3 K28 ["getNewInstanceNameWithPrefix"]
       69 DUPCLOSURE                       R5 K29 [PROTO_3]
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R2
       72 SETTABLEKS                       R5 R3 K30 ["getAssetClassificationFromName"]
       74 RETURN                           R3 1
