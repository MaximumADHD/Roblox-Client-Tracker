PROTO_0:
        0 JUMPIFNOTEQ                      R1 R2 ; [+3]
        2 LOADB                            R3 1
        3 RETURN                           R3 1
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K0 ["MoveXY"]
        7 JUMPIFNOTEQ                      R1 R3 ; [+15]
        9 LOADB                            R3 1
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R4 R5 K1 ["MoveX"]
       13 JUMPIFEQ                         R2 R4 ; [+8]
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R4 R5 K2 ["MoveY"]
       18 JUMPIFEQ                         R2 R4 ; [+2]
       20 LOADB                            R3 0 +1
       21 LOADB                            R3 1
       22 RETURN                           R3 1
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R3 R4 K3 ["ResizeXpYp"]
       26 JUMPIFNOTEQ                      R1 R3 ; [+15]
       28 LOADB                            R3 1
       29 GETUPVAL                         R5 0
       30 GETTABLEKS                       R4 R5 K4 ["ResizeXp"]
       32 JUMPIFEQ                         R2 R4 ; [+8]
       34 GETUPVAL                         R5 0
       35 GETTABLEKS                       R4 R5 K5 ["ResizeYp"]
       37 JUMPIFEQ                         R2 R4 ; [+2]
       39 LOADB                            R3 0 +1
       40 LOADB                            R3 1
       41 RETURN                           R3 1
       42 GETUPVAL                         R4 0
       43 GETTABLEKS                       R3 R4 K6 ["ResizeXnYp"]
       45 JUMPIFNOTEQ                      R1 R3 ; [+15]
       47 LOADB                            R3 1
       48 GETUPVAL                         R5 0
       49 GETTABLEKS                       R4 R5 K7 ["ResizeXn"]
       51 JUMPIFEQ                         R2 R4 ; [+8]
       53 GETUPVAL                         R5 0
       54 GETTABLEKS                       R4 R5 K5 ["ResizeYp"]
       56 JUMPIFEQ                         R2 R4 ; [+2]
       58 LOADB                            R3 0 +1
       59 LOADB                            R3 1
       60 RETURN                           R3 1
       61 GETUPVAL                         R4 0
       62 GETTABLEKS                       R3 R4 K8 ["ResizeXpYn"]
       64 JUMPIFNOTEQ                      R1 R3 ; [+15]
       66 LOADB                            R3 1
       67 GETUPVAL                         R5 0
       68 GETTABLEKS                       R4 R5 K4 ["ResizeXp"]
       70 JUMPIFEQ                         R2 R4 ; [+8]
       72 GETUPVAL                         R5 0
       73 GETTABLEKS                       R4 R5 K9 ["ResizeYn"]
       75 JUMPIFEQ                         R2 R4 ; [+2]
       77 LOADB                            R3 0 +1
       78 LOADB                            R3 1
       79 RETURN                           R3 1
       80 GETUPVAL                         R4 0
       81 GETTABLEKS                       R3 R4 K10 ["ResizeXnYn"]
       83 JUMPIFNOTEQ                      R1 R3 ; [+15]
       85 LOADB                            R3 1
       86 GETUPVAL                         R5 0
       87 GETTABLEKS                       R4 R5 K7 ["ResizeXn"]
       89 JUMPIFEQ                         R2 R4 ; [+8]
       91 GETUPVAL                         R5 0
       92 GETTABLEKS                       R4 R5 K9 ["ResizeYn"]
       94 JUMPIFEQ                         R2 R4 ; [+2]
       96 LOADB                            R3 0 +1
       97 LOADB                            R3 1
       98 RETURN                           R3 1
       99 LOADB                            R3 0
      100 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 16 0
        3 LOADN                            R1 0
        4 SETTABLEKS                       R1 R0 K0 ["MoveX"]
        6 LOADN                            R1 1
        7 SETTABLEKS                       R1 R0 K1 ["MoveY"]
        9 LOADN                            R1 2
       10 SETTABLEKS                       R1 R0 K2 ["MoveXY"]
       12 LOADN                            R1 3
       13 SETTABLEKS                       R1 R0 K3 ["ResizeXp"]
       15 LOADN                            R1 4
       16 SETTABLEKS                       R1 R0 K4 ["ResizeXn"]
       18 LOADN                            R1 5
       19 SETTABLEKS                       R1 R0 K5 ["ResizeYp"]
       21 LOADN                            R1 6
       22 SETTABLEKS                       R1 R0 K6 ["ResizeYn"]
       24 LOADN                            R1 7
       25 SETTABLEKS                       R1 R0 K7 ["ResizeXpYp"]
       27 LOADN                            R1 8
       28 SETTABLEKS                       R1 R0 K8 ["ResizeXnYp"]
       30 LOADN                            R1 9
       31 SETTABLEKS                       R1 R0 K9 ["ResizeXpYn"]
       33 LOADN                            R1 10
       34 SETTABLEKS                       R1 R0 K10 ["ResizeXnYn"]
       36 DUPCLOSURE                       R1 K11 [PROTO_0]
       37 CAPTURE                          VAL R0
       38 SETTABLEKS                       R1 R0 K12 ["containsType"]
       40 RETURN                           R0 1
