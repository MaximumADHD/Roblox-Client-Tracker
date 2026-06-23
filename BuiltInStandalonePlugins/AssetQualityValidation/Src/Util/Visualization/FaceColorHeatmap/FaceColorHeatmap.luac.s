PROTO_0:
        0 GETIMPORT                        R3 K2 [Color3.new]
        2 GETTABLEKS                       R5 R0 K3 ["R"]
        4 GETTABLEKS                       R8 R1 K3 ["R"]
        6 GETTABLEKS                       R9 R0 K3 ["R"]
        8 SUB                              R7 R8 R9
        9 MUL                              R6 R7 R2
       10 ADD                              R4 R5 R6
       11 GETTABLEKS                       R6 R0 K4 ["G"]
       13 GETTABLEKS                       R9 R1 K4 ["G"]
       15 GETTABLEKS                       R10 R0 K4 ["G"]
       17 SUB                              R8 R9 R10
       18 MUL                              R7 R8 R2
       19 ADD                              R5 R6 R7
       20 GETTABLEKS                       R7 R0 K5 ["B"]
       22 GETTABLEKS                       R10 R1 K5 ["B"]
       24 GETTABLEKS                       R11 R0 K5 ["B"]
       26 SUB                              R9 R10 R11
       27 MUL                              R8 R9 R2
       28 ADD                              R6 R7 R8
       29 CALL                             R3 3 -1
       30 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["HEATMAP_STOPS"]
        3 LOADN                            R4 0
        4 LOADN                            R5 1
        5 FASTCALL3                        MATH_CLAMP R0 R4 R5
        7 MOVE                             R3 R0
        8 GETIMPORT                        R2 K3 [math.clamp]
       10 CALL                             R2 3 1
       11 LOADN                            R5 1
       12 LENGTH                           R6 R1
       13 SUBK                             R3 R6 K4 [1]
       14 LOADN                            R4 1
       15 FORNPREP                         R3
       16 GETTABLE                         R6 R1 R5
       17 ADDK                             R8 R5 K4 [1]
       18 GETTABLE                         R7 R1 R8
       19 GETTABLEKS                       R8 R7 K5 ["threshold"]
       21 JUMPIFNOTLE                      R2 R8 ; [+23]
       23 GETTABLEKS                       R9 R7 K5 ["threshold"]
       25 GETTABLEKS                       R10 R6 K5 ["threshold"]
       27 SUB                              R8 R9 R10
       28 LOADN                            R10 0
       29 JUMPIFNOTLT                      R10 R8 ; [+6]
       31 GETTABLEKS                       R11 R6 K5 ["threshold"]
       33 SUB                              R10 R2 R11
       34 DIV                              R9 R10 R8
       35 JUMP                             ; [+1]
       36 LOADN                            R9 0
       37 GETUPVAL                         R10 1
       38 GETTABLEKS                       R11 R6 K6 ["color"]
       40 GETTABLEKS                       R12 R7 K6 ["color"]
       42 MOVE                             R13 R9
       43 CALL                             R10 3 -1
       44 RETURN                           R10 -1
       45 FORNLOOP                         R3
       46 LENGTH                           R4 R1
       47 GETTABLE                         R3 R1 R4
       48 GETTABLEKS                       R3 R3 K6 ["color"]
       50 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETUPVAL                         R5 1
        5 MOVE                             R7 R4
        6 NAMECALL                         R5 R5 K0 ["GetFaceVertices"]
        8 CALL                             R5 2 1
        9 JUMPIFNOT                        R5 ; [+72]
       10 LOADN                            R6 0
       11 LOADN                            R7 0
       12 MOVE                             R8 R5
       13 LOADNIL                          R9
       14 LOADNIL                          R10
       15 FORGPREP                         R8
       16 GETUPVAL                         R15 2
       17 GETTABLE                         R14 R15 R12
       18 ORK                              R13 R14 K1 [0]
       19 ADD                              R6 R6 R13
       20 ADDK                             R7 R7 K2 [1]
       21 FORGLOOP                         R8 2 ; [-6]
       23 LOADN                            R9 0
       24 JUMPIFNOTLT                      R9 R7 ; [+3]
       26 DIV                              R8 R6 R7
       27 JUMP                             ; [+1]
       28 LOADN                            R8 0
       29 GETUPVAL                         R9 3
       30 MOVE                             R10 R8
       31 CALL                             R9 1 1
       32 GETIMPORT                        R10 K5 [string.format]
       34 LOADK                            R11 K6 ["%d_%d_%d"]
       35 GETTABLEKS                       R14 R9 K8 ["R"]
       37 MULK                             R13 R14 K7 [255]
       38 FASTCALL1                        MATH_FLOOR R13 ; [+2]
       39 GETIMPORT                        R12 K11 [math.floor]
       41 CALL                             R12 1 1
       42 GETTABLEKS                       R15 R9 K12 ["G"]
       44 MULK                             R14 R15 K7 [255]
       45 FASTCALL1                        MATH_FLOOR R14 ; [+2]
       46 GETIMPORT                        R13 K11 [math.floor]
       48 CALL                             R13 1 1
       49 GETTABLEKS                       R16 R9 K13 ["B"]
       51 MULK                             R15 R16 K7 [255]
       52 FASTCALL1                        MATH_FLOOR R15 ; [+2]
       53 GETIMPORT                        R14 K11 [math.floor]
       55 CALL                             R14 1 1
       56 CALL                             R10 4 1
       57 GETUPVAL                         R12 4
       58 GETTABLE                         R11 R12 R10
       59 JUMPIF                           R11 ; [+8]
       60 GETUPVAL                         R11 4
       61 GETUPVAL                         R12 1
       62 MOVE                             R14 R9
       63 LOADN                            R15 1
       64 NAMECALL                         R12 R12 K14 ["AddColor"]
       66 CALL                             R12 3 1
       67 SETTABLE                         R12 R11 R10
       68 GETUPVAL                         R12 4
       69 GETTABLE                         R11 R12 R10
       70 GETUPVAL                         R12 1
       71 MOVE                             R14 R4
       72 NEWTABLE                         R15 0 3
       74 MOVE                             R16 R11
       75 MOVE                             R17 R11
       76 MOVE                             R18 R11
       77 SETLIST                          R15 R16 3 [1]
       79 NAMECALL                         R12 R12 K15 ["SetFaceColors"]
       81 CALL                             R12 3 0
       82 FORGLOOP                         R0 2 ; [-79]
       84 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R2 K2 [Content.fromObject]
        3 GETUPVAL                         R3 1
        4 CALL                             R2 1 -1
        5 NAMECALL                         R0 R0 K3 ["CreateMeshPartAsync"]
        7 CALL                             R0 -1 -1
        8 RETURN                           R0 -1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["editableMesh"]
        2 GETTABLEKS                       R2 R0 K1 ["adornee"]
        4 GETTABLEKS                       R3 R0 K2 ["vertexIds"]
        6 JUMPIF                           R3 ; [+4]
        7 GETTABLEKS                       R3 R0 K3 ["faceIds"]
        9 JUMPIF                           R3 ; [+1]
       10 RETURN                           R0 0
       11 NEWTABLE                         R3 0 0
       13 GETTABLEKS                       R4 R0 K4 ["scoreValues"]
       15 JUMPIFNOT                        R4 ; [+17]
       16 GETTABLEKS                       R4 R0 K2 ["vertexIds"]
       18 JUMPIFNOT                        R4 ; [+14]
       19 GETTABLEKS                       R4 R0 K4 ["scoreValues"]
       21 LOADNIL                          R5
       22 LOADNIL                          R6
       23 FORGPREP                         R4
       24 GETTABLEKS                       R10 R0 K2 ["vertexIds"]
       26 ADDK                             R11 R7 K5 [1]
       27 GETTABLE                         R9 R10 R11
       28 JUMPIFNOT                        R9 ; [+1]
       29 SETTABLE                         R8 R3 R9
       30 FORGLOOP                         R4 2 ; [-7]
       32 JUMP                             ; [+20]
       33 GETTABLEKS                       R4 R0 K6 ["indices"]
       35 JUMPIFNOT                        R4 ; [+17]
       36 GETTABLEKS                       R4 R0 K2 ["vertexIds"]
       38 JUMPIFNOT                        R4 ; [+14]
       39 GETTABLEKS                       R4 R0 K6 ["indices"]
       41 LOADNIL                          R5
       42 LOADNIL                          R6
       43 FORGPREP                         R4
       44 GETTABLEKS                       R10 R0 K2 ["vertexIds"]
       46 ADDK                             R11 R8 K5 [1]
       47 GETTABLE                         R9 R10 R11
       48 JUMPIFNOT                        R9 ; [+2]
       49 LOADN                            R10 1
       50 SETTABLE                         R10 R3 R9
       51 FORGLOOP                         R4 2 ; [-8]
       53 NAMECALL                         R4 R1 K7 ["GetFaces"]
       55 CALL                             R4 1 1
       56 NEWTABLE                         R5 0 0
       58 GETIMPORT                        R6 K9 [pcall]
       60 NEWCLOSURE                       R7 P0
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R1
       63 CAPTURE                          VAL R3
       64 CAPTURE                          UPVAL U0
       65 CAPTURE                          VAL R5
       66 CALL                             R6 1 2
       67 JUMPIF                           R6 ; [+6]
       68 GETIMPORT                        R8 K11 [warn]
       70 LOADK                            R9 K12 ["[AssetQualityValidation] FaceColorHeatmap coloring failed:"]
       71 MOVE                             R10 R7
       72 CALL                             R8 2 0
       73 RETURN                           R0 0
       74 GETIMPORT                        R8 K9 [pcall]
       76 NEWCLOSURE                       R9 P1
       77 CAPTURE                          UPVAL U1
       78 CAPTURE                          VAL R1
       79 CALL                             R8 1 2
       80 JUMPIFNOT                        R8 ; [+1]
       81 JUMPIF                           R9 ; [+5]
       82 GETIMPORT                        R10 K11 [warn]
       84 LOADK                            R11 K13 ["[AssetQualityValidation] FaceColorHeatmap failed to create MeshPart"]
       85 CALL                             R10 1 0
       86 RETURN                           R0 0
       87 GETTABLEKS                       R11 R2 K14 ["Name"]
       89 LOADK                            R12 K15 ["_Heatmap"]
       90 CONCAT                           R10 R11 R12
       91 SETTABLEKS                       R10 R9 K14 ["Name"]
       93 LOADB                            R10 1
       94 SETTABLEKS                       R10 R9 K16 ["Anchored"]
       96 LOADB                            R10 0
       97 SETTABLEKS                       R10 R9 K17 ["CanCollide"]
       99 LOADB                            R10 0
      100 SETTABLEKS                       R10 R9 K18 ["CanQuery"]
      102 LOADB                            R10 0
      103 SETTABLEKS                       R10 R9 K19 ["CanTouch"]
      105 GETTABLEKS                       R10 R2 K20 ["CFrame"]
      107 SETTABLEKS                       R10 R9 K20 ["CFrame"]
      109 LOADB                            R10 0
      110 SETTABLEKS                       R10 R9 K21 ["Archivable"]
      112 SETTABLEKS                       R2 R9 K22 ["Parent"]
      114 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Visualization"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Constants"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K8 [game]
       14 LOADK                            R4 K9 ["AssetService"]
       15 NAMECALL                         R2 R2 K10 ["GetService"]
       17 CALL                             R2 2 1
       18 NEWTABLE                         R3 1 0
       20 DUPCLOSURE                       R4 K11 [PROTO_0]
       21 DUPCLOSURE                       R5 K12 [PROTO_1]
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R4
       24 DUPCLOSURE                       R6 K13 [PROTO_4]
       25 CAPTURE                          VAL R5
       26 CAPTURE                          VAL R2
       27 SETTABLEKS                       R6 R3 K14 ["build"]
       29 RETURN                           R3 1
