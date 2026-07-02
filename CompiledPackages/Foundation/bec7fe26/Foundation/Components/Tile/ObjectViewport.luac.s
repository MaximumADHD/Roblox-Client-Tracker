PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["X"]
        2 GETTABLEKS                       R3 R1 K1 ["Y"]
        4 GETTABLEKS                       R4 R1 K2 ["Z"]
        6 FASTCALL3                        MATH_MAX R2 R3 R4
        8 MOVE                             R6 R2
        9 MOVE                             R7 R3
       10 MOVE                             R8 R4
       11 GETIMPORT                        R5 K5 [math.max]
       13 CALL                             R5 3 1
       14 FASTCALL1                        MATH_RAD R0 ; [+3]
       15 MOVE                             R10 R0
       16 GETIMPORT                        R9 K9 [math.rad]
       18 CALL                             R9 1 1
       19 DIVK                             R8 R9 K7 [2]
       20 FASTCALL1                        MATH_TAN R8 ; [+2]
       21 GETIMPORT                        R7 K11 [math.tan]
       23 CALL                             R7 1 1
       24 DIVRK                            R6 K6 [1] R7
       25 MUL                              R8 R5 R6
       26 DIVK                             R9 R4 K7 [2]
       27 ADD                              R7 R8 R9
       28 RETURN                           R7 1

PROTO_1:
        0 GETIMPORT                        R3 K2 [CFrame.fromAxisAngle]
        2 MOVE                             R4 R2
        3 MOVE                             R5 R1
        4 CALL                             R3 2 1
        5 MOVE                             R5 R0
        6 NAMECALL                         R3 R3 K3 ["VectorToWorldSpace"]
        8 CALL                             R3 2 -1
        9 RETURN                           R3 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+5]
        3 GETUPVAL                         R0 0
        4 LOADNIL                          R1
        5 SETTABLEKS                       R1 R0 K0 ["Parent"]
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+9]
        4 GETUPVAL                         R0 1
        5 JUMPIFEQKNIL                     R0 ; [+7]
        7 GETUPVAL                         R0 1
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K0 ["current"]
       11 SETTABLEKS                       R1 R0 K1 ["Parent"]
       13 NEWCLOSURE                       R0 P0
       14 CAPTURE                          UPVAL U1
       15 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+49]
        3 GETUPVAL                         R0 0
        4 NAMECALL                         R0 R0 K0 ["GetModelCFrame"]
        6 CALL                             R0 1 1
        7 GETUPVAL                         R1 1
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 GETUPVAL                         R1 2
       11 GETTABLEKS                       R2 R0 K1 ["LookVector"]
       13 CALL                             R1 1 0
       14 GETUPVAL                         R1 0
       15 NAMECALL                         R1 R1 K2 ["GetExtentsSize"]
       17 CALL                             R1 1 1
       18 GETUPVAL                         R2 3
       19 GETUPVAL                         R4 4
       20 GETTABLEKS                       R4 R4 K3 ["fieldOfView"]
       22 GETTABLEKS                       R5 R1 K4 ["X"]
       24 GETTABLEKS                       R6 R1 K5 ["Y"]
       26 GETTABLEKS                       R7 R1 K6 ["Z"]
       28 FASTCALL3                        MATH_MAX R5 R6 R7
       30 MOVE                             R9 R5
       31 MOVE                             R10 R6
       32 MOVE                             R11 R7
       33 GETIMPORT                        R8 K9 [math.max]
       35 CALL                             R8 3 1
       36 FASTCALL1                        MATH_RAD R4 ; [+3]
       37 MOVE                             R13 R4
       38 GETIMPORT                        R12 K13 [math.rad]
       40 CALL                             R12 1 1
       41 DIVK                             R11 R12 K11 [2]
       42 FASTCALL1                        MATH_TAN R11 ; [+2]
       43 GETIMPORT                        R10 K15 [math.tan]
       45 CALL                             R10 1 1
       46 DIVRK                            R9 K10 [1] R10
       47 MUL                              R10 R8 R9
       48 DIVK                             R11 R7 K11 [2]
       49 ADD                              R3 R10 R11
       50 CALL                             R2 1 0
       51 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+5]
        3 GETUPVAL                         R0 0
        4 LOADNIL                          R1
        5 SETTABLEKS                       R1 R0 K0 ["Parent"]
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K1 ["model"]
       10 JUMPIFEQKNIL                     R0 ; [+14]
       12 GETUPVAL                         R0 1
       13 GETTABLEKS                       R0 R0 K1 ["model"]
       15 GETUPVAL                         R1 2
       16 GETTABLEKS                       R1 R1 K2 ["current"]
       18 SETTABLEKS                       R1 R0 K0 ["Parent"]
       20 GETUPVAL                         R0 3
       21 GETUPVAL                         R1 1
       22 GETTABLEKS                       R1 R1 K1 ["model"]
       24 CALL                             R0 1 0
       25 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R3 R3 K1 ["getValue"]
        4 CALL                             R3 1 1
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R4 R4 K2 ["rotationSpeed"]
        8 ADD                              R2 R3 R4
        9 ORK                              R1 R2 K0 [0]
       10 CALL                             R0 1 0
       11 GETUPVAL                         R1 3
       12 GETUPVAL                         R2 1
       13 NAMECALL                         R2 R2 K1 ["getValue"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K5 [CFrame.fromAxisAngle]
       18 LOADK                            R4 K6 [{0, 1, 0}]
       19 MOVE                             R5 R2
       20 CALL                             R3 2 1
       21 MOVE                             R5 R1
       22 NAMECALL                         R3 R3 K7 ["VectorToWorldSpace"]
       24 CALL                             R3 2 1
       25 MOVE                             R0 R3
       26 GETIMPORT                        R1 K9 [CFrame.new]
       28 GETUPVAL                         R3 4
       29 GETTABLEKS                       R3 R3 K10 ["p"]
       31 GETUPVAL                         R5 5
       32 MUL                              R4 R0 R5
       33 ADD                              R2 R3 R4
       34 GETUPVAL                         R3 4
       35 GETTABLEKS                       R3 R3 K10 ["p"]
       37 CALL                             R1 2 1
       38 GETUPVAL                         R2 6
       39 MOVE                             R3 R1
       40 CALL                             R2 1 0
       41 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 1
        4 GETUPVAL                         R2 2
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 3
        7 GETTABLEKS                       R3 R3 K0 ["useState"]
        9 GETTABLEKS                       R4 R1 K1 ["model"]
       11 CALL                             R3 1 2
       12 GETUPVAL                         R5 3
       13 GETTABLEKS                       R5 R5 K2 ["useRef"]
       15 LOADNIL                          R6
       16 CALL                             R5 1 1
       17 GETUPVAL                         R6 3
       18 GETTABLEKS                       R6 R6 K2 ["useRef"]
       20 LOADNIL                          R7
       21 CALL                             R6 1 1
       22 GETUPVAL                         R7 3
       23 GETTABLEKS                       R7 R7 K3 ["useBinding"]
       25 GETIMPORT                        R8 K6 [CFrame.new]
       27 CALL                             R8 0 -1
       28 CALL                             R7 -1 2
       29 GETUPVAL                         R9 3
       30 GETTABLEKS                       R9 R9 K3 ["useBinding"]
       32 LOADN                            R10 0
       33 CALL                             R9 1 2
       34 GETUPVAL                         R11 3
       35 GETTABLEKS                       R11 R11 K0 ["useState"]
       37 GETIMPORT                        R12 K6 [CFrame.new]
       39 CALL                             R12 0 -1
       40 CALL                             R11 -1 2
       41 GETUPVAL                         R13 3
       42 GETTABLEKS                       R13 R13 K0 ["useState"]
       44 FASTCALL                         VECTOR ; [+2]
       45 GETIMPORT                        R14 K8 [Vector3.new]
       47 CALL                             R14 0 1
       48 CALL                             R13 1 2
       49 GETUPVAL                         R15 3
       50 GETTABLEKS                       R15 R15 K0 ["useState"]
       52 LOADN                            R16 0
       53 CALL                             R15 1 2
       54 GETUPVAL                         R17 3
       55 GETTABLEKS                       R17 R17 K9 ["useEffect"]
       57 NEWCLOSURE                       R18 P0
       58 CAPTURE                          VAL R6
       59 CAPTURE                          VAL R3
       60 NEWTABLE                         R19 0 0
       62 CALL                             R17 2 0
       63 GETUPVAL                         R17 3
       64 GETTABLEKS                       R17 R17 K9 ["useEffect"]
       66 NEWCLOSURE                       R18 P1
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R12
       69 CAPTURE                          VAL R14
       70 CAPTURE                          VAL R16
       71 CAPTURE                          VAL R1
       72 NEWTABLE                         R19 0 1
       74 MOVE                             R20 R3
       75 SETLIST                          R19 R20 1 [1]
       77 CALL                             R17 2 0
       78 GETUPVAL                         R17 3
       79 GETTABLEKS                       R17 R17 K9 ["useEffect"]
       81 NEWCLOSURE                       R18 P2
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R6
       85 CAPTURE                          VAL R4
       86 NEWTABLE                         R19 0 1
       88 GETTABLEKS                       R20 R1 K1 ["model"]
       90 SETLIST                          R19 R20 1 [1]
       92 CALL                             R17 2 0
       93 GETUPVAL                         R17 3
       94 GETTABLEKS                       R17 R17 K10 ["createElement"]
       96 LOADK                            R18 K11 ["Frame"]
       97 DUPTABLE                         R19 K17 [{["BackgroundTransparency"] = 1, ["Position"], ["AnchorPoint"], ["Size"]}]
       98 GETIMPORT                        R20 K20 [UDim2.fromScale]
      100 LOADN                            R21 0
      101 LOADN                            R22 0
      102 CALL                             R20 2 1
      103 SETTABLEKS                       R20 R19 K14 ["Position"]
      105 GETIMPORT                        R20 K22 [Vector2.new]
      107 LOADN                            R21 0
      108 LOADN                            R22 0
      109 CALL                             R20 2 1
      110 SETTABLEKS                       R20 R19 K15 ["AnchorPoint"]
      112 GETIMPORT                        R20 K20 [UDim2.fromScale]
      114 LOADN                            R21 1
      115 LOADN                            R22 1
      116 CALL                             R20 2 1
      117 SETTABLEKS                       R20 R19 K16 ["Size"]
      119 DUPTABLE                         R20 K25 [{"AspectRatioConstraint", "ViewportFrame"}]
      120 GETUPVAL                         R21 3
      121 GETTABLEKS                       R21 R21 K10 ["createElement"]
      123 LOADK                            R22 K26 ["UIAspectRatioConstraint"]
      124 DUPTABLE                         R23 K30 [{["AspectRatio"] = 1, ["AspectType"], ["DominantAxis"]}]
      125 GETIMPORT                        R24 K33 [Enum.AspectType.FitWithinMaxSize]
      127 SETTABLEKS                       R24 R23 K28 ["AspectType"]
      129 GETIMPORT                        R24 K35 [Enum.DominantAxis.Width]
      131 SETTABLEKS                       R24 R23 K29 ["DominantAxis"]
      133 CALL                             R21 2 1
      134 SETTABLEKS                       R21 R20 K23 ["AspectRatioConstraint"]
      136 GETUPVAL                         R21 3
      137 GETTABLEKS                       R21 R21 K10 ["createElement"]
      139 LOADK                            R22 K24 ["ViewportFrame"]
      140 DUPTABLE                         R23 K41 [{["BackgroundTransparency"] = 1, ["Size"], ["Position"], ["AnchorPoint"], ["LightColor"], ["LightDirection"] = {1, 1, 1}, ["Ambient"], ["CurrentCamera"]}]
      141 GETIMPORT                        R24 K42 [UDim2.new]
      143 LOADN                            R25 1
      144 LOADN                            R26 25
      145 LOADN                            R27 1
      146 LOADN                            R28 25
      147 CALL                             R24 4 1
      148 SETTABLEKS                       R24 R23 K16 ["Size"]
      150 GETIMPORT                        R24 K20 [UDim2.fromScale]
      152 LOADK                            R25 K43 [0.5]
      153 LOADK                            R26 K43 [0.5]
      154 CALL                             R24 2 1
      155 SETTABLEKS                       R24 R23 K14 ["Position"]
      157 GETIMPORT                        R24 K22 [Vector2.new]
      159 LOADK                            R25 K43 [0.5]
      160 LOADK                            R26 K43 [0.5]
      161 CALL                             R24 2 1
      162 SETTABLEKS                       R24 R23 K15 ["AnchorPoint"]
      164 GETTABLEKS                       R24 R2 K44 ["Color"]
      166 GETTABLEKS                       R24 R24 K45 ["Extended"]
      168 GETTABLEKS                       R24 R24 K46 ["Gray"]
      170 GETTABLEKS                       R24 R24 K47 ["Gray_200"]
      172 GETTABLEKS                       R24 R24 K48 ["Color3"]
      174 SETTABLEKS                       R24 R23 K36 ["LightColor"]
      176 GETTABLEKS                       R24 R2 K44 ["Color"]
      178 GETTABLEKS                       R24 R24 K45 ["Extended"]
      180 GETTABLEKS                       R24 R24 K46 ["Gray"]
      182 GETTABLEKS                       R24 R24 K47 ["Gray_200"]
      184 GETTABLEKS                       R24 R24 K48 ["Color3"]
      186 SETTABLEKS                       R24 R23 K39 ["Ambient"]
      188 SETTABLEKS                       R5 R23 K40 ["CurrentCamera"]
      190 DUPTABLE                         R24 K52 [{"Camera", "WorldModel", "RenderSteppedConnection"}]
      191 GETUPVAL                         R25 3
      192 GETTABLEKS                       R25 R25 K10 ["createElement"]
      194 LOADK                            R26 K49 ["Camera"]
      195 DUPTABLE                         R27 K56 [{"CameraType", "FieldOfView", "CFrame", "ref"}]
      196 GETIMPORT                        R28 K58 [Enum.CameraType.Scriptable]
      198 SETTABLEKS                       R28 R27 K53 ["CameraType"]
      200 GETTABLEKS                       R28 R1 K59 ["fieldOfView"]
      202 SETTABLEKS                       R28 R27 K54 ["FieldOfView"]
      204 SETTABLEKS                       R7 R27 K4 ["CFrame"]
      206 SETTABLEKS                       R5 R27 K55 ["ref"]
      208 CALL                             R25 2 1
      209 SETTABLEKS                       R25 R24 K49 ["Camera"]
      211 GETUPVAL                         R25 3
      212 GETTABLEKS                       R25 R25 K10 ["createElement"]
      214 LOADK                            R26 K50 ["WorldModel"]
      215 DUPTABLE                         R27 K60 [{"ref"}]
      216 SETTABLEKS                       R6 R27 K55 ["ref"]
      218 CALL                             R25 2 1
      219 SETTABLEKS                       R25 R24 K50 ["WorldModel"]
      221 GETUPVAL                         R25 3
      222 GETTABLEKS                       R25 R25 K10 ["createElement"]
      224 GETUPVAL                         R26 4
      225 DUPTABLE                         R27 K63 [{"event", "callback"}]
      226 GETUPVAL                         R28 5
      227 GETTABLEKS                       R28 R28 K64 ["RenderStepped"]
      229 SETTABLEKS                       R28 R27 K61 ["event"]
      231 NEWCLOSURE                       R28 P3
      232 CAPTURE                          VAL R10
      233 CAPTURE                          VAL R9
      234 CAPTURE                          VAL R1
      235 CAPTURE                          VAL R13
      236 CAPTURE                          VAL R11
      237 CAPTURE                          VAL R15
      238 CAPTURE                          VAL R8
      239 SETTABLEKS                       R28 R27 K62 ["callback"]
      241 CALL                             R25 2 1
      242 SETTABLEKS                       R25 R24 K51 ["RenderSteppedConnection"]
      244 CALL                             R21 3 1
      245 SETTABLEKS                       R21 R20 K24 ["ViewportFrame"]
      247 CALL                             R17 3 -1
      248 RETURN                           R17 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["ReactUtils"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R3 K9 ["EventConnection"]
       21 GETIMPORT                        R5 K6 [require]
       23 GETTABLEKS                       R6 R0 K10 ["Utility"]
       25 GETTABLEKS                       R6 R6 K11 ["withDefaults"]
       27 CALL                             R5 1 1
       28 GETIMPORT                        R6 K6 [require]
       30 GETTABLEKS                       R7 R0 K12 ["Providers"]
       32 GETTABLEKS                       R7 R7 K13 ["Style"]
       34 GETTABLEKS                       R7 R7 K14 ["useTokens"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K6 [require]
       39 GETTABLEKS                       R8 R0 K10 ["Utility"]
       41 GETTABLEKS                       R8 R8 K15 ["Wrappers"]
       43 CALL                             R7 1 1
       44 GETTABLEKS                       R7 R7 K16 ["Services"]
       46 GETTABLEKS                       R7 R7 K17 ["RunService"]
       48 DUPCLOSURE                       R8 K18 [PROTO_0]
       49 DUPCLOSURE                       R9 K19 [PROTO_1]
       50 DUPTABLE                         R10 K24 [{["rotationSpeed"] = 0.01, ["fieldOfView"] = 70}]
       51 DUPCLOSURE                       R11 K25 [PROTO_7]
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R10
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R7
       58 RETURN                           R11 1
