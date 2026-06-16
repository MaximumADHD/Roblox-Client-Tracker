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
       11 GETTABLEKS                       R2 R2 K7 ["Flags"]
       13 GETTABLEKS                       R2 R2 K8 ["getFFlagAvatarPreviewerEyeLayeredSetup"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["Util"]
       22 GETTABLEKS                       R3 R3 K10 ["StringUtil"]
       24 CALL                             R2 1 1
       25 NEWTABLE                         R3 8 0
       27 LOADK                            R4 K11 ["Body"]
       28 SETTABLEKS                       R4 R3 K12 ["DEFAULT_ASSET_CLASSIFICATION"]
       30 MOVE                             R5 R1
       31 CALL                             R5 0 1
       32 JUMPIFNOT                        R5 ; [+9]
       33 NEWTABLE                         R4 0 4
       35 LOADK                            R5 K11 ["Body"]
       36 LOADK                            R6 K13 ["Layered"]
       37 LOADK                            R7 K14 ["EyeLayered"]
       38 LOADK                            R8 K15 ["Rigid"]
       39 SETLIST                          R4 R5 4 [1]
       41 JUMP                             ; [+7]
       42 NEWTABLE                         R4 0 3
       44 LOADK                            R5 K11 ["Body"]
       45 LOADK                            R6 K13 ["Layered"]
       46 LOADK                            R7 K15 ["Rigid"]
       47 SETLIST                          R4 R5 3 [1]
       49 SETTABLEKS                       R4 R3 K16 ["ASSET_CLASSIFICATION_OPTIONS"]
       51 MOVE                             R5 R1
       52 CALL                             R5 0 1
       53 JUMPIFNOT                        R5 ; [+20]
       54 DUPTABLE                         R4 K19 [{"Automatic", "Body", "Layered", "EyeLayered", "Rigid", "Avatar"}]
       55 LOADK                            R5 K20 [""]
       56 SETTABLEKS                       R5 R4 K17 ["Automatic"]
       58 LOADK                            R5 K21 ["RBX_BODY_"]
       59 SETTABLEKS                       R5 R4 K11 ["Body"]
       61 LOADK                            R5 K22 ["RBX_LC_"]
       62 SETTABLEKS                       R5 R4 K13 ["Layered"]
       64 LOADK                            R5 K23 ["RBX_EYE_LC_"]
       65 SETTABLEKS                       R5 R4 K14 ["EyeLayered"]
       67 LOADK                            R5 K24 ["RBX_RIGID_"]
       68 SETTABLEKS                       R5 R4 K15 ["Rigid"]
       70 LOADK                            R5 K20 [""]
       71 SETTABLEKS                       R5 R4 K18 ["Avatar"]
       73 JUMP                             ; [+16]
       74 DUPTABLE                         R4 K25 [{"Automatic", "Body", "Layered", "Rigid", "Avatar"}]
       75 LOADK                            R5 K20 [""]
       76 SETTABLEKS                       R5 R4 K17 ["Automatic"]
       78 LOADK                            R5 K21 ["RBX_BODY_"]
       79 SETTABLEKS                       R5 R4 K11 ["Body"]
       81 LOADK                            R5 K22 ["RBX_LC_"]
       82 SETTABLEKS                       R5 R4 K13 ["Layered"]
       84 LOADK                            R5 K24 ["RBX_RIGID_"]
       85 SETTABLEKS                       R5 R4 K15 ["Rigid"]
       87 LOADK                            R5 K20 [""]
       88 SETTABLEKS                       R5 R4 K18 ["Avatar"]
       90 DUPCLOSURE                       R5 K26 [PROTO_0]
       91 CAPTURE                          VAL R4
       92 SETTABLEKS                       R5 R3 K27 ["getAssetNamePrefix"]
       94 DUPCLOSURE                       R5 K28 [PROTO_1]
       95 CAPTURE                          VAL R4
       96 CAPTURE                          VAL R2
       97 SETTABLEKS                       R5 R3 K29 ["getInstanceNameWithoutClassification"]
       99 DUPCLOSURE                       R5 K30 [PROTO_2]
      100 CAPTURE                          VAL R3
      101 SETTABLEKS                       R5 R3 K31 ["getNewInstanceNameWithPrefix"]
      103 DUPCLOSURE                       R5 K32 [PROTO_3]
      104 CAPTURE                          VAL R4
      105 CAPTURE                          VAL R2
      106 SETTABLEKS                       R5 R3 K33 ["getAssetClassificationFromName"]
      108 RETURN                           R3 1
