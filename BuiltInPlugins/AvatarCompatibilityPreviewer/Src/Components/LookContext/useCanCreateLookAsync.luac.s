PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["GetAsyncFullUrl"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONDecode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["baseCatalogUrl"]
        3 CALL                             R3 0 1
        4 MOVE                             R1 R3
        5 LOADK                            R2 K1 ["v1/catalog/metadata"]
        6 CONCAT                           R0 R1 R2
        7 GETIMPORT                        R1 K3 [pcall]
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          VAL R0
       12 CALL                             R1 1 2
       13 JUMPIFNOT                        R1 ; [+16]
       14 JUMPIFNOT                        R2 ; [+15]
       15 GETIMPORT                        R3 K3 [pcall]
       17 NEWCLOSURE                       R4 P1
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          VAL R2
       20 CALL                             R3 1 2
       21 JUMPIFNOT                        R3 ; [+8]
       22 JUMPIFNOT                        R4 ; [+7]
       23 GETTABLEKS                       R6 R4 K4 ["isCurrentUserAllowedToCreateShares"]
       25 JUMPIFEQKB                       R6 TRUE ; [+2]
       27 LOADB                            R5 0 +1
       28 LOADB                            R5 1
       29 RETURN                           R5 1
       30 LOADB                            R3 0
       31 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 0
        6 LOADB                            R1 1
        7 SETTABLEKS                       R1 R0 K0 ["current"]
        9 GETIMPORT                        R0 K3 [task.spawn]
       11 NEWCLOSURE                       R1 P0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U2
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 CALL                             R1 0 1
        5 JUMPIF                           R1 ; [+2]
        6 LOADB                            R1 0
        7 RETURN                           R1 1
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R1 R2 K0 ["useState"]
       11 LOADB                            R2 0
       12 CALL                             R1 1 2
       13 GETUPVAL                         R4 2
       14 GETTABLEKS                       R3 R4 K1 ["useRef"]
       16 LOADB                            R4 0
       17 CALL                             R3 1 1
       18 GETUPVAL                         R5 2
       19 GETTABLEKS                       R4 R5 K2 ["useEffect"]
       21 NEWCLOSURE                       R5 P0
       22 CAPTURE                          VAL R3
       23 CAPTURE                          VAL R0
       24 CAPTURE                          VAL R2
       25 NEWTABLE                         R6 0 0
       27 CALL                             R4 2 0
       28 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpRbxApiService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["HttpService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 LOADK                            R4 K7 ["AvatarCompatibilityPreviewer"]
       16 NAMECALL                         R2 R2 K8 ["FindFirstAncestor"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R5 R2 K11 ["Packages"]
       23 GETTABLEKS                       R4 R5 K12 ["React"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R7 R2 K13 ["Src"]
       30 GETTABLEKS                       R6 R7 K14 ["Util"]
       32 GETTABLEKS                       R5 R6 K15 ["Url"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K10 [require]
       37 GETTABLEKS                       R8 R2 K13 ["Src"]
       39 GETTABLEKS                       R7 R8 K16 ["Hooks"]
       41 GETTABLEKS                       R6 R7 K17 ["useAssertNeverChanges"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K10 [require]
       46 GETTABLEKS                       R9 R2 K13 ["Src"]
       48 GETTABLEKS                       R8 R9 K18 ["Flags"]
       50 GETTABLEKS                       R7 R8 K19 ["getFFlagAvatarPreviewerLookComposer"]
       52 CALL                             R6 1 1
       53 DUPCLOSURE                       R7 K20 [PROTO_2]
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R0
       56 CAPTURE                          VAL R1
       57 DUPCLOSURE                       R8 K21 [PROTO_5]
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R3
       61 DUPTABLE                         R9 K24 [{"useCanCreateLookAsync", "canCreateLookAsync"}]
       62 SETTABLEKS                       R8 R9 K22 ["useCanCreateLookAsync"]
       64 SETTABLEKS                       R7 R9 K23 ["canCreateLookAsync"]
       66 RETURN                           R9 1
