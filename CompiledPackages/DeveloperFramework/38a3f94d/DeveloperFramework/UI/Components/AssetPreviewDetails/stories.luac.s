PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R0 K7 [{"Everything", "HasScripts", "IsPackage", "IsPackageNoUpdateDate", "LowWidth", "NoVotes", "VotesOnly"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K8 ["createElement"]
        4 GETUPVAL                         R2 1
        5 DUPTABLE                         R3 K14 [{["Favorites"], ["HasScripts"] = True, ["IsPackage"] = True, ["LastUpdatedDate"] = "2016-06-14T18:43:37Z", ["Voting"]}]
        6 DUPTABLE                         R4 K20 [{["Count"] = 10500, ["IsFavorited"] = False, ["OnClick"]}]
        7 DUPCLOSURE                       R5 K21 [PROTO_0]
        8 SETTABLEKS                       R5 R4 K19 ["OnClick"]
       10 SETTABLEKS                       R4 R3 K9 ["Favorites"]
       12 DUPTABLE                         R4 K27 [{["UpVotes"] = 55, ["DownVotes"] = 44, ["CanVote"] = True}]
       13 SETTABLEKS                       R4 R3 K13 ["Voting"]
       15 CALL                             R1 2 1
       16 SETTABLEKS                       R1 R0 K0 ["Everything"]
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R1 R1 K8 ["createElement"]
       21 GETUPVAL                         R2 1
       22 DUPTABLE                         R3 K29 [{["Favorites"] = , ["HasScripts"] = True, ["IsPackage"] = False, ["LastUpdatedDate"] = "2016-06-14T18:43:37Z", ["Voting"]}]
       23 DUPTABLE                         R4 K27 [{["UpVotes"] = 55, ["DownVotes"] = 44, ["CanVote"] = True}]
       24 SETTABLEKS                       R4 R3 K13 ["Voting"]
       26 CALL                             R1 2 1
       27 SETTABLEKS                       R1 R0 K1 ["HasScripts"]
       29 GETUPVAL                         R1 0
       30 GETTABLEKS                       R1 R1 K8 ["createElement"]
       32 GETUPVAL                         R2 1
       33 DUPTABLE                         R3 K30 [{["Favorites"] = , ["HasScripts"] = False, ["IsPackage"] = True, ["LastUpdatedDate"] = "2016-06-14T18:43:37Z", ["Voting"]}]
       34 DUPTABLE                         R4 K27 [{["UpVotes"] = 55, ["DownVotes"] = 44, ["CanVote"] = True}]
       35 SETTABLEKS                       R4 R3 K13 ["Voting"]
       37 CALL                             R1 2 1
       38 SETTABLEKS                       R1 R0 K2 ["IsPackage"]
       40 GETUPVAL                         R1 0
       41 GETTABLEKS                       R1 R1 K8 ["createElement"]
       43 GETUPVAL                         R2 1
       44 DUPTABLE                         R3 K31 [{["Favorites"] = , ["HasScripts"] = False, ["IsPackage"] = True, ["LastUpdatedDate"] = , ["Voting"]}]
       45 DUPTABLE                         R4 K27 [{["UpVotes"] = 55, ["DownVotes"] = 44, ["CanVote"] = True}]
       46 SETTABLEKS                       R4 R3 K13 ["Voting"]
       48 CALL                             R1 2 1
       49 SETTABLEKS                       R1 R0 K3 ["IsPackageNoUpdateDate"]
       51 GETUPVAL                         R1 0
       52 GETTABLEKS                       R1 R1 K8 ["createElement"]
       54 GETUPVAL                         R2 2
       55 DUPTABLE                         R3 K33 [{"Size"}]
       56 GETIMPORT                        R4 K36 [UDim2.new]
       58 LOADN                            R5 0
       59 LOADN                            R6 183
       60 LOADN                            R7 0
       61 LOADN                            R8 30
       62 CALL                             R4 4 1
       63 SETTABLEKS                       R4 R3 K32 ["Size"]
       65 DUPTABLE                         R4 K38 [{"AssetPreviewDetails"}]
       66 GETUPVAL                         R5 0
       67 GETTABLEKS                       R5 R5 K8 ["createElement"]
       69 GETUPVAL                         R6 1
       70 DUPTABLE                         R7 K39 [{["HasScripts"] = True, ["IsPackage"] = True, ["LastUpdatedDate"] = "2016-06-14T18:43:37Z", ["Voting"]}]
       71 DUPTABLE                         R8 K42 [{["UpVotes"] = 55, ["DownVotes"] = 0, ["CanVote"] = True, ["UserVote"] = False}]
       72 SETTABLEKS                       R8 R7 K13 ["Voting"]
       74 CALL                             R5 2 1
       75 SETTABLEKS                       R5 R4 K37 ["AssetPreviewDetails"]
       77 CALL                             R1 3 1
       78 SETTABLEKS                       R1 R0 K4 ["LowWidth"]
       80 GETUPVAL                         R1 0
       81 GETTABLEKS                       R1 R1 K8 ["createElement"]
       83 GETUPVAL                         R2 1
       84 DUPTABLE                         R3 K43 [{["Favorites"] = , ["HasScripts"] = False, ["IsPackage"] = False, ["LastUpdatedDate"] = "2016-06-14T18:43:37Z", ["Voting"]}]
       85 DUPTABLE                         R4 K44 [{["UpVotes"] = 0, ["DownVotes"] = 0}]
       86 SETTABLEKS                       R4 R3 K13 ["Voting"]
       88 CALL                             R1 2 1
       89 SETTABLEKS                       R1 R0 K5 ["NoVotes"]
       91 GETUPVAL                         R1 0
       92 GETTABLEKS                       R1 R1 K8 ["createElement"]
       94 GETUPVAL                         R2 1
       95 DUPTABLE                         R3 K43 [{["Favorites"] = , ["HasScripts"] = False, ["IsPackage"] = False, ["LastUpdatedDate"] = "2016-06-14T18:43:37Z", ["Voting"]}]
       96 DUPTABLE                         R4 K27 [{["UpVotes"] = 55, ["DownVotes"] = 44, ["CanVote"] = True}]
       97 SETTABLEKS                       R4 R3 K13 ["Voting"]
       99 CALL                             R1 2 1
      100 SETTABLEKS                       R1 R0 K6 ["VotesOnly"]
      102 RETURN                           R0 1

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
       32 DUPCLOSURE                       R4 K10 [PROTO_1]
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R3
       36 RETURN                           R4 1
