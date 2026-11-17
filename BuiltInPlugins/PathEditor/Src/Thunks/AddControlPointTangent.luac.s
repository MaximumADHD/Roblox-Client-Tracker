PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R1 R1 K1 ["PathReducer"]
        5 GETTABLEKS                       R2 R1 K2 ["SelectedObject"]
        7 NAMECALL                         R2 R2 K3 ["GetControlPoints"]
        9 CALL                             R2 1 1
       10 GETUPVAL                         R3 0
       11 LOADN                            R4 0
       12 JUMPIFLE                         R3 R4 ; [+5]
       14 GETUPVAL                         R3 0
       15 LENGTH                           R4 R2
       16 JUMPIFNOTLT                      R4 R3 ; [+2]
       18 RETURN                           R0 0
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R4 R1 K4 ["ControlPointStates"]
       22 GETUPVAL                         R5 1
       23 GETTABLE                         R6 R2 R3
       24 CALL                             R5 1 1
       25 GETTABLEKS                       R5 R5 K5 ["Sharp"]
       27 JUMPIF                           R5 ; [+1]
       28 RETURN                           R0 0
       29 GETUPVAL                         R7 2
       30 LOADK                            R8 K6 ["Add Control Point Tangents"]
       31 CALL                             R7 1 -1
       32 NAMECALL                         R5 R0 K7 ["dispatch"]
       34 CALL                             R5 -1 0
       35 GETUPVAL                         R5 3
       36 GETTABLEKS                       R6 R1 K2 ["SelectedObject"]
       38 GETTABLEKS                       R6 R6 K8 ["Parent"]
       40 CALL                             R5 1 1
       41 GETTABLEKS                       R6 R1 K2 ["SelectedObject"]
       43 GETTABLEKS                       R6 R6 K8 ["Parent"]
       45 GETTABLEKS                       R6 R6 K9 ["AbsoluteSize"]
       47 GETTABLEKS                       R7 R1 K10 ["ParentAbsRotation"]
       49 GETTABLEKS                       R9 R1 K11 ["ControlPoints"]
       51 LENGTH                           R8 R9
       52 JUMPIFNOTEQKN                    R8 K12 [1] ; [+37]
       54 GETIMPORT                        R8 K15 [Vector2.one]
       56 GETUPVAL                         R10 0
       57 GETTABLE                         R9 R2 R10
       58 GETUPVAL                         R10 4
       59 GETTABLEKS                       R12 R8 K16 ["Unit"]
       61 GETUPVAL                         R14 5
       62 GETTABLEKS                       R14 R14 K17 ["DefaultTangentLength"]
       64 MINUS                            R13 R14
       65 MUL                              R11 R12 R13
       66 GETTABLEKS                       R12 R1 K2 ["SelectedObject"]
       68 GETTABLEKS                       R12 R12 K8 ["Parent"]
       70 CALL                             R10 2 1
       71 SETTABLEKS                       R10 R9 K18 ["LeftTangent"]
       73 GETUPVAL                         R10 0
       74 GETTABLE                         R9 R2 R10
       75 GETUPVAL                         R10 4
       76 GETTABLEKS                       R12 R8 K16 ["Unit"]
       78 GETUPVAL                         R13 5
       79 GETTABLEKS                       R13 R13 K17 ["DefaultTangentLength"]
       81 MUL                              R11 R12 R13
       82 GETTABLEKS                       R12 R1 K2 ["SelectedObject"]
       84 GETTABLEKS                       R12 R12 K8 ["Parent"]
       86 CALL                             R10 2 1
       87 SETTABLEKS                       R10 R9 K19 ["RightTangent"]
       89 JUMP                             ; [+211]
       90 GETUPVAL                         R8 0
       91 LOADN                            R9 1
       92 JUMPIFNOTLT                      R9 R8 ; [+72]
       94 GETUPVAL                         R8 0
       95 GETTABLEKS                       R10 R1 K11 ["ControlPoints"]
       97 LENGTH                           R9 R10
       98 JUMPIFNOTLT                      R8 R9 ; [+66]
      100 GETUPVAL                         R10 0
      101 SUBK                             R9 R10 K12 [1]
      102 GETTABLE                         R8 R2 R9
      103 GETUPVAL                         R11 0
      104 ADDK                             R10 R11 K12 [1]
      105 GETTABLE                         R9 R2 R10
      106 GETUPVAL                         R11 6
      107 GETTABLEKS                       R12 R9 K20 ["Position"]
      109 MOVE                             R13 R5
      110 MOVE                             R14 R6
      111 MOVE                             R15 R7
      112 CALL                             R11 4 1
      113 GETUPVAL                         R12 6
      114 GETTABLEKS                       R13 R8 K20 ["Position"]
      116 MOVE                             R14 R5
      117 MOVE                             R15 R6
      118 MOVE                             R16 R7
      119 CALL                             R12 4 1
      120 SUB                              R10 R11 R12
      121 GETTABLEKS                       R11 R10 K21 ["Y"]
      123 JUMPIFNOTEQKN                    R11 K22 [0] ; [+7]
      125 GETTABLEKS                       R11 R10 K23 ["X"]
      127 JUMPIFNOTEQKN                    R11 K22 [0] ; [+3]
      129 GETIMPORT                        R10 K15 [Vector2.one]
      131 GETUPVAL                         R12 0
      132 GETTABLE                         R11 R2 R12
      133 GETUPVAL                         R12 4
      134 GETTABLEKS                       R14 R10 K16 ["Unit"]
      136 GETUPVAL                         R16 5
      137 GETTABLEKS                       R16 R16 K17 ["DefaultTangentLength"]
      139 MINUS                            R15 R16
      140 MUL                              R13 R14 R15
      141 GETTABLEKS                       R14 R1 K2 ["SelectedObject"]
      143 GETTABLEKS                       R14 R14 K8 ["Parent"]
      145 CALL                             R12 2 1
      146 SETTABLEKS                       R12 R11 K18 ["LeftTangent"]
      148 GETUPVAL                         R12 0
      149 GETTABLE                         R11 R2 R12
      150 GETUPVAL                         R12 4
      151 GETTABLEKS                       R14 R10 K16 ["Unit"]
      153 GETUPVAL                         R15 5
      154 GETTABLEKS                       R15 R15 K17 ["DefaultTangentLength"]
      156 MUL                              R13 R14 R15
      157 GETTABLEKS                       R14 R1 K2 ["SelectedObject"]
      159 GETTABLEKS                       R14 R14 K8 ["Parent"]
      161 CALL                             R12 2 1
      162 SETTABLEKS                       R12 R11 K19 ["RightTangent"]
      164 JUMP                             ; [+136]
      165 GETUPVAL                         R8 0
      166 JUMPIFNOTEQKN                    R8 K12 [1] ; [+65]
      168 GETUPVAL                         R9 0
      169 GETTABLE                         R8 R2 R9
      170 GETUPVAL                         R11 0
      171 ADDK                             R10 R11 K12 [1]
      172 GETTABLE                         R9 R2 R10
      173 GETUPVAL                         R11 6
      174 GETTABLEKS                       R12 R9 K20 ["Position"]
      176 MOVE                             R13 R5
      177 MOVE                             R14 R6
      178 MOVE                             R15 R7
      179 CALL                             R11 4 1
      180 GETUPVAL                         R12 6
      181 GETTABLEKS                       R13 R8 K20 ["Position"]
      183 MOVE                             R14 R5
      184 MOVE                             R15 R6
      185 MOVE                             R16 R7
      186 CALL                             R12 4 1
      187 SUB                              R10 R11 R12
      188 GETTABLEKS                       R11 R10 K21 ["Y"]
      190 JUMPIFNOTEQKN                    R11 K22 [0] ; [+7]
      192 GETTABLEKS                       R11 R10 K23 ["X"]
      194 JUMPIFNOTEQKN                    R11 K22 [0] ; [+3]
      196 GETIMPORT                        R10 K15 [Vector2.one]
      198 GETUPVAL                         R12 0
      199 GETTABLE                         R11 R2 R12
      200 GETUPVAL                         R12 4
      201 GETTABLEKS                       R14 R10 K16 ["Unit"]
      203 GETUPVAL                         R16 5
      204 GETTABLEKS                       R16 R16 K17 ["DefaultTangentLength"]
      206 MINUS                            R15 R16
      207 MUL                              R13 R14 R15
      208 GETTABLEKS                       R14 R1 K2 ["SelectedObject"]
      210 GETTABLEKS                       R14 R14 K8 ["Parent"]
      212 CALL                             R12 2 1
      213 SETTABLEKS                       R12 R11 K18 ["LeftTangent"]
      215 GETUPVAL                         R12 0
      216 GETTABLE                         R11 R2 R12
      217 GETUPVAL                         R12 4
      218 GETTABLEKS                       R14 R10 K16 ["Unit"]
      220 GETUPVAL                         R15 5
      221 GETTABLEKS                       R15 R15 K17 ["DefaultTangentLength"]
      223 MUL                              R13 R14 R15
      224 GETTABLEKS                       R14 R1 K2 ["SelectedObject"]
      226 GETTABLEKS                       R14 R14 K8 ["Parent"]
      228 CALL                             R12 2 1
      229 SETTABLEKS                       R12 R11 K19 ["RightTangent"]
      231 JUMP                             ; [+69]
      232 GETUPVAL                         R8 0
      233 GETTABLEKS                       R10 R1 K11 ["ControlPoints"]
      235 LENGTH                           R9 R10
      236 JUMPIFNOTEQ                      R8 R9 ; [+64]
      238 GETUPVAL                         R10 0
      239 SUBK                             R9 R10 K12 [1]
      240 GETTABLE                         R8 R2 R9
      241 GETUPVAL                         R10 0
      242 GETTABLE                         R9 R2 R10
      243 GETUPVAL                         R11 6
      244 GETTABLEKS                       R12 R9 K20 ["Position"]
      246 MOVE                             R13 R5
      247 MOVE                             R14 R6
      248 MOVE                             R15 R7
      249 CALL                             R11 4 1
      250 GETUPVAL                         R12 6
      251 GETTABLEKS                       R13 R8 K20 ["Position"]
      253 MOVE                             R14 R5
      254 MOVE                             R15 R6
      255 MOVE                             R16 R7
      256 CALL                             R12 4 1
      257 SUB                              R10 R11 R12
      258 GETTABLEKS                       R11 R10 K21 ["Y"]
      260 JUMPIFNOTEQKN                    R11 K22 [0] ; [+7]
      262 GETTABLEKS                       R11 R10 K23 ["X"]
      264 JUMPIFNOTEQKN                    R11 K22 [0] ; [+3]
      266 GETIMPORT                        R10 K15 [Vector2.one]
      268 GETUPVAL                         R12 0
      269 GETTABLE                         R11 R2 R12
      270 GETUPVAL                         R12 4
      271 GETTABLEKS                       R14 R10 K16 ["Unit"]
      273 GETUPVAL                         R16 5
      274 GETTABLEKS                       R16 R16 K17 ["DefaultTangentLength"]
      276 MINUS                            R15 R16
      277 MUL                              R13 R14 R15
      278 GETTABLEKS                       R14 R1 K2 ["SelectedObject"]
      280 GETTABLEKS                       R14 R14 K8 ["Parent"]
      282 CALL                             R12 2 1
      283 SETTABLEKS                       R12 R11 K18 ["LeftTangent"]
      285 GETUPVAL                         R12 0
      286 GETTABLE                         R11 R2 R12
      287 GETUPVAL                         R12 4
      288 GETTABLEKS                       R14 R10 K16 ["Unit"]
      290 GETUPVAL                         R15 5
      291 GETTABLEKS                       R15 R15 K17 ["DefaultTangentLength"]
      293 MUL                              R13 R14 R15
      294 GETTABLEKS                       R14 R1 K2 ["SelectedObject"]
      296 GETTABLEKS                       R14 R14 K8 ["Parent"]
      298 CALL                             R12 2 1
      299 SETTABLEKS                       R12 R11 K19 ["RightTangent"]
      301 GETUPVAL                         R9 0
      302 GETTABLE                         R8 R4 R9
      303 GETTABLEKS                       R8 R8 K5 ["Sharp"]
      305 JUMPIFNOT                        R8 ; [+6]
      306 GETUPVAL                         R10 7
      307 GETUPVAL                         R11 0
      308 CALL                             R10 1 -1
      309 NAMECALL                         R8 R0 K7 ["dispatch"]
      311 CALL                             R8 -1 0
      312 GETTABLEKS                       R8 R1 K2 ["SelectedObject"]
      314 GETUPVAL                         R10 0
      315 GETUPVAL                         R12 0
      316 GETTABLE                         R11 R2 R12
      317 NAMECALL                         R8 R8 K24 ["UpdateControlPoint"]
      319 CALL                             R8 3 0
      320 GETUPVAL                         R10 2
      321 CALL                             R10 0 -1
      322 NAMECALL                         R8 R0 K7 ["dispatch"]
      324 CALL                             R8 -1 0
      325 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          UPVAL U6
        9 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Thunks"]
       15 GETTABLEKS                       R2 R2 K7 ["RecordChangeHistory"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Src"]
       22 GETTABLEKS                       R3 R3 K8 ["Actions"]
       24 GETTABLEKS                       R3 R3 K9 ["ToggleSharp"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K4 [require]
       29 GETTABLEKS                       R4 R0 K5 ["Src"]
       31 GETTABLEKS                       R4 R4 K10 ["Resources"]
       33 GETTABLEKS                       R4 R4 K11 ["Constants"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K4 [require]
       38 GETTABLEKS                       R5 R0 K5 ["Src"]
       40 GETTABLEKS                       R5 R5 K12 ["Util"]
       42 GETTABLEKS                       R5 R5 K13 ["getAbsPosFromUDim2"]
       44 CALL                             R4 1 1
       45 GETIMPORT                        R5 K4 [require]
       47 GETTABLEKS                       R6 R0 K5 ["Src"]
       49 GETTABLEKS                       R6 R6 K12 ["Util"]
       51 GETTABLEKS                       R6 R6 K14 ["getAbsolutePosition"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K4 [require]
       56 GETTABLEKS                       R7 R0 K5 ["Src"]
       58 GETTABLEKS                       R7 R7 K12 ["Util"]
       60 GETTABLEKS                       R7 R7 K15 ["getControlPointState"]
       62 CALL                             R6 1 1
       63 GETIMPORT                        R7 K4 [require]
       65 GETTABLEKS                       R8 R0 K5 ["Src"]
       67 GETTABLEKS                       R8 R8 K12 ["Util"]
       69 GETTABLEKS                       R8 R8 K16 ["getUDim2ScaleFromVector2"]
       71 CALL                             R7 1 1
       72 DUPCLOSURE                       R8 K17 [PROTO_1]
       73 CAPTURE                          VAL R6
       74 CAPTURE                          VAL R1
       75 CAPTURE                          VAL R5
       76 CAPTURE                          VAL R7
       77 CAPTURE                          VAL R3
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R2
       80 RETURN                           R8 1
