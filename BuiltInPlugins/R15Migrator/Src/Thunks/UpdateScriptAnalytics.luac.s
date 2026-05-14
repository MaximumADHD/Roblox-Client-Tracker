PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K1 ["ScriptConversion"]
        5 GETTABLEKS                       R2 R2 K2 ["analyticsSent"]
        7 JUMPIF                           R2 ; [+19]
        8 GETUPVAL                         R2 0
        9 LOADK                            R4 K3 ["onInitialScriptAnalysisScan"]
       10 NAMECALL                         R2 R2 K4 ["getHandler"]
       12 CALL                             R2 2 1
       13 GETUPVAL                         R3 1
       14 GETUPVAL                         R5 2
       15 LENGTH                           R4 R5
       16 GETTABLEKS                       R5 R1 K1 ["ScriptConversion"]
       18 GETTABLEKS                       R5 R5 K5 ["completedScripts"]
       20 CALL                             R2 3 0
       21 GETUPVAL                         R4 3
       22 LOADB                            R5 1
       23 CALL                             R4 1 -1
       24 NAMECALL                         R2 R0 K6 ["dispatch"]
       26 CALL                             R2 -1 0
       27 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R2
        2 CAPTURE                          VAL R1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U0
        5 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Src"]
        9 GETTABLEKS                       R1 R1 K5 ["Actions"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R3 R1 K8 ["SetScriptAnalyticsSent"]
       15 CALL                             R2 1 1
       16 DUPCLOSURE                       R3 K9 [PROTO_1]
       17 CAPTURE                          VAL R2
       18 RETURN                           R3 1
