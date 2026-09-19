PROTO_0:
        0 DUPTABLE                         R0 K6 [{"NoVotes", "AllUp", "AllDown", "Mix", "NotEnoughVotes", "IncludeVoteCount"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K7 ["createElement"]
        4 GETUPVAL                         R2 1
        5 DUPTABLE                         R3 K9 [{"Voting"}]
        6 DUPTABLE                         R4 K13 [{["UpVotes"] = 0, ["DownVotes"] = 0}]
        7 SETTABLEKS                       R4 R3 K8 ["Voting"]
        9 CALL                             R1 2 1
       10 SETTABLEKS                       R1 R0 K0 ["NoVotes"]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K7 ["createElement"]
       15 GETUPVAL                         R2 1
       16 DUPTABLE                         R3 K9 [{"Voting"}]
       17 DUPTABLE                         R4 K15 [{["UpVotes"] = 11, ["DownVotes"] = 0}]
       18 SETTABLEKS                       R4 R3 K8 ["Voting"]
       20 CALL                             R1 2 1
       21 SETTABLEKS                       R1 R0 K1 ["AllUp"]
       23 GETUPVAL                         R1 0
       24 GETTABLEKS                       R1 R1 K7 ["createElement"]
       26 GETUPVAL                         R2 1
       27 DUPTABLE                         R3 K9 [{"Voting"}]
       28 DUPTABLE                         R4 K16 [{["UpVotes"] = 0, ["DownVotes"] = 11}]
       29 SETTABLEKS                       R4 R3 K8 ["Voting"]
       31 CALL                             R1 2 1
       32 SETTABLEKS                       R1 R0 K2 ["AllDown"]
       34 GETUPVAL                         R1 0
       35 GETTABLEKS                       R1 R1 K7 ["createElement"]
       37 GETUPVAL                         R2 1
       38 DUPTABLE                         R3 K9 [{"Voting"}]
       39 DUPTABLE                         R4 K19 [{["UpVotes"] = 55, ["DownVotes"] = 44}]
       40 SETTABLEKS                       R4 R3 K8 ["Voting"]
       42 CALL                             R1 2 1
       43 SETTABLEKS                       R1 R0 K3 ["Mix"]
       45 GETUPVAL                         R1 0
       46 GETTABLEKS                       R1 R1 K7 ["createElement"]
       48 GETUPVAL                         R2 1
       49 DUPTABLE                         R3 K9 [{"Voting"}]
       50 DUPTABLE                         R4 K23 [{["Upvotes"] = 3, ["DownVotes"] = 1}]
       51 SETTABLEKS                       R4 R3 K8 ["Voting"]
       53 CALL                             R1 2 1
       54 SETTABLEKS                       R1 R0 K4 ["NotEnoughVotes"]
       56 GETUPVAL                         R1 0
       57 GETTABLEKS                       R1 R1 K7 ["createElement"]
       59 GETUPVAL                         R2 1
       60 DUPTABLE                         R3 K27 [{["Voting"], ["IncludeVoteCount"] = True, ["TextSize"] = 14}]
       61 DUPTABLE                         R4 K30 [{["UpVotes"] = 31, ["DownVotes"] = 41}]
       62 SETTABLEKS                       R4 R3 K8 ["Voting"]
       64 CALL                             R1 2 1
       65 SETTABLEKS                       R1 R0 K5 ["IncludeVoteCount"]
       67 RETURN                           R0 1

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
       23 DUPCLOSURE                       R3 K8 [PROTO_0]
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R2
       26 RETURN                           R3 1
