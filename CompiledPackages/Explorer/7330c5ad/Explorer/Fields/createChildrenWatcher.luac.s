PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+5]
        2 GETUPVAL                         R3 1
        3 NAMECALL                         R1 R0 K0 ["IsA"]
        5 CALL                             R1 2 1
        6 JUMPIF                           R1 ; [+1]
        7 RETURN                           R0 0
        8 LOADB                            R1 1
        9 SETUPVAL                         R1 0
       10 GETUPVAL                         R1 2
       11 GETUPVAL                         R2 0
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+5]
        2 GETUPVAL                         R3 1
        3 NAMECALL                         R1 R0 K0 ["IsA"]
        5 CALL                             R1 2 1
        6 JUMPIF                           R1 ; [+1]
        7 RETURN                           R0 0
        8 GETUPVAL                         R2 2
        9 GETUPVAL                         R4 1
       10 NAMECALL                         R2 R2 K1 ["FindFirstChildWhichIsA"]
       12 CALL                             R2 2 1
       13 JUMPIFNOTEQKNIL                  R2 ; [+2]
       15 LOADB                            R1 0 +1
       16 LOADB                            R1 1
       17 SETUPVAL                         R1 0
       18 GETUPVAL                         R1 0
       19 JUMPIF                           R1 ; [+3]
       20 GETUPVAL                         R1 3
       21 GETUPVAL                         R2 0
       22 CALL                             R1 1 0
       23 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R4 0
        1 NAMECALL                         R2 R0 K0 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIF                           R2 ; [+3]
        5 LOADNIL                          R2
        6 DUPCLOSURE                       R3 K1 [PROTO_0]
        7 RETURN                           R2 2
        8 GETUPVAL                         R5 1
        9 NAMECALL                         R3 R0 K2 ["FindFirstChildWhichIsA"]
       11 CALL                             R3 2 1
       12 JUMPIFNOTEQKNIL                  R3 ; [+2]
       14 LOADB                            R2 0 +1
       15 LOADB                            R2 1
       16 GETTABLEKS                       R3 R0 K3 ["ChildAdded"]
       18 NEWCLOSURE                       R5 P1
       19 CAPTURE                          REF R2
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          VAL R1
       22 NAMECALL                         R3 R3 K4 ["Connect"]
       24 CALL                             R3 2 1
       25 GETTABLEKS                       R4 R0 K5 ["ChildRemoved"]
       27 NEWCLOSURE                       R6 P2
       28 CAPTURE                          REF R2
       29 CAPTURE                          UPVAL U1
       30 CAPTURE                          VAL R0
       31 CAPTURE                          VAL R1
       32 NAMECALL                         R4 R4 K4 ["Connect"]
       34 CALL                             R4 2 1
       35 MOVE                             R5 R2
       36 NEWCLOSURE                       R6 P3
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R4
       39 CLOSEUPVALS                      R2
       40 RETURN                           R5 2

PROTO_5:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Fields"]
       11 GETTABLEKS                       R2 R2 K7 ["FieldTypes"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_5]
       15 RETURN                           R2 1
