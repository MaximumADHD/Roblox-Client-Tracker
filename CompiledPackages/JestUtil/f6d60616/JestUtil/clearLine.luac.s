PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["toJSBoolean"]
        3 GETTABLEKS                       R2 R0 K1 ["isTTY"]
        5 CALL                             R1 1 1
        6 JUMPIFNOT                        R1 ; [+4]
        7 LOADK                            R3 K2 ["\x[999D\x[K"]
        8 NAMECALL                         R1 R0 K3 ["write"]
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R3 R2 K6 ["Boolean"]
       14 GETIMPORT                        R4 K4 [require]
       16 GETTABLEKS                       R5 R1 K7 ["RobloxShared"]
       18 CALL                             R4 1 1
       19 NEWTABLE                         R5 1 0
       21 DUPCLOSURE                       R6 K8 [PROTO_0]
       22 CAPTURE                          VAL R3
       23 SETTABLEKS                       R6 R5 K9 ["default"]
       25 RETURN                           R5 1
