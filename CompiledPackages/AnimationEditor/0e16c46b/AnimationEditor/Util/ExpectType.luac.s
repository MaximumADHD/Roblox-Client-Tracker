PROTO_0:
        0 JUMPIFNOTEQKNIL                  R0 ; [+2]
        2 RETURN                           R1 1
        3 FASTCALL1                        TYPEOF R0 ; [+3]
        4 MOVE                             R5 R0
        5 GETIMPORT                        R4 K1 [typeof]
        7 CALL                             R4 1 1
        8 JUMPIFEQKS                       R4 K2 ["number"] ; [+2]
       10 LOADB                            R3 0 +1
       11 LOADB                            R3 1
       12 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       14 LOADK                            R4 K3 ["Input is not a number"]
       15 GETIMPORT                        R2 K5 [assert]
       17 CALL                             R2 2 0
       18 RETURN                           R0 1

PROTO_1:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADB                            R1 0
        3 RETURN                           R1 1
        4 FASTCALL1                        TYPEOF R0 ; [+3]
        5 MOVE                             R4 R0
        6 GETIMPORT                        R3 K1 [typeof]
        8 CALL                             R3 1 1
        9 JUMPIFEQKS                       R3 K2 ["boolean"] ; [+2]
       11 LOADB                            R2 0 +1
       12 LOADB                            R2 1
       13 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       15 LOADK                            R3 K3 ["Input is not a boolean"]
       16 GETIMPORT                        R1 K5 [assert]
       18 CALL                             R1 2 0
       19 RETURN                           R0 1

PROTO_2:
        0 JUMPIFNOTEQKNIL                  R0 ; [+2]
        2 RETURN                           R1 1
        3 FASTCALL1                        TYPEOF R0 ; [+3]
        4 MOVE                             R5 R0
        5 GETIMPORT                        R4 K1 [typeof]
        7 CALL                             R4 1 1
        8 JUMPIFEQKS                       R4 K2 ["EnumItem"] ; [+2]
       10 LOADB                            R3 0 +1
       11 LOADB                            R3 1
       12 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       14 LOADK                            R4 K3 ["Input is not an EnumItem"]
       15 GETIMPORT                        R2 K5 [assert]
       17 CALL                             R2 2 0
       18 GETTABLEKS                       R4 R0 K6 ["EnumType"]
       20 GETTABLEKS                       R5 R1 K6 ["EnumType"]
       22 JUMPIFEQ                         R4 R5 ; [+2]
       24 LOADB                            R3 0 +1
       25 LOADB                            R3 1
       26 FASTCALL2K                       ASSERT R3 K7 ; [+4]
       28 LOADK                            R4 K7 ["Input does not have the right EnumItem"]
       29 GETIMPORT                        R2 K5 [assert]
       31 CALL                             R2 2 0
       32 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["number"]
        6 DUPCLOSURE                       R1 K2 [PROTO_1]
        7 SETTABLEKS                       R1 R0 K3 ["boolean"]
        9 DUPCLOSURE                       R1 K4 [PROTO_2]
       10 SETTABLEKS                       R1 R0 K5 ["enum"]
       12 RETURN                           R0 1
