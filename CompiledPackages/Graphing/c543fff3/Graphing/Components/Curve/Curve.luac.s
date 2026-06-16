PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 NEWTABLE                         R2 0 0
        7 GETTABLEKS                       R3 R0 K1 ["Points"]
        9 LOADNIL                          R4
       10 LOADNIL                          R5
       11 FORGPREP                         R3
       12 GETTABLEKS                       R8 R1 K2 ["plotToView"]
       14 GETTABLEKS                       R9 R7 K3 ["Position"]
       16 CALL                             R8 1 1
       17 GETTABLEKS                       R10 R7 K4 ["LeftTangent"]
       19 JUMPIFNOT                        R10 ; [+3]
       20 GETTABLEKS                       R9 R7 K4 ["LeftTangent"]
       22 JUMP                             ; [+5]
       23 GETIMPORT                        R9 K7 [Vector2.new]
       25 LOADN                            R10 0
       26 LOADN                            R11 0
       27 CALL                             R9 2 1
       28 GETTABLEKS                       R11 R7 K8 ["RightTangent"]
       30 JUMPIFNOT                        R11 ; [+3]
       31 GETTABLEKS                       R10 R7 K8 ["RightTangent"]
       33 JUMP                             ; [+5]
       34 GETIMPORT                        R10 K7 [Vector2.new]
       36 LOADN                            R11 0
       37 LOADN                            R12 0
       38 CALL                             R10 2 1
       39 GETTABLEKS                       R11 R1 K2 ["plotToView"]
       41 GETTABLEKS                       R13 R7 K3 ["Position"]
       43 ADD                              R12 R13 R9
       44 CALL                             R11 1 1
       45 SUB                              R9 R11 R8
       46 GETTABLEKS                       R11 R1 K2 ["plotToView"]
       48 GETTABLEKS                       R13 R7 K3 ["Position"]
       50 ADD                              R12 R13 R10
       51 CALL                             R11 1 1
       52 SUB                              R10 R11 R8
       53 MOVE                             R12 R2
       54 GETIMPORT                        R13 K10 [Path2DControlPoint.new]
       56 GETIMPORT                        R14 K13 [UDim2.fromScale]
       58 GETTABLEKS                       R15 R8 K14 ["X"]
       60 GETTABLEKS                       R16 R8 K15 ["Y"]
       62 CALL                             R14 2 1
       63 GETIMPORT                        R15 K13 [UDim2.fromScale]
       65 GETTABLEKS                       R16 R9 K14 ["X"]
       67 GETTABLEKS                       R17 R9 K15 ["Y"]
       69 CALL                             R15 2 1
       70 GETIMPORT                        R16 K13 [UDim2.fromScale]
       72 GETTABLEKS                       R17 R10 K14 ["X"]
       74 GETTABLEKS                       R18 R10 K15 ["Y"]
       76 CALL                             R16 2 -1
       77 CALL                             R13 -1 -1
       78 FASTCALL                         TABLE_INSERT ; [+2]
       79 GETIMPORT                        R11 K18 [table.insert]
       81 CALL                             R11 -1 0
       82 FORGLOOP                         R3 2 ; [-71]
       84 GETUPVAL                         R3 0
       85 GETTABLEKS                       R3 R3 K19 ["createElement"]
       87 GETUPVAL                         R4 2
       88 DUPTABLE                         R5 K26 [{"ClipContents", "ControlPoints", "Color3", "Thickness", "ZIndex", "Tag"}]
       89 LOADB                            R6 0
       90 SETTABLEKS                       R6 R5 K20 ["ClipContents"]
       92 SETTABLEKS                       R2 R5 K21 ["ControlPoints"]
       94 GETTABLEKS                       R6 R0 K22 ["Color3"]
       96 JUMPIF                           R6 ; [+3]
       97 GETUPVAL                         R6 3
       98 GETTABLEKS                       R6 R6 K27 ["CURVE_COLOR3"]
      100 SETTABLEKS                       R6 R5 K22 ["Color3"]
      102 GETTABLEKS                       R6 R0 K23 ["Thickness"]
      104 JUMPIF                           R6 ; [+3]
      105 GETUPVAL                         R6 3
      106 GETTABLEKS                       R6 R6 K28 ["CURVE_THICKNESS"]
      108 SETTABLEKS                       R6 R5 K23 ["Thickness"]
      110 GETTABLEKS                       R6 R0 K24 ["ZIndex"]
      112 SETTABLEKS                       R6 R5 K24 ["ZIndex"]
      114 GETTABLEKS                       R6 R0 K25 ["Tag"]
      116 SETTABLEKS                       R6 R5 K25 ["Tag"]
      118 CALL                             R3 2 -1
      119 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Graphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["CanvasContext"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["Path2DWrapper"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Util"]
       30 GETTABLEKS                       R6 R6 K12 ["StyleUtil"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K13 ["Types"]
       37 CALL                             R6 1 1
       38 DUPCLOSURE                       R7 K14 [PROTO_0]
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R5
       43 SETGLOBAL                        R7 K15 ["Curve"]
       45 GETGLOBAL                        R7 K15 ["Curve"]
       47 RETURN                           R7 1
