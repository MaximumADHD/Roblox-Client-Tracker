PROTO_0:
        0 GETTABLEKS                       R2 R0 K1 ["LayoutOrder"]
        2 ORK                              R1 R2 K0 [0]
        3 GETTABLEKS                       R2 R0 K2 ["voting"]
        5 GETTABLEKS                       R2 R2 K3 ["ShowVotes"]
        7 GETTABLEKS                       R4 R0 K2 ["voting"]
        9 GETTABLEKS                       R4 R4 K5 ["showVoteButtons"]
       11 ORK                              R3 R4 K4 [False]
       12 GETTABLEKS                       R4 R0 K2 ["voting"]
       14 GETTABLEKS                       R4 R4 K6 ["VoteLoading"]
       16 NEWTABLE                         R5 4 0
       18 JUMPIFNOT                        R2 ; [+53]
       19 JUMPIFNOT                        R4 ; [+34]
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R6 R6 K7 ["createElement"]
       23 GETUPVAL                         R7 1
       24 DUPTABLE                         R8 K9 [{"Size"}]
       25 GETIMPORT                        R9 K12 [UDim2.new]
       27 LOADK                            R10 K13 [0.333]
       28 LOADN                            R11 0
       29 LOADK                            R12 K13 [0.333]
       30 LOADN                            R13 0
       31 CALL                             R9 4 1
       32 SETTABLEKS                       R9 R8 K8 ["Size"]
       34 CALL                             R6 2 1
       35 SETTABLEKS                       R6 R5 K6 ["VoteLoading"]
       37 GETUPVAL                         R6 0
       38 GETTABLEKS                       R6 R6 K7 ["createElement"]
       40 LOADK                            R7 K14 ["UIListLayout"]
       41 DUPTABLE                         R8 K17 [{"HorizontalAlignment", "VerticalAlignment"}]
       42 GETIMPORT                        R9 K20 [Enum.HorizontalAlignment.Center]
       44 SETTABLEKS                       R9 R8 K15 ["HorizontalAlignment"]
       46 GETIMPORT                        R9 K21 [Enum.VerticalAlignment.Center]
       48 SETTABLEKS                       R9 R8 K16 ["VerticalAlignment"]
       50 CALL                             R6 2 1
       51 SETTABLEKS                       R6 R5 K14 ["UIListLayout"]
       53 JUMP                             ; [+18]
       54 JUMPIFNOT                        R3 ; [+9]
       55 GETUPVAL                         R6 0
       56 GETTABLEKS                       R6 R6 K7 ["createElement"]
       58 GETUPVAL                         R7 2
       59 MOVE                             R8 R0
       60 CALL                             R6 2 1
       61 SETTABLEKS                       R6 R5 K22 ["VoteButtons"]
       63 JUMP                             ; [+8]
       64 GETUPVAL                         R6 0
       65 GETTABLEKS                       R6 R6 K7 ["createElement"]
       67 GETUPVAL                         R7 3
       68 MOVE                             R8 R0
       69 CALL                             R6 2 1
       70 SETTABLEKS                       R6 R5 K23 ["VoteBar"]
       72 JUMPIFNOT                        R3 ; [+4]
       73 GETUPVAL                         R6 4
       74 GETTABLEKS                       R6 R6 K24 ["ASSET_VOTING_BUTTONS_HEIGHT"]
       76 JUMP                             ; [+3]
       77 GETUPVAL                         R6 4
       78 GETTABLEKS                       R6 R6 K25 ["ASSET_VOTE_COUNT_HEIGHT"]
       80 GETUPVAL                         R7 0
       81 GETTABLEKS                       R7 R7 K7 ["createElement"]
       83 LOADK                            R8 K26 ["Frame"]
       84 DUPTABLE                         R9 K29 [{["BackgroundTransparency"] = 1, ["LayoutOrder"], ["Size"]}]
       85 SETTABLEKS                       R1 R9 K1 ["LayoutOrder"]
       87 GETIMPORT                        R10 K12 [UDim2.new]
       89 LOADN                            R11 1
       90 LOADN                            R12 0
       91 LOADN                            R13 0
       92 MOVE                             R14 R6
       93 CALL                             R10 4 1
       94 SETTABLEKS                       R10 R9 K8 ["Size"]
       96 MOVE                             R10 R5
       97 CALL                             R7 3 -1
       98 RETURN                           R7 -1

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
       17 GETTABLEKS                       R3 R1 K6 ["Framework"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K5 [require]
       22 GETTABLEKS                       R4 R1 K7 ["Roact"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R0 K8 ["Src"]
       29 GETTABLEKS                       R5 R5 K9 ["Util"]
       31 GETTABLEKS                       R5 R5 K10 ["Constants"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K5 [require]
       36 GETTABLEKS                       R6 R0 K8 ["Src"]
       38 GETTABLEKS                       R6 R6 K11 ["Components"]
       40 GETTABLEKS                       R6 R6 K12 ["Asset"]
       42 GETTABLEKS                       R6 R6 K13 ["Voting"]
       44 GETTABLEKS                       R6 R6 K14 ["VoteBar"]
       46 CALL                             R5 1 1
       47 GETIMPORT                        R6 K5 [require]
       49 GETTABLEKS                       R7 R0 K8 ["Src"]
       51 GETTABLEKS                       R7 R7 K11 ["Components"]
       53 GETTABLEKS                       R7 R7 K12 ["Asset"]
       55 GETTABLEKS                       R7 R7 K13 ["Voting"]
       57 GETTABLEKS                       R7 R7 K15 ["VoteButtons"]
       59 CALL                             R6 1 1
       60 GETTABLEKS                       R7 R2 K16 ["UI"]
       62 GETTABLEKS                       R7 R7 K17 ["LoadingIndicator"]
       64 DUPCLOSURE                       R8 K18 [PROTO_0]
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R7
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R5
       69 CAPTURE                          VAL R4
       70 RETURN                           R8 1
