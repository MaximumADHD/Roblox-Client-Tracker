PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R0 1
        4 SETUPVAL                         R0 0
        5 GETIMPORT                        R0 K1 [script]
        7 LOADK                            R2 K2 ["R15Migrator"]
        8 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
       10 CALL                             R0 2 1
       11 GETIMPORT                        R1 K5 [require]
       13 GETTABLEKS                       R4 R0 K6 ["Src"]
       15 GETTABLEKS                       R3 R4 K7 ["Util"]
       17 GETTABLEKS                       R2 R3 K8 ["DebugFlags"]
       19 CALL                             R1 1 1
       20 GETTABLEKS                       R2 R1 K9 ["EnableRoactConfigs"]
       22 CALL                             R2 0 1
       23 JUMPIFNOT                        R2 ; [+20]
       24 GETIMPORT                        R2 K5 [require]
       26 GETTABLEKS                       R4 R0 K10 ["Packages"]
       28 GETTABLEKS                       R3 R4 K11 ["Roact"]
       30 CALL                             R2 1 1
       31 GETTABLEKS                       R3 R2 K12 ["setGlobalConfig"]
       33 DUPTABLE                         R4 K16 [{"elementTracing", "propValidation", "typeChecks"}]
       34 LOADB                            R5 1
       35 SETTABLEKS                       R5 R4 K13 ["elementTracing"]
       37 LOADB                            R5 1
       38 SETTABLEKS                       R5 R4 K14 ["propValidation"]
       40 LOADB                            R5 1
       41 SETTABLEKS                       R5 R4 K15 ["typeChecks"]
       43 CALL                             R3 1 0
       44 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 LOADB                            R0 0
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          REF R0
        4 CLOSEUPVALS                      R0
        5 RETURN                           R1 1
