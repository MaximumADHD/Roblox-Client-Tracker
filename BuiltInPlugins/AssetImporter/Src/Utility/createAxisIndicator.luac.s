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
       31 LOADN                            R3 1
       32 LOADN                            R4 0
       33 LOADN                            R5 0
       34 CALL                             R2 3 1
       35 SETTABLEKS                       R2 R1 K19 ["CFrame"]
       37 GETUPVAL                         R3 1
       38 GETIMPORT                        R4 K2 [Instance.new]
       40 LOADK                            R5 K4 ["Part"]
       41 CALL                             R4 1 1
       42 GETIMPORT                        R5 K8 [Enum.PartType.Cylinder]
       44 SETTABLEKS                       R5 R4 K9 ["Shape"]
       46 GETIMPORT                        R5 K12 [Enum.SurfaceType.Smooth]
       48 SETTABLEKS                       R5 R4 K13 ["TopSurface"]
       50 GETIMPORT                        R5 K12 [Enum.SurfaceType.Smooth]
       52 SETTABLEKS                       R5 R4 K14 ["BottomSurface"]
       54 SETTABLEKS                       R0 R4 K15 ["Parent"]
       56 LOADK                            R5 K16 [{2, 0.1, 0.1}]
       57 SETTABLEKS                       R5 R4 K17 ["Size"]
       59 SETTABLEKS                       R3 R4 K18 ["Color"]
       61 MOVE                             R2 R4
       62 GETIMPORT                        R4 K20 [CFrame.new]
       64 LOADN                            R5 0
       65 LOADN                            R6 1
       66 LOADN                            R7 0
       67 CALL                             R4 3 1
       68 GETIMPORT                        R5 K22 [CFrame.Angles]
       70 LOADN                            R6 0
       71 LOADN                            R7 0
       72 LOADK                            R8 K23 [1.5707963267949]
       73 CALL                             R5 3 1
       74 MUL                              R3 R4 R5
       75 SETTABLEKS                       R3 R2 K19 ["CFrame"]
       77 GETUPVAL                         R4 2
       78 GETIMPORT                        R5 K2 [Instance.new]
       80 LOADK                            R6 K4 ["Part"]
       81 CALL                             R5 1 1
       82 GETIMPORT                        R6 K8 [Enum.PartType.Cylinder]
       84 SETTABLEKS                       R6 R5 K9 ["Shape"]
       86 GETIMPORT                        R6 K12 [Enum.SurfaceType.Smooth]
       88 SETTABLEKS                       R6 R5 K13 ["TopSurface"]
       90 GETIMPORT                        R6 K12 [Enum.SurfaceType.Smooth]
       92 SETTABLEKS                       R6 R5 K14 ["BottomSurface"]
       94 SETTABLEKS                       R0 R5 K15 ["Parent"]
       96 LOADK                            R6 K16 [{2, 0.1, 0.1}]
       97 SETTABLEKS                       R6 R5 K17 ["Size"]
       99 SETTABLEKS                       R4 R5 K18 ["Color"]
      101 MOVE                             R3 R5
      102 GETIMPORT                        R5 K20 [CFrame.new]
      104 LOADN                            R6 0
      105 LOADN                            R7 0
      106 LOADN                            R8 1
      107 CALL                             R5 3 1
      108 GETIMPORT                        R6 K22 [CFrame.Angles]
      110 LOADN                            R7 0
      111 LOADK                            R8 K23 [1.5707963267949]
      112 LOADN                            R9 0
      113 CALL                             R6 3 1
      114 MUL                              R4 R5 R6
      115 SETTABLEKS                       R4 R3 K19 ["CFrame"]
      117 GETIMPORT                        R4 K2 [Instance.new]
      119 LOADK                            R5 K4 ["Part"]
      120 CALL                             R4 1 1
      121 LOADK                            R5 K24 [{4, 4, 4}]
      122 SETTABLEKS                       R5 R4 K17 ["Size"]
      124 LOADN                            R5 1
      125 SETTABLEKS                       R5 R4 K25 ["Transparency"]
      127 SETTABLEKS                       R0 R4 K15 ["Parent"]
      129 RETURN                           R0 1

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
