MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K15 [{"COLOR_GOOD", "COLOR_BAD", "COLOR_WIREFRAME", "COLOR_EDGE_DEFAULT", "COLOR_EDGE_ERROR", "COLOR_GRAY", "COLOR_RED_HIGHLIGHT", "COLOR_OVERLAY_PRIMARY", "COLOR_OVERLAY_SECONDARY", "COLOR_OVERLAY_DIVERGENT", "HEATMAP_STOPS", "POINT_COLORS", "LINE_THICKNESS", "SPHERE_RADIUS", "SPHERE_RADIUS_SMALL"}]
        2 GETIMPORT                        R1 K18 [Color3.fromRGB]
        4 LOADN                            R2 64
        5 LOADN                            R3 200
        6 LOADN                            R4 64
        7 CALL                             R1 3 1
        8 SETTABLEKS                       R1 R0 K0 ["COLOR_GOOD"]
       10 GETIMPORT                        R1 K18 [Color3.fromRGB]
       12 LOADN                            R2 255
       13 LOADN                            R3 64
       14 LOADN                            R4 64
       15 CALL                             R1 3 1
       16 SETTABLEKS                       R1 R0 K1 ["COLOR_BAD"]
       18 GETIMPORT                        R1 K18 [Color3.fromRGB]
       20 LOADN                            R2 128
       21 LOADN                            R3 128
       22 LOADN                            R4 128
       23 CALL                             R1 3 1
       24 SETTABLEKS                       R1 R0 K2 ["COLOR_WIREFRAME"]
       26 GETIMPORT                        R1 K18 [Color3.fromRGB]
       28 LOADN                            R2 128
       29 LOADN                            R3 128
       30 LOADN                            R4 128
       31 CALL                             R1 3 1
       32 SETTABLEKS                       R1 R0 K3 ["COLOR_EDGE_DEFAULT"]
       34 GETIMPORT                        R1 K18 [Color3.fromRGB]
       36 LOADN                            R2 255
       37 LOADN                            R3 64
       38 LOADN                            R4 64
       39 CALL                             R1 3 1
       40 SETTABLEKS                       R1 R0 K4 ["COLOR_EDGE_ERROR"]
       42 GETIMPORT                        R1 K18 [Color3.fromRGB]
       44 LOADN                            R2 200
       45 LOADN                            R3 200
       46 LOADN                            R4 200
       47 CALL                             R1 3 1
       48 SETTABLEKS                       R1 R0 K5 ["COLOR_GRAY"]
       50 GETIMPORT                        R1 K18 [Color3.fromRGB]
       52 LOADN                            R2 255
       53 LOADN                            R3 150
       54 LOADN                            R4 150
       55 CALL                             R1 3 1
       56 SETTABLEKS                       R1 R0 K6 ["COLOR_RED_HIGHLIGHT"]
       58 GETIMPORT                        R1 K18 [Color3.fromRGB]
       60 LOADN                            R2 64
       61 LOADN                            R3 200
       62 LOADN                            R4 64
       63 CALL                             R1 3 1
       64 SETTABLEKS                       R1 R0 K7 ["COLOR_OVERLAY_PRIMARY"]
       66 GETIMPORT                        R1 K18 [Color3.fromRGB]
       68 LOADN                            R2 64
       69 LOADN                            R3 160
       70 LOADN                            R4 255
       71 CALL                             R1 3 1
       72 SETTABLEKS                       R1 R0 K8 ["COLOR_OVERLAY_SECONDARY"]
       74 GETIMPORT                        R1 K18 [Color3.fromRGB]
       76 LOADN                            R2 128
       77 LOADN                            R3 128
       78 LOADN                            R4 128
       79 CALL                             R1 3 1
       80 SETTABLEKS                       R1 R0 K9 ["COLOR_OVERLAY_DIVERGENT"]
       82 NEWTABLE                         R1 0 3
       84 DUPTABLE                         R2 K21 [{"threshold", "color"}]
       85 LOADN                            R3 0
       86 SETTABLEKS                       R3 R2 K19 ["threshold"]
       88 GETIMPORT                        R3 K18 [Color3.fromRGB]
       90 LOADN                            R4 64
       91 LOADN                            R5 200
       92 LOADN                            R6 64
       93 CALL                             R3 3 1
       94 SETTABLEKS                       R3 R2 K20 ["color"]
       96 DUPTABLE                         R3 K21 [{"threshold", "color"}]
       97 LOADK                            R4 K22 [0.5]
       98 SETTABLEKS                       R4 R3 K19 ["threshold"]
      100 GETIMPORT                        R4 K18 [Color3.fromRGB]
      102 LOADN                            R5 255
      103 LOADN                            R6 224
      104 LOADN                            R7 64
      105 CALL                             R4 3 1
      106 SETTABLEKS                       R4 R3 K20 ["color"]
      108 DUPTABLE                         R4 K21 [{"threshold", "color"}]
      109 LOADN                            R5 1
      110 SETTABLEKS                       R5 R4 K19 ["threshold"]
      112 GETIMPORT                        R5 K18 [Color3.fromRGB]
      114 LOADN                            R6 255
      115 LOADN                            R7 64
      116 LOADN                            R8 64
      117 CALL                             R5 3 1
      118 SETTABLEKS                       R5 R4 K20 ["color"]
      120 SETLIST                          R1 R2 3 [1]
      122 SETTABLEKS                       R1 R0 K10 ["HEATMAP_STOPS"]
      124 NEWTABLE                         R1 0 7
      126 GETIMPORT                        R2 K18 [Color3.fromRGB]
      128 LOADN                            R3 255
      129 LOADN                            R4 64
      130 LOADN                            R5 64
      131 CALL                             R2 3 1
      132 GETIMPORT                        R3 K18 [Color3.fromRGB]
      134 LOADN                            R4 64
      135 LOADN                            R5 255
      136 LOADN                            R6 64
      137 CALL                             R3 3 1
      138 GETIMPORT                        R4 K18 [Color3.fromRGB]
      140 LOADN                            R5 64
      141 LOADN                            R6 160
      142 LOADN                            R7 255
      143 CALL                             R4 3 1
      144 GETIMPORT                        R5 K18 [Color3.fromRGB]
      146 LOADN                            R6 255
      147 LOADN                            R7 224
      148 LOADN                            R8 64
      149 CALL                             R5 3 1
      150 GETIMPORT                        R6 K18 [Color3.fromRGB]
      152 LOADN                            R7 224
      153 LOADN                            R8 64
      154 LOADN                            R9 255
      155 CALL                             R6 3 1
      156 GETIMPORT                        R7 K18 [Color3.fromRGB]
      158 LOADN                            R8 64
      159 LOADN                            R9 255
      160 LOADN                            R10 224
      161 CALL                             R7 3 1
      162 GETIMPORT                        R8 K18 [Color3.fromRGB]
      164 LOADN                            R9 255
      165 LOADN                            R10 128
      166 LOADN                            R11 32
      167 CALL                             R8 3 -1
      168 SETLIST                          R1 R2 -1 [1]
      170 SETTABLEKS                       R1 R0 K11 ["POINT_COLORS"]
      172 LOADN                            R1 2
      173 SETTABLEKS                       R1 R0 K12 ["LINE_THICKNESS"]
      175 LOADK                            R1 K23 [0.02]
      176 SETTABLEKS                       R1 R0 K13 ["SPHERE_RADIUS"]
      178 LOADK                            R1 K24 [0.012]
      179 SETTABLEKS                       R1 R0 K14 ["SPHERE_RADIUS_SMALL"]
      181 RETURN                           R0 1
