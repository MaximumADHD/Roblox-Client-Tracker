PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+8]
        3 GETUPVAL                         R0 0
        4 NAMECALL                         R0 R0 K0 ["Destroy"]
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 1
        8 LOADNIL                          R1
        9 CALL                             R0 1 0
       10 GETUPVAL                         R1 2
       11 GETTABLEKS                       R0 R1 K1 ["Model"]
       13 JUMPIFNOTEQKNIL                  R0 ; [+2]
       15 RETURN                           R0 0
       16 GETUPVAL                         R3 2
       17 GETTABLEKS                       R2 R3 K1 ["Model"]
       19 JUMPIFNOTEQKNIL                  R2 ; [+2]
       21 LOADB                            R1 0 +1
       22 LOADB                            R1 1
       23 GETUPVAL                         R3 3
       24 GETTABLEKS                       R2 R3 K2 ["LUAU_ANALYZE_ERROR"]
       26 FASTCALL2                        ASSERT R1 R2 ; [+3]
       28 GETIMPORT                        R0 K4 [assert]
       30 CALL                             R0 2 0
       31 GETIMPORT                        R0 K7 [Instance.new]
       33 LOADK                            R1 K8 ["WorldModel"]
       34 CALL                             R0 1 1
       35 GETUPVAL                         R2 2
       36 GETTABLEKS                       R1 R2 K1 ["Model"]
       38 LOADK                            R2 K9 ["Dummy"]
       39 SETTABLEKS                       R2 R1 K10 ["Name"]
       41 GETUPVAL                         R2 2
       42 GETTABLEKS                       R1 R2 K1 ["Model"]
       44 SETTABLEKS                       R0 R1 K11 ["Parent"]
       46 GETUPVAL                         R3 2
       47 GETTABLEKS                       R2 R3 K1 ["Model"]
       49 GETTABLEKS                       R1 R2 K12 ["PrimaryPart"]
       51 SETTABLEKS                       R1 R0 K12 ["PrimaryPart"]
       53 GETUPVAL                         R2 2
       54 GETTABLEKS                       R1 R2 K1 ["Model"]
       56 LOADK                            R3 K13 ["Humanoid"]
       57 NAMECALL                         R1 R1 K14 ["FindFirstChildWhichIsA"]
       59 CALL                             R1 2 1
       60 JUMPIFNOT                        R1 ; [+7]
       61 GETIMPORT                        R3 K16 [CFrame.new]
       63 CALL                             R3 0 -1
       64 NAMECALL                         R1 R0 K17 ["PivotTo"]
       66 CALL                             R1 -1 0
       67 JUMP                             ; [+8]
       68 NAMECALL                         R4 R0 K18 ["GetPivot"]
       70 CALL                             R4 1 1
       71 GETTABLEKS                       R3 R4 K19 ["Rotation"]
       73 NAMECALL                         R1 R0 K17 ["PivotTo"]
       75 CALL                             R1 2 0
       76 GETUPVAL                         R1 1
       77 MOVE                             R2 R0
       78 CALL                             R1 1 0
       79 GETUPVAL                         R1 4
       80 MOVE                             R2 R0
       81 GETUPVAL                         R4 2
       82 GETTABLEKS                       R3 R4 K1 ["Model"]
       84 GETUPVAL                         R5 5
       85 GETTABLEKS                       R4 R5 K20 ["PlatformHeight"]
       87 GETUPVAL                         R6 5
       88 GETTABLEKS                       R5 R6 K21 ["PlatformSize"]
       90 CALL                             R1 4 -1
       91 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFEQKNIL                     R0 ; [+5]
        5 GETTABLEKS                       R1 R0 K1 ["model"]
        7 JUMPIFNOTEQKNIL                  R1 ; [+2]
        9 RETURN                           R0 0
       10 GETTABLEKS                       R1 R0 K1 ["model"]
       12 LOADK                            R3 K2 ["Dummy"]
       13 NAMECALL                         R1 R1 K3 ["FindFirstChild"]
       15 CALL                             R1 2 1
       16 JUMPIFEQKNIL                     R1 ; [+5]
       18 GETTABLEKS                       R2 R1 K4 ["PrimaryPart"]
       20 JUMPIFNOTEQKNIL                  R2 ; [+2]
       22 RETURN                           R0 0
       23 GETUPVAL                         R3 1
       24 GETTABLEKS                       R2 R3 K5 ["GetCameraModifications"]
       26 MOVE                             R3 R1
       27 CALL                             R2 1 1
       28 GETUPVAL                         R3 2
       29 GETTABLEKS                       R4 R2 K6 ["cframe"]
       31 JUMPIF                           R4 ; [+2]
       32 GETTABLEKS                       R4 R0 K6 ["cframe"]
       34 SETTABLEKS                       R4 R3 K7 ["CFrame"]
       36 GETUPVAL                         R3 2
       37 GETTABLEKS                       R4 R2 K8 ["focus"]
       39 JUMPIF                           R4 ; [+2]
       40 GETTABLEKS                       R4 R0 K8 ["focus"]
       42 SETTABLEKS                       R4 R3 K9 ["Focus"]
       44 GETUPVAL                         R3 2
       45 GETTABLEKS                       R4 R2 K10 ["fov"]
       47 SETTABLEKS                       R4 R3 K11 ["FieldOfView"]
       49 GETUPVAL                         R3 3
       50 GETTABLEKS                       R4 R2 K6 ["cframe"]
       52 JUMPIF                           R4 ; [+2]
       53 GETTABLEKS                       R4 R0 K6 ["cframe"]
       55 CALL                             R3 1 0
       56 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["GetCameraModifications"]
        3 GETTABLEKS                       R2 R0 K1 ["Dummy"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R3 R1 K2 ["fov"]
        9 SETTABLEKS                       R3 R2 K3 ["FieldOfView"]
       11 GETUPVAL                         R2 2
       12 DUPTABLE                         R3 K7 [{"cframe", "focus", "model"}]
       13 GETUPVAL                         R5 3
       14 GETTABLEKS                       R4 R5 K8 ["getAngledAndZoomedCFrame"]
       16 GETUPVAL                         R5 1
       17 MOVE                             R6 R0
       18 LOADN                            R7 1
       19 CALL                             R4 3 1
       20 SETTABLEKS                       R4 R3 K4 ["cframe"]
       22 GETTABLEKS                       R4 R1 K5 ["focus"]
       24 JUMPIF                           R4 ; [+6]
       25 GETUPVAL                         R5 0
       26 GETTABLEKS                       R4 R5 K9 ["Model"]
       28 NAMECALL                         R4 R4 K10 ["GetBoundingBox"]
       30 CALL                             R4 1 1
       31 SETTABLEKS                       R4 R3 K5 ["focus"]
       33 SETTABLEKS                       R0 R3 K6 ["model"]
       35 SETTABLEKS                       R3 R2 K11 ["current"]
       37 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["current"]
        3 GETTABLEKS                       R0 R1 K1 ["model"]
        5 JUMPIFNOTEQKNIL                  R0 ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R0 1
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K0 ["current"]
       12 GETTABLEKS                       R1 R2 K1 ["model"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["ResetCameraSignal"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K0 ["ResetCameraSignal"]
        9 JUMPIFNOTEQKNIL                  R2 ; [+2]
       11 LOADB                            R1 0 +1
       12 LOADB                            R1 1
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R2 R3 K1 ["LUAU_ANALYZE_ERROR"]
       16 FASTCALL2                        ASSERT R1 R2 ; [+3]
       18 GETIMPORT                        R0 K3 [assert]
       20 CALL                             R0 2 0
       21 GETUPVAL                         R1 0
       22 GETTABLEKS                       R0 R1 K0 ["ResetCameraSignal"]
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
        0 GETTABLEKS                       R4 R0 K0 ["Model"]
        2 GETTABLEKS                       R3 R4 K1 ["PrimaryPart"]
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
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R2 R3 K7 ["useState"]
       22 LOADNIL                          R3
       23 CALL                             R2 1 2
       24 GETUPVAL                         R5 1
       25 GETTABLEKS                       R4 R5 K8 ["useEffect"]
       27 NEWCLOSURE                       R5 P0
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R0
       31 CAPTURE                          UPVAL U2
       32 CAPTURE                          UPVAL U3
       33 CAPTURE                          VAL R1
       34 NEWTABLE                         R6 0 1
       36 GETTABLEKS                       R7 R0 K0 ["Model"]
       38 SETLIST                          R6 R7 1 [1]
       40 CALL                             R4 2 0
       41 GETUPVAL                         R5 1
       42 GETTABLEKS                       R4 R5 K7 ["useState"]
       44 GETIMPORT                        R5 K11 [Instance.new]
       46 LOADK                            R6 K12 ["Camera"]
       47 CALL                             R5 1 -1
       48 CALL                             R4 -1 1
       49 GETUPVAL                         R6 1
       50 GETTABLEKS                       R5 R6 K7 ["useState"]
       52 GETIMPORT                        R6 K14 [CFrame.new]
       54 CALL                             R6 0 -1
       55 CALL                             R5 -1 2
       56 GETUPVAL                         R8 1
       57 GETTABLEKS                       R7 R8 K15 ["useRef"]
       59 DUPTABLE                         R8 K19 [{"cframe", "focus", "model"}]
       60 GETIMPORT                        R9 K14 [CFrame.new]
       62 CALL                             R9 0 1
       63 SETTABLEKS                       R9 R8 K16 ["cframe"]
       65 GETIMPORT                        R9 K14 [CFrame.new]
       67 CALL                             R9 0 1
       68 SETTABLEKS                       R9 R8 K17 ["focus"]
       70 LOADNIL                          R9
       71 SETTABLEKS                       R9 R8 K18 ["model"]
       73 CALL                             R7 1 1
       74 GETTABLEKS                       R10 R7 K20 ["current"]
       76 JUMPIFNOTEQKNIL                  R10 ; [+2]
       78 LOADB                            R9 0 +1
       79 LOADB                            R9 1
       80 GETUPVAL                         R11 2
       81 GETTABLEKS                       R10 R11 K21 ["LUAU_ANALYZE_ERROR"]
       83 FASTCALL2                        ASSERT R9 R10 ; [+3]
       85 GETIMPORT                        R8 K4 [assert]
       87 CALL                             R8 2 0
       88 GETUPVAL                         R9 1
       89 GETTABLEKS                       R8 R9 K22 ["useCallback"]
       91 NEWCLOSURE                       R9 P1
       92 CAPTURE                          VAL R7
       93 CAPTURE                          VAL R0
       94 CAPTURE                          VAL R4
       95 CAPTURE                          VAL R6
       96 NEWTABLE                         R10 0 1
       98 GETTABLEKS                       R11 R0 K23 ["GetCameraModifications"]
      100 SETLIST                          R10 R11 1 [1]
      102 CALL                             R8 2 1
      103 GETUPVAL                         R10 1
      104 GETTABLEKS                       R9 R10 K22 ["useCallback"]
      106 NEWCLOSURE                       R10 P2
      107 CAPTURE                          VAL R0
      108 CAPTURE                          VAL R4
      109 CAPTURE                          VAL R7
      110 CAPTURE                          UPVAL U4
      111 NEWTABLE                         R11 0 1
      113 GETTABLEKS                       R12 R0 K23 ["GetCameraModifications"]
      115 SETLIST                          R11 R12 1 [1]
      117 CALL                             R9 2 1
      118 GETUPVAL                         R11 1
      119 GETTABLEKS                       R10 R11 K8 ["useEffect"]
      121 NEWCLOSURE                       R11 P3
      122 CAPTURE                          VAL R7
      123 CAPTURE                          VAL R9
      124 CAPTURE                          VAL R8
      125 NEWTABLE                         R12 0 1
      127 GETTABLEKS                       R13 R0 K23 ["GetCameraModifications"]
      129 SETLIST                          R12 R13 1 [1]
      131 CALL                             R10 2 0
      132 GETUPVAL                         R11 1
      133 GETTABLEKS                       R10 R11 K22 ["useCallback"]
      135 NEWCLOSURE                       R11 P4
      136 CAPTURE                          VAL R9
      137 CAPTURE                          VAL R8
      138 NEWTABLE                         R12 0 0
      140 CALL                             R10 2 1
      141 GETUPVAL                         R12 1
      142 GETTABLEKS                       R11 R12 K8 ["useEffect"]
      144 NEWCLOSURE                       R12 P5
      145 CAPTURE                          VAL R0
      146 CAPTURE                          UPVAL U2
      147 CAPTURE                          VAL R8
      148 NEWTABLE                         R13 0 2
      150 MOVE                             R14 R8
      151 GETTABLEKS                       R15 R0 K24 ["ResetCameraSignal"]
      153 SETLIST                          R13 R14 2 [1]
      155 CALL                             R11 2 0
      156 GETUPVAL                         R12 1
      157 GETTABLEKS                       R11 R12 K8 ["useEffect"]
      159 NEWCLOSURE                       R12 P6
      160 CAPTURE                          VAL R2
      161 NEWTABLE                         R13 0 1
      163 MOVE                             R14 R2
      164 SETLIST                          R13 R14 1 [1]
      166 CALL                             R11 2 0
      167 GETTABLEKS                       R12 R7 K20 ["current"]
      169 GETTABLEKS                       R11 R12 K17 ["focus"]
      171 JUMPIFNOT                        R2 ; [+71]
      172 GETUPVAL                         R13 1
      173 GETTABLEKS                       R12 R13 K25 ["createElement"]
      175 GETUPVAL                         R13 5
      176 DUPTABLE                         R14 K42 [{"Camera", "Model", "FocusPosition", "FocusDirection", "Size", "Ambient", "EnableSky", "LightColor", "LightDirection", "PanSpeedMultiplier", "ShouldClone", "RecenterModelOnUpdate", "RecenterCameraOnUpdate", "Static", "ResetCameraPosition", "OnViewModelLoaded", "ShowResetCamera", "ShowAxisIndicator"}]
      177 SETTABLEKS                       R4 R14 K12 ["Camera"]
      179 SETTABLEKS                       R2 R14 K0 ["Model"]
      181 GETTABLEKS                       R15 R11 K43 ["Position"]
      183 SETTABLEKS                       R15 R14 K26 ["FocusPosition"]
      185 GETTABLEKS                       R15 R11 K44 ["LookVector"]
      187 SETTABLEKS                       R15 R14 K27 ["FocusDirection"]
      189 GETIMPORT                        R15 K47 [UDim2.fromScale]
      191 LOADN                            R16 1
      192 LOADN                            R17 1
      193 CALL                             R15 2 1
      194 SETTABLEKS                       R15 R14 K28 ["Size"]
      196 GETTABLEKS                       R15 R1 K29 ["Ambient"]
      198 SETTABLEKS                       R15 R14 K29 ["Ambient"]
      200 GETTABLEKS                       R15 R1 K30 ["EnableSky"]
      202 SETTABLEKS                       R15 R14 K30 ["EnableSky"]
      204 GETTABLEKS                       R15 R1 K31 ["LightColor"]
      206 SETTABLEKS                       R15 R14 K31 ["LightColor"]
      208 GETTABLEKS                       R15 R1 K32 ["LightDirection"]
      210 SETTABLEKS                       R15 R14 K32 ["LightDirection"]
      212 GETTABLEKS                       R15 R1 K33 ["PanSpeedMultiplier"]
      214 SETTABLEKS                       R15 R14 K33 ["PanSpeedMultiplier"]
      216 LOADB                            R15 0
      217 SETTABLEKS                       R15 R14 K34 ["ShouldClone"]
      219 LOADB                            R15 1
      220 SETTABLEKS                       R15 R14 K35 ["RecenterModelOnUpdate"]
      222 LOADB                            R15 1
      223 SETTABLEKS                       R15 R14 K36 ["RecenterCameraOnUpdate"]
      225 GETTABLEKS                       R15 R0 K37 ["Static"]
      227 SETTABLEKS                       R15 R14 K37 ["Static"]
      229 SETTABLEKS                       R5 R14 K38 ["ResetCameraPosition"]
      231 SETTABLEKS                       R10 R14 K39 ["OnViewModelLoaded"]
      233 GETTABLEKS                       R15 R0 K48 ["ShowResetCameraButton"]
      235 SETTABLEKS                       R15 R14 K40 ["ShowResetCamera"]
      237 GETTABLEKS                       R15 R0 K41 ["ShowAxisIndicator"]
      239 SETTABLEKS                       R15 R14 K41 ["ShowAxisIndicator"]
      241 CALL                             R12 2 1
      242 RETURN                           R12 1
      243 LOADNIL                          R12
      244 RETURN                           R12 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K9 ["Src"]
       25 GETTABLEKS                       R5 R6 K10 ["Util"]
       27 GETTABLEKS                       R4 R5 K11 ["CameraUtils"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R7 R0 K9 ["Src"]
       34 GETTABLEKS                       R6 R7 K10 ["Util"]
       36 GETTABLEKS                       R5 R6 K12 ["addPlatform"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R11 R0 K9 ["Src"]
       43 GETTABLEKS                       R10 R11 K13 ["Components"]
       45 GETTABLEKS                       R9 R10 K14 ["Screens"]
       47 GETTABLEKS                       R8 R9 K15 ["AvatarScreen"]
       49 GETTABLEKS                       R7 R8 K16 ["Stages"]
       51 GETTABLEKS                       R6 R7 K17 ["StageType"]
       53 CALL                             R5 1 1
       54 GETTABLEKS                       R6 R1 K18 ["UI"]
       56 GETTABLEKS                       R7 R6 K19 ["AssetRenderModel"]
       58 GETTABLEKS                       R9 R1 K20 ["ContextServices"]
       60 GETTABLEKS                       R8 R9 K21 ["Stylizer"]
       62 GETIMPORT                        R9 K5 [require]
       64 GETTABLEKS                       R12 R0 K9 ["Src"]
       66 GETTABLEKS                       R11 R12 K10 ["Util"]
       68 GETTABLEKS                       R10 R11 K22 ["Constants"]
       70 CALL                             R9 1 1
       71 GETIMPORT                        R10 K5 [require]
       73 GETTABLEKS                       R13 R0 K9 ["Src"]
       75 GETTABLEKS                       R12 R13 K23 ["Resources"]
       77 GETTABLEKS                       R11 R12 K24 ["Theme"]
       79 CALL                             R10 1 1
       80 GETIMPORT                        R11 K5 [require]
       82 GETTABLEKS                       R13 R0 K9 ["Src"]
       84 GETTABLEKS                       R12 R13 K25 ["Types"]
       86 CALL                             R11 1 1
       87 DUPCLOSURE                       R12 K26 [PROTO_10]
       88 CAPTURE                          VAL R8
       89 CAPTURE                          VAL R2
       90 CAPTURE                          VAL R9
       91 CAPTURE                          VAL R4
       92 CAPTURE                          VAL R3
       93 CAPTURE                          VAL R7
       94 GETTABLEKS                       R13 R2 K27 ["memo"]
       96 MOVE                             R14 R12
       97 CALL                             R13 1 1
       98 RETURN                           R13 1
