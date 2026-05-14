PROTO_0:
        0 DUPTABLE                         R3 K3 [{"configs", "globalConfig", "version"}]
        1 SETTABLEKS                       R1 R3 K0 ["configs"]
        3 SETTABLEKS                       R0 R3 K1 ["globalConfig"]
        5 LOADK                            R4 K4 ["27.4.7"]
        6 SETTABLEKS                       R4 R3 K2 ["version"]
        8 GETUPVAL                         R9 0
        9 GETTABLEKS                       R9 R9 K5 ["stringify"]
       11 MOVE                             R10 R3
       12 LOADNIL                          R11
       13 LOADK                            R12 K6 ["  "]
       14 CALL                             R9 3 1
       15 MOVE                             R7 R9
       16 LOADK                            R8 K7 ["\n"]
       17 CONCAT                           R6 R7 R8
       18 NAMECALL                         R4 R2 K8 ["write"]
       20 CALL                             R4 2 0
       21 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 1 0
       16 GETIMPORT                        R3 K4 [require]
       18 GETTABLEKS                       R4 R0 K6 ["JestTypes"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K4 [require]
       23 GETTABLEKS                       R5 R0 K7 ["RobloxShared"]
       25 CALL                             R4 1 1
       26 GETTABLEKS                       R5 R4 K8 ["nodeUtils"]
       28 GETTABLEKS                       R6 R5 K9 ["JSON"]
       30 DUPCLOSURE                       R7 K10 [PROTO_0]
       31 CAPTURE                          VAL R6
       32 SETTABLEKS                       R7 R2 K11 ["default"]
       34 RETURN                           R2 1
