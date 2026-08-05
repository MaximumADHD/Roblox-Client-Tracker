PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["Size"]
        2 GETTABLEKS                       R3 R2 K1 ["X"]
        4 GETTABLEKS                       R4 R2 K2 ["Z"]
        6 GETTABLEKS                       R5 R1 K3 ["Color3"]
        8 SETTABLEKS                       R5 R0 K3 ["Color3"]
       10 LOADN                            R10 0
       11 LOADN                            R11 0
       12 FASTCALL3                        VECTOR R3 R10 R11
       14 MOVE                             R9 R3
       15 GETIMPORT                        R8 K6 [Vector3.new]
       17 CALL                             R8 3 1
       18 LOADN                            R11 0
       19 FASTCALL3                        VECTOR R3 R11 R4
       21 MOVE                             R10 R3
       22 MOVE                             R12 R4
       23 GETIMPORT                        R9 K6 [Vector3.new]
       25 CALL                             R9 3 1
       26 NAMECALL                         R6 R0 K7 ["AddLine"]
       28 CALL                             R6 3 0
       29 LOADN                            R9 0
       30 LOADN                            R10 0
       31 FASTCALL3                        VECTOR R9 R10 R4
       33 MOVE                             R11 R4
       34 GETIMPORT                        R8 K6 [Vector3.new]
       36 CALL                             R8 3 1
       37 LOADN                            R11 0
       38 FASTCALL3                        VECTOR R3 R11 R4
       40 MOVE                             R10 R3
       41 MOVE                             R12 R4
       42 GETIMPORT                        R9 K6 [Vector3.new]
       44 CALL                             R9 3 1
       45 NAMECALL                         R6 R0 K7 ["AddLine"]
       47 CALL                             R6 3 0
       48 GETTABLEKS                       R6 R1 K8 ["ExtraSize"]
       50 JUMPIFNOT                        R6 ; [+46]
       51 LOADN                            R10 0
       52 FASTCALL3                        VECTOR R3 R10 R4
       54 MOVE                             R9 R3
       55 MOVE                             R11 R4
       56 GETIMPORT                        R8 K6 [Vector3.new]
       58 CALL                             R8 3 1
       59 LOADN                            R11 0
       60 GETTABLEKS                       R13 R1 K8 ["ExtraSize"]
       62 GETTABLEKS                       R13 R13 K2 ["Z"]
       64 ADD                              R12 R4 R13
       65 FASTCALL3                        VECTOR R3 R11 R12
       67 MOVE                             R10 R3
       68 GETIMPORT                        R9 K6 [Vector3.new]
       70 CALL                             R9 3 1
       71 NAMECALL                         R6 R0 K7 ["AddLine"]
       73 CALL                             R6 3 0
       74 LOADN                            R10 0
       75 FASTCALL3                        VECTOR R3 R10 R4
       77 MOVE                             R9 R3
       78 MOVE                             R11 R4
       79 GETIMPORT                        R8 K6 [Vector3.new]
       81 CALL                             R8 3 1
       82 GETTABLEKS                       R11 R1 K8 ["ExtraSize"]
       84 GETTABLEKS                       R11 R11 K1 ["X"]
       86 ADD                              R10 R3 R11
       87 LOADN                            R11 0
       88 FASTCALL3                        VECTOR R10 R11 R4
       90 MOVE                             R12 R4
       91 GETIMPORT                        R9 K6 [Vector3.new]
       93 CALL                             R9 3 1
       94 NAMECALL                         R6 R0 K7 ["AddLine"]
       96 CALL                             R6 3 0
       97 GETTABLEKS                       R6 R1 K9 ["GridSize"]
       99 GETTABLEKS                       R8 R1 K11 ["MajorStep"]
      101 ORK                              R7 R8 K10 [5]
      102 JUMPIFNOT                        R6 ; [+113]
      103 MULK                             R8 R6 K12 [0.15]
      104 MULK                             R9 R6 K13 [0.65]
      105 DIV                              R13 R3 R6
      106 ADDK                             R12 R13 K15 [0.001]
      107 FASTCALL1                        MATH_FLOOR R12 ; [+2]
      108 GETIMPORT                        R11 K18 [math.floor]
      110 CALL                             R11 1 1
      111 ADDK                             R10 R11 K14 [1]
      112 LOADN                            R11 48
      113 JUMPIFNOTLT                      R10 R11 ; [+34]
      115 LOADN                            R13 1
      116 MOVE                             R11 R10
      117 LOADN                            R12 1
      118 FORNPREP                         R11
      119 LOADNIL                          R14
      120 SUBK                             R16 R13 K14 [1]
      121 MOD                              R15 R16 R7
      122 JUMPIFNOTEQKN                    R15 K19 [0] ; [+3]
      124 MOVE                             R14 R9
      125 JUMP                             ; [+1]
      126 MOVE                             R14 R8
      127 SUBK                             R19 R13 K14 [1]
      128 MUL                              R18 R19 R6
      129 LOADN                            R19 0
      130 SUB                              R20 R4 R14
      131 FASTCALL                         VECTOR ; [+2]
      132 GETIMPORT                        R17 K6 [Vector3.new]
      134 CALL                             R17 3 1
      135 SUBK                             R20 R13 K14 [1]
      136 MUL                              R19 R20 R6
      137 LOADN                            R20 0
      138 ADD                              R21 R4 R14
      139 FASTCALL                         VECTOR ; [+2]
      140 GETIMPORT                        R18 K6 [Vector3.new]
      142 CALL                             R18 3 1
      143 NAMECALL                         R15 R0 K7 ["AddLine"]
      145 CALL                             R15 3 0
      146 FORNLOOP                         R11
      147 JUMP                             ; [+12]
      148 LOADK                            R13 K20 [{0, 0, 0}]
      149 LOADN                            R16 0
      150 LOADN                            R17 0
      151 FASTCALL3                        VECTOR R3 R16 R17
      153 MOVE                             R15 R3
      154 GETIMPORT                        R14 K6 [Vector3.new]
      156 CALL                             R14 3 1
      157 NAMECALL                         R11 R0 K7 ["AddLine"]
      159 CALL                             R11 3 0
      160 DIV                              R14 R4 R6
      161 ADDK                             R13 R14 K15 [0.001]
      162 FASTCALL1                        MATH_FLOOR R13 ; [+2]
      163 GETIMPORT                        R12 K18 [math.floor]
      165 CALL                             R12 1 1
      166 ADDK                             R11 R12 K14 [1]
      167 LOADN                            R12 48
      168 JUMPIFNOTLT                      R11 R12 ; [+34]
      170 LOADN                            R14 1
      171 MOVE                             R12 R11
      172 LOADN                            R13 1
      173 FORNPREP                         R12
      174 LOADNIL                          R15
      175 SUBK                             R17 R14 K14 [1]
      176 MOD                              R16 R17 R7
      177 JUMPIFNOTEQKN                    R16 K19 [0] ; [+3]
      179 MOVE                             R15 R9
      180 JUMP                             ; [+1]
      181 MOVE                             R15 R8
      182 SUB                              R19 R3 R15
      183 LOADN                            R20 0
      184 SUBK                             R22 R14 K14 [1]
      185 MUL                              R21 R22 R6
      186 FASTCALL                         VECTOR ; [+2]
      187 GETIMPORT                        R18 K6 [Vector3.new]
      189 CALL                             R18 3 1
      190 ADD                              R20 R3 R15
      191 LOADN                            R21 0
      192 SUBK                             R23 R14 K14 [1]
      193 MUL                              R22 R23 R6
      194 FASTCALL                         VECTOR ; [+2]
      195 GETIMPORT                        R19 K6 [Vector3.new]
      197 CALL                             R19 3 1
      198 NAMECALL                         R16 R0 K7 ["AddLine"]
      200 CALL                             R16 3 0
      201 FORNLOOP                         R12
      202 RETURN                           R0 0
      203 LOADK                            R14 K20 [{0, 0, 0}]
      204 LOADN                            R16 0
      205 LOADN                            R17 0
      206 FASTCALL3                        VECTOR R16 R17 R4
      208 MOVE                             R18 R4
      209 GETIMPORT                        R15 K6 [Vector3.new]
      211 CALL                             R15 3 1
      212 NAMECALL                         R12 R0 K7 ["AddLine"]
      214 CALL                             R12 3 0
      215 RETURN                           R0 0
      216 LOADK                            R10 K20 [{0, 0, 0}]
      217 LOADN                            R12 0
      218 LOADN                            R13 0
      219 FASTCALL3                        VECTOR R12 R13 R4
      221 MOVE                             R14 R4
      222 GETIMPORT                        R11 K6 [Vector3.new]
      224 CALL                             R11 3 1
      225 NAMECALL                         R8 R0 K7 ["AddLine"]
      227 CALL                             R8 3 0
      228 LOADK                            R10 K20 [{0, 0, 0}]
      229 LOADN                            R13 0
      230 LOADN                            R14 0
      231 FASTCALL3                        VECTOR R3 R13 R14
      233 MOVE                             R12 R3
      234 GETIMPORT                        R11 K6 [Vector3.new]
      236 CALL                             R11 3 1
      237 NAMECALL                         R8 R0 K7 ["AddLine"]
      239 CALL                             R8 3 0
      240 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["createFragment"]
        5 DUPTABLE                         R3 K4 [{"OnTop", "Underneath"}]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K5 ["createElement"]
        9 GETUPVAL                         R5 1
       10 DUPTABLE                         R6 K12 [{["CFrame"], ["Color3"], ["AlwaysOnTop"] = True, ["Transparency"], ["Render"]}]
       11 GETTABLEKS                       R7 R1 K6 ["CFrame"]
       13 SETTABLEKS                       R7 R6 K6 ["CFrame"]
       15 GETTABLEKS                       R7 R1 K7 ["Color3"]
       17 SETTABLEKS                       R7 R6 K7 ["Color3"]
       19 GETTABLEKS                       R7 R1 K13 ["DimTransparency"]
       21 SETTABLEKS                       R7 R6 K10 ["Transparency"]
       23 NEWCLOSURE                       R7 P0
       24 CAPTURE                          UPVAL U2
       25 CAPTURE                          VAL R1
       26 SETTABLEKS                       R7 R6 K11 ["Render"]
       28 CALL                             R4 2 1
       29 SETTABLEKS                       R4 R3 K2 ["OnTop"]
       31 GETUPVAL                         R4 0
       32 GETTABLEKS                       R4 R4 K5 ["createElement"]
       34 GETUPVAL                         R5 1
       35 DUPTABLE                         R6 K15 [{["CFrame"], ["Color3"], ["AlwaysOnTop"] = False, ["Transparency"], ["Render"]}]
       36 GETTABLEKS                       R7 R1 K6 ["CFrame"]
       38 SETTABLEKS                       R7 R6 K6 ["CFrame"]
       40 GETTABLEKS                       R7 R1 K7 ["Color3"]
       42 SETTABLEKS                       R7 R6 K7 ["Color3"]
       44 GETTABLEKS                       R7 R1 K16 ["MainTransparency"]
       46 SETTABLEKS                       R7 R6 K10 ["Transparency"]
       48 NEWCLOSURE                       R7 P1
       49 CAPTURE                          UPVAL U2
       50 CAPTURE                          VAL R1
       51 SETTABLEKS                       R7 R6 K11 ["Render"]
       53 CALL                             R4 2 1
       54 SETTABLEKS                       R4 R3 K3 ["Underneath"]
       56 CALL                             R2 1 -1
       57 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["Roact"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K4 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Components"]
       18 GETTABLEKS                       R4 R4 K7 ["WireframeHandleAdornment"]
       20 CALL                             R3 1 1
       21 DUPCLOSURE                       R4 K8 [PROTO_0]
       22 GETTABLEKS                       R5 R2 K9 ["PureComponent"]
       24 LOADK                            R7 K10 ["RulerView"]
       25 NAMECALL                         R5 R5 K11 ["extend"]
       27 CALL                             R5 2 1
       28 DUPCLOSURE                       R6 K12 [PROTO_3]
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R3
       31 CAPTURE                          VAL R4
       32 SETTABLEKS                       R6 R5 K13 ["render"]
       34 RETURN                           R5 1
