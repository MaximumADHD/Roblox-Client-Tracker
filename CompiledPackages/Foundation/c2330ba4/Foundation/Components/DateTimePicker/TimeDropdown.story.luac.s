PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K2 [{"onItemChanged"}]
        5 DUPCLOSURE                       R3 K3 [PROTO_0]
        6 SETTABLEKS                       R3 R2 K1 ["onItemChanged"]
        8 CALL                             R0 2 -1
        9 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETIMPORT                        R6 K1 [script]
       18 GETTABLEKS                       R5 R6 K4 ["Parent"]
       20 GETTABLEKS                       R4 R5 K8 ["TimeDropdown"]
       22 CALL                             R3 1 1
       23 DUPTABLE                         R4 K11 [{"summary", "stories"}]
       24 LOADK                            R5 K8 ["TimeDropdown"]
       25 SETTABLEKS                       R5 R4 K9 ["summary"]
       27 NEWTABLE                         R5 0 1
       29 DUPTABLE                         R6 K14 [{"name", "story"}]
       30 LOADK                            R7 K8 ["TimeDropdown"]
       31 SETTABLEKS                       R7 R6 K12 ["name"]
       33 DUPCLOSURE                       R7 K15 [PROTO_1]
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R3
       36 SETTABLEKS                       R7 R6 K13 ["story"]
       38 SETLIST                          R5 R6 1 [1]
       40 SETTABLEKS                       R5 R4 K10 ["stories"]
       42 RETURN                           R4 1
