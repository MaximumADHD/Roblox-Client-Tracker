PROTO_0:
        0 LOADB                            R1 1
        1 GETTABLEKS                       R2 R0 K0 ["UserInputType"]
        3 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        5 JUMPIFEQ                         R2 R3 ; [+9]
        7 GETTABLEKS                       R2 R0 K0 ["UserInputType"]
        9 GETIMPORT                        R3 K5 [Enum.UserInputType.Touch]
       11 JUMPIFEQ                         R2 R3 ; [+2]
       13 LOADB                            R1 0 +1
       14 LOADB                            R1 1
       15 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
