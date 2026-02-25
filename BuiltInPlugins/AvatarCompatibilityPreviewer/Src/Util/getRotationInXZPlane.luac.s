PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["GetComponents"]
        2 CALL                             R1 1 12
        3 LOADN                            R16 0
        4 FASTCALL3                        VECTOR R6 R16 R12
        6 MOVE                             R15 R6
        7 MOVE                             R17 R12
        8 GETIMPORT                        R14 K3 [Vector3.new]
       10 CALL                             R14 3 1
       11 GETTABLEKS                       R13 R14 K4 ["Unit"]
       13 JUMPIFEQ                         R13 R13 ; [+2]
       15 RETURN                           R0 1
       16 LOADK                            R14 K5 [{0, 1, 0}]
       17 MOVE                             R16 R13
       18 NAMECALL                         R14 R14 K6 ["Cross"]
       20 CALL                             R14 2 1
       21 GETIMPORT                        R15 K8 [CFrame.new]
       23 GETTABLEKS                       R16 R0 K9 ["X"]
       25 GETTABLEKS                       R17 R0 K10 ["Y"]
       27 GETTABLEKS                       R18 R0 K11 ["Z"]
       29 GETTABLEKS                       R19 R14 K9 ["X"]
       31 LOADK                            R21 K5 [{0, 1, 0}]
       32 GETTABLEKS                       R20 R21 K9 ["X"]
       34 GETTABLEKS                       R21 R13 K9 ["X"]
       36 GETTABLEKS                       R22 R14 K10 ["Y"]
       38 LOADK                            R24 K5 [{0, 1, 0}]
       39 GETTABLEKS                       R23 R24 K10 ["Y"]
       41 GETTABLEKS                       R24 R13 K10 ["Y"]
       43 GETTABLEKS                       R25 R14 K11 ["Z"]
       45 LOADK                            R27 K5 [{0, 1, 0}]
       46 GETTABLEKS                       R26 R27 K11 ["Z"]
       48 GETTABLEKS                       R27 R13 K11 ["Z"]
       50 CALL                             R15 12 -1
       51 RETURN                           R15 -1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
