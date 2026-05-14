PROTO_0:
        0 LOADNIL                          R1
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["mock"]
        5 CALL                             R2 0 1
        6 MOVE                             R1 R2
        7 JUMP                             ; [+5]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K1 ["new"]
       11 CALL                             R2 0 1
       12 MOVE                             R1 R2
       13 GETUPVAL                         R4 1
       14 NAMECALL                         R2 R1 K2 ["extend"]
       16 CALL                             R2 2 -1
       17 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K7 ["Style"]
       18 GETTABLEKS                       R3 R2 K8 ["Themes"]
       20 GETTABLEKS                       R3 R3 K9 ["StudioTheme"]
       22 DUPTABLE                         R4 K12 [{"MainGui", "WindspeedDisplay"}]
       23 DUPTABLE                         R5 K16 [{"BackgroundPane", "ViewportFrame", "CameraFOV"}]
       24 DUPTABLE                         R6 K22 [{"ZIndex", "Position", "Size", "Style", "BackgroundColor", "Transparency"}]
       25 LOADN                            R7 0
       26 SETTABLEKS                       R7 R6 K17 ["ZIndex"]
       28 GETIMPORT                        R7 K25 [UDim2.new]
       30 LOADN                            R8 0
       31 LOADN                            R9 206
       32 LOADN                            R10 0
       33 LOADN                            R11 40
       34 CALL                             R7 4 1
       35 SETTABLEKS                       R7 R6 K18 ["Position"]
       37 GETIMPORT                        R7 K27 [UDim2.fromOffset]
       39 LOADN                            R8 210
       40 LOADN                            R9 120
       41 CALL                             R7 2 1
       42 SETTABLEKS                       R7 R6 K19 ["Size"]
       44 LOADK                            R7 K28 ["CornerBox"]
       45 SETTABLEKS                       R7 R6 K7 ["Style"]
       47 GETIMPORT                        R7 K30 [Color3.new]
       49 LOADK                            R8 K31 [0.4]
       50 LOADK                            R9 K31 [0.4]
       51 LOADK                            R10 K31 [0.4]
       52 CALL                             R7 3 1
       53 SETTABLEKS                       R7 R6 K20 ["BackgroundColor"]
       55 LOADK                            R7 K32 [0.65]
       56 SETTABLEKS                       R7 R6 K21 ["Transparency"]
       58 SETTABLEKS                       R6 R5 K13 ["BackgroundPane"]
       60 DUPTABLE                         R6 K33 [{"Size", "Position"}]
       61 GETIMPORT                        R7 K27 [UDim2.fromOffset]
       63 LOADN                            R8 180
       64 LOADN                            R9 160
       65 CALL                             R7 2 1
       66 SETTABLEKS                       R7 R6 K19 ["Size"]
       68 GETIMPORT                        R7 K27 [UDim2.fromOffset]
       70 LOADN                            R8 55
       71 LOADN                            R9 15
       72 CALL                             R7 2 1
       73 SETTABLEKS                       R7 R6 K18 ["Position"]
       75 SETTABLEKS                       R6 R5 K14 ["ViewportFrame"]
       77 LOADN                            R6 70
       78 SETTABLEKS                       R6 R5 K15 ["CameraFOV"]
       80 SETTABLEKS                       R5 R4 K10 ["MainGui"]
       82 DUPTABLE                         R5 K47 [{"Size", "Position", "ArrowDown", "ArrowUp", "TextLabel", "Slider", "ButtonTextSize", "ButtonSize", "ButtonTransparency", "MinusButtonPosition", "BigMinusButtonPosition", "PlusButtonPosition", "BigPlusButtonPosition", "activeLabelColor", "inactiveLabelColor"}]
       83 GETIMPORT                        R6 K27 [UDim2.fromOffset]
       85 LOADN                            R7 85
       86 LOADN                            R8 60
       87 CALL                             R6 2 1
       88 SETTABLEKS                       R6 R5 K19 ["Size"]
       90 GETIMPORT                        R6 K49 [UDim2.fromScale]
       92 LOADK                            R7 K50 [-0.2]
       93 LOADK                            R8 K51 [0.5]
       94 CALL                             R6 2 1
       95 SETTABLEKS                       R6 R5 K18 ["Position"]
       97 LOADK                            R6 K52 ["rbxasset://textures/WindControl/ArrowDown.png"]
       98 SETTABLEKS                       R6 R5 K34 ["ArrowDown"]
      100 LOADK                            R6 K53 ["rbxasset://textures/WindControl/ArrowUp.png"]
      101 SETTABLEKS                       R6 R5 K35 ["ArrowUp"]
      103 DUPTABLE                         R6 K54 [{"Size", "Position", "Style"}]
      104 GETIMPORT                        R7 K49 [UDim2.fromScale]
      106 LOADN                            R8 1
      107 LOADK                            R9 K51 [0.5]
      108 CALL                             R7 2 1
      109 SETTABLEKS                       R7 R6 K19 ["Size"]
      111 GETIMPORT                        R7 K49 [UDim2.fromScale]
      113 LOADN                            R8 0
      114 LOADK                            R9 K51 [0.5]
      115 CALL                             R7 2 1
      116 SETTABLEKS                       R7 R6 K18 ["Position"]
      118 DUPTABLE                         R7 K60 [{"Font", "TextSize", "TextColor", "TextXAlignment", "TextYAlignment"}]
      119 GETIMPORT                        R8 K63 [Enum.Font.SourceSansSemibold]
      121 SETTABLEKS                       R8 R7 K55 ["Font"]
      123 LOADN                            R8 26
      124 SETTABLEKS                       R8 R7 K56 ["TextSize"]
      126 GETIMPORT                        R8 K30 [Color3.new]
      128 LOADN                            R9 1
      129 LOADN                            R10 1
      130 LOADN                            R11 1
      131 CALL                             R8 3 1
      132 SETTABLEKS                       R8 R7 K57 ["TextColor"]
      134 GETIMPORT                        R8 K65 [Enum.TextXAlignment.Left]
      136 SETTABLEKS                       R8 R7 K58 ["TextXAlignment"]
      138 GETIMPORT                        R8 K67 [Enum.TextYAlignment.Top]
      140 SETTABLEKS                       R8 R7 K59 ["TextYAlignment"]
      142 SETTABLEKS                       R7 R6 K7 ["Style"]
      144 SETTABLEKS                       R6 R5 K36 ["TextLabel"]
      146 DUPTABLE                         R6 K33 [{"Size", "Position"}]
      147 GETIMPORT                        R7 K27 [UDim2.fromOffset]
      149 LOADN                            R8 195
      150 LOADN                            R9 15
      151 CALL                             R7 2 1
      152 SETTABLEKS                       R7 R6 K19 ["Size"]
      154 GETIMPORT                        R7 K49 [UDim2.fromScale]
      156 LOADN                            R8 0
      157 LOADN                            R9 1
      158 CALL                             R7 2 1
      159 SETTABLEKS                       R7 R6 K18 ["Position"]
      161 SETTABLEKS                       R6 R5 K37 ["Slider"]
      163 LOADN                            R6 16
      164 SETTABLEKS                       R6 R5 K38 ["ButtonTextSize"]
      166 GETIMPORT                        R6 K49 [UDim2.fromScale]
      168 LOADN                            R7 1
      169 LOADK                            R8 K68 [0.33]
      170 CALL                             R6 2 1
      171 SETTABLEKS                       R6 R5 K39 ["ButtonSize"]
      173 LOADK                            R6 K69 [0.7]
      174 SETTABLEKS                       R6 R5 K40 ["ButtonTransparency"]
      176 GETIMPORT                        R6 K25 [UDim2.new]
      178 LOADK                            R7 K70 [0.25]
      179 LOADN                            R8 0
      180 LOADN                            R9 1
      181 LOADN                            R10 236
      182 CALL                             R6 4 1
      183 SETTABLEKS                       R6 R5 K41 ["MinusButtonPosition"]
      185 GETIMPORT                        R6 K25 [UDim2.new]
      187 LOADK                            R7 K71 [0.05]
      188 LOADN                            R8 0
      189 LOADN                            R9 1
      190 LOADN                            R10 236
      191 CALL                             R6 4 1
      192 SETTABLEKS                       R6 R5 K42 ["BigMinusButtonPosition"]
      194 GETIMPORT                        R6 K25 [UDim2.new]
      196 LOADK                            R7 K70 [0.25]
      197 LOADN                            R8 0
      198 LOADN                            R9 0
      199 LOADN                            R10 0
      200 CALL                             R6 4 1
      201 SETTABLEKS                       R6 R5 K43 ["PlusButtonPosition"]
      203 GETIMPORT                        R6 K25 [UDim2.new]
      205 LOADK                            R7 K71 [0.05]
      206 LOADN                            R8 0
      207 LOADN                            R9 0
      208 LOADN                            R10 0
      209 CALL                             R6 4 1
      210 SETTABLEKS                       R6 R5 K44 ["BigPlusButtonPosition"]
      212 GETIMPORT                        R6 K30 [Color3.new]
      214 LOADN                            R7 1
      215 LOADN                            R8 1
      216 LOADN                            R9 1
      217 CALL                             R6 3 1
      218 SETTABLEKS                       R6 R5 K45 ["activeLabelColor"]
      220 GETIMPORT                        R6 K30 [Color3.new]
      222 LOADK                            R7 K72 [0.8]
      223 LOADK                            R8 K72 [0.8]
      224 LOADK                            R9 K72 [0.8]
      225 CALL                             R6 3 1
      226 SETTABLEKS                       R6 R5 K46 ["inactiveLabelColor"]
      228 SETTABLEKS                       R5 R4 K11 ["WindspeedDisplay"]
      230 DUPCLOSURE                       R5 K73 [PROTO_0]
      231 CAPTURE                          VAL R3
      232 CAPTURE                          VAL R4
      233 RETURN                           R5 1
