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
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+2]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETTABLEKS                       R1 R0 K0 ["props"]
        7 GETTABLEKS                       R2 R1 K1 ["Localization"]
        9 GETTABLEKS                       R3 R1 K2 ["progress"]
       11 GETTABLEKS                       R4 R1 K3 ["progressText"]
       13 GETTABLEKS                       R5 R1 K4 ["progressTitle"]
       15 GETUPVAL                         R6 1
       16 GETTABLEKS                       R6 R6 K5 ["createElement"]
       18 LOADK                            R7 K6 ["Frame"]
       19 DUPTABLE                         R8 K10 [{"BackgroundTransparency", "Position", "Size"}]
       20 LOADN                            R9 1
       21 SETTABLEKS                       R9 R8 K7 ["BackgroundTransparency"]
       23 GETIMPORT                        R9 K13 [UDim2.new]
       25 LOADK                            R10 K14 [0.5]
       26 LOADN                            R11 56
       27 LOADN                            R12 0
       28 LOADN                            R13 58
       29 CALL                             R9 4 1
       30 SETTABLEKS                       R9 R8 K8 ["Position"]
       32 GETIMPORT                        R9 K13 [UDim2.new]
       34 LOADN                            R10 0
       35 LOADN                            R11 144
       36 LOADN                            R12 0
       37 LOADN                            R13 6
       38 CALL                             R9 4 1
       39 SETTABLEKS                       R9 R8 K9 ["Size"]
       41 DUPTABLE                         R9 K20 [{"ProgressTitle", "ProgressMessage", "LoadingBar", "ProgressPercentText", "TimeWarning"}]
       42 JUMPIFNOT                        R5 ; [+40]
       43 GETUPVAL                         R10 1
       44 GETTABLEKS                       R10 R10 K5 ["createElement"]
       46 GETUPVAL                         R11 2
       47 DUPTABLE                         R12 K25 [{"Position", "Size", "Text", "TextSize", "TextXAlignment", "TextYAlignment"}]
       48 GETIMPORT                        R13 K13 [UDim2.new]
       50 LOADN                            R14 0
       51 LOADN                            R15 0
       52 LOADN                            R16 0
       53 LOADN                            R17 202
       54 CALL                             R13 4 1
       55 SETTABLEKS                       R13 R12 K8 ["Position"]
       57 GETIMPORT                        R13 K13 [UDim2.new]
       59 LOADN                            R14 1
       60 LOADN                            R15 0
       61 LOADN                            R16 0
       62 LOADN                            R17 30
       63 CALL                             R13 4 1
       64 SETTABLEKS                       R13 R12 K9 ["Size"]
       66 SETTABLEKS                       R5 R12 K21 ["Text"]
       68 GETUPVAL                         R13 3
       69 GETTABLEKS                       R13 R13 K26 ["FONT_SIZE_TITLE"]
       71 SETTABLEKS                       R13 R12 K22 ["TextSize"]
       73 GETIMPORT                        R13 K29 [Enum.TextXAlignment.Center]
       75 SETTABLEKS                       R13 R12 K23 ["TextXAlignment"]
       77 GETIMPORT                        R13 K30 [Enum.TextYAlignment.Center]
       79 SETTABLEKS                       R13 R12 K24 ["TextYAlignment"]
       81 CALL                             R10 2 1
       82 JUMP                             ; [+1]
       83 LOADNIL                          R10
       84 SETTABLEKS                       R10 R9 K15 ["ProgressTitle"]
       86 JUMPIFNOT                        R4 ; [+40]
       87 GETUPVAL                         R10 1
       88 GETTABLEKS                       R10 R10 K5 ["createElement"]
       90 GETUPVAL                         R11 2
       91 DUPTABLE                         R12 K25 [{"Position", "Size", "Text", "TextSize", "TextXAlignment", "TextYAlignment"}]
       92 GETIMPORT                        R13 K13 [UDim2.new]
       94 LOADN                            R14 0
       95 LOADN                            R15 0
       96 LOADN                            R16 0
       97 LOADN                            R17 224
       98 CALL                             R13 4 1
       99 SETTABLEKS                       R13 R12 K8 ["Position"]
      101 GETIMPORT                        R13 K13 [UDim2.new]
      103 LOADN                            R14 1
      104 LOADN                            R15 0
      105 LOADN                            R16 0
      106 LOADN                            R17 30
      107 CALL                             R13 4 1
      108 SETTABLEKS                       R13 R12 K9 ["Size"]
      110 SETTABLEKS                       R4 R12 K21 ["Text"]
      112 GETUPVAL                         R13 3
      113 GETTABLEKS                       R13 R13 K26 ["FONT_SIZE_TITLE"]
      115 SETTABLEKS                       R13 R12 K22 ["TextSize"]
      117 GETIMPORT                        R13 K29 [Enum.TextXAlignment.Center]
      119 SETTABLEKS                       R13 R12 K23 ["TextXAlignment"]
      121 GETIMPORT                        R13 K30 [Enum.TextYAlignment.Center]
      123 SETTABLEKS                       R13 R12 K24 ["TextYAlignment"]
      125 CALL                             R10 2 1
      126 JUMP                             ; [+1]
      127 LOADNIL                          R10
      128 SETTABLEKS                       R10 R9 K16 ["ProgressMessage"]
      130 GETUPVAL                         R10 1
      131 GETTABLEKS                       R10 R10 K5 ["createElement"]
      133 GETUPVAL                         R11 4
      134 DUPTABLE                         R12 K32 [{"Progress", "Size"}]
      135 SETTABLEKS                       R3 R12 K31 ["Progress"]
      137 GETIMPORT                        R13 K13 [UDim2.new]
      139 LOADN                            R14 1
      140 LOADN                            R15 0
      141 LOADN                            R16 1
      142 LOADN                            R17 0
      143 CALL                             R13 4 1
      144 SETTABLEKS                       R13 R12 K9 ["Size"]
      146 CALL                             R10 2 1
      147 SETTABLEKS                       R10 R9 K17 ["LoadingBar"]
      149 GETUPVAL                         R10 1
      150 GETTABLEKS                       R10 R10 K5 ["createElement"]
      152 GETUPVAL                         R11 2
      153 DUPTABLE                         R12 K34 [{"Position", "Size", "Text", "TextColor", "TextSize", "TextXAlignment", "TextYAlignment"}]
      154 GETIMPORT                        R13 K13 [UDim2.new]
      156 LOADN                            R14 0
      157 LOADN                            R15 0
      158 LOADN                            R16 0
      159 LOADN                            R17 15
      160 CALL                             R13 4 1
      161 SETTABLEKS                       R13 R12 K8 ["Position"]
      163 GETIMPORT                        R13 K13 [UDim2.new]
      165 LOADN                            R14 1
      166 LOADN                            R15 0
      167 LOADN                            R16 0
      168 LOADN                            R17 10
      169 CALL                             R13 4 1
      170 SETTABLEKS                       R13 R12 K9 ["Size"]
      172 LOADK                            R15 K35 ["AssetConfig"]
      173 LOADK                            R16 K36 ["ProgressBarProgressText"]
      174 DUPTABLE                         R17 K38 [{"percent"}]
      175 MULK                             R19 R3 K39 [100]
      176 FASTCALL1                        MATH_FLOOR R19 ; [+2]
      177 GETIMPORT                        R18 K42 [math.floor]
      179 CALL                             R18 1 1
      180 SETTABLEKS                       R18 R17 K37 ["percent"]
      182 NAMECALL                         R13 R2 K43 ["getText"]
      184 CALL                             R13 4 1
      185 SETTABLEKS                       R13 R12 K21 ["Text"]
      187 GETUPVAL                         R13 5
      188 GETTABLEKS                       R13 R13 K44 ["GRAY_3"]
      190 SETTABLEKS                       R13 R12 K33 ["TextColor"]
      192 GETUPVAL                         R13 3
      193 GETTABLEKS                       R13 R13 K45 ["FONT_SIZE_LARGE"]
      195 SETTABLEKS                       R13 R12 K22 ["TextSize"]
      197 GETIMPORT                        R13 K47 [Enum.TextXAlignment.Left]
      199 SETTABLEKS                       R13 R12 K23 ["TextXAlignment"]
      201 GETIMPORT                        R13 K30 [Enum.TextYAlignment.Center]
      203 SETTABLEKS                       R13 R12 K24 ["TextYAlignment"]
      205 CALL                             R10 2 1
      206 SETTABLEKS                       R10 R9 K18 ["ProgressPercentText"]
      208 GETUPVAL                         R10 1
      209 GETTABLEKS                       R10 R10 K5 ["createElement"]
      211 GETUPVAL                         R11 2
      212 DUPTABLE                         R12 K34 [{"Position", "Size", "Text", "TextColor", "TextSize", "TextXAlignment", "TextYAlignment"}]
      213 GETIMPORT                        R13 K13 [UDim2.new]
      215 LOADN                            R14 0
      216 LOADN                            R15 0
      217 LOADN                            R16 0
      218 LOADN                            R17 15
      219 CALL                             R13 4 1
      220 SETTABLEKS                       R13 R12 K8 ["Position"]
      222 GETIMPORT                        R13 K13 [UDim2.new]
      224 LOADN                            R14 1
      225 LOADN                            R15 0
      226 LOADN                            R16 0
      227 LOADN                            R17 10
      228 CALL                             R13 4 1
      229 SETTABLEKS                       R13 R12 K9 ["Size"]
      231 LOADK                            R15 K35 ["AssetConfig"]
      232 LOADK                            R16 K48 ["ProgressUploadWaitTimeWarning"]
      233 NAMECALL                         R13 R2 K43 ["getText"]
      235 CALL                             R13 3 1
      236 SETTABLEKS                       R13 R12 K21 ["Text"]
      238 GETUPVAL                         R13 5
      239 GETTABLEKS                       R13 R13 K49 ["GRAY_2"]
      241 SETTABLEKS                       R13 R12 K33 ["TextColor"]
      243 GETUPVAL                         R13 3
      244 GETTABLEKS                       R13 R13 K50 ["FONT_SIZE_MEDIUM"]
      246 SETTABLEKS                       R13 R12 K22 ["TextSize"]
      248 GETIMPORT                        R13 K52 [Enum.TextXAlignment.Right]
      250 SETTABLEKS                       R13 R12 K23 ["TextXAlignment"]
      252 GETIMPORT                        R13 K30 [Enum.TextYAlignment.Center]
      254 SETTABLEKS                       R13 R12 K24 ["TextYAlignment"]
      256 CALL                             R10 2 1
      257 SETTABLEKS                       R10 R9 K19 ["TimeWarning"]
      259 CALL                             R6 3 -1
      260 RETURN                           R6 -1

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
       34 GETTABLEKS                       R10 R0 K15 ["Src"]
       36 GETTABLEKS                       R10 R10 K16 ["Util"]
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
       54 GETIMPORT                        R14 K6 [require]
       56 GETTABLEKS                       R15 R0 K15 ["Src"]
       58 GETTABLEKS                       R15 R15 K22 ["Flags"]
       60 GETTABLEKS                       R15 R15 K23 ["getFFlagToolboxAssetConfigFoundationMigration"]
       62 CALL                             R14 1 1
       63 DUPCLOSURE                       R15 K24 [PROTO_0]
       64 SETTABLEKS                       R15 R13 K25 ["didUpdate"]
       66 DUPCLOSURE                       R15 K26 [PROTO_1]
       67 CAPTURE                          VAL R14
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R9
       70 CAPTURE                          VAL R12
       71 CAPTURE                          VAL R8
       72 CAPTURE                          VAL R11
       73 SETTABLEKS                       R15 R13 K27 ["render"]
       75 DUPCLOSURE                       R15 K28 [PROTO_2]
       76 MOVE                             R16 R6
       77 DUPTABLE                         R17 K31 [{"Localization", "Stylizer"}]
       78 GETTABLEKS                       R18 R5 K29 ["Localization"]
       80 SETTABLEKS                       R18 R17 K29 ["Localization"]
       82 GETTABLEKS                       R18 R5 K30 ["Stylizer"]
       84 SETTABLEKS                       R18 R17 K30 ["Stylizer"]
       86 CALL                             R16 1 1
       87 MOVE                             R17 R13
       88 CALL                             R16 1 1
       89 MOVE                             R13 R16
       90 GETTABLEKS                       R16 R4 K32 ["connect"]
       92 MOVE                             R17 R15
       93 CALL                             R16 1 1
       94 MOVE                             R17 R13
       95 CALL                             R16 1 -1
       96 RETURN                           R16 -1
