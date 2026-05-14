PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["props"]
        3 GETTABLEKS                       R3 R3 K1 ["Network"]
        5 GETTABLEKS                       R3 R3 K2 ["networkInterface"]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K0 ["props"]
       10 GETTABLEKS                       R4 R4 K3 ["voting"]
       12 GETTABLEKS                       R5 R4 K4 ["HasVoted"]
       14 JUMPIFNOT                        R5 ; [+8]
       15 GETTABLEKS                       R5 R4 K5 ["UserVote"]
       17 JUMPIFNOT                        R5 ; [+5]
       18 GETUPVAL                         R5 1
       19 MOVE                             R6 R3
       20 GETUPVAL                         R7 2
       21 CALL                             R5 2 0
       22 RETURN                           R0 0
       23 GETUPVAL                         R5 3
       24 MOVE                             R6 R3
       25 GETUPVAL                         R7 2
       26 LOADB                            R8 1
       27 CALL                             R5 3 0
       28 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["props"]
        3 GETTABLEKS                       R3 R3 K1 ["Network"]
        5 GETTABLEKS                       R3 R3 K2 ["networkInterface"]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K0 ["props"]
       10 GETTABLEKS                       R4 R4 K3 ["voting"]
       12 GETTABLEKS                       R5 R4 K4 ["HasVoted"]
       14 JUMPIFNOT                        R5 ; [+8]
       15 GETTABLEKS                       R5 R4 K5 ["UserVote"]
       17 JUMPIF                           R5 ; [+5]
       18 GETUPVAL                         R5 1
       19 MOVE                             R6 R3
       20 GETUPVAL                         R7 2
       21 CALL                             R5 2 0
       22 RETURN                           R0 0
       23 GETUPVAL                         R5 3
       24 MOVE                             R6 R3
       25 GETUPVAL                         R7 2
       26 LOADB                            R8 0
       27 CALL                             R5 3 0
       28 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R2 K1 ["assetId"]
        4 GETTABLEKS                       R3 R0 K0 ["props"]
        6 GETTABLEKS                       R3 R3 K2 ["onVoteRequested"]
        8 GETTABLEKS                       R4 R0 K0 ["props"]
       10 GETTABLEKS                       R4 R4 K3 ["onUnvoteRequested"]
       12 NEWCLOSURE                       R5 P0
       13 CAPTURE                          VAL R0
       14 CAPTURE                          VAL R4
       15 CAPTURE                          VAL R2
       16 CAPTURE                          VAL R3
       17 SETTABLEKS                       R5 R0 K4 ["onVoteUpClicked"]
       19 NEWCLOSURE                       R5 P1
       20 CAPTURE                          VAL R0
       21 CAPTURE                          VAL R4
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R3
       24 SETTABLEKS                       R5 R0 K5 ["onVoteDownClicked"]
       26 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R2 K2 ["asset"]
        6 GETTABLEKS                       R3 R3 K3 ["voting"]
        8 GETTABLEKS                       R4 R1 K4 ["Localization"]
       10 GETTABLEKS                       R5 R1 K5 ["showBackgroundBox"]
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R6 R6 K6 ["createElement"]
       15 LOADK                            R7 K7 ["Frame"]
       16 DUPTABLE                         R8 K12 [{"BackgroundTransparency", "BackgroundColor3", "LayoutOrder", "Size"}]
       17 JUMPIFNOT                        R5 ; [+2]
       18 LOADK                            R9 K13 [0.95]
       19 JUMP                             ; [+1]
       20 LOADN                            R9 1
       21 SETTABLEKS                       R9 R8 K8 ["BackgroundTransparency"]
       23 JUMPIFNOT                        R5 ; [+3]
       24 GETTABLEKS                       R9 R3 K14 ["votingButtonsBackgroundBoxColor"]
       26 JUMP                             ; [+1]
       27 LOADNIL                          R9
       28 SETTABLEKS                       R9 R8 K9 ["BackgroundColor3"]
       30 LOADNIL                          R9
       31 SETTABLEKS                       R9 R8 K10 ["LayoutOrder"]
       33 GETIMPORT                        R9 K17 [UDim2.new]
       35 LOADN                            R10 1
       36 LOADN                            R11 0
       37 LOADN                            R12 0
       38 GETUPVAL                         R13 1
       39 GETTABLEKS                       R13 R13 K18 ["ASSET_VOTING_BUTTONS_HEIGHT"]
       41 CALL                             R9 4 1
       42 SETTABLEKS                       R9 R8 K11 ["Size"]
       44 DUPTABLE                         R9 K24 [{"UIListLayout", "UICorner", "RateText", "VoteUpButton", "VoteDownButton"}]
       45 GETUPVAL                         R10 0
       46 GETTABLEKS                       R10 R10 K6 ["createElement"]
       48 LOADK                            R11 K19 ["UIListLayout"]
       49 DUPTABLE                         R12 K30 [{"Padding", "SortOrder", "FillDirection", "HorizontalAlignment", "VerticalAlignment"}]
       50 GETIMPORT                        R13 K32 [UDim.new]
       52 LOADN                            R14 0
       53 GETUPVAL                         R15 1
       54 GETTABLEKS                       R15 R15 K33 ["ASSET_VOTE_BUTTONS_HORIZONTAL_PADDING"]
       56 CALL                             R13 2 1
       57 SETTABLEKS                       R13 R12 K25 ["Padding"]
       59 GETIMPORT                        R13 K35 [Enum.SortOrder.LayoutOrder]
       61 SETTABLEKS                       R13 R12 K26 ["SortOrder"]
       63 GETIMPORT                        R13 K37 [Enum.FillDirection.Horizontal]
       65 SETTABLEKS                       R13 R12 K27 ["FillDirection"]
       67 GETIMPORT                        R13 K39 [Enum.HorizontalAlignment.Center]
       69 SETTABLEKS                       R13 R12 K28 ["HorizontalAlignment"]
       71 GETIMPORT                        R13 K40 [Enum.VerticalAlignment.Center]
       73 SETTABLEKS                       R13 R12 K29 ["VerticalAlignment"]
       75 CALL                             R10 2 1
       76 SETTABLEKS                       R10 R9 K19 ["UIListLayout"]
       78 JUMPIFNOT                        R5 ; [+16]
       79 GETUPVAL                         R10 0
       80 GETTABLEKS                       R10 R10 K6 ["createElement"]
       82 LOADK                            R11 K20 ["UICorner"]
       83 DUPTABLE                         R12 K42 [{"CornerRadius"}]
       84 GETIMPORT                        R13 K32 [UDim.new]
       86 LOADN                            R14 0
       87 GETUPVAL                         R15 1
       88 GETTABLEKS                       R15 R15 K43 ["ASSET_VOTING_BUTTONS_BACKGROUND_BOX_CORNER_RADIUS"]
       90 CALL                             R13 2 1
       91 SETTABLEKS                       R13 R12 K41 ["CornerRadius"]
       93 CALL                             R10 2 1
       94 JUMP                             ; [+1]
       95 LOADNIL                          R10
       96 SETTABLEKS                       R10 R9 K20 ["UICorner"]
       98 GETUPVAL                         R10 0
       99 GETTABLEKS                       R10 R10 K6 ["createElement"]
      101 LOADK                            R11 K44 ["TextLabel"]
      102 DUPTABLE                         R12 K51 [{"AutomaticSize", "LayoutOrder", "Text", "BackgroundTransparency", "TextXAlignment", "Font", "TextSize", "TextColor3"}]
      103 GETIMPORT                        R13 K53 [Enum.AutomaticSize.XY]
      105 SETTABLEKS                       R13 R12 K45 ["AutomaticSize"]
      107 LOADN                            R13 0
      108 SETTABLEKS                       R13 R12 K10 ["LayoutOrder"]
      110 GETUPVAL                         R15 2
      111 LOADK                            R16 K54 ["VoteButons"]
      112 LOADK                            R17 K55 ["Rate"]
      113 NAMECALL                         R13 R4 K56 ["getProjectText"]
      115 CALL                             R13 4 1
      116 SETTABLEKS                       R13 R12 K46 ["Text"]
      118 LOADN                            R13 1
      119 SETTABLEKS                       R13 R12 K8 ["BackgroundTransparency"]
      121 GETIMPORT                        R13 K58 [Enum.TextXAlignment.Left]
      123 SETTABLEKS                       R13 R12 K47 ["TextXAlignment"]
      125 GETUPVAL                         R13 1
      126 GETTABLEKS                       R13 R13 K59 ["FONT"]
      128 SETTABLEKS                       R13 R12 K48 ["Font"]
      130 GETUPVAL                         R13 1
      131 GETTABLEKS                       R13 R13 K60 ["FONT_SIZE_SMALL"]
      133 SETTABLEKS                       R13 R12 K49 ["TextSize"]
      135 GETTABLEKS                       R13 R2 K2 ["asset"]
      137 GETTABLEKS                       R13 R13 K3 ["voting"]
      139 GETTABLEKS                       R13 R13 K61 ["rateTextColor"]
      141 SETTABLEKS                       R13 R12 K50 ["TextColor3"]
      143 DUPTABLE                         R13 K63 [{"UIPadding"}]
      144 GETUPVAL                         R14 0
      145 GETTABLEKS                       R14 R14 K6 ["createElement"]
      147 LOADK                            R15 K62 ["UIPadding"]
      148 DUPTABLE                         R16 K65 [{"PaddingRight"}]
      149 GETIMPORT                        R17 K32 [UDim.new]
      151 LOADN                            R18 0
      152 GETUPVAL                         R19 1
      153 GETTABLEKS                       R19 R19 K66 ["ASSET_VOTE_BUTTONS_TEXT_PADDING"]
      155 CALL                             R17 2 1
      156 SETTABLEKS                       R17 R16 K64 ["PaddingRight"]
      158 CALL                             R14 2 1
      159 SETTABLEKS                       R14 R13 K62 ["UIPadding"]
      161 CALL                             R10 3 1
      162 SETTABLEKS                       R10 R9 K21 ["RateText"]
      164 GETUPVAL                         R10 0
      165 GETTABLEKS                       R10 R10 K6 ["createElement"]
      167 GETUPVAL                         R11 3
      168 DUPTABLE                         R12 K71 [{"isVoteUp", "hasVoted", "userVote", "onClicked"}]
      169 LOADB                            R13 1
      170 SETTABLEKS                       R13 R12 K67 ["isVoteUp"]
      172 GETTABLEKS                       R13 R1 K3 ["voting"]
      174 GETTABLEKS                       R13 R13 K72 ["HasVoted"]
      176 SETTABLEKS                       R13 R12 K68 ["hasVoted"]
      178 GETTABLEKS                       R13 R1 K3 ["voting"]
      180 GETTABLEKS                       R13 R13 K73 ["UserVote"]
      182 SETTABLEKS                       R13 R12 K69 ["userVote"]
      184 GETTABLEKS                       R13 R0 K74 ["onVoteUpClicked"]
      186 SETTABLEKS                       R13 R12 K70 ["onClicked"]
      188 CALL                             R10 2 1
      189 SETTABLEKS                       R10 R9 K22 ["VoteUpButton"]
      191 GETUPVAL                         R10 0
      192 GETTABLEKS                       R10 R10 K6 ["createElement"]
      194 GETUPVAL                         R11 3
      195 DUPTABLE                         R12 K71 [{"isVoteUp", "hasVoted", "userVote", "onClicked"}]
      196 LOADB                            R13 0
      197 SETTABLEKS                       R13 R12 K67 ["isVoteUp"]
      199 GETTABLEKS                       R13 R1 K3 ["voting"]
      201 GETTABLEKS                       R13 R13 K72 ["HasVoted"]
      203 SETTABLEKS                       R13 R12 K68 ["hasVoted"]
      205 GETTABLEKS                       R13 R1 K3 ["voting"]
      207 GETTABLEKS                       R13 R13 K73 ["UserVote"]
      209 SETTABLEKS                       R13 R12 K69 ["userVote"]
      211 GETTABLEKS                       R13 R0 K75 ["onVoteDownClicked"]
      213 SETTABLEKS                       R13 R12 K70 ["onClicked"]
      215 CALL                             R10 2 1
      216 SETTABLEKS                       R10 R9 K23 ["VoteDownButton"]
      218 CALL                             R6 3 -1
      219 RETURN                           R6 -1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R1 K2 [{"onVoteRequested", "onUnvoteRequested"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["onVoteRequested"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["onUnvoteRequested"]
       11 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R0 R0 K2 ["Parent"]
       13 GETTABLEKS                       R1 R0 K3 ["Packages"]
       15 GETIMPORT                        R2 K5 [require]
       17 GETTABLEKS                       R3 R1 K6 ["Roact"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K5 [require]
       22 GETTABLEKS                       R4 R1 K7 ["RoactRodux"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R1 K8 ["Framework"]
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R5 R4 K9 ["ContextServices"]
       32 GETTABLEKS                       R6 R5 K10 ["withContext"]
       34 GETTABLEKS                       R7 R4 K11 ["Resources"]
       36 GETTABLEKS                       R8 R7 K12 ["LOCALIZATION_PROJECT_NAME"]
       38 GETIMPORT                        R9 K5 [require]
       40 GETTABLEKS                       R10 R0 K13 ["Src"]
       42 GETTABLEKS                       R10 R10 K14 ["Util"]
       44 GETTABLEKS                       R10 R10 K15 ["Constants"]
       46 CALL                             R9 1 1
       47 GETIMPORT                        R10 K5 [require]
       49 GETTABLEKS                       R11 R0 K13 ["Src"]
       51 GETTABLEKS                       R11 R11 K16 ["Components"]
       53 GETTABLEKS                       R11 R11 K17 ["Asset"]
       55 GETTABLEKS                       R11 R11 K18 ["Voting"]
       57 GETTABLEKS                       R11 R11 K19 ["VoteButton"]
       59 CALL                             R10 1 1
       60 GETIMPORT                        R11 K5 [require]
       62 GETTABLEKS                       R12 R0 K13 ["Src"]
       64 GETTABLEKS                       R12 R12 K20 ["Networking"]
       66 GETTABLEKS                       R12 R12 K21 ["Requests"]
       68 GETTABLEKS                       R12 R12 K22 ["PostUnvoteRequest"]
       70 CALL                             R11 1 1
       71 GETIMPORT                        R12 K5 [require]
       73 GETTABLEKS                       R13 R0 K13 ["Src"]
       75 GETTABLEKS                       R13 R13 K20 ["Networking"]
       77 GETTABLEKS                       R13 R13 K21 ["Requests"]
       79 GETTABLEKS                       R13 R13 K23 ["PostVoteRequest"]
       81 CALL                             R12 1 1
       82 GETIMPORT                        R13 K5 [require]
       84 GETTABLEKS                       R14 R0 K13 ["Src"]
       86 GETTABLEKS                       R14 R14 K9 ["ContextServices"]
       88 GETTABLEKS                       R14 R14 K24 ["NetworkContext"]
       90 CALL                             R13 1 1
       91 GETTABLEKS                       R14 R2 K25 ["PureComponent"]
       93 LOADK                            R16 K26 ["VoteButtons"]
       94 NAMECALL                         R14 R14 K27 ["extend"]
       96 CALL                             R14 2 1
       97 DUPCLOSURE                       R15 K28 [PROTO_2]
       98 SETTABLEKS                       R15 R14 K29 ["init"]
      100 DUPCLOSURE                       R15 K30 [PROTO_3]
      101 CAPTURE                          VAL R2
      102 CAPTURE                          VAL R9
      103 CAPTURE                          VAL R8
      104 CAPTURE                          VAL R10
      105 SETTABLEKS                       R15 R14 K31 ["render"]
      107 MOVE                             R15 R6
      108 DUPTABLE                         R16 K35 [{"Stylizer", "Localization", "Network"}]
      109 GETTABLEKS                       R17 R5 K32 ["Stylizer"]
      111 SETTABLEKS                       R17 R16 K32 ["Stylizer"]
      113 GETTABLEKS                       R17 R5 K33 ["Localization"]
      115 SETTABLEKS                       R17 R16 K33 ["Localization"]
      117 SETTABLEKS                       R13 R16 K34 ["Network"]
      119 CALL                             R15 1 1
      120 MOVE                             R16 R14
      121 CALL                             R15 1 1
      122 MOVE                             R14 R15
      123 DUPCLOSURE                       R15 K36 [PROTO_6]
      124 CAPTURE                          VAL R12
      125 CAPTURE                          VAL R11
      126 GETTABLEKS                       R16 R3 K37 ["connect"]
      128 LOADNIL                          R17
      129 MOVE                             R18 R15
      130 CALL                             R16 2 1
      131 MOVE                             R17 R14
      132 CALL                             R16 1 -1
      133 RETURN                           R16 -1
