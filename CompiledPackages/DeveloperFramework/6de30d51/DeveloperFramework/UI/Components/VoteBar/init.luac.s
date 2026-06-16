PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["AssetId"]
        5 GETTABLEKS                       R2 R0 K2 ["OnVoteUp"]
        7 MOVE                             R3 R1
        8 GETTABLEKS                       R4 R0 K3 ["Voting"]
       10 CALL                             R2 2 0
       11 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["AssetId"]
        5 GETTABLEKS                       R2 R0 K2 ["OnVoteDown"]
        7 MOVE                             R3 R1
        8 GETTABLEKS                       R4 R0 K3 ["Voting"]
       10 CALL                             R2 2 0
       11 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["onVoteUp"]
        4 NEWCLOSURE                       R1 P1
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R1 R0 K1 ["onVoteDown"]
        8 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K0 ["props"]
        4 GETTABLEKS                       R2 R2 K1 ["Stylizer"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R4 R1 K2 ["Size"]
        9 GETTABLEKS                       R5 R2 K2 ["Size"]
       11 CALL                             R3 2 1
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K3 ["new"]
       15 CALL                             R4 0 1
       16 GETTABLEKS                       R6 R1 K4 ["Voting"]
       18 GETTABLEKS                       R6 R6 K5 ["VoteCount"]
       20 JUMPIFEQKNIL                     R6 ; [+6]
       22 GETTABLEKS                       R5 R1 K4 ["Voting"]
       24 GETTABLEKS                       R5 R5 K5 ["VoteCount"]
       26 JUMP                             ; [+1]
       27 LOADN                            R5 0
       28 GETUPVAL                         R6 2
       29 GETTABLEKS                       R6 R6 K6 ["hasEnoughRatings"]
       31 MOVE                             R7 R5
       32 CALL                             R6 1 1
       33 DUPTABLE                         R7 K10 [{"Layout", "VoteUp", "VoteDown"}]
       34 GETUPVAL                         R8 3
       35 GETTABLEKS                       R8 R8 K11 ["createElement"]
       37 LOADK                            R9 K12 ["UIListLayout"]
       38 DUPTABLE                         R10 K18 [{"Padding", "FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
       39 GETIMPORT                        R11 K20 [UDim.new]
       41 LOADN                            R12 0
       42 LOADN                            R13 5
       43 CALL                             R11 2 1
       44 SETTABLEKS                       R11 R10 K13 ["Padding"]
       46 GETIMPORT                        R11 K23 [Enum.FillDirection.Horizontal]
       48 SETTABLEKS                       R11 R10 K14 ["FillDirection"]
       50 GETIMPORT                        R11 K25 [Enum.HorizontalAlignment.Right]
       52 SETTABLEKS                       R11 R10 K15 ["HorizontalAlignment"]
       54 GETIMPORT                        R11 K27 [Enum.VerticalAlignment.Center]
       56 SETTABLEKS                       R11 R10 K16 ["VerticalAlignment"]
       58 GETIMPORT                        R11 K29 [Enum.SortOrder.LayoutOrder]
       60 SETTABLEKS                       R11 R10 K17 ["SortOrder"]
       62 CALL                             R8 2 1
       63 SETTABLEKS                       R8 R7 K7 ["Layout"]
       65 GETUPVAL                         R8 3
       66 GETTABLEKS                       R8 R8 K11 ["createElement"]
       68 GETUPVAL                         R9 4
       69 DUPTABLE                         R10 K34 [{"CanVote", "LayoutOrder", "OnClick", "UserVote", "VoteType"}]
       70 GETTABLEKS                       R11 R1 K4 ["Voting"]
       72 GETTABLEKS                       R11 R11 K30 ["CanVote"]
       74 SETTABLEKS                       R11 R10 K30 ["CanVote"]
       76 NAMECALL                         R11 R4 K35 ["getNextOrder"]
       78 CALL                             R11 1 1
       79 SETTABLEKS                       R11 R10 K28 ["LayoutOrder"]
       81 GETTABLEKS                       R11 R0 K36 ["onVoteUp"]
       83 SETTABLEKS                       R11 R10 K31 ["OnClick"]
       85 GETTABLEKS                       R11 R1 K4 ["Voting"]
       87 GETTABLEKS                       R11 R11 K32 ["UserVote"]
       89 SETTABLEKS                       R11 R10 K32 ["UserVote"]
       91 GETUPVAL                         R11 4
       92 GETTABLEKS                       R11 R11 K33 ["VoteType"]
       94 GETTABLEKS                       R11 R11 K37 ["UpVote"]
       96 SETTABLEKS                       R11 R10 K33 ["VoteType"]
       98 CALL                             R8 2 1
       99 SETTABLEKS                       R8 R7 K8 ["VoteUp"]
      101 GETUPVAL                         R8 3
      102 GETTABLEKS                       R8 R8 K11 ["createElement"]
      104 GETUPVAL                         R9 4
      105 DUPTABLE                         R10 K34 [{"CanVote", "LayoutOrder", "OnClick", "UserVote", "VoteType"}]
      106 GETTABLEKS                       R11 R1 K4 ["Voting"]
      108 GETTABLEKS                       R11 R11 K30 ["CanVote"]
      110 SETTABLEKS                       R11 R10 K30 ["CanVote"]
      112 NAMECALL                         R11 R4 K35 ["getNextOrder"]
      114 CALL                             R11 1 1
      115 SETTABLEKS                       R11 R10 K28 ["LayoutOrder"]
      117 GETTABLEKS                       R11 R0 K38 ["onVoteDown"]
      119 SETTABLEKS                       R11 R10 K31 ["OnClick"]
      121 GETTABLEKS                       R11 R1 K4 ["Voting"]
      123 GETTABLEKS                       R11 R11 K32 ["UserVote"]
      125 SETTABLEKS                       R11 R10 K32 ["UserVote"]
      127 GETUPVAL                         R11 4
      128 GETTABLEKS                       R11 R11 K33 ["VoteType"]
      130 GETTABLEKS                       R11 R11 K39 ["DownVote"]
      132 SETTABLEKS                       R11 R10 K33 ["VoteType"]
      134 CALL                             R8 2 1
      135 SETTABLEKS                       R8 R7 K9 ["VoteDown"]
      137 GETUPVAL                         R8 3
      138 GETTABLEKS                       R8 R8 K11 ["createElement"]
      140 GETUPVAL                         R9 5
      141 DUPTABLE                         R10 K43 [{"Background", "BackgroundStyle", "Padding", "LayoutOrder", "Position", "Size"}]
      142 GETTABLEKS                       R11 R2 K40 ["Background"]
      144 SETTABLEKS                       R11 R10 K40 ["Background"]
      146 GETTABLEKS                       R11 R2 K41 ["BackgroundStyle"]
      148 SETTABLEKS                       R11 R10 K41 ["BackgroundStyle"]
      150 GETTABLEKS                       R11 R2 K13 ["Padding"]
      152 SETTABLEKS                       R11 R10 K13 ["Padding"]
      154 GETTABLEKS                       R11 R1 K28 ["LayoutOrder"]
      156 SETTABLEKS                       R11 R10 K28 ["LayoutOrder"]
      158 GETTABLEKS                       R11 R1 K42 ["Position"]
      160 SETTABLEKS                       R11 R10 K42 ["Position"]
      162 SETTABLEKS                       R3 R10 K2 ["Size"]
      164 DUPTABLE                         R11 K45 [{"Left", "Right"}]
      165 GETUPVAL                         R12 3
      166 GETTABLEKS                       R12 R12 K11 ["createElement"]
      168 GETUPVAL                         R13 5
      169 DUPTABLE                         R14 K46 [{"Size"}]
      170 GETIMPORT                        R15 K48 [UDim2.new]
      172 LOADK                            R16 K49 [0.6]
      173 LOADN                            R17 0
      174 LOADN                            R18 1
      175 LOADN                            R19 0
      176 CALL                             R15 4 1
      177 SETTABLEKS                       R15 R14 K2 ["Size"]
      179 DUPTABLE                         R15 K51 [{"Layout", "Votes", "VoteCount"}]
      180 GETUPVAL                         R16 3
      181 GETTABLEKS                       R16 R16 K11 ["createElement"]
      183 LOADK                            R17 K12 ["UIListLayout"]
      184 DUPTABLE                         R18 K18 [{"Padding", "FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
      185 GETIMPORT                        R19 K20 [UDim.new]
      187 LOADN                            R20 0
      188 LOADN                            R21 5
      189 CALL                             R19 2 1
      190 SETTABLEKS                       R19 R18 K13 ["Padding"]
      192 GETIMPORT                        R19 K23 [Enum.FillDirection.Horizontal]
      194 SETTABLEKS                       R19 R18 K14 ["FillDirection"]
      196 GETIMPORT                        R19 K52 [Enum.HorizontalAlignment.Left]
      198 SETTABLEKS                       R19 R18 K15 ["HorizontalAlignment"]
      200 GETIMPORT                        R19 K27 [Enum.VerticalAlignment.Center]
      202 SETTABLEKS                       R19 R18 K16 ["VerticalAlignment"]
      204 GETIMPORT                        R19 K29 [Enum.SortOrder.LayoutOrder]
      206 SETTABLEKS                       R19 R18 K17 ["SortOrder"]
      208 CALL                             R16 2 1
      209 SETTABLEKS                       R16 R15 K7 ["Layout"]
      211 JUMPIF                           R6 ; [+2]
      212 LOADNIL                          R16
      213 JUMP                             ; [+28]
      214 GETUPVAL                         R16 3
      215 GETTABLEKS                       R16 R16 K11 ["createElement"]
      217 GETUPVAL                         R17 6
      218 DUPTABLE                         R18 K54 [{"LayoutOrder", "Size", "Style", "Voting"}]
      219 NAMECALL                         R19 R4 K35 ["getNextOrder"]
      221 CALL                             R19 1 1
      222 SETTABLEKS                       R19 R18 K28 ["LayoutOrder"]
      224 GETIMPORT                        R19 K48 [UDim2.new]
      226 LOADN                            R20 0
      227 LOADN                            R21 65
      228 LOADN                            R22 1
      229 LOADN                            R23 0
      230 CALL                             R19 4 1
      231 SETTABLEKS                       R19 R18 K2 ["Size"]
      233 GETTABLEKS                       R19 R2 K50 ["Votes"]
      235 SETTABLEKS                       R19 R18 K53 ["Style"]
      237 GETTABLEKS                       R19 R1 K4 ["Voting"]
      239 SETTABLEKS                       R19 R18 K4 ["Voting"]
      241 CALL                             R16 2 1
      242 SETTABLEKS                       R16 R15 K50 ["Votes"]
      244 GETUPVAL                         R16 3
      245 GETTABLEKS                       R16 R16 K11 ["createElement"]
      247 GETUPVAL                         R17 7
      248 DUPTABLE                         R18 K58 [{"LayoutOrder", "Size", "Style", "Text", "TextXAlignment", "TextTruncate"}]
      249 NAMECALL                         R19 R4 K35 ["getNextOrder"]
      251 CALL                             R19 1 1
      252 SETTABLEKS                       R19 R18 K28 ["LayoutOrder"]
      254 JUMPIF                           R6 ; [+8]
      255 GETIMPORT                        R19 K48 [UDim2.new]
      257 LOADN                            R20 1
      258 LOADN                            R21 0
      259 LOADN                            R22 1
      260 LOADN                            R23 0
      261 CALL                             R19 4 1
      262 JUMP                             ; [+7]
      263 GETIMPORT                        R19 K48 [UDim2.new]
      265 LOADN                            R20 1
      266 LOADN                            R21 191
      267 LOADN                            R22 1
      268 LOADN                            R23 0
      269 CALL                             R19 4 1
      270 SETTABLEKS                       R19 R18 K2 ["Size"]
      272 GETTABLEKS                       R19 R2 K5 ["VoteCount"]
      274 SETTABLEKS                       R19 R18 K53 ["Style"]
      276 GETUPVAL                         R19 2
      277 GETTABLEKS                       R19 R19 K59 ["getFormattedVoteNumberAndText"]
      279 MOVE                             R20 R5
      280 GETTABLEKS                       R21 R0 K0 ["props"]
      282 GETTABLEKS                       R21 R21 K60 ["Localization"]
      284 LOADB                            R22 0
      285 LOADB                            R23 1
      286 CALL                             R19 4 1
      287 SETTABLEKS                       R19 R18 K55 ["Text"]
      289 GETIMPORT                        R19 K61 [Enum.TextXAlignment.Left]
      291 SETTABLEKS                       R19 R18 K56 ["TextXAlignment"]
      293 GETIMPORT                        R19 K63 [Enum.TextTruncate.AtEnd]
      295 SETTABLEKS                       R19 R18 K57 ["TextTruncate"]
      297 CALL                             R16 2 1
      298 SETTABLEKS                       R16 R15 K5 ["VoteCount"]
      300 CALL                             R12 3 1
      301 SETTABLEKS                       R12 R11 K44 ["Left"]
      303 GETUPVAL                         R12 3
      304 GETTABLEKS                       R12 R12 K11 ["createElement"]
      306 GETUPVAL                         R13 5
      307 DUPTABLE                         R14 K65 [{"AnchorPoint", "Position", "Size"}]
      308 GETIMPORT                        R15 K67 [Vector2.new]
      310 LOADN                            R16 1
      311 LOADN                            R17 0
      312 CALL                             R15 2 1
      313 SETTABLEKS                       R15 R14 K64 ["AnchorPoint"]
      315 GETIMPORT                        R15 K48 [UDim2.new]
      317 LOADN                            R16 1
      318 LOADN                            R17 0
      319 LOADN                            R18 0
      320 LOADN                            R19 0
      321 CALL                             R15 4 1
      322 SETTABLEKS                       R15 R14 K42 ["Position"]
      324 GETIMPORT                        R15 K48 [UDim2.new]
      326 LOADK                            R16 K68 [0.4]
      327 LOADN                            R17 0
      328 LOADN                            R18 1
      329 LOADN                            R19 0
      330 CALL                             R15 4 1
      331 SETTABLEKS                       R15 R14 K2 ["Size"]
      333 MOVE                             R15 R7
      334 CALL                             R12 3 1
      335 SETTABLEKS                       R12 R11 K24 ["Right"]
      337 CALL                             R8 3 -1
      338 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R3 K8 ["ContextServices"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K9 ["withContext"]
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R0 K10 ["Util"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R0 K10 ["Util"]
       34 GETTABLEKS                       R6 R6 K11 ["Typecheck"]
       36 CALL                             R5 1 1
       37 GETTABLEKS                       R6 R4 K12 ["prioritize"]
       39 GETTABLEKS                       R7 R4 K13 ["LayoutOrderIterator"]
       41 GETTABLEKS                       R8 R4 K14 ["formatVoteNumber"]
       43 GETIMPORT                        R9 K6 [require]
       45 GETTABLEKS                       R10 R0 K2 ["UI"]
       47 GETTABLEKS                       R10 R10 K15 ["Components"]
       49 GETTABLEKS                       R10 R10 K16 ["Container"]
       51 CALL                             R9 1 1
       52 GETIMPORT                        R10 K6 [require]
       54 GETTABLEKS                       R11 R0 K2 ["UI"]
       56 GETTABLEKS                       R11 R11 K15 ["Components"]
       58 GETTABLEKS                       R11 R11 K17 ["TextLabel"]
       60 CALL                             R10 1 1
       61 GETIMPORT                        R11 K6 [require]
       63 GETIMPORT                        R12 K1 [script]
       65 GETTABLEKS                       R12 R12 K4 ["Parent"]
       67 GETTABLEKS                       R12 R12 K18 ["VoteButton"]
       69 CALL                             R11 1 1
       70 GETIMPORT                        R12 K6 [require]
       72 GETIMPORT                        R13 K1 [script]
       74 GETTABLEKS                       R13 R13 K4 ["Parent"]
       76 GETTABLEKS                       R13 R13 K19 ["Votes"]
       78 CALL                             R12 1 1
       79 GETTABLEKS                       R13 R1 K20 ["PureComponent"]
       81 LOADK                            R15 K21 ["VoteBar"]
       82 NAMECALL                         R13 R13 K22 ["extend"]
       84 CALL                             R13 2 1
       85 GETTABLEKS                       R14 R5 K23 ["wrap"]
       87 MOVE                             R15 R13
       88 GETIMPORT                        R16 K1 [script]
       90 CALL                             R14 2 0
       91 DUPCLOSURE                       R14 K24 [PROTO_2]
       92 SETTABLEKS                       R14 R13 K25 ["init"]
       94 DUPCLOSURE                       R14 K26 [PROTO_3]
       95 CAPTURE                          VAL R6
       96 CAPTURE                          VAL R7
       97 CAPTURE                          VAL R8
       98 CAPTURE                          VAL R1
       99 CAPTURE                          VAL R11
      100 CAPTURE                          VAL R9
      101 CAPTURE                          VAL R12
      102 CAPTURE                          VAL R10
      103 SETTABLEKS                       R14 R13 K27 ["render"]
      105 MOVE                             R14 R3
      106 DUPTABLE                         R15 K30 [{"Localization", "Stylizer"}]
      107 GETTABLEKS                       R16 R2 K28 ["Localization"]
      109 SETTABLEKS                       R16 R15 K28 ["Localization"]
      111 GETTABLEKS                       R16 R2 K29 ["Stylizer"]
      113 SETTABLEKS                       R16 R15 K29 ["Stylizer"]
      115 CALL                             R14 1 1
      116 MOVE                             R15 R13
      117 CALL                             R14 1 1
      118 MOVE                             R13 R14
      119 RETURN                           R13 1
