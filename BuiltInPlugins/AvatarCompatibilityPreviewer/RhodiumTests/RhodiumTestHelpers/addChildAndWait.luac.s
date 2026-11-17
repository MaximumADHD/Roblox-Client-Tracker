PROTO_0:
        0 GETUPVAL                         R3 0
        1 NAMECALL                         R1 R0 K0 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R2 1
        7 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
        9 MOVE                             R3 R0
       10 GETIMPORT                        R1 K3 [table.insert]
       12 CALL                             R1 2 0
       13 GETUPVAL                         R2 1
       14 LENGTH                           R1 R2
       15 GETUPVAL                         R2 2
       16 JUMPIFNOTLE                      R2 R1 ; [+12]
       18 GETUPVAL                         R1 3
       19 NAMECALL                         R1 R1 K4 ["Disconnect"]
       21 CALL                             R1 1 0
       22 GETUPVAL                         R1 4
       23 GETUPVAL                         R3 1
       24 FASTCALL1                        TABLE_UNPACK R3 ; [+2]
       25 GETIMPORT                        R2 K6 [unpack]
       27 CALL                             R2 1 -1
       28 CALL                             R1 -1 0
       29 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["ChildAdded"]
        5 NEWCLOSURE                       R5 P0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          VAL R2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          VAL R0
       11 NAMECALL                         R3 R3 K1 ["Connect"]
       13 CALL                             R3 2 1
       14 SETUPVAL                         R3 0
       15 GETIMPORT                        R3 K4 [task.defer]
       17 GETUPVAL                         R4 4
       18 CALL                             R3 1 0
       19 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_3:
        0 ORK                              R4 R3 K0 [1]
        1 LOADNIL                          R5
        2 LOADNIL                          R6
        3 GETUPVAL                         R7 0
        4 GETTABLEKS                       R7 R7 K1 ["new"]
        6 NEWCLOSURE                       R8 P0
        7 CAPTURE                          REF R6
        8 CAPTURE                          VAL R0
        9 CAPTURE                          VAL R1
       10 CAPTURE                          VAL R4
       11 CAPTURE                          VAL R2
       12 CALL                             R7 1 1
       13 LOADN                            R9 3
       14 NAMECALL                         R7 R7 K2 ["timeout"]
       16 CALL                             R7 2 1
       17 MOVE                             R5 R7
       18 NEWCLOSURE                       R9 P1
       19 CAPTURE                          REF R6
       20 NAMECALL                         R7 R5 K3 ["finally"]
       22 CALL                             R7 2 0
       23 NAMECALL                         R7 R5 K4 ["expect"]
       25 CALL                             R7 1 -1
       26 CLOSEUPVALS                      R6
       27 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Promise"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_3]
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1
