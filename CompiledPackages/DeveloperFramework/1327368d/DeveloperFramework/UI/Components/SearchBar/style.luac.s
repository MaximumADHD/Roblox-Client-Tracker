PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["DialogMainButton"]
        3 DUPTABLE                         R3 K7 [{"AnchorPoint", "Position", "Color", "Image", "Size", "ScaleType"}]
        4 GETIMPORT                        R4 K10 [Vector2.new]
        6 LOADK                            R5 K11 [0.5]
        7 LOADK                            R6 K11 [0.5]
        8 CALL                             R4 2 1
        9 SETTABLEKS                       R4 R3 K1 ["AnchorPoint"]
       11 GETIMPORT                        R4 K13 [UDim2.new]
       13 LOADK                            R5 K11 [0.5]
       14 LOADN                            R6 0
       15 LOADK                            R7 K11 [0.5]
       16 LOADN                            R8 0
       17 CALL                             R4 4 1
       18 SETTABLEKS                       R4 R3 K2 ["Position"]
       20 GETIMPORT                        R4 K16 [Color3.fromRGB]
       22 LOADN                            R5 184
       23 LOADN                            R6 184
       24 LOADN                            R7 184
       25 CALL                             R4 3 1
       26 SETTABLEKS                       R4 R3 K3 ["Color"]
       28 SETTABLEKS                       R0 R3 K4 ["Image"]
       30 GETIMPORT                        R4 K13 [UDim2.new]
       32 LOADK                            R5 K17 [0.6]
       33 LOADN                            R6 0
       34 LOADK                            R7 K17 [0.6]
       35 LOADN                            R8 0
       36 CALL                             R4 4 1
       37 SETTABLEKS                       R4 R3 K5 ["Size"]
       39 GETIMPORT                        R4 K20 [Enum.ScaleType.Fit]
       41 SETTABLEKS                       R4 R3 K6 ["ScaleType"]
       43 NEWTABLE                         R4 4 0
       45 GETUPVAL                         R5 1
       46 SETTABLEKS                       R5 R4 K21 ["Foreground"]
       48 SETTABLEKS                       R3 R4 K22 ["ForegroundStyle"]
       50 GETUPVAL                         R5 2
       51 GETTABLEKS                       R5 R5 K23 ["Hover"]
       53 DUPTABLE                         R6 K24 [{"ForegroundStyle"}]
       54 GETUPVAL                         R7 3
       55 GETTABLEKS                       R7 R7 K25 ["Dictionary"]
       57 GETTABLEKS                       R7 R7 K26 ["join"]
       59 MOVE                             R8 R3
       60 DUPTABLE                         R9 K27 [{"Image", "Color"}]
       61 SETTABLEKS                       R1 R9 K4 ["Image"]
       63 SETTABLEKS                       R2 R9 K3 ["Color"]
       65 CALL                             R7 2 1
       66 SETTABLEKS                       R7 R6 K22 ["ForegroundStyle"]
       68 SETTABLE                         R6 R4 R5
       69 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K2 ["UI"]
       13 GETTABLEKS                       R2 R2 K7 ["Components"]
       15 GETTABLEKS                       R2 R2 K8 ["Image"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K6 [require]
       20 GETTABLEKS                       R3 R0 K9 ["Util"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K6 [require]
       25 GETTABLEKS                       R4 R0 K4 ["Parent"]
       27 GETTABLEKS                       R4 R4 K10 ["Cryo"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R2 K11 ["deepCopy"]
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R6 R0 K9 ["Util"]
       36 GETTABLEKS                       R6 R6 K12 ["StyleModifier"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K6 [require]
       41 GETTABLEKS                       R7 R0 K13 ["Style"]
       43 GETTABLEKS                       R7 R7 K14 ["StyleKey"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K6 [require]
       48 GETTABLEKS                       R8 R0 K2 ["UI"]
       50 GETTABLEKS                       R8 R8 K7 ["Components"]
       52 GETTABLEKS                       R8 R8 K15 ["UIFolderData"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K6 [require]
       57 GETTABLEKS                       R9 R7 K16 ["RoundBox"]
       59 GETTABLEKS                       R9 R9 K17 ["style"]
       61 CALL                             R8 1 1
       62 DUPCLOSURE                       R9 K18 [PROTO_0]
       63 CAPTURE                          VAL R6
       64 CAPTURE                          VAL R1
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R3
       67 MOVE                             R10 R4
       68 MOVE                             R11 R8
       69 CALL                             R10 1 1
       70 NEWTABLE                         R11 16 0
       72 GETTABLEKS                       R12 R6 K19 ["InputFieldBackground"]
       74 SETTABLEKS                       R12 R11 K20 ["BackgroundColor"]
       76 SETTABLEKS                       R10 R11 K21 ["BackgroundStyle"]
       78 DUPTABLE                         R12 K26 [{"Top", "Left", "Bottom", "Right"}]
       79 LOADN                            R13 3
       80 SETTABLEKS                       R13 R12 K22 ["Top"]
       82 LOADN                            R13 10
       83 SETTABLEKS                       R13 R12 K23 ["Left"]
       85 LOADN                            R13 3
       86 SETTABLEKS                       R13 R12 K24 ["Bottom"]
       88 LOADN                            R13 10
       89 SETTABLEKS                       R13 R12 K25 ["Right"]
       91 SETTABLEKS                       R12 R11 K27 ["Padding"]
       93 LOADK                            R12 K28 ["rbxasset://textures/StudioSharedUI/search.png"]
       94 SETTABLEKS                       R12 R11 K29 ["SearchIcon"]
       96 GETIMPORT                        R12 K32 [Color3.fromRGB]
       98 LOADN                            R13 184
       99 LOADN                            R14 184
      100 LOADN                            R15 184
      101 CALL                             R12 3 1
      102 SETTABLEKS                       R12 R11 K33 ["IconColor"]
      104 LOADN                            R12 12
      105 SETTABLEKS                       R12 R11 K34 ["IconWidth"]
      107 LOADN                            R12 5
      108 SETTABLEKS                       R12 R11 K35 ["IconOffset"]
      110 GETTABLEKS                       R12 R5 K36 ["Hover"]
      112 DUPTABLE                         R13 K37 [{"BackgroundStyle"}]
      113 GETTABLEKS                       R14 R3 K38 ["Dictionary"]
      115 GETTABLEKS                       R14 R14 K39 ["join"]
      117 MOVE                             R15 R10
      118 DUPTABLE                         R16 K41 [{"BorderColor"}]
      119 GETTABLEKS                       R17 R6 K42 ["DialogMainButton"]
      121 SETTABLEKS                       R17 R16 K40 ["BorderColor"]
      123 CALL                             R14 2 1
      124 SETTABLEKS                       R14 R13 K21 ["BackgroundStyle"]
      126 SETTABLE                         R13 R11 R12
      127 DUPTABLE                         R12 K41 [{"BorderColor"}]
      128 GETTABLEKS                       R13 R6 K42 ["DialogMainButton"]
      130 SETTABLEKS                       R13 R12 K40 ["BorderColor"]
      132 SETTABLEKS                       R12 R11 K36 ["Hover"]
      134 DUPTABLE                         R12 K45 [{"Clear", "Search"}]
      135 MOVE                             R13 R9
      136 LOADK                            R14 K46 ["rbxasset://textures/StudioSharedUI/clear.png"]
      137 LOADK                            R15 K47 ["rbxasset://textures/StudioSharedUI/clear-hover.png"]
      138 CALL                             R13 2 1
      139 SETTABLEKS                       R13 R12 K43 ["Clear"]
      141 MOVE                             R13 R9
      142 LOADK                            R14 K28 ["rbxasset://textures/StudioSharedUI/search.png"]
      143 CALL                             R13 1 1
      144 SETTABLEKS                       R13 R12 K44 ["Search"]
      146 SETTABLEKS                       R12 R11 K48 ["Buttons"]
      148 DUPTABLE                         R12 K50 [{"Padding", "TextSize"}]
      149 DUPTABLE                         R13 K26 [{"Top", "Left", "Bottom", "Right"}]
      150 LOADN                            R14 255
      151 SETTABLEKS                       R14 R13 K22 ["Top"]
      153 LOADN                            R14 5
      154 SETTABLEKS                       R14 R13 K23 ["Left"]
      156 LOADN                            R14 255
      157 SETTABLEKS                       R14 R13 K24 ["Bottom"]
      159 LOADN                            R14 5
      160 SETTABLEKS                       R14 R13 K25 ["Right"]
      162 SETTABLEKS                       R13 R12 K27 ["Padding"]
      164 LOADN                            R13 14
      165 SETTABLEKS                       R13 R12 K49 ["TextSize"]
      167 SETTABLEKS                       R12 R11 K51 ["&Compact"]
      169 RETURN                           R11 1
