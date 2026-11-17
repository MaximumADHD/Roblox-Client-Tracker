PROTO_0:
        0 LOADB                            R1 1
        1 GETTABLEKS                       R2 R0 K0 ["UserInputType"]
        3 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        5 JUMPIFEQ                         R2 R3 ; [+30]
        7 LOADB                            R1 1
        8 GETTABLEKS                       R2 R0 K4 ["KeyCode"]
       10 GETIMPORT                        R3 K6 [Enum.KeyCode.Return]
       12 JUMPIFEQ                         R2 R3 ; [+23]
       14 LOADB                            R1 1
       15 GETTABLEKS                       R2 R0 K4 ["KeyCode"]
       17 GETIMPORT                        R3 K8 [Enum.KeyCode.KeypadEnter]
       19 JUMPIFEQ                         R2 R3 ; [+16]
       21 LOADB                            R1 1
       22 GETTABLEKS                       R2 R0 K4 ["KeyCode"]
       24 GETIMPORT                        R3 K10 [Enum.KeyCode.ButtonA]
       26 JUMPIFEQ                         R2 R3 ; [+9]
       28 GETTABLEKS                       R2 R0 K0 ["UserInputType"]
       30 GETIMPORT                        R3 K12 [Enum.UserInputType.Touch]
       32 JUMPIFEQ                         R2 R3 ; [+2]
       34 LOADB                            R1 0 +1
       35 LOADB                            R1 1
       36 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
