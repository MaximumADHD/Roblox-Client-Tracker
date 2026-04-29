PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"AutomaticSize", "Text"}]
        5 GETIMPORT                        R4 K6 [Enum.AutomaticSize.XY]
        7 SETTABLEKS                       R4 R3 K1 ["AutomaticSize"]
        9 LOADK                            R5 K7 ["Current platform: "]
       10 GETTABLEKS                       R6 R0 K8 ["platform"]
       12 CONCAT                           R4 R5 R6
       13 SETTABLEKS                       R4 R3 K2 ["Text"]
       15 CALL                             R1 2 -1
       16 RETURN                           R1 -1

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
       22 GETTABLEKS                       R3 R4 K9 ["TextLabel"]
       24 CALL                             R2 1 1
       25 DUPTABLE                         R3 K11 [{"story"}]
       26 DUPCLOSURE                       R4 K12 [PROTO_0]
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R2
       29 SETTABLEKS                       R4 R3 K10 ["story"]
       31 RETURN                           R3 1
