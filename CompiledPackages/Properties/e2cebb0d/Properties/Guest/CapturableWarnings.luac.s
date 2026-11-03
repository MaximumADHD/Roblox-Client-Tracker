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
        2 JUMPIFNOTEQKS                    R1 K1 ["expressionWrongType"] ; [+13]
        4 GETIMPORT                        R1 K3 [warn]
        6 LOADK                            R2 K4 ["Property value was %*, not a %*"]
        7 GETTABLEKS                       R4 R0 K5 ["received"]
        9 GETTABLEKS                       R5 R0 K6 ["expected"]
       11 NAMECALL                         R2 R2 K7 ["format"]
       13 CALL                             R2 3 1
       14 CALL                             R1 1 0
       15 RETURN                           R0 0
       16 GETTABLEKS                       R1 R0 K0 ["type"]
       18 JUMPIFNOTEQKS                    R1 K8 ["expressionEvaluateError"] ; [+11]
       20 GETIMPORT                        R1 K3 [warn]
       22 LOADK                            R2 K9 ["Error evaluating property value: %*"]
       23 GETTABLEKS                       R4 R0 K10 ["problem"]
       25 NAMECALL                         R2 R2 K7 ["format"]
       27 CALL                             R2 2 1
       28 CALL                             R1 1 0
       29 RETURN                           R0 0
       30 GETTABLEKS                       R1 R0 K0 ["type"]
       32 JUMPIFNOTEQKS                    R1 K11 ["expressionParseError"] ; [+11]
       34 GETIMPORT                        R1 K3 [warn]
       36 LOADK                            R2 K12 ["Couldn't parse property value: %*"]
       37 GETTABLEKS                       R4 R0 K10 ["problem"]
       39 NAMECALL                         R2 R2 K7 ["format"]
       41 CALL                             R2 2 1
       42 CALL                             R1 1 0
       43 RETURN                           R0 0
       44 GETTABLEKS                       R1 R0 K0 ["type"]
       46 RETURN                           R0 0

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
       35 GETTABLEKS                       R3 R2 K17 ["Context"]
       37 LOADK                            R4 K18 ["CapturableWarningsContext"]
       38 SETTABLEKS                       R4 R3 K19 ["displayName"]
       40 RETURN                           R2 1
