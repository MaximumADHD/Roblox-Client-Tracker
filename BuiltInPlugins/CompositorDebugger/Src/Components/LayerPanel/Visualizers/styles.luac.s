MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CompositorDebugger"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R2 K9 ["createStyleRule"]
       18 MOVE                             R3 R2
       19 LOADK                            R4 K10 [".BlendBase"]
       20 NEWTABLE                         R5 0 0
       22 NEWTABLE                         R6 0 3
       24 MOVE                             R7 R2
       25 LOADK                            R8 K11 ["> .Blend1D"]
       26 DUPTABLE                         R9 K22 [{["BackgroundColor3"] = "$BackgroundPaper", ["BackgroundTransparency"] = 0, ["BorderColor3"] = "$TextPrimary", ["BorderSizePixel"] = 1, ["Size"], ["Position"]}]
       27 GETIMPORT                        R10 K25 [UDim2.new]
       29 LOADN                            R11 1
       30 LOADN                            R12 -30
       31 LOADN                            R13 0
       32 LOADN                            R14 9
       33 CALL                             R10 4 1
       34 SETTABLEKS                       R10 R9 K20 ["Size"]
       36 GETIMPORT                        R10 K25 [UDim2.new]
       38 LOADN                            R11 0
       39 LOADN                            R12 15
       40 LOADK                            R13 K26 [0.5]
       41 LOADN                            R14 0
       42 CALL                             R10 4 1
       43 SETTABLEKS                       R10 R9 K21 ["Position"]
       45 CALL                             R7 2 1
       46 MOVE                             R8 R2
       47 LOADK                            R9 K27 ["> .Blend2D"]
       48 DUPTABLE                         R10 K22 [{["BackgroundColor3"] = "$BackgroundPaper", ["BackgroundTransparency"] = 0, ["BorderColor3"] = "$TextPrimary", ["BorderSizePixel"] = 1, ["Size"], ["Position"]}]
       49 GETIMPORT                        R11 K25 [UDim2.new]
       51 LOADN                            R12 1
       52 LOADN                            R13 -30
       53 LOADN                            R14 1
       54 LOADN                            R15 -48
       55 CALL                             R11 4 1
       56 SETTABLEKS                       R11 R10 K20 ["Size"]
       58 GETIMPORT                        R11 K29 [UDim2.fromOffset]
       60 LOADN                            R12 15
       61 LOADN                            R13 33
       62 CALL                             R11 2 1
       63 SETTABLEKS                       R11 R10 K21 ["Position"]
       65 CALL                             R8 2 1
       66 MOVE                             R9 R2
       67 LOADK                            R10 K30 ["> #Canvas"]
       68 NEWTABLE                         R11 0 0
       70 NEWTABLE                         R12 0 8
       72 MOVE                             R13 R2
       73 LOADK                            R14 K31 ["> #Grid"]
       74 DUPTABLE                         R15 K34 [{["ClipsDescendants"] = True, ["Size"]}]
       75 GETIMPORT                        R16 K36 [UDim2.fromScale]
       77 LOADN                            R17 1
       78 LOADN                            R18 1
       79 CALL                             R16 2 1
       80 SETTABLEKS                       R16 R15 K20 ["Size"]
       82 CALL                             R13 2 1
       83 MOVE                             R14 R2
       84 LOADK                            R15 K37 ["> #Reset"]
       85 DUPTABLE                         R16 K42 [{["Image"] = "rbxasset://textures/CompositorDebugger/clear.png", ["Size"], ["Position"], ["ImageColor3"] = "$TextPrimary", ["AnchorPoint"], ["BackgroundTransparency"] = 1}]
       86 GETIMPORT                        R17 K29 [UDim2.fromOffset]
       88 LOADN                            R18 12
       89 LOADN                            R19 12
       90 CALL                             R17 2 1
       91 SETTABLEKS                       R17 R16 K20 ["Size"]
       93 GETIMPORT                        R17 K25 [UDim2.new]
       95 LOADN                            R18 1
       96 LOADN                            R19 0
       97 LOADN                            R20 0
       98 LOADN                            R21 -6
       99 CALL                             R17 4 1
      100 SETTABLEKS                       R17 R16 K21 ["Position"]
      102 GETIMPORT                        R17 K44 [Vector2.new]
      104 LOADN                            R18 1
      105 LOADN                            R19 1
      106 CALL                             R17 2 1
      107 SETTABLEKS                       R17 R16 K41 ["AnchorPoint"]
      109 CALL                             R14 2 1
      110 MOVE                             R15 R2
      111 LOADK                            R16 K45 ["> .Dot"]
      112 DUPTABLE                         R17 K47 [{["Image"] = "rbxasset://textures/CompositorDebugger/dot.png", ["Size"], ["ImageColor3"] = "$TextPrimary", ["AnchorPoint"], ["BackgroundTransparency"] = 1}]
      113 GETIMPORT                        R18 K29 [UDim2.fromOffset]
      115 LOADN                            R19 9
      116 LOADN                            R20 9
      117 CALL                             R18 2 1
      118 SETTABLEKS                       R18 R17 K20 ["Size"]
      120 GETIMPORT                        R18 K44 [Vector2.new]
      122 LOADK                            R19 K26 [0.5]
      123 LOADK                            R20 K26 [0.5]
      124 CALL                             R18 2 1
      125 SETTABLEKS                       R18 R17 K41 ["AnchorPoint"]
      127 CALL                             R15 2 1
      128 MOVE                             R16 R2
      129 LOADK                            R17 K48 ["> .Cursor"]
      130 DUPTABLE                         R18 K51 [{["Image"] = "rbxasset://textures/CompositorDebugger/cursor.png", ["ImageColor3"] = "$Blue60"}]
      131 CALL                             R16 2 1
      132 MOVE                             R17 R2
      133 LOADK                            R18 K52 [">> .Trail"]
      134 DUPTABLE                         R19 K55 [{["BackgroundColor3"] = "$Blue60", ["Width"] = 2}]
      135 CALL                             R17 2 1
      136 MOVE                             R18 R2
      137 LOADK                            R19 K56 ["> .Override"]
      138 DUPTABLE                         R20 K58 [{["ImageColor3"] = "$TextError"}]
      139 CALL                             R18 2 1
      140 MOVE                             R19 R2
      141 LOADK                            R20 K59 [">> .Axis"]
      142 DUPTABLE                         R21 K60 [{["BackgroundColor3"] = "$TextPrimary", ["BackgroundTransparency"] = 0}]
      143 CALL                             R19 2 1
      144 MOVE                             R20 R2
      145 LOADK                            R21 K61 [">> .Grid"]
      146 DUPTABLE                         R22 K63 [{["BackgroundColor3"] = "$TextDisabled", ["BackgroundTransparency"] = 0}]
      147 CALL                             R20 2 -1
      148 SETLIST                          R12 R13 -1 [1]
      150 CALL                             R9 3 -1
      151 SETLIST                          R6 R7 -1 [1]
      153 DUPTABLE                         R7 K66 [{["DotSize"] = 9}]
      154 CALL                             R3 4 -1
      155 RETURN                           R3 -1
