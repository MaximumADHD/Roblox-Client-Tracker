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
       23 JUMPIFEQKS                       R9 K6 ["PublicAssetCannotBeGrantedTo"] ; [+26]
       25 GETTABLEKS                       R9 R8 K7 ["assetId"]
       27 LOADNIL                          R10
       28 SETTABLE                         R10 R0 R9
       29 MOVE                             R9 R3
       30 LOADK                            R11 K8 ["%*%*, "]
       31 GETTABLEKS                       R13 R8 K7 ["assetId"]
       33 GETUPVAL                         R15 0
       34 CALL                             R15 0 1
       35 JUMPIFNOT                        R15 ; [+8]
       36 LOADK                            R15 K9 [" - Code: %*"]
       37 GETTABLEKS                       R17 R8 K5 ["code"]
       39 NAMECALL                         R15 R15 K10 ["format"]
       41 CALL                             R15 2 1
       42 MOVE                             R14 R15
       43 JUMP                             ; [+1]
       44 LOADNIL                          R14
       45 NAMECALL                         R11 R11 K10 ["format"]
       47 CALL                             R11 3 1
       48 MOVE                             R10 R11
       49 CONCAT                           R3 R9 R10
       50 FORGLOOP                         R4 2 ; [-30]
       52 JUMPIFEQKS                       R3 K4 [""] ; [+10]
       54 GETIMPORT                        R4 K2 [warn]
       56 LOADK                            R6 K11 ["Failed to insert assets: %*"]
       57 MOVE                             R8 R3
       58 NAMECALL                         R6 R6 K10 ["format"]
       60 CALL                             R6 2 1
       61 MOVE                             R5 R6
       62 CALL                             R4 1 0
       63 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K6 ["Src"]
       18 GETTABLEKS                       R4 R5 K8 ["Flags"]
       20 GETTABLEKS                       R3 R4 K9 ["getFFlagDebugAmrOutput"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K10 [PROTO_0]
       24 CAPTURE                          VAL R2
       25 RETURN                           R3 1
