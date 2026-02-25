PROTO_0:
        0 GETIMPORT                        R3 K2 [string.lower]
        2 GETTABLEKS                       R4 R0 K3 ["Name"]
        4 CALL                             R3 1 1
        5 GETIMPORT                        R4 K5 [string.find]
        7 MOVE                             R5 R3
        8 LOADK                            R6 K6 ["_att"]
        9 CALL                             R4 2 1
       10 JUMPIFNOT                        R4 ; [+2]
       11 LOADNIL                          R4
       12 RETURN                           R4 1
       13 MOVE                             R4 R1
       14 LOADNIL                          R5
       15 LOADNIL                          R6
       16 FORGPREP                         R4
       17 GETIMPORT                        R10 K9 [Enum.AssetType]
       19 GETTABLEKS                       R11 R8 K10 ["Id"]
       21 GETTABLE                         R9 R10 R11
       22 GETTABLE                         R10 R2 R9
       23 JUMPIFEQKNIL                     R10 ; [+33]
       25 GETIMPORT                        R11 K2 [string.lower]
       27 GETUPVAL                         R13 0
       28 GETTABLEKS                       R12 R13 K11 ["removePostfix"]
       30 GETTABLEKS                       R13 R8 K10 ["Id"]
       32 LOADK                            R14 K12 ["Accessory"]
       33 CALL                             R12 2 -1
       34 CALL                             R11 -1 1
       35 GETIMPORT                        R12 K5 [string.find]
       37 MOVE                             R13 R3
       38 MOVE                             R14 R11
       39 CALL                             R12 2 1
       40 JUMPIFNOT                        R12 ; [+16]
       41 MOVE                             R12 R10
       42 LOADNIL                          R13
       43 LOADNIL                          R14
       44 FORGPREP                         R12
       45 DUPTABLE                         R17 K16 [{"assetType", "meshPart", "attachmentName"}]
       46 SETTABLEKS                       R9 R17 K13 ["assetType"]
       48 SETTABLEKS                       R0 R17 K14 ["meshPart"]
       50 GETTABLEKS                       R18 R16 K15 ["attachmentName"]
       52 SETTABLEKS                       R18 R17 K15 ["attachmentName"]
       54 RETURN                           R17 1
       55 FORGLOOP                         R12 2 ; [-11]
       57 FORGLOOP                         R4 2 ; [-41]
       59 LOADNIL                          R4
       60 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R6 R0 K6 ["Src"]
       18 GETTABLEKS                       R5 R6 K8 ["Components"]
       20 GETTABLEKS                       R4 R5 K9 ["DisambiguationMenu"]
       22 GETTABLEKS                       R3 R4 K10 ["getChoosableAssetTypes"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R6 R0 K6 ["Src"]
       29 GETTABLEKS                       R5 R6 K11 ["Util"]
       31 GETTABLEKS                       R4 R5 K12 ["StringUtil"]
       33 CALL                             R3 1 1
       34 DUPCLOSURE                       R4 K13 [PROTO_0]
       35 CAPTURE                          VAL R3
       36 RETURN                           R4 1
