PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 RETURN                           R0 0

PROTO_6:
        0 RETURN                           R0 0

PROTO_7:
        0 RETURN                           R0 0

PROTO_8:
        0 RETURN                           R0 0

PROTO_9:
        0 RETURN                           R0 0

PROTO_10:
        0 RETURN                           R0 0

PROTO_11:
        0 RETURN                           R0 0

PROTO_12:
        0 RETURN                           R0 0

PROTO_13:
        0 RETURN                           R0 0

PROTO_14:
        0 RETURN                           R0 0

PROTO_15:
        0 RETURN                           R0 0

PROTO_16:
        0 DUPTABLE                         R0 K8 [{"NoVotes", "AllUp", "AllDown", "Mix", "CanVote", "HasVotedUp", "HasVotedDown", "LowWidth"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K9 ["createElement"]
        4 GETUPVAL                         R2 1
        5 DUPTABLE                         R3 K15 [{["AssetId"] = 123, ["OnVoteUp"], ["OnVoteDown"], ["Voting"]}]
        6 DUPCLOSURE                       R4 K16 [PROTO_0]
        7 SETTABLEKS                       R4 R3 K12 ["OnVoteUp"]
        9 DUPCLOSURE                       R4 K17 [PROTO_1]
       10 SETTABLEKS                       R4 R3 K13 ["OnVoteDown"]
       12 DUPTABLE                         R4 K21 [{["UpVotes"] = 0, ["DownVotes"] = 0}]
       13 SETTABLEKS                       R4 R3 K14 ["Voting"]
       15 CALL                             R1 2 1
       16 SETTABLEKS                       R1 R0 K0 ["NoVotes"]
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R1 R1 K9 ["createElement"]
       21 GETUPVAL                         R2 1
       22 DUPTABLE                         R3 K15 [{["AssetId"] = 123, ["OnVoteUp"], ["OnVoteDown"], ["Voting"]}]
       23 DUPCLOSURE                       R4 K22 [PROTO_2]
       24 SETTABLEKS                       R4 R3 K12 ["OnVoteUp"]
       26 DUPCLOSURE                       R4 K23 [PROTO_3]
       27 SETTABLEKS                       R4 R3 K13 ["OnVoteDown"]
       29 DUPTABLE                         R4 K25 [{["UpVotes"] = 111, ["DownVotes"] = 0}]
       30 SETTABLEKS                       R4 R3 K14 ["Voting"]
       32 CALL                             R1 2 1
       33 SETTABLEKS                       R1 R0 K1 ["AllUp"]
       35 GETUPVAL                         R1 0
       36 GETTABLEKS                       R1 R1 K9 ["createElement"]
       38 GETUPVAL                         R2 1
       39 DUPTABLE                         R3 K15 [{["AssetId"] = 123, ["OnVoteUp"], ["OnVoteDown"], ["Voting"]}]
       40 DUPCLOSURE                       R4 K26 [PROTO_4]
       41 SETTABLEKS                       R4 R3 K12 ["OnVoteUp"]
       43 DUPCLOSURE                       R4 K27 [PROTO_5]
       44 SETTABLEKS                       R4 R3 K13 ["OnVoteDown"]
       46 DUPTABLE                         R4 K28 [{["UpVotes"] = 0, ["DownVotes"] = 111}]
       47 SETTABLEKS                       R4 R3 K14 ["Voting"]
       49 CALL                             R1 2 1
       50 SETTABLEKS                       R1 R0 K2 ["AllDown"]
       52 GETUPVAL                         R1 0
       53 GETTABLEKS                       R1 R1 K9 ["createElement"]
       55 GETUPVAL                         R2 1
       56 DUPTABLE                         R3 K15 [{["AssetId"] = 123, ["OnVoteUp"], ["OnVoteDown"], ["Voting"]}]
       57 DUPCLOSURE                       R4 K29 [PROTO_6]
       58 SETTABLEKS                       R4 R3 K12 ["OnVoteUp"]
       60 DUPCLOSURE                       R4 K30 [PROTO_7]
       61 SETTABLEKS                       R4 R3 K13 ["OnVoteDown"]
       63 DUPTABLE                         R4 K33 [{["UpVotes"] = 55, ["DownVotes"] = 44}]
       64 SETTABLEKS                       R4 R3 K14 ["Voting"]
       66 CALL                             R1 2 1
       67 SETTABLEKS                       R1 R0 K3 ["Mix"]
       69 GETUPVAL                         R1 0
       70 GETTABLEKS                       R1 R1 K9 ["createElement"]
       72 GETUPVAL                         R2 1
       73 DUPTABLE                         R3 K15 [{["AssetId"] = 123, ["OnVoteUp"], ["OnVoteDown"], ["Voting"]}]
       74 DUPCLOSURE                       R4 K34 [PROTO_8]
       75 SETTABLEKS                       R4 R3 K12 ["OnVoteUp"]
       77 DUPCLOSURE                       R4 K35 [PROTO_9]
       78 SETTABLEKS                       R4 R3 K13 ["OnVoteDown"]
       80 DUPTABLE                         R4 K37 [{["UpVotes"] = 55, ["DownVotes"] = 44, ["CanVote"] = True}]
       81 SETTABLEKS                       R4 R3 K14 ["Voting"]
       83 CALL                             R1 2 1
       84 SETTABLEKS                       R1 R0 K4 ["CanVote"]
       86 GETUPVAL                         R1 0
       87 GETTABLEKS                       R1 R1 K9 ["createElement"]
       89 GETUPVAL                         R2 1
       90 DUPTABLE                         R3 K15 [{["AssetId"] = 123, ["OnVoteUp"], ["OnVoteDown"], ["Voting"]}]
       91 DUPCLOSURE                       R4 K38 [PROTO_10]
       92 SETTABLEKS                       R4 R3 K12 ["OnVoteUp"]
       94 DUPCLOSURE                       R4 K39 [PROTO_11]
       95 SETTABLEKS                       R4 R3 K13 ["OnVoteDown"]
       97 DUPTABLE                         R4 K41 [{["UpVotes"] = 55, ["DownVotes"] = 44, ["CanVote"] = True, ["UserVote"] = True}]
       98 SETTABLEKS                       R4 R3 K14 ["Voting"]
      100 CALL                             R1 2 1
      101 SETTABLEKS                       R1 R0 K5 ["HasVotedUp"]
      103 GETUPVAL                         R1 0
      104 GETTABLEKS                       R1 R1 K9 ["createElement"]
      106 GETUPVAL                         R2 1
      107 DUPTABLE                         R3 K15 [{["AssetId"] = 123, ["OnVoteUp"], ["OnVoteDown"], ["Voting"]}]
      108 DUPCLOSURE                       R4 K42 [PROTO_12]
      109 SETTABLEKS                       R4 R3 K12 ["OnVoteUp"]
      111 DUPCLOSURE                       R4 K43 [PROTO_13]
      112 SETTABLEKS                       R4 R3 K13 ["OnVoteDown"]
      114 DUPTABLE                         R4 K45 [{["UpVotes"] = 55, ["DownVotes"] = 44, ["CanVote"] = True, ["UserVote"] = False}]
      115 SETTABLEKS                       R4 R3 K14 ["Voting"]
      117 CALL                             R1 2 1
      118 SETTABLEKS                       R1 R0 K6 ["HasVotedDown"]
      120 GETUPVAL                         R1 0
      121 GETTABLEKS                       R1 R1 K9 ["createElement"]
      123 GETUPVAL                         R2 2
      124 DUPTABLE                         R3 K47 [{"Size"}]
      125 GETIMPORT                        R4 K50 [UDim2.new]
      127 LOADN                            R5 0
      128 LOADN                            R6 183
      129 LOADN                            R7 0
      130 LOADN                            R8 30
      131 CALL                             R4 4 1
      132 SETTABLEKS                       R4 R3 K46 ["Size"]
      134 DUPTABLE                         R4 K52 [{"VoteBar"}]
      135 GETUPVAL                         R5 0
      136 GETTABLEKS                       R5 R5 K9 ["createElement"]
      138 GETUPVAL                         R6 1
      139 DUPTABLE                         R7 K15 [{["AssetId"] = 123, ["OnVoteUp"], ["OnVoteDown"], ["Voting"]}]
      140 DUPCLOSURE                       R8 K53 [PROTO_14]
      141 SETTABLEKS                       R8 R7 K12 ["OnVoteUp"]
      143 DUPCLOSURE                       R8 K54 [PROTO_15]
      144 SETTABLEKS                       R8 R7 K13 ["OnVoteDown"]
      146 DUPTABLE                         R8 K55 [{["UpVotes"] = 55, ["DownVotes"] = 0, ["CanVote"] = True, ["UserVote"] = False}]
      147 SETTABLEKS                       R8 R7 K14 ["Voting"]
      149 CALL                             R5 2 1
      150 SETTABLEKS                       R5 R4 K51 ["VoteBar"]
      152 CALL                             R1 3 1
      153 SETTABLEKS                       R1 R0 K7 ["LowWidth"]
      155 RETURN                           R0 1

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
       18 GETIMPORT                        R3 K1 [script]
       20 GETTABLEKS                       R3 R3 K4 ["Parent"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K6 [require]
       25 GETTABLEKS                       R4 R0 K2 ["UI"]
       27 GETTABLEKS                       R4 R4 K8 ["Components"]
       29 GETTABLEKS                       R4 R4 K9 ["Container"]
       31 CALL                             R3 1 1
       32 DUPCLOSURE                       R4 K10 [PROTO_16]
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R3
       36 RETURN                           R4 1
