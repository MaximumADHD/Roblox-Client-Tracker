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
       19 LOADK                            R2 K8 ["Symbol(%s)"]
       20 MOVE                             R4 R0
       21 NAMECALL                         R2 R2 K9 ["format"]
       23 CALL                             R2 2 1
       24 FASTCALL1                        GETMETATABLE R1 ; [+3]
       25 MOVE                             R4 R1
       26 GETIMPORT                        R3 K11 [getmetatable]
       28 CALL                             R3 1 1
       29 NEWCLOSURE                       R4 P0
       30 CAPTURE                          VAL R2
       31 SETTABLEKS                       R4 R3 K12 ["__tostring"]
       33 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 DUPCLOSURE                       R1 K0 [PROTO_1]
        4 SETTABLEKS                       R1 R0 K1 ["named"]
        6 RETURN                           R0 1
