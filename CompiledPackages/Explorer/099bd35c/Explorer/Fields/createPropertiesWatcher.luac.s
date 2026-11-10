PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 GETUPVAL                         R7 1
        7 GETTABLE                         R6 R7 R5
        8 SETTABLE                         R6 R0 R5
        9 FORGLOOP                         R1 2 ; [-4]
       11 GETIMPORT                        R1 K2 [table.freeze]
       13 MOVE                             R2 R0
       14 CALL                             R1 1 -1
       15 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R4 0
        1 NAMECALL                         R2 R0 K0 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIF                           R2 ; [+3]
        5 LOADNIL                          R2
        6 DUPCLOSURE                       R3 K1 [PROTO_0]
        7 RETURN                           R2 2
        8 NEWCLOSURE                       R2 P1
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          VAL R0
       11 NEWTABLE                         R3 0 0
       13 GETUPVAL                         R4 1
       14 LOADNIL                          R5
       15 LOADNIL                          R6
       16 FORGPREP                         R4
       17 MOVE                             R10 R3
       18 MOVE                             R13 R8
       19 NAMECALL                         R11 R0 K2 ["GetPropertyChangedSignal"]
       21 CALL                             R11 2 1
       22 NEWCLOSURE                       R13 P2
       23 CAPTURE                          VAL R1
       24 CAPTURE                          VAL R2
       25 NAMECALL                         R11 R11 K3 ["Connect"]
       27 CALL                             R11 2 -1
       28 FASTCALL                         TABLE_INSERT ; [+2]
       29 GETIMPORT                        R9 K6 [table.insert]
       31 CALL                             R9 -1 0
       32 FORGLOOP                         R4 2 ; [-16]
       34 NEWTABLE                         R5 0 0
       36 GETUPVAL                         R6 1
       37 LOADNIL                          R7
       38 LOADNIL                          R8
       39 FORGPREP                         R6
       40 GETTABLE                         R11 R0 R10
       41 SETTABLE                         R11 R5 R10
       42 FORGLOOP                         R6 2 ; [-3]
       44 GETIMPORT                        R6 K8 [table.freeze]
       46 MOVE                             R7 R5
       47 CALL                             R6 1 1
       48 MOVE                             R4 R6
       49 NEWCLOSURE                       R5 P3
       50 CAPTURE                          VAL R3
       51 RETURN                           R4 2

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
