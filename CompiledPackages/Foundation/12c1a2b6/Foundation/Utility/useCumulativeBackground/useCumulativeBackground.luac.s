PROTO_0:
        0 DUPTABLE                         R1 K2 [{"Color3", "Transparency"}]
        1 GETTABLEN                        R2 R0 2
        2 GETTABLEKS                       R2 R2 K0 ["Color3"]
        4 GETTABLEN                        R4 R0 1
        5 GETTABLEKS                       R4 R4 K0 ["Color3"]
        7 GETTABLEN                        R5 R0 2
        8 GETTABLEKS                       R5 R5 K1 ["Transparency"]
       10 NAMECALL                         R2 R2 K3 ["Lerp"]
       12 CALL                             R2 3 1
       13 SETTABLEKS                       R2 R1 K0 ["Color3"]
       15 LOADN                            R2 0
       16 SETTABLEKS                       R2 R1 K1 ["Transparency"]
       18 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 0
        4 MOVE                             R4 R1
        5 CALL                             R3 1 1
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K0 ["joinBindings"]
        9 NEWTABLE                         R5 0 2
       11 MOVE                             R6 R2
       12 MOVE                             R7 R3
       13 SETLIST                          R5 R6 2 [1]
       15 CALL                             R4 1 1
       16 DUPCLOSURE                       R6 K1 [PROTO_0]
       17 NAMECALL                         R4 R4 K2 ["map"]
       19 CALL                             R4 2 -1
       20 RETURN                           R4 -1

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
       18 GETTABLEKS                       R4 R4 K9 ["Types"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Utility"]
       25 GETTABLEKS                       R5 R5 K11 ["useBindable"]
       27 CALL                             R4 1 1
       28 DUPCLOSURE                       R5 K12 [PROTO_1]
       29 CAPTURE                          VAL R4
       30 CAPTURE                          VAL R2
       31 RETURN                           R5 1
