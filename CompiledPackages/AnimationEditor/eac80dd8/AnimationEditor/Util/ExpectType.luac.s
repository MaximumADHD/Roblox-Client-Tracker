PROTO_0:
        0 JUMPIFNOTEQKNIL                  R0 ; [+2]
        2 RETURN                           R1 1
        3 GETUPVAL                         R2 0
        4 CALL                             R2 0 1
        5 JUMPIFNOT                        R2 ; [+9]
        6 FASTCALL1                        TYPE R0 ; [+3]
        7 MOVE                             R3 R0
        8 GETIMPORT                        R2 K1 [type]
       10 CALL                             R2 1 1
       11 JUMPIFNOTEQKS                    R2 K2 ["number"] ; [+2]
       13 RETURN                           R0 1
       14 RETURN                           R1 1
       15 FASTCALL1                        TYPEOF R0 ; [+3]
       16 MOVE                             R5 R0
       17 GETIMPORT                        R4 K4 [typeof]
       19 CALL                             R4 1 1
       20 JUMPIFEQKS                       R4 K2 ["number"] ; [+2]
       22 LOADB                            R3 0 +1
       23 LOADB                            R3 1
       24 FASTCALL2K                       ASSERT R3 K5 ; [+4]
       26 LOADK                            R4 K5 ["Input is not a number"]
       27 GETIMPORT                        R2 K7 [assert]
       29 CALL                             R2 2 0
       30 RETURN                           R0 1

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
        3 GETUPVAL                         R2 0
        4 CALL                             R2 0 1
        5 JUMPIFNOT                        R2 ; [+15]
        6 FASTCALL1                        TYPEOF R0 ; [+3]
        7 MOVE                             R3 R0
        8 GETIMPORT                        R2 K1 [typeof]
       10 CALL                             R2 1 1
       11 JUMPIFNOTEQKS                    R2 K2 ["EnumItem"] ; [+8]
       13 GETTABLEKS                       R2 R0 K3 ["EnumType"]
       15 GETTABLEKS                       R3 R1 K3 ["EnumType"]
       17 JUMPIFNOTEQ                      R2 R3 ; [+2]
       19 RETURN                           R0 1
       20 RETURN                           R1 1
       21 FASTCALL1                        TYPEOF R0 ; [+3]
       22 MOVE                             R5 R0
       23 GETIMPORT                        R4 K1 [typeof]
       25 CALL                             R4 1 1
       26 JUMPIFEQKS                       R4 K2 ["EnumItem"] ; [+2]
       28 LOADB                            R3 0 +1
       29 LOADB                            R3 1
       30 FASTCALL2K                       ASSERT R3 K4 ; [+4]
       32 LOADK                            R4 K4 ["Input is not an EnumItem"]
       33 GETIMPORT                        R2 K6 [assert]
       35 CALL                             R2 2 0
       36 GETTABLEKS                       R4 R0 K3 ["EnumType"]
       38 GETTABLEKS                       R5 R1 K3 ["EnumType"]
       40 JUMPIFEQ                         R4 R5 ; [+2]
       42 LOADB                            R3 0 +1
       43 LOADB                            R3 1
       44 FASTCALL2K                       ASSERT R3 K7 ; [+4]
       46 LOADK                            R4 K7 ["Input does not have the right EnumItem"]
       47 GETIMPORT                        R2 K6 [assert]
       49 CALL                             R2 2 0
       50 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 GETTABLEKS                       R2 R2 K7 ["getFFlagAnimGraphUI_FixExpectedType"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 4 0
       16 DUPCLOSURE                       R3 K8 [PROTO_0]
       17 CAPTURE                          VAL R1
       18 SETTABLEKS                       R3 R2 K9 ["number"]
       20 DUPCLOSURE                       R3 K10 [PROTO_1]
       21 SETTABLEKS                       R3 R2 K11 ["boolean"]
       23 DUPCLOSURE                       R3 K12 [PROTO_2]
       24 CAPTURE                          VAL R1
       25 SETTABLEKS                       R3 R2 K13 ["enum"]
       27 RETURN                           R2 1
