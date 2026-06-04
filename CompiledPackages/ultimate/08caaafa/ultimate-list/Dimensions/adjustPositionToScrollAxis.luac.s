PROTO_0:
        0 JUMPIFNOTEQKS                    R2 K0 ["x"] ; [+19]
        2 GETIMPORT                        R3 K3 [UDim2.new]
        4 LOADN                            R4 0
        5 GETTABLEKS                       R6 R0 K4 ["X"]
        7 GETTABLEKS                       R6 R6 K5 ["Offset"]
        9 SUB                              R5 R6 R1
       10 GETTABLEKS                       R6 R0 K6 ["Y"]
       12 GETTABLEKS                       R6 R6 K7 ["Scale"]
       14 GETTABLEKS                       R7 R0 K6 ["Y"]
       16 GETTABLEKS                       R7 R7 K5 ["Offset"]
       18 CALL                             R3 4 -1
       19 RETURN                           R3 -1
       20 JUMPIFNOTEQKS                    R2 K8 ["y"] ; [+19]
       22 GETIMPORT                        R3 K3 [UDim2.new]
       24 GETTABLEKS                       R4 R0 K4 ["X"]
       26 GETTABLEKS                       R4 R4 K7 ["Scale"]
       28 GETTABLEKS                       R5 R0 K4 ["X"]
       30 GETTABLEKS                       R5 R5 K5 ["Offset"]
       32 LOADN                            R6 0
       33 GETTABLEKS                       R8 R0 K6 ["Y"]
       35 GETTABLEKS                       R8 R8 K5 ["Offset"]
       37 SUB                              R7 R8 R1
       38 CALL                             R3 4 -1
       39 RETURN                           R3 -1
       40 GETUPVAL                         R3 0
       41 MOVE                             R4 R2
       42 CALL                             R3 1 -1
       43 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ultimate-list"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["exhaustiveMatch"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1
