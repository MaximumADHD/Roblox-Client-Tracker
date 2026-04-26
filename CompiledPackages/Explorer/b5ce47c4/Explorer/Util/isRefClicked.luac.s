PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["current"]
        2 JUMPIFEQKNIL                     R2 ; [+13]
        4 GETTABLEKS                       R3 R1 K1 ["UserInputType"]
        6 GETIMPORT                        R4 K4 [Enum.UserInputType.MouseButton1]
        8 JUMPIFEQ                         R3 R4 ; [+9]
       10 GETTABLEKS                       R3 R1 K1 ["UserInputType"]
       12 GETIMPORT                        R4 K6 [Enum.UserInputType.Touch]
       14 JUMPIFEQ                         R3 R4 ; [+3]
       16 LOADB                            R3 0
       17 RETURN                           R3 1
       18 GETUPVAL                         R3 0
       19 MOVE                             R4 R2
       20 GETTABLEKS                       R5 R1 K7 ["Position"]
       22 CALL                             R3 2 -1
       23 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R3 K7 ["isPositionInsideGui"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1
