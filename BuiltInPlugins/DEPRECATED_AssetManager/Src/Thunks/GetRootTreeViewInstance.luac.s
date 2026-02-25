PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["string"] ; [+10]
        7 GETUPVAL                         R1 0
        8 GETUPVAL                         R3 1
        9 GETUPVAL                         R4 2
       10 LOADNIL                          R5
       11 CALL                             R3 2 -1
       12 NAMECALL                         R1 R1 K3 ["dispatch"]
       14 CALL                             R1 -1 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R1 0
       17 GETUPVAL                         R3 1
       18 GETUPVAL                         R4 2
       19 MOVE                             R5 R0
       20 CALL                             R3 2 -1
       21 NAMECALL                         R1 R1 K3 ["dispatch"]
       23 CALL                             R1 -1 0
       24 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 CALL                             R1 2 1
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U1
        8 NAMECALL                         R1 R1 K0 ["andThen"]
       10 CALL                             R1 2 -1
       11 RETURN                           R1 -1

PROTO_2:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U1
        5 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R4 R0 K5 ["Src"]
       13 GETTABLEKS                       R3 R4 K6 ["Util"]
       15 GETTABLEKS                       R2 R3 K7 ["PreviewModelGetter"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R5 R0 K5 ["Src"]
       22 GETTABLEKS                       R4 R5 K8 ["Actions"]
       24 GETTABLEKS                       R3 R4 K9 ["SetRootTreeViewInstance"]
       26 CALL                             R2 1 1
       27 DUPCLOSURE                       R3 K10 [PROTO_2]
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R2
       30 RETURN                           R3 1
