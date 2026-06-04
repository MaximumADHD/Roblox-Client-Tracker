PROTO_0:
        0 RETURN                           R0 1

PROTO_1:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [type]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["string"] ; [+8]
        7 FASTCALL1                        TYPE R1 ; [+3]
        8 MOVE                             R3 R1
        9 GETIMPORT                        R2 K1 [type]
       11 CALL                             R2 1 1
       12 JUMPIFEQKS                       R2 K2 ["string"] ; [+5]
       14 GETIMPORT                        R2 K4 [error]
       16 LOADK                            R3 K5 ["Expected the arguments to be of type `string`"]
       17 CALL                             R2 1 0
       18 JUMPIFNOTEQKS                    R1 K6 [""] ; [+7]
       20 NEWTABLE                         R2 0 1
       22 MOVE                             R3 R0
       23 SETLIST                          R2 R3 1 [1]
       25 RETURN                           R2 1
       26 MOVE                             R4 R1
       27 LOADN                            R5 1
       28 LOADB                            R6 1
       29 NAMECALL                         R2 R0 K7 ["find"]
       31 CALL                             R2 4 1
       32 JUMPIFNOTEQKNIL                  R2 ; [+7]
       34 NEWTABLE                         R3 0 1
       36 MOVE                             R4 R0
       37 SETLIST                          R3 R4 1 [1]
       39 RETURN                           R3 1
       40 NEWTABLE                         R3 0 2
       42 LOADN                            R6 1
       43 SUBK                             R7 R2 K8 [1]
       44 NAMECALL                         R4 R0 K9 ["sub"]
       46 CALL                             R4 3 1
       47 NAMECALL                         R8 R1 K10 ["len"]
       49 CALL                             R8 1 1
       50 ADD                              R7 R2 R8
       51 NAMECALL                         R5 R0 K9 ["sub"]
       53 CALL                             R5 2 -1
       54 SETLIST                          R3 R4 -1 [1]
       56 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPCLOSURE                       R1 K1 [PROTO_1]
        3 RETURN                           R1 1
