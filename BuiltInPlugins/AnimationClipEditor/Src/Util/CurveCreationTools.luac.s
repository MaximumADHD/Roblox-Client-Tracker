PROTO_0:
        0 SUB                              R7 R4 R3
        1 SUB                              R10 R0 R1
        2 SUB                              R11 R2 R1
        3 DIV                              R9 R10 R11
        4 LOADN                            R10 0
        5 LOADN                            R11 1
        6 FASTCALL                         MATH_CLAMP ; [+2]
        7 GETIMPORT                        R8 K2 [math.clamp]
        9 CALL                             R8 3 1
       10 MUL                              R6 R7 R8
       11 ADD                              R5 R3 R6
       12 RETURN                           R5 1

PROTO_1:
        0 LOADN                            R3 0
        1 LOADN                            R4 1
        2 FASTCALL3                        MATH_CLAMP R0 R3 R4
        4 MOVE                             R2 R0
        5 GETIMPORT                        R1 K2 [math.clamp]
        7 CALL                             R1 3 1
        8 MUL                              R3 R1 R1
        9 MULK                             R5 R1 K4 [2]
       10 SUBRK                            R4 R3 K5 [NULL]
       11 MUL                              R2 R3 R4
       12 RETURN                           R2 1

PROTO_2:
        0 LOADK                            R3 K0 ["Attachment"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+3]
        5 GETTABLEKS                       R1 R0 K2 ["WorldCFrame"]
        7 RETURN                           R1 1
        8 LOADK                            R3 K3 ["Model"]
        9 NAMECALL                         R1 R0 K1 ["IsA"]
       11 CALL                             R1 2 1
       12 JUMPIFNOT                        R1 ; [+12]
       13 GETTABLEKS                       R2 R0 K4 ["PrimaryPart"]
       15 JUMPIFNOT                        R2 ; [+5]
       16 GETTABLEKS                       R1 R0 K4 ["PrimaryPart"]
       18 GETTABLEKS                       R1 R1 K5 ["CFrame"]
       20 RETURN                           R1 1
       21 GETIMPORT                        R1 K7 [CFrame.new]
       23 CALL                             R1 0 1
       24 RETURN                           R1 1
       25 GETTABLEKS                       R1 R0 K5 ["CFrame"]
       27 RETURN                           R1 1

PROTO_3:
        0 LOADK                            R3 K0 ["Attachment"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+2]
        5 LOADK                            R1 K2 [{0.1, 0.1, 0.1}]
        6 RETURN                           R1 1
        7 LOADK                            R3 K3 ["Model"]
        8 NAMECALL                         R1 R0 K1 ["IsA"]
       10 CALL                             R1 2 1
       11 JUMPIFNOT                        R1 ; [+4]
       12 NAMECALL                         R1 R0 K4 ["GetBoundingBox"]
       14 CALL                             R1 1 2
       15 RETURN                           R2 1
       16 GETTABLEKS                       R1 R0 K5 ["Size"]
       18 RETURN                           R1 1

PROTO_4:
        0 MOVE                             R5 R2
        1 NAMECALL                         R3 R0 K0 ["PointToObjectSpace"]
        3 CALL                             R3 2 1
        4 DIVK                             R4 R1 K1 [2]
        5 GETTABLEKS                       R7 R3 K2 ["X"]
        7 GETTABLEKS                       R9 R4 K2 ["X"]
        9 MINUS                            R8 R9
       10 GETTABLEKS                       R9 R4 K2 ["X"]
       12 FASTCALL                         MATH_CLAMP ; [+2]
       13 GETIMPORT                        R6 K5 [math.clamp]
       15 CALL                             R6 3 1
       16 GETTABLEKS                       R8 R3 K6 ["Y"]
       18 GETTABLEKS                       R10 R4 K6 ["Y"]
       20 MINUS                            R9 R10
       21 GETTABLEKS                       R10 R4 K6 ["Y"]
       23 FASTCALL                         MATH_CLAMP ; [+2]
       24 GETIMPORT                        R7 K5 [math.clamp]
       26 CALL                             R7 3 1
       27 GETTABLEKS                       R9 R3 K7 ["Z"]
       29 GETTABLEKS                       R11 R4 K7 ["Z"]
       31 MINUS                            R10 R11
       32 GETTABLEKS                       R11 R4 K7 ["Z"]
       34 FASTCALL                         MATH_CLAMP ; [+2]
       35 GETIMPORT                        R8 K5 [math.clamp]
       37 CALL                             R8 3 1
       38 FASTCALL                         VECTOR ; [+2]
       39 GETIMPORT                        R5 K10 [Vector3.new]
       41 CALL                             R5 3 1
       42 MOVE                             R8 R5
       43 NAMECALL                         R6 R0 K11 ["PointToWorldSpace"]
       45 CALL                             R6 2 1
       46 MOVE                             R7 R5
       47 RETURN                           R6 2

PROTO_5:
        0 MOVE                             R5 R0
        1 NAMECALL                         R3 R1 K0 ["FindFirstChild"]
        3 CALL                             R3 2 1
        4 JUMPIFNOT                        R3 ; [+1]
        5 RETURN                           R3 1
        6 GETIMPORT                        R4 K3 [Instance.new]
        8 MOVE                             R5 R2
        9 MOVE                             R6 R1
       10 CALL                             R4 2 1
       11 SETTABLEKS                       R0 R4 K4 ["Name"]
       13 RETURN                           R4 1

PROTO_6:
        0 JUMPIFNOTEQKNIL                  R0 ; [+2]
        2 LOADB                            R4 0 +1
        3 LOADB                            R4 1
        4 FASTCALL2K                       ASSERT R4 K0 ; [+4]
        6 LOADK                            R5 K0 ["nil curve"]
        7 GETIMPORT                        R3 K2 [assert]
        9 CALL                             R3 2 0
       10 LOADK                            R5 K3 ["FloatCurve"]
       11 NAMECALL                         R3 R0 K4 ["IsA"]
       13 CALL                             R3 2 1
       14 JUMPIFNOT                        R3 ; [+25]
       15 FASTCALL1                        TYPEOF R1 ; [+3]
       16 MOVE                             R6 R1
       17 GETIMPORT                        R5 K6 [typeof]
       19 CALL                             R5 1 1
       20 JUMPIFEQKS                       R5 K7 ["number"] ; [+2]
       22 LOADB                            R4 0 +1
       23 LOADB                            R4 1
       24 FASTCALL1                        ASSERT R4 ; [+2]
       25 GETIMPORT                        R3 K2 [assert]
       27 CALL                             R3 1 0
       28 GETIMPORT                        R3 K10 [FloatCurveKey.new]
       30 MOVE                             R4 R2
       31 MOVE                             R5 R1
       32 GETIMPORT                        R6 K14 [Enum.KeyInterpolationMode.Linear]
       34 CALL                             R3 3 1
       35 MOVE                             R6 R3
       36 NAMECALL                         R4 R0 K15 ["InsertKey"]
       38 CALL                             R4 2 0
       39 RETURN                           R0 0
       40 LOADK                            R5 K16 ["Vector3Curve"]
       41 NAMECALL                         R3 R0 K4 ["IsA"]
       43 CALL                             R3 2 1
       44 JUMPIFNOT                        R3 ; [+38]
       45 FASTCALL1                        TYPEOF R1 ; [+3]
       46 MOVE                             R6 R1
       47 GETIMPORT                        R5 K6 [typeof]
       49 CALL                             R5 1 1
       50 JUMPIFEQKS                       R5 K17 ["Vector3"] ; [+2]
       52 LOADB                            R4 0 +1
       53 LOADB                            R4 1
       54 FASTCALL1                        ASSERT R4 ; [+2]
       55 GETIMPORT                        R3 K2 [assert]
       57 CALL                             R3 1 0
       58 GETUPVAL                         R3 0
       59 NAMECALL                         R4 R0 K18 ["X"]
       61 CALL                             R4 1 1
       62 GETTABLEKS                       R5 R1 K18 ["X"]
       64 MOVE                             R6 R2
       65 CALL                             R3 3 0
       66 GETUPVAL                         R3 0
       67 NAMECALL                         R4 R0 K19 ["Y"]
       69 CALL                             R4 1 1
       70 GETTABLEKS                       R5 R1 K19 ["Y"]
       72 MOVE                             R6 R2
       73 CALL                             R3 3 0
       74 GETUPVAL                         R3 0
       75 NAMECALL                         R4 R0 K20 ["Z"]
       77 CALL                             R4 1 1
       78 GETTABLEKS                       R5 R1 K20 ["Z"]
       80 MOVE                             R6 R2
       81 CALL                             R3 3 0
       82 RETURN                           R0 0
       83 LOADK                            R5 K21 ["EulerRotationCurve"]
       84 NAMECALL                         R3 R0 K4 ["IsA"]
       86 CALL                             R3 2 1
       87 JUMPIFNOT                        R3 ; [+42]
       88 FASTCALL1                        TYPEOF R1 ; [+3]
       89 MOVE                             R6 R1
       90 GETIMPORT                        R5 K6 [typeof]
       92 CALL                             R5 1 1
       93 JUMPIFEQKS                       R5 K22 ["CFrame"] ; [+2]
       95 LOADB                            R4 0 +1
       96 LOADB                            R4 1
       97 FASTCALL1                        ASSERT R4 ; [+2]
       98 GETIMPORT                        R3 K2 [assert]
      100 CALL                             R3 1 0
      101 NAMECALL                         R3 R1 K23 ["ToOrientation"]
      103 CALL                             R3 1 3
      104 GETIMPORT                        R6 K26 [Enum.RotationOrder.YXZ]
      106 SETTABLEKS                       R6 R0 K24 ["RotationOrder"]
      108 GETUPVAL                         R6 0
      109 NAMECALL                         R7 R0 K18 ["X"]
      111 CALL                             R7 1 1
      112 MOVE                             R8 R3
      113 MOVE                             R9 R2
      114 CALL                             R6 3 0
      115 GETUPVAL                         R6 0
      116 NAMECALL                         R7 R0 K19 ["Y"]
      118 CALL                             R7 1 1
      119 MOVE                             R8 R4
      120 MOVE                             R9 R2
      121 CALL                             R6 3 0
      122 GETUPVAL                         R6 0
      123 NAMECALL                         R7 R0 K20 ["Z"]
      125 CALL                             R7 1 1
      126 MOVE                             R8 R5
      127 MOVE                             R9 R2
      128 CALL                             R6 3 0
      129 RETURN                           R0 0
      130 LOADK                            R5 K27 ["RotationCurve"]
      131 NAMECALL                         R3 R0 K4 ["IsA"]
      133 CALL                             R3 2 1
      134 JUMPIFNOT                        R3 ; [+25]
      135 FASTCALL1                        TYPEOF R1 ; [+3]
      136 MOVE                             R6 R1
      137 GETIMPORT                        R5 K6 [typeof]
      139 CALL                             R5 1 1
      140 JUMPIFEQKS                       R5 K22 ["CFrame"] ; [+2]
      142 LOADB                            R4 0 +1
      143 LOADB                            R4 1
      144 FASTCALL1                        ASSERT R4 ; [+2]
      145 GETIMPORT                        R3 K2 [assert]
      147 CALL                             R3 1 0
      148 GETIMPORT                        R3 K29 [RotationCurveKey.new]
      150 MOVE                             R4 R2
      151 MOVE                             R5 R1
      152 GETIMPORT                        R6 K14 [Enum.KeyInterpolationMode.Linear]
      154 CALL                             R3 3 1
      155 MOVE                             R6 R3
      156 NAMECALL                         R4 R0 K15 ["InsertKey"]
      158 CALL                             R4 2 0
      159 RETURN                           R0 0
      160 LOADK                            R5 K30 ["MarkerCurve"]
      161 NAMECALL                         R3 R0 K4 ["IsA"]
      163 CALL                             R3 2 1
      164 JUMPIFNOT                        R3 ; [+32]
      165 FASTCALL1                        TYPEOF R1 ; [+3]
      166 MOVE                             R6 R1
      167 GETIMPORT                        R5 K6 [typeof]
      169 CALL                             R5 1 1
      170 JUMPIFEQKS                       R5 K31 ["string"] ; [+2]
      172 LOADB                            R4 0 +1
      173 LOADB                            R4 1
      174 FASTCALL1                        ASSERT R4 ; [+2]
      175 GETIMPORT                        R3 K2 [assert]
      177 CALL                             R3 1 0
      178 GETTABLEKS                       R3 R0 K32 ["Length"]
      180 JUMPIFEQKN                       R3 K33 [0] ; [+10]
      182 GETTABLEKS                       R5 R0 K32 ["Length"]
      184 NAMECALL                         R3 R0 K34 ["GetMarkerAtIndex"]
      186 CALL                             R3 2 1
      187 GETTABLEKS                       R3 R3 K35 ["Value"]
      189 JUMPIFEQ                         R3 R1 ; [+11]
      191 MOVE                             R5 R2
      192 MOVE                             R6 R1
      193 NAMECALL                         R3 R0 K36 ["InsertMarkerAtTime"]
      195 CALL                             R3 3 0
      196 RETURN                           R0 0
      197 GETIMPORT                        R3 K38 [warn]
      199 LOADK                            R4 K39 ["Unrecognized curve type"]
      200 CALL                             R3 1 0
      201 RETURN                           R0 0

PROTO_7:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["number"] ; [+3]
        7 LOADK                            R1 K3 ["FloatCurve"]
        8 RETURN                           R1 1
        9 FASTCALL1                        TYPEOF R0 ; [+3]
       10 MOVE                             R2 R0
       11 GETIMPORT                        R1 K1 [typeof]
       13 CALL                             R1 1 1
       14 JUMPIFNOTEQKS                    R1 K4 ["Vector3"] ; [+3]
       16 LOADK                            R1 K5 ["Vector3Curve"]
       17 RETURN                           R1 1
       18 FASTCALL1                        TYPEOF R0 ; [+3]
       19 MOVE                             R2 R0
       20 GETIMPORT                        R1 K1 [typeof]
       22 CALL                             R1 1 1
       23 JUMPIFNOTEQKS                    R1 K6 ["CFrame"] ; [+3]
       25 LOADK                            R1 K7 ["RotationCurve"]
       26 RETURN                           R1 1
       27 FASTCALL1                        TYPEOF R0 ; [+3]
       28 MOVE                             R2 R0
       29 GETIMPORT                        R1 K1 [typeof]
       31 CALL                             R1 1 1
       32 JUMPIFNOTEQKS                    R1 K8 ["string"] ; [+3]
       34 LOADK                            R1 K9 ["MarkerCurve"]
       35 RETURN                           R1 1
       36 GETIMPORT                        R1 K11 [warn]
       38 LOADK                            R3 K12 ["Invalid curve value type: "]
       39 FASTCALL1                        TYPEOF R0 ; [+3]
       40 MOVE                             R5 R0
       41 GETIMPORT                        R4 K1 [typeof]
       43 CALL                             R4 1 1
       44 CONCAT                           R2 R3 R4
       45 CALL                             R1 1 0
       46 LOADNIL                          R1
       47 RETURN                           R1 1

PROTO_8:
        0 GETIMPORT                        R2 K1 [ipairs]
        2 NAMECALL                         R3 R1 K2 ["GetChildren"]
        4 CALL                             R3 1 -1
        5 CALL                             R2 -1 3
        6 FORGPREP_INEXT                   R2
        7 LOADK                            R9 K3 ["Folder"]
        8 NAMECALL                         R7 R6 K4 ["IsA"]
       10 CALL                             R7 2 1
       11 JUMPIFNOT                        R7 ; [+7]
       12 GETTABLEKS                       R7 R6 K5 ["Name"]
       14 SETTABLE                         R6 R0 R7
       15 GETUPVAL                         R7 0
       16 MOVE                             R8 R0
       17 MOVE                             R9 R6
       18 CALL                             R7 2 0
       19 FORGLOOP                         R2 2 [inext] ; [-13]
       21 RETURN                           R0 0

PROTO_9:
        0 LOADK                            R5 K0 ["Attachment"]
        1 NAMECALL                         R3 R0 K1 ["IsA"]
        3 CALL                             R3 2 1
        4 JUMPIFNOT                        R3 ; [+3]
        5 GETTABLEKS                       R2 R0 K2 ["WorldCFrame"]
        7 JUMP                             ; [+19]
        8 LOADK                            R5 K3 ["Model"]
        9 NAMECALL                         R3 R0 K1 ["IsA"]
       11 CALL                             R3 2 1
       12 JUMPIFNOT                        R3 ; [+12]
       13 GETTABLEKS                       R3 R0 K4 ["PrimaryPart"]
       15 JUMPIFNOT                        R3 ; [+5]
       16 GETTABLEKS                       R2 R0 K4 ["PrimaryPart"]
       18 GETTABLEKS                       R2 R2 K5 ["CFrame"]
       20 JUMP                             ; [+6]
       21 GETIMPORT                        R2 K7 [CFrame.new]
       23 CALL                             R2 0 1
       24 JUMP                             ; [+2]
       25 GETTABLEKS                       R2 R0 K5 ["CFrame"]
       27 LOADK                            R6 K0 ["Attachment"]
       28 NAMECALL                         R4 R1 K1 ["IsA"]
       30 CALL                             R4 2 1
       31 JUMPIFNOT                        R4 ; [+3]
       32 GETTABLEKS                       R3 R1 K2 ["WorldCFrame"]
       34 JUMP                             ; [+19]
       35 LOADK                            R6 K3 ["Model"]
       36 NAMECALL                         R4 R1 K1 ["IsA"]
       38 CALL                             R4 2 1
       39 JUMPIFNOT                        R4 ; [+12]
       40 GETTABLEKS                       R4 R1 K4 ["PrimaryPart"]
       42 JUMPIFNOT                        R4 ; [+5]
       43 GETTABLEKS                       R3 R1 K4 ["PrimaryPart"]
       45 GETTABLEKS                       R3 R3 K5 ["CFrame"]
       47 JUMP                             ; [+6]
       48 GETIMPORT                        R3 K7 [CFrame.new]
       50 CALL                             R3 0 1
       51 JUMP                             ; [+2]
       52 GETTABLEKS                       R3 R1 K5 ["CFrame"]
       54 LOADK                            R7 K0 ["Attachment"]
       55 NAMECALL                         R5 R1 K1 ["IsA"]
       57 CALL                             R5 2 1
       58 JUMPIFNOT                        R5 ; [+2]
       59 LOADK                            R4 K8 [{0.1, 0.1, 0.1}]
       60 JUMP                             ; [+12]
       61 LOADK                            R7 K3 ["Model"]
       62 NAMECALL                         R5 R1 K1 ["IsA"]
       64 CALL                             R5 2 1
       65 JUMPIFNOT                        R5 ; [+5]
       66 NAMECALL                         R5 R1 K9 ["GetBoundingBox"]
       68 CALL                             R5 1 2
       69 MOVE                             R4 R6
       70 JUMP                             ; [+2]
       71 GETTABLEKS                       R4 R1 K10 ["Size"]
       73 GETUPVAL                         R5 0
       74 MOVE                             R6 R3
       75 MOVE                             R7 R4
       76 GETTABLEKS                       R8 R2 K11 ["Position"]
       78 CALL                             R5 3 2
       79 DIV                              R7 R6 R4
       80 GETTABLEKS                       R9 R2 K11 ["Position"]
       82 SUB                              R8 R9 R5
       83 GETTABLEKS                       R8 R8 K12 ["Magnitude"]
       85 SUBK                             R13 R8 K14 [1]
       86 DIVK                             R12 R13 K15 [-0.8]
       87 LOADN                            R13 0
       88 LOADN                            R14 1
       89 FASTCALL                         MATH_CLAMP ; [+2]
       90 GETIMPORT                        R11 K18 [math.clamp]
       92 CALL                             R11 3 1
       93 MULK                             R10 R11 K14 [1]
       94 ADDK                             R9 R10 K13 [0]
       95 MOVE                             R10 R9
       96 LOADN                            R13 0
       97 LOADN                            R14 1
       98 FASTCALL3                        MATH_CLAMP R10 R13 R14
      100 MOVE                             R12 R10
      101 GETIMPORT                        R11 K18 [math.clamp]
      103 CALL                             R11 3 1
      104 MUL                              R12 R11 R11
      105 MULK                             R14 R11 K20 [2]
      106 SUBRK                            R13 R19 K14 [1]
      107 MUL                              R9 R12 R13
      108 GETTABLEKS                       R11 R3 K21 ["Rotation"]
      110 ADD                              R10 R11 R5
      111 NAMECALL                         R12 R10 K22 ["Inverse"]
      113 CALL                             R12 1 1
      114 MUL                              R11 R12 R2
      115 GETTABLEKS                       R12 R11 K11 ["Position"]
      117 GETTABLEKS                       R12 R12 K12 ["Magnitude"]
      119 DUPTABLE                         R13 K30 [{"target", "weight", "surfacePt", "surfacePtNorm", "surfaceOffset", "surfaceDist", "targetNamespace"}]
      120 SETTABLEKS                       R1 R13 K23 ["target"]
      122 SETTABLEKS                       R9 R13 K24 ["weight"]
      124 SETTABLEKS                       R5 R13 K25 ["surfacePt"]
      126 SETTABLEKS                       R7 R13 K26 ["surfacePtNorm"]
      128 SETTABLEKS                       R11 R13 K27 ["surfaceOffset"]
      130 SETTABLEKS                       R12 R13 K28 ["surfaceDist"]
      132 LOADK                            R14 K31 [""]
      133 SETTABLEKS                       R14 R13 K29 ["targetNamespace"]
      135 RETURN                           R13 1

PROTO_10:
        0 NEWTABLE                         R2 0 0
        2 GETIMPORT                        R3 K1 [pairs]
        4 MOVE                             R4 R1
        5 CALL                             R3 1 3
        6 FORGPREP_NEXT                    R3
        7 GETUPVAL                         R8 0
        8 MOVE                             R9 R0
        9 MOVE                             R10 R7
       10 CALL                             R8 2 1
       11 SETTABLEKS                       R6 R8 K2 ["targetNamespace"]
       13 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       15 MOVE                             R10 R2
       16 MOVE                             R11 R8
       17 GETIMPORT                        R9 K5 [table.insert]
       19 CALL                             R9 2 0
       20 FORGLOOP                         R3 2 ; [-14]
       22 RETURN                           R2 1

PROTO_11:
        0 GETTABLEKS                       R3 R0 K0 ["weight"]
        2 GETTABLEKS                       R4 R1 K0 ["weight"]
        4 JUMPIFLT                         R4 R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_12:
        0 GETUPVAL                         R6 0
        1 GETTABLE                         R5 R6 R0
        2 LOADK                            R9 K0 ["IkData"]
        3 NAMECALL                         R7 R5 K1 ["FindFirstChild"]
        5 CALL                             R7 2 1
        6 JUMPIFNOT                        R7 ; [+2]
        7 MOVE                             R6 R7
        8 JUMP                             ; [+9]
        9 GETIMPORT                        R8 K4 [Instance.new]
       11 LOADK                            R9 K5 ["Folder"]
       12 MOVE                             R10 R5
       13 CALL                             R8 2 1
       14 LOADK                            R9 K0 ["IkData"]
       15 SETTABLEKS                       R9 R8 K6 ["Name"]
       17 MOVE                             R6 R8
       18 MOVE                             R10 R1
       19 NAMECALL                         R8 R6 K1 ["FindFirstChild"]
       21 CALL                             R8 2 1
       22 JUMPIFNOT                        R8 ; [+2]
       23 MOVE                             R7 R8
       24 JUMP                             ; [+8]
       25 GETIMPORT                        R9 K4 [Instance.new]
       27 LOADK                            R10 K5 ["Folder"]
       28 MOVE                             R11 R6
       29 CALL                             R9 2 1
       30 SETTABLEKS                       R1 R9 K6 ["Name"]
       32 MOVE                             R7 R9
       33 FASTCALL1                        TYPEOF R3 ; [+3]
       34 MOVE                             R10 R3
       35 GETIMPORT                        R9 K8 [typeof]
       37 CALL                             R9 1 1
       38 JUMPIFNOTEQKS                    R9 K9 ["number"] ; [+3]
       40 LOADK                            R8 K10 ["FloatCurve"]
       41 JUMP                             ; [+38]
       42 FASTCALL1                        TYPEOF R3 ; [+3]
       43 MOVE                             R10 R3
       44 GETIMPORT                        R9 K8 [typeof]
       46 CALL                             R9 1 1
       47 JUMPIFNOTEQKS                    R9 K11 ["Vector3"] ; [+3]
       49 LOADK                            R8 K12 ["Vector3Curve"]
       50 JUMP                             ; [+29]
       51 FASTCALL1                        TYPEOF R3 ; [+3]
       52 MOVE                             R10 R3
       53 GETIMPORT                        R9 K8 [typeof]
       55 CALL                             R9 1 1
       56 JUMPIFNOTEQKS                    R9 K13 ["CFrame"] ; [+3]
       58 LOADK                            R8 K14 ["RotationCurve"]
       59 JUMP                             ; [+20]
       60 FASTCALL1                        TYPEOF R3 ; [+3]
       61 MOVE                             R10 R3
       62 GETIMPORT                        R9 K8 [typeof]
       64 CALL                             R9 1 1
       65 JUMPIFNOTEQKS                    R9 K15 ["string"] ; [+3]
       67 LOADK                            R8 K16 ["MarkerCurve"]
       68 JUMP                             ; [+11]
       69 GETIMPORT                        R9 K18 [warn]
       71 LOADK                            R11 K19 ["Invalid curve value type: "]
       72 FASTCALL1                        TYPEOF R3 ; [+3]
       73 MOVE                             R13 R3
       74 GETIMPORT                        R12 K8 [typeof]
       76 CALL                             R12 1 1
       77 CONCAT                           R10 R11 R12
       78 CALL                             R9 1 0
       79 LOADNIL                          R8
       80 JUMPIFNOT                        R8 ; [+20]
       81 MOVE                             R12 R2
       82 NAMECALL                         R10 R7 K1 ["FindFirstChild"]
       84 CALL                             R10 2 1
       85 JUMPIFNOT                        R10 ; [+2]
       86 MOVE                             R9 R10
       87 JUMP                             ; [+8]
       88 GETIMPORT                        R11 K4 [Instance.new]
       90 MOVE                             R12 R8
       91 MOVE                             R13 R7
       92 CALL                             R11 2 1
       93 SETTABLEKS                       R2 R11 K6 ["Name"]
       95 MOVE                             R9 R11
       96 GETUPVAL                         R10 1
       97 MOVE                             R11 R9
       98 MOVE                             R12 R3
       99 MOVE                             R13 R4
      100 CALL                             R10 3 0
      101 RETURN                           R0 0

PROTO_13:
        0 FASTCALL2K                       ASSERT R2 K0 ; [+5]
        2 MOVE                             R7 R2
        3 LOADK                            R8 K0 ["Missing char"]
        4 GETIMPORT                        R6 K2 [assert]
        6 CALL                             R6 2 0
        7 NEWTABLE                         R6 0 0
        9 GETUPVAL                         R7 0
       10 MOVE                             R8 R6
       11 MOVE                             R9 R0
       12 CALL                             R7 2 0
       13 GETUPVAL                         R8 1
       14 JUMPIFNOT                        R8 ; [+4]
       15 NAMECALL                         R7 R2 K3 ["GetDescendants"]
       17 CALL                             R7 1 1
       18 JUMP                             ; [+1]
       19 LOADNIL                          R7
       20 MOVE                             R8 R4
       21 LOADNIL                          R9
       22 LOADNIL                          R10
       23 FORGPREP                         R8
       24 GETUPVAL                         R14 2
       25 GETTABLEKS                       R14 R14 K4 ["TICK_FREQUENCY"]
       27 DIV                              R13 R12 R14
       28 MOVE                             R14 R5
       29 MOVE                             R15 R12
       30 CALL                             R14 1 0
       31 GETIMPORT                        R14 K6 [ipairs]
       33 MOVE                             R15 R3
       34 CALL                             R14 1 3
       35 FORGPREP_INEXT                   R14
       36 LOADNIL                          R19
       37 GETUPVAL                         R20 1
       38 JUMPIFNOT                        R20 ; [+23]
       39 GETIMPORT                        R20 K6 [ipairs]
       41 MOVE                             R21 R7
       42 CALL                             R20 1 3
       43 FORGPREP_INEXT                   R20
       44 LOADK                            R27 K7 ["Attachment"]
       45 NAMECALL                         R25 R24 K8 ["IsA"]
       47 CALL                             R25 2 1
       48 JUMPIF                           R25 ; [+5]
       49 LOADK                            R27 K9 ["BasePart"]
       50 NAMECALL                         R25 R24 K8 ["IsA"]
       52 CALL                             R25 2 1
       53 JUMPIFNOT                        R25 ; [+5]
       54 GETTABLEKS                       R25 R24 K10 ["Name"]
       56 JUMPIFNOTEQ                      R25 R18 ; [+2]
       58 MOVE                             R19 R24
       59 FORGLOOP                         R20 2 [inext] ; [-16]
       61 JUMP                             ; [+5]
       62 MOVE                             R22 R18
       63 NAMECALL                         R20 R2 K11 ["FindFirstChild"]
       65 CALL                             R20 2 1
       66 MOVE                             R19 R20
       67 JUMPIFNOTEQKNIL                  R19 ; [+2]
       69 LOADB                            R21 0 +1
       70 LOADB                            R21 1
       71 LOADK                            R23 K12 ["Missing eeff named "]
       72 MOVE                             R24 R18
       73 CONCAT                           R22 R23 R24
       74 FASTCALL2                        ASSERT R21 R22 ; [+3]
       76 GETIMPORT                        R20 K2 [assert]
       78 CALL                             R20 2 0
       79 GETUPVAL                         R20 3
       80 MOVE                             R21 R19
       81 MOVE                             R22 R1
       82 CALL                             R20 2 1
       83 GETIMPORT                        R21 K15 [table.sort]
       85 MOVE                             R22 R20
       86 DUPCLOSURE                       R23 K16 [PROTO_11]
       87 CALL                             R21 2 0
       88 LOADN                            R21 0
       89 GETIMPORT                        R22 K6 [ipairs]
       91 MOVE                             R23 R20
       92 CALL                             R22 1 3
       93 FORGPREP_INEXT                   R22
       94 GETTABLEKS                       R27 R26 K17 ["targetNamespace"]
       96 GETTABLEKS                       R28 R26 K18 ["surfacePtNorm"]
       98 GETTABLEKS                       R29 R26 K19 ["surfaceOffset"]
      100 GETTABLEKS                       R31 R26 K20 ["weight"]
      102 SUBRK                            R32 R21 K21 [1]
      103 FASTCALL2                        MATH_MIN R31 R32 ; [+3]
      105 GETIMPORT                        R30 K24 [math.min]
      107 CALL                             R30 2 1
      108 ADD                              R21 R21 R30
      109 NEWCLOSURE                       R31 P1
      110 CAPTURE                          VAL R6
      111 CAPTURE                          UPVAL U4
      112 MOVE                             R32 R31
      113 MOVE                             R33 R18
      114 MOVE                             R34 R27
      115 LOADK                            R35 K25 ["RawWeight"]
      116 GETTABLEKS                       R36 R26 K20 ["weight"]
      118 MOVE                             R37 R13
      119 CALL                             R32 5 0
      120 MOVE                             R32 R31
      121 MOVE                             R33 R18
      122 MOVE                             R34 R27
      123 LOADK                            R35 K26 ["Weight"]
      124 MOVE                             R36 R30
      125 MOVE                             R37 R13
      126 CALL                             R32 5 0
      127 MOVE                             R32 R31
      128 MOVE                             R33 R18
      129 MOVE                             R34 R27
      130 LOADK                            R35 K27 ["OffsetPos"]
      131 GETTABLEKS                       R36 R29 K28 ["Position"]
      133 MOVE                             R37 R13
      134 CALL                             R32 5 0
      135 MOVE                             R32 R31
      136 MOVE                             R33 R18
      137 MOVE                             R34 R27
      138 LOADK                            R35 K29 ["OffsetRot"]
      139 GETTABLEKS                       R36 R29 K30 ["Rotation"]
      141 MOVE                             R37 R13
      142 CALL                             R32 5 0
      143 MOVE                             R32 R31
      144 MOVE                             R33 R18
      145 MOVE                             R34 R27
      146 LOADK                            R35 K31 ["SurfacePoint"]
      147 MOVE                             R36 R28
      148 MOVE                             R37 R13
      149 CALL                             R32 5 0
      150 FORGLOOP                         R22 2 [inext] ; [-57]
      152 FORGLOOP                         R14 2 [inext] ; [-117]
      154 FORGLOOP                         R8 2 ; [-131]
      156 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ACEGetDescendantsEeff"]
        4 LOADB                            R3 0
        5 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
        7 CALL                             R0 3 1
        8 GETIMPORT                        R1 K5 [script]
       10 LOADK                            R3 K6 ["AnimationClipEditor"]
       11 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       13 CALL                             R1 2 1
       14 GETIMPORT                        R2 K9 [require]
       16 GETTABLEKS                       R3 R1 K10 ["Src"]
       18 GETTABLEKS                       R3 R3 K11 ["Util"]
       20 GETTABLEKS                       R3 R3 K12 ["Constants"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K13 [PROTO_0]
       24 DUPCLOSURE                       R4 K14 [PROTO_1]
       25 DUPCLOSURE                       R5 K15 [PROTO_2]
       26 DUPCLOSURE                       R6 K16 [PROTO_3]
       27 DUPCLOSURE                       R7 K17 [PROTO_4]
       28 DUPCLOSURE                       R8 K18 [PROTO_5]
       29 DUPCLOSURE                       R9 K19 [PROTO_6]
       30 CAPTURE                          VAL R9
       31 DUPCLOSURE                       R10 K20 [PROTO_7]
       32 DUPCLOSURE                       R11 K21 [PROTO_8]
       33 CAPTURE                          VAL R11
       34 DUPCLOSURE                       R12 K22 [PROTO_9]
       35 CAPTURE                          VAL R7
       36 DUPCLOSURE                       R13 K23 [PROTO_10]
       37 CAPTURE                          VAL R12
       38 DUPCLOSURE                       R14 K24 [PROTO_13]
       39 CAPTURE                          VAL R11
       40 CAPTURE                          VAL R0
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R13
       43 CAPTURE                          VAL R9
       44 RETURN                           R14 1
