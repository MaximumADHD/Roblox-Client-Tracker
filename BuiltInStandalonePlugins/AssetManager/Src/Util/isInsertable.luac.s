PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 NOT                              R1 R2
        3 RETURN                           R1 1

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
       14 GETTABLEKS                       R2 R1 K8 ["AssetType"]
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R0 K6 ["Src"]
       20 GETTABLEKS                       R4 R4 K9 ["Flags"]
       22 GETTABLEKS                       R4 R4 K10 ["getFFlagAmrEnableAnimatedImage"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R0 K6 ["Src"]
       29 GETTABLEKS                       R5 R5 K9 ["Flags"]
       31 GETTABLEKS                       R5 R5 K11 ["getFFlagAmrEnableTextDocuments"]
       33 CALL                             R4 1 1
       34 NEWTABLE                         R5 8 0
       36 GETTABLEKS                       R6 R2 K12 ["Plugin"]
       38 LOADB                            R7 1
       39 SETTABLE                         R7 R5 R6
       40 GETTABLEKS                       R6 R2 K13 ["FontFamily"]
       42 LOADB                            R7 1
       43 SETTABLE                         R7 R5 R6
       44 GETTABLEKS                       R6 R2 K14 ["Place"]
       46 LOADB                            R7 1
       47 SETTABLE                         R7 R5 R6
       48 GETTABLEKS                       R6 R2 K15 ["Folder"]
       50 LOADB                            R7 1
       51 SETTABLE                         R7 R5 R6
       52 GETTABLEKS                       R6 R2 K16 ["TextDocument"]
       54 MOVE                             R8 R4
       55 CALL                             R8 0 1
       56 NOT                              R7 R8
       57 SETTABLE                         R7 R5 R6
       58 GETTABLEKS                       R6 R2 K17 ["AnimatedImage"]
       60 MOVE                             R8 R3
       61 CALL                             R8 0 1
       62 NOT                              R7 R8
       63 SETTABLE                         R7 R5 R6
       64 DUPCLOSURE                       R6 K18 [PROTO_0]
       65 CAPTURE                          VAL R5
       66 RETURN                           R6 1
