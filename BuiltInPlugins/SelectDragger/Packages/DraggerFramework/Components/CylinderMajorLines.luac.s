PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 ADD                              R3 R4 R5
        3 GETUPVAL                         R5 0
        4 GETUPVAL                         R6 1
        5 SUB                              R4 R5 R6
        6 NAMECALL                         R1 R0 K0 ["AddLine"]
        8 CALL                             R1 3 0
        9 GETUPVAL                         R5 0
       10 MINUS                            R4 R5
       11 GETUPVAL                         R5 1
       12 ADD                              R3 R4 R5
       13 GETUPVAL                         R6 0
       14 MINUS                            R5 R6
       15 GETUPVAL                         R6 1
       16 SUB                              R4 R5 R6
       17 NAMECALL                         R1 R0 K0 ["AddLine"]
       19 CALL                             R1 3 0
       20 GETUPVAL                         R4 2
       21 GETUPVAL                         R5 1
       22 ADD                              R3 R4 R5
       23 GETUPVAL                         R5 2
       24 GETUPVAL                         R6 1
       25 SUB                              R4 R5 R6
       26 NAMECALL                         R1 R0 K0 ["AddLine"]
       28 CALL                             R1 3 0
       29 GETUPVAL                         R5 2
       30 MINUS                            R4 R5
       31 GETUPVAL                         R5 1
       32 ADD                              R3 R4 R5
       33 GETUPVAL                         R6 2
       34 MINUS                            R5 R6
       35 GETUPVAL                         R6 1
       36 SUB                              R4 R5 R6
       37 NAMECALL                         R1 R0 K0 ["AddLine"]
       39 CALL                             R1 3 0
       40 GETUPVAL                         R3 3
       41 LOADB                            R4 1
       42 NAMECALL                         R1 R0 K1 ["AddPath"]
       44 CALL                             R1 3 0
       45 GETUPVAL                         R4 4
       46 GETUPVAL                         R5 5
       47 LOADN                            R6 0
       48 FASTCALL                         VECTOR ; [+2]
       49 GETIMPORT                        R3 K4 [Vector3.new]
       51 CALL                             R3 3 1
       52 GETUPVAL                         R5 4
       53 GETUPVAL                         R7 5
       54 MINUS                            R6 R7
       55 LOADN                            R7 0
       56 FASTCALL                         VECTOR ; [+2]
       57 GETIMPORT                        R4 K4 [Vector3.new]
       59 CALL                             R4 3 1
       60 NAMECALL                         R1 R0 K0 ["AddLine"]
       62 CALL                             R1 3 0
       63 GETUPVAL                         R5 4
       64 MINUS                            R4 R5
       65 GETUPVAL                         R5 5
       66 LOADN                            R6 0
       67 FASTCALL                         VECTOR ; [+2]
       68 GETIMPORT                        R3 K4 [Vector3.new]
       70 CALL                             R3 3 1
       71 GETUPVAL                         R6 4
       72 MINUS                            R5 R6
       73 GETUPVAL                         R7 5
       74 MINUS                            R6 R7
       75 LOADN                            R7 0
       76 FASTCALL                         VECTOR ; [+2]
       77 GETIMPORT                        R4 K4 [Vector3.new]
       79 CALL                             R4 3 1
       80 NAMECALL                         R1 R0 K0 ["AddLine"]
       82 CALL                             R1 3 0
       83 GETUPVAL                         R4 4
       84 LOADN                            R5 0
       85 GETUPVAL                         R6 5
       86 FASTCALL                         VECTOR ; [+2]
       87 GETIMPORT                        R3 K4 [Vector3.new]
       89 CALL                             R3 3 1
       90 GETUPVAL                         R5 4
       91 LOADN                            R6 0
       92 GETUPVAL                         R8 5
       93 MINUS                            R7 R8
       94 FASTCALL                         VECTOR ; [+2]
       95 GETIMPORT                        R4 K4 [Vector3.new]
       97 CALL                             R4 3 1
       98 NAMECALL                         R1 R0 K0 ["AddLine"]
      100 CALL                             R1 3 0
      101 GETUPVAL                         R5 4
      102 MINUS                            R4 R5
      103 LOADN                            R5 0
      104 GETUPVAL                         R6 5
      105 FASTCALL                         VECTOR ; [+2]
      106 GETIMPORT                        R3 K4 [Vector3.new]
      108 CALL                             R3 3 1
      109 GETUPVAL                         R6 4
      110 MINUS                            R5 R6
      111 LOADN                            R6 0
      112 GETUPVAL                         R8 5
      113 MINUS                            R7 R8
      114 FASTCALL                         VECTOR ; [+2]
      115 GETIMPORT                        R4 K4 [Vector3.new]
      117 CALL                             R4 3 1
      118 NAMECALL                         R1 R0 K0 ["AddLine"]
      120 CALL                             R1 3 0
      121 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Part"]
        2 GETTABLEKS                       R2 R1 K1 ["Size"]
        4 GETTABLEKS                       R5 R2 K3 ["Y"]
        6 GETTABLEKS                       R6 R2 K4 ["Z"]
        8 FASTCALL2                        MATH_MIN R5 R6 ; [+3]
       10 GETIMPORT                        R4 K7 [math.min]
       12 CALL                             R4 2 1
       13 MULK                             R3 R4 K2 [0.5]
       14 LOADK                            R5 K2 [0.5]
       15 GETTABLEKS                       R6 R2 K8 ["X"]
       17 MUL                              R4 R5 R6
       18 LOADN                            R6 0
       19 LOADN                            R8 0
       20 FASTCALL3                        VECTOR R6 R3 R8
       22 MOVE                             R7 R3
       23 GETIMPORT                        R5 K11 [Vector3.new]
       25 CALL                             R5 3 1
       26 LOADN                            R7 0
       27 LOADN                            R8 0
       28 FASTCALL3                        VECTOR R7 R8 R3
       30 MOVE                             R9 R3
       31 GETIMPORT                        R6 K11 [Vector3.new]
       33 CALL                             R6 3 1
       34 LOADN                            R9 0
       35 LOADN                            R10 0
       36 FASTCALL3                        VECTOR R4 R9 R10
       38 MOVE                             R8 R4
       39 GETIMPORT                        R7 K11 [Vector3.new]
       41 CALL                             R7 3 1
       42 NEWTABLE                         R8 0 0
       44 LOADN                            R11 253
       45 LOADN                            R9 3
       46 LOADN                            R10 1
       47 FORNPREP                         R9
       48 GETIMPORT                        R14 K13 [Vector2.new]
       50 LOADN                            R15 253
       51 MOVE                             R16 R11
       52 CALL                             R14 2 1
       53 GETTABLEKS                       R13 R14 K14 ["Unit"]
       55 MUL                              R12 R13 R3
       56 LOADN                            R16 0
       57 GETTABLEKS                       R17 R12 K8 ["X"]
       59 GETTABLEKS                       R18 R12 K3 ["Y"]
       61 FASTCALL                         VECTOR ; [+2]
       62 GETIMPORT                        R15 K11 [Vector3.new]
       64 CALL                             R15 3 1
       65 FASTCALL2                        TABLE_INSERT R8 R15 ; [+4]
       67 MOVE                             R14 R8
       68 GETIMPORT                        R13 K17 [table.insert]
       70 CALL                             R13 2 0
       71 FORNLOOP                         R9
       72 LOADN                            R11 253
       73 LOADN                            R9 3
       74 LOADN                            R10 1
       75 FORNPREP                         R9
       76 GETIMPORT                        R14 K13 [Vector2.new]
       78 MOVE                             R15 R11
       79 LOADN                            R16 3
       80 CALL                             R14 2 1
       81 GETTABLEKS                       R13 R14 K14 ["Unit"]
       83 MUL                              R12 R13 R3
       84 LOADN                            R16 0
       85 GETTABLEKS                       R17 R12 K8 ["X"]
       87 GETTABLEKS                       R18 R12 K3 ["Y"]
       89 FASTCALL                         VECTOR ; [+2]
       90 GETIMPORT                        R15 K11 [Vector3.new]
       92 CALL                             R15 3 1
       93 FASTCALL2                        TABLE_INSERT R8 R15 ; [+4]
       95 MOVE                             R14 R8
       96 GETIMPORT                        R13 K17 [table.insert]
       98 CALL                             R13 2 0
       99 FORNLOOP                         R9
      100 LOADN                            R11 3
      101 LOADN                            R9 253
      102 LOADN                            R10 255
      103 FORNPREP                         R9
      104 GETIMPORT                        R14 K13 [Vector2.new]
      106 LOADN                            R15 3
      107 MOVE                             R16 R11
      108 CALL                             R14 2 1
      109 GETTABLEKS                       R13 R14 K14 ["Unit"]
      111 MUL                              R12 R13 R3
      112 LOADN                            R16 0
      113 GETTABLEKS                       R17 R12 K8 ["X"]
      115 GETTABLEKS                       R18 R12 K3 ["Y"]
      117 FASTCALL                         VECTOR ; [+2]
      118 GETIMPORT                        R15 K11 [Vector3.new]
      120 CALL                             R15 3 1
      121 FASTCALL2                        TABLE_INSERT R8 R15 ; [+4]
      123 MOVE                             R14 R8
      124 GETIMPORT                        R13 K17 [table.insert]
      126 CALL                             R13 2 0
      127 FORNLOOP                         R9
      128 LOADN                            R11 3
      129 LOADN                            R9 253
      130 LOADN                            R10 255
      131 FORNPREP                         R9
      132 GETIMPORT                        R14 K13 [Vector2.new]
      134 MOVE                             R15 R11
      135 LOADN                            R16 253
      136 CALL                             R14 2 1
      137 GETTABLEKS                       R13 R14 K14 ["Unit"]
      139 MUL                              R12 R13 R3
      140 LOADN                            R16 0
      141 GETTABLEKS                       R17 R12 K8 ["X"]
      143 GETTABLEKS                       R18 R12 K3 ["Y"]
      145 FASTCALL                         VECTOR ; [+2]
      146 GETIMPORT                        R15 K11 [Vector3.new]
      148 CALL                             R15 3 1
      149 FASTCALL2                        TABLE_INSERT R8 R15 ; [+4]
      151 MOVE                             R14 R8
      152 GETIMPORT                        R13 K17 [table.insert]
      154 CALL                             R13 2 0
      155 FORNLOOP                         R9
      156 GETUPVAL                         R10 0
      157 GETTABLEKS                       R9 R10 K18 ["createElement"]
      159 GETUPVAL                         R10 1
      160 DUPTABLE                         R11 K23 [{"Adornee", "Color3", "AlwaysOnTop", "Render"}]
      161 SETTABLEKS                       R1 R11 K19 ["Adornee"]
      163 GETTABLEKS                       R12 R0 K20 ["Color3"]
      165 SETTABLEKS                       R12 R11 K20 ["Color3"]
      167 LOADB                            R12 0
      168 SETTABLEKS                       R12 R11 K21 ["AlwaysOnTop"]
      170 NEWCLOSURE                       R12 P0
      171 CAPTURE                          VAL R5
      172 CAPTURE                          VAL R7
      173 CAPTURE                          VAL R6
      174 CAPTURE                          VAL R8
      175 CAPTURE                          VAL R4
      176 CAPTURE                          VAL R3
      177 SETTABLEKS                       R12 R11 K22 ["Render"]
      179 CALL                             R9 2 -1
      180 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETTABLEKS                       R2 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R2 K2 ["Parent"]
       11 GETIMPORT                        R2 K4 [require]
       13 GETTABLEKS                       R4 R1 K5 ["Packages"]
       15 GETTABLEKS                       R3 R4 K6 ["Roact"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K4 [require]
       20 GETTABLEKS                       R5 R0 K7 ["Components"]
       22 GETTABLEKS                       R4 R5 K8 ["WireframeHandleAdornment"]
       24 CALL                             R3 1 1
       25 DUPCLOSURE                       R4 K9 [PROTO_1]
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R3
       28 RETURN                           R4 1
