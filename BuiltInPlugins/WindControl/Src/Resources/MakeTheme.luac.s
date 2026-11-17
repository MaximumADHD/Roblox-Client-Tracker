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
       23 DUPTABLE                         R5 K17 [{["BackgroundPane"], ["ViewportFrame"], ["CameraFOV"] = 70}]
       24 DUPTABLE                         R6 K26 [{["ZIndex"] = 0, ["Position"], ["Size"], ["Style"] = "CornerBox", ["BackgroundColor"], ["Transparency"] = 0.65}]
       25 GETIMPORT                        R7 K29 [UDim2.new]
       27 LOADN                            R8 0
       28 LOADN                            R9 -50
       29 LOADN                            R10 0
       30 LOADN                            R11 40
       31 CALL                             R7 4 1
       32 SETTABLEKS                       R7 R6 K20 ["Position"]
       34 GETIMPORT                        R7 K31 [UDim2.fromOffset]
       36 LOADN                            R8 210
       37 LOADN                            R9 120
       38 CALL                             R7 2 1
       39 SETTABLEKS                       R7 R6 K21 ["Size"]
       41 GETIMPORT                        R7 K33 [Color3.new]
       43 LOADK                            R8 K34 [0.4]
       44 LOADK                            R9 K34 [0.4]
       45 LOADK                            R10 K34 [0.4]
       46 CALL                             R7 3 1
       47 SETTABLEKS                       R7 R6 K23 ["BackgroundColor"]
       49 SETTABLEKS                       R6 R5 K13 ["BackgroundPane"]
       51 DUPTABLE                         R6 K35 [{"Size", "Position"}]
       52 GETIMPORT                        R7 K31 [UDim2.fromOffset]
       54 LOADN                            R8 180
       55 LOADN                            R9 160
       56 CALL                             R7 2 1
       57 SETTABLEKS                       R7 R6 K21 ["Size"]
       59 GETIMPORT                        R7 K31 [UDim2.fromOffset]
       61 LOADN                            R8 55
       62 LOADN                            R9 15
       63 CALL                             R7 2 1
       64 SETTABLEKS                       R7 R6 K20 ["Position"]
       66 SETTABLEKS                       R6 R5 K14 ["ViewportFrame"]
       68 SETTABLEKS                       R5 R4 K10 ["MainGui"]
       70 DUPTABLE                         R5 K53 [{["Size"], ["Position"], ["ArrowDown"] = "rbxasset://textures/WindControl/ArrowDown.png", ["ArrowUp"] = "rbxasset://textures/WindControl/ArrowUp.png", ["TextLabel"], ["Slider"], ["ButtonTextSize"] = 16, ["ButtonSize"], ["ButtonTransparency"] = 0.7, ["MinusButtonPosition"], ["BigMinusButtonPosition"], ["PlusButtonPosition"], ["BigPlusButtonPosition"], ["activeLabelColor"], ["inactiveLabelColor"]}]
       71 GETIMPORT                        R6 K31 [UDim2.fromOffset]
       73 LOADN                            R7 85
       74 LOADN                            R8 60
       75 CALL                             R6 2 1
       76 SETTABLEKS                       R6 R5 K21 ["Size"]
       78 GETIMPORT                        R6 K55 [UDim2.fromScale]
       80 LOADK                            R7 K56 [-0.2]
       81 LOADK                            R8 K57 [0.5]
       82 CALL                             R6 2 1
       83 SETTABLEKS                       R6 R5 K20 ["Position"]
       85 DUPTABLE                         R6 K58 [{"Size", "Position", "Style"}]
       86 GETIMPORT                        R7 K55 [UDim2.fromScale]
       88 LOADN                            R8 1
       89 LOADK                            R9 K57 [0.5]
       90 CALL                             R7 2 1
       91 SETTABLEKS                       R7 R6 K21 ["Size"]
       93 GETIMPORT                        R7 K55 [UDim2.fromScale]
       95 LOADN                            R8 0
       96 LOADK                            R9 K57 [0.5]
       97 CALL                             R7 2 1
       98 SETTABLEKS                       R7 R6 K20 ["Position"]
      100 DUPTABLE                         R7 K65 [{["Font"], ["TextSize"] = 26, ["TextColor"], ["TextXAlignment"], ["TextYAlignment"]}]
      101 GETIMPORT                        R8 K68 [Enum.Font.SourceSansSemibold]
      103 SETTABLEKS                       R8 R7 K59 ["Font"]
      105 GETIMPORT                        R8 K33 [Color3.new]
      107 LOADN                            R9 1
      108 LOADN                            R10 1
      109 LOADN                            R11 1
      110 CALL                             R8 3 1
      111 SETTABLEKS                       R8 R7 K62 ["TextColor"]
      113 GETIMPORT                        R8 K70 [Enum.TextXAlignment.Left]
      115 SETTABLEKS                       R8 R7 K63 ["TextXAlignment"]
      117 GETIMPORT                        R8 K72 [Enum.TextYAlignment.Top]
      119 SETTABLEKS                       R8 R7 K64 ["TextYAlignment"]
      121 SETTABLEKS                       R7 R6 K7 ["Style"]
      123 SETTABLEKS                       R6 R5 K40 ["TextLabel"]
      125 DUPTABLE                         R6 K35 [{"Size", "Position"}]
      126 GETIMPORT                        R7 K31 [UDim2.fromOffset]
      128 LOADN                            R8 195
      129 LOADN                            R9 15
      130 CALL                             R7 2 1
      131 SETTABLEKS                       R7 R6 K21 ["Size"]
      133 GETIMPORT                        R7 K55 [UDim2.fromScale]
      135 LOADN                            R8 0
      136 LOADN                            R9 1
      137 CALL                             R7 2 1
      138 SETTABLEKS                       R7 R6 K20 ["Position"]
      140 SETTABLEKS                       R6 R5 K41 ["Slider"]
      142 GETIMPORT                        R6 K55 [UDim2.fromScale]
      144 LOADN                            R7 1
      145 LOADK                            R8 K73 [0.33]
      146 CALL                             R6 2 1
      147 SETTABLEKS                       R6 R5 K44 ["ButtonSize"]
      149 GETIMPORT                        R6 K29 [UDim2.new]
      151 LOADK                            R7 K74 [0.25]
      152 LOADN                            R8 0
      153 LOADN                            R9 1
      154 LOADN                            R10 -20
      155 CALL                             R6 4 1
      156 SETTABLEKS                       R6 R5 K47 ["MinusButtonPosition"]
      158 GETIMPORT                        R6 K29 [UDim2.new]
      160 LOADK                            R7 K75 [0.05]
      161 LOADN                            R8 0
      162 LOADN                            R9 1
      163 LOADN                            R10 -20
      164 CALL                             R6 4 1
      165 SETTABLEKS                       R6 R5 K48 ["BigMinusButtonPosition"]
      167 GETIMPORT                        R6 K29 [UDim2.new]
      169 LOADK                            R7 K74 [0.25]
      170 LOADN                            R8 0
      171 LOADN                            R9 0
      172 LOADN                            R10 0
      173 CALL                             R6 4 1
      174 SETTABLEKS                       R6 R5 K49 ["PlusButtonPosition"]
      176 GETIMPORT                        R6 K29 [UDim2.new]
      178 LOADK                            R7 K75 [0.05]
      179 LOADN                            R8 0
      180 LOADN                            R9 0
      181 LOADN                            R10 0
      182 CALL                             R6 4 1
      183 SETTABLEKS                       R6 R5 K50 ["BigPlusButtonPosition"]
      185 GETIMPORT                        R6 K33 [Color3.new]
      187 LOADN                            R7 1
      188 LOADN                            R8 1
      189 LOADN                            R9 1
      190 CALL                             R6 3 1
      191 SETTABLEKS                       R6 R5 K51 ["activeLabelColor"]
      193 GETIMPORT                        R6 K33 [Color3.new]
      195 LOADK                            R7 K76 [0.8]
      196 LOADK                            R8 K76 [0.8]
      197 LOADK                            R9 K76 [0.8]
      198 CALL                             R6 3 1
      199 SETTABLEKS                       R6 R5 K52 ["inactiveLabelColor"]
      201 SETTABLEKS                       R5 R4 K11 ["WindspeedDisplay"]
      203 DUPCLOSURE                       R5 K77 [PROTO_0]
      204 CAPTURE                          VAL R3
      205 CAPTURE                          VAL R4
      206 RETURN                           R5 1
