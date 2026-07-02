PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R0 1
        4 SETUPVAL                         R0 0
        5 GETIMPORT                        R0 K1 [script]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Src"]
       15 GETTABLEKS                       R2 R2 K6 ["Util"]
       17 GETTABLEKS                       R2 R2 K7 ["DebugFlags"]
       19 CALL                             R1 1 1
       20 GETTABLEKS                       R2 R1 K8 ["EnableRoactConfigs"]
       22 CALL                             R2 0 1
       23 JUMPIFNOT                        R2 ; [+11]
       24 GETIMPORT                        R2 K4 [require]
       26 GETTABLEKS                       R3 R0 K9 ["Packages"]
       28 GETTABLEKS                       R3 R3 K10 ["Roact"]
       30 CALL                             R2 1 1
       31 GETTABLEKS                       R3 R2 K11 ["setGlobalConfig"]
       33 DUPTABLE                         R4 K16 [{["elementTracing"] = True, ["propValidation"] = True, ["typeChecks"] = True}]
       34 CALL                             R3 1 0
       35 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 LOADB                            R0 0
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          REF R0
        4 CLOSEUPVALS                      R0
        5 RETURN                           R1 1
