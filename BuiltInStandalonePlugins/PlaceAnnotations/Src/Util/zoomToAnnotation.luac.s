PROTO_0:
        0 JUMPIFNOTEQKN                    R0 K0 [0] ; [+3]
        2 LOADK                            R2 K1 [0.1]
        3 RETURN                           R2 1
        4 FASTCALL1                        MATH_ABS R0 ; [+3]
        5 MOVE                             R3 R0
        6 GETIMPORT                        R2 K4 [math.abs]
        8 CALL                             R2 1 1
        9 JUMPIFNOTLT                      R2 R1 ; [+8]
       11 FASTCALL1                        MATH_SIGN R0 ; [+3]
       12 MOVE                             R4 R0
       13 GETIMPORT                        R3 K6 [math.sign]
       15 CALL                             R3 1 1
       16 MULK                             R2 R3 K1 [0.1]
       17 RETURN                           R2 1
       18 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K1 [workspace]
        2 GETTABLEKS                       R0 R1 K2 ["CurrentCamera"]
        4 GETUPVAL                         R1 0
        5 SETTABLEKS                       R1 R0 K3 ["CameraType"]
        7 GETUPVAL                         R0 1
        8 GETUPVAL                         R1 2
        9 SETTABLEKS                       R1 R0 K4 ["Selected"]
       11 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K1 [game]
        2 LOADK                            R3 K2 ["AnnotationsService"]
        3 NAMECALL                         R1 R1 K3 ["GetService"]
        5 CALL                             R1 2 1
        6 GETTABLEKS                       R2 R0 K4 ["Adornee"]
        8 JUMPIF                           R2 ; [+3]
        9 SETTABLEKS                       R0 R1 K5 ["Selected"]
       11 RETURN                           R0 0
       12 GETTABLEKS                       R3 R0 K4 ["Adornee"]
       14 FASTCALL2K                       ASSERT R3 K6 ; [+4]
       16 LOADK                            R4 K6 ["Can only zoom to annotations with adornees"]
       17 GETIMPORT                        R2 K8 [assert]
       19 CALL                             R2 2 0
       20 GETTABLEKS                       R2 R0 K4 ["Adornee"]
       22 LOADK                            R4 K9 ["PVInstance"]
       23 NAMECALL                         R2 R2 K10 ["IsA"]
       25 CALL                             R2 2 1
       26 JUMPIFNOT                        R2 ; [+177]
       27 GETTABLEKS                       R2 R0 K4 ["Adornee"]
       29 NAMECALL                         R3 R0 K11 ["GetAbsolutePosition"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K14 [RaycastParams.new]
       34 CALL                             R4 0 1
       35 NEWTABLE                         R7 0 1
       37 GETTABLEKS                       R8 R0 K4 ["Adornee"]
       39 SETLIST                          R7 R8 1 [1]
       41 NAMECALL                         R5 R4 K15 ["AddToFilter"]
       43 CALL                             R5 2 0
       44 GETIMPORT                        R5 K19 [Enum.RaycastFilterType.Include]
       46 SETTABLEKS                       R5 R4 K20 ["FilterType"]
       48 LOADK                            R5 K21 ["StudioSelectable"]
       49 SETTABLEKS                       R5 R4 K22 ["CollisionGroup"]
       51 LOADB                            R5 1
       52 SETTABLEKS                       R5 R4 K23 ["BruteForceAllSlow"]
       54 GETIMPORT                        R5 K25 [workspace]
       56 GETTABLEKS                       R9 R0 K26 ["AdorneeOffset"]
       58 GETTABLEKS                       R8 R9 K27 ["Unit"]
       60 ADD                              R7 R3 R8
       61 GETTABLEKS                       R9 R0 K26 ["AdorneeOffset"]
       63 MINUS                            R8 R9
       64 MOVE                             R9 R4
       65 NAMECALL                         R5 R5 K28 ["Raycast"]
       67 CALL                             R5 4 1
       68 GETIMPORT                        R8 K25 [workspace]
       70 GETTABLEKS                       R7 R8 K29 ["CurrentCamera"]
       72 GETTABLEKS                       R6 R7 K30 ["CameraType"]
       74 GETIMPORT                        R8 K25 [workspace]
       76 GETTABLEKS                       R7 R8 K29 ["CurrentCamera"]
       78 GETIMPORT                        R8 K32 [Enum.CameraType.Custom]
       80 SETTABLEKS                       R8 R7 K30 ["CameraType"]
       82 GETIMPORT                        R8 K25 [workspace]
       84 GETTABLEKS                       R7 R8 K29 ["CurrentCamera"]
       86 GETIMPORT                        R8 K34 [CFrame.new]
       88 MOVE                             R9 R3
       89 CALL                             R8 1 1
       90 SETTABLEKS                       R8 R7 K35 ["Focus"]
       92 JUMPIFNOT                        R5 ; [+5]
       93 GETTABLEKS                       R8 R5 K36 ["Normal"]
       95 GETTABLEKS                       R7 R8 K27 ["Unit"]
       97 JUMP                             ; [+3]
       98 GETTABLEKS                       R8 R3 K27 ["Unit"]
      100 MINUS                            R7 R8
      101 GETTABLEKS                       R9 R7 K37 ["Y"]
      103 FASTCALL1                        MATH_ABS R9 ; [+2]
      104 GETIMPORT                        R8 K40 [math.abs]
      106 CALL                             R8 1 1
      107 LOADK                            R9 K41 [0.9]
      108 JUMPIFNOTLT                      R9 R8 ; [+57]
      110 GETTABLEKS                       R10 R7 K42 ["X"]
      112 JUMPIFNOTEQKN                    R10 K43 [0] ; [+3]
      114 LOADK                            R9 K44 [0.1]
      115 JUMP                             ; [+16]
      116 FASTCALL1                        MATH_ABS R10 ; [+3]
      117 MOVE                             R12 R10
      118 GETIMPORT                        R11 K40 [math.abs]
      120 CALL                             R11 1 1
      121 LOADK                            R12 K44 [0.1]
      122 JUMPIFNOTLT                      R11 R12 ; [+8]
      124 FASTCALL1                        MATH_SIGN R10 ; [+3]
      125 MOVE                             R12 R10
      126 GETIMPORT                        R11 K46 [math.sign]
      128 CALL                             R11 1 1
      129 MULK                             R9 R11 K44 [0.1]
      130 JUMP                             ; [+1]
      131 MOVE                             R9 R10
      132 GETTABLEKS                       R12 R7 K37 ["Y"]
      134 FASTCALL1                        MATH_SIGN R12 ; [+2]
      135 GETIMPORT                        R11 K46 [math.sign]
      137 CALL                             R11 1 1
      138 MULK                             R10 R11 K41 [0.9]
      139 GETTABLEKS                       R12 R7 K47 ["Z"]
      141 JUMPIFNOTEQKN                    R12 K43 [0] ; [+3]
      143 LOADK                            R11 K44 [0.1]
      144 JUMP                             ; [+16]
      145 FASTCALL1                        MATH_ABS R12 ; [+3]
      146 MOVE                             R14 R12
      147 GETIMPORT                        R13 K40 [math.abs]
      149 CALL                             R13 1 1
      150 LOADK                            R14 K44 [0.1]
      151 JUMPIFNOTLT                      R13 R14 ; [+8]
      153 FASTCALL1                        MATH_SIGN R12 ; [+3]
      154 MOVE                             R14 R12
      155 GETIMPORT                        R13 K46 [math.sign]
      157 CALL                             R13 1 1
      158 MULK                             R11 R13 K44 [0.1]
      159 JUMP                             ; [+1]
      160 MOVE                             R11 R12
      161 FASTCALL                         VECTOR ; [+2]
      162 GETIMPORT                        R8 K49 [Vector3.new]
      164 CALL                             R8 3 1
      165 MOVE                             R7 R8
      166 GETUPVAL                         R8 0
      167 GETIMPORT                        R11 K25 [workspace]
      169 GETTABLEKS                       R10 R11 K29 ["CurrentCamera"]
      171 GETIMPORT                        R11 K51 [TweenInfo.new]
      173 LOADK                            R12 K52 [0.3]
      174 GETIMPORT                        R13 K55 [Enum.EasingStyle.Circular]
      176 GETIMPORT                        R14 K58 [Enum.EasingDirection.InOut]
      178 CALL                             R11 3 1
      179 DUPTABLE                         R12 K59 [{"CFrame"}]
      180 GETIMPORT                        R13 K61 [CFrame.lookAt]
      182 MULK                             R15 R7 K62 [10]
      183 ADD                              R14 R3 R15
      184 MOVE                             R15 R3
      185 CALL                             R13 2 1
      186 SETTABLEKS                       R13 R12 K33 ["CFrame"]
      188 NAMECALL                         R8 R8 K63 ["Create"]
      190 CALL                             R8 4 1
      191 GETTABLEKS                       R9 R8 K64 ["Completed"]
      193 NEWCLOSURE                       R11 P0
      194 CAPTURE                          VAL R6
      195 CAPTURE                          VAL R1
      196 CAPTURE                          VAL R0
      197 NAMECALL                         R9 R9 K65 ["Once"]
      199 CALL                             R9 2 0
      200 NAMECALL                         R9 R8 K66 ["Play"]
      202 CALL                             R9 1 0
      203 RETURN                           R0 0
      204 GETIMPORT                        R2 K68 [error]
      206 LOADK                            R3 K69 ["Adornee type is unsupported."]
      207 CALL                             R2 1 0
      208 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K9 [game]
       16 LOADK                            R4 K10 ["TweenService"]
       17 NAMECALL                         R2 R2 K11 ["GetService"]
       19 CALL                             R2 2 1
       20 DUPCLOSURE                       R3 K12 [PROTO_0]
       21 DUPCLOSURE                       R4 K13 [PROTO_2]
       22 CAPTURE                          VAL R2
       23 RETURN                           R4 1
