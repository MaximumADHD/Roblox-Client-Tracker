PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R4 R3 K1 ["Stylizer"]
        4 GETIMPORT                        R5 K5 [Enum.AssetFetchStatus.Success]
        6 JUMPIFNOTEQ                      R2 R5 ; [+2]
        8 RETURN                           R1 1
        9 GETIMPORT                        R5 K7 [Enum.AssetFetchStatus.Failure]
       11 JUMPIFNOTEQ                      R2 R5 ; [+6]
       13 GETTABLEKS                       R5 R4 K8 ["badgeIconThumbnail"]
       15 GETTABLEKS                       R5 R5 K9 ["loadFailureImage"]
       17 RETURN                           R5 1
       18 GETTABLEKS                       R5 R4 K8 ["badgeIconThumbnail"]
       20 GETTABLEKS                       R5 R5 K10 ["loadingImage"]
       22 RETURN                           R5 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["getThumbnail"]
        5 CALL                             R2 3 1
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K1 ["createElement"]
        9 LOADK                            R4 K2 ["ImageLabel"]
       10 DUPTABLE                         R5 K6 [{"Size", "BackgroundTransparency", "Image"}]
       11 GETIMPORT                        R6 K9 [UDim2.fromScale]
       13 LOADN                            R7 1
       14 LOADN                            R8 1
       15 CALL                             R6 2 1
       16 SETTABLEKS                       R6 R5 K3 ["Size"]
       18 LOADN                            R6 1
       19 SETTABLEKS                       R6 R5 K4 ["BackgroundTransparency"]
       21 SETTABLEKS                       R2 R5 K5 ["Image"]
       23 CALL                             R3 2 -1
       24 RETURN                           R3 -1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Id"]
        4 FASTCALL1                        TYPE R2 ; [+3]
        5 MOVE                             R6 R2
        6 GETIMPORT                        R5 K3 [type]
        8 CALL                             R5 1 1
        9 JUMPIFEQKS                       R5 K4 ["number"] ; [+2]
       11 LOADB                            R4 0 +1
       12 LOADB                            R4 1
       13 FASTCALL1                        ASSERT R4 ; [+2]
       14 GETIMPORT                        R3 K6 [assert]
       16 CALL                             R3 1 0
       17 GETTABLEKS                       R4 R1 K7 ["Size"]
       19 JUMPIFNOT                        R4 ; [+3]
       20 GETTABLEKS                       R3 R1 K7 ["Size"]
       22 JUMPIF                           R3 ; [+5]
       23 GETIMPORT                        R3 K10 [UDim2.fromScale]
       25 LOADN                            R4 1
       26 LOADN                            R5 1
       27 CALL                             R3 2 1
       28 GETTABLEKS                       R4 R1 K11 ["Position"]
       30 GETTABLEKS                       R5 R1 K12 ["AnchorPoint"]
       32 GETTABLEKS                       R6 R1 K13 ["LayoutOrder"]
       34 GETTABLEKS                       R7 R1 K14 ["ZIndex"]
       36 GETUPVAL                         R8 0
       37 GETTABLEKS                       R8 R8 K15 ["createElement"]
       39 LOADK                            R9 K16 ["Frame"]
       40 DUPTABLE                         R10 K18 [{"BackgroundTransparency", "Size", "Position", "AnchorPoint", "LayoutOrder", "ZIndex"}]
       41 LOADN                            R11 1
       42 SETTABLEKS                       R11 R10 K17 ["BackgroundTransparency"]
       44 SETTABLEKS                       R3 R10 K7 ["Size"]
       46 SETTABLEKS                       R4 R10 K11 ["Position"]
       48 SETTABLEKS                       R5 R10 K12 ["AnchorPoint"]
       50 SETTABLEKS                       R6 R10 K13 ["LayoutOrder"]
       52 SETTABLEKS                       R7 R10 K14 ["ZIndex"]
       54 DUPTABLE                         R11 K20 [{"AutoThumbnail"}]
       55 GETUPVAL                         R12 0
       56 GETTABLEKS                       R12 R12 K15 ["createElement"]
       58 GETUPVAL                         R13 1
       59 DUPTABLE                         R14 K24 [{"Id", "ThumbnailType", "UseAssetThumbnailUrl", "RenderContents"}]
       60 SETTABLEKS                       R2 R14 K1 ["Id"]
       62 LOADK                            R15 K25 ["BadgeIcon"]
       63 SETTABLEKS                       R15 R14 K21 ["ThumbnailType"]
       65 LOADB                            R15 1
       66 SETTABLEKS                       R15 R14 K22 ["UseAssetThumbnailUrl"]
       68 NEWCLOSURE                       R15 P0
       69 CAPTURE                          VAL R0
       70 CAPTURE                          UPVAL U0
       71 SETTABLEKS                       R15 R14 K23 ["RenderContents"]
       73 CALL                             R12 2 1
       74 SETTABLEKS                       R12 R11 K19 ["AutoThumbnail"]
       76 CALL                             R8 3 -1
       77 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R3 K7 ["Framework"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       27 GETTABLEKS                       R4 R3 K9 ["withContext"]
       29 GETIMPORT                        R5 K4 [require]
       31 GETTABLEKS                       R6 R0 K10 ["Src"]
       33 GETTABLEKS                       R6 R6 K11 ["Components"]
       35 GETTABLEKS                       R6 R6 K12 ["AutoThumbnails"]
       37 GETTABLEKS                       R6 R6 K13 ["AutoThumbnail"]
       39 CALL                             R5 1 1
       40 GETTABLEKS                       R6 R1 K14 ["Component"]
       42 GETIMPORT                        R8 K1 [script]
       44 GETTABLEKS                       R8 R8 K15 ["Name"]
       46 NAMECALL                         R6 R6 K16 ["extend"]
       48 CALL                             R6 2 1
       49 DUPCLOSURE                       R7 K17 [PROTO_0]
       50 SETTABLEKS                       R7 R6 K18 ["getThumbnail"]
       52 DUPCLOSURE                       R7 K19 [PROTO_2]
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R5
       55 SETTABLEKS                       R7 R6 K20 ["render"]
       57 MOVE                             R7 R4
       58 DUPTABLE                         R8 K22 [{"Stylizer"}]
       59 GETTABLEKS                       R9 R3 K21 ["Stylizer"]
       61 SETTABLEKS                       R9 R8 K21 ["Stylizer"]
       63 CALL                             R7 1 1
       64 MOVE                             R8 R6
       65 CALL                             R7 1 1
       66 MOVE                             R6 R7
       67 RETURN                           R6 1
