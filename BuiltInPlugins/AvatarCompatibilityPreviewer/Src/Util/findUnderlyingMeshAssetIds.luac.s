PROTO_0:
        0 JUMPIFEQKNIL                     R1 ; [+3]
        2 LOADB                            R2 1
        3 SETTABLE                         R2 R0 R1
        4 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 NAMECALL                         R2 R0 K0 ["GetDescendants"]
        4 CALL                             R2 1 1
        5 FASTCALL2                        TABLE_INSERT R2 R0 ; [+5]
        7 MOVE                             R4 R2
        8 MOVE                             R5 R0
        9 GETIMPORT                        R3 K3 [table.insert]
       11 CALL                             R3 2 0
       12 MOVE                             R3 R2
       13 LOADNIL                          R4
       14 LOADNIL                          R5
       15 FORGPREP                         R3
       16 LOADK                            R10 K4 ["MeshPart"]
       17 NAMECALL                         R8 R7 K5 ["IsA"]
       19 CALL                             R8 2 1
       20 JUMPIFNOT                        R8 ; [+9]
       21 GETUPVAL                         R8 0
       22 GETTABLEKS                       R9 R7 K6 ["MeshId"]
       24 CALL                             R8 1 1
       25 JUMPIFEQKNIL                     R8 ; [+17]
       27 LOADB                            R9 1
       28 SETTABLE                         R9 R1 R8
       29 JUMP                             ; [+13]
       30 LOADK                            R10 K7 ["WrapTarget"]
       31 NAMECALL                         R8 R7 K5 ["IsA"]
       33 CALL                             R8 2 1
       34 JUMPIFNOT                        R8 ; [+8]
       35 GETUPVAL                         R8 0
       36 GETTABLEKS                       R9 R7 K8 ["CageMeshId"]
       38 CALL                             R8 1 1
       39 JUMPIFEQKNIL                     R8 ; [+3]
       41 LOADB                            R9 1
       42 SETTABLE                         R9 R1 R8
       43 FORGLOOP                         R3 2 ; [-28]
       45 NEWTABLE                         R3 0 0
       47 MOVE                             R4 R1
       48 LOADNIL                          R5
       49 LOADNIL                          R6
       50 FORGPREP                         R4
       51 FASTCALL2                        TABLE_INSERT R3 R7 ; [+5]
       53 MOVE                             R10 R3
       54 MOVE                             R11 R7
       55 GETIMPORT                        R9 K3 [table.insert]
       57 CALL                             R9 2 0
       58 FORGLOOP                         R4 1 ; [-8]
       60 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["assetUriToId"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K9 [PROTO_0]
       17 DUPCLOSURE                       R3 K10 [PROTO_1]
       18 CAPTURE                          VAL R1
       19 RETURN                           R3 1
