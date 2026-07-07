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
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R3 R0 K0 ["ScopeType"]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K0 ["ScopeType"]
        7 GETTABLEKS                       R4 R4 K1 ["RecentUploads"]
        9 JUMPIFNOTEQ                      R3 R4 ; [+3]
       11 LOADNIL                          R2
       12 JUMP                             ; [+13]
       13 GETTABLEKS                       R3 R0 K0 ["ScopeType"]
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R4 R4 K2 ["get"]
       18 GETUPVAL                         R6 3
       19 GETTABLE                         R5 R6 R3
       20 JUMPIF                           R5 ; [+3]
       21 GETUPVAL                         R5 4
       22 GETTABLEKS                       R5 R5 K3 ["Placeholder"]
       24 CALL                             R4 1 1
       25 MOVE                             R2 R4
       26 GETTABLEKS                       R3 R0 K0 ["ScopeType"]
       28 GETUPVAL                         R4 1
       29 GETTABLEKS                       R4 R4 K0 ["ScopeType"]
       31 GETTABLEKS                       R4 R4 K1 ["RecentUploads"]
       33 JUMPIFNOTEQ                      R3 R4 ; [+53]
       35 GETUPVAL                         R3 5
       36 GETTABLEKS                       R3 R3 K4 ["createElement"]
       38 GETUPVAL                         R4 6
       39 GETTABLEKS                       R4 R4 K5 ["Icon"]
       41 DUPTABLE                         R5 K10 [{"LayoutOrder", "name", "variant", "size"}]
       42 GETTABLEKS                       R6 R0 K6 ["LayoutOrder"]
       44 SETTABLEKS                       R6 R5 K6 ["LayoutOrder"]
       46 GETUPVAL                         R6 6
       47 GETTABLEKS                       R6 R6 K11 ["Enums"]
       49 GETTABLEKS                       R6 R6 K12 ["IconName"]
       51 GETTABLEKS                       R6 R6 K13 ["ClockSpinReverse"]
       53 SETTABLEKS                       R6 R5 K7 ["name"]
       55 JUMPIFNOT                        R1 ; [+2]
       56 LOADNIL                          R6
       57 JUMP                             ; [+7]
       58 GETUPVAL                         R6 6
       59 GETTABLEKS                       R6 R6 K11 ["Enums"]
       61 GETTABLEKS                       R6 R6 K14 ["IconVariant"]
       63 GETTABLEKS                       R6 R6 K15 ["Filled"]
       65 SETTABLEKS                       R6 R5 K8 ["variant"]
       67 JUMPIFNOT                        R1 ; [+8]
       68 GETUPVAL                         R6 6
       69 GETTABLEKS                       R6 R6 K11 ["Enums"]
       71 GETTABLEKS                       R6 R6 K16 ["IconSize"]
       73 GETTABLEKS                       R6 R6 K17 ["Small"]
       75 JUMP                             ; [+7]
       76 GETUPVAL                         R6 6
       77 GETTABLEKS                       R6 R6 K11 ["Enums"]
       79 GETTABLEKS                       R6 R6 K18 ["InputSize"]
       81 GETTABLEKS                       R6 R6 K17 ["Small"]
       83 SETTABLEKS                       R6 R5 K9 ["size"]
       85 CALL                             R3 2 -1
       86 RETURN                           R3 -1
       87 JUMPIFNOT                        R1 ; [+15]
       88 GETUPVAL                         R3 5
       89 GETTABLEKS                       R3 R3 K4 ["createElement"]
       91 GETUPVAL                         R4 6
       92 GETTABLEKS                       R4 R4 K19 ["Image"]
       94 DUPTABLE                         R5 K22 [{["LayoutOrder"], ["Image"], ["tag"] = "size-400"}]
       95 GETTABLEKS                       R6 R0 K6 ["LayoutOrder"]
       97 SETTABLEKS                       R6 R5 K6 ["LayoutOrder"]
       99 SETTABLEKS                       R2 R5 K19 ["Image"]
      101 CALL                             R3 2 -1
      102 RETURN                           R3 -1
      103 GETUPVAL                         R3 5
      104 GETTABLEKS                       R3 R3 K4 ["createElement"]
      106 GETUPVAL                         R4 6
      107 GETTABLEKS                       R4 R4 K19 ["Image"]
      109 DUPTABLE                         R5 K23 [{"LayoutOrder", "tag"}]
      110 GETTABLEKS                       R6 R0 K6 ["LayoutOrder"]
      112 SETTABLEKS                       R6 R5 K6 ["LayoutOrder"]
      114 LOADK                            R7 K24 ["size-400 %*"]
      115 GETUPVAL                         R9 7
      116 GETTABLEKS                       R10 R0 K0 ["ScopeType"]
      118 CALL                             R9 1 1
      119 NAMECALL                         R7 R7 K25 ["format"]
      121 CALL                             R7 2 1
      122 MOVE                             R6 R7
      123 SETTABLEKS                       R6 R5 K20 ["tag"]
      125 CALL                             R3 2 -1
      126 RETURN                           R3 -1

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
       39 GETIMPORT                        R6 K5 [require]
       41 GETTABLEKS                       R7 R0 K6 ["Src"]
       43 GETTABLEKS                       R7 R7 K14 ["Flags"]
       45 GETTABLEKS                       R7 R7 K15 ["getFFlagAmrFixScopeSelectorIcons"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K5 [require]
       50 GETTABLEKS                       R8 R0 K6 ["Src"]
       52 GETTABLEKS                       R8 R8 K11 ["Util"]
       54 GETTABLEKS                       R8 R8 K16 ["getScopeIcon"]
       56 CALL                             R7 1 1
       57 NEWTABLE                         R8 8 0
       59 GETTABLEKS                       R9 R1 K17 ["ScopeType"]
       61 GETTABLEKS                       R9 R9 K18 ["Group"]
       63 GETTABLEKS                       R10 R5 K19 ["GroupFolder"]
       65 SETTABLE                         R10 R8 R9
       66 GETTABLEKS                       R9 R1 K17 ["ScopeType"]
       68 GETTABLEKS                       R9 R9 K20 ["User"]
       70 GETTABLEKS                       R10 R5 K21 ["UserFolder"]
       72 SETTABLE                         R10 R8 R9
       73 GETTABLEKS                       R9 R1 K17 ["ScopeType"]
       75 GETTABLEKS                       R9 R9 K22 ["ProjectShared"]
       77 GETTABLEKS                       R10 R5 K23 ["GameFolder"]
       79 SETTABLE                         R10 R8 R9
       80 GETTABLEKS                       R9 R1 K17 ["ScopeType"]
       82 GETTABLEKS                       R9 R9 K24 ["Universe"]
       84 GETTABLEKS                       R10 R5 K23 ["GameFolder"]
       86 SETTABLE                         R10 R8 R9
       87 GETTABLEKS                       R9 R1 K17 ["ScopeType"]
       89 GETTABLEKS                       R9 R9 K25 ["ProjectPlaces"]
       91 GETTABLEKS                       R10 R5 K26 ["PlacesFolder"]
       93 SETTABLE                         R10 R8 R9
       94 GETTABLEKS                       R9 R1 K17 ["ScopeType"]
       96 GETTABLEKS                       R9 R9 K27 ["Folder"]
       98 GETTABLEKS                       R10 R5 K27 ["Folder"]
      100 SETTABLE                         R10 R8 R9
      101 DUPCLOSURE                       R9 K28 [PROTO_0]
      102 CAPTURE                          VAL R4
      103 CAPTURE                          VAL R8
      104 CAPTURE                          VAL R5
      105 DUPCLOSURE                       R10 K29 [PROTO_1]
      106 CAPTURE                          VAL R6
      107 CAPTURE                          VAL R1
      108 CAPTURE                          VAL R4
      109 CAPTURE                          VAL R8
      110 CAPTURE                          VAL R5
      111 CAPTURE                          VAL R2
      112 CAPTURE                          VAL R3
      113 CAPTURE                          VAL R7
      114 RETURN                           R10 1
