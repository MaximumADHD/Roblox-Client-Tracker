PROTO_0:
        0 DUPTABLE                         R2 K1 [{"_isSimulating"}]
        1 SETTABLEKS                       R0 R2 K0 ["_isSimulating"]
        3 GETUPVAL                         R3 0
        4 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        6 GETIMPORT                        R1 K3 [setmetatable]
        8 CALL                             R1 2 1
        9 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Attachment0"]
        2 GETTABLEKS                       R1 R1 K1 ["WorldPosition"]
        4 GETTABLEKS                       R2 R0 K2 ["Attachment1"]
        6 GETTABLEKS                       R2 R2 K1 ["WorldPosition"]
        8 SUB                              R3 R2 R1
        9 GETTABLEKS                       R3 R3 K3 ["Magnitude"]
       11 RETURN                           R3 1

PROTO_2:
        0 JUMPIFNOT                        R1 ; [+10]
        1 JUMPIFNOT                        R0 ; [+7]
        2 GETTABLE                         R2 R1 R0
        3 JUMPIFNOT                        R2 ; [+2]
        4 LOADB                            R2 0
        5 RETURN                           R2 1
        6 GETTABLEKS                       R0 R0 K0 ["Parent"]
        8 JUMPBACK                         ; [-8]
        9 LOADB                            R2 1
       10 RETURN                           R2 1
       11 LOADB                            R2 1
       12 RETURN                           R2 1

PROTO_3:
        0 NEWTABLE                         R3 0 0
        2 GETIMPORT                        R4 K1 [ipairs]
        4 MOVE                             R5 R1
        5 CALL                             R4 1 3
        6 FORGPREP_INEXT                   R4
        7 LOADB                            R9 1
        8 SETTABLE                         R9 R3 R8
        9 FORGLOOP                         R4 2 [inext] ; [-3]
       11 SETTABLEKS                       R3 R0 K2 ["_partSet"]
       13 SETTABLEKS                       R1 R0 K3 ["_parts"]
       15 NEWTABLE                         R4 0 0
       17 SETTABLEKS                       R4 R0 K4 ["_rootPartSet"]
       19 GETIMPORT                        R4 K6 [workspace]
       21 GETTABLEKS                       R4 R4 K7 ["Terrain"]
       23 NEWTABLE                         R5 0 0
       25 NEWTABLE                         R6 0 0
       27 NEWTABLE                         R7 0 0
       29 NEWTABLE                         R8 0 0
       31 NEWTABLE                         R9 0 0
       33 NEWTABLE                         R10 0 0
       35 NEWTABLE                         R11 0 0
       37 GETIMPORT                        R12 K1 [ipairs]
       39 MOVE                             R13 R1
       40 CALL                             R12 1 3
       41 FORGPREP_INEXT                   R12
       42 NEWTABLE                         R17 0 0
       44 SETTABLE                         R17 R8 R16
       45 GETIMPORT                        R17 K1 [ipairs]
       47 NAMECALL                         R18 R16 K8 ["GetJoints"]
       49 CALL                             R18 1 -1
       50 CALL                             R17 -1 3
       51 FORGPREP_INEXT                   R17
       52 LOADK                            R24 K9 ["Constraint"]
       53 NAMECALL                         R22 R21 K10 ["IsA"]
       55 CALL                             R22 2 1
       56 JUMPIFNOT                        R22 ; [+93]
       57 GETUPVAL                         R22 0
       58 GETTABLEKS                       R22 R22 K11 ["getConstraintCounterpart"]
       60 MOVE                             R23 R21
       61 MOVE                             R24 R16
       62 CALL                             R22 2 1
       63 JUMPIFNOT                        R22 ; [+152]
       64 GETTABLE                         R23 R8 R16
       65 LOADB                            R24 1
       66 SETTABLE                         R24 R23 R22
       67 LOADK                            R25 K12 ["RopeConstraint"]
       68 NAMECALL                         R23 R21 K10 ["IsA"]
       70 CALL                             R23 2 1
       71 JUMPIF                           R23 ; [+5]
       72 LOADK                            R25 K13 ["RodConstraint"]
       73 NAMECALL                         R23 R21 K10 ["IsA"]
       75 CALL                             R23 2 1
       76 JUMPIFNOT                        R23 ; [+34]
       77 MOVE                             R24 R21
       78 JUMPIFNOT                        R2 ; [+10]
       79 JUMPIFNOT                        R24 ; [+7]
       80 GETTABLE                         R25 R2 R24
       81 JUMPIFNOT                        R25 ; [+2]
       82 LOADB                            R23 0
       83 JUMP                             ; [+6]
       84 GETTABLEKS                       R24 R24 K14 ["Parent"]
       86 JUMPBACK                         ; [-8]
       87 LOADB                            R23 1
       88 JUMP                             ; [+1]
       89 LOADB                            R23 1
       90 JUMPIFNOT                        R23 ; [+125]
       91 DUPTABLE                         R23 K17 [{"Span", "Length"}]
       92 GETTABLEKS                       R25 R21 K18 ["Attachment0"]
       94 GETTABLEKS                       R25 R25 K19 ["WorldPosition"]
       96 GETTABLEKS                       R26 R21 K20 ["Attachment1"]
       98 GETTABLEKS                       R26 R26 K19 ["WorldPosition"]
      100 SUB                              R24 R26 R25
      101 GETTABLEKS                       R24 R24 K21 ["Magnitude"]
      103 SETTABLEKS                       R24 R23 K15 ["Span"]
      105 GETTABLEKS                       R24 R21 K16 ["Length"]
      107 SETTABLEKS                       R24 R23 K16 ["Length"]
      109 SETTABLE                         R23 R11 R21
      110 JUMP                             ; [+105]
      111 LOADK                            R25 K22 ["SpringConstraint"]
      112 NAMECALL                         R23 R21 K10 ["IsA"]
      114 CALL                             R23 2 1
      115 JUMPIFNOT                        R23 ; [+100]
      116 MOVE                             R24 R21
      117 JUMPIFNOT                        R2 ; [+10]
      118 JUMPIFNOT                        R24 ; [+7]
      119 GETTABLE                         R25 R2 R24
      120 JUMPIFNOT                        R25 ; [+2]
      121 LOADB                            R23 0
      122 JUMP                             ; [+6]
      123 GETTABLEKS                       R24 R24 K14 ["Parent"]
      125 JUMPBACK                         ; [-8]
      126 LOADB                            R23 1
      127 JUMP                             ; [+1]
      128 LOADB                            R23 1
      129 JUMPIFNOT                        R23 ; [+86]
      130 DUPTABLE                         R23 K24 [{"Span", "FreeLength"}]
      131 GETTABLEKS                       R25 R21 K18 ["Attachment0"]
      133 GETTABLEKS                       R25 R25 K19 ["WorldPosition"]
      135 GETTABLEKS                       R26 R21 K20 ["Attachment1"]
      137 GETTABLEKS                       R26 R26 K19 ["WorldPosition"]
      139 SUB                              R24 R26 R25
      140 GETTABLEKS                       R24 R24 K21 ["Magnitude"]
      142 SETTABLEKS                       R24 R23 K15 ["Span"]
      144 GETTABLEKS                       R24 R21 K23 ["FreeLength"]
      146 SETTABLEKS                       R24 R23 K23 ["FreeLength"]
      148 SETTABLE                         R23 R10 R21
      149 JUMP                             ; [+66]
      150 LOADK                            R24 K25 ["JointInstance"]
      151 NAMECALL                         R22 R21 K10 ["IsA"]
      153 CALL                             R22 2 1
      154 JUMPIFNOT                        R22 ; [+32]
      155 GETUPVAL                         R22 0
      156 GETTABLEKS                       R22 R22 K26 ["getJointInstanceCounterpart"]
      158 MOVE                             R23 R21
      159 MOVE                             R24 R16
      160 CALL                             R22 2 1
      161 GETTABLE                         R23 R3 R22
      162 JUMPIFNOT                        R23 ; [+1]
      163 JUMP                             ; [+52]
      164 LOADK                            R25 K27 ["Motor6D"]
      165 NAMECALL                         R23 R21 K10 ["IsA"]
      167 CALL                             R23 2 1
      168 JUMPIFNOT                        R23 ; [+10]
      169 LOADB                            R23 0
      170 SETTABLEKS                       R23 R21 K28 ["Enabled"]
      172 GETTABLEKS                       R23 R16 K29 ["CFrame"]
      174 SETTABLE                         R23 R6 R21
      175 GETTABLE                         R23 R8 R16
      176 LOADB                            R24 1
      177 SETTABLE                         R24 R23 R22
      178 JUMP                             ; [+37]
      179 FASTCALL2                        TABLE_INSERT R7 R21 ; [+5]
      181 MOVE                             R24 R7
      182 MOVE                             R25 R21
      183 GETIMPORT                        R23 K32 [table.insert]
      185 CALL                             R23 2 0
      186 JUMP                             ; [+29]
      187 LOADK                            R24 K33 ["WeldConstraint"]
      188 NAMECALL                         R22 R21 K10 ["IsA"]
      190 CALL                             R22 2 1
      191 JUMPIFNOT                        R22 ; [+10]
      192 GETUPVAL                         R22 0
      193 GETTABLEKS                       R22 R22 K34 ["getWeldConstraintCounterpart"]
      195 MOVE                             R23 R21
      196 MOVE                             R24 R16
      197 CALL                             R22 2 1
      198 GETTABLE                         R23 R8 R16
      199 LOADB                            R24 1
      200 SETTABLE                         R24 R23 R22
      201 JUMP                             ; [+14]
      202 LOADK                            R24 K35 ["NoCollisionConstraint"]
      203 NAMECALL                         R22 R21 K10 ["IsA"]
      205 CALL                             R22 2 1
      206 JUMPIFNOT                        R22 ; [+9]
      207 GETUPVAL                         R22 0
      208 GETTABLEKS                       R22 R22 K36 ["getNoCollisionConstraintCounterpart"]
      210 MOVE                             R23 R21
      211 MOVE                             R24 R16
      212 CALL                             R22 2 1
      213 GETTABLE                         R23 R8 R16
      214 LOADB                            R24 1
      215 SETTABLE                         R24 R23 R22
      216 FORGLOOP                         R17 2 [inext] ; [-165]
      218 NEWTABLE                         R17 0 0
      220 SETTABLE                         R17 R9 R16
      221 JUMPIFEQ                         R16 R4 ; [+13]
      223 GETIMPORT                        R17 K1 [ipairs]
      225 NAMECALL                         R18 R16 K37 ["GetTouchingParts"]
      227 CALL                             R18 1 -1
      228 CALL                             R17 -1 3
      229 FORGPREP_INEXT                   R17
      230 GETTABLE                         R22 R9 R16
      231 LOADB                            R23 1
      232 SETTABLE                         R23 R22 R21
      233 FORGLOOP                         R17 2 [inext] ; [-4]
      235 FORGLOOP                         R12 2 [inext] ; [-194]
      237 SETTABLEKS                       R11 R0 K38 ["_lengthConstraintsToFixupSet"]
      239 SETTABLEKS                       R10 R0 K39 ["_springsToFixupSet"]
      241 SETTABLEKS                       R9 R0 K40 ["_initiallyTouchingSets"]
      243 SETTABLEKS                       R7 R0 K41 ["_jointsToDestroy"]
      245 SETTABLEKS                       R5 R0 K42 ["_weldConstraintsToReenableSet"]
      247 SETTABLEKS                       R6 R0 K43 ["_motor6dsToAdjustAndReenableSet"]
      249 SETTABLEKS                       R8 R0 K44 ["_alreadyConnectedToSets"]
      251 NEWTABLE                         R12 0 0
      253 SETTABLEKS                       R12 R0 K45 ["_geometryCache"]
      255 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [ipairs]
        4 GETTABLEKS                       R3 R0 K2 ["_parts"]
        6 CALL                             R2 1 3
        7 FORGPREP_INEXT                   R2
        8 GETTABLEKS                       R7 R6 K3 ["Anchored"]
       10 JUMPIF                           R7 ; [+5]
       11 LOADB                            R7 1
       12 SETTABLEKS                       R7 R6 K3 ["Anchored"]
       14 LOADB                            R7 1
       15 SETTABLE                         R7 R1 R6
       16 FORGLOOP                         R2 2 [inext] ; [-9]
       18 SETTABLEKS                       R1 R0 K4 ["_toUnanchorSet"]
       20 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["_toUnanchorSet"]
        2 JUMPIFNOT                        R1 ; [+14]
        3 GETIMPORT                        R1 K2 [pairs]
        5 GETTABLEKS                       R2 R0 K0 ["_toUnanchorSet"]
        7 CALL                             R1 1 3
        8 FORGPREP_NEXT                    R1
        9 LOADB                            R6 0
       10 SETTABLEKS                       R6 R4 K3 ["Anchored"]
       12 FORGLOOP                         R1 2 ; [-4]
       14 LOADNIL                          R1
       15 SETTABLEKS                       R1 R0 K0 ["_toUnanchorSet"]
       17 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R1 K1 [ipairs]
        2 GETTABLEKS                       R2 R0 K2 ["_jointsToDestroy"]
        4 CALL                             R1 1 3
        5 FORGPREP_INEXT                   R1
        6 LOADNIL                          R6
        7 SETTABLEKS                       R6 R5 K3 ["Parent"]
        9 FORGLOOP                         R1 2 [inext] ; [-4]
       11 NEWTABLE                         R1 0 0
       13 SETTABLEKS                       R1 R0 K2 ["_jointsToDestroy"]
       15 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["_getGeometry"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 GETTABLEKS                       R2 R0 K1 ["_parts"]
        5 GETTABLEKS                       R3 R0 K2 ["_partSet"]
        7 GETTABLEKS                       R4 R0 K3 ["_rootPartSet"]
        9 GETIMPORT                        R5 K5 [CFrame.new]
       11 CALL                             R5 0 1
       12 GETTABLEKS                       R6 R0 K6 ["_alreadyConnectedToSets"]
       14 NEWCLOSURE                       R7 P0
       15 CAPTURE                          VAL R0
       16 CALL                             R1 6 1
       17 GETTABLEKS                       R2 R0 K7 ["_isSimulating"]
       19 JUMPIFNOT                        R2 ; [+4]
       20 NEWTABLE                         R2 0 0
       22 SETTABLEKS                       R2 R0 K8 ["_geometryCache"]
       24 RETURN                           R1 1

PROTO_9:
        0 GETIMPORT                        R2 K1 [ipairs]
        2 GETTABLEKS                       R3 R0 K2 ["_parts"]
        4 CALL                             R2 1 3
        5 FORGPREP_INEXT                   R2
        6 GETIMPORT                        R7 K1 [ipairs]
        8 NAMECALL                         R8 R6 K3 ["GetTouchingParts"]
       10 CALL                             R8 1 -1
       11 CALL                             R7 -1 3
       12 FORGPREP_INEXT                   R7
       13 GETTABLEKS                       R13 R0 K4 ["_partSet"]
       15 GETTABLE                         R12 R13 R11
       16 JUMPIF                           R12 ; [+8]
       17 JUMPIF                           R1 ; [+5]
       18 GETTABLEKS                       R14 R0 K5 ["_initiallyTouchingSets"]
       20 GETTABLE                         R13 R14 R6
       21 GETTABLE                         R12 R13 R11
       22 JUMPIF                           R12 ; [+2]
       23 LOADB                            R12 1
       24 RETURN                           R12 1
       25 FORGLOOP                         R7 2 [inext] ; [-13]
       27 FORGLOOP                         R2 2 [inext] ; [-22]
       29 LOADB                            R2 0
       30 RETURN                           R2 1

PROTO_10:
        0 GETIMPORT                        R1 K1 [pairs]
        2 GETTABLEKS                       R2 R0 K2 ["_lengthConstraintsToFixupSet"]
        4 CALL                             R1 1 3
        5 FORGPREP_NEXT                    R1
        6 GETTABLEKS                       R8 R4 K3 ["Attachment0"]
        8 GETTABLEKS                       R8 R8 K4 ["WorldPosition"]
       10 GETTABLEKS                       R9 R4 K5 ["Attachment1"]
       12 GETTABLEKS                       R9 R9 K4 ["WorldPosition"]
       14 SUB                              R7 R9 R8
       15 GETTABLEKS                       R7 R7 K6 ["Magnitude"]
       17 GETTABLEKS                       R8 R5 K7 ["Span"]
       19 DIV                              R6 R7 R8
       20 GETTABLEKS                       R8 R5 K8 ["Length"]
       22 MUL                              R7 R8 R6
       23 SETTABLEKS                       R7 R4 K8 ["Length"]
       25 FORGLOOP                         R1 2 ; [-20]
       27 GETIMPORT                        R1 K1 [pairs]
       29 GETTABLEKS                       R2 R0 K9 ["_springsToFixupSet"]
       31 CALL                             R1 1 3
       32 FORGPREP_NEXT                    R1
       33 GETTABLEKS                       R8 R4 K3 ["Attachment0"]
       35 GETTABLEKS                       R8 R8 K4 ["WorldPosition"]
       37 GETTABLEKS                       R9 R4 K5 ["Attachment1"]
       39 GETTABLEKS                       R9 R9 K4 ["WorldPosition"]
       41 SUB                              R7 R9 R8
       42 GETTABLEKS                       R7 R7 K6 ["Magnitude"]
       44 GETTABLEKS                       R8 R5 K7 ["Span"]
       46 DIV                              R6 R7 R8
       47 GETTABLEKS                       R8 R5 K10 ["FreeLength"]
       49 MUL                              R7 R8 R6
       50 SETTABLEKS                       R7 R4 K10 ["FreeLength"]
       52 FORGLOOP                         R1 2 ; [-20]
       54 RETURN                           R0 0

PROTO_11:
        0 GETIMPORT                        R1 K1 [pairs]
        2 GETTABLEKS                       R2 R0 K2 ["_weldConstraintsToReenableSet"]
        4 CALL                             R1 1 3
        5 FORGPREP_NEXT                    R1
        6 LOADB                            R6 1
        7 SETTABLEKS                       R6 R4 K3 ["Enabled"]
        9 FORGLOOP                         R1 2 ; [-4]
       11 GETIMPORT                        R1 K1 [pairs]
       13 GETTABLEKS                       R2 R0 K4 ["_motor6dsToAdjustAndReenableSet"]
       15 CALL                             R1 1 3
       16 FORGPREP_NEXT                    R1
       17 GETTABLEKS                       R7 R0 K5 ["_partSet"]
       19 GETTABLEKS                       R8 R4 K6 ["Part0"]
       21 GETTABLE                         R6 R7 R8
       22 JUMPIFNOT                        R6 ; [+14]
       23 GETTABLEKS                       R6 R4 K6 ["Part0"]
       25 GETTABLEKS                       R9 R6 K7 ["CFrame"]
       27 NAMECALL                         R9 R9 K8 ["Inverse"]
       29 CALL                             R9 1 1
       30 MUL                              R8 R9 R5
       31 GETTABLEKS                       R9 R4 K9 ["C0"]
       33 MUL                              R7 R8 R9
       34 SETTABLEKS                       R7 R4 K9 ["C0"]
       36 JUMP                             ; [+13]
       37 GETTABLEKS                       R6 R4 K10 ["Part1"]
       39 GETTABLEKS                       R9 R6 K7 ["CFrame"]
       41 NAMECALL                         R9 R9 K8 ["Inverse"]
       43 CALL                             R9 1 1
       44 MUL                              R8 R9 R5
       45 GETTABLEKS                       R9 R4 K11 ["C1"]
       47 MUL                              R7 R8 R9
       48 SETTABLEKS                       R7 R4 K11 ["C1"]
       50 LOADB                            R6 1
       51 SETTABLEKS                       R6 R4 K3 ["Enabled"]
       53 FORGLOOP                         R1 2 ; [-37]
       55 LOADNIL                          R1
       56 SETTABLEKS                       R1 R0 K4 ["_motor6dsToAdjustAndReenableSet"]
       58 LOADNIL                          R1
       59 SETTABLEKS                       R1 R0 K2 ["_weldConstraintsToReenableSet"]
       61 LOADNIL                          R1
       62 SETTABLEKS                       R1 R0 K12 ["_alreadyConnectedToSets"]
       64 LOADNIL                          R1
       65 SETTABLEKS                       R1 R0 K13 ["_geometryCache"]
       67 NEWTABLE                         R1 0 0
       69 SETTABLEKS                       R1 R0 K14 ["_parts"]
       71 NEWTABLE                         R1 0 0
       73 SETTABLEKS                       R1 R0 K5 ["_partSet"]
       75 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R3 R0 K0 ["_partSet"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIFNOT                        R2 ; [+4]
        4 GETUPVAL                         R2 0
        5 MOVE                             R3 R1
        6 CALL                             R2 1 -1
        7 RETURN                           R2 -1
        8 GETTABLEKS                       R3 R0 K1 ["_geometryCache"]
       10 GETTABLE                         R2 R3 R1
       11 JUMPIF                           R2 ; [+7]
       12 GETUPVAL                         R3 0
       13 MOVE                             R4 R1
       14 CALL                             R3 1 1
       15 MOVE                             R2 R3
       16 GETTABLEKS                       R3 R0 K1 ["_geometryCache"]
       18 SETTABLE                         R2 R3 R1
       19 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Utility"]
       11 GETTABLEKS                       R2 R2 K6 ["getGeometry"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K5 ["Utility"]
       18 GETTABLEKS                       R3 R3 K7 ["JointPairs"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R4 R0 K5 ["Utility"]
       25 GETTABLEKS                       R4 R4 K8 ["JointUtil"]
       27 CALL                             R3 1 1
       28 NEWTABLE                         R4 16 0
       30 SETTABLEKS                       R4 R4 K9 ["__index"]
       32 DUPCLOSURE                       R5 K10 [PROTO_0]
       33 CAPTURE                          VAL R4
       34 SETTABLEKS                       R5 R4 K11 ["new"]
       36 DUPCLOSURE                       R5 K12 [PROTO_1]
       37 DUPCLOSURE                       R6 K13 [PROTO_2]
       38 DUPCLOSURE                       R7 K14 [PROTO_3]
       39 CAPTURE                          VAL R3
       40 SETTABLEKS                       R7 R4 K15 ["pickUpParts"]
       42 DUPCLOSURE                       R7 K16 [PROTO_4]
       43 SETTABLEKS                       R7 R4 K17 ["anchorParts"]
       45 DUPCLOSURE                       R7 K18 [PROTO_5]
       46 SETTABLEKS                       R7 R4 K19 ["restoreAnchored"]
       48 DUPCLOSURE                       R7 K20 [PROTO_6]
       49 SETTABLEKS                       R7 R4 K21 ["breakJointsToOutsiders"]
       51 DUPCLOSURE                       R7 K22 [PROTO_8]
       52 CAPTURE                          VAL R2
       53 SETTABLEKS                       R7 R4 K23 ["computeJointPairs"]
       55 DUPCLOSURE                       R7 K24 [PROTO_9]
       56 SETTABLEKS                       R7 R4 K25 ["isColliding"]
       58 DUPCLOSURE                       R7 K26 [PROTO_10]
       59 SETTABLEKS                       R7 R4 K27 ["fixupConstraintLengths"]
       61 DUPCLOSURE                       R7 K28 [PROTO_11]
       62 SETTABLEKS                       R7 R4 K29 ["putDownParts"]
       64 DUPCLOSURE                       R7 K30 [PROTO_12]
       65 CAPTURE                          VAL R1
       66 SETTABLEKS                       R7 R4 K31 ["_getGeometry"]
       68 RETURN                           R4 1
