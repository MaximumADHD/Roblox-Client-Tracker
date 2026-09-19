MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["HttpWrapper"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R2 K3 [script]
       14 GETTABLEKS                       R2 R2 K6 ["Api"]
       16 GETTABLEKS                       R2 R2 K7 ["CreatorHomeContent"]
       18 CALL                             R1 1 1
       19 GETIMPORT                        R2 K1 [require]
       21 GETIMPORT                        R3 K3 [script]
       23 GETTABLEKS                       R3 R3 K6 ["Api"]
       25 GETTABLEKS                       R3 R3 K8 ["DevForum"]
       27 CALL                             R2 1 1
       28 GETIMPORT                        R3 K1 [require]
       30 GETIMPORT                        R4 K3 [script]
       32 GETTABLEKS                       R4 R4 K6 ["Api"]
       34 GETTABLEKS                       R4 R4 K9 ["Groups"]
       36 CALL                             R3 1 1
       37 GETIMPORT                        R4 K1 [require]
       39 GETIMPORT                        R5 K3 [script]
       41 GETTABLEKS                       R5 R5 K6 ["Api"]
       43 GETTABLEKS                       R5 R5 K10 ["LandingEligibility"]
       45 CALL                             R4 1 1
       46 GETIMPORT                        R5 K1 [require]
       48 GETIMPORT                        R6 K3 [script]
       50 GETTABLEKS                       R6 R6 K6 ["Api"]
       52 GETTABLEKS                       R6 R6 K11 ["MockDevForum"]
       54 CALL                             R5 1 1
       55 GETIMPORT                        R6 K1 [require]
       57 GETIMPORT                        R7 K3 [script]
       59 GETTABLEKS                       R7 R7 K6 ["Api"]
       61 GETTABLEKS                       R7 R7 K12 ["Signals"]
       63 CALL                             R6 1 1
       64 GETIMPORT                        R7 K1 [require]
       66 GETIMPORT                        R8 K3 [script]
       68 GETTABLEKS                       R8 R8 K6 ["Api"]
       70 GETTABLEKS                       R8 R8 K13 ["UserScreen"]
       72 CALL                             R7 1 1
       73 GETIMPORT                        R8 K1 [require]
       75 GETIMPORT                        R9 K3 [script]
       77 GETTABLEKS                       R9 R9 K6 ["Api"]
       79 GETTABLEKS                       R9 R9 K14 ["YourPlaceReengagement"]
       81 CALL                             R8 1 1
       82 GETIMPORT                        R9 K17 [table.freeze]
       84 DUPTABLE                         R10 K18 [{"CreatorHomeContent", "DevForum", "Groups", "LandingEligibility", "MockDevForum", "Signals", "UserScreen", "YourPlaceReengagement"}]
       85 SETTABLEKS                       R1 R10 K7 ["CreatorHomeContent"]
       87 SETTABLEKS                       R2 R10 K8 ["DevForum"]
       89 SETTABLEKS                       R3 R10 K9 ["Groups"]
       91 SETTABLEKS                       R4 R10 K10 ["LandingEligibility"]
       93 SETTABLEKS                       R5 R10 K11 ["MockDevForum"]
       95 SETTABLEKS                       R6 R10 K12 ["Signals"]
       97 SETTABLEKS                       R7 R10 K13 ["UserScreen"]
       99 SETTABLEKS                       R8 R10 K14 ["YourPlaceReengagement"]
      101 CALL                             R9 1 -1
      102 RETURN                           R9 -1
