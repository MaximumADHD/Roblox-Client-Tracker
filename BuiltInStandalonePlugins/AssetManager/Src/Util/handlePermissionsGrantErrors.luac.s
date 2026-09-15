PROTO_0:
        0 LENGTH                           R3 R1
        1 JUMPIFNOTEQKN                    R3 K0 [0] ; [+14]
        3 GETIMPORT                        R3 K2 [warn]
        5 LOADK                            R4 K3 ["Failed to insert assets. The asset owner must grant permissions to the asset(s)."]
        6 CALL                             R3 1 0
        7 MOVE                             R3 R2
        8 LOADNIL                          R4
        9 LOADNIL                          R5
       10 FORGPREP                         R3
       11 LOADNIL                          R8
       12 SETTABLE                         R8 R0 R7
       13 FORGLOOP                         R3 2 ; [-3]
       15 RETURN                           R0 0
       16 LOADK                            R3 K4 [""]
       17 MOVE                             R4 R1
       18 LOADNIL                          R5
       19 LOADNIL                          R6
       20 FORGPREP                         R4
       21 GETTABLEKS                       R9 R8 K5 ["code"]
       23 JUMPIFEQKS                       R9 K6 ["PublicAssetCannotBeGrantedTo"] ; [+24]
       25 GETTABLEKS                       R9 R8 K7 ["assetId"]
       27 LOADNIL                          R10
       28 SETTABLE                         R10 R0 R9
       29 MOVE                             R9 R3
       30 LOADK                            R10 K8 ["%*%*, "]
       31 GETTABLEKS                       R12 R8 K7 ["assetId"]
       33 GETUPVAL                         R14 0
       34 CALL                             R14 0 1
       35 JUMPIFNOT                        R14 ; [+7]
       36 LOADK                            R13 K9 [" - Code: %*"]
       37 GETTABLEKS                       R15 R8 K5 ["code"]
       39 NAMECALL                         R13 R13 K10 ["format"]
       41 CALL                             R13 2 1
       42 JUMP                             ; [+1]
       43 LOADNIL                          R13
       44 NAMECALL                         R10 R10 K10 ["format"]
       46 CALL                             R10 3 1
       47 CONCAT                           R3 R9 R10
       48 FORGLOOP                         R4 2 ; [-28]
       50 JUMPIFEQKS                       R3 K4 [""] ; [+9]
       52 GETIMPORT                        R4 K2 [warn]
       54 LOADK                            R5 K11 ["Failed to insert assets: %*"]
       55 MOVE                             R7 R3
       56 NAMECALL                         R5 R5 K10 ["format"]
       58 CALL                             R5 2 1
       59 CALL                             R4 1 0
       60 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Src"]
       18 GETTABLEKS                       R3 R3 K8 ["Flags"]
       20 GETTABLEKS                       R3 R3 K9 ["getFFlagDebugAmrOutput"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K10 [PROTO_0]
       24 CAPTURE                          VAL R2
       25 RETURN                           R3 1
