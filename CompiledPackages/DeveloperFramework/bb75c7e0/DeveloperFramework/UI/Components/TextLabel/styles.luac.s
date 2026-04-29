MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Styling"]
       13 GETTABLEKS                       R2 R3 K8 ["createStyleRule"]
       15 CALL                             R1 1 1
       16 MOVE                             R2 R1
       17 LOADK                            R3 K9 [".Component-TextLabel"]
       18 DUPTABLE                         R4 K16 [{"BackgroundTransparency", "BorderSizePixel", "Font", "Size", "TextSize", "TextColor3"}]
       19 LOADN                            R5 1
       20 SETTABLEKS                       R5 R4 K10 ["BackgroundTransparency"]
       22 LOADN                            R5 0
       23 SETTABLEKS                       R5 R4 K11 ["BorderSizePixel"]
       25 LOADK                            R5 K17 ["$TextLabelFont"]
       26 SETTABLEKS                       R5 R4 K12 ["Font"]
       28 GETIMPORT                        R5 K20 [UDim2.fromScale]
       30 LOADN                            R6 1
       31 LOADN                            R7 1
       32 CALL                             R5 2 1
       33 SETTABLEKS                       R5 R4 K13 ["Size"]
       35 LOADK                            R5 K21 ["$TextLabelTextSize"]
       36 SETTABLEKS                       R5 R4 K14 ["TextSize"]
       38 LOADK                            R5 K22 ["$TextPrimary"]
       39 SETTABLEKS                       R5 R4 K15 ["TextColor3"]
       41 NEWTABLE                         R5 0 22
       43 MOVE                             R6 R1
       44 LOADK                            R7 K23 [".Disabled"]
       45 DUPTABLE                         R8 K25 [{"TextTransparency"}]
       46 LOADK                            R9 K26 [0.5]
       47 SETTABLEKS                       R9 R8 K24 ["TextTransparency"]
       49 CALL                             R6 2 1
       50 MOVE                             R7 R1
       51 LOADK                            R8 K27 [".Body"]
       52 DUPTABLE                         R9 K28 [{"TextSize", "TextColor3"}]
       53 LOADN                            R10 14
       54 SETTABLEKS                       R10 R9 K14 ["TextSize"]
       56 LOADK                            R10 K29 ["$TextSecondary"]
       57 SETTABLEKS                       R10 R9 K15 ["TextColor3"]
       59 CALL                             R7 2 1
       60 MOVE                             R8 R1
       61 LOADK                            R9 K30 [".Bold"]
       62 DUPTABLE                         R10 K31 [{"Font"}]
       63 GETIMPORT                        R11 K34 [Enum.Font.SourceSansBold]
       65 SETTABLEKS                       R11 R10 K12 ["Font"]
       67 CALL                             R8 2 1
       68 MOVE                             R9 R1
       69 LOADK                            R10 K35 [".Semibold"]
       70 DUPTABLE                         R11 K36 [{"Font", "TextSize"}]
       71 GETIMPORT                        R12 K38 [Enum.Font.SourceSansSemibold]
       73 SETTABLEKS                       R12 R11 K12 ["Font"]
       75 LOADN                            R12 22
       76 SETTABLEKS                       R12 R11 K14 ["TextSize"]
       78 CALL                             R9 2 1
       79 MOVE                             R10 R1
       80 LOADK                            R11 K39 [".SubText"]
       81 DUPTABLE                         R12 K40 [{"TextColor3"}]
       82 LOADK                            R13 K29 ["$TextSecondary"]
       83 SETTABLEKS                       R13 R12 K15 ["TextColor3"]
       85 CALL                             R10 2 1
       86 MOVE                             R11 R1
       87 LOADK                            R12 K41 [".Label"]
       88 DUPTABLE                         R13 K40 [{"TextColor3"}]
       89 LOADK                            R14 K29 ["$TextSecondary"]
       90 SETTABLEKS                       R14 R13 K15 ["TextColor3"]
       92 CALL                             R11 2 1
       93 MOVE                             R12 R1
       94 LOADK                            R13 K42 [".Selected"]
       95 DUPTABLE                         R14 K40 [{"TextColor3"}]
       96 LOADK                            R15 K43 ["$TextLink"]
       97 SETTABLEKS                       R15 R14 K15 ["TextColor3"]
       99 CALL                             R12 2 1
      100 MOVE                             R13 R1
      101 LOADK                            R14 K44 [".Subtitle"]
      102 DUPTABLE                         R15 K45 [{"TextColor3", "TextSize"}]
      103 LOADK                            R16 K29 ["$TextSecondary"]
      104 SETTABLEKS                       R16 R15 K15 ["TextColor3"]
      106 LOADN                            R16 22
      107 SETTABLEKS                       R16 R15 K14 ["TextSize"]
      109 CALL                             R13 2 1
      110 MOVE                             R14 R1
      111 LOADK                            R15 K46 [".Title"]
      112 DUPTABLE                         R16 K47 [{"TextSize"}]
      113 LOADK                            R17 K48 ["$TextLabelTitleSize"]
      114 SETTABLEKS                       R17 R16 K14 ["TextSize"]
      116 CALL                             R14 2 1
      117 MOVE                             R15 R1
      118 LOADK                            R16 K49 [".Contrast"]
      119 DUPTABLE                         R17 K40 [{"TextColor3"}]
      120 LOADK                            R18 K50 ["$TextContrast"]
      121 SETTABLEKS                       R18 R17 K15 ["TextColor3"]
      123 CALL                             R15 2 1
      124 MOVE                             R16 R1
      125 LOADK                            R17 K51 [".Success"]
      126 DUPTABLE                         R18 K40 [{"TextColor3"}]
      127 LOADK                            R19 K52 ["$TextSuccess"]
      128 SETTABLEKS                       R19 R18 K15 ["TextColor3"]
      130 CALL                             R16 2 1
      131 MOVE                             R17 R1
      132 LOADK                            R18 K53 [".Error"]
      133 DUPTABLE                         R19 K40 [{"TextColor3"}]
      134 LOADK                            R20 K54 ["$TextError"]
      135 SETTABLEKS                       R20 R19 K15 ["TextColor3"]
      137 CALL                             R17 2 1
      138 MOVE                             R18 R1
      139 LOADK                            R19 K55 [".Warning"]
      140 DUPTABLE                         R20 K40 [{"TextColor3"}]
      141 LOADK                            R21 K56 ["$TextWarning"]
      142 SETTABLEKS                       R21 R20 K15 ["TextColor3"]
      144 CALL                             R18 2 1
      145 MOVE                             R19 R1
      146 LOADK                            R20 K57 [".Monospace"]
      147 DUPTABLE                         R21 K36 [{"Font", "TextSize"}]
      148 GETIMPORT                        R22 K59 [Enum.Font.RobotoMono]
      150 SETTABLEKS                       R22 R21 K12 ["Font"]
      152 LOADN                            R22 14
      153 SETTABLEKS                       R22 R21 K14 ["TextSize"]
      155 CALL                             R19 2 1
      156 MOVE                             R20 R1
      157 LOADK                            R21 K60 [".Wrap"]
      158 DUPTABLE                         R22 K64 [{"TextWrapped", "TextXAlignment", "TextYAlignment"}]
      159 LOADB                            R23 1
      160 SETTABLEKS                       R23 R22 K61 ["TextWrapped"]
      162 GETIMPORT                        R23 K66 [Enum.TextXAlignment.Left]
      164 SETTABLEKS                       R23 R22 K62 ["TextXAlignment"]
      166 GETIMPORT                        R23 K68 [Enum.TextYAlignment.Top]
      168 SETTABLEKS                       R23 R22 K63 ["TextYAlignment"]
      170 CALL                             R20 2 1
      171 MOVE                             R21 R1
      172 LOADK                            R22 K69 [".Truncate"]
      173 DUPTABLE                         R23 K71 [{"TextTruncate"}]
      174 GETIMPORT                        R24 K73 [Enum.TextTruncate.AtEnd]
      176 SETTABLEKS                       R24 R23 K70 ["TextTruncate"]
      178 CALL                             R21 2 1
      179 SETLIST                          R5 R6 16 [1]
      181 MOVE                             R6 R1
      182 LOADK                            R7 K74 [".Left"]
      183 DUPTABLE                         R8 K75 [{"TextXAlignment"}]
      184 GETIMPORT                        R9 K66 [Enum.TextXAlignment.Left]
      186 SETTABLEKS                       R9 R8 K62 ["TextXAlignment"]
      188 CALL                             R6 2 1
      189 MOVE                             R7 R1
      190 LOADK                            R8 K76 [".Right"]
      191 DUPTABLE                         R9 K75 [{"TextXAlignment"}]
      192 GETIMPORT                        R10 K78 [Enum.TextXAlignment.Right]
      194 SETTABLEKS                       R10 R9 K62 ["TextXAlignment"]
      196 CALL                             R7 2 1
      197 MOVE                             R8 R1
      198 LOADK                            R9 K79 [".Top"]
      199 DUPTABLE                         R10 K80 [{"TextYAlignment"}]
      200 GETIMPORT                        R11 K68 [Enum.TextYAlignment.Top]
      202 SETTABLEKS                       R11 R10 K63 ["TextYAlignment"]
      204 CALL                             R8 2 1
      205 MOVE                             R9 R1
      206 LOADK                            R10 K81 [".Bottom"]
      207 DUPTABLE                         R11 K80 [{"TextYAlignment"}]
      208 GETIMPORT                        R12 K83 [Enum.TextYAlignment.Bottom]
      210 SETTABLEKS                       R12 R11 K63 ["TextYAlignment"]
      212 CALL                             R9 2 1
      213 MOVE                             R10 R1
      214 LOADK                            R11 K84 [".BuilderSans"]
      215 DUPTABLE                         R12 K31 [{"Font"}]
      216 GETIMPORT                        R13 K86 [Enum.Font.BuilderSans]
      218 SETTABLEKS                       R13 R12 K12 ["Font"]
      220 NEWTABLE                         R13 0 2
      222 MOVE                             R14 R1
      223 LOADK                            R15 K30 [".Bold"]
      224 DUPTABLE                         R16 K31 [{"Font"}]
      225 GETIMPORT                        R17 K88 [Enum.Font.BuilderSansBold]
      227 SETTABLEKS                       R17 R16 K12 ["Font"]
      229 CALL                             R14 2 1
      230 MOVE                             R15 R1
      231 LOADK                            R16 K35 [".Semibold"]
      232 DUPTABLE                         R17 K36 [{"Font", "TextSize"}]
      233 GETIMPORT                        R18 K90 [Enum.Font.BuilderSansMedium]
      235 SETTABLEKS                       R18 R17 K12 ["Font"]
      237 LOADN                            R18 22
      238 SETTABLEKS                       R18 R17 K14 ["TextSize"]
      240 CALL                             R15 2 -1
      241 SETLIST                          R13 R14 -1 [1]
      243 CALL                             R10 3 1
      244 MOVE                             R11 R1
      245 LOADK                            R12 K91 [".Muted"]
      246 DUPTABLE                         R13 K40 [{"TextColor3"}]
      247 LOADK                            R14 K92 ["$ContentMuted"]
      248 SETTABLEKS                       R14 R13 K15 ["TextColor3"]
      250 CALL                             R11 2 -1
      251 SETLIST                          R5 R6 -1 [17]
      253 DUPTABLE                         R6 K96 [{"TextLabelFont", "TextLabelTextSize", "TextLabelTitleSize"}]
      254 GETIMPORT                        R7 K98 [Enum.Font.SourceSans]
      256 SETTABLEKS                       R7 R6 K93 ["TextLabelFont"]
      258 LOADN                            R7 16
      259 SETTABLEKS                       R7 R6 K94 ["TextLabelTextSize"]
      261 LOADN                            R7 24
      262 SETTABLEKS                       R7 R6 K95 ["TextLabelTitleSize"]
      264 CALL                             R2 4 -1
      265 RETURN                           R2 -1
