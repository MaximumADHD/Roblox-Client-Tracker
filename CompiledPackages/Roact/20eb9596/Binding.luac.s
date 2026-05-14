PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getValue"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["map"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_2:
        0 GETIMPORT                        R1 K2 [string.format]
        2 LOADK                            R2 K3 ["RoactBinding(%s)"]
        3 NAMECALL                         R4 R0 K4 ["getValue"]
        5 CALL                             R4 1 -1
        6 FASTCALL                         TOSTRING ; [+2]
        7 GETIMPORT                        R3 K6 [tostring]
        9 CALL                             R3 -1 1
       10 CALL                             R1 2 -1
       11 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R0 R3
        2 GETTABLEKS                       R2 R2 K0 ["update"]
        4 MOVE                             R3 R1
        5 CALL                             R2 1 -1
        6 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R0 R3
        2 GETTABLEKS                       R2 R2 K0 ["subscribe"]
        4 MOVE                             R3 R1
        5 CALL                             R2 1 -1
        6 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R0 R2
        2 GETTABLEKS                       R1 R1 K0 ["getValue"]
        4 CALL                             R1 0 -1
        5 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["changeSignal"]
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K1 ["subscribe"]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["value"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["changeSignal"]
        6 MOVE                             R3 R0
        7 NAMECALL                         R1 R1 K2 ["fire"]
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["value"]
        3 RETURN                           R0 1

PROTO_9:
        0 DUPTABLE                         R1 K2 [{"value", "changeSignal"}]
        1 SETTABLEKS                       R0 R1 K0 ["value"]
        3 GETUPVAL                         R2 0
        4 CALL                             R2 0 1
        5 SETTABLEKS                       R2 R1 K1 ["changeSignal"]
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          VAL R1
        9 SETTABLEKS                       R2 R1 K3 ["subscribe"]
       11 NEWCLOSURE                       R2 P1
       12 CAPTURE                          VAL R1
       13 SETTABLEKS                       R2 R1 K4 ["update"]
       15 NEWCLOSURE                       R2 P2
       16 CAPTURE                          VAL R1
       17 SETTABLEKS                       R2 R1 K5 ["getValue"]
       19 NEWTABLE                         R3 2 0
       21 GETUPVAL                         R4 1
       22 GETUPVAL                         R5 1
       23 GETTABLEKS                       R5 R5 K6 ["Binding"]
       25 SETTABLE                         R5 R3 R4
       26 GETUPVAL                         R4 2
       27 SETTABLE                         R1 R3 R4
       28 GETUPVAL                         R4 3
       29 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
       31 GETIMPORT                        R2 K8 [setmetatable]
       33 CALL                             R2 2 1
       34 GETTABLEKS                       R3 R1 K4 ["update"]
       36 RETURN                           R2 2

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["subscribe"]
        3 GETUPVAL                         R2 1
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U2
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_12:
        0 GETIMPORT                        R1 K1 [error]
        2 LOADK                            R2 K2 ["Bindings created by Binding:map(fn) cannot be updated directly"]
        3 LOADN                            R3 2
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["getValue"]
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 -1
        6 RETURN                           R0 -1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["typeChecks"]
        3 JUMPIFNOT                        R2 ; [+33]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K1 ["of"]
        7 MOVE                             R5 R0
        8 CALL                             R4 1 1
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R5 R5 K2 ["Binding"]
       12 JUMPIFEQ                         R4 R5 ; [+2]
       14 LOADB                            R3 0 +1
       15 LOADB                            R3 1
       16 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       18 LOADK                            R4 K3 ["Expected arg #1 to be a binding"]
       19 GETIMPORT                        R2 K5 [assert]
       21 CALL                             R2 2 0
       22 FASTCALL1                        TYPEOF R1 ; [+3]
       23 MOVE                             R5 R1
       24 GETIMPORT                        R4 K7 [typeof]
       26 CALL                             R4 1 1
       27 JUMPIFEQKS                       R4 K8 ["function"] ; [+2]
       29 LOADB                            R3 0 +1
       30 LOADB                            R3 1
       31 FASTCALL2K                       ASSERT R3 K9 ; [+4]
       33 LOADK                            R4 K9 ["Expected arg #1 to be a function"]
       34 GETIMPORT                        R2 K5 [assert]
       36 CALL                             R2 2 0
       37 NEWTABLE                         R2 4 0
       39 NEWCLOSURE                       R3 P0
       40 CAPTURE                          UPVAL U2
       41 CAPTURE                          VAL R0
       42 CAPTURE                          VAL R1
       43 SETTABLEKS                       R3 R2 K10 ["subscribe"]
       45 DUPCLOSURE                       R3 K11 [PROTO_12]
       46 SETTABLEKS                       R3 R2 K12 ["update"]
       48 NEWCLOSURE                       R3 P2
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R0
       51 SETTABLEKS                       R3 R2 K13 ["getValue"]
       53 NEWTABLE                         R4 2 0
       55 GETUPVAL                         R5 1
       56 GETUPVAL                         R6 1
       57 GETTABLEKS                       R6 R6 K2 ["Binding"]
       59 SETTABLE                         R6 R4 R5
       60 GETUPVAL                         R5 3
       61 SETTABLE                         R2 R4 R5
       62 GETUPVAL                         R5 4
       63 FASTCALL2                        SETMETATABLE R4 R5 ; [+3]
       65 GETIMPORT                        R3 K15 [setmetatable]
       67 CALL                             R3 2 1
       68 RETURN                           R3 1

PROTO_15:
        0 NEWTABLE                         R0 0 0
        2 GETIMPORT                        R1 K1 [pairs]
        4 GETUPVAL                         R2 0
        5 CALL                             R1 1 3
        6 FORGPREP_NEXT                    R1
        7 NAMECALL                         R6 R5 K2 ["getValue"]
        9 CALL                             R6 1 1
       10 SETTABLE                         R6 R0 R4
       11 FORGLOOP                         R1 2 ; [-5]
       13 RETURN                           R0 1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 CALL                             R2 0 1
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 GETIMPORT                        R0 K1 [pairs]
        6 GETUPVAL                         R1 0
        7 CALL                             R0 1 3
        8 FORGPREP_NEXT                    R0
        9 MOVE                             R5 R4
       10 CALL                             R5 0 0
       11 FORGLOOP                         R0 2 ; [-3]
       13 LOADNIL                          R0
       14 SETUPVAL                         R0 0
       15 RETURN                           R0 0

PROTO_18:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [pairs]
        4 GETUPVAL                         R3 0
        5 CALL                             R2 1 3
        6 FORGPREP_NEXT                    R2
        7 GETUPVAL                         R7 1
        8 GETTABLEKS                       R7 R7 K2 ["subscribe"]
       10 MOVE                             R8 R6
       11 NEWCLOSURE                       R9 P0
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 CALL                             R7 2 1
       15 SETTABLE                         R7 R1 R5
       16 FORGLOOP                         R2 2 ; [-10]
       18 NEWCLOSURE                       R2 P1
       19 CAPTURE                          REF R1
       20 CLOSEUPVALS                      R1
       21 RETURN                           R2 1

PROTO_19:
        0 GETIMPORT                        R1 K1 [error]
        2 LOADK                            R2 K2 ["Bindings created by joinBindings(...) cannot be updated directly"]
        3 LOADN                            R3 2
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 RETURN                           R0 1

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["typeChecks"]
        3 JUMPIFNOT                        R1 ; [+46]
        4 FASTCALL1                        TYPEOF R0 ; [+3]
        5 MOVE                             R4 R0
        6 GETIMPORT                        R3 K2 [typeof]
        8 CALL                             R3 1 1
        9 JUMPIFEQKS                       R3 K3 ["table"] ; [+2]
       11 LOADB                            R2 0 +1
       12 LOADB                            R2 1
       13 FASTCALL2K                       ASSERT R2 K4 ; [+4]
       15 LOADK                            R3 K4 ["Expected arg #1 to be of type table"]
       16 GETIMPORT                        R1 K6 [assert]
       18 CALL                             R1 2 0
       19 GETIMPORT                        R1 K8 [pairs]
       21 MOVE                             R2 R0
       22 CALL                             R1 1 3
       23 FORGPREP_NEXT                    R1
       24 GETUPVAL                         R6 1
       25 GETTABLEKS                       R6 R6 K9 ["of"]
       27 MOVE                             R7 R5
       28 CALL                             R6 1 1
       29 GETUPVAL                         R7 1
       30 GETTABLEKS                       R7 R7 K10 ["Binding"]
       32 JUMPIFEQ                         R6 R7 ; [+15]
       34 LOADK                            R6 K11 ["Expected arg #1 to contain only bindings, but key %q had a non-binding value"]
       35 FASTCALL1                        TOSTRING R4 ; [+3]
       36 MOVE                             R9 R4
       37 GETIMPORT                        R8 K13 [tostring]
       39 CALL                             R8 1 1
       40 NAMECALL                         R6 R6 K14 ["format"]
       42 CALL                             R6 2 1
       43 GETIMPORT                        R7 K16 [error]
       45 MOVE                             R8 R6
       46 LOADN                            R9 2
       47 CALL                             R7 2 0
       48 FORGLOOP                         R1 2 ; [-25]
       50 NEWTABLE                         R1 4 0
       52 NEWCLOSURE                       R2 P0
       53 CAPTURE                          VAL R0
       54 NEWCLOSURE                       R3 P1
       55 CAPTURE                          VAL R0
       56 CAPTURE                          UPVAL U2
       57 CAPTURE                          VAL R2
       58 SETTABLEKS                       R3 R1 K17 ["subscribe"]
       60 DUPCLOSURE                       R3 K18 [PROTO_19]
       61 SETTABLEKS                       R3 R1 K19 ["update"]
       63 NEWCLOSURE                       R3 P3
       64 CAPTURE                          VAL R2
       65 SETTABLEKS                       R3 R1 K20 ["getValue"]
       67 NEWTABLE                         R4 2 0
       69 GETUPVAL                         R5 1
       70 GETUPVAL                         R6 1
       71 GETTABLEKS                       R6 R6 K10 ["Binding"]
       73 SETTABLE                         R6 R4 R5
       74 GETUPVAL                         R5 3
       75 SETTABLE                         R1 R4 R5
       76 GETUPVAL                         R5 4
       77 FASTCALL2                        SETMETATABLE R4 R5 ; [+3]
       79 GETIMPORT                        R3 K22 [setmetatable]
       81 CALL                             R3 2 1
       82 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["createSignal"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R2 K3 [script]
       14 GETTABLEKS                       R2 R2 K4 ["Parent"]
       16 GETTABLEKS                       R2 R2 K6 ["Symbol"]
       18 CALL                             R1 1 1
       19 GETIMPORT                        R2 K1 [require]
       21 GETIMPORT                        R3 K3 [script]
       23 GETTABLEKS                       R3 R3 K4 ["Parent"]
       25 GETTABLEKS                       R3 R3 K7 ["Type"]
       27 CALL                             R2 1 1
       28 GETIMPORT                        R3 K1 [require]
       30 GETIMPORT                        R4 K3 [script]
       32 GETTABLEKS                       R4 R4 K4 ["Parent"]
       34 GETTABLEKS                       R4 R4 K8 ["GlobalConfig"]
       36 CALL                             R3 1 1
       37 GETTABLEKS                       R3 R3 K9 ["get"]
       39 CALL                             R3 0 1
       40 GETTABLEKS                       R4 R1 K10 ["named"]
       42 LOADK                            R5 K11 ["BindingImpl"]
       43 CALL                             R4 1 1
       44 NEWTABLE                         R5 8 0
       46 NEWTABLE                         R6 2 0
       48 DUPCLOSURE                       R7 K12 [PROTO_0]
       49 CAPTURE                          VAL R5
       50 SETTABLEKS                       R7 R6 K13 ["getValue"]
       52 DUPCLOSURE                       R7 K14 [PROTO_1]
       53 CAPTURE                          VAL R5
       54 SETTABLEKS                       R7 R6 K15 ["map"]
       56 DUPTABLE                         R7 K18 [{"__index", "__tostring"}]
       57 SETTABLEKS                       R6 R7 K16 ["__index"]
       59 DUPCLOSURE                       R8 K19 [PROTO_2]
       60 SETTABLEKS                       R8 R7 K17 ["__tostring"]
       62 DUPCLOSURE                       R8 K20 [PROTO_3]
       63 CAPTURE                          VAL R4
       64 SETTABLEKS                       R8 R5 K21 ["update"]
       66 DUPCLOSURE                       R8 K22 [PROTO_4]
       67 CAPTURE                          VAL R4
       68 SETTABLEKS                       R8 R5 K23 ["subscribe"]
       70 DUPCLOSURE                       R8 K24 [PROTO_5]
       71 CAPTURE                          VAL R4
       72 SETTABLEKS                       R8 R5 K13 ["getValue"]
       74 DUPCLOSURE                       R8 K25 [PROTO_9]
       75 CAPTURE                          VAL R0
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R4
       78 CAPTURE                          VAL R7
       79 SETTABLEKS                       R8 R5 K26 ["create"]
       81 DUPCLOSURE                       R8 K27 [PROTO_14]
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R4
       86 CAPTURE                          VAL R7
       87 SETTABLEKS                       R8 R5 K15 ["map"]
       89 DUPCLOSURE                       R8 K28 [PROTO_21]
       90 CAPTURE                          VAL R3
       91 CAPTURE                          VAL R2
       92 CAPTURE                          VAL R5
       93 CAPTURE                          VAL R4
       94 CAPTURE                          VAL R7
       95 SETTABLEKS                       R8 R5 K29 ["join"]
       97 RETURN                           R5 1
