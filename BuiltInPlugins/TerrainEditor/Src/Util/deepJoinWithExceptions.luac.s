PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 GETIMPORT                        R3 K1 [pairs]
        4 MOVE                             R4 R0
        5 CALL                             R3 1 3
        6 FORGPREP_NEXT                    R3
        7 FASTCALL1                        TYPEOF R7 ; [+3]
        8 MOVE                             R9 R7
        9 GETIMPORT                        R8 K3 [typeof]
       11 CALL                             R8 1 1
       12 JUMPIFNOTEQKS                    R8 K4 ["table"] ; [+42]
       14 GETTABLE                         R8 R1 R6
       15 JUMPIFNOT                        R8 ; [+23]
       16 GETTABLE                         R9 R1 R6
       17 FASTCALL1                        TYPEOF R9 ; [+2]
       18 GETIMPORT                        R8 K3 [typeof]
       20 CALL                             R8 1 1
       21 JUMPIFNOTEQKS                    R8 K4 ["table"] ; [+17]
       23 GETUPVAL                         R9 0
       24 GETTABLE                         R8 R9 R6
       25 JUMPIFNOT                        R8 ; [+7]
       26 GETUPVAL                         R8 1
       27 GETTABLE                         R9 R1 R6
       28 NEWTABLE                         R10 0 0
       30 CALL                             R8 2 1
       31 SETTABLE                         R8 R2 R6
       32 JUMP                             ; [+23]
       33 GETUPVAL                         R8 1
       34 MOVE                             R9 R7
       35 GETTABLE                         R10 R1 R6
       36 CALL                             R8 2 1
       37 SETTABLE                         R8 R2 R6
       38 JUMP                             ; [+17]
       39 GETUPVAL                         R9 2
       40 GETTABLE                         R8 R9 R6
       41 JUMPIFNOT                        R8 ; [+6]
       42 GETIMPORT                        R8 K6 [table.clone]
       44 MOVE                             R9 R7
       45 CALL                             R8 1 1
       46 SETTABLE                         R8 R2 R6
       47 JUMP                             ; [+8]
       48 GETUPVAL                         R8 1
       49 MOVE                             R9 R7
       50 NEWTABLE                         R10 0 0
       52 CALL                             R8 2 1
       53 SETTABLE                         R8 R2 R6
       54 JUMP                             ; [+1]
       55 SETTABLE                         R7 R2 R6
       56 FORGLOOP                         R3 2 ; [-50]
       58 GETIMPORT                        R3 K1 [pairs]
       60 MOVE                             R4 R1
       61 CALL                             R3 1 3
       62 FORGPREP_NEXT                    R3
       63 FASTCALL1                        TYPEOF R7 ; [+3]
       64 MOVE                             R9 R7
       65 GETIMPORT                        R8 K3 [typeof]
       67 CALL                             R8 1 1
       68 JUMPIFNOTEQKS                    R8 K4 ["table"] ; [+10]
       70 GETTABLE                         R8 R0 R6
       71 JUMPIF                           R8 ; [+8]
       72 GETUPVAL                         R8 1
       73 MOVE                             R9 R7
       74 NEWTABLE                         R10 0 0
       76 CALL                             R8 2 1
       77 SETTABLE                         R8 R2 R6
       78 JUMP                             ; [+1]
       79 SETTABLE                         R7 R2 R6
       80 FORGLOOP                         R3 2 ; [-18]
       82 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["BuildSettings"]
       16 GETTABLEKS                       R3 R1 K9 ["HeightmapSettings"]
       18 NEWTABLE                         R4 4 0
       20 GETTABLEKS                       R5 R2 K10 ["Material"]
       22 LOADB                            R6 1
       23 SETTABLE                         R6 R4 R5
       24 GETTABLEKS                       R5 R3 K11 ["Heightmap"]
       26 LOADB                            R6 1
       27 SETTABLE                         R6 R4 R5
       28 GETTABLEKS                       R5 R3 K12 ["Colormap"]
       30 LOADB                            R6 1
       31 SETTABLE                         R6 R4 R5
       32 NEWTABLE                         R5 1 0
       34 GETTABLEKS                       R6 R2 K13 ["MaterialLUT"]
       36 LOADB                            R7 1
       37 SETTABLE                         R7 R5 R6
       38 DUPCLOSURE                       R6 K14 [PROTO_0]
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R6
       41 CAPTURE                          VAL R5
       42 RETURN                           R6 1
