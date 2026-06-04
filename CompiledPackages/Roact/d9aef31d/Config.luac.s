PROTO_0:
        0 LOADK                            R2 K0 ["Invalid global configuration key %q. Valid configuration keys are: %s"]
        1 FASTCALL1                        TOSTRING R1 ; [+3]
        2 MOVE                             R5 R1
        3 GETIMPORT                        R4 K2 [tostring]
        5 CALL                             R4 1 1
        6 GETIMPORT                        R5 K5 [table.concat]
        8 GETUPVAL                         R6 0
        9 LOADK                            R7 K6 [", "]
       10 CALL                             R5 2 -1
       11 NAMECALL                         R2 R2 K7 ["format"]
       13 CALL                             R2 -1 1
       14 GETIMPORT                        R3 K9 [error]
       16 MOVE                             R4 R2
       17 LOADN                            R5 3
       18 CALL                             R3 2 0
       19 RETURN                           R0 0

PROTO_1:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETTABLEKS                       R0 R0 K0 ["set"]
        4 GETUPVAL                         R1 1
        5 GETVARARGS                       R2 -1
        6 CALL                             R0 -1 -1
        7 RETURN                           R0 -1

PROTO_2:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETTABLEKS                       R0 R0 K0 ["get"]
        4 GETUPVAL                         R1 1
        5 GETVARARGS                       R2 -1
        6 CALL                             R0 -1 -1
        7 RETURN                           R0 -1

PROTO_3:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETTABLEKS                       R0 R0 K0 ["scoped"]
        4 GETUPVAL                         R1 1
        5 GETVARARGS                       R2 -1
        6 CALL                             R0 -1 -1
        7 RETURN                           R0 -1

PROTO_4:
        0 NEWTABLE                         R0 4 0
        2 NEWTABLE                         R2 0 0
        4 DUPTABLE                         R3 K1 [{"__index"}]
        5 DUPCLOSURE                       R4 K2 [PROTO_0]
        6 CAPTURE                          UPVAL U0
        7 SETTABLEKS                       R4 R3 K0 ["__index"]
        9 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
       11 GETIMPORT                        R1 K4 [setmetatable]
       13 CALL                             R1 2 1
       14 SETTABLEKS                       R1 R0 K5 ["_currentConfig"]
       16 NEWCLOSURE                       R1 P1
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          VAL R0
       19 SETTABLEKS                       R1 R0 K6 ["set"]
       21 NEWCLOSURE                       R1 P2
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          VAL R0
       24 SETTABLEKS                       R1 R0 K7 ["get"]
       26 NEWCLOSURE                       R1 P3
       27 CAPTURE                          UPVAL U1
       28 CAPTURE                          VAL R0
       29 SETTABLEKS                       R1 R0 K8 ["scoped"]
       31 GETTABLEKS                       R1 R0 K6 ["set"]
       33 GETUPVAL                         R2 2
       34 CALL                             R1 1 0
       35 RETURN                           R0 1

PROTO_5:
        0 GETIMPORT                        R2 K1 [pairs]
        2 MOVE                             R3 R1
        3 CALL                             R2 1 3
        4 FORGPREP_NEXT                    R2
        5 GETUPVAL                         R8 0
        6 GETTABLE                         R7 R8 R5
        7 JUMPIFNOTEQKNIL                  R7 ; [+25]
        9 LOADK                            R7 K2 ["Invalid global configuration key %q (type %s). Valid configuration keys are: %s"]
       10 FASTCALL1                        TOSTRING R5 ; [+3]
       11 MOVE                             R10 R5
       12 GETIMPORT                        R9 K4 [tostring]
       14 CALL                             R9 1 1
       15 FASTCALL1                        TYPEOF R5 ; [+3]
       16 MOVE                             R11 R5
       17 GETIMPORT                        R10 K6 [typeof]
       19 CALL                             R10 1 1
       20 GETIMPORT                        R11 K9 [table.concat]
       22 GETUPVAL                         R12 1
       23 LOADK                            R13 K10 [", "]
       24 CALL                             R11 2 -1
       25 NAMECALL                         R7 R7 K11 ["format"]
       27 CALL                             R7 -1 1
       28 GETIMPORT                        R8 K13 [error]
       30 MOVE                             R9 R7
       31 LOADN                            R10 3
       32 CALL                             R8 2 0
       33 FASTCALL1                        TYPEOF R6 ; [+3]
       34 MOVE                             R8 R6
       35 GETIMPORT                        R7 K6 [typeof]
       37 CALL                             R7 1 1
       38 JUMPIFEQKS                       R7 K14 ["boolean"] ; [+25]
       40 LOADK                            R7 K15 ["Invalid value %q (type %s) for global configuration key %q. Valid values are: true, false"]
       41 FASTCALL1                        TOSTRING R6 ; [+3]
       42 MOVE                             R10 R6
       43 GETIMPORT                        R9 K4 [tostring]
       45 CALL                             R9 1 1
       46 FASTCALL1                        TYPEOF R6 ; [+3]
       47 MOVE                             R11 R6
       48 GETIMPORT                        R10 K6 [typeof]
       50 CALL                             R10 1 1
       51 FASTCALL1                        TOSTRING R5 ; [+3]
       52 MOVE                             R12 R5
       53 GETIMPORT                        R11 K4 [tostring]
       55 CALL                             R11 1 1
       56 NAMECALL                         R7 R7 K11 ["format"]
       58 CALL                             R7 4 1
       59 GETIMPORT                        R8 K13 [error]
       61 MOVE                             R9 R7
       62 LOADN                            R10 3
       63 CALL                             R8 2 0
       64 GETTABLEKS                       R7 R0 K16 ["_currentConfig"]
       66 SETTABLE                         R6 R7 R5
       67 FORGLOOP                         R2 2 ; [-63]
       69 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["_currentConfig"]
        2 RETURN                           R1 1

PROTO_7:
        0 NEWTABLE                         R3 0 0
        2 GETIMPORT                        R4 K1 [pairs]
        4 GETTABLEKS                       R5 R0 K2 ["_currentConfig"]
        6 CALL                             R4 1 3
        7 FORGPREP_NEXT                    R4
        8 SETTABLE                         R8 R3 R7
        9 FORGLOOP                         R4 2 ; [-2]
       11 GETTABLEKS                       R4 R0 K3 ["set"]
       13 MOVE                             R5 R1
       14 CALL                             R4 1 0
       15 GETIMPORT                        R4 K5 [pcall]
       17 MOVE                             R5 R2
       18 CALL                             R4 1 2
       19 GETTABLEKS                       R6 R0 K3 ["set"]
       21 MOVE                             R7 R3
       22 CALL                             R6 1 0
       23 FASTCALL2                        ASSERT R4 R5 ; [+5]
       25 MOVE                             R7 R4
       26 MOVE                             R8 R5
       27 GETIMPORT                        R6 K7 [assert]
       29 CALL                             R6 2 0
       30 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 LOADB                            R1 0
        4 SETTABLEKS                       R1 R0 K0 ["internalTypeChecks"]
        6 LOADB                            R1 0
        7 SETTABLEKS                       R1 R0 K1 ["typeChecks"]
        9 LOADB                            R1 0
       10 SETTABLEKS                       R1 R0 K2 ["elementTracing"]
       12 LOADB                            R1 0
       13 SETTABLEKS                       R1 R0 K3 ["propValidation"]
       15 NEWTABLE                         R1 0 0
       17 GETIMPORT                        R2 K5 [pairs]
       19 MOVE                             R3 R0
       20 CALL                             R2 1 3
       21 FORGPREP_NEXT                    R2
       22 FASTCALL2                        TABLE_INSERT R1 R5 ; [+5]
       24 MOVE                             R8 R1
       25 MOVE                             R9 R5
       26 GETIMPORT                        R7 K8 [table.insert]
       28 CALL                             R7 2 0
       29 FORGLOOP                         R2 1 ; [-8]
       31 NEWTABLE                         R2 4 0
       33 DUPCLOSURE                       R3 K9 [PROTO_4]
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R0
       37 SETTABLEKS                       R3 R2 K10 ["new"]
       39 DUPCLOSURE                       R3 K11 [PROTO_5]
       40 CAPTURE                          VAL R0
       41 CAPTURE                          VAL R1
       42 SETTABLEKS                       R3 R2 K12 ["set"]
       44 DUPCLOSURE                       R3 K13 [PROTO_6]
       45 SETTABLEKS                       R3 R2 K14 ["get"]
       47 DUPCLOSURE                       R3 K15 [PROTO_7]
       48 SETTABLEKS                       R3 R2 K16 ["scoped"]
       50 RETURN                           R2 1
