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
        6 GETUPVAL                         R6 1
        7 GETTABLEKS                       R6 R6 K1 ["startsWith"]
        9 MOVE                             R7 R0
       10 MOVE                             R8 R5
       11 CALL                             R6 2 1
       12 JUMPIFNOT                        R6 ; [+7]
       13 GETUPVAL                         R6 1
       14 GETTABLEKS                       R6 R6 K2 ["removePrefix"]
       16 MOVE                             R7 R0
       17 MOVE                             R8 R5
       18 CALL                             R6 2 -1
       19 RETURN                           R6 -1
       20 FORGLOOP                         R1 2 ; [-17]
       22 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getInstanceNameWithoutClassification"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["getAssetNamePrefix"]
        8 MOVE                             R4 R1
        9 JUMPIF                           R4 ; [+3]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K2 ["DEFAULT_ASSET_CLASSIFICATION"]
       13 CALL                             R3 1 1
       14 MOVE                             R5 R3
       15 MOVE                             R6 R2
       16 CONCAT                           R4 R5 R6
       17 RETURN                           R4 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 JUMPIFEQKS                       R5 K0 [""] ; [+9]
        6 GETUPVAL                         R6 1
        7 GETTABLEKS                       R6 R6 K1 ["startsWith"]
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
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["StringUtil"]
       15 CALL                             R1 1 1
       16 NEWTABLE                         R2 8 0
       18 LOADK                            R3 K9 ["Body"]
       19 SETTABLEKS                       R3 R2 K10 ["DEFAULT_ASSET_CLASSIFICATION"]
       21 NEWTABLE                         R3 0 4
       23 LOADK                            R4 K9 ["Body"]
       24 LOADK                            R5 K11 ["Layered"]
       25 LOADK                            R6 K12 ["EyeLayered"]
       26 LOADK                            R7 K13 ["Rigid"]
       27 SETLIST                          R3 R4 4 [1]
       29 SETTABLEKS                       R3 R2 K14 ["ASSET_CLASSIFICATION_OPTIONS"]
       31 DUPTABLE                         R3 K22 [{["Automatic"] = "", ["Body"] = "RBX_BODY_", ["Layered"] = "RBX_LC_", ["EyeLayered"] = "RBX_EYE_LC_", ["Rigid"] = "RBX_RIGID_", ["Avatar"] = ""}]
       32 DUPCLOSURE                       R4 K23 [PROTO_0]
       33 CAPTURE                          VAL R3
       34 SETTABLEKS                       R4 R2 K24 ["getAssetNamePrefix"]
       36 DUPCLOSURE                       R4 K25 [PROTO_1]
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R1
       39 SETTABLEKS                       R4 R2 K26 ["getInstanceNameWithoutClassification"]
       41 DUPCLOSURE                       R4 K27 [PROTO_2]
       42 CAPTURE                          VAL R2
       43 SETTABLEKS                       R4 R2 K28 ["getNewInstanceNameWithPrefix"]
       45 DUPCLOSURE                       R4 K29 [PROTO_3]
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R1
       48 SETTABLEKS                       R4 R2 K30 ["getAssetClassificationFromName"]
       50 RETURN                           R2 1
