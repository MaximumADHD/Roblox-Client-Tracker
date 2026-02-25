PROTO_0:
        0 MOVE                             R1 R0
        1 JUMPIFNOT                        R1 ; [+2]
        2 GETTABLEKS                       R1 R0 K0 ["Font"]
        4 FASTCALL1                        TYPEOF R1 ; [+3]
        5 MOVE                             R3 R1
        6 GETIMPORT                        R2 K2 [typeof]
        8 CALL                             R2 1 1
        9 JUMPIFNOTEQKS                    R2 K3 ["EnumItem"] ; [+11]
       11 LOADK                            R4 K0 ["Font"]
       12 NAMECALL                         R2 R1 K4 ["IsA"]
       14 CALL                             R2 2 1
       15 JUMPIFNOT                        R2 ; [+5]
       16 GETIMPORT                        R2 K6 [Font.fromEnum]
       18 MOVE                             R3 R1
       19 CALL                             R2 1 -1
       20 RETURN                           R2 -1
       21 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
