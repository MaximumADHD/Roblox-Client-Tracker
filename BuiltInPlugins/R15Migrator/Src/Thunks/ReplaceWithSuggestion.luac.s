PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K1 ["ScriptConversion"]
        5 GETTABLEKS                       R2 R2 K2 ["diagnostics"]
        7 GETUPVAL                         R4 0
        8 GETTABLE                         R3 R2 R4
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K3 ["replaceWithSuggestion"]
       12 GETUPVAL                         R5 0
       13 GETUPVAL                         R6 2
       14 GETUPVAL                         R7 3
       15 GETUPVAL                         R8 4
       16 MOVE                             R9 R3
       17 GETUPVAL                         R10 5
       18 CALL                             R4 6 0
       19 GETUPVAL                         R4 3
       20 GETUPVAL                         R6 0
       21 NAMECALL                         R4 R4 K4 ["getScriptInstanceFromGUID"]
       23 CALL                             R4 2 1
       24 GETUPVAL                         R5 6
       25 JUMPIFNOT                        R5 ; [+11]
       26 GETUPVAL                         R7 7
       27 DUPTABLE                         R8 K6 [{"scriptInstance"}]
       28 NAMECALL                         R9 R4 K7 ["GetFullName"]
       30 CALL                             R9 1 1
       31 SETTABLEKS                       R9 R8 K5 ["scriptInstance"]
       33 CALL                             R7 1 -1
       34 NAMECALL                         R5 R0 K8 ["dispatch"]
       36 CALL                             R5 -1 0
       37 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R8 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          VAL R2
        5 CAPTURE                          VAL R3
        6 CAPTURE                          VAL R7
        7 CAPTURE                          VAL R6
        8 CAPTURE                          UPVAL U1
        9 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Actions"]
       13 GETTABLEKS                       R2 R2 K8 ["SetProcessResult"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R0 K6 ["Src"]
       18 GETTABLEKS                       R2 R2 K9 ["Util"]
       20 GETIMPORT                        R3 K5 [require]
       22 GETTABLEKS                       R4 R2 K10 ["ScriptReplacement"]
       24 CALL                             R3 1 1
       25 DUPCLOSURE                       R4 K11 [PROTO_1]
       26 CAPTURE                          VAL R3
       27 CAPTURE                          VAL R1
       28 RETURN                           R4 1
