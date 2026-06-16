PROTO_0:
        0 GETIMPORT                        R1 K2 [UDim2.fromOffset]
        2 MULK                             R2 R0 K3 [50]
        3 MULK                             R3 R0 K3 [50]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R3 R1 K1 ["cycleTime"]
        5 GETIMPORT                        R4 K4 [NumberRange.new]
        7 GETTABLEKS                       R5 R1 K5 ["rangeMin"]
        9 GETTABLEKS                       R6 R1 K6 ["rangeMax"]
       11 CALL                             R4 2 -1
       12 CALL                             R2 -1 1
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K7 ["createElement"]
       16 GETUPVAL                         R4 2
       17 DUPTABLE                         R5 K9 [{"Size"}]
       18 GETIMPORT                        R6 K12 [UDim2.fromOffset]
       20 GETTABLEKS                       R8 R1 K6 ["rangeMax"]
       22 MULK                             R7 R8 K13 [50]
       23 GETTABLEKS                       R9 R1 K6 ["rangeMax"]
       25 MULK                             R8 R9 K13 [50]
       26 CALL                             R6 2 1
       27 SETTABLEKS                       R6 R5 K8 ["Size"]
       29 DUPTABLE                         R6 K15 [{"Icon"}]
       30 GETUPVAL                         R7 1
       31 GETTABLEKS                       R7 R7 K7 ["createElement"]
       33 GETUPVAL                         R8 3
       34 DUPTABLE                         R9 K18 [{"Image", "Size", "tag"}]
       35 LOADK                            R10 K19 ["reactions/heart"]
       36 SETTABLEKS                       R10 R9 K16 ["Image"]
       38 DUPCLOSURE                       R12 K20 [PROTO_0]
       39 NAMECALL                         R10 R2 K21 ["map"]
       41 CALL                             R10 2 1
       42 SETTABLEKS                       R10 R9 K8 ["Size"]
       44 LOADK                            R10 K22 ["anchor-center-center position-center-center"]
       45 SETTABLEKS                       R10 R9 K17 ["tag"]
       47 CALL                             R7 2 1
       48 SETTABLEKS                       R7 R6 K14 ["Icon"]
       50 CALL                             R3 3 -1
       51 RETURN                           R3 -1

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
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R4 K9 ["Image"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Components"]
       25 GETTABLEKS                       R5 R5 K10 ["View"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETIMPORT                        R6 K1 [script]
       32 GETTABLEKS                       R6 R6 K4 ["Parent"]
       34 CALL                             R5 1 1
       35 DUPCLOSURE                       R6 K11 [PROTO_1]
       36 CAPTURE                          VAL R5
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R3
       40 DUPTABLE                         R7 K15 [{"summary", "stories", "controls"}]
       41 LOADK                            R8 K16 ["Creates a binding used for various pulsating effects"]
       42 SETTABLEKS                       R8 R7 K12 ["summary"]
       44 NEWTABLE                         R8 0 1
       46 DUPTABLE                         R9 K19 [{"name", "story"}]
       47 LOADK                            R10 K20 ["Example"]
       48 SETTABLEKS                       R10 R9 K17 ["name"]
       50 SETTABLEKS                       R6 R9 K18 ["story"]
       52 SETLIST                          R8 R9 1 [1]
       54 SETTABLEKS                       R8 R7 K13 ["stories"]
       56 DUPTABLE                         R8 K24 [{"cycleTime", "rangeMin", "rangeMax"}]
       57 LOADN                            R9 1
       58 SETTABLEKS                       R9 R8 K21 ["cycleTime"]
       60 LOADK                            R9 K25 [0.5]
       61 SETTABLEKS                       R9 R8 K22 ["rangeMin"]
       63 LOADK                            R9 K26 [0.75]
       64 SETTABLEKS                       R9 R8 K23 ["rangeMax"]
       66 SETTABLEKS                       R8 R7 K14 ["controls"]
       68 RETURN                           R7 1
