PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+20]
        2 LOADK                            R3 K0 ["(%s*)%[string \"(.-)\"%]:(%d+)(.*)"]
        3 NAMECALL                         R1 R0 K1 ["match"]
        5 CALL                             R1 2 4
        6 JUMPIFNOT                        R2 ; [+15]
        7 MOVE                             R5 R2
        8 JUMPIFNOT                        R1 ; [+3]
        9 MOVE                             R6 R1
       10 MOVE                             R7 R5
       11 CONCAT                           R5 R6 R7
       12 JUMPIFNOT                        R3 ; [+4]
       13 MOVE                             R6 R5
       14 LOADK                            R7 K2 [":"]
       15 MOVE                             R8 R3
       16 CONCAT                           R5 R6 R8
       17 JUMPIFNOT                        R4 ; [+3]
       18 MOVE                             R6 R5
       19 MOVE                             R7 R4
       20 CONCAT                           R5 R6 R7
       21 RETURN                           R5 1
       22 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [pcall]
        3 GETIMPORT                        R2 K3 [debug]
        5 GETTABLEKS                       R1 R2 K4 ["loadmodule"]
        7 GETIMPORT                        R2 K7 [Instance.new]
        9 LOADK                            R3 K8 ["ModuleScript"]
       10 CALL                             R2 1 -1
       11 CALL                             R0 -1 1
       12 DUPCLOSURE                       R1 K9 [PROTO_0]
       13 CAPTURE                          VAL R0
       14 RETURN                           R1 1
