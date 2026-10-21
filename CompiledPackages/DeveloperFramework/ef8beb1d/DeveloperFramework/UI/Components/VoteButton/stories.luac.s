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
        5 DUPTABLE                         R3 K13 [{["AssetId"] = 123, ["CanVote"] = True, ["OnClick"], ["VoteType"]}]
        6 DUPCLOSURE                       R4 K14 [PROTO_0]
        7 SETTABLEKS                       R4 R3 K11 ["OnClick"]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K12 ["VoteType"]
       12 GETTABLEKS                       R4 R4 K0 ["UpVote"]
       14 SETTABLEKS                       R4 R3 K12 ["VoteType"]
       16 CALL                             R1 2 1
       17 SETTABLEKS                       R1 R0 K0 ["UpVote"]
       19 GETUPVAL                         R1 0
       20 GETTABLEKS                       R1 R1 K6 ["createElement"]
       22 GETUPVAL                         R2 1
       23 DUPTABLE                         R3 K13 [{["AssetId"] = 123, ["CanVote"] = True, ["OnClick"], ["VoteType"]}]
       24 DUPCLOSURE                       R4 K15 [PROTO_1]
       25 SETTABLEKS                       R4 R3 K11 ["OnClick"]
       27 GETUPVAL                         R4 1
       28 GETTABLEKS                       R4 R4 K12 ["VoteType"]
       30 GETTABLEKS                       R4 R4 K1 ["DownVote"]
       32 SETTABLEKS                       R4 R3 K12 ["VoteType"]
       34 CALL                             R1 2 1
       35 SETTABLEKS                       R1 R0 K1 ["DownVote"]
       37 GETUPVAL                         R1 0
       38 GETTABLEKS                       R1 R1 K6 ["createElement"]
       40 GETUPVAL                         R2 1
       41 DUPTABLE                         R3 K17 [{["AssetId"] = 123, ["CanVote"] = False, ["OnClick"], ["VoteType"]}]
       42 DUPCLOSURE                       R4 K18 [PROTO_2]
       43 SETTABLEKS                       R4 R3 K11 ["OnClick"]
       45 GETUPVAL                         R4 1
       46 GETTABLEKS                       R4 R4 K12 ["VoteType"]
       48 GETTABLEKS                       R4 R4 K1 ["DownVote"]
       50 SETTABLEKS                       R4 R3 K12 ["VoteType"]
       52 CALL                             R1 2 1
       53 SETTABLEKS                       R1 R0 K2 ["DisabledVote"]
       55 GETUPVAL                         R1 0
       56 GETTABLEKS                       R1 R1 K6 ["createElement"]
       58 GETUPVAL                         R2 1
       59 DUPTABLE                         R3 K20 [{["AssetId"] = 123, ["CanVote"] = True, ["OnClick"], ["UserVote"] = False, ["VoteType"]}]
       60 DUPCLOSURE                       R4 K21 [PROTO_3]
       61 SETTABLEKS                       R4 R3 K11 ["OnClick"]
       63 GETUPVAL                         R4 1
       64 GETTABLEKS                       R4 R4 K12 ["VoteType"]
       66 GETTABLEKS                       R4 R4 K1 ["DownVote"]
       68 SETTABLEKS                       R4 R3 K12 ["VoteType"]
       70 CALL                             R1 2 1
       71 SETTABLEKS                       R1 R0 K3 ["HasVotedDown"]
       73 GETUPVAL                         R1 0
       74 GETTABLEKS                       R1 R1 K6 ["createElement"]
       76 GETUPVAL                         R2 1
       77 DUPTABLE                         R3 K22 [{["AssetId"] = 123, ["CanVote"] = True, ["OnClick"], ["UserVote"] = True, ["VoteType"]}]
       78 DUPCLOSURE                       R4 K23 [PROTO_4]
       79 SETTABLEKS                       R4 R3 K11 ["OnClick"]
       81 GETUPVAL                         R4 1
       82 GETTABLEKS                       R4 R4 K12 ["VoteType"]
       84 GETTABLEKS                       R4 R4 K0 ["UpVote"]
       86 SETTABLEKS                       R4 R3 K12 ["VoteType"]
       88 CALL                             R1 2 1
       89 SETTABLEKS                       R1 R0 K4 ["HasVotedUp"]
       91 RETURN                           R0 1

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
