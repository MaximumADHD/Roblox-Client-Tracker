PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 0 0
        6 DUPTABLE                         R3 K2 [{"Child"}]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R4 R5 K0 ["createElement"]
       10 GETUPVAL                         R5 2
       11 DUPTABLE                         R6 K5 [{"AutomaticSize", "Text"}]
       12 GETIMPORT                        R7 K8 [Enum.AutomaticSize.XY]
       14 SETTABLEKS                       R7 R6 K3 ["AutomaticSize"]
       16 LOADK                            R7 K9 ["Child component"]
       17 SETTABLEKS                       R7 R6 K4 ["Text"]
       19 CALL                             R4 2 1
       20 SETTABLEKS                       R4 R3 K1 ["Child"]
       22 CALL                             R0 3 -1
       23 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K2 [{"Style"}]
        5 LOADK                            R3 K3 ["Label"]
        6 SETTABLEKS                       R3 R2 K1 ["Style"]
        8 DUPTABLE                         R3 K5 [{"Child"}]
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R4 R5 K0 ["createElement"]
       12 GETUPVAL                         R5 2
       13 DUPTABLE                         R6 K8 [{"AutomaticSize", "Text"}]
       14 GETIMPORT                        R7 K11 [Enum.AutomaticSize.XY]
       16 SETTABLEKS                       R7 R6 K6 ["AutomaticSize"]
       18 LOADK                            R7 K12 ["Child component"]
       19 SETTABLEKS                       R7 R6 K7 ["Text"]
       21 CALL                             R4 2 1
       22 SETTABLEKS                       R4 R3 K4 ["Child"]
       24 CALL                             R0 3 -1
       25 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K2 [{"Style"}]
        5 LOADK                            R3 K3 ["Title"]
        6 SETTABLEKS                       R3 R2 K1 ["Style"]
        8 DUPTABLE                         R3 K5 [{"Child"}]
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R4 R5 K0 ["createElement"]
       12 GETUPVAL                         R5 2
       13 DUPTABLE                         R6 K8 [{"AutomaticSize", "Text"}]
       14 GETIMPORT                        R7 K11 [Enum.AutomaticSize.XY]
       16 SETTABLEKS                       R7 R6 K6 ["AutomaticSize"]
       18 LOADK                            R7 K12 ["Child component"]
       19 SETTABLEKS                       R7 R6 K7 ["Text"]
       21 CALL                             R4 2 1
       22 SETTABLEKS                       R4 R3 K4 ["Child"]
       24 CALL                             R0 3 -1
       25 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K2 [{"Style"}]
        5 LOADK                            R3 K3 ["Subtitle"]
        6 SETTABLEKS                       R3 R2 K1 ["Style"]
        8 DUPTABLE                         R3 K5 [{"Child"}]
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R4 R5 K0 ["createElement"]
       12 GETUPVAL                         R5 2
       13 DUPTABLE                         R6 K8 [{"AutomaticSize", "Text"}]
       14 GETIMPORT                        R7 K11 [Enum.AutomaticSize.XY]
       16 SETTABLEKS                       R7 R6 K6 ["AutomaticSize"]
       18 LOADK                            R7 K12 ["Child component"]
       19 SETTABLEKS                       R7 R6 K7 ["Text"]
       21 CALL                             R4 2 1
       22 SETTABLEKS                       R4 R3 K4 ["Child"]
       24 CALL                             R0 3 -1
       25 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R5 R0 K2 ["UI"]
       20 GETTABLEKS                       R4 R5 K8 ["Components"]
       22 GETTABLEKS                       R3 R4 K9 ["TitledFrame"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R6 R0 K2 ["UI"]
       29 GETTABLEKS                       R5 R6 K8 ["Components"]
       31 GETTABLEKS                       R4 R5 K10 ["TextLabel"]
       33 CALL                             R3 1 1
       34 DUPTABLE                         R4 K12 [{"stories"}]
       35 NEWTABLE                         R5 0 4
       37 DUPTABLE                         R6 K15 [{"name", "story"}]
       38 LOADK                            R7 K16 ["Horizontal layout (default)"]
       39 SETTABLEKS                       R7 R6 K13 ["name"]
       41 DUPCLOSURE                       R7 K17 [PROTO_0]
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R3
       45 SETTABLEKS                       R7 R6 K14 ["story"]
       47 DUPTABLE                         R7 K15 [{"name", "story"}]
       48 LOADK                            R8 K18 ["Horizontal layout + Label style"]
       49 SETTABLEKS                       R8 R7 K13 ["name"]
       51 DUPCLOSURE                       R8 K19 [PROTO_1]
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R3
       55 SETTABLEKS                       R8 R7 K14 ["story"]
       57 DUPTABLE                         R8 K15 [{"name", "story"}]
       58 LOADK                            R9 K20 ["Vertical layout + Title style"]
       59 SETTABLEKS                       R9 R8 K13 ["name"]
       61 DUPCLOSURE                       R9 K21 [PROTO_2]
       62 CAPTURE                          VAL R1
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R3
       65 SETTABLEKS                       R9 R8 K14 ["story"]
       67 DUPTABLE                         R9 K15 [{"name", "story"}]
       68 LOADK                            R10 K22 ["Vertical layout + Subtitle style"]
       69 SETTABLEKS                       R10 R9 K13 ["name"]
       71 DUPCLOSURE                       R10 K23 [PROTO_3]
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R3
       75 SETTABLEKS                       R10 R9 K14 ["story"]
       77 SETLIST                          R5 R6 4 [1]
       79 SETTABLEKS                       R5 R4 K11 ["stories"]
       81 RETURN                           R4 1
