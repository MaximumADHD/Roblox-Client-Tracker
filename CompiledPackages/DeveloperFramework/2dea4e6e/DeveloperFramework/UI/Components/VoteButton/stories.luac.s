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
        0 DUPTABLE                         R0 K5 [{"UpVote", "DownVote", "DisabledVote", "HasVotedDown", "HasVotedUp"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K6 ["createElement"]
        4 GETUPVAL                         R2 1
        5 DUPTABLE                         R3 K11 [{"AssetId", "CanVote", "OnClick", "VoteType"}]
        6 LOADN                            R4 123
        7 SETTABLEKS                       R4 R3 K7 ["AssetId"]
        9 LOADB                            R4 1
       10 SETTABLEKS                       R4 R3 K8 ["CanVote"]
       12 DUPCLOSURE                       R4 K12 [PROTO_0]
       13 SETTABLEKS                       R4 R3 K9 ["OnClick"]
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R4 R4 K10 ["VoteType"]
       18 GETTABLEKS                       R4 R4 K0 ["UpVote"]
       20 SETTABLEKS                       R4 R3 K10 ["VoteType"]
       22 CALL                             R1 2 1
       23 SETTABLEKS                       R1 R0 K0 ["UpVote"]
       25 GETUPVAL                         R1 0
       26 GETTABLEKS                       R1 R1 K6 ["createElement"]
       28 GETUPVAL                         R2 1
       29 DUPTABLE                         R3 K11 [{"AssetId", "CanVote", "OnClick", "VoteType"}]
       30 LOADN                            R4 123
       31 SETTABLEKS                       R4 R3 K7 ["AssetId"]
       33 LOADB                            R4 1
       34 SETTABLEKS                       R4 R3 K8 ["CanVote"]
       36 DUPCLOSURE                       R4 K13 [PROTO_1]
       37 SETTABLEKS                       R4 R3 K9 ["OnClick"]
       39 GETUPVAL                         R4 1
       40 GETTABLEKS                       R4 R4 K10 ["VoteType"]
       42 GETTABLEKS                       R4 R4 K1 ["DownVote"]
       44 SETTABLEKS                       R4 R3 K10 ["VoteType"]
       46 CALL                             R1 2 1
       47 SETTABLEKS                       R1 R0 K1 ["DownVote"]
       49 GETUPVAL                         R1 0
       50 GETTABLEKS                       R1 R1 K6 ["createElement"]
       52 GETUPVAL                         R2 1
       53 DUPTABLE                         R3 K11 [{"AssetId", "CanVote", "OnClick", "VoteType"}]
       54 LOADN                            R4 123
       55 SETTABLEKS                       R4 R3 K7 ["AssetId"]
       57 LOADB                            R4 0
       58 SETTABLEKS                       R4 R3 K8 ["CanVote"]
       60 DUPCLOSURE                       R4 K14 [PROTO_2]
       61 SETTABLEKS                       R4 R3 K9 ["OnClick"]
       63 GETUPVAL                         R4 1
       64 GETTABLEKS                       R4 R4 K10 ["VoteType"]
       66 GETTABLEKS                       R4 R4 K1 ["DownVote"]
       68 SETTABLEKS                       R4 R3 K10 ["VoteType"]
       70 CALL                             R1 2 1
       71 SETTABLEKS                       R1 R0 K2 ["DisabledVote"]
       73 GETUPVAL                         R1 0
       74 GETTABLEKS                       R1 R1 K6 ["createElement"]
       76 GETUPVAL                         R2 1
       77 DUPTABLE                         R3 K16 [{"AssetId", "CanVote", "OnClick", "UserVote", "VoteType"}]
       78 LOADN                            R4 123
       79 SETTABLEKS                       R4 R3 K7 ["AssetId"]
       81 LOADB                            R4 1
       82 SETTABLEKS                       R4 R3 K8 ["CanVote"]
       84 DUPCLOSURE                       R4 K17 [PROTO_3]
       85 SETTABLEKS                       R4 R3 K9 ["OnClick"]
       87 LOADB                            R4 0
       88 SETTABLEKS                       R4 R3 K15 ["UserVote"]
       90 GETUPVAL                         R4 1
       91 GETTABLEKS                       R4 R4 K10 ["VoteType"]
       93 GETTABLEKS                       R4 R4 K1 ["DownVote"]
       95 SETTABLEKS                       R4 R3 K10 ["VoteType"]
       97 CALL                             R1 2 1
       98 SETTABLEKS                       R1 R0 K3 ["HasVotedDown"]
      100 GETUPVAL                         R1 0
      101 GETTABLEKS                       R1 R1 K6 ["createElement"]
      103 GETUPVAL                         R2 1
      104 DUPTABLE                         R3 K16 [{"AssetId", "CanVote", "OnClick", "UserVote", "VoteType"}]
      105 LOADN                            R4 123
      106 SETTABLEKS                       R4 R3 K7 ["AssetId"]
      108 LOADB                            R4 1
      109 SETTABLEKS                       R4 R3 K8 ["CanVote"]
      111 DUPCLOSURE                       R4 K18 [PROTO_4]
      112 SETTABLEKS                       R4 R3 K9 ["OnClick"]
      114 LOADB                            R4 1
      115 SETTABLEKS                       R4 R3 K15 ["UserVote"]
      117 GETUPVAL                         R4 1
      118 GETTABLEKS                       R4 R4 K10 ["VoteType"]
      120 GETTABLEKS                       R4 R4 K0 ["UpVote"]
      122 SETTABLEKS                       R4 R3 K10 ["VoteType"]
      124 CALL                             R1 2 1
      125 SETTABLEKS                       R1 R0 K4 ["HasVotedUp"]
      127 RETURN                           R0 1

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
       23 DUPCLOSURE                       R3 K8 [PROTO_5]
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R2
       26 RETURN                           R3 1
