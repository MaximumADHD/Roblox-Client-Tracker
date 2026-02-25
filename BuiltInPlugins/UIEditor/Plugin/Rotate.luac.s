PROTO_0:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["Frame"]
        3 CALL                             R0 1 1
        4 SETUPVAL                         R0 0
        5 GETUPVAL                         R0 0
        6 LOADK                            R1 K4 ["UIEditorRotationHandleParent"]
        7 SETTABLEKS                       R1 R0 K5 ["Name"]
        9 GETUPVAL                         R0 0
       10 LOADN                            R1 1
       11 SETTABLEKS                       R1 R0 K6 ["BackgroundTransparency"]
       13 GETUPVAL                         R0 0
       14 GETIMPORT                        R1 K8 [Color3.new]
       16 LOADN                            R2 0
       17 LOADN                            R3 0
       18 LOADN                            R4 255
       19 CALL                             R1 3 1
       20 SETTABLEKS                       R1 R0 K9 ["BackgroundColor3"]
       22 GETUPVAL                         R0 0
       23 LOADN                            R1 0
       24 SETTABLEKS                       R1 R0 K10 ["BorderSizePixel"]
       26 GETUPVAL                         R0 0
       27 GETUPVAL                         R1 1
       28 LOADK                            R3 K11 ["RotationHandles"]
       29 NAMECALL                         R1 R1 K12 ["findOrCreateScreenGui"]
       31 CALL                             R1 2 1
       32 SETTABLEKS                       R1 R0 K13 ["Parent"]
       34 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Destroy"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 1
        2 SETTABLE                         R2 R1 R0
        3 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 0
        2 SETTABLE                         R2 R1 R0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["NOT_SET"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K1 ["FIRST"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R1 R4 K2 ["LAST"]
        9 LOADN                            R2 1
       10 FORNPREP                         R1
       11 GETUPVAL                         R5 1
       12 GETTABLE                         R4 R5 R3
       13 JUMPIFNOT                        R4 ; [+2]
       14 MOVE                             R0 R3
       15 RETURN                           R0 1
       16 FORNLOOP                         R1
       17 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["FIRST"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R0 R3 K1 ["LAST"]
        6 LOADN                            R1 1
        7 FORNPREP                         R0
        8 GETUPVAL                         R3 1
        9 LOADB                            R4 0
       10 SETTABLE                         R4 R3 R2
       11 FORNLOOP                         R0
       12 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 LOADB                            R4 1
        3 SETTABLE                         R4 R3 R2
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 LOADB                            R4 0
        3 SETTABLE                         R4 R3 R2
        4 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+4]
        2 GETIMPORT                        R0 K1 [error]
        4 LOADK                            R1 K2 ["Could not create the rotation handles because the parent was nil."]
        5 CALL                             R0 1 0
        6 NEWTABLE                         R0 8 0
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R1 R2 K3 ["E"]
       11 GETIMPORT                        R2 K6 [Vector2.new]
       13 LOADN                            R3 0
       14 LOADK                            R4 K7 [0.5]
       15 CALL                             R2 2 1
       16 SETTABLE                         R2 R0 R1
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R1 R2 K8 ["SE"]
       20 GETIMPORT                        R2 K6 [Vector2.new]
       22 LOADN                            R3 0
       23 LOADN                            R4 0
       24 CALL                             R2 2 1
       25 SETTABLE                         R2 R0 R1
       26 GETUPVAL                         R2 1
       27 GETTABLEKS                       R1 R2 K9 ["S"]
       29 GETIMPORT                        R2 K6 [Vector2.new]
       31 LOADK                            R3 K7 [0.5]
       32 LOADN                            R4 0
       33 CALL                             R2 2 1
       34 SETTABLE                         R2 R0 R1
       35 GETUPVAL                         R2 1
       36 GETTABLEKS                       R1 R2 K10 ["SW"]
       38 GETIMPORT                        R2 K6 [Vector2.new]
       40 LOADN                            R3 1
       41 LOADN                            R4 0
       42 CALL                             R2 2 1
       43 SETTABLE                         R2 R0 R1
       44 GETUPVAL                         R2 1
       45 GETTABLEKS                       R1 R2 K11 ["W"]
       47 GETIMPORT                        R2 K6 [Vector2.new]
       49 LOADN                            R3 1
       50 LOADK                            R4 K7 [0.5]
       51 CALL                             R2 2 1
       52 SETTABLE                         R2 R0 R1
       53 GETUPVAL                         R2 1
       54 GETTABLEKS                       R1 R2 K12 ["NW"]
       56 GETIMPORT                        R2 K6 [Vector2.new]
       58 LOADN                            R3 1
       59 LOADN                            R4 1
       60 CALL                             R2 2 1
       61 SETTABLE                         R2 R0 R1
       62 GETUPVAL                         R2 1
       63 GETTABLEKS                       R1 R2 K13 ["N"]
       65 GETIMPORT                        R2 K6 [Vector2.new]
       67 LOADK                            R3 K7 [0.5]
       68 LOADN                            R4 1
       69 CALL                             R2 2 1
       70 SETTABLE                         R2 R0 R1
       71 GETUPVAL                         R2 1
       72 GETTABLEKS                       R1 R2 K14 ["NE"]
       74 GETIMPORT                        R2 K6 [Vector2.new]
       76 LOADN                            R3 0
       77 LOADN                            R4 1
       78 CALL                             R2 2 1
       79 SETTABLE                         R2 R0 R1
       80 NEWTABLE                         R1 8 0
       82 GETUPVAL                         R3 1
       83 GETTABLEKS                       R2 R3 K3 ["E"]
       85 GETIMPORT                        R3 K16 [UDim2.new]
       87 LOADN                            R4 1
       88 LOADN                            R5 0
       89 LOADK                            R6 K7 [0.5]
       90 LOADN                            R7 0
       91 CALL                             R3 4 1
       92 SETTABLE                         R3 R1 R2
       93 GETUPVAL                         R3 1
       94 GETTABLEKS                       R2 R3 K8 ["SE"]
       96 GETIMPORT                        R3 K16 [UDim2.new]
       98 LOADN                            R4 1
       99 LOADN                            R5 0
      100 LOADN                            R6 1
      101 LOADN                            R7 0
      102 CALL                             R3 4 1
      103 SETTABLE                         R3 R1 R2
      104 GETUPVAL                         R3 1
      105 GETTABLEKS                       R2 R3 K9 ["S"]
      107 GETIMPORT                        R3 K16 [UDim2.new]
      109 LOADK                            R4 K7 [0.5]
      110 LOADN                            R5 0
      111 LOADN                            R6 1
      112 LOADN                            R7 0
      113 CALL                             R3 4 1
      114 SETTABLE                         R3 R1 R2
      115 GETUPVAL                         R3 1
      116 GETTABLEKS                       R2 R3 K10 ["SW"]
      118 GETIMPORT                        R3 K16 [UDim2.new]
      120 LOADN                            R4 0
      121 LOADN                            R5 0
      122 LOADN                            R6 1
      123 LOADN                            R7 0
      124 CALL                             R3 4 1
      125 SETTABLE                         R3 R1 R2
      126 GETUPVAL                         R3 1
      127 GETTABLEKS                       R2 R3 K11 ["W"]
      129 GETIMPORT                        R3 K16 [UDim2.new]
      131 LOADN                            R4 0
      132 LOADN                            R5 0
      133 LOADK                            R6 K7 [0.5]
      134 LOADN                            R7 0
      135 CALL                             R3 4 1
      136 SETTABLE                         R3 R1 R2
      137 GETUPVAL                         R3 1
      138 GETTABLEKS                       R2 R3 K12 ["NW"]
      140 GETIMPORT                        R3 K16 [UDim2.new]
      142 LOADN                            R4 0
      143 LOADN                            R5 0
      144 LOADN                            R6 0
      145 LOADN                            R7 0
      146 CALL                             R3 4 1
      147 SETTABLE                         R3 R1 R2
      148 GETUPVAL                         R3 1
      149 GETTABLEKS                       R2 R3 K13 ["N"]
      151 GETIMPORT                        R3 K16 [UDim2.new]
      153 LOADK                            R4 K7 [0.5]
      154 LOADN                            R5 0
      155 LOADN                            R6 0
      156 LOADN                            R7 0
      157 CALL                             R3 4 1
      158 SETTABLE                         R3 R1 R2
      159 GETUPVAL                         R3 1
      160 GETTABLEKS                       R2 R3 K14 ["NE"]
      162 GETIMPORT                        R3 K16 [UDim2.new]
      164 LOADN                            R4 1
      165 LOADN                            R5 0
      166 LOADN                            R6 0
      167 LOADN                            R7 0
      168 CALL                             R3 4 1
      169 SETTABLE                         R3 R1 R2
      170 GETUPVAL                         R5 1
      171 GETTABLEKS                       R4 R5 K17 ["FIRST"]
      173 GETUPVAL                         R5 1
      174 GETTABLEKS                       R2 R5 K18 ["LAST"]
      176 LOADN                            R3 1
      177 FORNPREP                         R2
      178 GETIMPORT                        R5 K20 [Instance.new]
      180 LOADK                            R6 K21 ["Frame"]
      181 CALL                             R5 1 1
      182 LOADK                            R7 K22 ["RotationHandle_"]
      183 GETUPVAL                         R8 1
      184 MOVE                             R10 R4
      185 NAMECALL                         R8 R8 K23 ["toShortName"]
      187 CALL                             R8 2 1
      188 CONCAT                           R6 R7 R8
      189 SETTABLEKS                       R6 R5 K24 ["Name"]
      191 GETTABLE                         R6 R0 R4
      192 SETTABLEKS                       R6 R5 K25 ["AnchorPoint"]
      194 GETIMPORT                        R6 K16 [UDim2.new]
      196 LOADN                            R7 0
      197 LOADN                            R8 20
      198 LOADN                            R9 0
      199 LOADN                            R10 20
      200 CALL                             R6 4 1
      201 SETTABLEKS                       R6 R5 K26 ["Size"]
      203 GETTABLE                         R6 R1 R4
      204 SETTABLEKS                       R6 R5 K27 ["Position"]
      206 GETIMPORT                        R6 K29 [Color3.new]
      208 LOADN                            R7 0
      209 LOADN                            R8 255
      210 LOADN                            R9 0
      211 CALL                             R6 3 1
      212 SETTABLEKS                       R6 R5 K30 ["BackgroundColor3"]
      214 LOADN                            R6 1
      215 SETTABLEKS                       R6 R5 K31 ["BackgroundTransparency"]
      217 LOADN                            R6 0
      218 SETTABLEKS                       R6 R5 K32 ["BorderSizePixel"]
      220 GETTABLEKS                       R6 R5 K33 ["MouseEnter"]
      222 NEWCLOSURE                       R8 P0
      223 CAPTURE                          VAL R4
      224 CAPTURE                          UPVAL U2
      225 NAMECALL                         R6 R6 K34 ["connect"]
      227 CALL                             R6 2 0
      228 GETTABLEKS                       R6 R5 K35 ["MouseLeave"]
      230 NEWCLOSURE                       R8 P1
      231 CAPTURE                          VAL R4
      232 CAPTURE                          UPVAL U2
      233 NAMECALL                         R6 R6 K34 ["connect"]
      235 CALL                             R6 2 0
      236 GETUPVAL                         R6 0
      237 SETTABLEKS                       R6 R5 K36 ["Parent"]
      239 GETUPVAL                         R6 3
      240 SETTABLE                         R5 R6 R4
      241 FORNLOOP                         R2
      242 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["Frame"]
        3 CALL                             R0 1 1
        4 SETUPVAL                         R0 0
        5 GETUPVAL                         R0 0
        6 LOADK                            R1 K4 ["UIEditorRotationHandleParent"]
        7 SETTABLEKS                       R1 R0 K5 ["Name"]
        9 GETUPVAL                         R0 0
       10 LOADN                            R1 1
       11 SETTABLEKS                       R1 R0 K6 ["BackgroundTransparency"]
       13 GETUPVAL                         R0 0
       14 GETIMPORT                        R1 K8 [Color3.new]
       16 LOADN                            R2 0
       17 LOADN                            R3 0
       18 LOADN                            R4 255
       19 CALL                             R1 3 1
       20 SETTABLEKS                       R1 R0 K9 ["BackgroundColor3"]
       22 GETUPVAL                         R0 0
       23 LOADN                            R1 0
       24 SETTABLEKS                       R1 R0 K10 ["BorderSizePixel"]
       26 GETUPVAL                         R0 0
       27 GETUPVAL                         R1 1
       28 LOADK                            R3 K11 ["RotationHandles"]
       29 NAMECALL                         R1 R1 K12 ["findOrCreateScreenGui"]
       31 CALL                             R1 2 1
       32 SETTABLEKS                       R1 R0 K13 ["Parent"]
       34 GETUPVAL                         R0 2
       35 CALL                             R0 0 0
       36 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+2]
        2 LOADN                            R1 0
        3 RETURN                           R1 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K0 ["AbsoluteRotation"]
        7 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K0 ["NOT_SET"]
        6 GETUPVAL                         R6 1
        7 GETTABLEKS                       R5 R6 K1 ["FIRST"]
        9 GETUPVAL                         R6 1
       10 GETTABLEKS                       R3 R6 K2 ["LAST"]
       12 LOADN                            R4 1
       13 FORNPREP                         R3
       14 GETUPVAL                         R7 2
       15 GETTABLE                         R6 R7 R5
       16 JUMPIFNOT                        R6 ; [+2]
       17 MOVE                             R2 R5
       18 JUMP                             ; [+1]
       19 FORNLOOP                         R3
       20 MOVE                             R1 R2
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R2 R3 K0 ["NOT_SET"]
       24 JUMPIFEQ                         R1 R2 ; [+15]
       26 GETUPVAL                         R3 3
       27 GETTABLEKS                       R2 R3 K3 ["AbsoluteRotation"]
       29 GETUPVAL                         R3 4
       30 MOVE                             R5 R1
       31 MOVE                             R6 R2
       32 NAMECALL                         R3 R3 K4 ["calcMouseIconDirection"]
       34 CALL                             R3 3 1
       35 GETUPVAL                         R4 4
       36 MOVE                             R6 R3
       37 NAMECALL                         R4 R4 K5 ["setToRotateIcon"]
       39 CALL                             R4 2 0
       40 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["NOT_SET"]
        3 GETUPVAL                         R7 0
        4 GETTABLEKS                       R6 R7 K1 ["FIRST"]
        6 GETUPVAL                         R7 0
        7 GETTABLEKS                       R4 R7 K2 ["LAST"]
        9 LOADN                            R5 1
       10 FORNPREP                         R4
       11 GETUPVAL                         R8 1
       12 GETTABLE                         R7 R8 R6
       13 JUMPIFNOT                        R7 ; [+2]
       14 MOVE                             R3 R6
       15 JUMP                             ; [+1]
       16 FORNLOOP                         R4
       17 MOVE                             R2 R3
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R3 R4 K0 ["NOT_SET"]
       21 JUMPIFNOTEQ                      R2 R3 ; [+2]
       23 LOADB                            R1 0 +1
       24 LOADB                            R1 1
       25 RETURN                           R1 1

PROTO_13:
        0 GETTABLEKS                       R3 R0 K0 ["AbsolutePosition"]
        2 GETTABLEKS                       R2 R3 K1 ["X"]
        4 GETTABLEKS                       R6 R0 K3 ["AbsoluteSize"]
        6 GETTABLEKS                       R5 R6 K1 ["X"]
        8 DIVK                             R4 R5 K2 [2]
        9 FASTCALL1                        MATH_FLOOR R4 ; [+2]
       10 GETIMPORT                        R3 K6 [math.floor]
       12 CALL                             R3 1 1
       13 ADD                              R1 R2 R3
       14 GETTABLEKS                       R4 R0 K0 ["AbsolutePosition"]
       16 GETTABLEKS                       R3 R4 K7 ["Y"]
       18 GETTABLEKS                       R7 R0 K3 ["AbsoluteSize"]
       20 GETTABLEKS                       R6 R7 K7 ["Y"]
       22 DIVK                             R5 R6 K2 [2]
       23 FASTCALL1                        MATH_FLOOR R5 ; [+2]
       24 GETIMPORT                        R4 K6 [math.floor]
       26 CALL                             R4 1 1
       27 ADD                              R2 R3 R4
       28 GETIMPORT                        R3 K10 [Vector2.new]
       30 MOVE                             R4 R1
       31 MOVE                             R5 R2
       32 CALL                             R3 2 -1
       33 RETURN                           R3 -1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K0 ["NOT_SET"]
        6 GETUPVAL                         R7 1
        7 GETTABLEKS                       R6 R7 K1 ["FIRST"]
        9 GETUPVAL                         R7 1
       10 GETTABLEKS                       R4 R7 K2 ["LAST"]
       12 LOADN                            R5 1
       13 FORNPREP                         R4
       14 GETUPVAL                         R8 2
       15 GETTABLE                         R7 R8 R6
       16 JUMPIFNOT                        R7 ; [+2]
       17 MOVE                             R3 R6
       18 JUMP                             ; [+1]
       19 FORNLOOP                         R4
       20 MOVE                             R2 R3
       21 GETUPVAL                         R3 1
       22 MOVE                             R5 R2
       23 NAMECALL                         R3 R3 K3 ["isValid"]
       25 CALL                             R3 2 1
       26 JUMPIF                           R3 ; [+1]
       27 RETURN                           R0 0
       28 LOADB                            R3 1
       29 SETUPVAL                         R3 3
       30 GETUPVAL                         R3 0
       31 LOADK                            R5 K4 ["Rotation"]
       32 NAMECALL                         R3 R3 K5 ["GetStyled"]
       34 CALL                             R3 2 1
       35 SETUPVAL                         R3 4
       36 SETUPVAL                         R3 5
       37 GETUPVAL                         R5 0
       38 GETTABLEKS                       R8 R5 K6 ["AbsolutePosition"]
       40 GETTABLEKS                       R7 R8 K7 ["X"]
       42 GETTABLEKS                       R11 R5 K9 ["AbsoluteSize"]
       44 GETTABLEKS                       R10 R11 K7 ["X"]
       46 DIVK                             R9 R10 K8 [2]
       47 FASTCALL1                        MATH_FLOOR R9 ; [+2]
       48 GETIMPORT                        R8 K12 [math.floor]
       50 CALL                             R8 1 1
       51 ADD                              R6 R7 R8
       52 GETTABLEKS                       R9 R5 K6 ["AbsolutePosition"]
       54 GETTABLEKS                       R8 R9 K13 ["Y"]
       56 GETTABLEKS                       R12 R5 K9 ["AbsoluteSize"]
       58 GETTABLEKS                       R11 R12 K13 ["Y"]
       60 DIVK                             R10 R11 K8 [2]
       61 FASTCALL1                        MATH_FLOOR R10 ; [+2]
       62 GETIMPORT                        R9 K12 [math.floor]
       64 CALL                             R9 1 1
       65 ADD                              R7 R8 R9
       66 GETIMPORT                        R8 K16 [Vector2.new]
       68 MOVE                             R9 R6
       69 MOVE                             R10 R7
       70 CALL                             R8 2 1
       71 MOVE                             R4 R8
       72 SETUPVAL                         R4 6
       73 LOADN                            R4 0
       74 SETUPVAL                         R4 7
       75 GETUPVAL                         R5 6
       76 SUB                              R4 R1 R5
       77 SETUPVAL                         R4 8
       78 GETUPVAL                         R4 9
       79 MOVE                             R6 R1
       80 NAMECALL                         R4 R4 K17 ["onRotateBegan"]
       82 CALL                             R4 2 0
       83 RETURN                           R0 0

PROTO_15:
        0 ADDK                             R2 R0 K0 [0.5]
        1 FASTCALL1                        MATH_FLOOR R2 ; [+2]
        2 GETIMPORT                        R1 K3 [math.floor]
        4 CALL                             R1 1 1
        5 RETURN                           R1 1

PROTO_16:
        0 LOADN                            R1 0
        1 JUMPIFNOTLE                      R1 R0 ; [+3]
        3 MODK                             R1 R0 K0 [360]
        4 RETURN                           R1 1
        5 MINUS                            R3 R0
        6 MODK                             R2 R3 K0 [360]
        7 MINUS                            R1 R2
        8 RETURN                           R1 1

PROTO_17:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R3 1
        4 SUB                              R2 R1 R3
        5 GETUPVAL                         R3 2
        6 GETUPVAL                         R5 3
        7 MOVE                             R6 R2
        8 NAMECALL                         R3 R3 K0 ["angleVector2"]
       10 CALL                             R3 3 1
       11 FASTCALL1                        MATH_DEG R3 ; [+3]
       12 MOVE                             R5 R3
       13 GETIMPORT                        R4 K3 [math.deg]
       15 CALL                             R4 1 1
       16 GETUPVAL                         R6 4
       17 ADD                              R5 R6 R4
       18 SETUPVAL                         R5 4
       19 GETUPVAL                         R7 5
       20 GETUPVAL                         R8 4
       21 ADD                              R6 R7 R8
       22 ADDK                             R8 R6 K4 [0.5]
       23 FASTCALL1                        MATH_FLOOR R8 ; [+2]
       24 GETIMPORT                        R7 K6 [math.floor]
       26 CALL                             R7 1 1
       27 MOVE                             R5 R7
       28 GETUPVAL                         R6 6
       29 LOADN                            R8 0
       30 JUMPIFNOTLE                      R8 R5 ; [+3]
       32 MODK                             R7 R5 K7 [360]
       33 JUMP                             ; [+4]
       34 MINUS                            R9 R5
       35 MODK                             R8 R9 K7 [360]
       36 MINUS                            R7 R8
       37 JUMP                             ; [0]
       38 SETTABLEKS                       R7 R6 K8 ["Rotation"]
       40 SETUPVAL                         R2 3
       41 GETUPVAL                         R7 4
       42 FASTCALL1                        MATH_ABS R7 ; [+2]
       43 GETIMPORT                        R6 K10 [math.abs]
       45 CALL                             R6 1 1
       46 LOADN                            R7 90
       47 JUMPIFNOTLT                      R7 R6 ; [+9]
       49 GETUPVAL                         R6 6
       50 LOADK                            R8 K8 ["Rotation"]
       51 NAMECALL                         R6 R6 K11 ["GetStyled"]
       53 CALL                             R6 2 1
       54 SETUPVAL                         R6 5
       55 LOADN                            R6 0
       56 SETUPVAL                         R6 4
       57 GETUPVAL                         R6 7
       58 NAMECALL                         R6 R6 K12 ["update"]
       60 CALL                             R6 1 0
       61 GETUPVAL                         R6 8
       62 MOVE                             R8 R1
       63 NAMECALL                         R6 R6 K13 ["onRotateChanged"]
       65 CALL                             R6 2 0
       66 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R2 1
        4 LOADK                            R4 K0 ["Rotation"]
        5 NAMECALL                         R2 R2 K1 ["GetStyled"]
        7 CALL                             R2 2 1
        8 GETUPVAL                         R3 2
        9 JUMPIFEQ                         R2 R3 ; [+6]
       11 GETUPVAL                         R2 3
       12 LOADK                            R4 K2 ["Rotate object"]
       13 NAMECALL                         R2 R2 K3 ["SetWaypoint"]
       15 CALL                             R2 2 0
       16 LOADB                            R2 0
       17 SETUPVAL                         R2 0
       18 LOADNIL                          R2
       19 SETUPVAL                         R2 4
       20 LOADNIL                          R2
       21 SETUPVAL                         R2 5
       22 GETUPVAL                         R2 6
       23 NAMECALL                         R2 R2 K4 ["update"]
       25 CALL                             R2 1 0
       26 GETUPVAL                         R2 7
       27 MOVE                             R4 R1
       28 NAMECALL                         R2 R2 K5 ["onRotateEnded"]
       30 CALL                             R2 2 0
       31 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

PROTO_20:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 0
        5 LOADK                            R4 K0 ["AnchorPoint"]
        6 NAMECALL                         R2 R2 K1 ["GetStyled"]
        8 CALL                             R2 2 1
        9 SETTABLEKS                       R2 R1 K0 ["AnchorPoint"]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R1 R2 K2 ["AbsolutePosition"]
       14 GETUPVAL                         R2 1
       15 GETIMPORT                        R3 K5 [UDim2.new]
       17 LOADN                            R4 0
       18 GETTABLEKS                       R5 R1 K6 ["X"]
       20 LOADN                            R6 0
       21 GETTABLEKS                       R7 R1 K7 ["Y"]
       23 CALL                             R3 4 1
       24 SETTABLEKS                       R3 R2 K8 ["Position"]
       26 GETUPVAL                         R3 0
       27 GETTABLEKS                       R2 R3 K9 ["AbsoluteSize"]
       29 GETUPVAL                         R3 1
       30 GETIMPORT                        R4 K5 [UDim2.new]
       32 LOADN                            R5 0
       33 GETTABLEKS                       R6 R2 K6 ["X"]
       35 LOADN                            R7 0
       36 GETTABLEKS                       R8 R2 K7 ["Y"]
       38 CALL                             R4 4 1
       39 SETTABLEKS                       R4 R3 K10 ["Size"]
       41 GETUPVAL                         R3 1
       42 GETUPVAL                         R5 0
       43 GETTABLEKS                       R4 R5 K11 ["AbsoluteRotation"]
       45 SETTABLEKS                       R4 R3 K12 ["Rotation"]
       47 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["getFilteredSelection"]
        3 CALL                             R1 1 1
        4 LENGTH                           R2 R1
        5 JUMPIFNOTEQKN                    R2 K1 [1] ; [+12]
        7 GETTABLEN                        R2 R1 1
        8 SETUPVAL                         R2 1
        9 GETUPVAL                         R2 2
       10 NAMECALL                         R2 R2 K2 ["update"]
       12 CALL                             R2 1 0
       13 GETUPVAL                         R2 3
       14 LOADB                            R3 1
       15 SETTABLEKS                       R3 R2 K3 ["Visible"]
       17 RETURN                           R0 0
       18 LOADNIL                          R2
       19 SETUPVAL                         R2 1
       20 GETUPVAL                         R2 3
       21 LOADB                            R3 0
       22 SETTABLEKS                       R3 R2 K3 ["Visible"]
       24 RETURN                           R0 0

PROTO_22:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["Frame"]
        3 CALL                             R1 1 1
        4 SETUPVAL                         R1 0
        5 GETUPVAL                         R1 0
        6 LOADK                            R2 K4 ["UIEditorRotationHandleParent"]
        7 SETTABLEKS                       R2 R1 K5 ["Name"]
        9 GETUPVAL                         R1 0
       10 LOADN                            R2 1
       11 SETTABLEKS                       R2 R1 K6 ["BackgroundTransparency"]
       13 GETUPVAL                         R1 0
       14 GETIMPORT                        R2 K8 [Color3.new]
       16 LOADN                            R3 0
       17 LOADN                            R4 0
       18 LOADN                            R5 255
       19 CALL                             R2 3 1
       20 SETTABLEKS                       R2 R1 K9 ["BackgroundColor3"]
       22 GETUPVAL                         R1 0
       23 LOADN                            R2 0
       24 SETTABLEKS                       R2 R1 K10 ["BorderSizePixel"]
       26 GETUPVAL                         R1 0
       27 GETUPVAL                         R2 1
       28 LOADK                            R4 K11 ["RotationHandles"]
       29 NAMECALL                         R2 R2 K12 ["findOrCreateScreenGui"]
       31 CALL                             R2 2 1
       32 SETTABLEKS                       R2 R1 K13 ["Parent"]
       34 GETUPVAL                         R1 2
       35 CALL                             R1 0 0
       36 GETUPVAL                         R4 3
       37 GETTABLEKS                       R3 R4 K14 ["FIRST"]
       39 GETUPVAL                         R4 3
       40 GETTABLEKS                       R1 R4 K15 ["LAST"]
       42 LOADN                            R2 1
       43 FORNPREP                         R1
       44 GETUPVAL                         R4 4
       45 LOADB                            R5 0
       46 SETTABLE                         R5 R4 R3
       47 FORNLOOP                         R1
       48 LOADB                            R1 0
       49 SETUPVAL                         R1 5
       50 GETUPVAL                         R1 6
       51 NAMECALL                         R1 R1 K16 ["update"]
       53 CALL                             R1 1 0
       54 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+4]
        2 GETUPVAL                         R1 0
        3 NAMECALL                         R1 R1 K0 ["Destroy"]
        5 CALL                             R1 1 0
        6 LOADB                            R1 0
        7 SETUPVAL                         R1 1
        8 RETURN                           R0 0

PROTO_24:
        0 SETUPVAL                         R1 0
        1 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 16 0
        3 GETIMPORT                        R1 K1 [require]
        5 GETIMPORT                        R4 K3 [script]
        7 GETTABLEKS                       R3 R4 K4 ["Parent"]
        9 GETTABLEKS                       R2 R3 K5 ["CoreGuiManager"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K1 [require]
       14 GETIMPORT                        R6 K3 [script]
       16 GETTABLEKS                       R5 R6 K4 ["Parent"]
       18 GETTABLEKS                       R4 R5 K6 ["Enum"]
       20 GETTABLEKS                       R3 R4 K7 ["Direction"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K1 [require]
       25 GETIMPORT                        R6 K3 [script]
       27 GETTABLEKS                       R5 R6 K4 ["Parent"]
       29 GETTABLEKS                       R4 R5 K8 ["MouseIconManager"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K1 [require]
       34 GETIMPORT                        R7 K3 [script]
       36 GETTABLEKS                       R6 R7 K4 ["Parent"]
       38 GETTABLEKS                       R5 R6 K9 ["SelectionManager"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K1 [require]
       43 GETIMPORT                        R8 K3 [script]
       45 GETTABLEKS                       R7 R8 K4 ["Parent"]
       47 GETTABLEKS                       R6 R7 K10 ["Utility"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K12 [game]
       52 LOADK                            R8 K13 ["ChangeHistoryService"]
       53 NAMECALL                         R6 R6 K14 ["GetService"]
       55 CALL                             R6 2 1
       56 LOADNIL                          R7
       57 LOADNIL                          R8
       58 NEWTABLE                         R9 0 0
       60 NEWTABLE                         R10 0 0
       62 LOADB                            R11 0
       63 LOADN                            R12 0
       64 LOADN                            R13 0
       65 LOADN                            R14 0
       66 LOADNIL                          R15
       67 LOADNIL                          R16
       68 LOADNIL                          R17
       69 NEWTABLE                         R18 0 0
       71 NEWCLOSURE                       R19 P0
       72 CAPTURE                          REF R17
       73 CAPTURE                          VAL R1
       74 NEWCLOSURE                       R20 P1
       75 CAPTURE                          REF R17
       76 DUPCLOSURE                       R21 K15 [PROTO_2]
       77 CAPTURE                          VAL R10
       78 DUPCLOSURE                       R22 K16 [PROTO_3]
       79 CAPTURE                          VAL R10
       80 DUPCLOSURE                       R23 K17 [PROTO_4]
       81 CAPTURE                          VAL R2
       82 CAPTURE                          VAL R10
       83 DUPCLOSURE                       R24 K18 [PROTO_5]
       84 CAPTURE                          VAL R2
       85 CAPTURE                          VAL R10
       86 NEWCLOSURE                       R25 P6
       87 CAPTURE                          REF R17
       88 CAPTURE                          VAL R2
       89 CAPTURE                          VAL R10
       90 CAPTURE                          VAL R18
       91 NEWCLOSURE                       R26 P7
       92 CAPTURE                          REF R17
       93 CAPTURE                          VAL R1
       94 CAPTURE                          VAL R25
       95 NEWCLOSURE                       R27 P8
       96 CAPTURE                          REF R8
       97 SETTABLEKS                       R27 R0 K19 ["getRotation"]
       99 NEWCLOSURE                       R27 P9
      100 CAPTURE                          REF R11
      101 CAPTURE                          VAL R2
      102 CAPTURE                          VAL R10
      103 CAPTURE                          REF R8
      104 CAPTURE                          VAL R3
      105 SETTABLEKS                       R27 R0 K20 ["updateMouseIcon"]
      107 DUPCLOSURE                       R27 K21 [PROTO_12]
      108 CAPTURE                          VAL R2
      109 CAPTURE                          VAL R10
      110 SETTABLEKS                       R27 R0 K22 ["isOverAHandle"]
      112 DUPCLOSURE                       R27 K23 [PROTO_13]
      113 NEWCLOSURE                       R28 P12
      114 CAPTURE                          REF R8
      115 CAPTURE                          VAL R2
      116 CAPTURE                          VAL R10
      117 CAPTURE                          REF R11
      118 CAPTURE                          REF R12
      119 CAPTURE                          REF R13
      120 CAPTURE                          REF R15
      121 CAPTURE                          REF R14
      122 CAPTURE                          REF R16
      123 CAPTURE                          REF R7
      124 SETTABLEKS                       R28 R0 K24 ["onMouseDown"]
      126 DUPCLOSURE                       R28 K25 [PROTO_15]
      127 DUPCLOSURE                       R29 K26 [PROTO_16]
      128 NEWCLOSURE                       R30 P15
      129 CAPTURE                          REF R11
      130 CAPTURE                          REF R15
      131 CAPTURE                          VAL R5
      132 CAPTURE                          REF R16
      133 CAPTURE                          REF R14
      134 CAPTURE                          REF R13
      135 CAPTURE                          REF R8
      136 CAPTURE                          VAL R0
      137 CAPTURE                          REF R7
      138 SETTABLEKS                       R30 R0 K27 ["onMouseMove"]
      140 NEWCLOSURE                       R30 P16
      141 CAPTURE                          REF R11
      142 CAPTURE                          REF R8
      143 CAPTURE                          REF R12
      144 CAPTURE                          VAL R6
      145 CAPTURE                          REF R15
      146 CAPTURE                          REF R16
      147 CAPTURE                          VAL R0
      148 CAPTURE                          REF R7
      149 SETTABLEKS                       R30 R0 K28 ["onMouseUp"]
      151 NEWCLOSURE                       R30 P17
      152 CAPTURE                          REF R11
      153 SETTABLEKS                       R30 R0 K29 ["isRotating"]
      155 NEWCLOSURE                       R30 P18
      156 CAPTURE                          REF R8
      157 CAPTURE                          REF R17
      158 SETTABLEKS                       R30 R0 K30 ["update"]
      160 NEWCLOSURE                       R30 P19
      161 CAPTURE                          VAL R4
      162 CAPTURE                          REF R8
      163 CAPTURE                          VAL R0
      164 CAPTURE                          REF R17
      165 SETTABLEKS                       R30 R0 K31 ["onSelectionChanged"]
      167 NEWCLOSURE                       R30 P20
      168 CAPTURE                          REF R17
      169 CAPTURE                          VAL R1
      170 CAPTURE                          VAL R25
      171 CAPTURE                          VAL R2
      172 CAPTURE                          VAL R10
      173 CAPTURE                          REF R11
      174 CAPTURE                          VAL R0
      175 SETTABLEKS                       R30 R0 K32 ["On"]
      177 NEWCLOSURE                       R30 P21
      178 CAPTURE                          REF R17
      179 CAPTURE                          REF R11
      180 SETTABLEKS                       R30 R0 K33 ["Off"]
      182 NEWCLOSURE                       R30 P22
      183 CAPTURE                          REF R7
      184 SETTABLEKS                       R30 R0 K34 ["setActionMediator"]
      186 CLOSEUPVALS                      R7
      187 RETURN                           R0 1
