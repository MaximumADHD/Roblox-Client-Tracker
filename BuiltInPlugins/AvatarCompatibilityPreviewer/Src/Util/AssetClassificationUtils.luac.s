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
       20 GETTABLEKS                       R4 R5 K7 ["Flags"]
       22 GETTABLEKS                       R3 R4 K9 ["getFFlagAvatarPreviewerEyeLayeredSetup"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R6 R0 K6 ["Src"]
       29 GETTABLEKS                       R5 R6 K10 ["Util"]
       31 GETTABLEKS                       R4 R5 K11 ["StringUtil"]
       33 CALL                             R3 1 1
       34 NEWTABLE                         R4 8 0
       36 LOADK                            R5 K12 ["Body"]
       37 SETTABLEKS                       R5 R4 K13 ["DEFAULT_ASSET_CLASSIFICATION"]
       39 MOVE                             R6 R2
       40 CALL                             R6 0 1
       41 JUMPIFNOT                        R6 ; [+9]
       42 NEWTABLE                         R5 0 4
       44 LOADK                            R6 K12 ["Body"]
       45 LOADK                            R7 K14 ["Layered"]
       46 LOADK                            R8 K15 ["EyeLayered"]
       47 LOADK                            R9 K16 ["Rigid"]
       48 SETLIST                          R5 R6 4 [1]
       50 JUMP                             ; [+7]
       51 NEWTABLE                         R5 0 3
       53 LOADK                            R6 K12 ["Body"]
       54 LOADK                            R7 K14 ["Layered"]
       55 LOADK                            R8 K16 ["Rigid"]
       56 SETLIST                          R5 R6 3 [1]
       58 SETTABLEKS                       R5 R4 K17 ["ASSET_CLASSIFICATION_OPTIONS"]
       60 MOVE                             R6 R2
       61 CALL                             R6 0 1
       62 JUMPIFNOT                        R6 ; [+20]
       63 DUPTABLE                         R5 K20 [{"Automatic", "Body", "Layered", "EyeLayered", "Rigid", "Avatar"}]
       64 LOADK                            R6 K21 [""]
       65 SETTABLEKS                       R6 R5 K18 ["Automatic"]
       67 LOADK                            R6 K22 ["RBX_BODY_"]
       68 SETTABLEKS                       R6 R5 K12 ["Body"]
       70 LOADK                            R6 K23 ["RBX_LC_"]
       71 SETTABLEKS                       R6 R5 K14 ["Layered"]
       73 LOADK                            R6 K24 ["RBX_EYE_LC_"]
       74 SETTABLEKS                       R6 R5 K15 ["EyeLayered"]
       76 LOADK                            R6 K25 ["RBX_RIGID_"]
       77 SETTABLEKS                       R6 R5 K16 ["Rigid"]
       79 LOADK                            R6 K21 [""]
       80 SETTABLEKS                       R6 R5 K19 ["Avatar"]
       82 JUMP                             ; [+16]
       83 DUPTABLE                         R5 K26 [{"Automatic", "Body", "Layered", "Rigid", "Avatar"}]
       84 LOADK                            R6 K21 [""]
       85 SETTABLEKS                       R6 R5 K18 ["Automatic"]
       87 LOADK                            R6 K22 ["RBX_BODY_"]
       88 SETTABLEKS                       R6 R5 K12 ["Body"]
       90 LOADK                            R6 K23 ["RBX_LC_"]
       91 SETTABLEKS                       R6 R5 K14 ["Layered"]
       93 LOADK                            R6 K25 ["RBX_RIGID_"]
       94 SETTABLEKS                       R6 R5 K16 ["Rigid"]
       96 LOADK                            R6 K21 [""]
       97 SETTABLEKS                       R6 R5 K19 ["Avatar"]
       99 DUPCLOSURE                       R6 K27 [PROTO_0]
      100 CAPTURE                          VAL R5
      101 SETTABLEKS                       R6 R4 K28 ["getAssetNamePrefix"]
      103 DUPCLOSURE                       R6 K29 [PROTO_1]
      104 CAPTURE                          VAL R5
      105 CAPTURE                          VAL R3
      106 SETTABLEKS                       R6 R4 K30 ["getInstanceNameWithoutClassification"]
      108 DUPCLOSURE                       R6 K31 [PROTO_2]
      109 CAPTURE                          VAL R4
      110 CAPTURE                          VAL R1
      111 SETTABLEKS                       R6 R4 K32 ["getNewInstanceNameWithPrefix"]
      113 DUPCLOSURE                       R6 K33 [PROTO_3]
      114 CAPTURE                          VAL R5
      115 CAPTURE                          VAL R3
      116 SETTABLEKS                       R6 R4 K34 ["getAssetClassificationFromName"]
      118 RETURN                           R4 1
