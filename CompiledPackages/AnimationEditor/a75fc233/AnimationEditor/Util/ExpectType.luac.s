PROTO_0:
        0 JUMPIFEQKNIL                     R0 ; [+5]
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIFNOT                        R2 ; [+1]
        6 RETURN                           R1 1
        7 GETUPVAL                         R2 1
        8 CALL                             R2 0 1
        9 JUMPIFNOT                        R2 ; [+9]
       10 FASTCALL1                        TYPE R0 ; [+3]
       11 MOVE                             R3 R0
       12 GETIMPORT                        R2 K1 [type]
       14 CALL                             R2 1 1
       15 JUMPIFNOTEQKS                    R2 K2 ["number"] ; [+2]
       17 RETURN                           R0 1
       18 RETURN                           R1 1
       19 FASTCALL1                        TYPEOF R0 ; [+3]
       20 MOVE                             R5 R0
       21 GETIMPORT                        R4 K4 [typeof]
       23 CALL                             R4 1 1
       24 JUMPIFEQKS                       R4 K2 ["number"] ; [+2]
       26 LOADB                            R3 0 +1
       27 LOADB                            R3 1
       28 FASTCALL2K                       ASSERT R3 K5 ; [+4]
       30 LOADK                            R4 K5 ["Input is not a number"]
       31 GETIMPORT                        R2 K7 [assert]
       33 CALL                             R2 2 0
       34 RETURN                           R0 1

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
        0 JUMPIFEQKNIL                     R0 ; [+5]
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIFNOT                        R2 ; [+1]
        6 RETURN                           R1 1
        7 GETUPVAL                         R2 1
        8 CALL                             R2 0 1
        9 JUMPIFNOT                        R2 ; [+15]
       10 FASTCALL1                        TYPEOF R0 ; [+3]
       11 MOVE                             R3 R0
       12 GETIMPORT                        R2 K1 [typeof]
       14 CALL                             R2 1 1
       15 JUMPIFNOTEQKS                    R2 K2 ["EnumItem"] ; [+8]
       17 GETTABLEKS                       R2 R0 K3 ["EnumType"]
       19 GETTABLEKS                       R3 R1 K3 ["EnumType"]
       21 JUMPIFNOTEQ                      R2 R3 ; [+2]
       23 RETURN                           R0 1
       24 RETURN                           R1 1
       25 FASTCALL1                        TYPEOF R0 ; [+3]
       26 MOVE                             R5 R0
       27 GETIMPORT                        R4 K1 [typeof]
       29 CALL                             R4 1 1
       30 JUMPIFEQKS                       R4 K2 ["EnumItem"] ; [+2]
       32 LOADB                            R3 0 +1
       33 LOADB                            R3 1
       34 FASTCALL2K                       ASSERT R3 K4 ; [+4]
       36 LOADK                            R4 K4 ["Input is not an EnumItem"]
       37 GETIMPORT                        R2 K6 [assert]
       39 CALL                             R2 2 0
       40 GETTABLEKS                       R4 R0 K3 ["EnumType"]
       42 GETTABLEKS                       R5 R1 K3 ["EnumType"]
       44 JUMPIFEQ                         R4 R5 ; [+2]
       46 LOADB                            R3 0 +1
       47 LOADB                            R3 1
       48 FASTCALL2K                       ASSERT R3 K7 ; [+4]
       50 LOADK                            R4 K7 ["Input does not have the right EnumItem"]
       51 GETIMPORT                        R2 K6 [assert]
       53 CALL                             R2 2 0
       54 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["StateMachineGraphing"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Flags"]
       18 GETTABLEKS                       R3 R3 K9 ["getFFlagAnimGraphUI_FixExpectedType"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K10 ["isStateMachineBinding"]
       23 NEWTABLE                         R4 4 0
       25 DUPCLOSURE                       R5 K11 [PROTO_0]
       26 CAPTURE                          VAL R3
       27 CAPTURE                          VAL R2
       28 SETTABLEKS                       R5 R4 K12 ["number"]
       30 DUPCLOSURE                       R5 K13 [PROTO_1]
       31 SETTABLEKS                       R5 R4 K14 ["boolean"]
       33 DUPCLOSURE                       R5 K15 [PROTO_2]
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R2
       36 SETTABLEKS                       R5 R4 K16 ["enum"]
       38 RETURN                           R4 1
