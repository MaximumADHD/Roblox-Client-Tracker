PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["get"]
        3 GETUPVAL                         R3 1
        4 GETTABLE                         R2 R3 R0
        5 JUMPIF                           R2 ; [+3]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K1 ["Placeholder"]
        9 CALL                             R1 1 -1
       10 RETURN                           R1 -1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["ScopeType"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["ScopeType"]
        5 GETTABLEKS                       R2 R2 K1 ["RecentUploads"]
        7 JUMPIFNOTEQ                      R1 R2 ; [+32]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K2 ["createElement"]
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R2 R2 K3 ["Icon"]
       15 DUPTABLE                         R3 K7 [{"LayoutOrder", "name", "size"}]
       16 GETTABLEKS                       R4 R0 K4 ["LayoutOrder"]
       18 SETTABLEKS                       R4 R3 K4 ["LayoutOrder"]
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R4 R4 K8 ["Enums"]
       23 GETTABLEKS                       R4 R4 K9 ["IconName"]
       25 GETTABLEKS                       R4 R4 K10 ["ClockSpinReverse"]
       27 SETTABLEKS                       R4 R3 K5 ["name"]
       29 GETUPVAL                         R4 2
       30 GETTABLEKS                       R4 R4 K8 ["Enums"]
       32 GETTABLEKS                       R4 R4 K11 ["IconSize"]
       34 GETTABLEKS                       R4 R4 K12 ["Small"]
       36 SETTABLEKS                       R4 R3 K6 ["size"]
       38 CALL                             R1 2 -1
       39 RETURN                           R1 -1
       40 GETUPVAL                         R1 1
       41 GETTABLEKS                       R1 R1 K2 ["createElement"]
       43 GETUPVAL                         R2 2
       44 GETTABLEKS                       R2 R2 K13 ["Image"]
       46 DUPTABLE                         R3 K16 [{["LayoutOrder"], ["Image"], ["tag"] = "size-400"}]
       47 GETTABLEKS                       R4 R0 K4 ["LayoutOrder"]
       49 SETTABLEKS                       R4 R3 K4 ["LayoutOrder"]
       51 GETTABLEKS                       R5 R0 K0 ["ScopeType"]
       53 GETUPVAL                         R6 3
       54 GETTABLEKS                       R6 R6 K17 ["get"]
       56 GETUPVAL                         R8 4
       57 GETTABLE                         R7 R8 R5
       58 JUMPIF                           R7 ; [+3]
       59 GETUPVAL                         R7 5
       60 GETTABLEKS                       R7 R7 K18 ["Placeholder"]
       62 CALL                             R6 1 1
       63 MOVE                             R4 R6
       64 SETTABLEKS                       R4 R3 K13 ["Image"]
       66 CALL                             R1 2 -1
       67 RETURN                           R1 -1

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
       34 GETTABLEKS                       R5 R5 K12 ["Images"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R4 K13 ["AvailableImages"]
       39 NEWTABLE                         R6 8 0
       41 GETTABLEKS                       R7 R1 K14 ["ScopeType"]
       43 GETTABLEKS                       R7 R7 K15 ["Group"]
       45 GETTABLEKS                       R8 R5 K16 ["GroupFolder"]
       47 SETTABLE                         R8 R6 R7
       48 GETTABLEKS                       R7 R1 K14 ["ScopeType"]
       50 GETTABLEKS                       R7 R7 K17 ["User"]
       52 GETTABLEKS                       R8 R5 K18 ["UserFolder"]
       54 SETTABLE                         R8 R6 R7
       55 GETTABLEKS                       R7 R1 K14 ["ScopeType"]
       57 GETTABLEKS                       R7 R7 K19 ["Universe"]
       59 GETTABLEKS                       R8 R5 K20 ["GameFolder"]
       61 SETTABLE                         R8 R6 R7
       62 GETTABLEKS                       R7 R1 K14 ["ScopeType"]
       64 GETTABLEKS                       R7 R7 K21 ["ProjectPlaces"]
       66 GETTABLEKS                       R8 R5 K22 ["PlacesFolder"]
       68 SETTABLE                         R8 R6 R7
       69 GETTABLEKS                       R7 R1 K14 ["ScopeType"]
       71 GETTABLEKS                       R7 R7 K23 ["Folder"]
       73 GETTABLEKS                       R8 R5 K23 ["Folder"]
       75 SETTABLE                         R8 R6 R7
       76 DUPCLOSURE                       R7 K24 [PROTO_0]
       77 CAPTURE                          VAL R4
       78 CAPTURE                          VAL R6
       79 CAPTURE                          VAL R5
       80 DUPCLOSURE                       R8 K25 [PROTO_1]
       81 CAPTURE                          VAL R1
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R3
       84 CAPTURE                          VAL R4
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R5
       87 RETURN                           R8 1
