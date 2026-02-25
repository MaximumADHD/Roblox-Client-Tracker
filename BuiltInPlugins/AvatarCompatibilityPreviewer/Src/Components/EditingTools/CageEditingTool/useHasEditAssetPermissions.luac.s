PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K0 ["WorldModel"]
        5 NAMECALL                         R1 R1 K1 ["GetDescendants"]
        7 CALL                             R1 1 3
        8 FORGPREP                         R1
        9 LOADK                            R8 K2 ["WrapTarget"]
       10 NAMECALL                         R6 R5 K3 ["IsA"]
       12 CALL                             R6 2 1
       13 JUMPIFNOT                        R6 ; [+4]
       14 GETTABLEKS                       R6 R5 K4 ["CageMeshContent"]
       16 LOADB                            R7 1
       17 SETTABLE                         R7 R0 R6
       18 FORGLOOP                         R1 2 ; [-10]
       20 NEWTABLE                         R1 0 0
       22 MOVE                             R2 R0
       23 LOADNIL                          R3
       24 LOADNIL                          R4
       25 FORGPREP                         R2
       26 FASTCALL2                        TABLE_INSERT R1 R5 ; [+5]
       28 MOVE                             R8 R1
       29 MOVE                             R9 R5
       30 GETIMPORT                        R7 K7 [table.insert]
       32 CALL                             R7 2 0
       33 FORGLOOP                         R2 2 ; [-8]
       35 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 NEWTABLE                         R3 0 2
        7 GETTABLEKS                       R4 R0 K1 ["WorldModel"]
        9 GETTABLEKS                       R5 R0 K2 ["LatestWorldModelHash"]
       11 SETLIST                          R3 R4 2 [1]
       13 CALL                             R1 2 1
       14 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["canEditAssetAsync"]
        3 GETIMPORT                        R1 K3 [Content.fromUri]
        5 GETUPVAL                         R2 1
        6 CALL                             R1 1 -1
        7 CALL                             R0 -1 -1
        8 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["current"]
        3 GETTABLE                         R1 R2 R0
        4 JUMPIFNOT                        R1 ; [+5]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K0 ["current"]
        8 GETTABLE                         R1 R2 R0
        9 RETURN                           R1 1
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R1 R2 K1 ["try"]
       13 NEWCLOSURE                       R2 P0
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          VAL R0
       16 CALL                             R1 1 1
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R2 R3 K0 ["current"]
       20 SETTABLE                         R1 R2 R0
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R3 R4 K0 ["current"]
       24 GETTABLE                         R2 R3 R0
       25 RETURN                           R2 1

PROTO_4:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 JUMPIF                           R5 ; [+2]
        5 LOADB                            R6 0
        6 RETURN                           R6 1
        7 FORGLOOP                         R1 2 ; [-4]
        9 LOADB                            R1 1
       10 RETURN                           R1 1

PROTO_5:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 GETTABLEKS                       R6 R5 K0 ["Uri"]
        8 JUMPIFNOT                        R6 ; [+10]
        9 GETUPVAL                         R7 1
       10 MOVE                             R8 R6
       11 CALL                             R7 1 1
       12 FASTCALL2                        TABLE_INSERT R0 R7 ; [+5]
       14 MOVE                             R9 R0
       15 MOVE                             R10 R7
       16 GETIMPORT                        R8 K3 [table.insert]
       18 CALL                             R8 2 0
       19 FORGLOOP                         R1 2 ; [-14]
       21 GETUPVAL                         R2 2
       22 GETTABLEKS                       R1 R2 K4 ["all"]
       24 MOVE                             R2 R0
       25 CALL                             R1 1 1
       26 DUPCLOSURE                       R3 K5 [PROTO_4]
       27 NAMECALL                         R1 R1 K6 ["andThen"]
       29 CALL                             R1 2 1
       30 NAMECALL                         R1 R1 K7 ["awaitStatus"]
       32 CALL                             R1 1 2
       33 JUMPIF                           R1 ; [+7]
       34 GETIMPORT                        R3 K9 [warn]
       36 LOADK                            R4 K10 ["Failed to query user edit permissions"]
       37 MOVE                             R5 R2
       38 CALL                             R3 2 0
       39 LOADB                            R3 0
       40 RETURN                           R3 1
       41 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K1 ["useRef"]
        8 NEWTABLE                         R3 0 0
       10 CALL                             R2 1 1
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R4 R0 K2 ["avatar"]
       14 CALL                             R3 1 1
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R4 R5 K3 ["useCallback"]
       18 NEWCLOSURE                       R5 P0
       19 CAPTURE                          VAL R2
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          VAL R1
       22 NEWTABLE                         R6 0 0
       24 CALL                             R4 2 1
       25 GETUPVAL                         R6 0
       26 GETTABLEKS                       R5 R6 K3 ["useCallback"]
       28 NEWCLOSURE                       R6 P1
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R4
       31 CAPTURE                          UPVAL U3
       32 NEWTABLE                         R7 0 1
       34 MOVE                             R8 R3
       35 SETLIST                          R7 R8 1 [1]
       37 CALL                             R5 2 1
       38 GETUPVAL                         R6 4
       39 MOVE                             R7 R5
       40 NEWTABLE                         R8 0 1
       42 MOVE                             R9 R5
       43 SETLIST                          R8 R9 1 [1]
       45 CALL                             R6 2 -1
       46 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Components"]
       13 GETTABLEKS                       R2 R3 K8 ["AssetServiceContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R4 K10 ["Promise"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K9 ["Packages"]
       27 GETTABLEKS                       R4 R5 K11 ["React"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K6 ["Src"]
       34 GETTABLEKS                       R5 R6 K12 ["Types"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R8 R0 K6 ["Src"]
       41 GETTABLEKS                       R7 R8 K13 ["Hooks"]
       43 GETTABLEKS                       R6 R7 K14 ["useAsync"]
       45 CALL                             R5 1 1
       46 DUPCLOSURE                       R6 K15 [PROTO_1]
       47 CAPTURE                          VAL R3
       48 DUPCLOSURE                       R7 K16 [PROTO_6]
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R6
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R5
       54 RETURN                           R7 1
