PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["voting"]
        6 GETTABLEKS                       R3 R3 K3 ["UpVotes"]
        8 GETTABLEKS                       R4 R1 K2 ["voting"]
       10 GETTABLEKS                       R4 R4 K4 ["DownVotes"]
       12 GETTABLEKS                       R5 R1 K2 ["voting"]
       14 GETTABLEKS                       R5 R5 K5 ["VoteCount"]
       16 GETTABLEKS                       R6 R1 K2 ["voting"]
       18 GETTABLEKS                       R6 R6 K6 ["UpVotePercent"]
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R7 R7 K7 ["createElement"]
       23 LOADK                            R8 K8 ["Frame"]
       24 DUPTABLE                         R9 K12 [{["BackgroundTransparency"] = 1, ["Size"]}]
       25 GETIMPORT                        R10 K15 [UDim2.new]
       27 LOADN                            R11 1
       28 LOADN                            R12 0
       29 LOADN                            R13 1
       30 LOADN                            R14 0
       31 CALL                             R10 4 1
       32 JUMPIF                           R10 ; [+9]
       33 GETIMPORT                        R10 K15 [UDim2.new]
       35 LOADN                            R11 1
       36 LOADN                            R12 0
       37 LOADN                            R13 0
       38 GETUPVAL                         R14 1
       39 GETTABLEKS                       R14 R14 K16 ["ASSET_VOTING_HEIGHT"]
       41 CALL                             R10 4 1
       42 SETTABLEKS                       R10 R9 K11 ["Size"]
       44 DUPTABLE                         R10 K19 [{"UIListLayout", "Votes"}]
       45 GETUPVAL                         R11 0
       46 GETTABLEKS                       R11 R11 K7 ["createElement"]
       48 LOADK                            R12 K17 ["UIListLayout"]
       49 DUPTABLE                         R13 K24 [{"SortOrder", "HorizontalAlignment", "FillDirection", "Padding"}]
       50 GETIMPORT                        R14 K27 [Enum.SortOrder.LayoutOrder]
       52 SETTABLEKS                       R14 R13 K20 ["SortOrder"]
       54 GETIMPORT                        R14 K29 [Enum.HorizontalAlignment.Left]
       56 SETTABLEKS                       R14 R13 K21 ["HorizontalAlignment"]
       58 GETIMPORT                        R14 K31 [Enum.FillDirection.Horizontal]
       60 SETTABLEKS                       R14 R13 K22 ["FillDirection"]
       62 GETIMPORT                        R14 K33 [UDim.new]
       64 LOADN                            R15 0
       65 GETUPVAL                         R16 1
       66 GETTABLEKS                       R16 R16 K34 ["ASSET_INNER_PADDING"]
       68 CALL                             R14 2 1
       69 SETTABLEKS                       R14 R13 K23 ["Padding"]
       71 CALL                             R11 2 1
       72 SETTABLEKS                       R11 R10 K17 ["UIListLayout"]
       74 GETUPVAL                         R11 0
       75 GETTABLEKS                       R11 R11 K7 ["createElement"]
       77 GETUPVAL                         R12 2
       78 DUPTABLE                         R13 K43 [{["Voting"], ["TextSize"], ["AutomaticSize"], ["Font"], ["Size"], ["VerticalAlignment"], ["Padding"], ["IncludeVoteCount"] = True, ["VoteCountHeight"]}]
       79 DUPTABLE                         R14 K44 [{"UpVotes", "DownVotes", "VoteCount", "UpVotePercent"}]
       80 SETTABLEKS                       R3 R14 K3 ["UpVotes"]
       82 SETTABLEKS                       R4 R14 K4 ["DownVotes"]
       84 SETTABLEKS                       R5 R14 K5 ["VoteCount"]
       86 SETTABLEKS                       R6 R14 K6 ["UpVotePercent"]
       88 SETTABLEKS                       R14 R13 K35 ["Voting"]
       90 GETUPVAL                         R14 1
       91 GETTABLEKS                       R14 R14 K45 ["ASSET_VOTE_COUNT_FONT_SIZE"]
       93 SETTABLEKS                       R14 R13 K36 ["TextSize"]
       95 GETIMPORT                        R14 K47 [Enum.AutomaticSize.X]
       97 SETTABLEKS                       R14 R13 K37 ["AutomaticSize"]
       99 GETUPVAL                         R14 1
      100 GETTABLEKS                       R14 R14 K48 ["FONT"]
      102 SETTABLEKS                       R14 R13 K38 ["Font"]
      104 GETIMPORT                        R14 K15 [UDim2.new]
      106 LOADN                            R15 0
      107 LOADN                            R16 0
      108 LOADN                            R17 0
      109 LOADN                            R18 0
      110 CALL                             R14 4 1
      111 SETTABLEKS                       R14 R13 K11 ["Size"]
      113 GETIMPORT                        R14 K50 [Enum.VerticalAlignment.Center]
      115 SETTABLEKS                       R14 R13 K39 ["VerticalAlignment"]
      117 GETUPVAL                         R14 1
      118 GETTABLEKS                       R14 R14 K51 ["ASSET_VOTE_COUNT_HORIZONTAL_PADDING"]
      120 SETTABLEKS                       R14 R13 K23 ["Padding"]
      122 GETUPVAL                         R14 1
      123 GETTABLEKS                       R14 R14 K52 ["ASSET_VOTE_COUNT_HEIGHT"]
      125 SETTABLEKS                       R14 R13 K42 ["VoteCountHeight"]
      127 CALL                             R11 2 1
      128 SETTABLEKS                       R11 R10 K18 ["Votes"]
      130 CALL                             R7 3 -1
      131 RETURN                           R7 -1

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
       22 GETTABLEKS                       R4 R1 K7 ["Framework"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R0 K8 ["Src"]
       29 GETTABLEKS                       R5 R5 K9 ["Util"]
       31 GETTABLEKS                       R5 R5 K10 ["Constants"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R5 R3 K11 ["UI"]
       36 GETTABLEKS                       R6 R5 K12 ["Votes"]
       38 GETIMPORT                        R7 K5 [require]
       40 GETTABLEKS                       R8 R1 K7 ["Framework"]
       42 CALL                             R7 1 1
       43 GETTABLEKS                       R7 R7 K13 ["ContextServices"]
       45 GETTABLEKS                       R8 R7 K14 ["withContext"]
       47 GETTABLEKS                       R9 R2 K15 ["PureComponent"]
       49 LOADK                            R11 K16 ["VoteBar"]
       50 NAMECALL                         R9 R9 K17 ["extend"]
       52 CALL                             R9 2 1
       53 DUPCLOSURE                       R10 K18 [PROTO_0]
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R6
       57 SETTABLEKS                       R10 R9 K19 ["render"]
       59 MOVE                             R10 R8
       60 DUPTABLE                         R11 K21 [{"Stylizer"}]
       61 GETTABLEKS                       R12 R7 K20 ["Stylizer"]
       63 SETTABLEKS                       R12 R11 K20 ["Stylizer"]
       65 CALL                             R10 1 1
       66 MOVE                             R11 R9
       67 CALL                             R10 1 1
       68 MOVE                             R9 R10
       69 RETURN                           R9 1
