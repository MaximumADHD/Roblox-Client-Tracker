PROTO_0:
        0 LOADN                            R3 0
        1 JUMPIFNOTLT                      R3 R1 ; [+3]
        3 DIV                              R2 R0 R1
        4 RETURN                           R2 1
        5 LOADN                            R2 1
        6 RETURN                           R2 1

PROTO_1:
        0 NEWTABLE                         R2 0 0
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 NAMECALL                         R5 R0 K0 ["GetVertices"]
        6 CALL                             R5 1 3
        7 FORGPREP                         R5
        8 MOVE                             R12 R9
        9 NAMECALL                         R10 R0 K1 ["GetPosition"]
       11 CALL                             R10 2 1
       12 SETTABLE                         R10 R2 R9
       13 JUMPIFNOTEQKNIL                  R3 ; [+3]
       15 MOVE                             R3 R10
       16 JUMP                             ; [+5]
       17 MOVE                             R13 R10
       18 NAMECALL                         R11 R3 K2 ["Min"]
       20 CALL                             R11 2 1
       21 MOVE                             R3 R11
       22 JUMPIFNOTEQKNIL                  R4 ; [+3]
       24 MOVE                             R4 R10
       25 JUMP                             ; [+5]
       26 MOVE                             R13 R10
       27 NAMECALL                         R11 R4 K3 ["Max"]
       29 CALL                             R11 2 1
       30 MOVE                             R4 R11
       31 FORGLOOP                         R5 2 ; [-24]
       33 JUMPIFEQKNIL                     R3 ; [+3]
       35 JUMPIFNOTEQKNIL                  R4 ; [+2]
       37 RETURN                           R2 1
       38 ADD                              R6 R3 R4
       39 DIVK                             R5 R6 K4 [2]
       40 SUB                              R6 R4 R3
       41 GETTABLEKS                       R9 R1 K5 ["Size"]
       43 GETTABLEKS                       R9 R9 K6 ["X"]
       45 GETTABLEKS                       R10 R6 K6 ["X"]
       47 LOADN                            R11 0
       48 JUMPIFNOTLT                      R11 R10 ; [+3]
       50 DIV                              R8 R9 R10
       51 JUMP                             ; [+1]
       52 LOADN                            R8 1
       53 GETTABLEKS                       R10 R1 K5 ["Size"]
       55 GETTABLEKS                       R10 R10 K7 ["Y"]
       57 GETTABLEKS                       R11 R6 K7 ["Y"]
       59 LOADN                            R12 0
       60 JUMPIFNOTLT                      R12 R11 ; [+3]
       62 DIV                              R9 R10 R11
       63 JUMP                             ; [+1]
       64 LOADN                            R9 1
       65 GETTABLEKS                       R11 R1 K5 ["Size"]
       67 GETTABLEKS                       R11 R11 K8 ["Z"]
       69 GETTABLEKS                       R12 R6 K8 ["Z"]
       71 LOADN                            R13 0
       72 JUMPIFNOTLT                      R13 R12 ; [+3]
       74 DIV                              R10 R11 R12
       75 JUMP                             ; [+1]
       76 LOADN                            R10 1
       77 FASTCALL                         VECTOR ; [+2]
       78 GETIMPORT                        R7 K11 [Vector3.new]
       80 CALL                             R7 3 1
       81 MOVE                             R8 R2
       82 LOADNIL                          R9
       83 LOADNIL                          R10
       84 FORGPREP                         R8
       85 GETTABLEKS                       R13 R1 K12 ["CFrame"]
       87 SUB                              R16 R12 R5
       88 MUL                              R15 R16 R7
       89 NAMECALL                         R13 R13 K13 ["PointToWorldSpace"]
       91 CALL                             R13 2 1
       92 SETTABLE                         R13 R2 R11
       93 FORGLOOP                         R8 2 ; [-9]
       95 RETURN                           R2 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["mesh"]
        2 NAMECALL                         R5 R2 K1 ["GetUVs"]
        4 CALL                             R5 1 1
        5 LENGTH                           R4 R5
        6 LOADN                            R5 0
        7 JUMPIFLT                         R5 R4 ; [+2]
        9 LOADB                            R3 0 +1
       10 LOADB                            R3 1
       11 NAMECALL                         R6 R2 K2 ["GetNormals"]
       13 CALL                             R6 1 1
       14 LENGTH                           R5 R6
       15 LOADN                            R6 0
       16 JUMPIFLT                         R6 R5 ; [+2]
       18 LOADB                            R4 0 +1
       19 LOADB                            R4 1
       20 NAMECALL                         R7 R2 K3 ["GetColors"]
       22 CALL                             R7 1 1
       23 LENGTH                           R6 R7
       24 LOADN                            R7 0
       25 JUMPIFLT                         R7 R6 ; [+2]
       27 LOADB                            R5 0 +1
       28 LOADB                            R5 1
       29 GETUPVAL                         R6 0
       30 MOVE                             R7 R2
       31 GETTABLEKS                       R8 R0 K4 ["sourcePart"]
       33 CALL                             R6 2 1
       34 NEWTABLE                         R7 0 0
       36 NAMECALL                         R8 R2 K5 ["GetFaces"]
       38 CALL                             R8 1 3
       39 FORGPREP                         R8
       40 MOVE                             R15 R12
       41 NAMECALL                         R13 R2 K6 ["GetFaceVertices"]
       43 CALL                             R13 2 1
       44 LOADK                            R14 K7 [Infinity]
       45 MOVE                             R15 R13
       46 LOADNIL                          R16
       47 LOADNIL                          R17
       48 FORGPREP                         R15
       49 GETTABLE                         R22 R6 R19
       50 GETTABLEKS                       R22 R22 K8 ["Y"]
       52 FASTCALL2                        MATH_MIN R14 R22 ; [+4]
       54 MOVE                             R21 R14
       55 GETIMPORT                        R20 K11 [math.min]
       57 CALL                             R20 2 1
       58 MOVE                             R14 R20
       59 FORGLOOP                         R15 2 ; [-11]
       61 DUPTABLE                         R17 K19 [{"id", "meshIndex", "height", "vertexIds", "uvIds", "normalIds", "colorIds"}]
       62 SETTABLEKS                       R12 R17 K12 ["id"]
       64 SETTABLEKS                       R1 R17 K13 ["meshIndex"]
       66 SETTABLEKS                       R14 R17 K14 ["height"]
       68 SETTABLEKS                       R13 R17 K15 ["vertexIds"]
       70 JUMPIFNOT                        R3 ; [+5]
       71 MOVE                             R20 R12
       72 NAMECALL                         R18 R2 K20 ["GetFaceUVs"]
       74 CALL                             R18 2 1
       75 JUMP                             ; [+2]
       76 NEWTABLE                         R18 0 0
       78 SETTABLEKS                       R18 R17 K16 ["uvIds"]
       80 JUMPIFNOT                        R4 ; [+5]
       81 MOVE                             R20 R12
       82 NAMECALL                         R18 R2 K21 ["GetFaceNormals"]
       84 CALL                             R18 2 1
       85 JUMP                             ; [+2]
       86 NEWTABLE                         R18 0 0
       88 SETTABLEKS                       R18 R17 K17 ["normalIds"]
       90 JUMPIFNOT                        R5 ; [+5]
       91 MOVE                             R20 R12
       92 NAMECALL                         R18 R2 K22 ["GetFaceColors"]
       94 CALL                             R18 2 1
       95 JUMP                             ; [+2]
       96 NEWTABLE                         R18 0 0
       98 SETTABLEKS                       R18 R17 K18 ["colorIds"]
      100 FASTCALL2                        TABLE_INSERT R7 R17 ; [+4]
      102 MOVE                             R16 R7
      103 GETIMPORT                        R15 K25 [table.insert]
      105 CALL                             R15 2 0
      106 FORGLOOP                         R8 2 ; [-67]
      108 RETURN                           R7 1

PROTO_3:
        0 GETTABLEKS                       R5 R1 K0 ["vertexIds"]
        2 GETTABLEN                        R4 R5 1
        3 GETTABLEKS                       R6 R1 K0 ["vertexIds"]
        5 GETTABLEN                        R5 R6 2
        6 GETTABLEKS                       R7 R1 K0 ["vertexIds"]
        8 GETTABLEN                        R6 R7 3
        9 NAMECALL                         R2 R0 K1 ["AddTriangle"]
       11 CALL                             R2 4 1
       12 GETTABLEKS                       R4 R1 K2 ["uvIds"]
       14 LENGTH                           R3 R4
       15 LOADN                            R4 0
       16 JUMPIFNOTLT                      R4 R3 ; [+7]
       18 MOVE                             R5 R2
       19 GETTABLEKS                       R6 R1 K2 ["uvIds"]
       21 NAMECALL                         R3 R0 K3 ["SetFaceUVs"]
       23 CALL                             R3 3 0
       24 GETTABLEKS                       R4 R1 K4 ["normalIds"]
       26 LENGTH                           R3 R4
       27 LOADN                            R4 0
       28 JUMPIFNOTLT                      R4 R3 ; [+7]
       30 MOVE                             R5 R2
       31 GETTABLEKS                       R6 R1 K4 ["normalIds"]
       33 NAMECALL                         R3 R0 K5 ["SetFaceNormals"]
       35 CALL                             R3 3 0
       36 GETTABLEKS                       R4 R1 K6 ["colorIds"]
       38 LENGTH                           R3 R4
       39 LOADN                            R4 0
       40 JUMPIFNOTLT                      R4 R3 ; [+7]
       42 MOVE                             R5 R2
       43 GETTABLEKS                       R6 R1 K6 ["colorIds"]
       45 NAMECALL                         R3 R0 K7 ["SetFaceColors"]
       47 CALL                             R3 3 0
       48 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R3 K2 [Content.fromObject]
        3 GETTABLEKS                       R4 R0 K3 ["mesh"]
        5 CALL                             R3 1 1
        6 DUPTABLE                         R4 K6 [{"CollisionFidelity", "RenderFidelity"}]
        7 GETIMPORT                        R5 K9 [Enum.CollisionFidelity.Box]
        9 SETTABLEKS                       R5 R4 K4 ["CollisionFidelity"]
       11 GETTABLEKS                       R5 R0 K10 ["sourcePart"]
       13 GETTABLEKS                       R5 R5 K5 ["RenderFidelity"]
       15 SETTABLEKS                       R5 R4 K5 ["RenderFidelity"]
       17 NAMECALL                         R1 R1 K11 ["CreateMeshPartAsync"]
       19 CALL                             R1 3 1
       20 GETTABLEKS                       R2 R0 K12 ["displayPart"]
       22 MOVE                             R4 R1
       23 NAMECALL                         R2 R2 K13 ["ApplyMesh"]
       25 CALL                             R2 2 0
       26 NAMECALL                         R2 R1 K14 ["Destroy"]
       28 CALL                             R2 1 0
       29 GETTABLEKS                       R2 R0 K12 ["displayPart"]
       31 GETTABLEKS                       R3 R0 K15 ["savedTransparency"]
       33 SETTABLEKS                       R3 R2 K16 ["Transparency"]
       35 LOADB                            R2 1
       36 SETTABLEKS                       R2 R0 K17 ["applied"]
       38 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["height"]
        2 GETTABLEKS                       R3 R1 K0 ["height"]
        4 JUMPIFEQ                         R2 R3 ; [+10]
        6 GETTABLEKS                       R3 R0 K0 ["height"]
        8 GETTABLEKS                       R4 R1 K0 ["height"]
       10 JUMPIFLT                         R3 R4 ; [+2]
       12 LOADB                            R2 0 +1
       13 LOADB                            R2 1
       14 RETURN                           R2 1
       15 GETTABLEKS                       R2 R0 K1 ["meshIndex"]
       17 GETTABLEKS                       R3 R1 K1 ["meshIndex"]
       19 JUMPIFEQ                         R2 R3 ; [+10]
       21 GETTABLEKS                       R3 R0 K1 ["meshIndex"]
       23 GETTABLEKS                       R4 R1 K1 ["meshIndex"]
       25 JUMPIFLT                         R3 R4 ; [+2]
       27 LOADB                            R2 0 +1
       28 LOADB                            R2 1
       29 RETURN                           R2 1
       30 GETTABLEKS                       R3 R0 K2 ["id"]
       32 GETTABLEKS                       R4 R1 K2 ["id"]
       34 JUMPIFLT                         R3 R4 ; [+2]
       36 LOADB                            R2 0 +1
       37 LOADB                            R2 1
       38 RETURN                           R2 1

PROTO_6:
        0 GETIMPORT                        R2 K2 [table.sort]
        2 MOVE                             R3 R0
        3 DUPCLOSURE                       R4 K3 [PROTO_5]
        4 CALL                             R2 2 0
        5 NEWTABLE                         R2 0 0
        7 LENGTH                           R3 R0
        8 JUMPIFNOTEQKN                    R3 K4 [0] ; [+2]
       10 RETURN                           R2 1
       11 GETTABLEN                        R3 R0 1
       12 GETTABLEKS                       R3 R3 K5 ["height"]
       14 LENGTH                           R6 R0
       15 GETTABLE                         R5 R0 R6
       16 GETTABLEKS                       R5 R5 K5 ["height"]
       18 SUB                              R4 R5 R3
       19 LOADNIL                          R5
       20 MOVE                             R6 R0
       21 LOADNIL                          R7
       22 LOADNIL                          R8
       23 FORGPREP                         R6
       24 JUMPIFNOTEQKN                    R4 K4 [0] ; [+3]
       26 LOADN                            R11 0
       27 JUMP                             ; [+15]
       28 GETTABLEKS                       R16 R10 K5 ["height"]
       30 SUB                              R15 R16 R3
       31 DIV                              R14 R15 R4
       32 MUL                              R13 R14 R1
       33 FASTCALL1                        MATH_FLOOR R13 ; [+2]
       34 GETIMPORT                        R12 K8 [math.floor]
       36 CALL                             R12 1 1
       37 SUBK                             R13 R1 K9 [1]
       38 FASTCALL2                        MATH_MIN R12 R13 ; [+3]
       40 GETIMPORT                        R11 K11 [math.min]
       42 CALL                             R11 2 1
       43 JUMPIFEQ                         R11 R5 ; [+10]
       45 NEWTABLE                         R14 0 0
       47 FASTCALL2                        TABLE_INSERT R2 R14 ; [+4]
       49 MOVE                             R13 R2
       50 GETIMPORT                        R12 K13 [table.insert]
       52 CALL                             R12 2 0
       53 MOVE                             R5 R11
       54 LENGTH                           R14 R2
       55 GETTABLE                         R13 R2 R14
       56 FASTCALL2                        TABLE_INSERT R13 R10 ; [+4]
       58 MOVE                             R14 R10
       59 GETIMPORT                        R12 K13 [table.insert]
       61 CALL                             R12 2 0
       62 FORGLOOP                         R6 2 ; [-39]
       64 RETURN                           R2 1

PROTO_7:
        0 LOADB                            R0 0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["isCancelled"]
        4 JUMPIFEQKNIL                     R1 ; [+5]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["isCancelled"]
        9 CALL                             R0 0 1
       10 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 LOADB                            R5 0
        5 GETUPVAL                         R6 1
        6 GETTABLEKS                       R6 R6 K0 ["isCancelled"]
        8 JUMPIFEQKNIL                     R6 ; [+5]
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R5 R5 K0 ["isCancelled"]
       13 CALL                             R5 0 1
       14 JUMPIFNOT                        R5 ; [+2]
       15 LOADB                            R5 0
       16 RETURN                           R5 1
       17 GETUPVAL                         R5 2
       18 GETTABLEKS                       R7 R4 K1 ["MeshContent"]
       20 DUPTABLE                         R8 K4 [{["FixedSize"] = False}]
       21 NAMECALL                         R5 R5 K5 ["CreateEditableMeshAsync"]
       23 CALL                             R5 3 1
       24 JUMPIFNOTEQKNIL                  R5 ; [+2]
       26 LOADB                            R7 0 +1
       27 LOADB                            R7 1
       28 FASTCALL2K                       ASSERT R7 K6 ; [+4]
       30 LOADK                            R8 K6 ["editable memory budget exhausted"]
       31 GETIMPORT                        R6 K8 [assert]
       33 CALL                             R6 2 0
       34 GETUPVAL                         R7 1
       35 GETTABLEKS                       R7 R7 K9 ["displayParts"]
       37 GETTABLE                         R6 R7 R3
       38 GETUPVAL                         R8 3
       39 DUPTABLE                         R9 K15 [{["mesh"], ["sourcePart"], ["displayPart"], ["savedTransparency"], ["applied"] = False}]
       40 SETTABLEKS                       R5 R9 K10 ["mesh"]
       42 SETTABLEKS                       R4 R9 K11 ["sourcePart"]
       44 SETTABLEKS                       R6 R9 K12 ["displayPart"]
       46 GETTABLEKS                       R10 R6 K16 ["Transparency"]
       48 SETTABLEKS                       R10 R9 K13 ["savedTransparency"]
       50 FASTCALL2                        TABLE_INSERT R8 R9 ; [+3]
       52 GETIMPORT                        R7 K19 [table.insert]
       54 CALL                             R7 2 0
       55 FORGLOOP                         R0 2 ; [-52]
       57 LOADB                            R0 0
       58 GETUPVAL                         R1 1
       59 GETTABLEKS                       R1 R1 K0 ["isCancelled"]
       61 JUMPIFEQKNIL                     R1 ; [+5]
       63 GETUPVAL                         R0 1
       64 GETTABLEKS                       R0 R0 K0 ["isCancelled"]
       66 CALL                             R0 0 1
       67 JUMPIFNOT                        R0 ; [+2]
       68 LOADB                            R0 0
       69 RETURN                           R0 1
       70 NEWTABLE                         R0 0 0
       72 GETUPVAL                         R1 3
       73 LOADNIL                          R2
       74 LOADNIL                          R3
       75 FORGPREP                         R1
       76 GETUPVAL                         R6 4
       77 MOVE                             R7 R5
       78 MOVE                             R8 R4
       79 CALL                             R6 2 1
       80 MOVE                             R7 R6
       81 LOADNIL                          R8
       82 LOADNIL                          R9
       83 FORGPREP                         R7
       84 FASTCALL2                        TABLE_INSERT R0 R11 ; [+5]
       86 MOVE                             R13 R0
       87 MOVE                             R14 R11
       88 GETIMPORT                        R12 K19 [table.insert]
       90 CALL                             R12 2 0
       91 GETTABLEKS                       R12 R5 K10 ["mesh"]
       93 GETTABLEKS                       R14 R11 K20 ["id"]
       95 NAMECALL                         R12 R12 K21 ["RemoveFace"]
       97 CALL                             R12 2 0
       98 FORGLOOP                         R7 2 ; [-15]
      100 LENGTH                           R7 R6
      101 JUMPIFNOTEQKN                    R7 K22 [0] ; [+5]
      103 LOADB                            R7 1
      104 SETTABLEKS                       R7 R5 K14 ["applied"]
      106 JUMP                             ; [+5]
      107 GETTABLEKS                       R7 R5 K12 ["displayPart"]
      109 LOADN                            R8 1
      110 SETTABLEKS                       R8 R7 K16 ["Transparency"]
      112 FORGLOOP                         R1 2 ; [-37]
      114 GETUPVAL                         R1 5
      115 MOVE                             R2 R0
      116 LOADN                            R4 1
      117 GETUPVAL                         R7 1
      118 GETTABLEKS                       R7 R7 K24 ["durationSeconds"]
      120 DIVK                             R6 R7 K23 [0.1]
      121 FASTCALL1                        MATH_FLOOR R6 ; [+2]
      122 GETIMPORT                        R5 K27 [math.floor]
      124 CALL                             R5 1 1
      125 FASTCALL2                        MATH_MAX R4 R5 ; [+3]
      127 GETIMPORT                        R3 K29 [math.max]
      129 CALL                             R3 2 1
      130 CALL                             R1 2 1
      131 MOVE                             R2 R1
      132 LOADNIL                          R3
      133 LOADNIL                          R4
      134 FORGPREP                         R2
      135 LOADB                            R7 0
      136 GETUPVAL                         R8 1
      137 GETTABLEKS                       R8 R8 K0 ["isCancelled"]
      139 JUMPIFEQKNIL                     R8 ; [+5]
      141 GETUPVAL                         R7 1
      142 GETTABLEKS                       R7 R7 K0 ["isCancelled"]
      144 CALL                             R7 0 1
      145 JUMPIFNOT                        R7 ; [+2]
      146 LOADB                            R7 0
      147 RETURN                           R7 1
      148 MOVE                             R7 R6
      149 LOADNIL                          R8
      150 LOADNIL                          R9
      151 FORGPREP                         R7
      152 GETUPVAL                         R12 6
      153 GETUPVAL                         R14 3
      154 GETTABLEKS                       R15 R11 K30 ["meshIndex"]
      156 GETTABLE                         R13 R14 R15
      157 GETTABLEKS                       R13 R13 K10 ["mesh"]
      159 MOVE                             R14 R11
      160 CALL                             R12 2 0
      161 FORGLOOP                         R7 2 ; [-10]
      163 GETUPVAL                         R7 3
      164 LOADNIL                          R8
      165 LOADNIL                          R9
      166 FORGPREP                         R7
      167 GETTABLEKS                       R12 R11 K14 ["applied"]
      169 JUMPIF                           R12 ; [+12]
      170 GETTABLEKS                       R13 R11 K10 ["mesh"]
      172 NAMECALL                         R13 R13 K31 ["GetFaces"]
      174 CALL                             R13 1 1
      175 LENGTH                           R12 R13
      176 LOADN                            R13 0
      177 JUMPIFNOTLT                      R13 R12 ; [+4]
      179 GETUPVAL                         R12 7
      180 MOVE                             R13 R11
      181 CALL                             R12 1 0
      182 FORGLOOP                         R7 2 ; [-16]
      184 JUMPIFNOTEQKN                    R5 K32 [1] ; [+10]
      186 GETUPVAL                         R7 1
      187 GETTABLEKS                       R7 R7 K33 ["onReveal"]
      189 JUMPIFEQKNIL                     R7 ; [+5]
      191 GETUPVAL                         R7 1
      192 GETTABLEKS                       R7 R7 K33 ["onReveal"]
      194 CALL                             R7 0 0
      195 GETIMPORT                        R7 K36 [task.wait]
      197 GETUPVAL                         R9 1
      198 GETTABLEKS                       R9 R9 K24 ["durationSeconds"]
      200 LENGTH                           R10 R1
      201 DIV                              R8 R9 R10
      202 CALL                             R7 1 0
      203 FORGLOOP                         R2 2 ; [-69]
      205 LENGTH                           R2 R1
      206 JUMPIFNOTEQKN                    R2 K22 [0] ; [+10]
      208 GETUPVAL                         R2 1
      209 GETTABLEKS                       R2 R2 K33 ["onReveal"]
      211 JUMPIFEQKNIL                     R2 ; [+5]
      213 GETUPVAL                         R2 1
      214 GETTABLEKS                       R2 R2 K33 ["onReveal"]
      216 CALL                             R2 0 0
      217 LOADB                            R3 0
      218 GETUPVAL                         R4 1
      219 GETTABLEKS                       R4 R4 K0 ["isCancelled"]
      221 JUMPIFEQKNIL                     R4 ; [+5]
      223 GETUPVAL                         R3 1
      224 GETTABLEKS                       R3 R3 K0 ["isCancelled"]
      226 CALL                             R3 0 1
      227 NOT                              R2 R3
      228 RETURN                           R2 1

PROTO_9:
        0 NEWTABLE                         R2 0 0
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R1
        4 NEWCLOSURE                       R4 P1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          VAL R2
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U4
       13 GETIMPORT                        R5 K1 [pcall]
       15 MOVE                             R6 R4
       16 CALL                             R5 1 2
       17 JUMPIFNOT                        R5 ; [+1]
       18 JUMPIF                           R6 ; [+13]
       19 MOVE                             R7 R2
       20 LOADNIL                          R8
       21 LOADNIL                          R9
       22 FORGPREP                         R7
       23 GETTABLEKS                       R12 R11 K2 ["mesh"]
       25 NAMECALL                         R12 R12 K3 ["Destroy"]
       27 CALL                             R12 1 0
       28 FORGLOOP                         R7 2 ; [-6]
       30 LOADNIL                          R7
       31 RETURN                           R7 1
       32 NEWTABLE                         R7 0 0
       34 MOVE                             R8 R2
       35 LOADNIL                          R9
       36 LOADNIL                          R10
       37 FORGPREP                         R8
       38 GETTABLEKS                       R15 R12 K2 ["mesh"]
       40 FASTCALL2                        TABLE_INSERT R7 R15 ; [+4]
       42 MOVE                             R14 R7
       43 GETIMPORT                        R13 K6 [table.insert]
       45 CALL                             R13 2 0
       46 FORGLOOP                         R8 2 ; [-9]
       48 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["AssetService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_0]
        8 DUPCLOSURE                       R2 K5 [PROTO_1]
        9 DUPCLOSURE                       R3 K6 [PROTO_2]
       10 CAPTURE                          VAL R2
       11 DUPCLOSURE                       R4 K7 [PROTO_3]
       12 DUPCLOSURE                       R5 K8 [PROTO_4]
       13 CAPTURE                          VAL R0
       14 DUPCLOSURE                       R6 K9 [PROTO_6]
       15 DUPCLOSURE                       R7 K10 [PROTO_9]
       16 CAPTURE                          VAL R0
       17 CAPTURE                          VAL R3
       18 CAPTURE                          VAL R6
       19 CAPTURE                          VAL R4
       20 CAPTURE                          VAL R5
       21 RETURN                           R7 1
