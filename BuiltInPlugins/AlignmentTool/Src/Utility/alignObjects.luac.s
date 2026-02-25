PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["X"]
        2 JUMPIFNOT                        R3 ; [+2]
        3 LOADN                            R2 1
        4 JUMP                             ; [+1]
        5 LOADN                            R2 0
        6 GETTABLEKS                       R4 R0 K1 ["Y"]
        8 JUMPIFNOT                        R4 ; [+2]
        9 LOADN                            R3 1
       10 JUMP                             ; [+1]
       11 LOADN                            R3 0
       12 GETTABLEKS                       R5 R0 K2 ["Z"]
       14 JUMPIFNOT                        R5 ; [+2]
       15 LOADN                            R4 1
       16 JUMP                             ; [+1]
       17 LOADN                            R4 0
       18 FASTCALL                         VECTOR ; [+2]
       19 GETIMPORT                        R1 K5 [Vector3.new]
       21 CALL                             R1 3 1
       22 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["GetJoinMode"]
        3 CALL                             R1 1 1
        4 GETIMPORT                        R2 K4 [Enum.JointCreationMode.None]
        6 JUMPIFNOTEQ                      R1 R2 ; [+2]
        8 LOADB                            R0 0 +1
        9 LOADB                            R0 1
       10 RETURN                           R0 1

PROTO_2:
        0 LENGTH                           R5 R0
        1 JUMPIFNOTEQKN                    R5 K0 [0] ; [+2]
        3 RETURN                           R0 0
        4 LOADNIL                          R5
        5 GETUPVAL                         R7 0
        6 GETTABLEKS                       R6 R7 K1 ["Local"]
        8 JUMPIFNOTEQ                      R1 R6 ; [+13]
       10 GETUPVAL                         R6 1
       11 JUMPIFNOT                        R4 ; [+6]
       12 NEWTABLE                         R7 0 1
       14 MOVE                             R8 R4
       15 SETLIST                          R7 R8 1 [1]
       17 JUMPIF                           R7 ; [+1]
       18 MOVE                             R7 R0
       19 CALL                             R6 1 1
       20 MOVE                             R5 R6
       21 JUMP                             ; [+4]
       22 GETIMPORT                        R6 K4 [CFrame.new]
       24 CALL                             R6 0 1
       25 MOVE                             R5 R6
       26 GETUPVAL                         R7 2
       27 GETTABLEKS                       R6 R7 K5 ["fromObjectsComputeAll"]
       29 MOVE                             R7 R0
       30 MOVE                             R8 R5
       31 CALL                             R6 2 3
       32 LOADNIL                          R9
       33 LOADNIL                          R10
       34 JUMPIFNOT                        R4 ; [+17]
       35 GETTABLE                         R11 R8 R4
       36 FASTCALL2K                       ASSERT R11 K6 ; [+5]
       38 MOVE                             R13 R11
       39 LOADK                            R14 K6 ["Missing bounding box for target"]
       40 GETIMPORT                        R12 K8 [assert]
       42 CALL                             R12 2 0
       43 GETTABLEKS                       R14 R11 K9 ["offset"]
       45 NAMECALL                         R12 R5 K10 ["VectorToWorldSpace"]
       47 CALL                             R12 2 1
       48 MOVE                             R9 R12
       49 GETTABLEKS                       R10 R11 K11 ["size"]
       51 JUMP                             ; [+6]
       52 MOVE                             R13 R6
       53 NAMECALL                         R11 R5 K10 ["VectorToWorldSpace"]
       55 CALL                             R11 2 1
       56 MOVE                             R9 R11
       57 MOVE                             R10 R7
       58 GETIMPORT                        R11 K13 [ipairs]
       60 MOVE                             R12 R0
       61 CALL                             R11 1 3
       62 FORGPREP_INEXT                   R11
       63 JUMPIFEQ                         R15 R4 ; [+122]
       65 GETUPVAL                         R16 3
       66 NEWTABLE                         R17 0 1
       68 MOVE                             R18 R15
       69 SETLIST                          R17 R18 1 [1]
       71 CALL                             R16 1 2
       72 LENGTH                           R19 R17
       73 FASTCALL2K                       ASSERT R19 K14 ; [+4]
       75 LOADK                            R20 K14 ["Missing parts for alignable object"]
       76 GETIMPORT                        R18 K8 [assert]
       78 CALL                             R18 2 0
       79 GETUPVAL                         R19 4
       80 GETTABLEKS                       R18 R19 K3 ["new"]
       82 CALL                             R18 0 1
       83 MOVE                             R21 R17
       84 NAMECALL                         R19 R18 K15 ["pickUpParts"]
       86 CALL                             R19 2 0
       87 NAMECALL                         R19 R18 K16 ["breakJointsToOutsiders"]
       89 CALL                             R19 1 0
       90 GETTABLE                         R19 R8 R15
       91 FASTCALL2K                       ASSERT R19 K17 ; [+5]
       93 MOVE                             R21 R19
       94 LOADK                            R22 K17 ["Missing bounding box for object"]
       95 GETIMPORT                        R20 K8 [assert]
       97 CALL                             R20 2 0
       98 GETTABLEKS                       R22 R19 K9 ["offset"]
      100 NAMECALL                         R20 R5 K10 ["VectorToWorldSpace"]
      102 CALL                             R20 2 1
      103 SUB                              R23 R9 R20
      104 NAMECALL                         R21 R5 K18 ["VectorToObjectSpace"]
      106 CALL                             R21 2 1
      107 GETUPVAL                         R23 5
      108 GETTABLEKS                       R22 R23 K19 ["Min"]
      110 JUMPIFNOTEQ                      R3 R22 ; [+7]
      112 GETTABLEKS                       R24 R19 K11 ["size"]
      114 SUB                              R23 R10 R24
      115 DIVK                             R22 R23 K20 [2]
      116 SUB                              R21 R21 R22
      117 JUMP                             ; [+10]
      118 GETUPVAL                         R23 5
      119 GETTABLEKS                       R22 R23 K21 ["Max"]
      121 JUMPIFNOTEQ                      R3 R22 ; [+6]
      123 GETTABLEKS                       R24 R19 K11 ["size"]
      125 SUB                              R23 R10 R24
      126 DIVK                             R22 R23 K20 [2]
      127 ADD                              R21 R21 R22
      128 GETTABLEKS                       R27 R2 K22 ["X"]
      130 JUMPIFNOT                        R27 ; [+2]
      131 LOADN                            R26 1
      132 JUMP                             ; [+1]
      133 LOADN                            R26 0
      134 GETTABLEKS                       R28 R2 K23 ["Y"]
      136 JUMPIFNOT                        R28 ; [+2]
      137 LOADN                            R27 1
      138 JUMP                             ; [+1]
      139 LOADN                            R27 0
      140 GETTABLEKS                       R29 R2 K24 ["Z"]
      142 JUMPIFNOT                        R29 ; [+2]
      143 LOADN                            R28 1
      144 JUMP                             ; [+1]
      145 LOADN                            R28 0
      146 FASTCALL                         VECTOR ; [+2]
      147 GETIMPORT                        R25 K26 [Vector3.new]
      149 CALL                             R25 3 1
      150 MUL                              R24 R21 R25
      151 NAMECALL                         R22 R5 K10 ["VectorToWorldSpace"]
      153 CALL                             R22 2 1
      154 LOADK                            R25 K27 ["PVInstance"]
      155 NAMECALL                         R23 R15 K28 ["IsA"]
      157 CALL                             R23 2 1
      158 JUMPIFNOT                        R23 ; [+7]
      159 NAMECALL                         R26 R15 K29 ["GetPivot"]
      161 CALL                             R26 1 1
      162 ADD                              R25 R26 R22
      163 NAMECALL                         R23 R15 K30 ["PivotTo"]
      165 CALL                             R23 2 0
      166 GETUPVAL                         R24 6
      167 NAMECALL                         R24 R24 K31 ["GetJoinMode"]
      169 CALL                             R24 1 1
      170 GETIMPORT                        R25 K35 [Enum.JointCreationMode.None]
      172 JUMPIFNOTEQ                      R24 R25 ; [+2]
      174 LOADB                            R23 0 +1
      175 LOADB                            R23 1
      176 JUMPIFNOT                        R23 ; [+6]
      177 NAMECALL                         R23 R18 K36 ["computeJointPairs"]
      179 CALL                             R23 1 1
      180 NAMECALL                         R24 R23 K37 ["createJoints"]
      182 CALL                             R24 1 0
      183 NAMECALL                         R23 R18 K38 ["putDownParts"]
      185 CALL                             R23 1 0
      186 FORGLOOP                         R11 2 [inext] ; [-124]
      188 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K2 ["Parent"]
       11 GETTABLEKS                       R3 R0 K3 ["Packages"]
       13 GETTABLEKS                       R2 R3 K4 ["DraggerFramework"]
       15 GETIMPORT                        R3 K6 [require]
       17 GETTABLEKS                       R5 R2 K7 ["Utility"]
       19 GETTABLEKS                       R4 R5 K8 ["BoundingBox"]
       21 CALL                             R3 1 1
       22 GETIMPORT                        R4 K6 [require]
       24 GETTABLEKS                       R6 R2 K7 ["Utility"]
       26 GETTABLEKS                       R5 R6 K9 ["JointMaker"]
       28 CALL                             R4 1 1
       29 GETIMPORT                        R5 K6 [require]
       31 GETTABLEKS                       R8 R0 K10 ["Src"]
       33 GETTABLEKS                       R7 R8 K7 ["Utility"]
       35 GETTABLEKS                       R6 R7 K11 ["AlignmentMode"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K6 [require]
       40 GETTABLEKS                       R9 R0 K10 ["Src"]
       42 GETTABLEKS                       R8 R9 K7 ["Utility"]
       44 GETTABLEKS                       R7 R8 K12 ["AlignmentSpace"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K6 [require]
       49 GETTABLEKS                       R10 R0 K10 ["Src"]
       51 GETTABLEKS                       R9 R10 K7 ["Utility"]
       53 GETTABLEKS                       R8 R9 K13 ["getAlignableObjects"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K6 [require]
       58 GETTABLEKS                       R11 R0 K10 ["Src"]
       60 GETTABLEKS                       R10 R11 K7 ["Utility"]
       62 GETTABLEKS                       R9 R10 K14 ["getDefaultBasisForObjects"]
       64 CALL                             R8 1 1
       65 DUPCLOSURE                       R9 K15 [PROTO_0]
       66 DUPCLOSURE                       R10 K16 [PROTO_1]
       67 CAPTURE                          VAL R1
       68 DUPCLOSURE                       R11 K17 [PROTO_2]
       69 CAPTURE                          VAL R6
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R3
       72 CAPTURE                          VAL R7
       73 CAPTURE                          VAL R4
       74 CAPTURE                          VAL R5
       75 CAPTURE                          VAL R1
       76 RETURN                           R11 1
