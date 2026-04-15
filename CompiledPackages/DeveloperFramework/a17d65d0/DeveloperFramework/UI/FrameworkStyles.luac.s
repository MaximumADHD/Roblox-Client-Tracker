PROTO_0:
        0 DUPTABLE                         R0 K1 [{"Default"}]
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["Default"]
        5 RETURN                           R0 1

PROTO_1:
        0 LOADK                            R4 K0 ["ModuleScript"]
        1 NAMECALL                         R2 R1 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+14]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R4 R1 K2 ["Name"]
        8 GETTABLE                         R2 R3 R4
        9 JUMPIFNOTEQKNIL                  R2 ; [+9]
       11 GETTABLEKS                       R2 R1 K2 ["Name"]
       13 DUPTABLE                         R3 K4 [{"Default"}]
       14 NEWTABLE                         R4 0 0
       16 SETTABLEKS                       R4 R3 K3 ["Default"]
       18 RETURN                           R2 2
       19 LOADNIL                          R2
       20 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["UI"]
        4 GETTABLEKS                       R1 R2 K1 ["Components"]
        6 NAMECALL                         R1 R1 K2 ["GetChildren"]
        8 CALL                             R1 1 1
        9 DUPCLOSURE                       R2 K3 [PROTO_1]
       10 CAPTURE                          UPVAL U2
       11 CALL                             R0 2 1
       12 GETUPVAL                         R1 3
       13 MOVE                             R2 R0
       14 GETUPVAL                         R3 2
       15 CALL                             R1 2 0
       16 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 DUPCLOSURE                       R1 K3 [PROTO_0]
        8 NEWTABLE                         R2 1 0
       10 GETIMPORT                        R3 K5 [require]
       12 GETTABLEKS                       R5 R0 K2 ["Parent"]
       14 GETTABLEKS                       R4 R5 K6 ["Dash"]
       16 CALL                             R3 1 1
       17 GETTABLEKS                       R4 R3 K7 ["assign"]
       19 GETTABLEKS                       R5 R3 K8 ["collect"]
       21 NEWTABLE                         R6 0 0
       23 DUPCLOSURE                       R7 K9 [PROTO_2]
       24 CAPTURE                          VAL R5
       25 CAPTURE                          VAL R0
       26 CAPTURE                          VAL R6
       27 CAPTURE                          VAL R4
       28 SETTABLEKS                       R7 R2 K10 ["new"]
       30 RETURN                           R2 1
