PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["type"]
        2 JUMPIFNOTEQKS                    R1 K1 ["expressionNotANumber"] ; [+12]
        4 GETIMPORT                        R1 K3 [warn]
        6 LOADK                            R3 K4 ["Property value was %*, not a number"]
        7 GETTABLEKS                       R5 R0 K5 ["received"]
        9 NAMECALL                         R3 R3 K6 ["format"]
       11 CALL                             R3 2 1
       12 MOVE                             R2 R3
       13 CALL                             R1 1 0
       14 RETURN                           R0 0
       15 GETTABLEKS                       R1 R0 K0 ["type"]
       17 JUMPIFNOTEQKS                    R1 K7 ["expressionEvaluateError"] ; [+12]
       19 GETIMPORT                        R1 K3 [warn]
       21 LOADK                            R3 K8 ["Error evaluating property value: %*"]
       22 GETTABLEKS                       R5 R0 K9 ["problem"]
       24 NAMECALL                         R3 R3 K6 ["format"]
       26 CALL                             R3 2 1
       27 MOVE                             R2 R3
       28 CALL                             R1 1 0
       29 RETURN                           R0 0
       30 GETTABLEKS                       R1 R0 K0 ["type"]
       32 JUMPIFNOTEQKS                    R1 K10 ["expressionParseError"] ; [+12]
       34 GETIMPORT                        R1 K3 [warn]
       36 LOADK                            R3 K11 ["Couldn't parse property value: %*"]
       37 GETTABLEKS                       R5 R0 K9 ["problem"]
       39 NAMECALL                         R3 R3 K6 ["format"]
       41 CALL                             R3 2 1
       42 MOVE                             R2 R3
       43 CALL                             R1 1 0
       44 RETURN                           R0 0
       45 GETTABLEKS                       R1 R0 K0 ["type"]
       47 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["defaultWarn"]
        6 RETURN                           R0 1
