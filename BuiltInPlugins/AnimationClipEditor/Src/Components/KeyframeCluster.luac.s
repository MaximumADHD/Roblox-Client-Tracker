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
       39 DUPTABLE                         R12 K21 [{["BackgroundColor3"], ["ZIndex"], ["Position"], ["AnchorPoint"], ["BorderSizePixel"] = 0, ["Size"]}]
       40 SETTABLEKS                       R9 R12 K17 ["BackgroundColor3"]
       42 SETTABLEKS                       R6 R12 K5 ["ZIndex"]
       44 SETTABLEKS                       R4 R12 K3 ["Position"]
       46 GETIMPORT                        R13 K23 [Vector2.new]
       48 LOADN                            R14 0
       49 LOADK                            R15 K24 [0.5]
       50 CALL                             R13 2 1
       51 SETTABLEKS                       R13 R12 K18 ["AnchorPoint"]
       53 SETTABLEKS                       R5 R12 K4 ["Size"]
       55 DUPTABLE                         R13 K27 [{"LeftDiamond", "RightDiamond"}]
       56 GETUPVAL                         R14 0
       57 GETTABLEKS                       R14 R14 K15 ["createElement"]
       59 LOADK                            R15 K16 ["Frame"]
       60 DUPTABLE                         R16 K30 [{["BackgroundColor3"], ["Position"], ["ZIndex"], ["Size"], ["BorderSizePixel"] = 0, ["AnchorPoint"], ["Rotation"] = 45}]
       61 SETTABLEKS                       R9 R16 K17 ["BackgroundColor3"]
       63 GETIMPORT                        R17 K8 [UDim2.new]
       65 LOADN                            R18 0
       66 LOADN                            R19 0
       67 LOADK                            R20 K24 [0.5]
       68 LOADN                            R21 0
       69 CALL                             R17 4 1
       70 SETTABLEKS                       R17 R16 K3 ["Position"]
       72 SETTABLEKS                       R6 R16 K5 ["ZIndex"]
       74 SETTABLEKS                       R7 R16 K4 ["Size"]
       76 GETIMPORT                        R17 K23 [Vector2.new]
       78 LOADK                            R18 K24 [0.5]
       79 LOADK                            R19 K24 [0.5]
       80 CALL                             R17 2 1
       81 SETTABLEKS                       R17 R16 K18 ["AnchorPoint"]
       83 CALL                             R14 2 1
       84 SETTABLEKS                       R14 R13 K25 ["LeftDiamond"]
       86 GETUPVAL                         R14 0
       87 GETTABLEKS                       R14 R14 K15 ["createElement"]
       89 LOADK                            R15 K16 ["Frame"]
       90 DUPTABLE                         R16 K30 [{["BackgroundColor3"], ["Position"], ["ZIndex"], ["Size"], ["BorderSizePixel"] = 0, ["AnchorPoint"], ["Rotation"] = 45}]
       91 SETTABLEKS                       R9 R16 K17 ["BackgroundColor3"]
       93 GETIMPORT                        R17 K8 [UDim2.new]
       95 LOADN                            R18 1
       96 LOADN                            R19 0
       97 LOADK                            R20 K24 [0.5]
       98 LOADN                            R21 0
       99 CALL                             R17 4 1
      100 SETTABLEKS                       R17 R16 K3 ["Position"]
      102 SETTABLEKS                       R6 R16 K5 ["ZIndex"]
      104 SETTABLEKS                       R7 R16 K4 ["Size"]
      106 GETIMPORT                        R17 K23 [Vector2.new]
      108 LOADK                            R18 K24 [0.5]
      109 LOADK                            R19 K24 [0.5]
      110 CALL                             R17 2 1
      111 SETTABLEKS                       R17 R16 K18 ["AnchorPoint"]
      113 CALL                             R14 2 1
      114 SETTABLEKS                       R14 R13 K26 ["RightDiamond"]
      116 CALL                             R10 3 -1
      117 RETURN                           R10 -1

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
