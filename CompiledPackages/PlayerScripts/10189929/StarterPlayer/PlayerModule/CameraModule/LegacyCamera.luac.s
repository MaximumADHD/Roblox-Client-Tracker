PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        7 GETIMPORT                        R0 K2 [setmetatable]
        9 CALL                             R0 2 1
       10 GETIMPORT                        R1 K6 [Enum.CameraType.Fixed]
       12 SETTABLEKS                       R1 R0 K7 ["cameraType"]
       14 GETIMPORT                        R1 K9 [tick]
       16 CALL                             R1 0 1
       17 SETTABLEKS                       R1 R0 K10 ["lastUpdate"]
       19 LOADNIL                          R1
       20 SETTABLEKS                       R1 R0 K11 ["lastDistanceToSubject"]
       22 RETURN                           R0 1

PROTO_1:
        0 LOADK                            R1 K0 ["LegacyCamera"]
        1 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["cameraType"]
        2 JUMPIF                           R2 ; [+3]
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 RETURN                           R2 2
        6 GETIMPORT                        R2 K2 [tick]
        8 CALL                             R2 0 1
        9 GETTABLEKS                       R4 R0 K3 ["lastUpdate"]
       11 SUB                              R3 R2 R4
       12 GETIMPORT                        R4 K5 [workspace]
       14 GETTABLEKS                       R4 R4 K6 ["CurrentCamera"]
       16 GETTABLEKS                       R5 R4 K7 ["CFrame"]
       18 GETTABLEKS                       R6 R4 K8 ["Focus"]
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R7 R7 K9 ["LocalPlayer"]
       23 GETUPVAL                         R8 1
       24 GETTABLEKS                       R8 R8 K10 ["getRotation"]
       26 MOVE                             R9 R1
       27 CALL                             R8 1 1
       28 GETTABLEKS                       R9 R0 K3 ["lastUpdate"]
       30 JUMPIFEQKNIL                     R9 ; [+4]
       32 LOADN                            R9 1
       33 JUMPIFNOTLT                      R9 R3 ; [+4]
       35 LOADNIL                          R9
       36 SETTABLEKS                       R9 R0 K11 ["lastDistanceToSubject"]
       38 NAMECALL                         R9 R0 K12 ["GetSubjectPosition"]
       40 CALL                             R9 1 1
       41 GETTABLEKS                       R10 R0 K0 ["cameraType"]
       43 GETIMPORT                        R11 K16 [Enum.CameraType.Fixed]
       45 JUMPIFNOTEQ                      R10 R11 ; [+29]
       47 JUMPIFNOT                        R9 ; [+160]
       48 JUMPIFNOT                        R7 ; [+159]
       49 JUMPIFNOT                        R4 ; [+158]
       50 NAMECALL                         R10 R0 K17 ["GetCameraToSubjectDistance"]
       52 CALL                             R10 1 1
       53 LOADNIL                          R13
       54 MOVE                             R14 R8
       55 NAMECALL                         R11 R0 K18 ["CalculateNewLookVectorFromArg"]
       57 CALL                             R11 3 1
       58 GETTABLEKS                       R6 R4 K8 ["Focus"]
       60 GETIMPORT                        R12 K20 [CFrame.new]
       62 GETTABLEKS                       R13 R4 K7 ["CFrame"]
       64 GETTABLEKS                       R13 R13 K21 ["Position"]
       66 GETTABLEKS                       R15 R4 K7 ["CFrame"]
       68 GETTABLEKS                       R15 R15 K21 ["Position"]
       70 MUL                              R16 R10 R11
       71 ADD                              R14 R15 R16
       72 CALL                             R12 2 1
       73 MOVE                             R5 R12
       74 JUMP                             ; [+133]
       75 GETTABLEKS                       R10 R0 K0 ["cameraType"]
       77 GETIMPORT                        R11 K23 [Enum.CameraType.Attach]
       79 JUMPIFNOTEQ                      R10 R11 ; [+45]
       81 NAMECALL                         R10 R0 K24 ["GetSubjectCFrame"]
       83 CALL                             R10 1 1
       84 GETTABLEKS                       R11 R4 K7 ["CFrame"]
       86 NAMECALL                         R11 R11 K25 ["ToEulerAnglesYXZ"]
       88 CALL                             R11 1 1
       89 NAMECALL                         R12 R10 K25 ["ToEulerAnglesYXZ"]
       91 CALL                             R12 1 2
       92 GETTABLEKS                       R16 R8 K26 ["Y"]
       94 SUB                              R15 R11 R16
       95 LOADK                            R16 K27 [-1.3962634015954636]
       96 LOADK                            R17 K28 [1.3962634015954636]
       97 FASTCALL                         MATH_CLAMP ; [+2]
       98 GETIMPORT                        R14 K31 [math.clamp]
      100 CALL                             R14 3 1
      101 MOVE                             R11 R14
      102 GETIMPORT                        R14 K20 [CFrame.new]
      104 GETTABLEKS                       R15 R10 K21 ["Position"]
      106 CALL                             R14 1 1
      107 GETIMPORT                        R15 K33 [CFrame.fromEulerAnglesYXZ]
      109 MOVE                             R16 R11
      110 MOVE                             R17 R13
      111 LOADN                            R18 0
      112 CALL                             R15 3 1
      113 MUL                              R6 R14 R15
      114 GETIMPORT                        R14 K20 [CFrame.new]
      116 LOADN                            R15 0
      117 LOADN                            R16 0
      118 MOVE                             R19 R1
      119 NAMECALL                         R17 R0 K34 ["StepZoom"]
      121 CALL                             R17 2 -1
      122 CALL                             R14 -1 1
      123 MUL                              R5 R6 R14
      124 JUMP                             ; [+83]
      125 GETTABLEKS                       R10 R0 K0 ["cameraType"]
      127 GETIMPORT                        R11 K36 [Enum.CameraType.Watch]
      129 JUMPIFNOTEQ                      R10 R11 ; [+73]
      131 JUMPIFNOT                        R9 ; [+76]
      132 JUMPIFNOT                        R7 ; [+75]
      133 JUMPIFNOT                        R4 ; [+74]
      134 LOADNIL                          R10
      135 GETTABLEKS                       R11 R4 K7 ["CFrame"]
      137 GETTABLEKS                       R11 R11 K21 ["Position"]
      139 JUMPIFNOTEQ                      R9 R11 ; [+10]
      141 GETIMPORT                        R11 K38 [warn]
      143 LOADK                            R12 K39 ["Camera cannot watch subject in same position as itself"]
      144 CALL                             R11 1 0
      145 GETTABLEKS                       R11 R4 K7 ["CFrame"]
      147 GETTABLEKS                       R12 R4 K8 ["Focus"]
      149 RETURN                           R11 2
      150 NAMECALL                         R11 R0 K40 ["GetHumanoid"]
      152 CALL                             R11 1 1
      153 JUMPIFNOT                        R11 ; [+26]
      154 GETTABLEKS                       R12 R11 K41 ["RootPart"]
      156 JUMPIFNOT                        R12 ; [+23]
      157 GETTABLEKS                       R13 R4 K7 ["CFrame"]
      159 GETTABLEKS                       R13 R13 K21 ["Position"]
      161 SUB                              R12 R9 R13
      162 GETTABLEKS                       R10 R12 K42 ["unit"]
      164 GETTABLEKS                       R13 R0 K11 ["lastDistanceToSubject"]
      166 JUMPIFNOT                        R13 ; [+13]
      167 GETTABLEKS                       R13 R0 K11 ["lastDistanceToSubject"]
      169 NAMECALL                         R14 R0 K17 ["GetCameraToSubjectDistance"]
      171 CALL                             R14 1 1
      172 JUMPIFNOTEQ                      R13 R14 ; [+7]
      174 GETTABLEKS                       R13 R12 K43 ["magnitude"]
      176 MOVE                             R16 R13
      177 NAMECALL                         R14 R0 K44 ["SetCameraToSubjectDistance"]
      179 CALL                             R14 2 0
      180 NAMECALL                         R12 R0 K17 ["GetCameraToSubjectDistance"]
      182 CALL                             R12 1 1
      183 MOVE                             R15 R10
      184 MOVE                             R16 R8
      185 NAMECALL                         R13 R0 K18 ["CalculateNewLookVectorFromArg"]
      187 CALL                             R13 3 1
      188 GETIMPORT                        R14 K20 [CFrame.new]
      190 MOVE                             R15 R9
      191 CALL                             R14 1 1
      192 MOVE                             R6 R14
      193 GETIMPORT                        R14 K20 [CFrame.new]
      195 MUL                              R16 R12 R13
      196 SUB                              R15 R9 R16
      197 MOVE                             R16 R9
      198 CALL                             R14 2 1
      199 MOVE                             R5 R14
      200 SETTABLEKS                       R12 R0 K11 ["lastDistanceToSubject"]
      202 JUMP                             ; [+5]
      203 GETTABLEKS                       R10 R4 K7 ["CFrame"]
      205 GETTABLEKS                       R11 R4 K8 ["Focus"]
      207 RETURN                           R10 2
      208 SETTABLEKS                       R2 R0 K3 ["lastUpdate"]
      210 RETURN                           R5 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 LOADK                            R3 K5 ["CameraUtils"]
        8 NAMECALL                         R1 R1 K6 ["WaitForChild"]
       10 CALL                             R1 2 -1
       11 CALL                             R0 -1 1
       12 GETIMPORT                        R1 K1 [require]
       14 GETIMPORT                        R2 K3 [script]
       16 GETTABLEKS                       R2 R2 K4 ["Parent"]
       18 LOADK                            R4 K7 ["CameraInput"]
       19 NAMECALL                         R2 R2 K6 ["WaitForChild"]
       21 CALL                             R2 2 -1
       22 CALL                             R1 -1 1
       23 GETIMPORT                        R2 K9 [game]
       25 LOADK                            R4 K10 ["Players"]
       26 NAMECALL                         R2 R2 K11 ["GetService"]
       28 CALL                             R2 2 1
       29 GETIMPORT                        R3 K1 [require]
       31 GETIMPORT                        R4 K3 [script]
       33 GETTABLEKS                       R4 R4 K4 ["Parent"]
       35 LOADK                            R6 K12 ["BaseCamera"]
       36 NAMECALL                         R4 R4 K6 ["WaitForChild"]
       38 CALL                             R4 2 -1
       39 CALL                             R3 -1 1
       40 NEWTABLE                         R5 4 0
       42 FASTCALL2                        SETMETATABLE R5 R3 ; [+4]
       44 MOVE                             R6 R3
       45 GETIMPORT                        R4 K14 [setmetatable]
       47 CALL                             R4 2 1
       48 SETTABLEKS                       R4 R4 K15 ["__index"]
       50 DUPCLOSURE                       R5 K16 [PROTO_0]
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R4
       53 SETTABLEKS                       R5 R4 K17 ["new"]
       55 DUPCLOSURE                       R5 K18 [PROTO_1]
       56 SETTABLEKS                       R5 R4 K19 ["GetModuleName"]
       58 DUPCLOSURE                       R5 K20 [PROTO_2]
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R1
       61 SETTABLEKS                       R5 R4 K21 ["Update"]
       63 RETURN                           R4 1
