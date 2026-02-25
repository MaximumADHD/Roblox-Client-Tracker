PROTO_0:
        0 NEWTABLE                         R1 8 0
        2 GETUPVAL                         R2 0
        3 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        5 GETIMPORT                        R0 K1 [setmetatable]
        7 CALL                             R0 2 1
        8 GETIMPORT                        R1 K4 [Instance.new]
       10 LOADK                            R2 K5 ["ScreenGui"]
       11 CALL                             R1 1 1
       12 SETTABLEKS                       R1 R0 K6 ["_screenGui"]
       14 GETTABLEKS                       R1 R0 K6 ["_screenGui"]
       16 LOADK                            R2 K7 ["FreeformRadius"]
       17 SETTABLEKS                       R2 R1 K8 ["Name"]
       19 GETIMPORT                        R1 K4 [Instance.new]
       21 LOADK                            R2 K9 ["Frame"]
       22 CALL                             R1 1 1
       23 SETTABLEKS                       R1 R0 K10 ["_frame"]
       25 GETTABLEKS                       R1 R0 K10 ["_frame"]
       27 GETIMPORT                        R2 K12 [Vector2.new]
       29 LOADK                            R3 K13 [0.5]
       30 LOADK                            R4 K13 [0.5]
       31 CALL                             R2 2 1
       32 SETTABLEKS                       R2 R1 K14 ["AnchorPoint"]
       34 GETTABLEKS                       R1 R0 K10 ["_frame"]
       36 LOADN                            R2 1
       37 SETTABLEKS                       R2 R1 K15 ["BackgroundTransparency"]
       39 GETTABLEKS                       R1 R0 K10 ["_frame"]
       41 GETTABLEKS                       R2 R0 K6 ["_screenGui"]
       43 SETTABLEKS                       R2 R1 K16 ["Parent"]
       45 GETIMPORT                        R1 K4 [Instance.new]
       47 LOADK                            R2 K17 ["UICorner"]
       48 CALL                             R1 1 1
       49 SETTABLEKS                       R1 R0 K18 ["_corner"]
       51 GETTABLEKS                       R1 R0 K18 ["_corner"]
       53 GETTABLEKS                       R2 R0 K10 ["_frame"]
       55 SETTABLEKS                       R2 R1 K16 ["Parent"]
       57 GETIMPORT                        R1 K4 [Instance.new]
       59 LOADK                            R2 K19 ["UIStroke"]
       60 CALL                             R1 1 1
       61 SETTABLEKS                       R1 R0 K20 ["_uiStroke"]
       63 GETTABLEKS                       R1 R0 K20 ["_uiStroke"]
       65 GETUPVAL                         R2 1
       66 SETTABLEKS                       R2 R1 K21 ["Thickness"]
       68 GETTABLEKS                       R1 R0 K20 ["_uiStroke"]
       70 GETTABLEKS                       R2 R0 K10 ["_frame"]
       72 SETTABLEKS                       R2 R1 K16 ["Parent"]
       74 GETIMPORT                        R1 K4 [Instance.new]
       76 LOADK                            R2 K9 ["Frame"]
       77 CALL                             R1 1 1
       78 SETTABLEKS                       R1 R0 K22 ["_frame2"]
       80 GETTABLEKS                       R1 R0 K22 ["_frame2"]
       82 GETIMPORT                        R2 K12 [Vector2.new]
       84 LOADK                            R3 K13 [0.5]
       85 LOADK                            R4 K13 [0.5]
       86 CALL                             R2 2 1
       87 SETTABLEKS                       R2 R1 K14 ["AnchorPoint"]
       89 GETTABLEKS                       R1 R0 K22 ["_frame2"]
       91 LOADN                            R2 1
       92 SETTABLEKS                       R2 R1 K15 ["BackgroundTransparency"]
       94 GETTABLEKS                       R1 R0 K22 ["_frame2"]
       96 GETTABLEKS                       R2 R0 K6 ["_screenGui"]
       98 SETTABLEKS                       R2 R1 K16 ["Parent"]
      100 GETIMPORT                        R1 K4 [Instance.new]
      102 LOADK                            R2 K17 ["UICorner"]
      103 CALL                             R1 1 1
      104 SETTABLEKS                       R1 R0 K23 ["_corner2"]
      106 GETTABLEKS                       R1 R0 K23 ["_corner2"]
      108 GETTABLEKS                       R2 R0 K22 ["_frame2"]
      110 SETTABLEKS                       R2 R1 K16 ["Parent"]
      112 GETIMPORT                        R1 K4 [Instance.new]
      114 LOADK                            R2 K19 ["UIStroke"]
      115 CALL                             R1 1 1
      116 SETTABLEKS                       R1 R0 K24 ["_uiStroke2"]
      118 GETTABLEKS                       R1 R0 K24 ["_uiStroke2"]
      120 GETUPVAL                         R2 2
      121 SETTABLEKS                       R2 R1 K21 ["Thickness"]
      123 GETTABLEKS                       R1 R0 K24 ["_uiStroke2"]
      125 GETTABLEKS                       R2 R0 K22 ["_frame2"]
      127 SETTABLEKS                       R2 R1 K16 ["Parent"]
      129 GETTABLEKS                       R1 R0 K6 ["_screenGui"]
      131 GETUPVAL                         R2 3
      132 SETTABLEKS                       R2 R1 K16 ["Parent"]
      134 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["ScreenDiameter"]
        2 GETTABLEKS                       R3 R1 K1 ["Mouse"]
        4 GETTABLEKS                       R4 R0 K2 ["_frame"]
        6 GETIMPORT                        R5 K5 [UDim2.fromOffset]
        8 GETTABLEKS                       R6 R3 K6 ["X"]
       10 GETTABLEKS                       R7 R3 K7 ["Y"]
       12 CALL                             R5 2 1
       13 SETTABLEKS                       R5 R4 K8 ["Position"]
       15 GETTABLEKS                       R4 R0 K2 ["_frame"]
       17 GETIMPORT                        R5 K5 [UDim2.fromOffset]
       19 MOVE                             R6 R2
       20 MOVE                             R7 R2
       21 CALL                             R5 2 1
       22 SETTABLEKS                       R5 R4 K9 ["Size"]
       24 GETTABLEKS                       R4 R0 K10 ["_corner"]
       26 GETIMPORT                        R5 K13 [UDim.new]
       28 DIVK                             R6 R2 K14 [2]
       29 DIVK                             R7 R2 K14 [2]
       30 CALL                             R5 2 1
       31 SETTABLEKS                       R5 R4 K15 ["CornerRadius"]
       33 GETTABLEKS                       R5 R1 K0 ["ScreenDiameter"]
       35 GETTABLEKS                       R6 R1 K16 ["Falloff"]
       37 MUL                              R4 R5 R6
       38 FASTCALL2K                       MATH_MAX R4 K17 ; [+5]
       40 MOVE                             R6 R4
       41 LOADK                            R7 K17 [0]
       42 GETIMPORT                        R5 K20 [math.max]
       44 CALL                             R5 2 1
       45 MOVE                             R4 R5
       46 GETTABLEKS                       R5 R0 K21 ["_frame2"]
       48 GETIMPORT                        R6 K5 [UDim2.fromOffset]
       50 GETTABLEKS                       R7 R3 K6 ["X"]
       52 GETTABLEKS                       R8 R3 K7 ["Y"]
       54 CALL                             R6 2 1
       55 SETTABLEKS                       R6 R5 K8 ["Position"]
       57 GETTABLEKS                       R5 R0 K21 ["_frame2"]
       59 GETIMPORT                        R6 K5 [UDim2.fromOffset]
       61 MOVE                             R7 R4
       62 MOVE                             R8 R4
       63 CALL                             R6 2 1
       64 SETTABLEKS                       R6 R5 K9 ["Size"]
       66 GETTABLEKS                       R5 R0 K22 ["_corner2"]
       68 GETIMPORT                        R6 K13 [UDim.new]
       70 DIVK                             R7 R4 K14 [2]
       71 DIVK                             R8 R4 K14 [2]
       72 CALL                             R6 2 1
       73 SETTABLEKS                       R6 R5 K15 ["CornerRadius"]
       75 GETTABLEKS                       R5 R1 K23 ["Shown"]
       77 JUMPIFNOT                        R5 ; [+11]
       78 GETTABLEKS                       R5 R0 K24 ["_uiStroke"]
       80 LOADN                            R6 0
       81 SETTABLEKS                       R6 R5 K25 ["Transparency"]
       83 GETTABLEKS                       R5 R0 K26 ["_uiStroke2"]
       85 LOADN                            R6 0
       86 SETTABLEKS                       R6 R5 K25 ["Transparency"]
       88 RETURN                           R0 0
       89 GETTABLEKS                       R5 R0 K24 ["_uiStroke"]
       91 LOADN                            R6 1
       92 SETTABLEKS                       R6 R5 K25 ["Transparency"]
       94 GETTABLEKS                       R5 R0 K26 ["_uiStroke2"]
       96 LOADN                            R6 1
       97 SETTABLEKS                       R6 R5 K25 ["Transparency"]
       99 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["_screenGui"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["_screenGui"]
        5 NAMECALL                         R1 R1 K1 ["Destroy"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["_screenGui"]
       11 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["LuaMeshEditingModule"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["CoreGui"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R4 R0 K10 ["Util"]
       17 GETTABLEKS                       R3 R4 K11 ["Constants"]
       19 CALL                             R2 1 1
       20 NEWTABLE                         R3 4 0
       22 SETTABLEKS                       R3 R3 K12 ["__index"]
       24 GETTABLEKS                       R4 R2 K13 ["DefaultRadiusThickness"]
       26 GETTABLEKS                       R5 R2 K14 ["DefaultInnerRadiusThickness"]
       28 DUPCLOSURE                       R6 K15 [PROTO_0]
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R4
       31 CAPTURE                          VAL R5
       32 CAPTURE                          VAL R1
       33 SETTABLEKS                       R6 R3 K16 ["new"]
       35 DUPCLOSURE                       R6 K17 [PROTO_1]
       36 SETTABLEKS                       R6 R3 K18 ["render"]
       38 DUPCLOSURE                       R6 K19 [PROTO_2]
       39 SETTABLEKS                       R6 R3 K20 ["cleanup"]
       41 RETURN                           R3 1
