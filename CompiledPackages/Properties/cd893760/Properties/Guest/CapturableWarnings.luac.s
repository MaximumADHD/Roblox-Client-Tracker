PROTO_0:
        0 DUPTABLE                         R1 K3 [{[1] = "ok", ["value"]}]
        1 SETTABLEKS                       R0 R1 K2 ["value"]
        3 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R1 K3 [{[1] = "error", ["warning"]}]
        1 SETTABLEKS                       R0 R1 K2 ["warning"]
        3 RETURN                           R1 1

PROTO_2:
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
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 4 0
       16 DUPCLOSURE                       R3 K8 [PROTO_0]
       17 SETTABLEKS                       R3 R2 K9 ["ok"]
       19 DUPCLOSURE                       R3 K10 [PROTO_1]
       20 SETTABLEKS                       R3 R2 K11 ["error"]
       22 DUPCLOSURE                       R3 K12 [PROTO_2]
       23 SETTABLEKS                       R3 R2 K13 ["defaultWarn"]
       25 GETTABLEKS                       R3 R1 K14 ["createContext"]
       27 DUPTABLE                         R4 K16 [{"warn"}]
       28 GETTABLEKS                       R5 R2 K13 ["defaultWarn"]
       30 SETTABLEKS                       R5 R4 K15 ["warn"]
       32 CALL                             R3 1 1
       33 SETTABLEKS                       R3 R2 K17 ["Context"]
       35 RETURN                           R2 1
