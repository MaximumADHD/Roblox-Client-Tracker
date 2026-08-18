PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 NAMECALL                         R2 R0 K0 ["GetDescendants"]
        4 CALL                             R2 1 3
        5 FORGPREP                         R2
        6 LOADK                            R9 K1 ["SurfaceAppearance"]
        7 NAMECALL                         R7 R6 K2 ["IsA"]
        9 CALL                             R7 2 1
       10 JUMPIFNOT                        R7 ; [+13]
       11 GETTABLEKS                       R7 R6 K3 ["EmissiveMaskContent"]
       13 GETTABLEKS                       R8 R7 K4 ["SourceType"]
       15 GETIMPORT                        R9 K8 [Enum.ContentSourceType.Uri]
       17 JUMPIFNOTEQ                      R8 R9 ; [+6]
       19 GETUPVAL                         R8 0
       20 GETTABLEKS                       R8 R8 K9 ["Emissive"]
       22 LOADB                            R9 1
       23 SETTABLE                         R9 R1 R8
       24 FORGLOOP                         R2 2 ; [-19]
       26 NEWTABLE                         R2 0 0
       28 MOVE                             R3 R1
       29 LOADNIL                          R4
       30 LOADNIL                          R5
       31 FORGPREP                         R3
       32 FASTCALL2                        TABLE_INSERT R2 R6 ; [+5]
       34 MOVE                             R9 R2
       35 MOVE                             R10 R6
       36 GETIMPORT                        R8 K12 [table.insert]
       38 CALL                             R8 2 0
       39 FORGLOOP                         R3 1 ; [-8]
       41 GETIMPORT                        R3 K14 [table.sort]
       43 MOVE                             R4 R2
       44 CALL                             R3 1 0
       45 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["MetadataType"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K9 [PROTO_0]
       17 CAPTURE                          VAL R1
       18 RETURN                           R2 1
