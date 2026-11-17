PROTO_0:
        0 LENGTH                           R1 R0
        1 JUMPIFNOTEQKN                    R1 K0 [0] ; [+7]
        3 DUPTABLE                         R1 K4 [{["kind"] = "none", ["items"]}]
        4 NEWTABLE                         R2 0 0
        6 SETTABLEKS                       R2 R1 K3 ["items"]
        8 RETURN                           R1 1
        9 LENGTH                           R1 R0
       10 JUMPIFNOTEQKN                    R1 K5 [1] ; [+36]
       12 GETTABLEN                        R1 R0 1
       13 LOADK                            R4 K6 ["MeshPart"]
       14 NAMECALL                         R2 R1 K7 ["IsA"]
       16 CALL                             R2 2 1
       17 JUMPIF                           R2 ; [+11]
       18 LOADK                            R4 K8 ["Model"]
       19 NAMECALL                         R2 R1 K7 ["IsA"]
       21 CALL                             R2 2 1
       22 JUMPIFNOT                        R2 ; [+15]
       23 LOADK                            R4 K6 ["MeshPart"]
       24 LOADB                            R5 1
       25 NAMECALL                         R2 R1 K9 ["FindFirstChildWhichIsA"]
       27 CALL                             R2 3 1
       28 JUMPIFNOT                        R2 ; [+9]
       29 DUPTABLE                         R2 K11 [{["kind"] = "single", ["items"]}]
       30 NEWTABLE                         R3 0 1
       32 MOVE                             R4 R1
       33 SETLIST                          R3 R4 1 [1]
       35 SETTABLEKS                       R3 R2 K3 ["items"]
       37 RETURN                           R2 1
       38 DUPTABLE                         R2 K13 [{["kind"] = "invalid", ["items"]}]
       39 NEWTABLE                         R3 0 1
       41 MOVE                             R4 R1
       42 SETLIST                          R3 R4 1 [1]
       44 SETTABLEKS                       R3 R2 K3 ["items"]
       46 RETURN                           R2 1
       47 GETUPVAL                         R1 0
       48 GETTABLEKS                       R1 R1 K14 ["getFFlagTextureGenStudioMultiSelect"]
       50 CALL                             R1 0 1
       51 JUMPIF                           R1 ; [+4]
       52 DUPTABLE                         R1 K13 [{["kind"] = "invalid", ["items"]}]
       53 SETTABLEKS                       R0 R1 K3 ["items"]
       55 RETURN                           R1 1
       56 MOVE                             R1 R0
       57 LOADNIL                          R2
       58 LOADNIL                          R3
       59 FORGPREP                         R1
       60 GETUPVAL                         R6 1
       61 GETTABLEKS                       R6 R6 K15 ["isTextureableInstance"]
       63 MOVE                             R7 R5
       64 CALL                             R6 1 1
       65 JUMPIF                           R6 ; [+4]
       66 DUPTABLE                         R6 K13 [{["kind"] = "invalid", ["items"]}]
       67 SETTABLEKS                       R0 R6 K3 ["items"]
       69 RETURN                           R6 1
       70 FORGLOOP                         R1 2 ; [-11]
       72 DUPTABLE                         R1 K17 [{["kind"] = "multi", ["items"]}]
       73 SETTABLEKS                       R0 R1 K3 ["items"]
       75 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Gen3d"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Gen3dCore"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Selection"]
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Src"]
       20 GETTABLEKS                       R4 R4 K10 ["Types"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R0 K11 ["Bin"]
       27 GETTABLEKS                       R5 R5 K12 ["Common"]
       29 GETTABLEKS                       R5 R5 K13 ["defineLuaFlags"]
       31 CALL                             R4 1 1
       32 DUPCLOSURE                       R5 K14 [PROTO_0]
       33 CAPTURE                          VAL R4
       34 CAPTURE                          VAL R2
       35 RETURN                           R5 1
