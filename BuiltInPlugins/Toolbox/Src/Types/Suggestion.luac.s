PROTO_0:
        0 LOADB                            R2 0
        1 JUMPIFNOTEQKS                    R0 K0 [""] ; [+6]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["categoryIsFreeAsset"]
        6 MOVE                             R3 R1
        7 CALL                             R2 1 1
        8 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Types"]
       15 GETTABLEKS                       R2 R2 K7 ["Category"]
       17 CALL                             R1 1 1
       18 NEWTABLE                         R2 2 0
       20 NEWTABLE                         R3 0 5
       22 DUPTABLE                         R4 K11 [{["name"] = "NPC", ["search"] = "NPC"}]
       23 DUPTABLE                         R5 K13 [{["name"] = "Vehicle", ["search"] = "Vehicle"}]
       24 DUPTABLE                         R6 K15 [{["name"] = "Weapon", ["search"] = "Weapon"}]
       25 DUPTABLE                         R7 K17 [{["name"] = "Building", ["search"] = "Building"}]
       26 DUPTABLE                         R8 K19 [{["name"] = "Light", ["search"] = "Light"}]
       27 SETLIST                          R3 R4 5 [1]
       29 SETTABLEKS                       R3 R2 K20 ["SUGGESTIONS"]
       31 DUPCLOSURE                       R4 K21 [PROTO_0]
       32 CAPTURE                          VAL R1
       33 SETTABLEKS                       R4 R2 K22 ["canHaveSuggestions"]
       35 RETURN                           R2 1
