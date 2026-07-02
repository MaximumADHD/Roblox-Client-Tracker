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
       19 DUPTABLE                         R8 K11 [{["BackgroundTransparency"] = 1, ["Position"], ["Size"]}]
       20 GETIMPORT                        R9 K14 [UDim2.new]
       22 LOADK                            R10 K15 [0.5]
       23 LOADN                            R11 -200
       24 LOADN                            R12 0
       25 LOADN                            R13 314
       26 CALL                             R9 4 1
       27 SETTABLEKS                       R9 R8 K9 ["Position"]
       29 GETIMPORT                        R9 K14 [UDim2.new]
       31 LOADN                            R10 0
       32 LOADN                            R11 400
       33 LOADN                            R12 0
       34 LOADN                            R13 6
       35 CALL                             R9 4 1
       36 SETTABLEKS                       R9 R8 K10 ["Size"]
       38 DUPTABLE                         R9 K21 [{"ProgressTitle", "ProgressMessage", "LoadingBar", "ProgressPercentText", "TimeWarning"}]
       39 JUMPIFNOT                        R5 ; [+40]
       40 GETUPVAL                         R10 1
       41 GETTABLEKS                       R10 R10 K5 ["createElement"]
       43 GETUPVAL                         R11 2
       44 DUPTABLE                         R12 K26 [{"Position", "Size", "Text", "TextSize", "TextXAlignment", "TextYAlignment"}]
       45 GETIMPORT                        R13 K14 [UDim2.new]
       47 LOADN                            R14 0
       48 LOADN                            R15 0
       49 LOADN                            R16 0
       50 LOADN                            R17 -54
       51 CALL                             R13 4 1
       52 SETTABLEKS                       R13 R12 K9 ["Position"]
       54 GETIMPORT                        R13 K14 [UDim2.new]
       56 LOADN                            R14 1
       57 LOADN                            R15 0
       58 LOADN                            R16 0
       59 LOADN                            R17 30
       60 CALL                             R13 4 1
       61 SETTABLEKS                       R13 R12 K10 ["Size"]
       63 SETTABLEKS                       R5 R12 K22 ["Text"]
       65 GETUPVAL                         R13 3
       66 GETTABLEKS                       R13 R13 K27 ["FONT_SIZE_TITLE"]
       68 SETTABLEKS                       R13 R12 K23 ["TextSize"]
       70 GETIMPORT                        R13 K30 [Enum.TextXAlignment.Center]
       72 SETTABLEKS                       R13 R12 K24 ["TextXAlignment"]
       74 GETIMPORT                        R13 K31 [Enum.TextYAlignment.Center]
       76 SETTABLEKS                       R13 R12 K25 ["TextYAlignment"]
       78 CALL                             R10 2 1
       79 JUMP                             ; [+1]
       80 LOADNIL                          R10
       81 SETTABLEKS                       R10 R9 K16 ["ProgressTitle"]
       83 JUMPIFNOT                        R4 ; [+40]
       84 GETUPVAL                         R10 1
       85 GETTABLEKS                       R10 R10 K5 ["createElement"]
       87 GETUPVAL                         R11 2
       88 DUPTABLE                         R12 K26 [{"Position", "Size", "Text", "TextSize", "TextXAlignment", "TextYAlignment"}]
       89 GETIMPORT                        R13 K14 [UDim2.new]
       91 LOADN                            R14 0
       92 LOADN                            R15 0
       93 LOADN                            R16 0
       94 LOADN                            R17 -32
       95 CALL                             R13 4 1
       96 SETTABLEKS                       R13 R12 K9 ["Position"]
       98 GETIMPORT                        R13 K14 [UDim2.new]
      100 LOADN                            R14 1
      101 LOADN                            R15 0
      102 LOADN                            R16 0
      103 LOADN                            R17 30
      104 CALL                             R13 4 1
      105 SETTABLEKS                       R13 R12 K10 ["Size"]
      107 SETTABLEKS                       R4 R12 K22 ["Text"]
      109 GETUPVAL                         R13 3
      110 GETTABLEKS                       R13 R13 K27 ["FONT_SIZE_TITLE"]
      112 SETTABLEKS                       R13 R12 K23 ["TextSize"]
      114 GETIMPORT                        R13 K30 [Enum.TextXAlignment.Center]
      116 SETTABLEKS                       R13 R12 K24 ["TextXAlignment"]
      118 GETIMPORT                        R13 K31 [Enum.TextYAlignment.Center]
      120 SETTABLEKS                       R13 R12 K25 ["TextYAlignment"]
      122 CALL                             R10 2 1
      123 JUMP                             ; [+1]
      124 LOADNIL                          R10
      125 SETTABLEKS                       R10 R9 K17 ["ProgressMessage"]
      127 GETUPVAL                         R10 1
      128 GETTABLEKS                       R10 R10 K5 ["createElement"]
      130 GETUPVAL                         R11 4
      131 DUPTABLE                         R12 K33 [{"Progress", "Size"}]
      132 SETTABLEKS                       R3 R12 K32 ["Progress"]
      134 GETIMPORT                        R13 K14 [UDim2.new]
      136 LOADN                            R14 1
      137 LOADN                            R15 0
      138 LOADN                            R16 1
      139 LOADN                            R17 0
      140 CALL                             R13 4 1
      141 SETTABLEKS                       R13 R12 K10 ["Size"]
      143 CALL                             R10 2 1
      144 SETTABLEKS                       R10 R9 K18 ["LoadingBar"]
      146 GETUPVAL                         R10 1
      147 GETTABLEKS                       R10 R10 K5 ["createElement"]
      149 GETUPVAL                         R11 2
      150 DUPTABLE                         R12 K35 [{"Position", "Size", "Text", "TextColor", "TextSize", "TextXAlignment", "TextYAlignment"}]
      151 GETIMPORT                        R13 K14 [UDim2.new]
      153 LOADN                            R14 0
      154 LOADN                            R15 0
      155 LOADN                            R16 0
      156 LOADN                            R17 15
      157 CALL                             R13 4 1
      158 SETTABLEKS                       R13 R12 K9 ["Position"]
      160 GETIMPORT                        R13 K14 [UDim2.new]
      162 LOADN                            R14 1
      163 LOADN                            R15 0
      164 LOADN                            R16 0
      165 LOADN                            R17 10
      166 CALL                             R13 4 1
      167 SETTABLEKS                       R13 R12 K10 ["Size"]
      169 LOADK                            R15 K36 ["AssetConfig"]
      170 LOADK                            R16 K37 ["ProgressBarProgressText"]
      171 DUPTABLE                         R17 K39 [{"percent"}]
      172 MULK                             R19 R3 K40 [100]
      173 FASTCALL1                        MATH_FLOOR R19 ; [+2]
      174 GETIMPORT                        R18 K43 [math.floor]
      176 CALL                             R18 1 1
      177 SETTABLEKS                       R18 R17 K38 ["percent"]
      179 NAMECALL                         R13 R2 K44 ["getText"]
      181 CALL                             R13 4 1
      182 SETTABLEKS                       R13 R12 K22 ["Text"]
      184 GETUPVAL                         R13 5
      185 GETTABLEKS                       R13 R13 K45 ["GRAY_3"]
      187 SETTABLEKS                       R13 R12 K34 ["TextColor"]
      189 GETUPVAL                         R13 3
      190 GETTABLEKS                       R13 R13 K46 ["FONT_SIZE_LARGE"]
      192 SETTABLEKS                       R13 R12 K23 ["TextSize"]
      194 GETIMPORT                        R13 K48 [Enum.TextXAlignment.Left]
      196 SETTABLEKS                       R13 R12 K24 ["TextXAlignment"]
      198 GETIMPORT                        R13 K31 [Enum.TextYAlignment.Center]
      200 SETTABLEKS                       R13 R12 K25 ["TextYAlignment"]
      202 CALL                             R10 2 1
      203 SETTABLEKS                       R10 R9 K19 ["ProgressPercentText"]
      205 GETUPVAL                         R10 1
      206 GETTABLEKS                       R10 R10 K5 ["createElement"]
      208 GETUPVAL                         R11 2
      209 DUPTABLE                         R12 K35 [{"Position", "Size", "Text", "TextColor", "TextSize", "TextXAlignment", "TextYAlignment"}]
      210 GETIMPORT                        R13 K14 [UDim2.new]
      212 LOADN                            R14 0
      213 LOADN                            R15 0
      214 LOADN                            R16 0
      215 LOADN                            R17 15
      216 CALL                             R13 4 1
      217 SETTABLEKS                       R13 R12 K9 ["Position"]
      219 GETIMPORT                        R13 K14 [UDim2.new]
      221 LOADN                            R14 1
      222 LOADN                            R15 0
      223 LOADN                            R16 0
      224 LOADN                            R17 10
      225 CALL                             R13 4 1
      226 SETTABLEKS                       R13 R12 K10 ["Size"]
      228 LOADK                            R15 K36 ["AssetConfig"]
      229 LOADK                            R16 K49 ["ProgressUploadWaitTimeWarning"]
      230 NAMECALL                         R13 R2 K44 ["getText"]
      232 CALL                             R13 3 1
      233 SETTABLEKS                       R13 R12 K22 ["Text"]
      235 GETUPVAL                         R13 5
      236 GETTABLEKS                       R13 R13 K50 ["GRAY_2"]
      238 SETTABLEKS                       R13 R12 K34 ["TextColor"]
      240 GETUPVAL                         R13 3
      241 GETTABLEKS                       R13 R13 K51 ["FONT_SIZE_MEDIUM"]
      243 SETTABLEKS                       R13 R12 K23 ["TextSize"]
      245 GETIMPORT                        R13 K53 [Enum.TextXAlignment.Right]
      247 SETTABLEKS                       R13 R12 K24 ["TextXAlignment"]
      249 GETIMPORT                        R13 K31 [Enum.TextYAlignment.Center]
      251 SETTABLEKS                       R13 R12 K25 ["TextYAlignment"]
      253 CALL                             R10 2 1
      254 SETTABLEKS                       R10 R9 K20 ["TimeWarning"]
      256 CALL                             R6 3 -1
      257 RETURN                           R6 -1

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
