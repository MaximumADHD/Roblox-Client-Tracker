PROTO_0:
        0 DUPTABLE                         R0 K6 [{"NoVotes", "AllUp", "AllDown", "Mix", "NotEnoughVotes", "IncludeVoteCount"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K7 ["createElement"]
        4 GETUPVAL                         R2 1
        5 DUPTABLE                         R3 K9 [{"Voting"}]
        6 DUPTABLE                         R4 K12 [{"UpVotes", "DownVotes"}]
        7 LOADN                            R5 0
        8 SETTABLEKS                       R5 R4 K10 ["UpVotes"]
       10 LOADN                            R5 0
       11 SETTABLEKS                       R5 R4 K11 ["DownVotes"]
       13 SETTABLEKS                       R4 R3 K8 ["Voting"]
       15 CALL                             R1 2 1
       16 SETTABLEKS                       R1 R0 K0 ["NoVotes"]
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R1 R2 K7 ["createElement"]
       21 GETUPVAL                         R2 1
       22 DUPTABLE                         R3 K9 [{"Voting"}]
       23 DUPTABLE                         R4 K12 [{"UpVotes", "DownVotes"}]
       24 LOADN                            R5 11
       25 SETTABLEKS                       R5 R4 K10 ["UpVotes"]
       27 LOADN                            R5 0
       28 SETTABLEKS                       R5 R4 K11 ["DownVotes"]
       30 SETTABLEKS                       R4 R3 K8 ["Voting"]
       32 CALL                             R1 2 1
       33 SETTABLEKS                       R1 R0 K1 ["AllUp"]
       35 GETUPVAL                         R2 0
       36 GETTABLEKS                       R1 R2 K7 ["createElement"]
       38 GETUPVAL                         R2 1
       39 DUPTABLE                         R3 K9 [{"Voting"}]
       40 DUPTABLE                         R4 K12 [{"UpVotes", "DownVotes"}]
       41 LOADN                            R5 0
       42 SETTABLEKS                       R5 R4 K10 ["UpVotes"]
       44 LOADN                            R5 11
       45 SETTABLEKS                       R5 R4 K11 ["DownVotes"]
       47 SETTABLEKS                       R4 R3 K8 ["Voting"]
       49 CALL                             R1 2 1
       50 SETTABLEKS                       R1 R0 K2 ["AllDown"]
       52 GETUPVAL                         R2 0
       53 GETTABLEKS                       R1 R2 K7 ["createElement"]
       55 GETUPVAL                         R2 1
       56 DUPTABLE                         R3 K9 [{"Voting"}]
       57 DUPTABLE                         R4 K12 [{"UpVotes", "DownVotes"}]
       58 LOADN                            R5 55
       59 SETTABLEKS                       R5 R4 K10 ["UpVotes"]
       61 LOADN                            R5 44
       62 SETTABLEKS                       R5 R4 K11 ["DownVotes"]
       64 SETTABLEKS                       R4 R3 K8 ["Voting"]
       66 CALL                             R1 2 1
       67 SETTABLEKS                       R1 R0 K3 ["Mix"]
       69 GETUPVAL                         R2 0
       70 GETTABLEKS                       R1 R2 K7 ["createElement"]
       72 GETUPVAL                         R2 1
       73 DUPTABLE                         R3 K9 [{"Voting"}]
       74 DUPTABLE                         R4 K14 [{"Upvotes", "DownVotes"}]
       75 LOADN                            R5 3
       76 SETTABLEKS                       R5 R4 K13 ["Upvotes"]
       78 LOADN                            R5 1
       79 SETTABLEKS                       R5 R4 K11 ["DownVotes"]
       81 SETTABLEKS                       R4 R3 K8 ["Voting"]
       83 CALL                             R1 2 1
       84 SETTABLEKS                       R1 R0 K4 ["NotEnoughVotes"]
       86 GETUPVAL                         R2 0
       87 GETTABLEKS                       R1 R2 K7 ["createElement"]
       89 GETUPVAL                         R2 1
       90 DUPTABLE                         R3 K16 [{"Voting", "IncludeVoteCount", "TextSize"}]
       91 DUPTABLE                         R4 K12 [{"UpVotes", "DownVotes"}]
       92 LOADN                            R5 31
       93 SETTABLEKS                       R5 R4 K10 ["UpVotes"]
       95 LOADN                            R5 41
       96 SETTABLEKS                       R5 R4 K11 ["DownVotes"]
       98 SETTABLEKS                       R4 R3 K8 ["Voting"]
      100 LOADB                            R4 1
      101 SETTABLEKS                       R4 R3 K5 ["IncludeVoteCount"]
      103 LOADN                            R4 14
      104 SETTABLEKS                       R4 R3 K15 ["TextSize"]
      106 CALL                             R1 2 1
      107 SETTABLEKS                       R1 R0 K5 ["IncludeVoteCount"]
      109 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETIMPORT                        R4 K1 [script]
       20 GETTABLEKS                       R3 R4 K4 ["Parent"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K8 [PROTO_0]
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R2
       26 RETURN                           R3 1
