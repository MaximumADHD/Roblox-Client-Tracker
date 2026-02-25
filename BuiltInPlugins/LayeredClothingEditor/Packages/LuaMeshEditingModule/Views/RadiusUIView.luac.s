PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["CurrRadius"]
        2 GETTABLEKS                       R3 R1 K1 ["Mouse"]
        4 GETUPVAL                         R4 0
        5 GETIMPORT                        R5 K4 [UDim2.fromOffset]
        7 GETTABLEKS                       R6 R3 K5 ["X"]
        9 GETTABLEKS                       R7 R3 K6 ["Y"]
       11 CALL                             R5 2 1
       12 SETTABLEKS                       R5 R4 K7 ["Position"]
       14 GETUPVAL                         R4 0
       15 GETIMPORT                        R5 K4 [UDim2.fromOffset]
       17 MOVE                             R6 R2
       18 MOVE                             R7 R2
       19 CALL                             R5 2 1
       20 SETTABLEKS                       R5 R4 K8 ["Size"]
       22 GETUPVAL                         R4 1
       23 GETIMPORT                        R5 K11 [UDim.new]
       25 DIVK                             R6 R2 K12 [2]
       26 DIVK                             R7 R2 K12 [2]
       27 CALL                             R5 2 1
       28 SETTABLEKS                       R5 R4 K13 ["CornerRadius"]
       30 GETTABLEKS                       R5 R1 K0 ["CurrRadius"]
       32 GETTABLEKS                       R7 R1 K14 ["CurrFalloff"]
       34 GETUPVAL                         R8 2
       35 MUL                              R6 R7 R8
       36 SUB                              R4 R5 R6
       37 FASTCALL2K                       MATH_MAX R4 K15 ; [+5]
       39 MOVE                             R6 R4
       40 LOADK                            R7 K15 [0]
       41 GETIMPORT                        R5 K18 [math.max]
       43 CALL                             R5 2 1
       44 MOVE                             R4 R5
       45 GETUPVAL                         R5 3
       46 GETIMPORT                        R6 K4 [UDim2.fromOffset]
       48 GETTABLEKS                       R7 R3 K5 ["X"]
       50 GETTABLEKS                       R8 R3 K6 ["Y"]
       52 CALL                             R6 2 1
       53 SETTABLEKS                       R6 R5 K7 ["Position"]
       55 GETUPVAL                         R5 3
       56 GETIMPORT                        R6 K4 [UDim2.fromOffset]
       58 MOVE                             R7 R4
       59 MOVE                             R8 R4
       60 CALL                             R6 2 1
       61 SETTABLEKS                       R6 R5 K8 ["Size"]
       63 GETUPVAL                         R5 4
       64 GETIMPORT                        R6 K11 [UDim.new]
       66 DIVK                             R7 R4 K12 [2]
       67 DIVK                             R8 R4 K12 [2]
       68 CALL                             R6 2 1
       69 SETTABLEKS                       R6 R5 K13 ["CornerRadius"]
       71 GETTABLEKS                       R5 R1 K19 ["Shown"]
       73 JUMPIFNOT                        R5 ; [+9]
       74 GETUPVAL                         R5 5
       75 LOADN                            R6 0
       76 SETTABLEKS                       R6 R5 K20 ["Transparency"]
       78 GETUPVAL                         R5 6
       79 LOADN                            R6 0
       80 SETTABLEKS                       R6 R5 K20 ["Transparency"]
       82 RETURN                           R0 0
       83 GETUPVAL                         R5 5
       84 LOADN                            R6 1
       85 SETTABLEKS                       R6 R5 K20 ["Transparency"]
       87 GETUPVAL                         R5 6
       88 LOADN                            R6 1
       89 SETTABLEKS                       R6 R5 K20 ["Transparency"]
       91 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+6]
        2 GETUPVAL                         R1 0
        3 NAMECALL                         R1 R1 K0 ["Destroy"]
        5 CALL                             R1 1 0
        6 LOADNIL                          R1
        7 SETUPVAL                         R1 0
        8 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R1 2 0
        2 GETUPVAL                         R2 0
        3 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        5 GETIMPORT                        R0 K1 [setmetatable]
        7 CALL                             R0 2 1
        8 GETIMPORT                        R1 K4 [Instance.new]
       10 LOADK                            R2 K5 ["ScreenGui"]
       11 CALL                             R1 1 1
       12 LOADK                            R2 K6 ["FreeformRadius"]
       13 SETTABLEKS                       R2 R1 K7 ["Name"]
       15 GETIMPORT                        R2 K4 [Instance.new]
       17 LOADK                            R3 K8 ["Frame"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K10 [Vector2.new]
       21 LOADK                            R4 K11 [0.5]
       22 LOADK                            R5 K11 [0.5]
       23 CALL                             R3 2 1
       24 SETTABLEKS                       R3 R2 K12 ["AnchorPoint"]
       26 LOADN                            R3 1
       27 SETTABLEKS                       R3 R2 K13 ["BackgroundTransparency"]
       29 SETTABLEKS                       R1 R2 K14 ["Parent"]
       31 GETIMPORT                        R3 K4 [Instance.new]
       33 LOADK                            R4 K15 ["UICorner"]
       34 CALL                             R3 1 1
       35 SETTABLEKS                       R2 R3 K14 ["Parent"]
       37 GETIMPORT                        R4 K4 [Instance.new]
       39 LOADK                            R5 K16 ["UIStroke"]
       40 CALL                             R4 1 1
       41 GETUPVAL                         R5 1
       42 SETTABLEKS                       R5 R4 K17 ["Thickness"]
       44 SETTABLEKS                       R2 R4 K14 ["Parent"]
       46 GETIMPORT                        R5 K4 [Instance.new]
       48 LOADK                            R6 K8 ["Frame"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K10 [Vector2.new]
       52 LOADK                            R7 K11 [0.5]
       53 LOADK                            R8 K11 [0.5]
       54 CALL                             R6 2 1
       55 SETTABLEKS                       R6 R5 K12 ["AnchorPoint"]
       57 LOADN                            R6 1
       58 SETTABLEKS                       R6 R5 K13 ["BackgroundTransparency"]
       60 SETTABLEKS                       R1 R5 K14 ["Parent"]
       62 GETIMPORT                        R6 K4 [Instance.new]
       64 LOADK                            R7 K15 ["UICorner"]
       65 CALL                             R6 1 1
       66 SETTABLEKS                       R5 R6 K14 ["Parent"]
       68 GETIMPORT                        R7 K4 [Instance.new]
       70 LOADK                            R8 K16 ["UIStroke"]
       71 CALL                             R7 1 1
       72 GETUPVAL                         R8 2
       73 SETTABLEKS                       R8 R7 K17 ["Thickness"]
       75 SETTABLEKS                       R5 R7 K14 ["Parent"]
       77 GETUPVAL                         R8 3
       78 SETTABLEKS                       R8 R1 K14 ["Parent"]
       80 NEWCLOSURE                       R8 P0
       81 CAPTURE                          VAL R2
       82 CAPTURE                          VAL R3
       83 CAPTURE                          UPVAL U4
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R4
       87 CAPTURE                          VAL R7
       88 SETTABLEKS                       R8 R0 K18 ["render"]
       90 NEWCLOSURE                       R8 P1
       91 CAPTURE                          REF R1
       92 SETTABLEKS                       R8 R0 K19 ["cleanup"]
       94 CLOSEUPVALS                      R1
       95 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["CoreGui"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R6 K7 [script]
       11 GETTABLEKS                       R5 R6 K8 ["Parent"]
       13 GETTABLEKS                       R4 R5 K8 ["Parent"]
       15 GETTABLEKS                       R3 R4 K9 ["Util"]
       17 GETTABLEKS                       R2 R3 K10 ["Constants"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K5 [require]
       22 GETIMPORT                        R5 K7 [script]
       24 GETTABLEKS                       R4 R5 K8 ["Parent"]
       26 GETTABLEKS                       R3 R4 K11 ["types"]
       28 CALL                             R2 1 1
       29 NEWTABLE                         R3 2 0
       31 SETTABLEKS                       R3 R3 K12 ["index"]
       33 GETTABLEKS                       R4 R1 K13 ["DefaultRadiusThickness"]
       35 GETTABLEKS                       R5 R1 K14 ["DefaultInnerRadiusThickness"]
       37 GETTABLEKS                       R6 R1 K15 ["FalloffCursorAdjustment"]
       39 DUPCLOSURE                       R7 K16 [PROTO_2]
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R0
       44 CAPTURE                          VAL R6
       45 SETTABLEKS                       R7 R3 K17 ["new"]
       47 RETURN                           R3 1
