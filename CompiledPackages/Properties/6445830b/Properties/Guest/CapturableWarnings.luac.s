PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["type"]
        2 JUMPIFNOTEQKS                    R1 K1 ["expressionWrongType"] ; [+14]
        4 GETIMPORT                        R1 K3 [warn]
        6 LOADK                            R3 K4 ["Property value was %*, not a %*"]
        7 GETTABLEKS                       R5 R0 K5 ["received"]
        9 GETTABLEKS                       R6 R0 K6 ["expected"]
       11 NAMECALL                         R3 R3 K7 ["format"]
       13 CALL                             R3 3 1
       14 MOVE                             R2 R3
       15 CALL                             R1 1 0
       16 RETURN                           R0 0
       17 GETTABLEKS                       R1 R0 K0 ["type"]
       19 JUMPIFNOTEQKS                    R1 K8 ["expressionEvaluateError"] ; [+12]
       21 GETIMPORT                        R1 K3 [warn]
       23 LOADK                            R3 K9 ["Error evaluating property value: %*"]
       24 GETTABLEKS                       R5 R0 K10 ["problem"]
       26 NAMECALL                         R3 R3 K7 ["format"]
       28 CALL                             R3 2 1
       29 MOVE                             R2 R3
       30 CALL                             R1 1 0
       31 RETURN                           R0 0
       32 GETTABLEKS                       R1 R0 K0 ["type"]
       34 JUMPIFNOTEQKS                    R1 K11 ["expressionParseError"] ; [+12]
       36 GETIMPORT                        R1 K3 [warn]
       38 LOADK                            R3 K12 ["Couldn't parse property value: %*"]
       39 GETTABLEKS                       R5 R0 K10 ["problem"]
       41 NAMECALL                         R3 R3 K7 ["format"]
       43 CALL                             R3 2 1
       44 MOVE                             R2 R3
       45 CALL                             R1 1 0
       46 RETURN                           R0 0
       47 GETTABLEKS                       R1 R0 K0 ["type"]
       49 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["defaultWarn"]
        6 RETURN                           R0 1
