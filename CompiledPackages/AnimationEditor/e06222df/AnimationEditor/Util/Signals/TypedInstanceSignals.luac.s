PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETTABLE                         R1 R2 R3
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R3 2
        3 GETUPVAL                         R4 3
        4 GETTABLE                         R2 R3 R4
        5 CALL                             R1 1 -1
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLE                         R1 R2 R3
        3 GETUPVAL                         R2 0
        4 GETUPVAL                         R4 1
        5 NAMECALL                         R2 R2 K0 ["GetPropertyChangedSignal"]
        7 CALL                             R2 2 1
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          UPVAL U1
       13 NAMECALL                         R2 R2 K1 ["Connect"]
       15 CALL                             R2 2 1
       16 NEWCLOSURE                       R3 P1
       17 CAPTURE                          VAL R2
       18 RETURN                           R3 1

PROTO_4:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["provide"]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R2
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 NEWCLOSURE                       R5 P1
        8 CAPTURE                          VAL R0
        9 CAPTURE                          VAL R1
       10 CAPTURE                          VAL R2
       11 CALL                             R3 2 -1
       12 RETURN                           R3 -1

PROTO_5:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["CFrame"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["Property is not a CFrame"]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 DUPCLOSURE                       R5 K0 [PROTO_5]
        4 CALL                             R2 3 -1
        5 RETURN                           R2 -1

PROTO_7:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["EnumItem"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["Property is not an EnumItem"]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 DUPCLOSURE                       R5 K0 [PROTO_7]
        4 CALL                             R2 3 -1
        5 RETURN                           R2 -1

PROTO_9:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADNIL                          R1
        3 RETURN                           R1 1
        4 FASTCALL1                        TYPEOF R0 ; [+3]
        5 MOVE                             R4 R0
        6 GETIMPORT                        R3 K1 [typeof]
        8 CALL                             R3 1 1
        9 JUMPIFEQKS                       R3 K2 ["Instance"] ; [+2]
       11 LOADB                            R2 0 +1
       12 LOADB                            R2 1
       13 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       15 LOADK                            R3 K3 ["Property is not an instance"]
       16 GETIMPORT                        R1 K5 [assert]
       18 CALL                             R1 2 0
       19 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 DUPCLOSURE                       R5 K0 [PROTO_9]
        4 CALL                             R2 3 -1
        5 RETURN                           R2 -1

PROTO_11:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["number"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["Property is not a number"]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 RETURN                           R0 1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 DUPCLOSURE                       R5 K0 [PROTO_11]
        4 CALL                             R2 3 -1
        5 RETURN                           R2 -1

PROTO_13:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["string"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["Property is not a string"]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 RETURN                           R0 1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 DUPCLOSURE                       R5 K0 [PROTO_13]
        4 CALL                             R2 3 -1
        5 RETURN                           R2 -1

PROTO_15:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["Vector2"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["Property is not a Vector2"]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 RETURN                           R0 1

PROTO_16:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 DUPCLOSURE                       R5 K0 [PROTO_15]
        4 CALL                             R2 3 -1
        5 RETURN                           R2 -1

PROTO_17:
        0 MOVE                             R1 R0
        1 JUMPIFNOT                        R1 ; [+3]
        2 GETUPVAL                         R1 0
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 RETURN                           R1 1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["GetAttribute"]
        4 CALL                             R1 2 1
        5 MOVE                             R0 R1
        6 JUMPIFNOT                        R0 ; [+4]
        7 GETUPVAL                         R2 2
        8 MOVE                             R3 R1
        9 CALL                             R2 1 1
       10 MOVE                             R0 R2
       11 RETURN                           R0 1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R4 2
        3 NAMECALL                         R2 R2 K0 ["GetAttribute"]
        5 CALL                             R2 2 1
        6 MOVE                             R1 R2
        7 JUMPIFNOT                        R1 ; [+4]
        8 GETUPVAL                         R3 3
        9 MOVE                             R4 R2
       10 CALL                             R3 1 1
       11 MOVE                             R1 R3
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["GetAttributeChangedSignal"]
        4 CALL                             R1 2 1
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U2
       10 NAMECALL                         R1 R1 K1 ["Connect"]
       12 CALL                             R1 2 1
       13 NEWCLOSURE                       R2 P1
       14 CAPTURE                          VAL R1
       15 RETURN                           R2 1

PROTO_22:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R2
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K0 ["provide"]
        5 NEWCLOSURE                       R5 P1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R1
        8 CAPTURE                          VAL R2
        9 NEWCLOSURE                       R6 P2
       10 CAPTURE                          VAL R0
       11 CAPTURE                          VAL R1
       12 CAPTURE                          VAL R2
       13 CALL                             R4 2 -1
       14 RETURN                           R4 -1

PROTO_23:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["boolean"] ; [+3]
        7 MOVE                             R1 R0
        8 RETURN                           R1 1
        9 LOADNIL                          R1
       10 RETURN                           R1 1

PROTO_24:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 DUPCLOSURE                       R5 K0 [PROTO_23]
        4 CALL                             R2 3 -1
        5 RETURN                           R2 -1

PROTO_25:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["number"] ; [+3]
        7 MOVE                             R1 R0
        8 RETURN                           R1 1
        9 LOADNIL                          R1
       10 RETURN                           R1 1

PROTO_26:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 DUPCLOSURE                       R5 K0 [PROTO_25]
        4 CALL                             R2 3 -1
        5 RETURN                           R2 -1

PROTO_27:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["string"] ; [+3]
        7 MOVE                             R1 R0
        8 RETURN                           R1 1
        9 LOADNIL                          R1
       10 RETURN                           R1 1

PROTO_28:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 DUPCLOSURE                       R5 K0 [PROTO_27]
        4 CALL                             R2 3 -1
        5 RETURN                           R2 -1

PROTO_29:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["Vector2"] ; [+3]
        7 MOVE                             R1 R0
        8 RETURN                           R1 1
        9 LOADNIL                          R1
       10 RETURN                           R1 1

PROTO_30:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 DUPCLOSURE                       R5 K0 [PROTO_29]
        4 CALL                             R2 3 -1
        5 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Signals"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Util"]
       18 GETTABLEKS                       R4 R5 K7 ["Signals"]
       20 GETTABLEKS                       R3 R4 K9 ["SignalsInstanceUtils"]
       22 CALL                             R2 1 1
       23 NEWTABLE                         R3 2 0
       25 NEWTABLE                         R4 0 0
       27 SETTABLEKS                       R4 R3 K10 ["properties"]
       29 DUPCLOSURE                       R4 K11 [PROTO_4]
       30 CAPTURE                          VAL R2
       31 DUPCLOSURE                       R5 K12 [PROTO_6]
       32 CAPTURE                          VAL R4
       33 GETTABLEKS                       R6 R3 K10 ["properties"]
       35 SETTABLEKS                       R5 R6 K13 ["observeCFrame"]
       37 DUPCLOSURE                       R5 K14 [PROTO_8]
       38 CAPTURE                          VAL R4
       39 GETTABLEKS                       R6 R3 K10 ["properties"]
       41 SETTABLEKS                       R5 R6 K15 ["observeEnumItem"]
       43 DUPCLOSURE                       R5 K16 [PROTO_10]
       44 CAPTURE                          VAL R4
       45 GETTABLEKS                       R6 R3 K10 ["properties"]
       47 SETTABLEKS                       R5 R6 K17 ["observeInstance"]
       49 DUPCLOSURE                       R5 K18 [PROTO_12]
       50 CAPTURE                          VAL R4
       51 GETTABLEKS                       R6 R3 K10 ["properties"]
       53 SETTABLEKS                       R5 R6 K19 ["observeNumber"]
       55 DUPCLOSURE                       R5 K20 [PROTO_14]
       56 CAPTURE                          VAL R4
       57 GETTABLEKS                       R6 R3 K10 ["properties"]
       59 SETTABLEKS                       R5 R6 K21 ["observeString"]
       61 DUPCLOSURE                       R5 K22 [PROTO_16]
       62 CAPTURE                          VAL R4
       63 GETTABLEKS                       R6 R3 K10 ["properties"]
       65 SETTABLEKS                       R5 R6 K23 ["observeVector2"]
       67 NEWTABLE                         R5 0 0
       69 SETTABLEKS                       R5 R3 K24 ["attributes"]
       71 DUPCLOSURE                       R5 K25 [PROTO_22]
       72 CAPTURE                          VAL R2
       73 DUPCLOSURE                       R6 K26 [PROTO_24]
       74 CAPTURE                          VAL R5
       75 GETTABLEKS                       R7 R3 K24 ["attributes"]
       77 SETTABLEKS                       R6 R7 K27 ["observeBoolean"]
       79 DUPCLOSURE                       R6 K28 [PROTO_26]
       80 CAPTURE                          VAL R5
       81 GETTABLEKS                       R7 R3 K24 ["attributes"]
       83 SETTABLEKS                       R6 R7 K19 ["observeNumber"]
       85 DUPCLOSURE                       R6 K29 [PROTO_28]
       86 CAPTURE                          VAL R5
       87 GETTABLEKS                       R7 R3 K24 ["attributes"]
       89 SETTABLEKS                       R6 R7 K21 ["observeString"]
       91 DUPCLOSURE                       R6 K30 [PROTO_30]
       92 CAPTURE                          VAL R5
       93 GETTABLEKS                       R7 R3 K24 ["attributes"]
       95 SETTABLEKS                       R6 R7 K23 ["observeVector2"]
       97 RETURN                           R3 1
