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
       14 NEWTABLE                         R4 0 0
       16 GETTABLEKS                       R5 R0 K4 ["indices"]
       18 LOADNIL                          R6
       19 LOADNIL                          R7
       20 FORGPREP                         R5
       21 GETTABLEKS                       R11 R0 K5 ["vertexIds"]
       23 ADDK                             R12 R9 K6 [1]
       24 GETTABLE                         R10 R11 R12
       25 JUMPIFNOT                        R10 ; [+2]
       26 LOADB                            R11 1
       27 SETTABLE                         R11 R4 R10
       28 FORGLOOP                         R5 2 ; [-8]
       30 NEWTABLE                         R5 0 0
       32 NAMECALL                         R6 R1 K7 ["GetFaces"]
       34 CALL                             R6 1 3
       35 FORGPREP                         R6
       36 GETIMPORT                        R11 K9 [pcall]
       38 GETTABLEKS                       R12 R1 K10 ["GetFaceVertices"]
       40 MOVE                             R13 R1
       41 MOVE                             R14 R10
       42 CALL                             R11 3 2
       43 JUMPIFNOT                        R11 ; [+96]
       44 JUMPIFNOT                        R12 ; [+95]
       45 NEWTABLE                         R13 0 3
       47 NEWTABLE                         R14 0 2
       49 GETTABLEN                        R15 R12 1
       50 GETTABLEN                        R16 R12 2
       51 SETLIST                          R14 R15 2 [1]
       53 NEWTABLE                         R15 0 2
       55 GETTABLEN                        R16 R12 2
       56 GETTABLEN                        R17 R12 3
       57 SETLIST                          R15 R16 2 [1]
       59 NEWTABLE                         R16 0 2
       61 GETTABLEN                        R17 R12 1
       62 GETTABLEN                        R18 R12 3
       63 SETLIST                          R16 R17 2 [1]
       65 SETLIST                          R13 R14 3 [1]
       67 MOVE                             R14 R13
       68 LOADNIL                          R15
       69 LOADNIL                          R16
       70 FORGPREP                         R14
       71 GETTABLEN                        R19 R18 1
       72 GETTABLEN                        R20 R18 2
       73 FASTCALL2                        MATH_MIN R19 R20 ; [+5]
       75 MOVE                             R22 R19
       76 MOVE                             R23 R20
       77 GETIMPORT                        R21 K13 [math.min]
       79 CALL                             R21 2 1
       80 FASTCALL2                        MATH_MAX R19 R20 ; [+5]
       82 MOVE                             R23 R19
       83 MOVE                             R24 R20
       84 GETIMPORT                        R22 K15 [math.max]
       86 CALL                             R22 2 1
       87 MOVE                             R24 R21
       88 LOADK                            R25 K16 [":"]
       89 MOVE                             R26 R22
       90 CONCAT                           R23 R24 R26
       91 GETTABLE                         R24 R4 R19
       92 JUMPIF                           R24 ; [+1]
       93 GETTABLE                         R24 R4 R20
       94 GETTABLE                         R25 R5 R23
       95 JUMPIF                           R25 ; [+33]
       96 GETIMPORT                        R25 K9 [pcall]
       98 GETTABLEKS                       R26 R1 K17 ["GetPosition"]
      100 MOVE                             R27 R1
      101 MOVE                             R28 R19
      102 CALL                             R25 3 2
      103 GETIMPORT                        R27 K9 [pcall]
      105 GETTABLEKS                       R28 R1 K17 ["GetPosition"]
      107 MOVE                             R29 R1
      108 MOVE                             R30 R20
      109 CALL                             R27 3 2
      110 JUMPIFNOT                        R25 ; [+27]
      111 JUMPIFNOT                        R27 ; [+26]
      112 JUMPIFNOT                        R26 ; [+25]
      113 JUMPIFNOT                        R28 ; [+24]
      114 DUPTABLE                         R29 K21 [{"pos1", "pos2", "isError"}]
      115 MUL                              R30 R26 R3
      116 SETTABLEKS                       R30 R29 K18 ["pos1"]
      118 MUL                              R30 R28 R3
      119 SETTABLEKS                       R30 R29 K19 ["pos2"]
      121 JUMPIFEQKB                       R24 TRUE ; [+2]
      123 LOADB                            R30 0 +1
      124 LOADB                            R30 1
      125 SETTABLEKS                       R30 R29 K20 ["isError"]
      127 SETTABLE                         R29 R5 R23
      128 JUMP                             ; [+9]
      129 JUMPIFNOT                        R24 ; [+8]
      130 GETTABLE                         R25 R5 R23
      131 GETTABLEKS                       R25 R25 K20 ["isError"]
      133 JUMPIF                           R25 ; [+4]
      134 GETTABLE                         R25 R5 R23
      135 LOADB                            R26 1
      136 SETTABLEKS                       R26 R25 K20 ["isError"]
      138 FORGLOOP                         R14 2 ; [-68]
      140 FORGLOOP                         R6 2 ; [-105]
      142 MOVE                             R6 R5
      143 LOADNIL                          R7
      144 LOADNIL                          R8
      145 FORGPREP                         R6
      146 GETTABLEKS                       R11 R10 K18 ["pos1"]
      148 GETTABLEKS                       R12 R10 K19 ["pos2"]
      150 SUB                              R13 R12 R11
      151 GETTABLEKS                       R13 R13 K22 ["Magnitude"]
      153 LOADN                            R14 0
      154 JUMPIFNOTLT                      R14 R13 ; [+52]
      156 GETIMPORT                        R15 K25 [CFrame.new]
      158 LOADK                            R16 K26 [{0, 0, 0}]
      159 SUB                              R17 R12 R11
      160 GETTABLEKS                       R17 R17 K27 ["Unit"]
      162 CALL                             R15 2 1
      163 ADD                              R14 R15 R11
      164 GETIMPORT                        R15 K29 [Instance.new]
      166 LOADK                            R16 K30 ["LineHandleAdornment"]
      167 CALL                             R15 1 1
      168 SETTABLEKS                       R2 R15 K31 ["Adornee"]
      170 SETTABLEKS                       R14 R15 K23 ["CFrame"]
      172 SETTABLEKS                       R13 R15 K32 ["Length"]
      174 GETUPVAL                         R16 0
      175 GETTABLEKS                       R16 R16 K33 ["LINE_THICKNESS"]
      177 SETTABLEKS                       R16 R15 K34 ["Thickness"]
      179 GETTABLEKS                       R17 R10 K20 ["isError"]
      181 JUMPIFNOT                        R17 ; [+4]
      182 GETUPVAL                         R16 0
      183 GETTABLEKS                       R16 R16 K35 ["COLOR_EDGE_ERROR"]
      185 JUMP                             ; [+3]
      186 GETUPVAL                         R16 0
      187 GETTABLEKS                       R16 R16 K36 ["COLOR_EDGE_DEFAULT"]
      189 SETTABLEKS                       R16 R15 K37 ["Color3"]
      191 LOADB                            R16 1
      192 SETTABLEKS                       R16 R15 K38 ["AlwaysOnTop"]
      194 GETTABLEKS                       R17 R10 K20 ["isError"]
      196 JUMPIFNOT                        R17 ; [+2]
      197 LOADN                            R16 1
      198 JUMP                             ; [+1]
      199 LOADN                            R16 0
      200 SETTABLEKS                       R16 R15 K39 ["ZIndex"]
      202 LOADB                            R16 0
      203 SETTABLEKS                       R16 R15 K40 ["Archivable"]
      205 SETTABLEKS                       R2 R15 K41 ["Parent"]
      207 FORGLOOP                         R6 2 ; [-62]
      209 RETURN                           R0 0

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
