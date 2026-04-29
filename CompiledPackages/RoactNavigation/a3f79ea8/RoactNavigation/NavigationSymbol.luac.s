PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["string"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["Symbols must be created using a string name!"]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 GETIMPORT                        R1 K7 [newproxy]
       17 LOADB                            R2 1
       18 CALL                             R1 1 1
       19 FASTCALL1                        GETMETATABLE R1 ; [+3]
       20 MOVE                             R3 R1
       21 GETIMPORT                        R2 K9 [getmetatable]
       23 CALL                             R2 1 1
       24 NEWCLOSURE                       R3 P0
       25 CAPTURE                          VAL R0
       26 SETTABLEKS                       R3 R2 K10 ["__tostring"]
       28 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_1]
        2 RETURN                           R0 1
