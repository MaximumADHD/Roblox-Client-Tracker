PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["editableMesh"]
        2 GETTABLEKS                       R2 R0 K1 ["adornee"]
        4 GETTABLEKS                       R4 R0 K3 ["scale"]
        6 ORK                              R3 R4 K2 [{1, 1, 1}]
        7 GETTABLEKS                       R4 R0 K4 ["indices"]
        9 JUMPIFNOT                        R4 ; [+3]
       10 GETTABLEKS                       R4 R0 K5 ["vertexIds"]
       12 JUMPIF                           R4 ; [+1]
       13 RETURN                           R0 0
       14 GETTABLEKS                       R4 R0 K4 ["indices"]
       16 LOADNIL                          R5
       17 LOADNIL                          R6
       18 FORGPREP                         R4
       19 GETTABLEKS                       R10 R0 K5 ["vertexIds"]
       21 ADDK                             R11 R8 K6 [1]
       22 GETTABLE                         R9 R10 R11
       23 JUMPIFNOT                        R9 ; [+46]
       24 GETIMPORT                        R10 K8 [pcall]
       26 GETTABLEKS                       R11 R1 K9 ["GetPosition"]
       28 MOVE                             R12 R1
       29 MOVE                             R13 R9
       30 CALL                             R10 3 2
       31 JUMPIFNOT                        R10 ; [+38]
       32 JUMPIFNOT                        R11 ; [+37]
       33 MUL                              R12 R11 R3
       34 GETIMPORT                        R13 K12 [Instance.new]
       36 LOADK                            R14 K13 ["SphereHandleAdornment"]
       37 CALL                             R13 1 1
       38 SETTABLEKS                       R2 R13 K14 ["Adornee"]
       40 GETIMPORT                        R14 K16 [CFrame.new]
       42 MOVE                             R15 R12
       43 CALL                             R14 1 1
       44 SETTABLEKS                       R14 R13 K15 ["CFrame"]
       46 GETUPVAL                         R14 0
       47 GETTABLEKS                       R14 R14 K17 ["SPHERE_RADIUS_SMALL"]
       49 SETTABLEKS                       R14 R13 K18 ["Radius"]
       51 GETIMPORT                        R14 K21 [Color3.fromRGB]
       53 LOADN                            R15 255
       54 LOADN                            R16 64
       55 LOADN                            R17 64
       56 CALL                             R14 3 1
       57 SETTABLEKS                       R14 R13 K19 ["Color3"]
       59 LOADB                            R14 1
       60 SETTABLEKS                       R14 R13 K22 ["AlwaysOnTop"]
       62 LOADN                            R14 2
       63 SETTABLEKS                       R14 R13 K23 ["ZIndex"]
       65 LOADB                            R14 0
       66 SETTABLEKS                       R14 R13 K24 ["Archivable"]
       68 SETTABLEKS                       R2 R13 K25 ["Parent"]
       70 FORGLOOP                         R4 2 ; [-52]
       72 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Visualization"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Constants"]
       11 CALL                             R1 1 1
       12 NEWTABLE                         R2 1 0
       14 DUPCLOSURE                       R3 K7 [PROTO_0]
       15 CAPTURE                          VAL R1
       16 SETTABLEKS                       R3 R2 K8 ["build"]
       18 RETURN                           R2 1
