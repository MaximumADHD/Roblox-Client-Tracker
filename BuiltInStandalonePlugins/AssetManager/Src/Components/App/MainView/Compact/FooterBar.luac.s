PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R1 K0 ["ShowSearchOptions"]
        4 NEWTABLE                         R3 1 0
        6 JUMPIFNOT                        R2 ; [+11]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K1 ["createElement"]
       10 GETUPVAL                         R5 2
       11 DUPTABLE                         R6 K3 [{"LayoutOrder"}]
       12 LOADN                            R7 1
       13 SETTABLEKS                       R7 R6 K2 ["LayoutOrder"]
       15 CALL                             R4 2 1
       16 SETTABLEKS                       R4 R3 K4 ["SearchButtons"]
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R4 R4 K1 ["createElement"]
       21 GETUPVAL                         R5 3
       22 GETTABLEKS                       R5 R5 K5 ["View"]
       24 DUPTABLE                         R6 K8 [{"LayoutOrder", "tag", "testId"}]
       25 GETTABLEKS                       R7 R0 K2 ["LayoutOrder"]
       27 SETTABLEKS                       R7 R6 K2 ["LayoutOrder"]
       29 GETIMPORT                        R8 K10 [next]
       31 MOVE                             R9 R3
       32 CALL                             R8 1 1
       33 JUMPIFEQKNIL                     R8 ; [+3]
       35 LOADK                            R7 K11 ["row size-full-0 auto-y gap-small padding-small"]
       36 JUMP                             ; [+1]
       37 LOADNIL                          R7
       38 SETTABLEKS                       R7 R6 K6 ["tag"]
       40 LOADK                            R7 K12 ["compact-footer-bar"]
       41 SETTABLEKS                       R7 R6 K7 ["testId"]
       43 MOVE                             R7 R3
       44 CALL                             R4 3 -1
       45 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Components"]
       27 GETTABLEKS                       R4 R4 K11 ["Shared"]
       29 GETTABLEKS                       R4 R4 K12 ["SearchButtons"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K9 ["Src"]
       36 GETTABLEKS                       R5 R5 K13 ["Hooks"]
       38 GETTABLEKS                       R5 R5 K14 ["useSearchInfo"]
       40 CALL                             R4 1 1
       41 DUPCLOSURE                       R5 K15 [PROTO_0]
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R2
       46 RETURN                           R5 1
