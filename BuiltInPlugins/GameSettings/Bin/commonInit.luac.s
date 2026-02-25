PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R0 1
        4 SETUPVAL                         R0 0
        5 GETIMPORT                        R2 K1 [script]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R3 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R3 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R5 R0 K7 ["Src"]
       22 GETTABLEKS                       R4 R5 K8 ["Util"]
       24 GETTABLEKS                       R3 R4 K9 ["DebugFlags"]
       26 CALL                             R2 1 1
       27 GETTABLEKS                       R3 R2 K10 ["EnableRoactConfigs"]
       29 CALL                             R3 0 1
       30 JUMPIFNOT                        R3 ; [+13]
       31 GETTABLEKS                       R3 R1 K11 ["setGlobalConfig"]
       33 DUPTABLE                         R4 K15 [{"elementTracing", "propValidation", "typeChecks"}]
       34 LOADB                            R5 1
       35 SETTABLEKS                       R5 R4 K12 ["elementTracing"]
       37 LOADB                            R5 1
       38 SETTABLEKS                       R5 R4 K13 ["propValidation"]
       40 LOADB                            R5 1
       41 SETTABLEKS                       R5 R4 K14 ["typeChecks"]
       43 CALL                             R3 1 0
       44 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 LOADB                            R0 0
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          REF R0
        4 CLOSEUPVALS                      R0
        5 RETURN                           R1 1
