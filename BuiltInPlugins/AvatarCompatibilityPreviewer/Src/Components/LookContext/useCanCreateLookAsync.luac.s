PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["Body"]
        4 NAMECALL                         R0 R0 K1 ["JSONDecode"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+2]
        3 LOADB                            R0 1
        4 RETURN                           R0 1
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R0 R1 K0 ["getFeatureAccessUrl"]
        8 CALL                             R0 0 1
        9 DUPTABLE                         R1 K4 [{"Url", "Method", "Headers"}]
       10 SETTABLEKS                       R0 R1 K1 ["Url"]
       12 LOADK                            R2 K5 ["GET"]
       13 SETTABLEKS                       R2 R1 K2 ["Method"]
       15 NEWTABLE                         R2 1 0
       17 LOADK                            R3 K6 ["application/json"]
       18 SETTABLEKS                       R3 R2 K7 ["Content-Type"]
       20 SETTABLEKS                       R2 R1 K3 ["Headers"]
       22 GETUPVAL                         R3 2
       23 GETTABLEKS                       R2 R3 K8 ["requestInternal"]
       25 MOVE                             R3 R1
       26 CALL                             R2 1 1
       27 NAMECALL                         R3 R2 K9 ["await"]
       29 CALL                             R3 1 2
       30 GETIMPORT                        R5 K11 [pcall]
       32 NEWCLOSURE                       R6 P0
       33 CAPTURE                          UPVAL U3
       34 CAPTURE                          VAL R4
       35 CALL                             R5 1 2
       36 JUMPIFNOT                        R5 ; [+1]
       37 JUMPIF                           R3 ; [+2]
       38 LOADB                            R7 0
       39 RETURN                           R7 1
       40 GETTABLEKS                       R8 R6 K12 ["makeupLookStudioCreation"]
       42 JUMPIFEQKB                       R8 TRUE ; [+2]
       44 LOADB                            R7 0 +1
       45 LOADB                            R7 1
       46 RETURN                           R7 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_3:
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

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 2
        4 CALL                             R0 0 1
        5 JUMPIF                           R0 ; [+2]
        6 LOADB                            R0 0
        7 RETURN                           R0 1
        8 GETUPVAL                         R1 3
        9 GETTABLEKS                       R0 R1 K0 ["useState"]
       11 LOADB                            R1 0
       12 CALL                             R0 1 2
       13 GETUPVAL                         R3 3
       14 GETTABLEKS                       R2 R3 K1 ["useRef"]
       16 LOADB                            R3 0
       17 CALL                             R2 1 1
       18 GETUPVAL                         R4 3
       19 GETTABLEKS                       R3 R4 K2 ["useEffect"]
       21 NEWCLOSURE                       R4 P0
       22 CAPTURE                          VAL R2
       23 CAPTURE                          UPVAL U1
       24 CAPTURE                          VAL R1
       25 NEWTABLE                         R5 0 0
       27 CALL                             R3 2 0
       28 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AvatarCompatibilityPreviewer"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R4 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R4 K11 ["React"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R6 R1 K12 ["Src"]
       24 GETTABLEKS                       R5 R6 K13 ["Util"]
       26 GETTABLEKS                       R4 R5 K14 ["Url"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R7 R1 K12 ["Src"]
       33 GETTABLEKS                       R6 R7 K13 ["Util"]
       35 GETTABLEKS                       R5 R6 K15 ["LookComposerUtils"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K9 [require]
       40 GETTABLEKS                       R8 R1 K12 ["Src"]
       42 GETTABLEKS                       R7 R8 K16 ["Hooks"]
       44 GETTABLEKS                       R6 R7 K17 ["useAssertNeverChanges"]
       46 CALL                             R5 1 1
       47 GETIMPORT                        R6 K9 [require]
       49 GETTABLEKS                       R9 R1 K12 ["Src"]
       51 GETTABLEKS                       R8 R9 K18 ["Flags"]
       53 GETTABLEKS                       R7 R8 K19 ["getFFlagAvatarPreviewerLookComposer"]
       55 CALL                             R6 1 1
       56 GETIMPORT                        R7 K9 [require]
       58 GETTABLEKS                       R10 R1 K12 ["Src"]
       60 GETTABLEKS                       R9 R10 K18 ["Flags"]
       62 GETTABLEKS                       R8 R9 K20 ["getFFlagDebugAvatarPreviewerLookApiNeverFails"]
       64 CALL                             R7 1 1
       65 DUPCLOSURE                       R8 K21 [PROTO_1]
       66 CAPTURE                          VAL R7
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R4
       69 CAPTURE                          VAL R0
       70 DUPCLOSURE                       R9 K22 [PROTO_4]
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R8
       73 CAPTURE                          VAL R6
       74 CAPTURE                          VAL R2
       75 RETURN                           R9 1
