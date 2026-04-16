PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K0 ["BLACK"]
        6 LOADK                            R4 K1 [0.1]
        7 NAMECALL                         R1 R0 K2 ["Lerp"]
        9 CALL                             R1 3 -1
       10 RETURN                           R1 -1
       11 GETUPVAL                         R1 2
       12 JUMPIFNOT                        R1 ; [+12]
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R1 R2 K3 ["Z_AXIS"]
       16 JUMPIFNOTEQ                      R0 R1 ; [+8]
       18 GETIMPORT                        R1 K6 [Color3.new]
       20 LOADN                            R2 0
       21 LOADN                            R3 0
       22 LOADK                            R4 K7 [0.6]
       23 CALL                             R1 3 -1
       24 RETURN                           R1 -1
       25 GETUPVAL                         R4 1
       26 GETTABLEKS                       R3 R4 K0 ["BLACK"]
       28 GETUPVAL                         R5 2
       29 JUMPIFNOT                        R5 ; [+2]
       30 LOADK                            R4 K8 [0.2]
       31 JUMP                             ; [+1]
       32 LOADK                            R4 K9 [0.3]
       33 NAMECALL                         R1 R0 K2 ["Lerp"]
       35 CALL                             R1 3 -1
       36 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["WHITE"]
        3 LOADK                            R4 K1 [0.1]
        4 NAMECALL                         R1 R0 K2 ["Lerp"]
        6 CALL                             R1 3 -1
        7 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["Flags"]
       11 GETTABLEKS                       R2 R3 K6 ["getFFlagDraggerImprovements"]
       13 CALL                             R1 1 1
       14 CALL                             R1 0 1
       15 GETIMPORT                        R2 K4 [require]
       17 GETTABLEKS                       R4 R0 K5 ["Flags"]
       19 GETTABLEKS                       R3 R4 K7 ["getFFlagNextGenDraggers"]
       21 CALL                             R2 1 1
       22 NEWTABLE                         R3 16 0
       24 GETIMPORT                        R4 K10 [Color3.new]
       26 LOADN                            R5 1
       27 LOADN                            R6 1
       28 LOADN                            R7 1
       29 CALL                             R4 3 1
       30 SETTABLEKS                       R4 R3 K11 ["WHITE"]
       32 GETIMPORT                        R4 K10 [Color3.new]
       34 LOADN                            R5 0
       35 LOADN                            R6 0
       36 LOADN                            R7 0
       37 CALL                             R4 3 1
       38 SETTABLEKS                       R4 R3 K12 ["BLACK"]
       40 MOVE                             R4 R2
       41 CALL                             R4 0 1
       42 JUMPIFNOT                        R4 ; [+56]
       43 GETIMPORT                        R4 K10 [Color3.new]
       45 LOADK                            R5 K13 [0.5]
       46 LOADK                            R6 K13 [0.5]
       47 LOADK                            R7 K13 [0.5]
       48 CALL                             R4 3 1
       49 SETTABLEKS                       R4 R3 K14 ["GRAY"]
       51 GETIMPORT                        R4 K16 [workspace]
       53 LOADK                            R6 K17 ["DRAGGERS_RED"]
       54 NAMECALL                         R4 R4 K18 ["GetAttribute"]
       56 CALL                             R4 2 1
       57 JUMPIF                           R4 ; [+4]
       58 GETIMPORT                        R4 K20 [Color3.fromHex]
       60 LOADK                            R5 K21 ["#E23D3D"]
       61 CALL                             R4 1 1
       62 GETIMPORT                        R5 K16 [workspace]
       64 LOADK                            R7 K22 ["DRAGGERS_GREEN"]
       65 NAMECALL                         R5 R5 K18 ["GetAttribute"]
       67 CALL                             R5 2 1
       68 JUMPIF                           R5 ; [+4]
       69 GETIMPORT                        R5 K20 [Color3.fromHex]
       71 LOADK                            R6 K23 ["#7EED42"]
       72 CALL                             R5 1 1
       73 GETIMPORT                        R6 K16 [workspace]
       75 LOADK                            R8 K24 ["DRAGGERS_BLUE"]
       76 NAMECALL                         R6 R6 K18 ["GetAttribute"]
       78 CALL                             R6 2 1
       79 JUMPIF                           R6 ; [+4]
       80 GETIMPORT                        R6 K20 [Color3.fromHex]
       82 LOADK                            R7 K25 ["#219AEC"]
       83 CALL                             R6 1 1
       84 GETIMPORT                        R7 K20 [Color3.fromHex]
       86 LOADK                            R8 K26 ["#E6E6E6"]
       87 CALL                             R7 1 1
       88 GETIMPORT                        R8 K20 [Color3.fromHex]
       90 LOADK                            R9 K27 ["#535353"]
       91 CALL                             R8 1 1
       92 SETTABLEKS                       R4 R3 K28 ["X_AXIS"]
       94 SETTABLEKS                       R5 R3 K29 ["Y_AXIS"]
       96 SETTABLEKS                       R6 R3 K30 ["Z_AXIS"]
       98 JUMP                             ; [+40]
       99 GETIMPORT                        R4 K10 [Color3.new]
      101 LOADK                            R5 K31 [0.7]
      102 LOADK                            R6 K31 [0.7]
      103 LOADK                            R7 K31 [0.7]
      104 CALL                             R4 3 1
      105 SETTABLEKS                       R4 R3 K14 ["GRAY"]
      107 GETIMPORT                        R4 K10 [Color3.new]
      109 LOADN                            R5 1
      110 LOADN                            R6 0
      111 LOADN                            R7 0
      112 CALL                             R4 3 1
      113 SETTABLEKS                       R4 R3 K28 ["X_AXIS"]
      115 GETIMPORT                        R4 K10 [Color3.new]
      117 LOADN                            R5 0
      118 LOADN                            R6 1
      119 LOADN                            R7 0
      120 CALL                             R4 3 1
      121 SETTABLEKS                       R4 R3 K29 ["Y_AXIS"]
      123 JUMPIFNOT                        R1 ; [+7]
      124 GETIMPORT                        R4 K10 [Color3.new]
      126 LOADK                            R5 K32 [0.15]
      127 LOADK                            R6 K32 [0.15]
      128 LOADN                            R7 1
      129 CALL                             R4 3 1
      130 JUMP                             ; [+6]
      131 GETIMPORT                        R4 K10 [Color3.new]
      133 LOADN                            R5 0
      134 LOADN                            R6 0
      135 LOADN                            R7 1
      136 CALL                             R4 3 1
      137 SETTABLEKS                       R4 R3 K30 ["Z_AXIS"]
      139 GETIMPORT                        R4 K10 [Color3.new]
      141 LOADN                            R5 1
      142 LOADN                            R6 1
      143 LOADN                            R7 1
      144 CALL                             R4 3 1
      145 SETTABLEKS                       R4 R3 K33 ["WeldJoint"]
      147 GETIMPORT                        R4 K10 [Color3.new]
      149 LOADN                            R5 0
      150 LOADN                            R6 0
      151 LOADN                            R7 1
      152 CALL                             R4 3 1
      153 SETTABLEKS                       R4 R3 K34 ["RotatingJoint"]
      155 GETIMPORT                        R4 K10 [Color3.new]
      157 LOADN                            R5 1
      158 LOADN                            R6 0
      159 LOADN                            R7 0
      160 CALL                             R4 3 1
      161 SETTABLEKS                       R4 R3 K35 ["InvalidJoint"]
      163 GETIMPORT                        R4 K10 [Color3.new]
      165 LOADN                            R5 1
      166 LOADN                            R6 1
      167 LOADN                            R7 0
      168 CALL                             R4 3 1
      169 SETTABLEKS                       R4 R3 K36 ["SizeLimitReached"]
      171 DUPCLOSURE                       R4 K37 [PROTO_0]
      172 CAPTURE                          VAL R2
      173 CAPTURE                          VAL R3
      174 CAPTURE                          VAL R1
      175 SETTABLEKS                       R4 R3 K38 ["makeDimmed"]
      177 DUPCLOSURE                       R4 K39 [PROTO_1]
      178 CAPTURE                          VAL R3
      179 SETTABLEKS                       R4 R3 K40 ["makeHighlighted"]
      181 RETURN                           R3 1
