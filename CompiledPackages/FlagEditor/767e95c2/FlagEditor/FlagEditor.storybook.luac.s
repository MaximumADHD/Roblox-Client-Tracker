PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["theme"]
        3 GETTABLE                         R1 R2 R3
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["createElement"]
        7 GETUPVAL                         R3 2
        8 DUPTABLE                         R4 K5 [{"theme", "device", "preferences", "plugin"}]
        9 SETTABLEKS                       R1 R4 K0 ["theme"]
       11 GETUPVAL                         R6 3
       12 GETTABLEKS                       R7 R0 K6 ["platform"]
       14 GETTABLE                         R5 R6 R7
       15 SETTABLEKS                       R5 R4 K2 ["device"]
       17 GETTABLEKS                       R5 R0 K7 ["settings"]
       19 SETTABLEKS                       R5 R4 K3 ["preferences"]
       21 GETTABLEKS                       R5 R0 K4 ["plugin"]
       23 SETTABLEKS                       R5 R4 K4 ["plugin"]
       25 DUPTABLE                         R5 K9 [{"Child"}]
       26 GETUPVAL                         R6 1
       27 GETTABLEKS                       R6 R6 K1 ["createElement"]
       29 GETUPVAL                         R7 4
       30 MOVE                             R8 R0
       31 CALL                             R6 2 1
       32 SETTABLEKS                       R6 R5 K8 ["Child"]
       34 CALL                             R2 3 -1
       35 RETURN                           R2 -1

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          VAL R0
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["RoactCompat"]
       11 CALL                             R2 1 1
       12 GETIMPORT                        R3 K4 [require]
       14 GETTABLEKS                       R4 R1 K6 ["React"]
       16 CALL                             R3 1 1
       17 GETIMPORT                        R4 K4 [require]
       19 GETTABLEKS                       R5 R1 K7 ["Foundation"]
       21 CALL                             R4 1 1
       22 GETTABLEKS                       R5 R4 K8 ["FoundationProvider"]
       24 GETTABLEKS                       R6 R4 K9 ["Enums"]
       26 GETTABLEKS                       R6 R6 K10 ["Theme"]
       28 GETTABLEKS                       R7 R4 K9 ["Enums"]
       30 GETTABLEKS                       R7 R7 K11 ["Device"]
       32 DUPTABLE                         R8 K14 [{"Light", "Dark"}]
       33 GETTABLEKS                       R9 R6 K12 ["Light"]
       35 SETTABLEKS                       R9 R8 K12 ["Light"]
       37 GETTABLEKS                       R9 R6 K13 ["Dark"]
       39 SETTABLEKS                       R9 R8 K13 ["Dark"]
       41 DUPTABLE                         R9 K17 [{"Console", "Desktop"}]
       42 GETTABLEKS                       R10 R7 K15 ["Console"]
       44 SETTABLEKS                       R10 R9 K15 ["Console"]
       46 GETTABLEKS                       R10 R7 K16 ["Desktop"]
       48 SETTABLEKS                       R10 R9 K16 ["Desktop"]
       50 DUPCLOSURE                       R10 K18 [PROTO_1]
       51 CAPTURE                          VAL R8
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R9
       55 DUPTABLE                         R11 K24 [{["name"] = "FlagEditor", ["storyRoots"], ["mapStory"], ["roact"]}]
       56 NEWTABLE                         R12 0 1
       58 MOVE                             R13 R0
       59 SETLIST                          R12 R13 1 [1]
       61 SETTABLEKS                       R12 R11 K21 ["storyRoots"]
       63 SETTABLEKS                       R10 R11 K22 ["mapStory"]
       65 SETTABLEKS                       R2 R11 K23 ["roact"]
       67 RETURN                           R11 1
