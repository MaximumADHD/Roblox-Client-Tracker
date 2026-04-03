PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Voting"]
        4 LOADN                            R3 0
        5 GETTABLEKS                       R5 R2 K2 ["VoteCount"]
        7 JUMPIFEQKNIL                     R5 ; [+4]
        9 GETTABLEKS                       R4 R2 K2 ["VoteCount"]
       11 JUMP                             ; [+1]
       12 LOADN                            R4 0
       13 GETTABLEKS                       R5 R2 K4 ["UpVotePercent"]
       15 ORK                              R3 R5 K3 [0]
       16 GETTABLEKS                       R6 R0 K0 ["props"]
       18 GETTABLEKS                       R5 R6 K5 ["Stylizer"]
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R7 R1 K6 ["Size"]
       23 GETTABLEKS                       R8 R5 K6 ["Size"]
       25 CALL                             R6 2 1
       26 GETUPVAL                         R7 0
       27 GETTABLEKS                       R8 R1 K7 ["Font"]
       29 GETTABLEKS                       R9 R5 K7 ["Font"]
       31 CALL                             R7 2 1
       32 LOADNIL                          R8
       33 GETTABLEKS                       R9 R1 K8 ["VoteCountHeight"]
       35 JUMPIFNOT                        R9 ; [+10]
       36 GETIMPORT                        R9 K11 [UDim2.new]
       38 LOADN                            R10 0
       39 LOADN                            R11 0
       40 LOADN                            R12 0
       41 GETTABLEKS                       R13 R1 K8 ["VoteCountHeight"]
       43 CALL                             R9 4 1
       44 MOVE                             R8 R9
       45 JUMP                             ; [+8]
       46 GETIMPORT                        R9 K11 [UDim2.new]
       48 LOADN                            R10 0
       49 LOADN                            R11 0
       50 LOADN                            R12 1
       51 LOADN                            R13 0
       52 CALL                             R9 4 1
       53 MOVE                             R8 R9
       54 LOADNIL                          R9
       55 LOADNIL                          R10
       56 JUMPIFEQKNIL                     R4 ; [+46]
       58 LOADN                            R11 20
       59 JUMPIFNOTLT                      R4 R11 ; [+8]
       61 GETTABLEKS                       R12 R5 K12 ["ThumbUp"]
       63 GETTABLEKS                       R11 R12 K13 ["Colors"]
       65 GETTABLEKS                       R9 R11 K14 ["Gray"]
       67 JUMP                             ; [+35]
       68 LOADN                            R11 70
       69 JUMPIFNOTLE                      R11 R3 ; [+10]
       71 GETTABLEKS                       R12 R5 K12 ["ThumbUp"]
       73 GETTABLEKS                       R11 R12 K13 ["Colors"]
       75 GETTABLEKS                       R9 R11 K15 ["Green"]
       77 GETTABLEKS                       R10 R5 K16 ["GoodRatingColor"]
       79 JUMP                             ; [+23]
       80 LOADN                            R11 70
       81 JUMPIFNOTLT                      R3 R11 ; [+13]
       83 LOADN                            R11 40
       84 JUMPIFNOTLE                      R11 R3 ; [+10]
       86 GETTABLEKS                       R12 R5 K12 ["ThumbUp"]
       88 GETTABLEKS                       R11 R12 K13 ["Colors"]
       90 GETTABLEKS                       R9 R11 K17 ["Yellow"]
       92 GETTABLEKS                       R10 R5 K18 ["OkayRatingColor"]
       94 JUMP                             ; [+8]
       95 GETTABLEKS                       R12 R5 K12 ["ThumbUp"]
       97 GETTABLEKS                       R11 R12 K13 ["Colors"]
       99 GETTABLEKS                       R9 R11 K19 ["Red"]
      101 GETTABLEKS                       R10 R5 K20 ["PoorRatingColor"]
      103 GETUPVAL                         R12 1
      104 GETTABLEKS                       R11 R12 K21 ["createElement"]
      106 LOADK                            R12 K22 ["Frame"]
      107 DUPTABLE                         R13 K27 [{"LayoutOrder", "Position", "AutomaticSize", "Size", "BackgroundTransparency"}]
      108 GETTABLEKS                       R14 R1 K23 ["LayoutOrder"]
      110 SETTABLEKS                       R14 R13 K23 ["LayoutOrder"]
      112 GETTABLEKS                       R14 R1 K24 ["Position"]
      114 SETTABLEKS                       R14 R13 K24 ["Position"]
      116 GETIMPORT                        R14 K30 [Enum.AutomaticSize.XY]
      118 SETTABLEKS                       R14 R13 K25 ["AutomaticSize"]
      120 SETTABLEKS                       R6 R13 K6 ["Size"]
      122 LOADN                            R14 1
      123 SETTABLEKS                       R14 R13 K26 ["BackgroundTransparency"]
      125 DUPTABLE                         R14 K34 [{"Layout", "Icon", "Text", "VoteCount"}]
      126 GETUPVAL                         R16 1
      127 GETTABLEKS                       R15 R16 K21 ["createElement"]
      129 LOADK                            R16 K35 ["UIListLayout"]
      130 DUPTABLE                         R17 K41 [{"Padding", "FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
      131 GETTABLEKS                       R19 R1 K36 ["Padding"]
      133 JUMPIFEQKNIL                     R19 ; [+8]
      135 GETIMPORT                        R18 K43 [UDim.new]
      137 LOADN                            R19 0
      138 GETTABLEKS                       R20 R1 K36 ["Padding"]
      140 CALL                             R18 2 1
      141 JUMP                             ; [+5]
      142 GETIMPORT                        R18 K43 [UDim.new]
      144 LOADN                            R19 0
      145 LOADN                            R20 5
      146 CALL                             R18 2 1
      147 SETTABLEKS                       R18 R17 K36 ["Padding"]
      149 GETIMPORT                        R18 K45 [Enum.FillDirection.Horizontal]
      151 SETTABLEKS                       R18 R17 K37 ["FillDirection"]
      153 GETIMPORT                        R18 K47 [Enum.HorizontalAlignment.Left]
      155 SETTABLEKS                       R18 R17 K38 ["HorizontalAlignment"]
      157 GETTABLEKS                       R19 R1 K39 ["VerticalAlignment"]
      159 JUMPIFEQKNIL                     R19 ; [+4]
      161 GETTABLEKS                       R18 R1 K39 ["VerticalAlignment"]
      163 JUMP                             ; [+2]
      164 GETIMPORT                        R18 K49 [Enum.VerticalAlignment.Center]
      166 SETTABLEKS                       R18 R17 K39 ["VerticalAlignment"]
      168 GETIMPORT                        R18 K50 [Enum.SortOrder.LayoutOrder]
      170 SETTABLEKS                       R18 R17 K40 ["SortOrder"]
      172 CALL                             R15 2 1
      173 SETTABLEKS                       R15 R14 K31 ["Layout"]
      175 GETUPVAL                         R16 1
      176 GETTABLEKS                       R15 R16 K21 ["createElement"]
      178 GETUPVAL                         R16 2
      179 DUPTABLE                         R17 K54 [{"ImageColor3", "Image", "LayoutOrder", "Style"}]
      180 SETTABLEKS                       R9 R17 K51 ["ImageColor3"]
      182 GETTABLEKS                       R19 R5 K12 ["ThumbUp"]
      184 GETTABLEKS                       R18 R19 K32 ["Icon"]
      186 SETTABLEKS                       R18 R17 K52 ["Image"]
      188 LOADN                            R18 10
      189 SETTABLEKS                       R18 R17 K23 ["LayoutOrder"]
      191 GETTABLEKS                       R18 R5 K32 ["Icon"]
      193 SETTABLEKS                       R18 R17 K53 ["Style"]
      195 CALL                             R15 2 1
      196 SETTABLEKS                       R15 R14 K32 ["Icon"]
      198 GETUPVAL                         R16 1
      199 GETTABLEKS                       R15 R16 K21 ["createElement"]
      201 GETUPVAL                         R16 3
      202 DUPTABLE                         R17 K57 [{"LayoutOrder", "AutomaticSize", "Text", "TextColor", "Style", "TextSize"}]
      203 LOADN                            R18 20
      204 SETTABLEKS                       R18 R17 K23 ["LayoutOrder"]
      206 GETIMPORT                        R18 K30 [Enum.AutomaticSize.XY]
      208 SETTABLEKS                       R18 R17 K25 ["AutomaticSize"]
      210 GETIMPORT                        R18 K60 [string.format]
      212 LOADK                            R19 K61 ["%d%%"]
      213 MOVE                             R20 R3
      214 CALL                             R18 2 1
      215 SETTABLEKS                       R18 R17 K33 ["Text"]
      217 SETTABLEKS                       R10 R17 K55 ["TextColor"]
      219 GETTABLEKS                       R18 R5 K33 ["Text"]
      221 SETTABLEKS                       R18 R17 K53 ["Style"]
      223 GETTABLEKS                       R18 R1 K56 ["TextSize"]
      225 SETTABLEKS                       R18 R17 K56 ["TextSize"]
      227 CALL                             R15 2 1
      228 SETTABLEKS                       R15 R14 K33 ["Text"]
      230 GETTABLEKS                       R16 R1 K62 ["IncludeVoteCount"]
      232 JUMPIFNOT                        R16 ; [+45]
      233 GETUPVAL                         R16 1
      234 GETTABLEKS                       R15 R16 K21 ["createElement"]
      236 GETUPVAL                         R16 3
      237 DUPTABLE                         R17 K65 [{"LayoutOrder", "AutomaticSize", "Size", "Text", "TextTruncate", "Style", "Font", "TextSize", "TextXAlignment"}]
      238 LOADN                            R18 30
      239 SETTABLEKS                       R18 R17 K23 ["LayoutOrder"]
      241 GETIMPORT                        R18 K67 [Enum.AutomaticSize.X]
      243 SETTABLEKS                       R18 R17 K25 ["AutomaticSize"]
      245 SETTABLEKS                       R8 R17 K6 ["Size"]
      247 GETUPVAL                         R19 4
      248 GETTABLEKS                       R18 R19 K68 ["getFormattedVoteNumberAndText"]
      250 MOVE                             R19 R4
      251 GETTABLEKS                       R20 R1 K69 ["Localization"]
      253 LOADB                            R21 1
      254 LOADB                            R22 0
      255 CALL                             R18 4 1
      256 SETTABLEKS                       R18 R17 K33 ["Text"]
      258 GETIMPORT                        R18 K71 [Enum.TextTruncate.AtEnd]
      260 SETTABLEKS                       R18 R17 K63 ["TextTruncate"]
      262 GETTABLEKS                       R18 R5 K2 ["VoteCount"]
      264 SETTABLEKS                       R18 R17 K53 ["Style"]
      266 SETTABLEKS                       R7 R17 K7 ["Font"]
      268 GETTABLEKS                       R18 R1 K56 ["TextSize"]
      270 SETTABLEKS                       R18 R17 K56 ["TextSize"]
      272 GETIMPORT                        R18 K72 [Enum.TextXAlignment.Left]
      274 SETTABLEKS                       R18 R17 K64 ["TextXAlignment"]
      276 CALL                             R15 2 1
      277 JUMP                             ; [+1]
      278 LOADNIL                          R15
      279 SETTABLEKS                       R15 R14 K2 ["VoteCount"]
      281 CALL                             R11 3 -1
      282 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R4 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R4 K8 ["ContextServices"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K9 ["withContext"]
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R0 K10 ["Util"]
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R5 R4 K11 ["formatVoteNumber"]
       32 GETIMPORT                        R6 K6 [require]
       34 GETTABLEKS                       R8 R0 K10 ["Util"]
       36 GETTABLEKS                       R7 R8 K12 ["Typecheck"]
       38 CALL                             R6 1 1
       39 GETTABLEKS                       R7 R4 K13 ["prioritize"]
       41 GETIMPORT                        R8 K6 [require]
       43 GETTABLEKS                       R11 R0 K2 ["UI"]
       45 GETTABLEKS                       R10 R11 K14 ["Components"]
       47 GETTABLEKS                       R9 R10 K15 ["Image"]
       49 CALL                             R8 1 1
       50 GETIMPORT                        R9 K6 [require]
       52 GETTABLEKS                       R12 R0 K2 ["UI"]
       54 GETTABLEKS                       R11 R12 K14 ["Components"]
       56 GETTABLEKS                       R10 R11 K16 ["TextLabel"]
       58 CALL                             R9 1 1
       59 GETTABLEKS                       R10 R1 K17 ["PureComponent"]
       61 LOADK                            R12 K18 ["Votes"]
       62 NAMECALL                         R10 R10 K19 ["extend"]
       64 CALL                             R10 2 1
       65 GETTABLEKS                       R11 R6 K20 ["wrap"]
       67 MOVE                             R12 R10
       68 GETIMPORT                        R13 K1 [script]
       70 CALL                             R11 2 0
       71 DUPCLOSURE                       R11 K21 [PROTO_0]
       72 CAPTURE                          VAL R7
       73 CAPTURE                          VAL R1
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R9
       76 CAPTURE                          VAL R5
       77 SETTABLEKS                       R11 R10 K22 ["render"]
       79 MOVE                             R11 R3
       80 DUPTABLE                         R12 K25 [{"Stylizer", "Localization"}]
       81 GETTABLEKS                       R13 R2 K23 ["Stylizer"]
       83 SETTABLEKS                       R13 R12 K23 ["Stylizer"]
       85 GETTABLEKS                       R13 R2 K24 ["Localization"]
       87 SETTABLEKS                       R13 R12 K24 ["Localization"]
       89 CALL                             R11 1 1
       90 MOVE                             R12 R10
       91 CALL                             R11 1 1
       92 MOVE                             R10 R11
       93 RETURN                           R10 1
