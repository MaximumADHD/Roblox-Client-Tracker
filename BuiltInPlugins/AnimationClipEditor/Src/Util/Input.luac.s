PROTO_0:
        0 LOADB                            R1 1
        1 GETIMPORT                        R2 K3 [Enum.KeyCode.LeftControl]
        3 JUMPIFEQ                         R0 R2 ; [+17]
        5 LOADB                            R1 1
        6 GETIMPORT                        R2 K5 [Enum.KeyCode.RightControl]
        8 JUMPIFEQ                         R0 R2 ; [+12]
       10 LOADB                            R1 1
       11 GETIMPORT                        R2 K7 [Enum.KeyCode.RightSuper]
       13 JUMPIFEQ                         R0 R2 ; [+7]
       15 GETIMPORT                        R2 K9 [Enum.KeyCode.LeftSuper]
       17 JUMPIFEQ                         R0 R2 ; [+2]
       19 LOADB                            R1 0 +1
       20 LOADB                            R1 1
       21 RETURN                           R1 1

PROTO_1:
        0 LOADB                            R1 1
        1 GETIMPORT                        R2 K3 [Enum.KeyCode.LeftShift]
        3 JUMPIFEQ                         R0 R2 ; [+7]
        5 GETIMPORT                        R2 K5 [Enum.KeyCode.RightShift]
        7 JUMPIFEQ                         R0 R2 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 RETURN                           R1 1

PROTO_2:
        0 LOADB                            R1 1
        1 GETIMPORT                        R2 K3 [Enum.KeyCode.Backspace]
        3 JUMPIFEQ                         R0 R2 ; [+7]
        5 GETIMPORT                        R2 K5 [Enum.KeyCode.Delete]
        7 JUMPIFEQ                         R0 R2 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isShift"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIF                           R1 ; [+5]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K1 ["isControl"]
        9 MOVE                             R2 R0
       10 CALL                             R1 1 1
       11 RETURN                           R1 1

PROTO_4:
        0 GETIMPORT                        R2 K3 [Enum.KeyCode.Space]
        2 JUMPIFEQ                         R0 R2 ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_5:
        0 GETIMPORT                        R2 K3 [Enum.KeyCode.R]
        2 JUMPIFEQ                         R0 R2 ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_6:
        0 GETIMPORT                        R2 K3 [Enum.KeyCode.L]
        2 JUMPIFEQ                         R0 R2 ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_7:
        0 GETIMPORT                        R2 K3 [Enum.KeyCode.Up]
        2 JUMPIFEQ                         R0 R2 ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_8:
        0 GETIMPORT                        R2 K3 [Enum.KeyCode.Down]
        2 JUMPIFEQ                         R0 R2 ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_9:
        0 GETIMPORT                        R2 K3 [Enum.KeyCode.Left]
        2 JUMPIFEQ                         R0 R2 ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_10:
        0 GETIMPORT                        R2 K3 [Enum.KeyCode.Right]
        2 JUMPIFEQ                         R0 R2 ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_11:
        0 GETIMPORT                        R2 K3 [Enum.KeyCode.LeftBracket]
        2 JUMPIFEQ                         R0 R2 ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_12:
        0 GETIMPORT                        R2 K3 [Enum.KeyCode.RightBracket]
        2 JUMPIFEQ                         R0 R2 ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 16 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["isControl"]
        6 DUPCLOSURE                       R1 K2 [PROTO_1]
        7 SETTABLEKS                       R1 R0 K3 ["isShift"]
        9 DUPCLOSURE                       R1 K4 [PROTO_2]
       10 SETTABLEKS                       R1 R0 K5 ["isDeleteKey"]
       12 DUPCLOSURE                       R1 K6 [PROTO_3]
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R1 R0 K7 ["isMultiSelectKey"]
       16 DUPCLOSURE                       R1 K8 [PROTO_4]
       17 SETTABLEKS                       R1 R0 K9 ["isPlayPauseKey"]
       19 DUPCLOSURE                       R1 K10 [PROTO_5]
       20 SETTABLEKS                       R1 R0 K11 ["isManipulatorToggleKey"]
       22 DUPCLOSURE                       R1 K12 [PROTO_6]
       23 SETTABLEKS                       R1 R0 K13 ["isWorldSpaceToggleKey"]
       25 DUPCLOSURE                       R1 K14 [PROTO_7]
       26 SETTABLEKS                       R1 R0 K15 ["isUp"]
       28 DUPCLOSURE                       R1 K16 [PROTO_8]
       29 SETTABLEKS                       R1 R0 K17 ["isDown"]
       31 DUPCLOSURE                       R1 K18 [PROTO_9]
       32 SETTABLEKS                       R1 R0 K19 ["isLeft"]
       34 DUPCLOSURE                       R1 K20 [PROTO_10]
       35 SETTABLEKS                       R1 R0 K21 ["isRight"]
       37 DUPCLOSURE                       R1 K22 [PROTO_11]
       38 SETTABLEKS                       R1 R0 K23 ["isLeftBracket"]
       40 DUPCLOSURE                       R1 K24 [PROTO_12]
       41 SETTABLEKS                       R1 R0 K25 ["isRightBracket"]
       43 RETURN                           R0 1
