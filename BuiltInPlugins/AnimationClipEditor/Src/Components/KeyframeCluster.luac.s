PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R2 K2 ["keyframeTheme"]
        6 GETTABLEKS                       R4 R1 K3 ["Position"]
        8 GETTABLEKS                       R5 R1 K4 ["Size"]
       10 GETTABLEKS                       R6 R1 K5 ["ZIndex"]
       12 GETIMPORT                        R7 K8 [UDim2.new]
       14 LOADN                            R8 0
       15 GETTABLEKS                       R10 R5 K10 ["Y"]
       17 GETTABLEKS                       R10 R10 K11 ["Offset"]
       19 SUBK                             R9 R10 K9 [4]
       20 LOADN                            R10 0
       21 GETTABLEKS                       R12 R5 K10 ["Y"]
       23 GETTABLEKS                       R12 R12 K11 ["Offset"]
       25 SUBK                             R11 R12 K9 [4]
       26 CALL                             R7 4 1
       27 GETTABLEKS                       R8 R1 K12 ["Primary"]
       29 JUMPIFNOT                        R8 ; [+3]
       30 GETTABLEKS                       R9 R3 K13 ["primaryClusterColor"]
       32 JUMPIF                           R9 ; [+2]
       33 GETTABLEKS                       R9 R3 K14 ["clusterColor"]
       35 GETUPVAL                         R10 0
       36 GETTABLEKS                       R10 R10 K15 ["createElement"]
       38 LOADK                            R11 K16 ["Frame"]
       39 DUPTABLE                         R12 K20 [{"BackgroundColor3", "ZIndex", "Position", "AnchorPoint", "BorderSizePixel", "Size"}]
       40 SETTABLEKS                       R9 R12 K17 ["BackgroundColor3"]
       42 SETTABLEKS                       R6 R12 K5 ["ZIndex"]
       44 SETTABLEKS                       R4 R12 K3 ["Position"]
       46 GETIMPORT                        R13 K22 [Vector2.new]
       48 LOADN                            R14 0
       49 LOADK                            R15 K23 [0.5]
       50 CALL                             R13 2 1
       51 SETTABLEKS                       R13 R12 K18 ["AnchorPoint"]
       53 LOADN                            R13 0
       54 SETTABLEKS                       R13 R12 K19 ["BorderSizePixel"]
       56 SETTABLEKS                       R5 R12 K4 ["Size"]
       58 DUPTABLE                         R13 K26 [{"LeftDiamond", "RightDiamond"}]
       59 GETUPVAL                         R14 0
       60 GETTABLEKS                       R14 R14 K15 ["createElement"]
       62 LOADK                            R15 K16 ["Frame"]
       63 DUPTABLE                         R16 K28 [{"BackgroundColor3", "Position", "ZIndex", "Size", "BorderSizePixel", "AnchorPoint", "Rotation"}]
       64 SETTABLEKS                       R9 R16 K17 ["BackgroundColor3"]
       66 GETIMPORT                        R17 K8 [UDim2.new]
       68 LOADN                            R18 0
       69 LOADN                            R19 0
       70 LOADK                            R20 K23 [0.5]
       71 LOADN                            R21 0
       72 CALL                             R17 4 1
       73 SETTABLEKS                       R17 R16 K3 ["Position"]
       75 SETTABLEKS                       R6 R16 K5 ["ZIndex"]
       77 SETTABLEKS                       R7 R16 K4 ["Size"]
       79 LOADN                            R17 0
       80 SETTABLEKS                       R17 R16 K19 ["BorderSizePixel"]
       82 GETIMPORT                        R17 K22 [Vector2.new]
       84 LOADK                            R18 K23 [0.5]
       85 LOADK                            R19 K23 [0.5]
       86 CALL                             R17 2 1
       87 SETTABLEKS                       R17 R16 K18 ["AnchorPoint"]
       89 LOADN                            R17 45
       90 SETTABLEKS                       R17 R16 K27 ["Rotation"]
       92 CALL                             R14 2 1
       93 SETTABLEKS                       R14 R13 K24 ["LeftDiamond"]
       95 GETUPVAL                         R14 0
       96 GETTABLEKS                       R14 R14 K15 ["createElement"]
       98 LOADK                            R15 K16 ["Frame"]
       99 DUPTABLE                         R16 K28 [{"BackgroundColor3", "Position", "ZIndex", "Size", "BorderSizePixel", "AnchorPoint", "Rotation"}]
      100 SETTABLEKS                       R9 R16 K17 ["BackgroundColor3"]
      102 GETIMPORT                        R17 K8 [UDim2.new]
      104 LOADN                            R18 1
      105 LOADN                            R19 0
      106 LOADK                            R20 K23 [0.5]
      107 LOADN                            R21 0
      108 CALL                             R17 4 1
      109 SETTABLEKS                       R17 R16 K3 ["Position"]
      111 SETTABLEKS                       R6 R16 K5 ["ZIndex"]
      113 SETTABLEKS                       R7 R16 K4 ["Size"]
      115 LOADN                            R17 0
      116 SETTABLEKS                       R17 R16 K19 ["BorderSizePixel"]
      118 GETIMPORT                        R17 K22 [Vector2.new]
      120 LOADK                            R18 K23 [0.5]
      121 LOADK                            R19 K23 [0.5]
      122 CALL                             R17 2 1
      123 SETTABLEKS                       R17 R16 K18 ["AnchorPoint"]
      125 LOADN                            R17 45
      126 SETTABLEKS                       R17 R16 K27 ["Rotation"]
      128 CALL                             R14 2 1
      129 SETTABLEKS                       R14 R13 K25 ["RightDiamond"]
      131 CALL                             R10 3 -1
      132 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["withContext"]
       25 GETTABLEKS                       R5 R1 K11 ["PureComponent"]
       27 LOADK                            R7 K12 ["KeyframeCluster"]
       28 NAMECALL                         R5 R5 K13 ["extend"]
       30 CALL                             R5 2 1
       31 DUPCLOSURE                       R6 K14 [PROTO_0]
       32 CAPTURE                          VAL R1
       33 SETTABLEKS                       R6 R5 K15 ["render"]
       35 MOVE                             R6 R4
       36 DUPTABLE                         R7 K17 [{"Stylizer"}]
       37 GETTABLEKS                       R8 R3 K16 ["Stylizer"]
       39 SETTABLEKS                       R8 R7 K16 ["Stylizer"]
       41 CALL                             R6 1 1
       42 MOVE                             R7 R5
       43 CALL                             R6 1 1
       44 MOVE                             R5 R6
       45 RETURN                           R5 1
