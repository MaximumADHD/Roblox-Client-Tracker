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
       27 DUPTABLE                         R5 K13 [{["cframe"], ["focus"], ["model"] = }]
       28 GETIMPORT                        R6 K16 [CFrame.new]
       30 CALL                             R6 0 1
       31 SETTABLEKS                       R6 R5 K9 ["cframe"]
       33 GETIMPORT                        R6 K16 [CFrame.new]
       35 CALL                             R6 0 1
       36 SETTABLEKS                       R6 R5 K10 ["focus"]
       38 CALL                             R4 1 1
       39 GETUPVAL                         R5 1
       40 GETTABLEKS                       R5 R5 K17 ["useEffect"]
       42 NEWCLOSURE                       R6 P0
       43 CAPTURE                          VAL R2
       44 CAPTURE                          UPVAL U2
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R0
       48 CAPTURE                          UPVAL U3
       49 CAPTURE                          UPVAL U4
       50 CAPTURE                          VAL R1
       51 NEWTABLE                         R7 0 2
       53 GETTABLEKS                       R8 R0 K0 ["Model"]
       55 GETUPVAL                         R10 2
       56 CALL                             R10 0 1
       57 JUMPIFNOT                        R10 ; [+3]
       58 GETTABLEKS                       R9 R0 K18 ["ShowFrontIndicator"]
       60 JUMP                             ; [+1]
       61 LOADNIL                          R9
       62 SETLIST                          R7 R8 2 [1]
       64 CALL                             R5 2 0
       65 GETUPVAL                         R5 1
       66 GETTABLEKS                       R5 R5 K7 ["useState"]
       68 GETIMPORT                        R6 K20 [Instance.new]
       70 LOADK                            R7 K21 ["Camera"]
       71 CALL                             R6 1 -1
       72 CALL                             R5 -1 1
       73 GETUPVAL                         R6 1
       74 GETTABLEKS                       R6 R6 K7 ["useState"]
       76 GETIMPORT                        R7 K16 [CFrame.new]
       78 CALL                             R7 0 -1
       79 CALL                             R6 -1 2
       80 GETUPVAL                         R8 1
       81 GETTABLEKS                       R8 R8 K22 ["useCallback"]
       83 NEWCLOSURE                       R9 P1
       84 CAPTURE                          VAL R4
       85 CAPTURE                          VAL R0
       86 CAPTURE                          VAL R5
       87 CAPTURE                          VAL R7
       88 NEWTABLE                         R10 0 1
       90 GETTABLEKS                       R11 R0 K23 ["GetCameraModifications"]
       92 SETLIST                          R10 R11 1 [1]
       94 CALL                             R8 2 1
       95 GETUPVAL                         R9 1
       96 GETTABLEKS                       R9 R9 K22 ["useCallback"]
       98 NEWCLOSURE                       R10 P2
       99 CAPTURE                          VAL R0
      100 CAPTURE                          VAL R5
      101 CAPTURE                          VAL R4
      102 CAPTURE                          UPVAL U5
      103 NEWTABLE                         R11 0 1
      105 GETTABLEKS                       R12 R0 K23 ["GetCameraModifications"]
      107 SETLIST                          R11 R12 1 [1]
      109 CALL                             R9 2 1
      110 GETUPVAL                         R10 1
      111 GETTABLEKS                       R10 R10 K17 ["useEffect"]
      113 NEWCLOSURE                       R11 P3
      114 CAPTURE                          VAL R4
      115 CAPTURE                          VAL R9
      116 CAPTURE                          VAL R8
      117 NEWTABLE                         R12 0 1
      119 GETTABLEKS                       R13 R0 K23 ["GetCameraModifications"]
      121 SETLIST                          R12 R13 1 [1]
      123 CALL                             R10 2 0
      124 GETUPVAL                         R10 1
      125 GETTABLEKS                       R10 R10 K22 ["useCallback"]
      127 NEWCLOSURE                       R11 P4
      128 CAPTURE                          VAL R9
      129 CAPTURE                          VAL R8
      130 NEWTABLE                         R12 0 2
      132 GETUPVAL                         R14 2
      133 CALL                             R14 0 1
      134 JUMPIFNOT                        R14 ; [+2]
      135 MOVE                             R13 R9
      136 JUMP                             ; [+1]
      137 LOADNIL                          R13
      138 GETUPVAL                         R15 2
      139 CALL                             R15 0 1
      140 JUMPIFNOT                        R15 ; [+2]
      141 MOVE                             R14 R8
      142 JUMP                             ; [+1]
      143 LOADNIL                          R14
      144 SETLIST                          R12 R13 2 [1]
      146 CALL                             R10 2 1
      147 GETUPVAL                         R11 1
      148 GETTABLEKS                       R11 R11 K17 ["useEffect"]
      150 NEWCLOSURE                       R12 P5
      151 CAPTURE                          VAL R0
      152 CAPTURE                          UPVAL U3
      153 CAPTURE                          VAL R8
      154 NEWTABLE                         R13 0 2
      156 MOVE                             R14 R8
      157 GETTABLEKS                       R15 R0 K24 ["ResetCameraSignal"]
      159 SETLIST                          R13 R14 2 [1]
      161 CALL                             R11 2 0
      162 GETUPVAL                         R11 1
      163 GETTABLEKS                       R11 R11 K17 ["useEffect"]
      165 NEWCLOSURE                       R12 P6
      166 CAPTURE                          VAL R2
      167 NEWTABLE                         R13 0 1
      169 MOVE                             R14 R2
      170 SETLIST                          R13 R14 1 [1]
      172 CALL                             R11 2 0
      173 GETTABLEKS                       R11 R4 K25 ["current"]
      175 GETTABLEKS                       R11 R11 K10 ["focus"]
      177 JUMPIFNOT                        R2 ; [+67]
      178 GETUPVAL                         R12 1
      179 GETTABLEKS                       R12 R12 K26 ["createElement"]
      181 GETUPVAL                         R13 6
      182 DUPTABLE                         R14 K45 [{["Camera"], [2], ["FocusPosition"], ["FocusDirection"], ["Size"], ["Ambient"], ["EnableSky"], ["LightColor"], ["LightDirection"], ["PanSpeedMultiplier"], ["ShouldClone"] = False, ["RecenterModelOnUpdate"] = True, ["RecenterCameraOnUpdate"] = True, ["Static"], ["ResetCameraPosition"], ["OnViewModelLoaded"], ["ShowResetCamera"], ["ShowAxisIndicator"]}]
      183 SETTABLEKS                       R5 R14 K21 ["Camera"]
      185 SETTABLEKS                       R2 R14 K0 ["Model"]
      187 GETTABLEKS                       R15 R11 K46 ["Position"]
      189 SETTABLEKS                       R15 R14 K27 ["FocusPosition"]
      191 GETTABLEKS                       R15 R11 K47 ["LookVector"]
      193 SETTABLEKS                       R15 R14 K28 ["FocusDirection"]
      195 GETIMPORT                        R15 K50 [UDim2.fromScale]
      197 LOADN                            R16 1
      198 LOADN                            R17 1
      199 CALL                             R15 2 1
      200 SETTABLEKS                       R15 R14 K29 ["Size"]
      202 GETTABLEKS                       R15 R1 K30 ["Ambient"]
      204 SETTABLEKS                       R15 R14 K30 ["Ambient"]
      206 GETTABLEKS                       R15 R1 K31 ["EnableSky"]
      208 SETTABLEKS                       R15 R14 K31 ["EnableSky"]
      210 GETTABLEKS                       R15 R1 K32 ["LightColor"]
      212 SETTABLEKS                       R15 R14 K32 ["LightColor"]
      214 GETTABLEKS                       R15 R1 K33 ["LightDirection"]
      216 SETTABLEKS                       R15 R14 K33 ["LightDirection"]
      218 GETTABLEKS                       R15 R1 K34 ["PanSpeedMultiplier"]
      220 SETTABLEKS                       R15 R14 K34 ["PanSpeedMultiplier"]
      222 GETTABLEKS                       R15 R0 K40 ["Static"]
      224 SETTABLEKS                       R15 R14 K40 ["Static"]
      226 SETTABLEKS                       R6 R14 K41 ["ResetCameraPosition"]
      228 SETTABLEKS                       R10 R14 K42 ["OnViewModelLoaded"]
      230 GETTABLEKS                       R15 R0 K51 ["ShowResetCameraButton"]
      232 SETTABLEKS                       R15 R14 K43 ["ShowResetCamera"]
      234 GETUPVAL                         R16 2
      235 CALL                             R16 0 1
      236 JUMPIF                           R16 ; [+3]
      237 GETTABLEKS                       R15 R0 K44 ["ShowAxisIndicator"]
      239 JUMP                             ; [+1]
      240 LOADNIL                          R15
      241 SETTABLEKS                       R15 R14 K44 ["ShowAxisIndicator"]
      243 CALL                             R12 2 1
      244 RETURN                           R12 1
      245 LOADNIL                          R12
      246 RETURN                           R12 1

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
