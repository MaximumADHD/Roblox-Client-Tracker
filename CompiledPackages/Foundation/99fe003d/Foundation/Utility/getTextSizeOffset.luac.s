PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["GetTextSizeOffsetAsync"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 ORK                              R0 R0 K0 [0]
        1 MOVE                             R2 R1
        2 JUMPIF                           R2 ; [+5]
        3 GETIMPORT                        R2 K3 [Font.fromEnum]
        5 GETIMPORT                        R3 K6 [Enum.Font.BuilderSans]
        7 CALL                             R2 1 1
        8 MOVE                             R1 R2
        9 GETIMPORT                        R2 K8 [pcall]
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          REF R0
       14 CAPTURE                          REF R1
       15 CALL                             R2 1 2
       16 JUMPIF                           R2 ; [+3]
       17 LOADNIL                          R4
       18 CLOSEUPVALS                      R0
       19 RETURN                           R4 1
       20 CLOSEUPVALS                      R0
       21 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_1]
        2 CAPTURE                          UPVAL U1
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Utility"]
       11 GETTABLEKS                       R2 R2 K7 ["Wrappers"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R1 R1 K8 ["Services"]
       16 GETTABLEKS                       R1 R1 K9 ["TextService"]
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K6 ["Utility"]
       22 GETTABLEKS                       R3 R3 K10 ["noYield"]
       24 CALL                             R2 1 1
       25 DUPCLOSURE                       R3 K11 [PROTO_2]
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R1
       28 RETURN                           R3 1
