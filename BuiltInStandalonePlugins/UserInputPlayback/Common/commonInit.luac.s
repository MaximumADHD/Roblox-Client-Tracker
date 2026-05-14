PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R0 1
        4 SETUPVAL                         R0 0
        5 GETIMPORT                        R0 K1 [require]
        7 GETIMPORT                        R1 K3 [script]
        9 GETTABLEKS                       R1 R1 K4 ["Parent"]
       11 GETTABLEKS                       R1 R1 K5 ["defineLuaFlags"]
       13 CALL                             R0 1 0
       14 GETIMPORT                        R0 K3 [script]
       16 GETTABLEKS                       R0 R0 K4 ["Parent"]
       18 GETTABLEKS                       R0 R0 K4 ["Parent"]
       20 GETIMPORT                        R1 K1 [require]
       22 GETTABLEKS                       R2 R0 K6 ["Src"]
       24 GETTABLEKS                       R2 R2 K7 ["Util"]
       26 GETTABLEKS                       R2 R2 K8 ["DebugFlags"]
       28 CALL                             R1 1 1
       29 GETTABLEKS                       R2 R1 K9 ["EnableRoactConfigs"]
       31 CALL                             R2 0 1
       32 JUMPIFNOT                        R2 ; [+20]
       33 GETIMPORT                        R2 K1 [require]
       35 GETTABLEKS                       R3 R0 K10 ["Packages"]
       37 GETTABLEKS                       R3 R3 K11 ["Roact"]
       39 CALL                             R2 1 1
       40 GETTABLEKS                       R3 R2 K12 ["setGlobalConfig"]
       42 DUPTABLE                         R4 K16 [{"elementTracing", "propValidation", "typeChecks"}]
       43 LOADB                            R5 1
       44 SETTABLEKS                       R5 R4 K13 ["elementTracing"]
       46 LOADB                            R5 1
       47 SETTABLEKS                       R5 R4 K14 ["propValidation"]
       49 LOADB                            R5 1
       50 SETTABLEKS                       R5 R4 K15 ["typeChecks"]
       52 CALL                             R3 1 0
       53 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 LOADB                            R0 0
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          REF R0
        4 CLOSEUPVALS                      R0
        5 RETURN                           R1 1
