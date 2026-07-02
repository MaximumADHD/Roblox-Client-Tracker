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
       16 DUPTABLE                         R8 K13 [{["BackgroundTransparency"], ["BackgroundColor3"], ["LayoutOrder"] = , ["Size"]}]
       17 JUMPIFNOT                        R5 ; [+2]
       18 LOADK                            R9 K14 [0.95]
       19 JUMP                             ; [+1]
       20 LOADN                            R9 1
       21 SETTABLEKS                       R9 R8 K8 ["BackgroundTransparency"]
       23 JUMPIFNOT                        R5 ; [+3]
       24 GETTABLEKS                       R9 R3 K15 ["votingButtonsBackgroundBoxColor"]
       26 JUMP                             ; [+1]
       27 LOADNIL                          R9
       28 SETTABLEKS                       R9 R8 K9 ["BackgroundColor3"]
       30 GETIMPORT                        R9 K18 [UDim2.new]
       32 LOADN                            R10 1
       33 LOADN                            R11 0
       34 LOADN                            R12 0
       35 GETUPVAL                         R13 1
       36 GETTABLEKS                       R13 R13 K19 ["ASSET_VOTING_BUTTONS_HEIGHT"]
       38 CALL                             R9 4 1
       39 SETTABLEKS                       R9 R8 K12 ["Size"]
       41 DUPTABLE                         R9 K25 [{"UIListLayout", "UICorner", "RateText", "VoteUpButton", "VoteDownButton"}]
       42 GETUPVAL                         R10 0
       43 GETTABLEKS                       R10 R10 K6 ["createElement"]
       45 LOADK                            R11 K20 ["UIListLayout"]
       46 DUPTABLE                         R12 K31 [{"Padding", "SortOrder", "FillDirection", "HorizontalAlignment", "VerticalAlignment"}]
       47 GETIMPORT                        R13 K33 [UDim.new]
       49 LOADN                            R14 0
       50 GETUPVAL                         R15 1
       51 GETTABLEKS                       R15 R15 K34 ["ASSET_VOTE_BUTTONS_HORIZONTAL_PADDING"]
       53 CALL                             R13 2 1
       54 SETTABLEKS                       R13 R12 K26 ["Padding"]
       56 GETIMPORT                        R13 K36 [Enum.SortOrder.LayoutOrder]
       58 SETTABLEKS                       R13 R12 K27 ["SortOrder"]
       60 GETIMPORT                        R13 K38 [Enum.FillDirection.Horizontal]
       62 SETTABLEKS                       R13 R12 K28 ["FillDirection"]
       64 GETIMPORT                        R13 K40 [Enum.HorizontalAlignment.Center]
       66 SETTABLEKS                       R13 R12 K29 ["HorizontalAlignment"]
       68 GETIMPORT                        R13 K41 [Enum.VerticalAlignment.Center]
       70 SETTABLEKS                       R13 R12 K30 ["VerticalAlignment"]
       72 CALL                             R10 2 1
       73 SETTABLEKS                       R10 R9 K20 ["UIListLayout"]
       75 JUMPIFNOT                        R5 ; [+16]
       76 GETUPVAL                         R10 0
       77 GETTABLEKS                       R10 R10 K6 ["createElement"]
       79 LOADK                            R11 K21 ["UICorner"]
       80 DUPTABLE                         R12 K43 [{"CornerRadius"}]
       81 GETIMPORT                        R13 K33 [UDim.new]
       83 LOADN                            R14 0
       84 GETUPVAL                         R15 1
       85 GETTABLEKS                       R15 R15 K44 ["ASSET_VOTING_BUTTONS_BACKGROUND_BOX_CORNER_RADIUS"]
       87 CALL                             R13 2 1
       88 SETTABLEKS                       R13 R12 K42 ["CornerRadius"]
       90 CALL                             R10 2 1
       91 JUMP                             ; [+1]
       92 LOADNIL                          R10
       93 SETTABLEKS                       R10 R9 K21 ["UICorner"]
       95 GETUPVAL                         R10 0
       96 GETTABLEKS                       R10 R10 K6 ["createElement"]
       98 LOADK                            R11 K45 ["TextLabel"]
       99 DUPTABLE                         R12 K54 [{["AutomaticSize"], ["LayoutOrder"] = 0, ["Text"], ["BackgroundTransparency"] = 1, ["TextXAlignment"], ["Font"], ["TextSize"], ["TextColor3"]}]
      100 GETIMPORT                        R13 K56 [Enum.AutomaticSize.XY]
      102 SETTABLEKS                       R13 R12 K46 ["AutomaticSize"]
      104 GETUPVAL                         R15 2
      105 LOADK                            R16 K57 ["VoteButons"]
      106 LOADK                            R17 K58 ["Rate"]
      107 NAMECALL                         R13 R4 K59 ["getProjectText"]
      109 CALL                             R13 4 1
      110 SETTABLEKS                       R13 R12 K48 ["Text"]
      112 GETIMPORT                        R13 K61 [Enum.TextXAlignment.Left]
      114 SETTABLEKS                       R13 R12 K50 ["TextXAlignment"]
      116 GETUPVAL                         R13 1
      117 GETTABLEKS                       R13 R13 K62 ["FONT"]
      119 SETTABLEKS                       R13 R12 K51 ["Font"]
      121 GETUPVAL                         R13 1
      122 GETTABLEKS                       R13 R13 K63 ["FONT_SIZE_SMALL"]
      124 SETTABLEKS                       R13 R12 K52 ["TextSize"]
      126 GETTABLEKS                       R13 R2 K2 ["asset"]
      128 GETTABLEKS                       R13 R13 K3 ["voting"]
      130 GETTABLEKS                       R13 R13 K64 ["rateTextColor"]
      132 SETTABLEKS                       R13 R12 K53 ["TextColor3"]
      134 DUPTABLE                         R13 K66 [{"UIPadding"}]
      135 GETUPVAL                         R14 0
      136 GETTABLEKS                       R14 R14 K6 ["createElement"]
      138 LOADK                            R15 K65 ["UIPadding"]
      139 DUPTABLE                         R16 K68 [{"PaddingRight"}]
      140 GETIMPORT                        R17 K33 [UDim.new]
      142 LOADN                            R18 0
      143 GETUPVAL                         R19 1
      144 GETTABLEKS                       R19 R19 K69 ["ASSET_VOTE_BUTTONS_TEXT_PADDING"]
      146 CALL                             R17 2 1
      147 SETTABLEKS                       R17 R16 K67 ["PaddingRight"]
      149 CALL                             R14 2 1
      150 SETTABLEKS                       R14 R13 K65 ["UIPadding"]
      152 CALL                             R10 3 1
      153 SETTABLEKS                       R10 R9 K22 ["RateText"]
      155 GETUPVAL                         R10 0
      156 GETTABLEKS                       R10 R10 K6 ["createElement"]
      158 GETUPVAL                         R11 3
      159 DUPTABLE                         R12 K75 [{["isVoteUp"] = True, ["hasVoted"], ["userVote"], ["onClicked"]}]
      160 GETTABLEKS                       R13 R1 K3 ["voting"]
      162 GETTABLEKS                       R13 R13 K76 ["HasVoted"]
      164 SETTABLEKS                       R13 R12 K72 ["hasVoted"]
      166 GETTABLEKS                       R13 R1 K3 ["voting"]
      168 GETTABLEKS                       R13 R13 K77 ["UserVote"]
      170 SETTABLEKS                       R13 R12 K73 ["userVote"]
      172 GETTABLEKS                       R13 R0 K78 ["onVoteUpClicked"]
      174 SETTABLEKS                       R13 R12 K74 ["onClicked"]
      176 CALL                             R10 2 1
      177 SETTABLEKS                       R10 R9 K23 ["VoteUpButton"]
      179 GETUPVAL                         R10 0
      180 GETTABLEKS                       R10 R10 K6 ["createElement"]
      182 GETUPVAL                         R11 3
      183 DUPTABLE                         R12 K80 [{["isVoteUp"] = False, ["hasVoted"], ["userVote"], ["onClicked"]}]
      184 GETTABLEKS                       R13 R1 K3 ["voting"]
      186 GETTABLEKS                       R13 R13 K76 ["HasVoted"]
      188 SETTABLEKS                       R13 R12 K72 ["hasVoted"]
      190 GETTABLEKS                       R13 R1 K3 ["voting"]
      192 GETTABLEKS                       R13 R13 K77 ["UserVote"]
      194 SETTABLEKS                       R13 R12 K73 ["userVote"]
      196 GETTABLEKS                       R13 R0 K81 ["onVoteDownClicked"]
      198 SETTABLEKS                       R13 R12 K74 ["onClicked"]
      200 CALL                             R10 2 1
      201 SETTABLEKS                       R10 R9 K24 ["VoteDownButton"]
      203 CALL                             R6 3 -1
      204 RETURN                           R6 -1

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
