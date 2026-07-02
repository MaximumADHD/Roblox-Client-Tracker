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
        1 JUMPIFEQKNIL                     R0 ; [+58]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["FoundationMigrateDeprecatedApis"]
        6 JUMPIFNOT                        R1 ; [+5]
        7 GETUPVAL                         R0 0
        8 NAMECALL                         R0 R0 K1 ["GetPivot"]
       10 CALL                             R0 1 1
       11 JUMP                             ; [+4]
       12 GETUPVAL                         R0 0
       13 NAMECALL                         R0 R0 K2 ["GetModelCFrame"]
       15 CALL                             R0 1 1
       16 GETUPVAL                         R1 2
       17 MOVE                             R2 R0
       18 CALL                             R1 1 0
       19 GETUPVAL                         R1 3
       20 GETTABLEKS                       R2 R0 K3 ["LookVector"]
       22 CALL                             R1 1 0
       23 GETUPVAL                         R1 0
       24 NAMECALL                         R1 R1 K4 ["GetExtentsSize"]
       26 CALL                             R1 1 1
       27 GETUPVAL                         R2 4
       28 GETUPVAL                         R4 5
       29 GETTABLEKS                       R4 R4 K5 ["fieldOfView"]
       31 GETTABLEKS                       R5 R1 K6 ["X"]
       33 GETTABLEKS                       R6 R1 K7 ["Y"]
       35 GETTABLEKS                       R7 R1 K8 ["Z"]
       37 FASTCALL3                        MATH_MAX R5 R6 R7
       39 MOVE                             R9 R5
       40 MOVE                             R10 R6
       41 MOVE                             R11 R7
       42 GETIMPORT                        R8 K11 [math.max]
       44 CALL                             R8 3 1
       45 FASTCALL1                        MATH_RAD R4 ; [+3]
       46 MOVE                             R13 R4
       47 GETIMPORT                        R12 K15 [math.rad]
       49 CALL                             R12 1 1
       50 DIVK                             R11 R12 K13 [2]
       51 FASTCALL1                        MATH_TAN R11 ; [+2]
       52 GETIMPORT                        R10 K17 [math.tan]
       54 CALL                             R10 1 1
       55 DIVRK                            R9 K12 [1] R10
       56 MUL                              R10 R8 R9
       57 DIVK                             R11 R7 K13 [2]
       58 ADD                              R3 R10 R11
       59 CALL                             R2 1 0
       60 RETURN                           R0 0

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
       26 GETUPVAL                         R2 4
       27 GETTABLEKS                       R2 R2 K8 ["FoundationMigrateDeprecatedApis"]
       29 JUMPIFNOT                        R2 ; [+13]
       30 GETIMPORT                        R1 K10 [CFrame.new]
       32 GETUPVAL                         R3 5
       33 GETTABLEKS                       R3 R3 K11 ["Position"]
       35 GETUPVAL                         R5 6
       36 MUL                              R4 R0 R5
       37 ADD                              R2 R3 R4
       38 GETUPVAL                         R3 5
       39 GETTABLEKS                       R3 R3 K11 ["Position"]
       41 CALL                             R1 2 1
       42 JUMP                             ; [+12]
       43 GETIMPORT                        R1 K10 [CFrame.new]
       45 GETUPVAL                         R3 5
       46 GETTABLEKS                       R3 R3 K12 ["p"]
       48 GETUPVAL                         R5 6
       49 MUL                              R4 R0 R5
       50 ADD                              R2 R3 R4
       51 GETUPVAL                         R3 5
       52 GETTABLEKS                       R3 R3 K12 ["p"]
       54 CALL                             R1 2 1
       55 GETUPVAL                         R2 7
       56 MOVE                             R3 R1
       57 CALL                             R2 1 0
       58 RETURN                           R0 0

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
       68 CAPTURE                          UPVAL U4
       69 CAPTURE                          VAL R12
       70 CAPTURE                          VAL R14
       71 CAPTURE                          VAL R16
       72 CAPTURE                          VAL R1
       73 NEWTABLE                         R19 0 1
       75 MOVE                             R20 R3
       76 SETLIST                          R19 R20 1 [1]
       78 CALL                             R17 2 0
       79 GETUPVAL                         R17 3
       80 GETTABLEKS                       R17 R17 K9 ["useEffect"]
       82 NEWCLOSURE                       R18 P2
       83 CAPTURE                          VAL R3
       84 CAPTURE                          VAL R1
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R4
       87 NEWTABLE                         R19 0 1
       89 GETTABLEKS                       R20 R1 K1 ["model"]
       91 SETLIST                          R19 R20 1 [1]
       93 CALL                             R17 2 0
       94 GETUPVAL                         R17 3
       95 GETTABLEKS                       R17 R17 K10 ["createElement"]
       97 LOADK                            R18 K11 ["Frame"]
       98 DUPTABLE                         R19 K17 [{["BackgroundTransparency"] = 1, ["Position"], ["AnchorPoint"], ["Size"]}]
       99 GETIMPORT                        R20 K20 [UDim2.fromScale]
      101 LOADN                            R21 0
      102 LOADN                            R22 0
      103 CALL                             R20 2 1
      104 SETTABLEKS                       R20 R19 K14 ["Position"]
      106 GETIMPORT                        R20 K22 [Vector2.new]
      108 LOADN                            R21 0
      109 LOADN                            R22 0
      110 CALL                             R20 2 1
      111 SETTABLEKS                       R20 R19 K15 ["AnchorPoint"]
      113 GETIMPORT                        R20 K20 [UDim2.fromScale]
      115 LOADN                            R21 1
      116 LOADN                            R22 1
      117 CALL                             R20 2 1
      118 SETTABLEKS                       R20 R19 K16 ["Size"]
      120 DUPTABLE                         R20 K25 [{"AspectRatioConstraint", "ViewportFrame"}]
      121 GETUPVAL                         R21 3
      122 GETTABLEKS                       R21 R21 K10 ["createElement"]
      124 LOADK                            R22 K26 ["UIAspectRatioConstraint"]
      125 DUPTABLE                         R23 K30 [{["AspectRatio"] = 1, ["AspectType"], ["DominantAxis"]}]
      126 GETIMPORT                        R24 K33 [Enum.AspectType.FitWithinMaxSize]
      128 SETTABLEKS                       R24 R23 K28 ["AspectType"]
      130 GETIMPORT                        R24 K35 [Enum.DominantAxis.Width]
      132 SETTABLEKS                       R24 R23 K29 ["DominantAxis"]
      134 CALL                             R21 2 1
      135 SETTABLEKS                       R21 R20 K23 ["AspectRatioConstraint"]
      137 GETUPVAL                         R21 3
      138 GETTABLEKS                       R21 R21 K10 ["createElement"]
      140 LOADK                            R22 K24 ["ViewportFrame"]
      141 DUPTABLE                         R23 K41 [{["BackgroundTransparency"] = 1, ["Size"], ["Position"], ["AnchorPoint"], ["LightColor"], ["LightDirection"] = {1, 1, 1}, ["Ambient"], ["CurrentCamera"]}]
      142 GETIMPORT                        R24 K42 [UDim2.new]
      144 LOADN                            R25 1
      145 LOADN                            R26 25
      146 LOADN                            R27 1
      147 LOADN                            R28 25
      148 CALL                             R24 4 1
      149 SETTABLEKS                       R24 R23 K16 ["Size"]
      151 GETIMPORT                        R24 K20 [UDim2.fromScale]
      153 LOADK                            R25 K43 [0.5]
      154 LOADK                            R26 K43 [0.5]
      155 CALL                             R24 2 1
      156 SETTABLEKS                       R24 R23 K14 ["Position"]
      158 GETIMPORT                        R24 K22 [Vector2.new]
      160 LOADK                            R25 K43 [0.5]
      161 LOADK                            R26 K43 [0.5]
      162 CALL                             R24 2 1
      163 SETTABLEKS                       R24 R23 K15 ["AnchorPoint"]
      165 GETTABLEKS                       R24 R2 K44 ["Color"]
      167 GETTABLEKS                       R24 R24 K45 ["Extended"]
      169 GETTABLEKS                       R24 R24 K46 ["Gray"]
      171 GETTABLEKS                       R24 R24 K47 ["Gray_200"]
      173 GETTABLEKS                       R24 R24 K48 ["Color3"]
      175 SETTABLEKS                       R24 R23 K36 ["LightColor"]
      177 GETTABLEKS                       R24 R2 K44 ["Color"]
      179 GETTABLEKS                       R24 R24 K45 ["Extended"]
      181 GETTABLEKS                       R24 R24 K46 ["Gray"]
      183 GETTABLEKS                       R24 R24 K47 ["Gray_200"]
      185 GETTABLEKS                       R24 R24 K48 ["Color3"]
      187 SETTABLEKS                       R24 R23 K39 ["Ambient"]
      189 SETTABLEKS                       R5 R23 K40 ["CurrentCamera"]
      191 DUPTABLE                         R24 K52 [{"Camera", "WorldModel", "RenderSteppedConnection"}]
      192 GETUPVAL                         R25 3
      193 GETTABLEKS                       R25 R25 K10 ["createElement"]
      195 LOADK                            R26 K49 ["Camera"]
      196 DUPTABLE                         R27 K56 [{"CameraType", "FieldOfView", "CFrame", "ref"}]
      197 GETIMPORT                        R28 K58 [Enum.CameraType.Scriptable]
      199 SETTABLEKS                       R28 R27 K53 ["CameraType"]
      201 GETTABLEKS                       R28 R1 K59 ["fieldOfView"]
      203 SETTABLEKS                       R28 R27 K54 ["FieldOfView"]
      205 SETTABLEKS                       R7 R27 K4 ["CFrame"]
      207 SETTABLEKS                       R5 R27 K55 ["ref"]
      209 CALL                             R25 2 1
      210 SETTABLEKS                       R25 R24 K49 ["Camera"]
      212 GETUPVAL                         R25 3
      213 GETTABLEKS                       R25 R25 K10 ["createElement"]
      215 LOADK                            R26 K50 ["WorldModel"]
      216 DUPTABLE                         R27 K60 [{"ref"}]
      217 SETTABLEKS                       R6 R27 K55 ["ref"]
      219 CALL                             R25 2 1
      220 SETTABLEKS                       R25 R24 K50 ["WorldModel"]
      222 GETUPVAL                         R25 3
      223 GETTABLEKS                       R25 R25 K10 ["createElement"]
      225 GETUPVAL                         R26 5
      226 DUPTABLE                         R27 K63 [{"event", "callback"}]
      227 GETUPVAL                         R28 6
      228 GETTABLEKS                       R28 R28 K64 ["RenderStepped"]
      230 SETTABLEKS                       R28 R27 K61 ["event"]
      232 NEWCLOSURE                       R28 P3
      233 CAPTURE                          VAL R10
      234 CAPTURE                          VAL R9
      235 CAPTURE                          VAL R1
      236 CAPTURE                          VAL R13
      237 CAPTURE                          UPVAL U4
      238 CAPTURE                          VAL R11
      239 CAPTURE                          VAL R15
      240 CAPTURE                          VAL R8
      241 SETTABLEKS                       R28 R27 K62 ["callback"]
      243 CALL                             R25 2 1
      244 SETTABLEKS                       R25 R24 K51 ["RenderSteppedConnection"]
      246 CALL                             R21 3 1
      247 SETTABLEKS                       R21 R20 K24 ["ViewportFrame"]
      249 CALL                             R17 3 -1
      250 RETURN                           R17 -1

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
       23 GETTABLEKS                       R6 R0 K10 ["Providers"]
       25 GETTABLEKS                       R6 R6 K11 ["Style"]
       27 GETTABLEKS                       R6 R6 K12 ["useTokens"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K6 [require]
       32 GETTABLEKS                       R7 R0 K13 ["Utility"]
       34 GETTABLEKS                       R7 R7 K14 ["withDefaults"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K6 [require]
       39 GETTABLEKS                       R8 R0 K13 ["Utility"]
       41 GETTABLEKS                       R8 R8 K15 ["Wrappers"]
       43 CALL                             R7 1 1
       44 GETTABLEKS                       R7 R7 K16 ["Services"]
       46 GETTABLEKS                       R7 R7 K17 ["RunService"]
       48 GETIMPORT                        R8 K6 [require]
       50 GETTABLEKS                       R9 R0 K13 ["Utility"]
       52 GETTABLEKS                       R9 R9 K18 ["Flags"]
       54 CALL                             R8 1 1
       55 DUPCLOSURE                       R9 K19 [PROTO_0]
       56 DUPCLOSURE                       R10 K20 [PROTO_1]
       57 DUPTABLE                         R11 K25 [{["rotationSpeed"] = 0.01, ["fieldOfView"] = 70}]
       58 DUPCLOSURE                       R12 K26 [PROTO_7]
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R11
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R7
       66 RETURN                           R12 1
