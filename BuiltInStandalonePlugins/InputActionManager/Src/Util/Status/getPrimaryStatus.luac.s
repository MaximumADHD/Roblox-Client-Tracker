PROTO_0:
        0 JUMPIFNOT                        R0 ; [+3]
        1 LENGTH                           R1 R0
        2 JUMPIFNOTEQKN                    R1 K0 [0] ; [+6]
        4 GETIMPORT                        R1 K4 [Enum.PropertyStatus.Ok]
        6 LOADNIL                          R2
        7 LOADNIL                          R3
        8 RETURN                           R1 3
        9 LOADN                            R1 0
       10 MOVE                             R2 R0
       11 LOADNIL                          R3
       12 LOADNIL                          R4
       13 FORGPREP                         R2
       14 MOVE                             R8 R1
       15 GETUPVAL                         R9 0
       16 GETTABLEKS                       R10 R6 K5 ["Severity"]
       18 CALL                             R9 1 -1
       19 FASTCALL                         MATH_MAX ; [+2]
       20 GETIMPORT                        R7 K8 [math.max]
       22 CALL                             R7 -1 1
       23 MOVE                             R1 R7
       24 FORGLOOP                         R2 2 ; [-11]
       26 MOVE                             R2 R0
       27 LOADNIL                          R3
       28 LOADNIL                          R4
       29 FORGPREP                         R2
       30 GETUPVAL                         R7 0
       31 GETTABLEKS                       R8 R6 K5 ["Severity"]
       33 CALL                             R7 1 1
       34 JUMPIFNOTEQ                      R7 R1 ; [+8]
       36 GETTABLEKS                       R7 R6 K5 ["Severity"]
       38 GETTABLEKS                       R8 R6 K9 ["Title"]
       40 GETTABLEKS                       R9 R6 K10 ["Message"]
       42 RETURN                           R7 3
       43 FORGLOOP                         R2 2 ; [-14]
       45 GETIMPORT                        R2 K4 [Enum.PropertyStatus.Ok]
       47 LOADNIL                          R3
       48 LOADNIL                          R4
       49 RETURN                           R2 3

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETIMPORT                        R3 K1 [script]
       18 GETTABLEKS                       R3 R3 K8 ["Parent"]
       20 GETTABLEKS                       R3 R3 K9 ["getSeverityRank"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K10 [PROTO_0]
       24 CAPTURE                          VAL R2
       25 RETURN                           R3 1
