PROTO_0:
        0 GETIMPORT                        R2 K2 [Instance.new]
        2 LOADK                            R3 K3 ["Part"]
        3 CALL                             R2 1 1
        4 GETIMPORT                        R3 K7 [Enum.PartType.Cylinder]
        6 SETTABLEKS                       R3 R2 K8 ["Shape"]
        8 GETIMPORT                        R3 K11 [Enum.SurfaceType.Smooth]
       10 SETTABLEKS                       R3 R2 K12 ["TopSurface"]
       12 GETIMPORT                        R3 K11 [Enum.SurfaceType.Smooth]
       14 SETTABLEKS                       R3 R2 K13 ["BottomSurface"]
       16 SETTABLEKS                       R0 R2 K14 ["Parent"]
       18 LOADK                            R3 K15 [{2, 0.1, 0.1}]
       19 SETTABLEKS                       R3 R2 K16 ["Size"]
       21 SETTABLEKS                       R1 R2 K17 ["Color"]
       23 RETURN                           R2 1

PROTO_1:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["Model"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R2 0
        5 GETIMPORT                        R3 K2 [Instance.new]
        7 LOADK                            R4 K4 ["Part"]
        8 CALL                             R3 1 1
        9 GETIMPORT                        R4 K8 [Enum.PartType.Cylinder]
       11 SETTABLEKS                       R4 R3 K9 ["Shape"]
       13 GETIMPORT                        R4 K12 [Enum.SurfaceType.Smooth]
       15 SETTABLEKS                       R4 R3 K13 ["TopSurface"]
       17 GETIMPORT                        R4 K12 [Enum.SurfaceType.Smooth]
       19 SETTABLEKS                       R4 R3 K14 ["BottomSurface"]
       21 SETTABLEKS                       R0 R3 K15 ["Parent"]
       23 LOADK                            R4 K16 [{2, 0.1, 0.1}]
       24 SETTABLEKS                       R4 R3 K17 ["Size"]
       26 SETTABLEKS                       R2 R3 K18 ["Color"]
       28 MOVE                             R1 R3
       29 GETIMPORT                        R2 K20 [CFrame.new]
       31 LOADK                            R5 K16 [{2, 0.1, 0.1}]
       32 GETTABLEKS                       R4 R5 K22 ["X"]
       34 DIVK                             R3 R4 K21 [2]
       35 LOADN                            R4 0
       36 LOADN                            R5 0
       37 CALL                             R2 3 1
       38 SETTABLEKS                       R2 R1 K19 ["CFrame"]
       40 GETUPVAL                         R3 1
       41 GETIMPORT                        R4 K2 [Instance.new]
       43 LOADK                            R5 K4 ["Part"]
       44 CALL                             R4 1 1
       45 GETIMPORT                        R5 K8 [Enum.PartType.Cylinder]
       47 SETTABLEKS                       R5 R4 K9 ["Shape"]
       49 GETIMPORT                        R5 K12 [Enum.SurfaceType.Smooth]
       51 SETTABLEKS                       R5 R4 K13 ["TopSurface"]
       53 GETIMPORT                        R5 K12 [Enum.SurfaceType.Smooth]
       55 SETTABLEKS                       R5 R4 K14 ["BottomSurface"]
       57 SETTABLEKS                       R0 R4 K15 ["Parent"]
       59 LOADK                            R5 K16 [{2, 0.1, 0.1}]
       60 SETTABLEKS                       R5 R4 K17 ["Size"]
       62 SETTABLEKS                       R3 R4 K18 ["Color"]
       64 MOVE                             R2 R4
       65 GETIMPORT                        R4 K20 [CFrame.new]
       67 LOADN                            R5 0
       68 LOADK                            R8 K16 [{2, 0.1, 0.1}]
       69 GETTABLEKS                       R7 R8 K22 ["X"]
       71 DIVK                             R6 R7 K21 [2]
       72 LOADN                            R7 0
       73 CALL                             R4 3 1
       74 GETIMPORT                        R5 K24 [CFrame.Angles]
       76 LOADN                            R6 0
       77 LOADN                            R7 0
       78 LOADK                            R8 K25 [1.5707963267949]
       79 CALL                             R5 3 1
       80 MUL                              R3 R4 R5
       81 SETTABLEKS                       R3 R2 K19 ["CFrame"]
       83 GETUPVAL                         R4 2
       84 GETIMPORT                        R5 K2 [Instance.new]
       86 LOADK                            R6 K4 ["Part"]
       87 CALL                             R5 1 1
       88 GETIMPORT                        R6 K8 [Enum.PartType.Cylinder]
       90 SETTABLEKS                       R6 R5 K9 ["Shape"]
       92 GETIMPORT                        R6 K12 [Enum.SurfaceType.Smooth]
       94 SETTABLEKS                       R6 R5 K13 ["TopSurface"]
       96 GETIMPORT                        R6 K12 [Enum.SurfaceType.Smooth]
       98 SETTABLEKS                       R6 R5 K14 ["BottomSurface"]
      100 SETTABLEKS                       R0 R5 K15 ["Parent"]
      102 LOADK                            R6 K16 [{2, 0.1, 0.1}]
      103 SETTABLEKS                       R6 R5 K17 ["Size"]
      105 SETTABLEKS                       R4 R5 K18 ["Color"]
      107 MOVE                             R3 R5
      108 GETIMPORT                        R5 K20 [CFrame.new]
      110 LOADN                            R6 0
      111 LOADN                            R7 0
      112 LOADK                            R10 K16 [{2, 0.1, 0.1}]
      113 GETTABLEKS                       R9 R10 K22 ["X"]
      115 DIVK                             R8 R9 K21 [2]
      116 CALL                             R5 3 1
      117 GETIMPORT                        R6 K24 [CFrame.Angles]
      119 LOADN                            R7 0
      120 LOADK                            R8 K25 [1.5707963267949]
      121 LOADN                            R9 0
      122 CALL                             R6 3 1
      123 MUL                              R4 R5 R6
      124 SETTABLEKS                       R4 R3 K19 ["CFrame"]
      126 GETIMPORT                        R4 K2 [Instance.new]
      128 LOADK                            R5 K4 ["Part"]
      129 CALL                             R4 1 1
      130 LOADK                            R5 K26 [{4, 4, 4}]
      131 SETTABLEKS                       R5 R4 K17 ["Size"]
      133 LOADN                            R5 1
      134 SETTABLEKS                       R5 R4 K27 ["Transparency"]
      136 SETTABLEKS                       R0 R4 K15 ["Parent"]
      138 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K2 [Color3.new]
        3 LOADN                            R1 1
        4 LOADN                            R2 0
        5 LOADN                            R3 0
        6 CALL                             R0 3 1
        7 GETIMPORT                        R1 K2 [Color3.new]
        9 LOADN                            R2 0
       10 LOADN                            R3 1
       11 LOADN                            R4 0
       12 CALL                             R1 3 1
       13 GETIMPORT                        R2 K2 [Color3.new]
       15 LOADN                            R3 0
       16 LOADN                            R4 0
       17 LOADN                            R5 1
       18 CALL                             R2 3 1
       19 DUPCLOSURE                       R3 K3 [PROTO_0]
       20 DUPCLOSURE                       R4 K4 [PROTO_1]
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R2
       24 RETURN                           R4 1
