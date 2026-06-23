MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Style"]
       13 GETTABLEKS                       R2 R2 K8 ["StyleKey"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["StyleModifier"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K6 [require]
       25 GETTABLEKS                       R4 R0 K2 ["UI"]
       27 GETTABLEKS                       R4 R4 K11 ["Components"]
       29 GETTABLEKS                       R4 R4 K12 ["Image"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K15 [Rect.new]
       34 LOADN                            R5 3
       35 LOADN                            R6 0
       36 LOADN                            R7 4
       37 LOADN                            R8 6
       38 CALL                             R4 4 1
       39 NEWTABLE                         R5 8 0
       41 GETIMPORT                        R6 K17 [Vector2.new]
       43 LOADK                            R7 K18 [0.5]
       44 LOADK                            R8 K18 [0.5]
       45 CALL                             R6 2 1
       46 SETTABLEKS                       R6 R5 K19 ["AnchorPoint"]
       48 GETTABLEKS                       R6 R1 K20 ["SliderKnobColor"]
       50 SETTABLEKS                       R6 R5 K21 ["Color"]
       52 GETTABLEKS                       R6 R1 K22 ["SliderKnobImage"]
       54 SETTABLEKS                       R6 R5 K12 ["Image"]
       56 GETIMPORT                        R6 K24 [UDim2.new]
       58 LOADN                            R7 0
       59 LOADN                            R8 18
       60 LOADN                            R9 0
       61 LOADN                            R10 18
       62 CALL                             R6 4 1
       63 SETTABLEKS                       R6 R5 K25 ["Size"]
       65 GETTABLEKS                       R6 R2 K26 ["Disabled"]
       67 DUPTABLE                         R7 K27 [{"Color"}]
       68 GETTABLEKS                       R8 R1 K28 ["Button"]
       70 SETTABLEKS                       R8 R7 K21 ["Color"]
       72 SETTABLE                         R7 R5 R6
       73 DUPTABLE                         R6 K35 [{"KnobSize", "Background", "BackgroundStyle", "OutlineStyle", "KnobBackground", "KnobBackgroundStyle"}]
       74 GETIMPORT                        R7 K17 [Vector2.new]
       76 LOADN                            R8 18
       77 LOADN                            R9 18
       78 CALL                             R7 2 1
       79 SETTABLEKS                       R7 R6 K29 ["KnobSize"]
       81 SETTABLEKS                       R3 R6 K30 ["Background"]
       83 DUPTABLE                         R7 K41 [{"AnchorPoint", "Color", "Position", "ScaleType", "Size", "SliceCenter", "BackgroundTransparency", "ImageTransparency"}]
       84 GETIMPORT                        R8 K17 [Vector2.new]
       86 LOADN                            R9 0
       87 LOADK                            R10 K18 [0.5]
       88 CALL                             R8 2 1
       89 SETTABLEKS                       R8 R7 K19 ["AnchorPoint"]
       91 GETTABLEKS                       R8 R1 K42 ["SliderBackground"]
       93 SETTABLEKS                       R8 R7 K21 ["Color"]
       95 GETIMPORT                        R8 K24 [UDim2.new]
       97 LOADN                            R9 0
       98 LOADN                            R10 0
       99 LOADK                            R11 K18 [0.5]
      100 LOADN                            R12 0
      101 CALL                             R8 4 1
      102 SETTABLEKS                       R8 R7 K36 ["Position"]
      104 GETIMPORT                        R8 K45 [Enum.ScaleType.Slice]
      106 SETTABLEKS                       R8 R7 K37 ["ScaleType"]
      108 GETIMPORT                        R8 K24 [UDim2.new]
      110 GETIMPORT                        R9 K47 [UDim.new]
      112 LOADN                            R10 1
      113 LOADN                            R11 0
      114 CALL                             R9 2 1
      115 GETIMPORT                        R10 K47 [UDim.new]
      117 LOADN                            R11 0
      118 LOADN                            R12 6
      119 CALL                             R10 2 -1
      120 CALL                             R8 -1 1
      121 SETTABLEKS                       R8 R7 K25 ["Size"]
      123 SETTABLEKS                       R4 R7 K38 ["SliceCenter"]
      125 LOADN                            R8 1
      126 SETTABLEKS                       R8 R7 K39 ["BackgroundTransparency"]
      128 LOADN                            R8 1
      129 SETTABLEKS                       R8 R7 K40 ["ImageTransparency"]
      131 SETTABLEKS                       R7 R6 K31 ["BackgroundStyle"]
      133 DUPTABLE                         R7 K27 [{"Color"}]
      134 GETIMPORT                        R8 K50 [Color3.fromRGB]
      136 LOADN                            R9 87
      137 LOADN                            R10 87
      138 LOADN                            R11 87
      139 CALL                             R8 3 1
      140 SETTABLEKS                       R8 R7 K21 ["Color"]
      142 SETTABLEKS                       R7 R6 K32 ["OutlineStyle"]
      144 SETTABLEKS                       R3 R6 K33 ["KnobBackground"]
      146 SETTABLEKS                       R5 R6 K34 ["KnobBackgroundStyle"]
      148 RETURN                           R6 1
