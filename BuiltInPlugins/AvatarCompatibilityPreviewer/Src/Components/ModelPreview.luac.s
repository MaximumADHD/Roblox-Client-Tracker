PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+38]
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 1
        5 JUMPIFNOT                        R0 ; [+10]
        6 GETUPVAL                         R0 0
        7 LOADK                            R2 K0 ["Dummy"]
        8 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
       10 CALL                             R0 2 1
       11 JUMPIFEQKNIL                     R0 ; [+4]
       13 LOADNIL                          R1
       14 SETTABLEKS                       R1 R0 K2 ["Parent"]
       16 GETUPVAL                         R0 0
       17 NAMECALL                         R0 R0 K3 ["Destroy"]
       19 CALL                             R0 1 0
       20 GETUPVAL                         R0 2
       21 LOADNIL                          R1
       22 CALL                             R0 1 0
       23 GETUPVAL                         R0 1
       24 CALL                             R0 0 1
       25 JUMPIFNOT                        R0 ; [+14]
       26 GETUPVAL                         R0 3
       27 GETTABLEKS                       R0 R0 K4 ["current"]
       29 GETTABLEKS                       R0 R0 K5 ["model"]
       31 GETUPVAL                         R1 0
       32 JUMPIFNOTEQ                      R0 R1 ; [+7]
       34 GETUPVAL                         R0 3
       35 GETTABLEKS                       R0 R0 K4 ["current"]
       37 LOADNIL                          R1
       38 SETTABLEKS                       R1 R0 K5 ["model"]
       40 GETUPVAL                         R0 4
       41 GETTABLEKS                       R0 R0 K6 ["Model"]
       43 JUMPIFNOTEQKNIL                  R0 ; [+2]
       45 RETURN                           R0 0
       46 GETUPVAL                         R2 4
       47 GETTABLEKS                       R2 R2 K6 ["Model"]
       49 JUMPIFNOTEQKNIL                  R2 ; [+2]
       51 LOADB                            R1 0 +1
       52 LOADB                            R1 1
       53 GETUPVAL                         R2 5
       54 GETTABLEKS                       R2 R2 K7 ["LUAU_ANALYZE_ERROR"]
       56 FASTCALL2                        ASSERT R1 R2 ; [+3]
       58 GETIMPORT                        R0 K9 [assert]
       60 CALL                             R0 2 0
       61 GETIMPORT                        R0 K12 [Instance.new]
       63 LOADK                            R1 K13 ["WorldModel"]
       64 CALL                             R0 1 1
       65 GETUPVAL                         R1 4
       66 GETTABLEKS                       R1 R1 K6 ["Model"]
       68 LOADK                            R2 K0 ["Dummy"]
       69 SETTABLEKS                       R2 R1 K14 ["Name"]
       71 GETUPVAL                         R1 4
       72 GETTABLEKS                       R1 R1 K6 ["Model"]
       74 SETTABLEKS                       R0 R1 K2 ["Parent"]
       76 GETUPVAL                         R1 4
       77 GETTABLEKS                       R1 R1 K6 ["Model"]
       79 GETTABLEKS                       R1 R1 K15 ["PrimaryPart"]
       81 SETTABLEKS                       R1 R0 K15 ["PrimaryPart"]
       83 GETUPVAL                         R1 4
       84 GETTABLEKS                       R1 R1 K6 ["Model"]
       86 LOADK                            R3 K16 ["Humanoid"]
       87 NAMECALL                         R1 R1 K17 ["FindFirstChildWhichIsA"]
       89 CALL                             R1 2 1
       90 JUMPIFNOT                        R1 ; [+7]
       91 GETIMPORT                        R3 K19 [CFrame.new]
       93 CALL                             R3 0 -1
       94 NAMECALL                         R1 R0 K20 ["PivotTo"]
       96 CALL                             R1 -1 0
       97 JUMP                             ; [+8]
       98 NAMECALL                         R3 R0 K21 ["GetPivot"]
      100 CALL                             R3 1 1
      101 GETTABLEKS                       R3 R3 K22 ["Rotation"]
      103 NAMECALL                         R1 R0 K20 ["PivotTo"]
      105 CALL                             R1 2 0
      106 GETUPVAL                         R1 2
      107 MOVE                             R2 R0
      108 CALL                             R1 1 0
      109 GETUPVAL                         R1 6
      110 MOVE                             R2 R0
      111 GETUPVAL                         R3 4
      112 GETTABLEKS                       R3 R3 K6 ["Model"]
      114 GETUPVAL                         R4 7
      115 GETTABLEKS                       R4 R4 K23 ["Platform"]
      117 GETUPVAL                         R6 1
      118 CALL                             R6 0 1
      119 JUMPIFNOT                        R6 ; [+4]
      120 GETUPVAL                         R5 4
      121 GETTABLEKS                       R5 R5 K24 ["ShowFrontIndicator"]
      123 JUMP                             ; [+1]
      124 LOADNIL                          R5
      125 CALL                             R1 4 -1
      126 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETTABLEKS                       R1 R0 K1 ["model"]
        5 JUMPIFNOTEQKNIL                  R1 ; [+2]
        7 RETURN                           R0 0
        8 GETTABLEKS                       R1 R0 K1 ["model"]
       10 GETTABLEKS                       R1 R1 K2 ["Dummy"]
       12 JUMPIFEQKNIL                     R1 ; [+5]
       14 GETTABLEKS                       R2 R1 K3 ["PrimaryPart"]
       16 JUMPIFNOTEQKNIL                  R2 ; [+2]
       18 RETURN                           R0 0
       19 GETUPVAL                         R2 1
       20 GETTABLEKS                       R2 R2 K4 ["GetCameraModifications"]
       22 MOVE                             R3 R1
       23 CALL                             R2 1 1
       24 GETUPVAL                         R3 2
       25 GETTABLEKS                       R4 R2 K5 ["cframe"]
       27 JUMPIF                           R4 ; [+2]
       28 GETTABLEKS                       R4 R0 K5 ["cframe"]
       30 SETTABLEKS                       R4 R3 K6 ["CFrame"]
       32 GETUPVAL                         R3 2
       33 GETTABLEKS                       R4 R2 K7 ["focus"]
       35 JUMPIF                           R4 ; [+2]
       36 GETTABLEKS                       R4 R0 K7 ["focus"]
       38 SETTABLEKS                       R4 R3 K8 ["Focus"]
       40 GETUPVAL                         R3 2
       41 GETTABLEKS                       R4 R2 K9 ["fov"]
       43 SETTABLEKS                       R4 R3 K10 ["FieldOfView"]
       45 GETUPVAL                         R3 3
       46 GETTABLEKS                       R4 R2 K5 ["cframe"]
       48 JUMPIF                           R4 ; [+2]
       49 GETTABLEKS                       R4 R0 K5 ["cframe"]
       51 CALL                             R3 1 0
       52 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["GetCameraModifications"]
        3 GETTABLEKS                       R2 R0 K1 ["Dummy"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R3 R1 K2 ["fov"]
        9 SETTABLEKS                       R3 R2 K3 ["FieldOfView"]
       11 GETUPVAL                         R2 2
       12 DUPTABLE                         R3 K7 [{"cframe", "focus", "model"}]
       13 GETUPVAL                         R4 3
       14 GETTABLEKS                       R4 R4 K8 ["getAngledAndZoomedCFrame"]
       16 GETUPVAL                         R5 1
       17 MOVE                             R6 R0
       18 LOADN                            R7 1
       19 CALL                             R4 3 1
       20 SETTABLEKS                       R4 R3 K4 ["cframe"]
       22 GETTABLEKS                       R4 R1 K5 ["focus"]
       24 JUMPIF                           R4 ; [+6]
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R4 R4 K9 ["Model"]
       28 NAMECALL                         R4 R4 K10 ["GetBoundingBox"]
       30 CALL                             R4 1 1
       31 SETTABLEKS                       R4 R3 K5 ["focus"]
       33 SETTABLEKS                       R0 R3 K6 ["model"]
       35 SETTABLEKS                       R3 R2 K11 ["current"]
       37 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETTABLEKS                       R0 R0 K1 ["model"]
        5 JUMPIFNOTEQKNIL                  R0 ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R0 1
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K0 ["current"]
       12 GETTABLEKS                       R1 R1 K1 ["model"]
       14 CALL                             R0 1 0
       15 GETUPVAL                         R0 2
       16 CALL                             R0 0 0
       17 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R2 K1 [game]
        3 NAMECALL                         R0 R0 K2 ["IsDescendantOf"]
        5 CALL                             R0 2 1
        6 JUMPIF                           R0 ; [+1]
        7 RETURN                           R0 0
        8 GETUPVAL                         R1 0
        9 LOADK                            R3 K3 ["Dummy"]
       10 NAMECALL                         R1 R1 K4 ["FindFirstChild"]
       12 CALL                             R1 2 1
       13 FASTCALL2K                       ASSERT R1 K5 ; [+4]
       15 LOADK                            R2 K5 ["View model does not have a dummy"]
       16 GETIMPORT                        R0 K7 [assert]
       18 CALL                             R0 2 0
       19 GETUPVAL                         R0 1
       20 GETUPVAL                         R1 0
       21 CALL                             R0 1 0
       22 GETUPVAL                         R0 2
       23 CALL                             R0 0 0
       24 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R1 K2 [task.defer]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ResetCameraSignal"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K0 ["ResetCameraSignal"]
        9 JUMPIFNOTEQKNIL                  R2 ; [+2]
       11 LOADB                            R1 0 +1
       12 LOADB                            R1 1
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R2 R2 K1 ["LUAU_ANALYZE_ERROR"]
       16 FASTCALL2                        ASSERT R1 R2 ; [+3]
       18 GETIMPORT                        R0 K3 [assert]
       20 CALL                             R0 2 0
       21 GETUPVAL                         R0 0
       22 GETTABLEKS                       R0 R0 K0 ["ResetCameraSignal"]
       24 GETUPVAL                         R2 2
       25 NAMECALL                         R0 R0 K4 ["Connect"]
       27 CALL                             R0 2 1
       28 NEWCLOSURE                       R1 P0
       29 CAPTURE                          VAL R0
       30 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+23]
        3 GETUPVAL                         R0 0
        4 NAMECALL                         R0 R0 K0 ["GetDescendants"]
        6 CALL                             R0 1 3
        7 FORGPREP                         R0
        8 LOADK                            R7 K1 ["WrapLayer"]
        9 NAMECALL                         R5 R4 K2 ["IsA"]
       11 CALL                             R5 2 1
       12 JUMPIFNOT                        R5 ; [+10]
       13 GETTABLEKS                       R5 R4 K3 ["Order"]
       15 ADDK                             R5 R5 K4 [1]
       16 SETTABLEKS                       R5 R4 K3 ["Order"]
       18 GETTABLEKS                       R5 R4 K3 ["Order"]
       20 SUBK                             R5 R5 K4 [1]
       21 SETTABLEKS                       R5 R4 K3 ["Order"]
       23 FORGLOOP                         R0 2 ; [-16]
       25 RETURN                           R0 0

PROTO_9:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 GETIMPORT                        R1 K2 [task.defer]
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 GETIMPORT                        R1 K4 [task.delay]
        8 LOADK                            R2 K5 [0.05]
        9 MOVE                             R3 R0
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R3 R0 K0 ["Model"]
        2 GETTABLEKS                       R3 R3 K1 ["PrimaryPart"]
        4 JUMPIFNOTEQKNIL                  R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 FASTCALL2K                       ASSERT R2 K2 ; [+4]
       10 LOADK                            R3 K2 ["PrimaryPart is not set"]
       11 GETIMPORT                        R1 K4 [assert]
       13 CALL                             R1 2 0
       14 GETUPVAL                         R1 0
       15 LOADK                            R3 K5 ["ModelPreview"]
       16 NAMECALL                         R1 R1 K6 ["use"]
       18 CALL                             R1 2 1
       19 GETUPVAL                         R2 1
       20 GETTABLEKS                       R2 R2 K7 ["useState"]
       22 LOADNIL                          R3
       23 CALL                             R2 1 2
       24 GETUPVAL                         R4 1
       25 GETTABLEKS                       R4 R4 K8 ["useRef"]
       27 DUPTABLE                         R5 K12 [{"cframe", "focus", "model"}]
       28 GETIMPORT                        R6 K15 [CFrame.new]
       30 CALL                             R6 0 1
       31 SETTABLEKS                       R6 R5 K9 ["cframe"]
       33 GETIMPORT                        R6 K15 [CFrame.new]
       35 CALL                             R6 0 1
       36 SETTABLEKS                       R6 R5 K10 ["focus"]
       38 LOADNIL                          R6
       39 SETTABLEKS                       R6 R5 K11 ["model"]
       41 CALL                             R4 1 1
       42 GETUPVAL                         R5 1
       43 GETTABLEKS                       R5 R5 K16 ["useEffect"]
       45 NEWCLOSURE                       R6 P0
       46 CAPTURE                          VAL R2
       47 CAPTURE                          UPVAL U2
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R0
       51 CAPTURE                          UPVAL U3
       52 CAPTURE                          UPVAL U4
       53 CAPTURE                          VAL R1
       54 NEWTABLE                         R7 0 2
       56 GETTABLEKS                       R8 R0 K0 ["Model"]
       58 GETUPVAL                         R10 2
       59 CALL                             R10 0 1
       60 JUMPIFNOT                        R10 ; [+3]
       61 GETTABLEKS                       R9 R0 K17 ["ShowFrontIndicator"]
       63 JUMP                             ; [+1]
       64 LOADNIL                          R9
       65 SETLIST                          R7 R8 2 [1]
       67 CALL                             R5 2 0
       68 GETUPVAL                         R5 1
       69 GETTABLEKS                       R5 R5 K7 ["useState"]
       71 GETIMPORT                        R6 K19 [Instance.new]
       73 LOADK                            R7 K20 ["Camera"]
       74 CALL                             R6 1 -1
       75 CALL                             R5 -1 1
       76 GETUPVAL                         R6 1
       77 GETTABLEKS                       R6 R6 K7 ["useState"]
       79 GETIMPORT                        R7 K15 [CFrame.new]
       81 CALL                             R7 0 -1
       82 CALL                             R6 -1 2
       83 GETUPVAL                         R8 1
       84 GETTABLEKS                       R8 R8 K21 ["useCallback"]
       86 NEWCLOSURE                       R9 P1
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R0
       89 CAPTURE                          VAL R5
       90 CAPTURE                          VAL R7
       91 NEWTABLE                         R10 0 1
       93 GETTABLEKS                       R11 R0 K22 ["GetCameraModifications"]
       95 SETLIST                          R10 R11 1 [1]
       97 CALL                             R8 2 1
       98 GETUPVAL                         R9 1
       99 GETTABLEKS                       R9 R9 K21 ["useCallback"]
      101 NEWCLOSURE                       R10 P2
      102 CAPTURE                          VAL R0
      103 CAPTURE                          VAL R5
      104 CAPTURE                          VAL R4
      105 CAPTURE                          UPVAL U5
      106 NEWTABLE                         R11 0 1
      108 GETTABLEKS                       R12 R0 K22 ["GetCameraModifications"]
      110 SETLIST                          R11 R12 1 [1]
      112 CALL                             R9 2 1
      113 GETUPVAL                         R10 1
      114 GETTABLEKS                       R10 R10 K16 ["useEffect"]
      116 NEWCLOSURE                       R11 P3
      117 CAPTURE                          VAL R4
      118 CAPTURE                          VAL R9
      119 CAPTURE                          VAL R8
      120 NEWTABLE                         R12 0 1
      122 GETTABLEKS                       R13 R0 K22 ["GetCameraModifications"]
      124 SETLIST                          R12 R13 1 [1]
      126 CALL                             R10 2 0
      127 GETUPVAL                         R10 1
      128 GETTABLEKS                       R10 R10 K21 ["useCallback"]
      130 NEWCLOSURE                       R11 P4
      131 CAPTURE                          VAL R9
      132 CAPTURE                          VAL R8
      133 NEWTABLE                         R12 0 2
      135 GETUPVAL                         R14 2
      136 CALL                             R14 0 1
      137 JUMPIFNOT                        R14 ; [+2]
      138 MOVE                             R13 R9
      139 JUMP                             ; [+1]
      140 LOADNIL                          R13
      141 GETUPVAL                         R15 2
      142 CALL                             R15 0 1
      143 JUMPIFNOT                        R15 ; [+2]
      144 MOVE                             R14 R8
      145 JUMP                             ; [+1]
      146 LOADNIL                          R14
      147 SETLIST                          R12 R13 2 [1]
      149 CALL                             R10 2 1
      150 GETUPVAL                         R11 1
      151 GETTABLEKS                       R11 R11 K16 ["useEffect"]
      153 NEWCLOSURE                       R12 P5
      154 CAPTURE                          VAL R0
      155 CAPTURE                          UPVAL U3
      156 CAPTURE                          VAL R8
      157 NEWTABLE                         R13 0 2
      159 MOVE                             R14 R8
      160 GETTABLEKS                       R15 R0 K23 ["ResetCameraSignal"]
      162 SETLIST                          R13 R14 2 [1]
      164 CALL                             R11 2 0
      165 GETUPVAL                         R11 1
      166 GETTABLEKS                       R11 R11 K16 ["useEffect"]
      168 NEWCLOSURE                       R12 P6
      169 CAPTURE                          VAL R2
      170 NEWTABLE                         R13 0 1
      172 MOVE                             R14 R2
      173 SETLIST                          R13 R14 1 [1]
      175 CALL                             R11 2 0
      176 GETTABLEKS                       R11 R4 K24 ["current"]
      178 GETTABLEKS                       R11 R11 K10 ["focus"]
      180 JUMPIFNOT                        R2 ; [+76]
      181 GETUPVAL                         R12 1
      182 GETTABLEKS                       R12 R12 K25 ["createElement"]
      184 GETUPVAL                         R13 6
      185 DUPTABLE                         R14 K42 [{"Camera", "Model", "FocusPosition", "FocusDirection", "Size", "Ambient", "EnableSky", "LightColor", "LightDirection", "PanSpeedMultiplier", "ShouldClone", "RecenterModelOnUpdate", "RecenterCameraOnUpdate", "Static", "ResetCameraPosition", "OnViewModelLoaded", "ShowResetCamera", "ShowAxisIndicator"}]
      186 SETTABLEKS                       R5 R14 K20 ["Camera"]
      188 SETTABLEKS                       R2 R14 K0 ["Model"]
      190 GETTABLEKS                       R15 R11 K43 ["Position"]
      192 SETTABLEKS                       R15 R14 K26 ["FocusPosition"]
      194 GETTABLEKS                       R15 R11 K44 ["LookVector"]
      196 SETTABLEKS                       R15 R14 K27 ["FocusDirection"]
      198 GETIMPORT                        R15 K47 [UDim2.fromScale]
      200 LOADN                            R16 1
      201 LOADN                            R17 1
      202 CALL                             R15 2 1
      203 SETTABLEKS                       R15 R14 K28 ["Size"]
      205 GETTABLEKS                       R15 R1 K29 ["Ambient"]
      207 SETTABLEKS                       R15 R14 K29 ["Ambient"]
      209 GETTABLEKS                       R15 R1 K30 ["EnableSky"]
      211 SETTABLEKS                       R15 R14 K30 ["EnableSky"]
      213 GETTABLEKS                       R15 R1 K31 ["LightColor"]
      215 SETTABLEKS                       R15 R14 K31 ["LightColor"]
      217 GETTABLEKS                       R15 R1 K32 ["LightDirection"]
      219 SETTABLEKS                       R15 R14 K32 ["LightDirection"]
      221 GETTABLEKS                       R15 R1 K33 ["PanSpeedMultiplier"]
      223 SETTABLEKS                       R15 R14 K33 ["PanSpeedMultiplier"]
      225 LOADB                            R15 0
      226 SETTABLEKS                       R15 R14 K34 ["ShouldClone"]
      228 LOADB                            R15 1
      229 SETTABLEKS                       R15 R14 K35 ["RecenterModelOnUpdate"]
      231 LOADB                            R15 1
      232 SETTABLEKS                       R15 R14 K36 ["RecenterCameraOnUpdate"]
      234 GETTABLEKS                       R15 R0 K37 ["Static"]
      236 SETTABLEKS                       R15 R14 K37 ["Static"]
      238 SETTABLEKS                       R6 R14 K38 ["ResetCameraPosition"]
      240 SETTABLEKS                       R10 R14 K39 ["OnViewModelLoaded"]
      242 GETTABLEKS                       R15 R0 K48 ["ShowResetCameraButton"]
      244 SETTABLEKS                       R15 R14 K40 ["ShowResetCamera"]
      246 GETUPVAL                         R16 2
      247 CALL                             R16 0 1
      248 JUMPIF                           R16 ; [+3]
      249 GETTABLEKS                       R15 R0 K41 ["ShowAxisIndicator"]
      251 JUMP                             ; [+1]
      252 LOADNIL                          R15
      253 SETTABLEKS                       R15 R14 K41 ["ShowAxisIndicator"]
      255 CALL                             R12 2 1
      256 RETURN                           R12 1
      257 LOADNIL                          R12
      258 RETURN                           R12 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["CameraUtils"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K10 ["Util"]
       36 GETTABLEKS                       R5 R5 K12 ["addPlatform"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K9 ["Src"]
       43 GETTABLEKS                       R6 R6 K13 ["Flags"]
       45 GETTABLEKS                       R6 R6 K14 ["getFFlagAvatarPreviewerPedestalFrontIndicator"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K9 ["Src"]
       52 GETTABLEKS                       R7 R7 K15 ["Components"]
       54 GETTABLEKS                       R7 R7 K16 ["Screens"]
       56 GETTABLEKS                       R7 R7 K17 ["AvatarScreen"]
       58 GETTABLEKS                       R7 R7 K18 ["Stages"]
       60 GETTABLEKS                       R7 R7 K19 ["StageType"]
       62 CALL                             R6 1 1
       63 GETTABLEKS                       R7 R1 K20 ["UI"]
       65 GETTABLEKS                       R8 R7 K21 ["AssetRenderModel"]
       67 GETTABLEKS                       R9 R1 K22 ["ContextServices"]
       69 GETTABLEKS                       R9 R9 K23 ["Stylizer"]
       71 GETIMPORT                        R10 K5 [require]
       73 GETTABLEKS                       R11 R0 K9 ["Src"]
       75 GETTABLEKS                       R11 R11 K10 ["Util"]
       77 GETTABLEKS                       R11 R11 K24 ["Constants"]
       79 CALL                             R10 1 1
       80 GETIMPORT                        R11 K5 [require]
       82 GETTABLEKS                       R12 R0 K9 ["Src"]
       84 GETTABLEKS                       R12 R12 K25 ["Resources"]
       86 GETTABLEKS                       R12 R12 K26 ["Theme"]
       88 CALL                             R11 1 1
       89 GETIMPORT                        R12 K5 [require]
       91 GETTABLEKS                       R13 R0 K9 ["Src"]
       93 GETTABLEKS                       R13 R13 K27 ["Types"]
       95 CALL                             R12 1 1
       96 DUPCLOSURE                       R13 K28 [PROTO_10]
       97 CAPTURE                          VAL R9
       98 CAPTURE                          VAL R2
       99 CAPTURE                          VAL R5
      100 CAPTURE                          VAL R10
      101 CAPTURE                          VAL R4
      102 CAPTURE                          VAL R3
      103 CAPTURE                          VAL R8
      104 GETTABLEKS                       R14 R2 K29 ["memo"]
      106 MOVE                             R15 R13
      107 CALL                             R14 1 1
      108 RETURN                           R14 1
