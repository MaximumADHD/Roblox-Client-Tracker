MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K18 [{[1], ["COLOR_BAD"], ["COLOR_WIREFRAME"], ["COLOR_EDGE_DEFAULT"], ["COLOR_EDGE_ERROR"], ["COLOR_GRAY"], ["COLOR_RED_HIGHLIGHT"], ["COLOR_OVERLAY_PRIMARY"], ["COLOR_OVERLAY_SECONDARY"], ["COLOR_OVERLAY_DIVERGENT"], ["HEATMAP_STOPS"], ["POINT_COLORS"], ["LINE_THICKNESS"] = 2, ["SPHERE_RADIUS"] = 0.02, ["SPHERE_RADIUS_SMALL"] = 0.012}]
        2 GETIMPORT                        R1 K21 [Color3.fromRGB]
        4 LOADN                            R2 64
        5 LOADN                            R3 200
        6 LOADN                            R4 64
        7 CALL                             R1 3 1
        8 SETTABLEKS                       R1 R0 K0 ["COLOR_GOOD"]
       10 GETIMPORT                        R1 K21 [Color3.fromRGB]
       12 LOADN                            R2 255
       13 LOADN                            R3 64
       14 LOADN                            R4 64
       15 CALL                             R1 3 1
       16 SETTABLEKS                       R1 R0 K1 ["COLOR_BAD"]
       18 GETIMPORT                        R1 K21 [Color3.fromRGB]
       20 LOADN                            R2 128
       21 LOADN                            R3 128
       22 LOADN                            R4 128
       23 CALL                             R1 3 1
       24 SETTABLEKS                       R1 R0 K2 ["COLOR_WIREFRAME"]
       26 GETIMPORT                        R1 K21 [Color3.fromRGB]
       28 LOADN                            R2 128
       29 LOADN                            R3 128
       30 LOADN                            R4 128
       31 CALL                             R1 3 1
       32 SETTABLEKS                       R1 R0 K3 ["COLOR_EDGE_DEFAULT"]
       34 GETIMPORT                        R1 K21 [Color3.fromRGB]
       36 LOADN                            R2 255
       37 LOADN                            R3 64
       38 LOADN                            R4 64
       39 CALL                             R1 3 1
       40 SETTABLEKS                       R1 R0 K4 ["COLOR_EDGE_ERROR"]
       42 GETIMPORT                        R1 K21 [Color3.fromRGB]
       44 LOADN                            R2 200
       45 LOADN                            R3 200
       46 LOADN                            R4 200
       47 CALL                             R1 3 1
       48 SETTABLEKS                       R1 R0 K5 ["COLOR_GRAY"]
       50 GETIMPORT                        R1 K21 [Color3.fromRGB]
       52 LOADN                            R2 255
       53 LOADN                            R3 150
       54 LOADN                            R4 150
       55 CALL                             R1 3 1
       56 SETTABLEKS                       R1 R0 K6 ["COLOR_RED_HIGHLIGHT"]
       58 GETIMPORT                        R1 K21 [Color3.fromRGB]
       60 LOADN                            R2 64
       61 LOADN                            R3 200
       62 LOADN                            R4 64
       63 CALL                             R1 3 1
       64 SETTABLEKS                       R1 R0 K7 ["COLOR_OVERLAY_PRIMARY"]
       66 GETIMPORT                        R1 K21 [Color3.fromRGB]
       68 LOADN                            R2 64
       69 LOADN                            R3 160
       70 LOADN                            R4 255
       71 CALL                             R1 3 1
       72 SETTABLEKS                       R1 R0 K8 ["COLOR_OVERLAY_SECONDARY"]
       74 GETIMPORT                        R1 K21 [Color3.fromRGB]
       76 LOADN                            R2 128
       77 LOADN                            R3 128
       78 LOADN                            R4 128
       79 CALL                             R1 3 1
       80 SETTABLEKS                       R1 R0 K9 ["COLOR_OVERLAY_DIVERGENT"]
       82 NEWTABLE                         R1 0 3
       84 DUPTABLE                         R2 K25 [{["threshold"] = 0, ["color"]}]
       85 GETIMPORT                        R3 K21 [Color3.fromRGB]
       87 LOADN                            R4 64
       88 LOADN                            R5 200
       89 LOADN                            R6 64
       90 CALL                             R3 3 1
       91 SETTABLEKS                       R3 R2 K24 ["color"]
       93 DUPTABLE                         R3 K27 [{["threshold"] = 0.5, ["color"]}]
       94 GETIMPORT                        R4 K21 [Color3.fromRGB]
       96 LOADN                            R5 255
       97 LOADN                            R6 224
       98 LOADN                            R7 64
       99 CALL                             R4 3 1
      100 SETTABLEKS                       R4 R3 K24 ["color"]
      102 DUPTABLE                         R4 K29 [{["threshold"] = 1, ["color"]}]
      103 GETIMPORT                        R5 K21 [Color3.fromRGB]
      105 LOADN                            R6 255
      106 LOADN                            R7 64
      107 LOADN                            R8 64
      108 CALL                             R5 3 1
      109 SETTABLEKS                       R5 R4 K24 ["color"]
      111 SETLIST                          R1 R2 3 [1]
      113 SETTABLEKS                       R1 R0 K10 ["HEATMAP_STOPS"]
      115 NEWTABLE                         R1 0 7
      117 GETIMPORT                        R2 K21 [Color3.fromRGB]
      119 LOADN                            R3 255
      120 LOADN                            R4 64
      121 LOADN                            R5 64
      122 CALL                             R2 3 1
      123 GETIMPORT                        R3 K21 [Color3.fromRGB]
      125 LOADN                            R4 64
      126 LOADN                            R5 255
      127 LOADN                            R6 64
      128 CALL                             R3 3 1
      129 GETIMPORT                        R4 K21 [Color3.fromRGB]
      131 LOADN                            R5 64
      132 LOADN                            R6 160
      133 LOADN                            R7 255
      134 CALL                             R4 3 1
      135 GETIMPORT                        R5 K21 [Color3.fromRGB]
      137 LOADN                            R6 255
      138 LOADN                            R7 224
      139 LOADN                            R8 64
      140 CALL                             R5 3 1
      141 GETIMPORT                        R6 K21 [Color3.fromRGB]
      143 LOADN                            R7 224
      144 LOADN                            R8 64
      145 LOADN                            R9 255
      146 CALL                             R6 3 1
      147 GETIMPORT                        R7 K21 [Color3.fromRGB]
      149 LOADN                            R8 64
      150 LOADN                            R9 255
      151 LOADN                            R10 224
      152 CALL                             R7 3 1
      153 GETIMPORT                        R8 K21 [Color3.fromRGB]
      155 LOADN                            R9 255
      156 LOADN                            R10 128
      157 LOADN                            R11 32
      158 CALL                             R8 3 -1
      159 SETLIST                          R1 R2 -1 [1]
      161 SETTABLEKS                       R1 R0 K11 ["POINT_COLORS"]
      163 RETURN                           R0 1
