PROTO_0:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R1 R2 K1 ["PathReducer"]
        5 LOADB                            R3 0
        6 GETUPVAL                         R4 0
        7 LOADN                            R5 0
        8 JUMPIFNOTLT                      R5 R4 ; [+9]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R6 R1 K2 ["ControlPoints"]
       13 LENGTH                           R5 R6
       14 JUMPIFLE                         R4 R5 ; [+2]
       16 LOADB                            R3 0 +1
       17 LOADB                            R3 1
       18 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       20 LOADK                            R4 K3 ["Cannot set tangent for invalid control point index."]
       21 GETIMPORT                        R2 K5 [assert]
       23 CALL                             R2 2 0
       24 GETUPVAL                         R2 0
       25 GETTABLEKS                       R3 R1 K6 ["SelectedObject"]
       27 NAMECALL                         R3 R3 K7 ["GetControlPoints"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R1 K8 ["ControlPointStates"]
       32 GETUPVAL                         R5 2
       33 GETUPVAL                         R6 1
       34 GETIMPORT                        R7 K11 [Vector2.new]
       36 CALL                             R7 0 1
       37 LOADN                            R9 255
       38 GETTABLEKS                       R10 R1 K12 ["ParentAbsRotation"]
       40 MUL                              R8 R9 R10
       41 CALL                             R5 3 1
       42 SETUPVAL                         R5 1
       43 JUMPIFEQKNIL                     R4 ; [+4]
       45 LENGTH                           R5 R4
       46 JUMPIFNOTLT                      R5 R2 ; [+2]
       48 RETURN                           R0 0
       49 GETUPVAL                         R6 1
       50 GETTABLEKS                       R5 R6 K13 ["Magnitude"]
       52 GETUPVAL                         R7 3
       53 GETTABLEKS                       R6 R7 K14 ["DragTangentToCenterToDeleteZoneSizePixels"]
       55 JUMPIFNOTLT                      R5 R6 ; [+4]
       57 GETIMPORT                        R5 K16 [Vector2.zero]
       59 SETUPVAL                         R5 1
       60 GETTABLE                         R7 R4 R2
       61 GETTABLEKS                       R6 R7 K17 ["Mirrored"]
       63 NOT                              R5 R6
       64 SETUPVAL                         R5 4
       65 GETUPVAL                         R5 5
       66 JUMPIFNOT                        R5 ; [+2]
       67 LOADB                            R5 0
       68 SETUPVAL                         R5 4
       69 GETUPVAL                         R5 6
       70 JUMPIFNOT                        R5 ; [+6]
       71 GETUPVAL                         R5 7
       72 GETUPVAL                         R6 1
       73 CALL                             R5 1 1
       74 SETUPVAL                         R5 1
       75 GETUPVAL                         R5 1
       76 SETUPVAL                         R5 1
       77 GETUPVAL                         R6 8
       78 JUMPIFNOTEQKS                    R6 K18 ["Left"] ; [+3]
       80 LOADK                            R5 K19 ["Right"]
       81 JUMP                             ; [+1]
       82 LOADK                            R5 K18 ["Left"]
       83 GETUPVAL                         R6 9
       84 GETUPVAL                         R7 1
       85 GETTABLEKS                       R9 R1 K6 ["SelectedObject"]
       87 GETTABLEKS                       R8 R9 K20 ["Parent"]
       89 CALL                             R6 2 1
       90 GETTABLE                         R7 R3 R2
       91 GETUPVAL                         R8 10
       92 GETUPVAL                         R9 8
       93 CALL                             R8 1 1
       94 SETTABLE                         R6 R7 R8
       95 GETUPVAL                         R7 4
       96 JUMPIF                           R7 ; [+8]
       97 GETTABLE                         R7 R3 R2
       98 GETUPVAL                         R8 10
       99 MOVE                             R9 R5
      100 CALL                             R8 1 1
      101 GETUPVAL                         R9 11
      102 MOVE                             R10 R6
      103 CALL                             R9 1 1
      104 SETTABLE                         R9 R7 R8
      105 GETUPVAL                         R9 12
      106 MOVE                             R10 R2
      107 GETUPVAL                         R11 13
      108 GETTABLE                         R12 R3 R2
      109 CALL                             R11 1 -1
      110 CALL                             R9 -1 -1
      111 NAMECALL                         R7 R0 K21 ["dispatch"]
      113 CALL                             R7 -1 0
      114 GETTABLEKS                       R7 R1 K6 ["SelectedObject"]
      116 MOVE                             R9 R2
      117 GETTABLE                         R10 R3 R2
      118 NAMECALL                         R7 R7 K22 ["UpdateControlPoint"]
      120 CALL                             R7 3 0
      121 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R6 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          REF R2
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          REF R4
        6 CAPTURE                          VAL R5
        7 CAPTURE                          VAL R3
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          VAL R1
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          UPVAL U5
       13 CAPTURE                          UPVAL U6
       14 CAPTURE                          UPVAL U7
       15 CLOSEUPVALS                      R2
       16 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R4 R0 K5 ["Src"]
       13 GETTABLEKS                       R3 R4 K6 ["Resources"]
       15 GETTABLEKS                       R2 R3 K7 ["Constants"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R5 R0 K5 ["Src"]
       22 GETTABLEKS                       R4 R5 K8 ["Actions"]
       24 GETTABLEKS                       R3 R4 K9 ["ChangeControlPointState"]
       26 CALL                             R2 1 1
       27 GETTABLEKS                       R4 R0 K5 ["Src"]
       29 GETTABLEKS                       R3 R4 K10 ["Util"]
       31 GETIMPORT                        R4 K4 [require]
       33 GETTABLEKS                       R5 R3 K11 ["constrainToEightDirections"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K4 [require]
       38 GETTABLEKS                       R6 R3 K12 ["getControlPointState"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K4 [require]
       43 GETTABLEKS                       R7 R3 K13 ["getTangentNameForSide"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K4 [require]
       48 GETTABLEKS                       R8 R3 K14 ["getUDim2ScaleFromVector2"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K4 [require]
       53 GETTABLEKS                       R9 R3 K15 ["getUDim2Inverse"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K4 [require]
       58 GETTABLEKS                       R10 R3 K16 ["rotatePoint"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K4 [require]
       63 GETTABLEKS                       R12 R0 K5 ["Src"]
       65 GETTABLEKS                       R11 R12 K17 ["Types"]
       67 CALL                             R10 1 1
       68 DUPCLOSURE                       R11 K18 [PROTO_1]
       69 CAPTURE                          VAL R9
       70 CAPTURE                          VAL R1
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R7
       73 CAPTURE                          VAL R6
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R5
       77 RETURN                           R11 1
