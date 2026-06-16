PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["ScopeType"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["ScopeType"]
        5 GETTABLEKS                       R3 R3 K1 ["RecentUploads"]
        7 JUMPIFNOTEQ                      R2 R3 ; [+41]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K2 ["createElement"]
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R2 R2 K3 ["Icon"]
       15 DUPTABLE                         R3 K8 [{"LayoutOrder", "name", "variant", "size"}]
       16 GETTABLEKS                       R4 R0 K4 ["LayoutOrder"]
       18 SETTABLEKS                       R4 R3 K4 ["LayoutOrder"]
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R4 R4 K9 ["Enums"]
       23 GETTABLEKS                       R4 R4 K10 ["IconName"]
       25 GETTABLEKS                       R4 R4 K11 ["ClockSpinReverse"]
       27 SETTABLEKS                       R4 R3 K5 ["name"]
       29 GETUPVAL                         R4 2
       30 GETTABLEKS                       R4 R4 K9 ["Enums"]
       32 GETTABLEKS                       R4 R4 K12 ["IconVariant"]
       34 GETTABLEKS                       R4 R4 K13 ["Filled"]
       36 SETTABLEKS                       R4 R3 K6 ["variant"]
       38 GETUPVAL                         R4 2
       39 GETTABLEKS                       R4 R4 K9 ["Enums"]
       41 GETTABLEKS                       R4 R4 K14 ["InputSize"]
       43 GETTABLEKS                       R4 R4 K15 ["Small"]
       45 SETTABLEKS                       R4 R3 K7 ["size"]
       47 CALL                             R1 2 1
       48 RETURN                           R1 1
       49 GETUPVAL                         R1 1
       50 GETTABLEKS                       R1 R1 K2 ["createElement"]
       52 GETUPVAL                         R2 2
       53 GETTABLEKS                       R2 R2 K16 ["Image"]
       55 DUPTABLE                         R3 K18 [{"LayoutOrder", "tag"}]
       56 GETTABLEKS                       R4 R0 K4 ["LayoutOrder"]
       58 SETTABLEKS                       R4 R3 K4 ["LayoutOrder"]
       60 LOADK                            R5 K19 ["%* size-400"]
       61 GETUPVAL                         R7 3
       62 GETTABLEKS                       R8 R0 K0 ["ScopeType"]
       64 CALL                             R7 1 1
       65 NAMECALL                         R5 R5 K20 ["format"]
       67 CALL                             R5 2 1
       68 MOVE                             R4 R5
       69 SETTABLEKS                       R4 R3 K17 ["tag"]
       71 CALL                             R1 2 1
       72 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Packages"]
       18 GETTABLEKS                       R3 R3 K9 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Packages"]
       25 GETTABLEKS                       R4 R4 K10 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Util"]
       34 GETTABLEKS                       R5 R5 K12 ["getScopeIcon"]
       36 CALL                             R4 1 1
       37 DUPCLOSURE                       R5 K13 [PROTO_0]
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R4
       42 RETURN                           R5 1
