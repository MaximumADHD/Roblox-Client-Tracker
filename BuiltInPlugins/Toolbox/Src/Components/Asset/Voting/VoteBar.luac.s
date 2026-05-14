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
       24 DUPTABLE                         R9 K11 [{"BackgroundTransparency", "Size"}]
       25 LOADN                            R10 1
       26 SETTABLEKS                       R10 R9 K9 ["BackgroundTransparency"]
       28 GETIMPORT                        R10 K14 [UDim2.new]
       30 LOADN                            R11 1
       31 LOADN                            R12 0
       32 LOADN                            R13 1
       33 LOADN                            R14 0
       34 CALL                             R10 4 1
       35 JUMPIF                           R10 ; [+9]
       36 GETIMPORT                        R10 K14 [UDim2.new]
       38 LOADN                            R11 1
       39 LOADN                            R12 0
       40 LOADN                            R13 0
       41 GETUPVAL                         R14 1
       42 GETTABLEKS                       R14 R14 K15 ["ASSET_VOTING_HEIGHT"]
       44 CALL                             R10 4 1
       45 SETTABLEKS                       R10 R9 K10 ["Size"]
       47 DUPTABLE                         R10 K18 [{"UIListLayout", "Votes"}]
       48 GETUPVAL                         R11 0
       49 GETTABLEKS                       R11 R11 K7 ["createElement"]
       51 LOADK                            R12 K16 ["UIListLayout"]
       52 DUPTABLE                         R13 K23 [{"SortOrder", "HorizontalAlignment", "FillDirection", "Padding"}]
       53 GETIMPORT                        R14 K26 [Enum.SortOrder.LayoutOrder]
       55 SETTABLEKS                       R14 R13 K19 ["SortOrder"]
       57 GETIMPORT                        R14 K28 [Enum.HorizontalAlignment.Left]
       59 SETTABLEKS                       R14 R13 K20 ["HorizontalAlignment"]
       61 GETIMPORT                        R14 K30 [Enum.FillDirection.Horizontal]
       63 SETTABLEKS                       R14 R13 K21 ["FillDirection"]
       65 GETIMPORT                        R14 K32 [UDim.new]
       67 LOADN                            R15 0
       68 GETUPVAL                         R16 1
       69 GETTABLEKS                       R16 R16 K33 ["ASSET_INNER_PADDING"]
       71 CALL                             R14 2 1
       72 SETTABLEKS                       R14 R13 K22 ["Padding"]
       74 CALL                             R11 2 1
       75 SETTABLEKS                       R11 R10 K16 ["UIListLayout"]
       77 GETUPVAL                         R11 0
       78 GETTABLEKS                       R11 R11 K7 ["createElement"]
       80 GETUPVAL                         R12 2
       81 DUPTABLE                         R13 K41 [{"Voting", "TextSize", "AutomaticSize", "Font", "Size", "VerticalAlignment", "Padding", "IncludeVoteCount", "VoteCountHeight"}]
       82 DUPTABLE                         R14 K42 [{"UpVotes", "DownVotes", "VoteCount", "UpVotePercent"}]
       83 SETTABLEKS                       R3 R14 K3 ["UpVotes"]
       85 SETTABLEKS                       R4 R14 K4 ["DownVotes"]
       87 SETTABLEKS                       R5 R14 K5 ["VoteCount"]
       89 SETTABLEKS                       R6 R14 K6 ["UpVotePercent"]
       91 SETTABLEKS                       R14 R13 K34 ["Voting"]
       93 GETUPVAL                         R14 1
       94 GETTABLEKS                       R14 R14 K43 ["ASSET_VOTE_COUNT_FONT_SIZE"]
       96 SETTABLEKS                       R14 R13 K35 ["TextSize"]
       98 GETIMPORT                        R14 K45 [Enum.AutomaticSize.X]
      100 SETTABLEKS                       R14 R13 K36 ["AutomaticSize"]
      102 GETUPVAL                         R14 1
      103 GETTABLEKS                       R14 R14 K46 ["FONT"]
      105 SETTABLEKS                       R14 R13 K37 ["Font"]
      107 GETIMPORT                        R14 K14 [UDim2.new]
      109 LOADN                            R15 0
      110 LOADN                            R16 0
      111 LOADN                            R17 0
      112 LOADN                            R18 0
      113 CALL                             R14 4 1
      114 SETTABLEKS                       R14 R13 K10 ["Size"]
      116 GETIMPORT                        R14 K48 [Enum.VerticalAlignment.Center]
      118 SETTABLEKS                       R14 R13 K38 ["VerticalAlignment"]
      120 GETUPVAL                         R14 1
      121 GETTABLEKS                       R14 R14 K49 ["ASSET_VOTE_COUNT_HORIZONTAL_PADDING"]
      123 SETTABLEKS                       R14 R13 K22 ["Padding"]
      125 LOADB                            R14 1
      126 SETTABLEKS                       R14 R13 K39 ["IncludeVoteCount"]
      128 GETUPVAL                         R14 1
      129 GETTABLEKS                       R14 R14 K50 ["ASSET_VOTE_COUNT_HEIGHT"]
      131 SETTABLEKS                       R14 R13 K40 ["VoteCountHeight"]
      133 CALL                             R11 2 1
      134 SETTABLEKS                       R11 R10 K17 ["Votes"]
      136 CALL                             R7 3 -1
      137 RETURN                           R7 -1

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
