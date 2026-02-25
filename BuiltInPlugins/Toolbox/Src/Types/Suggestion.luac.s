PROTO_0:
        0 LOADB                            R2 0
        1 JUMPIFNOTEQKS                    R0 K0 [""] ; [+6]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K1 ["categoryIsFreeAsset"]
        6 MOVE                             R3 R1
        7 CALL                             R2 1 1
        8 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R4 R0 K5 ["Src"]
       13 GETTABLEKS                       R3 R4 K6 ["Types"]
       15 GETTABLEKS                       R2 R3 K7 ["Category"]
       17 CALL                             R1 1 1
       18 NEWTABLE                         R2 2 0
       20 NEWTABLE                         R3 0 5
       22 DUPTABLE                         R4 K10 [{"name", "search"}]
       23 LOADK                            R5 K11 ["NPC"]
       24 SETTABLEKS                       R5 R4 K8 ["name"]
       26 LOADK                            R5 K11 ["NPC"]
       27 SETTABLEKS                       R5 R4 K9 ["search"]
       29 DUPTABLE                         R5 K10 [{"name", "search"}]
       30 LOADK                            R6 K12 ["Vehicle"]
       31 SETTABLEKS                       R6 R5 K8 ["name"]
       33 LOADK                            R6 K12 ["Vehicle"]
       34 SETTABLEKS                       R6 R5 K9 ["search"]
       36 DUPTABLE                         R6 K10 [{"name", "search"}]
       37 LOADK                            R7 K13 ["Weapon"]
       38 SETTABLEKS                       R7 R6 K8 ["name"]
       40 LOADK                            R7 K13 ["Weapon"]
       41 SETTABLEKS                       R7 R6 K9 ["search"]
       43 DUPTABLE                         R7 K10 [{"name", "search"}]
       44 LOADK                            R8 K14 ["Building"]
       45 SETTABLEKS                       R8 R7 K8 ["name"]
       47 LOADK                            R8 K14 ["Building"]
       48 SETTABLEKS                       R8 R7 K9 ["search"]
       50 DUPTABLE                         R8 K10 [{"name", "search"}]
       51 LOADK                            R9 K15 ["Light"]
       52 SETTABLEKS                       R9 R8 K8 ["name"]
       54 LOADK                            R9 K15 ["Light"]
       55 SETTABLEKS                       R9 R8 K9 ["search"]
       57 SETLIST                          R3 R4 5 [1]
       59 SETTABLEKS                       R3 R2 K16 ["SUGGESTIONS"]
       61 DUPCLOSURE                       R4 K17 [PROTO_0]
       62 CAPTURE                          VAL R1
       63 SETTABLEKS                       R4 R2 K18 ["canHaveSuggestions"]
       65 RETURN                           R2 1
