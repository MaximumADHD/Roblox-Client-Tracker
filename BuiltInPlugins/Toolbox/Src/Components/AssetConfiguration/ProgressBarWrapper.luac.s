PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R2 K1 ["uploadSucceeded"]
        4 JUMPIFEQKNIL                     R3 ; [+10]
        6 GETTABLEKS                       R3 R1 K1 ["uploadSucceeded"]
        8 GETTABLEKS                       R4 R2 K1 ["uploadSucceeded"]
       10 JUMPIFEQ                         R3 R4 ; [+4]
       12 GETTABLEKS                       R3 R2 K2 ["onFinish"]
       14 CALL                             R3 0 0
       15 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["progress"]
        6 GETTABLEKS                       R4 R1 K3 ["progressText"]
        8 GETTABLEKS                       R5 R1 K4 ["progressTitle"]
       10 GETUPVAL                         R7 0
       11 GETTABLEKS                       R6 R7 K5 ["createElement"]
       13 LOADK                            R7 K6 ["Frame"]
       14 DUPTABLE                         R8 K10 [{"BackgroundTransparency", "Position", "Size"}]
       15 LOADN                            R9 1
       16 SETTABLEKS                       R9 R8 K7 ["BackgroundTransparency"]
       18 GETIMPORT                        R9 K13 [UDim2.new]
       20 LOADK                            R10 K14 [0.5]
       21 LOADN                            R11 56
       22 LOADN                            R12 0
       23 LOADN                            R13 58
       24 CALL                             R9 4 1
       25 SETTABLEKS                       R9 R8 K8 ["Position"]
       27 GETIMPORT                        R9 K13 [UDim2.new]
       29 LOADN                            R10 0
       30 LOADN                            R11 144
       31 LOADN                            R12 0
       32 LOADN                            R13 6
       33 CALL                             R9 4 1
       34 SETTABLEKS                       R9 R8 K9 ["Size"]
       36 DUPTABLE                         R9 K20 [{"ProgressTitle", "ProgressMessage", "LoadingBar", "ProgressPercentText", "TimeWarning"}]
       37 JUMPIFNOT                        R5 ; [+40]
       38 GETUPVAL                         R11 0
       39 GETTABLEKS                       R10 R11 K5 ["createElement"]
       41 GETUPVAL                         R11 1
       42 DUPTABLE                         R12 K25 [{"Position", "Size", "Text", "TextSize", "TextXAlignment", "TextYAlignment"}]
       43 GETIMPORT                        R13 K13 [UDim2.new]
       45 LOADN                            R14 0
       46 LOADN                            R15 0
       47 LOADN                            R16 0
       48 LOADN                            R17 202
       49 CALL                             R13 4 1
       50 SETTABLEKS                       R13 R12 K8 ["Position"]
       52 GETIMPORT                        R13 K13 [UDim2.new]
       54 LOADN                            R14 1
       55 LOADN                            R15 0
       56 LOADN                            R16 0
       57 LOADN                            R17 30
       58 CALL                             R13 4 1
       59 SETTABLEKS                       R13 R12 K9 ["Size"]
       61 SETTABLEKS                       R5 R12 K21 ["Text"]
       63 GETUPVAL                         R14 2
       64 GETTABLEKS                       R13 R14 K26 ["FONT_SIZE_TITLE"]
       66 SETTABLEKS                       R13 R12 K22 ["TextSize"]
       68 GETIMPORT                        R13 K29 [Enum.TextXAlignment.Center]
       70 SETTABLEKS                       R13 R12 K23 ["TextXAlignment"]
       72 GETIMPORT                        R13 K30 [Enum.TextYAlignment.Center]
       74 SETTABLEKS                       R13 R12 K24 ["TextYAlignment"]
       76 CALL                             R10 2 1
       77 JUMP                             ; [+1]
       78 LOADNIL                          R10
       79 SETTABLEKS                       R10 R9 K15 ["ProgressTitle"]
       81 JUMPIFNOT                        R4 ; [+40]
       82 GETUPVAL                         R11 0
       83 GETTABLEKS                       R10 R11 K5 ["createElement"]
       85 GETUPVAL                         R11 1
       86 DUPTABLE                         R12 K25 [{"Position", "Size", "Text", "TextSize", "TextXAlignment", "TextYAlignment"}]
       87 GETIMPORT                        R13 K13 [UDim2.new]
       89 LOADN                            R14 0
       90 LOADN                            R15 0
       91 LOADN                            R16 0
       92 LOADN                            R17 224
       93 CALL                             R13 4 1
       94 SETTABLEKS                       R13 R12 K8 ["Position"]
       96 GETIMPORT                        R13 K13 [UDim2.new]
       98 LOADN                            R14 1
       99 LOADN                            R15 0
      100 LOADN                            R16 0
      101 LOADN                            R17 30
      102 CALL                             R13 4 1
      103 SETTABLEKS                       R13 R12 K9 ["Size"]
      105 SETTABLEKS                       R4 R12 K21 ["Text"]
      107 GETUPVAL                         R14 2
      108 GETTABLEKS                       R13 R14 K26 ["FONT_SIZE_TITLE"]
      110 SETTABLEKS                       R13 R12 K22 ["TextSize"]
      112 GETIMPORT                        R13 K29 [Enum.TextXAlignment.Center]
      114 SETTABLEKS                       R13 R12 K23 ["TextXAlignment"]
      116 GETIMPORT                        R13 K30 [Enum.TextYAlignment.Center]
      118 SETTABLEKS                       R13 R12 K24 ["TextYAlignment"]
      120 CALL                             R10 2 1
      121 JUMP                             ; [+1]
      122 LOADNIL                          R10
      123 SETTABLEKS                       R10 R9 K16 ["ProgressMessage"]
      125 GETUPVAL                         R11 0
      126 GETTABLEKS                       R10 R11 K5 ["createElement"]
      128 GETUPVAL                         R11 3
      129 DUPTABLE                         R12 K32 [{"Progress", "Size"}]
      130 SETTABLEKS                       R3 R12 K31 ["Progress"]
      132 GETIMPORT                        R13 K13 [UDim2.new]
      134 LOADN                            R14 1
      135 LOADN                            R15 0
      136 LOADN                            R16 1
      137 LOADN                            R17 0
      138 CALL                             R13 4 1
      139 SETTABLEKS                       R13 R12 K9 ["Size"]
      141 CALL                             R10 2 1
      142 SETTABLEKS                       R10 R9 K17 ["LoadingBar"]
      144 GETUPVAL                         R11 0
      145 GETTABLEKS                       R10 R11 K5 ["createElement"]
      147 GETUPVAL                         R11 1
      148 DUPTABLE                         R12 K34 [{"Position", "Size", "Text", "TextColor", "TextSize", "TextXAlignment", "TextYAlignment"}]
      149 GETIMPORT                        R13 K13 [UDim2.new]
      151 LOADN                            R14 0
      152 LOADN                            R15 0
      153 LOADN                            R16 0
      154 LOADN                            R17 15
      155 CALL                             R13 4 1
      156 SETTABLEKS                       R13 R12 K8 ["Position"]
      158 GETIMPORT                        R13 K13 [UDim2.new]
      160 LOADN                            R14 1
      161 LOADN                            R15 0
      162 LOADN                            R16 0
      163 LOADN                            R17 10
      164 CALL                             R13 4 1
      165 SETTABLEKS                       R13 R12 K9 ["Size"]
      167 LOADK                            R15 K35 ["AssetConfig"]
      168 LOADK                            R16 K36 ["ProgressBarProgressText"]
      169 DUPTABLE                         R17 K38 [{"percent"}]
      170 MULK                             R19 R3 K39 [100]
      171 FASTCALL1                        MATH_FLOOR R19 ; [+2]
      172 GETIMPORT                        R18 K42 [math.floor]
      174 CALL                             R18 1 1
      175 SETTABLEKS                       R18 R17 K37 ["percent"]
      177 NAMECALL                         R13 R2 K43 ["getText"]
      179 CALL                             R13 4 1
      180 SETTABLEKS                       R13 R12 K21 ["Text"]
      182 GETUPVAL                         R14 4
      183 GETTABLEKS                       R13 R14 K44 ["GRAY_3"]
      185 SETTABLEKS                       R13 R12 K33 ["TextColor"]
      187 GETUPVAL                         R14 2
      188 GETTABLEKS                       R13 R14 K45 ["FONT_SIZE_LARGE"]
      190 SETTABLEKS                       R13 R12 K22 ["TextSize"]
      192 GETIMPORT                        R13 K47 [Enum.TextXAlignment.Left]
      194 SETTABLEKS                       R13 R12 K23 ["TextXAlignment"]
      196 GETIMPORT                        R13 K30 [Enum.TextYAlignment.Center]
      198 SETTABLEKS                       R13 R12 K24 ["TextYAlignment"]
      200 CALL                             R10 2 1
      201 SETTABLEKS                       R10 R9 K18 ["ProgressPercentText"]
      203 GETUPVAL                         R11 0
      204 GETTABLEKS                       R10 R11 K5 ["createElement"]
      206 GETUPVAL                         R11 1
      207 DUPTABLE                         R12 K34 [{"Position", "Size", "Text", "TextColor", "TextSize", "TextXAlignment", "TextYAlignment"}]
      208 GETIMPORT                        R13 K13 [UDim2.new]
      210 LOADN                            R14 0
      211 LOADN                            R15 0
      212 LOADN                            R16 0
      213 LOADN                            R17 15
      214 CALL                             R13 4 1
      215 SETTABLEKS                       R13 R12 K8 ["Position"]
      217 GETIMPORT                        R13 K13 [UDim2.new]
      219 LOADN                            R14 1
      220 LOADN                            R15 0
      221 LOADN                            R16 0
      222 LOADN                            R17 10
      223 CALL                             R13 4 1
      224 SETTABLEKS                       R13 R12 K9 ["Size"]
      226 LOADK                            R15 K35 ["AssetConfig"]
      227 LOADK                            R16 K48 ["ProgressUploadWaitTimeWarning"]
      228 NAMECALL                         R13 R2 K43 ["getText"]
      230 CALL                             R13 3 1
      231 SETTABLEKS                       R13 R12 K21 ["Text"]
      233 GETUPVAL                         R14 4
      234 GETTABLEKS                       R13 R14 K49 ["GRAY_2"]
      236 SETTABLEKS                       R13 R12 K33 ["TextColor"]
      238 GETUPVAL                         R14 2
      239 GETTABLEKS                       R13 R14 K50 ["FONT_SIZE_MEDIUM"]
      241 SETTABLEKS                       R13 R12 K22 ["TextSize"]
      243 GETIMPORT                        R13 K52 [Enum.TextXAlignment.Right]
      245 SETTABLEKS                       R13 R12 K23 ["TextXAlignment"]
      247 GETIMPORT                        R13 K30 [Enum.TextYAlignment.Center]
      249 SETTABLEKS                       R13 R12 K24 ["TextYAlignment"]
      251 CALL                             R10 2 1
      252 SETTABLEKS                       R10 R9 K19 ["TimeWarning"]
      254 CALL                             R6 3 -1
      255 RETURN                           R6 -1

PROTO_2:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 DUPTABLE                         R2 K4 [{"progress", "progressText", "progressTitle", "uploadSucceeded"}]
        6 GETTABLEKS                       R3 R0 K5 ["progressPercentage"]
        8 SETTABLEKS                       R3 R2 K0 ["progress"]
       10 GETTABLEKS                       R3 R0 K1 ["progressText"]
       12 SETTABLEKS                       R3 R2 K1 ["progressText"]
       14 GETTABLEKS                       R3 R0 K2 ["progressTitle"]
       16 SETTABLEKS                       R3 R2 K2 ["progressTitle"]
       18 GETTABLEKS                       R3 R0 K3 ["uploadSucceeded"]
       20 SETTABLEKS                       R3 R2 K3 ["uploadSucceeded"]
       22 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Framework"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Roact"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["RoactRodux"]
       23 CALL                             R4 1 1
       24 GETTABLEKS                       R5 R2 K10 ["ContextServices"]
       26 GETTABLEKS                       R6 R5 K11 ["withContext"]
       28 GETTABLEKS                       R7 R2 K12 ["UI"]
       30 GETTABLEKS                       R8 R7 K13 ["LoadingBar"]
       32 GETTABLEKS                       R9 R7 K14 ["TextLabel"]
       34 GETTABLEKS                       R11 R0 K15 ["Src"]
       36 GETTABLEKS                       R10 R11 K16 ["Util"]
       38 GETIMPORT                        R11 K6 [require]
       40 GETTABLEKS                       R12 R10 K17 ["Colors"]
       42 CALL                             R11 1 1
       43 GETIMPORT                        R12 K6 [require]
       45 GETTABLEKS                       R13 R10 K18 ["Constants"]
       47 CALL                             R12 1 1
       48 GETTABLEKS                       R13 R3 K19 ["Component"]
       50 LOADK                            R15 K20 ["ProgressBarWrapper"]
       51 NAMECALL                         R13 R13 K21 ["extend"]
       53 CALL                             R13 2 1
       54 DUPCLOSURE                       R14 K22 [PROTO_0]
       55 SETTABLEKS                       R14 R13 K23 ["didUpdate"]
       57 DUPCLOSURE                       R14 K24 [PROTO_1]
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R9
       60 CAPTURE                          VAL R12
       61 CAPTURE                          VAL R8
       62 CAPTURE                          VAL R11
       63 SETTABLEKS                       R14 R13 K25 ["render"]
       65 DUPCLOSURE                       R14 K26 [PROTO_2]
       66 MOVE                             R15 R6
       67 DUPTABLE                         R16 K29 [{"Localization", "Stylizer"}]
       68 GETTABLEKS                       R17 R5 K27 ["Localization"]
       70 SETTABLEKS                       R17 R16 K27 ["Localization"]
       72 GETTABLEKS                       R17 R5 K28 ["Stylizer"]
       74 SETTABLEKS                       R17 R16 K28 ["Stylizer"]
       76 CALL                             R15 1 1
       77 MOVE                             R16 R13
       78 CALL                             R15 1 1
       79 MOVE                             R13 R15
       80 GETTABLEKS                       R15 R4 K30 ["connect"]
       82 MOVE                             R16 R14
       83 CALL                             R15 1 1
       84 MOVE                             R16 R13
       85 CALL                             R15 1 -1
       86 RETURN                           R15 -1
