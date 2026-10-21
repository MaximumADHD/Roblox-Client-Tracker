PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 0 0
        6 DUPTABLE                         R3 K2 [{"Child"}]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K0 ["createElement"]
       10 GETUPVAL                         R5 2
       11 DUPTABLE                         R6 K6 [{["AutomaticSize"], ["Text"] = "Child component"}]
       12 GETIMPORT                        R7 K9 [Enum.AutomaticSize.XY]
       14 SETTABLEKS                       R7 R6 K3 ["AutomaticSize"]
       16 CALL                             R4 2 1
       17 SETTABLEKS                       R4 R3 K1 ["Child"]
       19 CALL                             R0 3 -1
       20 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K3 [{["Style"] = "Label"}]
        5 DUPTABLE                         R3 K5 [{"Child"}]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K0 ["createElement"]
        9 GETUPVAL                         R5 2
       10 DUPTABLE                         R6 K9 [{["AutomaticSize"], ["Text"] = "Child component"}]
       11 GETIMPORT                        R7 K12 [Enum.AutomaticSize.XY]
       13 SETTABLEKS                       R7 R6 K6 ["AutomaticSize"]
       15 CALL                             R4 2 1
       16 SETTABLEKS                       R4 R3 K4 ["Child"]
       18 CALL                             R0 3 -1
       19 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K3 [{["Style"] = "Title"}]
        5 DUPTABLE                         R3 K5 [{"Child"}]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K0 ["createElement"]
        9 GETUPVAL                         R5 2
       10 DUPTABLE                         R6 K9 [{["AutomaticSize"], ["Text"] = "Child component"}]
       11 GETIMPORT                        R7 K12 [Enum.AutomaticSize.XY]
       13 SETTABLEKS                       R7 R6 K6 ["AutomaticSize"]
       15 CALL                             R4 2 1
       16 SETTABLEKS                       R4 R3 K4 ["Child"]
       18 CALL                             R0 3 -1
       19 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K3 [{["Style"] = "Subtitle"}]
        5 DUPTABLE                         R3 K5 [{"Child"}]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K0 ["createElement"]
        9 GETUPVAL                         R5 2
       10 DUPTABLE                         R6 K9 [{["AutomaticSize"], ["Text"] = "Child component"}]
       11 GETIMPORT                        R7 K12 [Enum.AutomaticSize.XY]
       13 SETTABLEKS                       R7 R6 K6 ["AutomaticSize"]
       15 CALL                             R4 2 1
       16 SETTABLEKS                       R4 R3 K4 ["Child"]
       18 CALL                             R0 3 -1
       19 RETURN                           R0 -1

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
       18 GETTABLEKS                       R3 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R3 K8 ["Components"]
       22 GETTABLEKS                       R3 R3 K9 ["TitledFrame"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R4 R0 K2 ["UI"]
       29 GETTABLEKS                       R4 R4 K8 ["Components"]
       31 GETTABLEKS                       R4 R4 K10 ["TextLabel"]
       33 CALL                             R3 1 1
       34 DUPTABLE                         R4 K12 [{"stories"}]
       35 NEWTABLE                         R5 0 4
       37 DUPTABLE                         R6 K16 [{["name"] = "Horizontal layout (default)", ["story"]}]
       38 DUPCLOSURE                       R7 K17 [PROTO_0]
       39 CAPTURE                          VAL R1
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R3
       42 SETTABLEKS                       R7 R6 K15 ["story"]
       44 DUPTABLE                         R7 K19 [{["name"] = "Horizontal layout + Label style", ["story"]}]
       45 DUPCLOSURE                       R8 K20 [PROTO_1]
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R3
       49 SETTABLEKS                       R8 R7 K15 ["story"]
       51 DUPTABLE                         R8 K22 [{["name"] = "Vertical layout + Title style", ["story"]}]
       52 DUPCLOSURE                       R9 K23 [PROTO_2]
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R3
       56 SETTABLEKS                       R9 R8 K15 ["story"]
       58 DUPTABLE                         R9 K25 [{["name"] = "Vertical layout + Subtitle style", ["story"]}]
       59 DUPCLOSURE                       R10 K26 [PROTO_3]
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R3
       63 SETTABLEKS                       R10 R9 K15 ["story"]
       65 SETLIST                          R5 R6 4 [1]
       67 SETTABLEKS                       R5 R4 K11 ["stories"]
       69 RETURN                           R4 1
