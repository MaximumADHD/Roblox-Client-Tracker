PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["TextureID"]
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["ColorMap"]
        4 RETURN                           R0 0

PROTO_2:
        0 LOADK                            R3 K0 ["MeshPart"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+9]
        5 GETTABLEKS                       R1 R0 K2 ["TextureID"]
        7 LOADK                            R2 K3 [""]
        8 SETTABLEKS                       R2 R0 K2 ["TextureID"]
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R1
       13 RETURN                           R2 1
       14 LOADK                            R3 K4 ["SurfaceAppearance"]
       15 NAMECALL                         R1 R0 K1 ["IsA"]
       17 CALL                             R1 2 1
       18 JUMPIFNOT                        R1 ; [+9]
       19 GETTABLEKS                       R1 R0 K5 ["ColorMap"]
       21 LOADK                            R2 K3 [""]
       22 SETTABLEKS                       R2 R0 K5 ["ColorMap"]
       24 NEWCLOSURE                       R2 P1
       25 CAPTURE                          VAL R0
       26 CAPTURE                          VAL R1
       27 RETURN                           R2 1
       28 LOADNIL                          R1
       29 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 SETTABLE                         R2 R1 R0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 SETTABLE                         R2 R1 R0
        3 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 LOADNIL                          R1
       10 LOADNIL                          R2
       11 FORGPREP                         R0
       12 MOVE                             R5 R4
       13 CALL                             R5 0 0
       14 FORGLOOP                         R0 2 ; [-3]
       16 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+3]
        3 LOADNIL                          R0
        4 RETURN                           R0 1
        5 GETUPVAL                         R2 0
        6 JUMPIFNOTEQKNIL                  R2 ; [+2]
        8 LOADB                            R1 0 +1
        9 LOADB                            R1 1
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R2 R3 K0 ["LUAU_ANALYZE_ERROR"]
       13 FASTCALL2                        ASSERT R1 R2 ; [+3]
       15 GETIMPORT                        R0 K2 [assert]
       17 CALL                             R0 2 0
       18 GETUPVAL                         R0 2
       19 JUMPIFNOT                        R0 ; [+2]
       20 LOADNIL                          R0
       21 RETURN                           R0 1
       22 NEWTABLE                         R0 0 0
       24 GETUPVAL                         R1 0
       25 NAMECALL                         R1 R1 K3 ["GetDescendants"]
       27 CALL                             R1 1 3
       28 FORGPREP                         R1
       29 GETUPVAL                         R6 3
       30 MOVE                             R7 R5
       31 CALL                             R6 1 1
       32 SETTABLE                         R6 R0 R5
       33 FORGLOOP                         R1 2 ; [-5]
       35 GETUPVAL                         R2 0
       36 GETTABLEKS                       R1 R2 K4 ["DescendantAdded"]
       38 NEWCLOSURE                       R3 P0
       39 CAPTURE                          VAL R0
       40 CAPTURE                          UPVAL U3
       41 NAMECALL                         R1 R1 K5 ["Connect"]
       43 CALL                             R1 2 1
       44 GETUPVAL                         R3 0
       45 GETTABLEKS                       R2 R3 K6 ["DescendantRemoving"]
       47 NEWCLOSURE                       R4 P1
       48 CAPTURE                          VAL R0
       49 NAMECALL                         R2 R2 K5 ["Connect"]
       51 CALL                             R2 2 1
       52 NEWCLOSURE                       R3 P2
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R0
       56 RETURN                           R3 1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["useEffect"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R1
        7 CAPTURE                          UPVAL U2
        8 NEWTABLE                         R4 0 2
       10 MOVE                             R5 R1
       11 MOVE                             R6 R0
       12 SETLIST                          R4 R5 2 [1]
       14 CALL                             R2 2 0
       15 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Util"]
       20 GETTABLEKS                       R3 R4 K10 ["Constants"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K11 [PROTO_2]
       24 DUPCLOSURE                       R4 K12 [PROTO_7]
       25 CAPTURE                          VAL R1
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R3
       28 RETURN                           R4 1
