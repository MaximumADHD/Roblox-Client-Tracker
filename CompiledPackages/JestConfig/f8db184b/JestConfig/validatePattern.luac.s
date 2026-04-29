PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADK                            R2 K0 ["i"]
        3 CALL                             R0 2 0
        4 RETURN                           R0 0

PROTO_1:
        0 JUMPIFEQKNIL                     R0 ; [+16]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K0 ["toJSBoolean"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 JUMPIFNOT                        R1 ; [+9]
        8 GETIMPORT                        R1 K2 [pcall]
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          VAL R0
       13 CALL                             R1 1 1
       14 JUMPIF                           R1 ; [+2]
       15 LOADB                            R2 0
       16 RETURN                           R2 1
       17 LOADB                            R1 1
       18 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["Boolean"]
       14 GETIMPORT                        R3 K4 [require]
       16 GETTABLEKS                       R4 R0 K7 ["RegExp"]
       18 CALL                             R3 1 1
       19 NEWTABLE                         R4 1 0
       21 DUPCLOSURE                       R5 K8 [PROTO_1]
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R3
       24 SETTABLEKS                       R5 R4 K9 ["default"]
       26 RETURN                           R4 1
