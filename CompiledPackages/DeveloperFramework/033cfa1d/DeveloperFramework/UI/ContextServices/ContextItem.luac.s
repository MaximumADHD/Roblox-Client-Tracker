PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["__name"]
        2 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Context"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_2:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R5 R1
        2 GETIMPORT                        R4 K1 [typeof]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["string"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       11 LOADK                            R4 K3 ["ContextItem class name must be a string"]
       12 GETIMPORT                        R2 K5 [assert]
       14 CALL                             R2 2 0
       15 GETIMPORT                        R2 K8 [table.clone]
       17 MOVE                             R3 R0
       18 CALL                             R2 1 1
       19 SETTABLEKS                       R2 R2 K9 ["__index"]
       21 SETTABLEKS                       R1 R2 K10 ["__name"]
       23 GETUPVAL                         R3 0
       24 GETTABLEKS                       R3 R3 K11 ["named"]
       26 MOVE                             R4 R1
       27 CALL                             R3 1 1
       28 SETTABLEKS                       R3 R2 K12 ["Key"]
       30 GETUPVAL                         R3 1
       31 JUMPIFEQKS                       R3 K13 [""] ; [+14]
       33 GETUPVAL                         R3 1
       34 GETTABLEKS                       R3 R3 K14 ["createContext"]
       36 NEWTABLE                         R4 0 0
       38 CALL                             R3 1 1
       39 SETTABLEKS                       R3 R2 K15 ["Context"]
       41 NEWCLOSURE                       R3 P0
       42 CAPTURE                          UPVAL U1
       43 CAPTURE                          VAL R2
       44 SETTABLEKS                       R3 R2 K16 ["use"]
       46 GETUPVAL                         R5 2
       47 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
       49 MOVE                             R4 R2
       50 GETIMPORT                        R3 K18 [setmetatable]
       52 CALL                             R3 2 0
       53 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETTABLEKS                       R3 R0 K1 ["Context"]
        5 GETTABLEKS                       R3 R3 K2 ["Provider"]
        7 DUPTABLE                         R4 K4 [{"value"}]
        8 SETTABLEKS                       R0 R4 K3 ["value"]
       10 MOVE                             R5 R1
       11 CALL                             R2 3 -1
       12 RETURN                           R2 -1

PROTO_4:
        0 LOADNIL                          R1
        1 RETURN                           R1 1

PROTO_5:
        0 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["__name"]
        2 FASTCALL1                        TOSTRING R2 ; [+2]
        3 GETIMPORT                        R1 K2 [tostring]
        5 CALL                             R1 1 1
        6 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_updateSignal"]
        3 GETUPVAL                         R2 0
        4 NAMECALL                         R0 R0 K1 ["Fire"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+9]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["verifyNewItem"]
        5 JUMPIFNOT                        R1 ; [+5]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["verifyNewItem"]
        9 MOVE                             R2 R0
       10 CALL                             R1 1 0
       11 DUPTABLE                         R2 K2 [{"_obj"}]
       12 SETTABLEKS                       R0 R2 K1 ["_obj"]
       14 GETUPVAL                         R3 1
       15 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
       17 GETIMPORT                        R1 K4 [setmetatable]
       19 CALL                             R1 2 1
       20 GETUPVAL                         R2 0
       21 JUMPIFNOT                        R2 ; [+9]
       22 GETUPVAL                         R2 0
       23 GETTABLEKS                       R2 R2 K5 ["getChangedSignal"]
       25 JUMPIFNOT                        R2 ; [+5]
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R2 R2 K5 ["getChangedSignal"]
       29 MOVE                             R3 R0
       30 CALL                             R2 1 1
       31 JUMPIFNOT                        R2 ; [+13]
       32 GETUPVAL                         R3 2
       33 GETTABLEKS                       R3 R3 K6 ["new"]
       35 CALL                             R3 0 1
       36 SETTABLEKS                       R3 R1 K7 ["_updateSignal"]
       38 NEWCLOSURE                       R5 P0
       39 CAPTURE                          VAL R1
       40 NAMECALL                         R3 R2 K8 ["Connect"]
       42 CALL                             R3 2 1
       43 SETTABLEKS                       R3 R1 K9 ["_connection"]
       45 RETURN                           R1 1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["_connection"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["_connection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["_connection"]
       11 GETUPVAL                         R1 0
       12 JUMPIFNOT                        R1 ; [+10]
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K2 ["destroy"]
       16 JUMPIFNOT                        R1 ; [+6]
       17 GETUPVAL                         R1 0
       18 GETTABLEKS                       R1 R1 K2 ["destroy"]
       20 GETTABLEKS                       R2 R0 K3 ["_obj"]
       22 CALL                             R1 1 0
       23 LOADNIL                          R1
       24 SETTABLEKS                       R1 R0 K3 ["_obj"]
       26 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["_updateSignal"]
        2 RETURN                           R1 1

PROTO_11:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 -1
        4 RETURN                           R1 -1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+11]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["getValues"]
        5 JUMPIFNOT                        R2 ; [+7]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["getValues"]
        9 GETTABLEKS                       R2 R0 K1 ["_obj"]
       11 CALL                             R1 1 1
       12 JUMPIF                           R1 ; [+2]
       13 GETTABLEKS                       R1 R0 K1 ["_obj"]
       15 RETURN                           R1 1

PROTO_13:
        0 FASTCALL2K                       ASSERT R1 K0 ; [+5]
        2 MOVE                             R4 R1
        3 LOADK                            R5 K0 ["ContextItem:createSimple expects a name parameter"]
        4 GETIMPORT                        R3 K2 [assert]
        6 CALL                             R3 2 0
        7 FASTCALL1                        TYPEOF R1 ; [+3]
        8 MOVE                             R6 R1
        9 GETIMPORT                        R5 K4 [typeof]
       11 CALL                             R5 1 1
       12 JUMPIFEQKS                       R5 K5 ["string"] ; [+2]
       14 LOADB                            R4 0 +1
       15 LOADB                            R4 1
       16 FASTCALL2K                       ASSERT R4 K6 ; [+4]
       18 LOADK                            R5 K6 ["ContextItem:createSimple expects the name parameter to be a string"]
       19 GETIMPORT                        R3 K2 [assert]
       21 CALL                             R3 2 0
       22 JUMPIFNOT                        R2 ; [+15]
       23 FASTCALL1                        TYPEOF R2 ; [+3]
       24 MOVE                             R6 R2
       25 GETIMPORT                        R5 K4 [typeof]
       27 CALL                             R5 1 1
       28 JUMPIFEQKS                       R5 K7 ["table"] ; [+2]
       30 LOADB                            R4 0 +1
       31 LOADB                            R4 1
       32 FASTCALL2K                       ASSERT R4 K8 ; [+4]
       34 LOADK                            R5 K8 ["ContextItem:createSimple expects the options parameter to be either nil or a table"]
       35 GETIMPORT                        R3 K2 [assert]
       37 CALL                             R3 2 0
       38 GETUPVAL                         R3 0
       39 MOVE                             R5 R1
       40 NAMECALL                         R3 R3 K9 ["extend"]
       42 CALL                             R3 2 1
       43 NEWCLOSURE                       R4 P0
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R3
       46 CAPTURE                          UPVAL U1
       47 SETTABLEKS                       R4 R3 K10 ["new"]
       49 NEWCLOSURE                       R4 P1
       50 CAPTURE                          VAL R2
       51 SETTABLEKS                       R4 R3 K11 ["destroy"]
       53 DUPCLOSURE                       R4 K12 [PROTO_10]
       54 SETTABLEKS                       R4 R3 K13 ["getSignal"]
       56 DUPCLOSURE                       R4 K14 [PROTO_11]
       57 SETTABLEKS                       R4 R3 K15 ["getConsumerItem"]
       59 NEWCLOSURE                       R4 P4
       60 CAPTURE                          VAL R2
       61 SETTABLEKS                       R4 R3 K16 ["get"]
       63 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Util"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["React"]
       16 GETTABLEKS                       R3 R1 K9 ["Symbol"]
       18 GETTABLEKS                       R4 R1 K10 ["Signal"]
       20 NEWTABLE                         R5 1 0
       22 DUPCLOSURE                       R6 K11 [PROTO_0]
       23 SETTABLEKS                       R6 R5 K12 ["__tostring"]
       25 NEWTABLE                         R6 8 0
       27 SETTABLEKS                       R6 R6 K13 ["__index"]
       29 FASTCALL2                        SETMETATABLE R6 R5 ; [+5]
       31 MOVE                             R8 R6
       32 MOVE                             R9 R5
       33 GETIMPORT                        R7 K15 [setmetatable]
       35 CALL                             R7 2 0
       36 DUPCLOSURE                       R7 K16 [PROTO_2]
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R5
       40 SETTABLEKS                       R7 R6 K17 ["extend"]
       42 JUMPIFEQKS                       R2 K18 [""] ; [+5]
       44 DUPCLOSURE                       R7 K19 [PROTO_3]
       45 CAPTURE                          VAL R2
       46 SETTABLEKS                       R7 R6 K20 ["getProvider"]
       48 DUPCLOSURE                       R7 K21 [PROTO_4]
       49 SETTABLEKS                       R7 R6 K22 ["getSignal"]
       51 DUPCLOSURE                       R7 K23 [PROTO_5]
       52 SETTABLEKS                       R7 R6 K24 ["destroy"]
       54 DUPCLOSURE                       R7 K25 [PROTO_6]
       55 SETTABLEKS                       R7 R6 K12 ["__tostring"]
       57 DUPCLOSURE                       R7 K26 [PROTO_13]
       58 CAPTURE                          VAL R6
       59 CAPTURE                          VAL R4
       60 SETTABLEKS                       R7 R6 K27 ["createSimple"]
       62 RETURN                           R6 1
