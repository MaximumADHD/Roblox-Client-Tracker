PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["X"]
        2 FASTCALL1                        MATH_FLOOR R3 ; [+2]
        3 GETIMPORT                        R2 K3 [math.floor]
        5 CALL                             R2 1 1
        6 GETTABLEKS                       R4 R0 K4 ["Y"]
        8 FASTCALL1                        MATH_FLOOR R4 ; [+2]
        9 GETIMPORT                        R3 K3 [math.floor]
       11 CALL                             R3 1 1
       12 GETTABLEKS                       R5 R0 K5 ["Z"]
       14 FASTCALL1                        MATH_FLOOR R5 ; [+2]
       15 GETIMPORT                        R4 K3 [math.floor]
       17 CALL                             R4 1 1
       18 FASTCALL                         VECTOR ; [+2]
       19 GETIMPORT                        R1 K8 [Vector3.new]
       21 CALL                             R1 3 1
       22 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["X"]
        2 FASTCALL1                        MATH_CEIL R3 ; [+2]
        3 GETIMPORT                        R2 K3 [math.ceil]
        5 CALL                             R2 1 1
        6 GETTABLEKS                       R4 R0 K4 ["Y"]
        8 FASTCALL1                        MATH_CEIL R4 ; [+2]
        9 GETIMPORT                        R3 K3 [math.ceil]
       11 CALL                             R3 1 1
       12 GETTABLEKS                       R5 R0 K5 ["Z"]
       14 FASTCALL1                        MATH_CEIL R5 ; [+2]
       15 GETIMPORT                        R4 K3 [math.ceil]
       17 CALL                             R4 1 1
       18 FASTCALL                         VECTOR ; [+2]
       19 GETIMPORT                        R1 K8 [Vector3.new]
       21 CALL                             R1 3 1
       22 RETURN                           R1 1

PROTO_2:
        0 NEWTABLE                         R2 0 0
        2 NEWTABLE                         R3 0 0
        4 GETUPVAL                         R4 0
        5 MOVE                             R5 R0
        6 MOVE                             R6 R1
        7 CALL                             R4 2 1
        8 GETTABLEKS                       R6 R4 K0 ["Min"]
       10 GETTABLEKS                       R6 R6 K1 ["X"]
       12 GETTABLEKS                       R7 R4 K0 ["Min"]
       14 GETTABLEKS                       R7 R7 K2 ["Y"]
       16 GETTABLEKS                       R8 R4 K0 ["Min"]
       18 GETTABLEKS                       R8 R8 K3 ["Z"]
       20 FASTCALL                         VECTOR ; [+2]
       21 GETIMPORT                        R5 K6 [Vector3.new]
       23 CALL                             R5 3 1
       24 GETTABLEKS                       R7 R4 K7 ["Max"]
       26 GETTABLEKS                       R7 R7 K1 ["X"]
       28 GETTABLEKS                       R8 R4 K7 ["Max"]
       30 GETTABLEKS                       R8 R8 K2 ["Y"]
       32 GETTABLEKS                       R9 R4 K7 ["Max"]
       34 GETTABLEKS                       R9 R9 K3 ["Z"]
       36 FASTCALL                         VECTOR ; [+2]
       37 GETIMPORT                        R6 K6 [Vector3.new]
       39 CALL                             R6 3 1
       40 DIVK                             R9 R5 K8 [400]
       41 GETTABLEKS                       R12 R9 K1 ["X"]
       43 FASTCALL1                        MATH_FLOOR R12 ; [+2]
       44 GETIMPORT                        R11 K11 [math.floor]
       46 CALL                             R11 1 1
       47 GETTABLEKS                       R13 R9 K2 ["Y"]
       49 FASTCALL1                        MATH_FLOOR R13 ; [+2]
       50 GETIMPORT                        R12 K11 [math.floor]
       52 CALL                             R12 1 1
       53 GETTABLEKS                       R14 R9 K3 ["Z"]
       55 FASTCALL1                        MATH_FLOOR R14 ; [+2]
       56 GETIMPORT                        R13 K11 [math.floor]
       58 CALL                             R13 1 1
       59 FASTCALL                         VECTOR ; [+2]
       60 GETIMPORT                        R10 K6 [Vector3.new]
       62 CALL                             R10 3 1
       63 MOVE                             R8 R10
       64 MULK                             R7 R8 K8 [400]
       65 DIVK                             R10 R6 K8 [400]
       66 GETTABLEKS                       R13 R10 K1 ["X"]
       68 FASTCALL1                        MATH_CEIL R13 ; [+2]
       69 GETIMPORT                        R12 K13 [math.ceil]
       71 CALL                             R12 1 1
       72 GETTABLEKS                       R14 R10 K2 ["Y"]
       74 FASTCALL1                        MATH_CEIL R14 ; [+2]
       75 GETIMPORT                        R13 K13 [math.ceil]
       77 CALL                             R13 1 1
       78 GETTABLEKS                       R15 R10 K3 ["Z"]
       80 FASTCALL1                        MATH_CEIL R15 ; [+2]
       81 GETIMPORT                        R14 K13 [math.ceil]
       83 CALL                             R14 1 1
       84 FASTCALL                         VECTOR ; [+2]
       85 GETIMPORT                        R11 K6 [Vector3.new]
       87 CALL                             R11 3 1
       88 MOVE                             R9 R11
       89 MULK                             R8 R9 K8 [400]
       90 GETIMPORT                        R9 K15 [Region3int16.new]
       92 GETIMPORT                        R10 K17 [Vector3int16.new]
       94 GETTABLEKS                       R11 R7 K1 ["X"]
       96 GETTABLEKS                       R12 R7 K2 ["Y"]
       98 GETTABLEKS                       R13 R7 K3 ["Z"]
      100 CALL                             R10 3 1
      101 GETIMPORT                        R11 K17 [Vector3int16.new]
      103 GETTABLEKS                       R12 R8 K1 ["X"]
      105 GETTABLEKS                       R13 R8 K2 ["Y"]
      107 GETTABLEKS                       R14 R8 K3 ["Z"]
      109 CALL                             R11 3 -1
      110 CALL                             R9 -1 1
      111 GETTABLEKS                       R12 R9 K0 ["Min"]
      113 GETTABLEKS                       R12 R12 K1 ["X"]
      115 GETTABLEKS                       R10 R9 K7 ["Max"]
      117 GETTABLEKS                       R10 R10 K1 ["X"]
      119 LOADN                            R11 144
      120 FORNPREP                         R10
      121 GETTABLEKS                       R15 R9 K0 ["Min"]
      123 GETTABLEKS                       R15 R15 K2 ["Y"]
      125 GETTABLEKS                       R13 R9 K7 ["Max"]
      127 GETTABLEKS                       R13 R13 K2 ["Y"]
      129 LOADN                            R14 144
      130 FORNPREP                         R13
      131 GETTABLEKS                       R18 R9 K0 ["Min"]
      133 GETTABLEKS                       R18 R18 K3 ["Z"]
      135 GETTABLEKS                       R16 R9 K7 ["Max"]
      137 GETTABLEKS                       R16 R16 K3 ["Z"]
      139 LOADN                            R17 144
      140 FORNPREP                         R16
      141 FASTCALL3                        VECTOR R12 R15 R18
      143 MOVE                             R20 R12
      144 MOVE                             R21 R15
      145 MOVE                             R22 R18
      146 GETIMPORT                        R19 K6 [Vector3.new]
      148 CALL                             R19 3 1
      149 MOVE                             R21 R5
      150 NAMECALL                         R19 R19 K7 ["Max"]
      152 CALL                             R19 2 1
      153 ADDK                             R21 R12 K8 [400]
      154 ADDK                             R22 R15 K8 [400]
      155 ADDK                             R23 R18 K8 [400]
      156 FASTCALL                         VECTOR ; [+2]
      157 GETIMPORT                        R20 K6 [Vector3.new]
      159 CALL                             R20 3 1
      160 MOVE                             R22 R6
      161 NAMECALL                         R20 R20 K0 ["Min"]
      163 CALL                             R20 2 1
      164 GETTABLEKS                       R21 R19 K1 ["X"]
      166 GETTABLEKS                       R22 R20 K1 ["X"]
      168 JUMPIFLE                         R22 R21 ; [+61]
      170 GETTABLEKS                       R21 R19 K2 ["Y"]
      172 GETTABLEKS                       R22 R20 K2 ["Y"]
      174 JUMPIFLE                         R22 R21 ; [+55]
      176 GETTABLEKS                       R21 R19 K3 ["Z"]
      178 GETTABLEKS                       R22 R20 K3 ["Z"]
      180 JUMPIFLE                         R22 R21 ; [+49]
      182 MOVE                             R22 R2
      183 GETIMPORT                        R23 K15 [Region3int16.new]
      185 GETIMPORT                        R25 K17 [Vector3int16.new]
      187 GETTABLEKS                       R26 R19 K1 ["X"]
      189 GETTABLEKS                       R27 R19 K2 ["Y"]
      191 GETTABLEKS                       R28 R19 K3 ["Z"]
      193 CALL                             R25 3 1
      194 GETTABLEKS                       R26 R4 K0 ["Min"]
      196 SUB                              R24 R25 R26
      197 GETIMPORT                        R26 K17 [Vector3int16.new]
      199 GETTABLEKS                       R27 R20 K1 ["X"]
      201 GETTABLEKS                       R28 R20 K2 ["Y"]
      203 GETTABLEKS                       R29 R20 K3 ["Z"]
      205 CALL                             R26 3 1
      206 GETTABLEKS                       R27 R4 K0 ["Min"]
      208 SUB                              R25 R26 R27
      209 CALL                             R23 2 -1
      210 FASTCALL                         TABLE_INSERT ; [+2]
      211 GETIMPORT                        R21 K20 [table.insert]
      213 CALL                             R21 -1 0
      214 GETIMPORT                        R21 K17 [Vector3int16.new]
      216 GETTABLEKS                       R22 R19 K1 ["X"]
      218 GETTABLEKS                       R23 R19 K2 ["Y"]
      220 GETTABLEKS                       R24 R19 K3 ["Z"]
      222 CALL                             R21 3 1
      223 FASTCALL2                        TABLE_INSERT R3 R21 ; [+5]
      225 MOVE                             R23 R3
      226 MOVE                             R24 R21
      227 GETIMPORT                        R22 K20 [table.insert]
      229 CALL                             R22 2 0
      230 FORNLOOP                         R16
      231 FORNLOOP                         R13
      232 FORNLOOP                         R10
      233 RETURN                           R2 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Util"]
       15 GETTABLEKS                       R2 R2 K7 ["ConvertTransformToRegion"]
       17 CALL                             R1 1 1
       18 DUPCLOSURE                       R2 K8 [PROTO_0]
       19 DUPCLOSURE                       R3 K9 [PROTO_1]
       20 DUPCLOSURE                       R4 K10 [PROTO_2]
       21 CAPTURE                          VAL R1
       22 RETURN                           R4 1
