PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["GetKeys"]
        2 CALL                             R1 1 1
        3 GETIMPORT                        R2 K2 [pairs]
        5 MOVE                             R3 R1
        6 CALL                             R2 1 3
        7 FORGPREP_NEXT                    R2
        8 GETIMPORT                        R7 K4 [print]
       10 LOADK                            R8 K5 ["{"]
       11 GETTABLEKS                       R9 R6 K6 ["Time"]
       13 GETTABLEKS                       R10 R6 K7 ["Value"]
       15 GETTABLEKS                       R11 R6 K8 ["Interpolation"]
       17 GETTABLEKS                       R11 R11 K9 ["Name"]
       19 GETTABLEKS                       R12 R6 K10 ["LeftTangent"]
       21 GETTABLEKS                       R13 R6 K11 ["RightTangent"]
       23 LOADK                            R14 K12 ["}"]
       24 CALL                             R7 7 0
       25 FORGLOOP                         R2 2 ; [-18]
       27 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
