PROTO_0:
        0 LOADB                            R1 0
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [typeof]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["userdata"] ; [+14]
        8 FASTCALL1                        TOSTRING R0 ; [+3]
        9 MOVE                             R3 R0
       10 GETIMPORT                        R2 K4 [tostring]
       12 CALL                             R2 1 1
       13 LOADK                            R4 K5 ["Symbol%(.*%)"]
       14 NAMECALL                         R2 R2 K6 ["match"]
       16 CALL                             R2 2 1
       17 JUMPIFNOTEQKNIL                  R2 ; [+2]
       19 LOADB                            R1 0 +1
       20 LOADB                            R1 1
       21 RETURN                           R1 1

PROTO_1:
        0 LOADB                            R1 1
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [typeof]
        5 CALL                             R2 1 1
        6 JUMPIFEQKS                       R2 K2 ["function"] ; [+36]
        8 LOADB                            R1 0
        9 FASTCALL1                        TYPEOF R0 ; [+3]
       10 MOVE                             R3 R0
       11 GETIMPORT                        R2 K1 [typeof]
       13 CALL                             R2 1 1
       14 JUMPIFNOTEQKS                    R2 K3 ["table"] ; [+28]
       16 LOADB                            R1 0
       17 FASTCALL1                        GETMETATABLE R0 ; [+3]
       18 MOVE                             R4 R0
       19 GETIMPORT                        R3 K5 [getmetatable]
       21 CALL                             R3 1 1
       22 FASTCALL1                        TYPEOF R3 ; [+2]
       23 GETIMPORT                        R2 K1 [typeof]
       25 CALL                             R2 1 1
       26 JUMPIFNOTEQKS                    R2 K3 ["table"] ; [+16]
       28 FASTCALL1                        GETMETATABLE R0 ; [+3]
       29 MOVE                             R5 R0
       30 GETIMPORT                        R4 K5 [getmetatable]
       32 CALL                             R4 1 1
       33 GETTABLEKS                       R3 R4 K6 ["__call"]
       35 FASTCALL1                        TYPEOF R3 ; [+2]
       36 GETIMPORT                        R2 K1 [typeof]
       38 CALL                             R2 1 1
       39 JUMPIFEQKS                       R2 K2 ["function"] ; [+2]
       41 LOADB                            R1 0 +1
       42 LOADB                            R1 1
       43 RETURN                           R1 1

PROTO_2:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["string"] ; [+38]
        7 LOADB                            R2 0
        8 FASTCALL1                        TYPEOF R0 ; [+3]
        9 MOVE                             R4 R0
       10 GETIMPORT                        R3 K1 [typeof]
       12 CALL                             R3 1 1
       13 JUMPIFNOTEQKS                    R3 K3 ["userdata"] ; [+14]
       15 FASTCALL1                        TOSTRING R0 ; [+3]
       16 MOVE                             R4 R0
       17 GETIMPORT                        R3 K5 [tostring]
       19 CALL                             R3 1 1
       20 LOADK                            R5 K6 ["Symbol%(.*%)"]
       21 NAMECALL                         R3 R3 K7 ["match"]
       23 CALL                             R3 2 1
       24 JUMPIFNOTEQKNIL                  R3 ; [+2]
       26 LOADB                            R2 0 +1
       27 LOADB                            R2 1
       28 JUMPIF                           R2 ; [+15]
       29 FASTCALL1                        TYPEOF R0 ; [+3]
       30 MOVE                             R3 R0
       31 GETIMPORT                        R2 K1 [typeof]
       33 CALL                             R2 1 1
       34 JUMPIFEQKS                       R2 K8 ["number"] ; [+9]
       36 GETIMPORT                        R2 K10 [error]
       38 GETUPVAL                         R4 0
       39 GETTABLEKS                       R3 R4 K11 ["new"]
       41 LOADK                            R4 K12 ["`eventName` must be a string, symbol, or number"]
       42 CALL                             R3 1 -1
       43 CALL                             R2 -1 0
       44 GETUPVAL                         R2 1
       45 MOVE                             R3 R0
       46 CALL                             R2 1 1
       47 JUMPIFNOT                        R2 ; [+11]
       48 GETUPVAL                         R2 2
       49 JUMPIFEQ                         R1 R2 ; [+9]
       51 GETIMPORT                        R2 K10 [error]
       53 GETUPVAL                         R4 0
       54 GETTABLEKS                       R3 R4 K11 ["new"]
       56 LOADK                            R4 K13 ["`eventName` cannot be meta event `listenerAdded` or `listenerRemoved`"]
       57 CALL                             R3 1 -1
       58 CALL                             R2 -1 0
       59 RETURN                           R0 0

PROTO_3:
        0 LOADB                            R1 1
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [typeof]
        5 CALL                             R2 1 1
        6 JUMPIFEQKS                       R2 K2 ["function"] ; [+36]
        8 LOADB                            R1 0
        9 FASTCALL1                        TYPEOF R0 ; [+3]
       10 MOVE                             R3 R0
       11 GETIMPORT                        R2 K1 [typeof]
       13 CALL                             R2 1 1
       14 JUMPIFNOTEQKS                    R2 K3 ["table"] ; [+28]
       16 LOADB                            R1 0
       17 FASTCALL1                        GETMETATABLE R0 ; [+3]
       18 MOVE                             R4 R0
       19 GETIMPORT                        R3 K5 [getmetatable]
       21 CALL                             R3 1 1
       22 FASTCALL1                        TYPEOF R3 ; [+2]
       23 GETIMPORT                        R2 K1 [typeof]
       25 CALL                             R2 1 1
       26 JUMPIFNOTEQKS                    R2 K3 ["table"] ; [+16]
       28 FASTCALL1                        GETMETATABLE R0 ; [+3]
       29 MOVE                             R5 R0
       30 GETIMPORT                        R4 K5 [getmetatable]
       32 CALL                             R4 1 1
       33 GETTABLEKS                       R3 R4 K6 ["__call"]
       35 FASTCALL1                        TYPEOF R3 ; [+2]
       36 GETIMPORT                        R2 K1 [typeof]
       38 CALL                             R2 1 1
       39 JUMPIFEQKS                       R2 K2 ["function"] ; [+2]
       41 LOADB                            R1 0 +1
       42 LOADB                            R1 1
       43 JUMPIF                           R1 ; [+8]
       44 GETIMPORT                        R1 K8 [error]
       46 GETUPVAL                         R3 0
       47 GETTABLEKS                       R2 R3 K9 ["new"]
       49 LOADK                            R3 K10 ["listener must be a function"]
       50 CALL                             R2 1 -1
       51 CALL                             R1 -1 0
       52 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K0 ["get"]
        4 CALL                             R2 2 1
        5 MOVE                             R5 R1
        6 NAMECALL                         R3 R2 K1 ["has"]
        8 CALL                             R3 2 1
        9 JUMPIF                           R3 ; [+8]
       10 MOVE                             R5 R1
       11 GETUPVAL                         R7 1
       12 GETTABLEKS                       R6 R7 K2 ["new"]
       14 CALL                             R6 0 -1
       15 NAMECALL                         R3 R2 K3 ["set"]
       17 CALL                             R3 -1 0
       18 MOVE                             R5 R1
       19 NAMECALL                         R3 R2 K0 ["get"]
       21 CALL                             R3 2 -1
       22 RETURN                           R3 -1

PROTO_5:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R4 R1
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["string"] ; [+30]
        7 LOADB                            R3 0
        8 FASTCALL1                        TYPEOF R1 ; [+3]
        9 MOVE                             R5 R1
       10 GETIMPORT                        R4 K1 [typeof]
       12 CALL                             R4 1 1
       13 JUMPIFNOTEQKS                    R4 K3 ["userdata"] ; [+14]
       15 FASTCALL1                        TOSTRING R1 ; [+3]
       16 MOVE                             R5 R1
       17 GETIMPORT                        R4 K5 [tostring]
       19 CALL                             R4 1 1
       20 LOADK                            R6 K6 ["Symbol%(.*%)"]
       21 NAMECALL                         R4 R4 K7 ["match"]
       23 CALL                             R4 2 1
       24 JUMPIFNOTEQKNIL                  R4 ; [+2]
       26 LOADB                            R3 0 +1
       27 LOADB                            R3 1
       28 JUMPIF                           R3 ; [+7]
       29 FASTCALL1                        TYPEOF R1 ; [+3]
       30 MOVE                             R4 R1
       31 GETIMPORT                        R3 K1 [typeof]
       33 CALL                             R3 1 1
       34 JUMPIFNOTEQKS                    R3 K8 ["number"] ; [+3]
       36 MOVE                             R2 R1
       37 JUMP                             ; [+1]
       38 GETUPVAL                         R2 0
       39 GETUPVAL                         R3 1
       40 MOVE                             R5 R0
       41 NAMECALL                         R3 R3 K9 ["get"]
       43 CALL                             R3 2 1
       44 MOVE                             R6 R2
       45 NAMECALL                         R4 R3 K10 ["has"]
       47 CALL                             R4 2 1
       48 JUMPIF                           R4 ; [+8]
       49 MOVE                             R6 R2
       50 GETUPVAL                         R8 2
       51 GETTABLEKS                       R7 R8 K11 ["new"]
       53 CALL                             R7 0 -1
       54 NAMECALL                         R4 R3 K12 ["set"]
       56 CALL                             R4 -1 0
       57 MOVE                             R6 R2
       58 NAMECALL                         R4 R3 K9 ["get"]
       60 CALL                             R4 2 -1
       61 RETURN                           R4 -1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R0
        2 NAMECALL                         R3 R3 K0 ["get"]
        4 CALL                             R3 2 1
        5 MOVE                             R6 R1
        6 NAMECALL                         R4 R3 K1 ["has"]
        8 CALL                             R4 2 1
        9 JUMPIFNOT                        R4 ; [+14]
       10 MOVE                             R6 R1
       11 NAMECALL                         R4 R3 K0 ["get"]
       13 CALL                             R4 2 1
       14 NAMECALL                         R4 R4 K2 ["ipairs"]
       16 CALL                             R4 1 3
       17 FORGPREP                         R4
       18 MOVE                             R11 R2
       19 NAMECALL                         R9 R8 K3 ["enqueue"]
       21 CALL                             R9 2 0
       22 FORGLOOP                         R4 2 ; [-5]
       24 GETUPVAL                         R6 1
       25 NAMECALL                         R4 R3 K1 ["has"]
       27 CALL                             R4 2 1
       28 JUMPIFNOT                        R4 ; [+32]
       29 GETUPVAL                         R5 2
       30 GETTABLEKS                       R4 R5 K4 ["all"]
       32 NEWTABLE                         R5 0 2
       34 GETUPVAL                         R7 2
       35 GETTABLEKS                       R6 R7 K5 ["resolve"]
       37 MOVE                             R7 R1
       38 CALL                             R6 1 1
       39 GETUPVAL                         R8 2
       40 GETTABLEKS                       R7 R8 K5 ["resolve"]
       42 MOVE                             R8 R2
       43 CALL                             R7 1 -1
       44 SETLIST                          R5 R6 -1 [1]
       46 CALL                             R4 1 1
       47 GETUPVAL                         R7 1
       48 NAMECALL                         R5 R3 K0 ["get"]
       50 CALL                             R5 2 1
       51 NAMECALL                         R5 R5 K2 ["ipairs"]
       53 CALL                             R5 1 3
       54 FORGPREP                         R5
       55 MOVE                             R12 R4
       56 NAMECALL                         R10 R9 K3 ["enqueue"]
       58 CALL                             R10 2 0
       59 FORGLOOP                         R5 2 ; [-5]
       61 RETURN                           R0 0

PROTO_7:
        0 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R3 0
        1 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
        3 MOVE                             R4 R1
        4 GETIMPORT                        R2 K2 [table.insert]
        6 CALL                             R2 2 0
        7 GETUPVAL                         R2 1
        8 CALL                             R2 0 0
        9 RETURN                           R0 0

PROTO_9:
        0 LOADB                            R1 1
        1 SETUPVAL                         R1 0
        2 GETUPVAL                         R1 1
        3 CALL                             R1 0 0
        4 RETURN                           R0 0

PROTO_10:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+6]
        3 DUPTABLE                         R0 K1 [{"done"}]
        4 LOADB                            R1 1
        5 SETTABLEKS                       R1 R0 K0 ["done"]
        7 RETURN                           R0 1
        8 GETUPVAL                         R1 0
        9 LENGTH                           R0 R1
       10 JUMPIFNOTEQKN                    R0 K2 [0] ; [+24]
       12 GETUPVAL                         R0 1
       13 JUMPIFNOT                        R0 ; [+7]
       14 LOADNIL                          R0
       15 SETUPVAL                         R0 0
       16 GETUPVAL                         R0 2
       17 NAMECALL                         R0 R0 K3 ["next"]
       19 CALL                             R0 1 -1
       20 RETURN                           R0 -1
       21 GETUPVAL                         R1 3
       22 GETTABLEKS                       R0 R1 K4 ["new"]
       24 NEWCLOSURE                       R1 P0
       25 CAPTURE                          UPVAL U4
       26 CALL                             R0 1 1
       27 NAMECALL                         R0 R0 K5 ["expect"]
       29 CALL                             R0 1 0
       30 GETUPVAL                         R0 2
       31 NAMECALL                         R0 R0 K3 ["next"]
       33 CALL                             R0 1 -1
       34 RETURN                           R0 -1
       35 DUPTABLE                         R0 K7 [{"done", "value"}]
       36 LOADB                            R1 0
       37 SETTABLEKS                       R1 R0 K0 ["done"]
       39 GETUPVAL                         R2 3
       40 GETTABLEKS                       R1 R2 K8 ["resolve"]
       42 GETIMPORT                        R2 K11 [table.remove]
       44 GETUPVAL                         R3 0
       45 LOADN                            R4 1
       46 CALL                             R2 2 1
       47 CALL                             R1 1 1
       48 NAMECALL                         R1 R1 K5 ["expect"]
       50 CALL                             R1 1 1
       51 SETTABLEKS                       R1 R0 K6 ["value"]
       53 RETURN                           R0 1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["resolve"]
        3 CALL                             R1 0 1
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U3
       10 NAMECALL                         R1 R1 K1 ["andThen"]
       12 CALL                             R1 2 -1
       13 RETURN                           R1 -1

PROTO_13:
        0 LOADNIL                          R0
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 FORGPREP                         R0
        6 GETUPVAL                         R5 2
        7 GETUPVAL                         R6 3
        8 MOVE                             R7 R4
        9 CALL                             R5 2 1
       10 GETUPVAL                         R7 4
       11 NAMECALL                         R5 R5 K0 ["delete"]
       13 CALL                             R5 2 0
       14 FORGLOOP                         R0 2 ; [-9]
       16 GETUPVAL                         R0 5
       17 CALL                             R0 0 0
       18 GETUPVAL                         R2 6
       19 LENGTH                           R1 R2
       20 LOADN                            R2 0
       21 JUMPIFNOTLT                      R2 R1 ; [+12]
       23 DUPTABLE                         R0 K3 [{"done", "value"}]
       24 LOADB                            R1 1
       25 SETTABLEKS                       R1 R0 K1 ["done"]
       27 GETUPVAL                         R1 7
       28 NAMECALL                         R1 R1 K4 ["expect"]
       30 CALL                             R1 1 1
       31 SETTABLEKS                       R1 R0 K2 ["value"]
       33 RETURN                           R0 1
       34 DUPTABLE                         R0 K5 [{"done"}]
       35 LOADB                            R1 1
       36 SETTABLEKS                       R1 R0 K1 ["done"]
       38 RETURN                           R0 1

PROTO_14:
        0 PREPVARARGS                      1
        1 GETVARARGS                       R1 1
        2 NEWTABLE                         R2 0 0
        4 GETVARARGS                       R3 -1
        5 SETLIST                          R2 R3 -1 [1]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K0 ["resolve"]
       10 CALL                             R3 0 1
       11 NEWCLOSURE                       R5 P0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          UPVAL U5
       17 CAPTURE                          UPVAL U6
       18 CAPTURE                          VAL R2
       19 CAPTURE                          VAL R1
       20 NAMECALL                         R3 R3 K1 ["andThen"]
       22 CALL                             R3 2 -1
       23 RETURN                           R3 -1

PROTO_15:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["isArray"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 JUMPIFNOT                        R2 ; [+1]
        6 JUMP                             ; [+15]
        7 JUMPIFEQKNIL                     R1 ; [+8]
        9 NEWTABLE                         R2 0 1
       11 MOVE                             R3 R1
       12 SETLIST                          R2 R3 1 [1]
       14 MOVE                             R1 R2
       15 JUMP                             ; [+6]
       16 NEWTABLE                         R2 0 1
       18 GETUPVAL                         R3 1
       19 SETLIST                          R2 R3 1 [1]
       21 MOVE                             R1 R2
       22 LOADB                            R2 0
       23 DUPCLOSURE                       R3 K1 [PROTO_7]
       24 NEWTABLE                         R4 0 0
       26 DUPTABLE                         R5 K4 [{"enqueue", "finish"}]
       27 NEWCLOSURE                       R6 P1
       28 CAPTURE                          REF R4
       29 CAPTURE                          REF R3
       30 SETTABLEKS                       R6 R5 K2 ["enqueue"]
       32 NEWCLOSURE                       R6 P2
       33 CAPTURE                          REF R2
       34 CAPTURE                          REF R3
       35 SETTABLEKS                       R6 R5 K3 ["finish"]
       37 MOVE                             R6 R1
       38 LOADNIL                          R7
       39 LOADNIL                          R8
       40 FORGPREP                         R6
       41 GETUPVAL                         R11 2
       42 MOVE                             R12 R0
       43 MOVE                             R13 R10
       44 CALL                             R11 2 1
       45 MOVE                             R13 R5
       46 NAMECALL                         R11 R11 K5 ["add"]
       48 CALL                             R11 2 0
       49 FORGLOOP                         R6 2 ; [-9]
       51 NEWTABLE                         R6 2 0
       53 NEWCLOSURE                       R7 P3
       54 CAPTURE                          UPVAL U3
       55 CAPTURE                          REF R4
       56 CAPTURE                          REF R2
       57 CAPTURE                          REF R3
       58 SETTABLEKS                       R7 R6 K6 ["next"]
       60 NEWCLOSURE                       R7 P4
       61 CAPTURE                          UPVAL U3
       62 CAPTURE                          REF R4
       63 CAPTURE                          REF R1
       64 CAPTURE                          UPVAL U2
       65 CAPTURE                          VAL R0
       66 CAPTURE                          VAL R5
       67 CAPTURE                          REF R3
       68 SETTABLEKS                       R7 R6 K7 ["return"]
       70 CLOSEUPVALS                      R1
       71 RETURN                           R6 1

PROTO_16:
        0 LOADB                            R1 1
        1 GETUPVAL                         R2 0
        2 JUMPIFEQ                         R0 R2 ; [+6]
        4 GETUPVAL                         R2 1
        5 JUMPIFEQ                         R0 R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_17:
        0 GETUPVAL                         R0 1
        1 GETUPVAL                         R2 0
        2 NAMECALL                         R0 R0 K0 ["JSONEncode"]
        4 CALL                             R0 2 1
        5 SETUPVAL                         R0 0
        6 RETURN                           R0 0

PROTO_18:
        0 LOADK                            R0 K0 ["Object with the following keys failed to stringify: %s"]
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K1 ["join"]
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R3 R4 K2 ["keys"]
        7 GETUPVAL                         R4 0
        8 CALL                             R3 1 1
        9 LOADK                            R4 K3 [","]
       10 CALL                             R2 2 -1
       11 NAMECALL                         R0 R0 K4 ["format"]
       13 CALL                             R0 -1 1
       14 SETUPVAL                         R0 0
       15 RETURN                           R0 0

PROTO_19:
        0 GETIMPORT                        R5 K1 [xpcall]
        2 NEWCLOSURE                       R6 P0
        3 CAPTURE                          REF R4
        4 CAPTURE                          UPVAL U0
        5 NEWCLOSURE                       R7 P1
        6 CAPTURE                          REF R4
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CALL                             R5 2 0
       10 MOVE                             R6 R3
       11 LOADB                            R5 0
       12 FASTCALL1                        TYPEOF R6 ; [+3]
       13 MOVE                             R8 R6
       14 GETIMPORT                        R7 K3 [typeof]
       16 CALL                             R7 1 1
       17 JUMPIFNOTEQKS                    R7 K4 ["userdata"] ; [+14]
       19 FASTCALL1                        TOSTRING R6 ; [+3]
       20 MOVE                             R8 R6
       21 GETIMPORT                        R7 K6 [tostring]
       23 CALL                             R7 1 1
       24 LOADK                            R9 K7 ["Symbol%(.*%)"]
       25 NAMECALL                         R7 R7 K8 ["match"]
       27 CALL                             R7 2 1
       28 JUMPIFNOTEQKNIL                  R7 ; [+2]
       30 LOADB                            R5 0 +1
       31 LOADB                            R5 1
       32 JUMPIF                           R5 ; [+7]
       33 FASTCALL1                        TYPEOF R3 ; [+3]
       34 MOVE                             R6 R3
       35 GETIMPORT                        R5 K3 [typeof]
       37 CALL                             R5 1 1
       38 JUMPIFNOTEQKS                    R5 K9 ["number"] ; [+7]
       40 FASTCALL1                        TOSTRING R3 ; [+3]
       41 MOVE                             R6 R3
       42 GETIMPORT                        R5 K6 [tostring]
       44 CALL                             R5 1 1
       45 MOVE                             R3 R5
       46 GETIMPORT                        R5 K12 [DateTime.now]
       48 CALL                             R5 0 1
       49 NAMECALL                         R5 R5 K13 ["ToUniversalTime"]
       51 CALL                             R5 1 1
       52 LOADK                            R6 K14 ["%d:%d:%d.%d"]
       53 GETTABLEKS                       R8 R5 K15 ["Hour"]
       55 GETTABLEKS                       R9 R5 K16 ["Minute"]
       57 GETTABLEKS                       R10 R5 K17 ["Second"]
       59 GETTABLEKS                       R11 R5 K18 ["Millisecond"]
       61 NAMECALL                         R6 R6 K19 ["format"]
       63 CALL                             R6 5 1
       64 GETUPVAL                         R8 3
       65 GETTABLEKS                       R7 R8 K20 ["log"]
       67 LOADK                            R8 K21 ["[%s][emittery:%s][%s] Event Name: %s\n\tdata: %s"]
       68 MOVE                             R10 R6
       69 FASTCALL1                        TOSTRING R1 ; [+3]
       70 MOVE                             R12 R1
       71 GETIMPORT                        R11 K6 [tostring]
       73 CALL                             R11 1 1
       74 FASTCALL1                        TOSTRING R2 ; [+3]
       75 MOVE                             R13 R2
       76 GETIMPORT                        R12 K6 [tostring]
       78 CALL                             R12 1 1
       79 FASTCALL1                        TOSTRING R3 ; [+3]
       80 MOVE                             R14 R3
       81 GETIMPORT                        R13 K6 [tostring]
       83 CALL                             R13 1 1
       84 FASTCALL1                        TOSTRING R4 ; [+3]
       85 MOVE                             R15 R4
       86 GETIMPORT                        R14 K6 [tostring]
       88 CALL                             R14 1 1
       89 NAMECALL                         R8 R8 K19 ["format"]
       91 CALL                             R8 6 -1
       92 CALL                             R7 -1 0
       93 CLOSEUPVALS                      R4
       94 RETURN                           R0 0

PROTO_20:
        0 NEWTABLE                         R2 1 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        5 GETIMPORT                        R1 K1 [setmetatable]
        7 CALL                             R1 2 1
        8 JUMPIFEQKNIL                     R0 ; [+3]
       10 MOVE                             R2 R0
       11 JUMP                             ; [+2]
       12 NEWTABLE                         R2 0 0
       14 GETUPVAL                         R3 1
       15 MOVE                             R5 R1
       16 GETUPVAL                         R7 2
       17 GETTABLEKS                       R6 R7 K2 ["new"]
       19 CALL                             R6 0 -1
       20 NAMECALL                         R3 R3 K3 ["set"]
       22 CALL                             R3 -1 0
       23 GETUPVAL                         R3 3
       24 MOVE                             R5 R1
       25 GETUPVAL                         R7 4
       26 GETTABLEKS                       R6 R7 K2 ["new"]
       28 CALL                             R6 0 -1
       29 NAMECALL                         R3 R3 K3 ["set"]
       31 CALL                             R3 -1 0
       32 GETUPVAL                         R3 5
       33 MOVE                             R5 R1
       34 GETUPVAL                         R7 4
       35 GETTABLEKS                       R6 R7 K2 ["new"]
       37 CALL                             R6 0 -1
       38 NAMECALL                         R3 R3 K3 ["set"]
       40 CALL                             R3 -1 0
       41 GETUPVAL                         R5 6
       42 GETTABLEKS                       R4 R5 K4 ["toJSBoolean"]
       44 GETTABLEKS                       R5 R2 K5 ["debug"]
       46 CALL                             R4 1 1
       47 JUMPIFNOT                        R4 ; [+3]
       48 GETTABLEKS                       R3 R2 K5 ["debug"]
       50 JUMPIF                           R3 ; [+2]
       51 NEWTABLE                         R3 0 0
       53 SETTABLEKS                       R3 R1 K5 ["debug"]
       55 GETTABLEKS                       R4 R1 K5 ["debug"]
       57 GETTABLEKS                       R3 R4 K6 ["enabled"]
       59 JUMPIFNOTEQKNIL                  R3 ; [+6]
       61 GETTABLEKS                       R3 R1 K5 ["debug"]
       63 LOADB                            R4 0
       64 SETTABLEKS                       R4 R3 K6 ["enabled"]
       66 GETUPVAL                         R4 6
       67 GETTABLEKS                       R3 R4 K4 ["toJSBoolean"]
       69 GETTABLEKS                       R5 R1 K5 ["debug"]
       71 GETTABLEKS                       R4 R5 K7 ["logger"]
       73 CALL                             R3 1 1
       74 JUMPIF                           R3 ; [+9]
       75 GETTABLEKS                       R3 R1 K5 ["debug"]
       77 DUPCLOSURE                       R4 K8 [PROTO_19]
       78 CAPTURE                          UPVAL U7
       79 CAPTURE                          UPVAL U8
       80 CAPTURE                          UPVAL U9
       81 CAPTURE                          UPVAL U10
       82 SETTABLEKS                       R4 R3 K7 ["logger"]
       84 RETURN                           R1 1

PROTO_21:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_22:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["getIsDebugEnabled"]
        3 CALL                             R4 0 1
        4 JUMPIF                           R4 ; [+5]
        5 GETTABLEKS                       R5 R0 K1 ["debug"]
        7 GETTABLEKS                       R4 R5 K2 ["enabled"]
        9 JUMPIFNOT                        R4 ; [+12]
       10 GETTABLEKS                       R4 R0 K1 ["debug"]
       12 MOVE                             R6 R1
       13 GETTABLEKS                       R8 R0 K1 ["debug"]
       15 GETTABLEKS                       R7 R8 K3 ["name"]
       17 MOVE                             R8 R2
       18 MOVE                             R9 R3
       19 NAMECALL                         R4 R4 K4 ["logger"]
       21 CALL                             R4 5 0
       22 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["off"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_25:
        0 LOADB                            R3 1
        1 FASTCALL1                        TYPEOF R2 ; [+3]
        2 MOVE                             R5 R2
        3 GETIMPORT                        R4 K1 [typeof]
        5 CALL                             R4 1 1
        6 JUMPIFEQKS                       R4 K2 ["function"] ; [+36]
        8 LOADB                            R3 0
        9 FASTCALL1                        TYPEOF R2 ; [+3]
       10 MOVE                             R5 R2
       11 GETIMPORT                        R4 K1 [typeof]
       13 CALL                             R4 1 1
       14 JUMPIFNOTEQKS                    R4 K3 ["table"] ; [+28]
       16 LOADB                            R3 0
       17 FASTCALL1                        GETMETATABLE R2 ; [+3]
       18 MOVE                             R6 R2
       19 GETIMPORT                        R5 K5 [getmetatable]
       21 CALL                             R5 1 1
       22 FASTCALL1                        TYPEOF R5 ; [+2]
       23 GETIMPORT                        R4 K1 [typeof]
       25 CALL                             R4 1 1
       26 JUMPIFNOTEQKS                    R4 K3 ["table"] ; [+16]
       28 FASTCALL1                        GETMETATABLE R2 ; [+3]
       29 MOVE                             R7 R2
       30 GETIMPORT                        R6 K5 [getmetatable]
       32 CALL                             R6 1 1
       33 GETTABLEKS                       R5 R6 K6 ["__call"]
       35 FASTCALL1                        TYPEOF R5 ; [+2]
       36 GETIMPORT                        R4 K1 [typeof]
       38 CALL                             R4 1 1
       39 JUMPIFEQKS                       R4 K2 ["function"] ; [+2]
       41 LOADB                            R3 0 +1
       42 LOADB                            R3 1
       43 JUMPIF                           R3 ; [+8]
       44 GETIMPORT                        R3 K8 [error]
       46 GETUPVAL                         R5 0
       47 GETTABLEKS                       R4 R5 K9 ["new"]
       49 LOADK                            R5 K10 ["listener must be a function"]
       50 CALL                             R4 1 -1
       51 CALL                             R3 -1 0
       52 GETUPVAL                         R4 1
       53 GETTABLEKS                       R3 R4 K11 ["isArray"]
       55 MOVE                             R4 R1
       56 CALL                             R3 1 1
       57 JUMPIFNOT                        R3 ; [+1]
       58 JUMP                             ; [+6]
       59 NEWTABLE                         R3 0 1
       61 MOVE                             R4 R1
       62 SETLIST                          R3 R4 1 [1]
       64 MOVE                             R1 R3
       65 MOVE                             R3 R1
       66 LOADNIL                          R4
       67 LOADNIL                          R5
       68 FORGPREP                         R3
       69 GETUPVAL                         R8 2
       70 MOVE                             R9 R7
       71 GETUPVAL                         R10 3
       72 CALL                             R8 2 0
       73 GETUPVAL                         R9 4
       74 MOVE                             R11 R0
       75 NAMECALL                         R9 R9 K12 ["get"]
       77 CALL                             R9 2 1
       78 MOVE                             R12 R7
       79 NAMECALL                         R10 R9 K13 ["has"]
       81 CALL                             R10 2 1
       82 JUMPIF                           R10 ; [+8]
       83 MOVE                             R12 R7
       84 GETUPVAL                         R14 5
       85 GETTABLEKS                       R13 R14 K9 ["new"]
       87 CALL                             R13 0 -1
       88 NAMECALL                         R10 R9 K14 ["set"]
       90 CALL                             R10 -1 0
       91 MOVE                             R12 R7
       92 NAMECALL                         R10 R9 K12 ["get"]
       94 CALL                             R10 2 1
       95 MOVE                             R8 R10
       96 MOVE                             R10 R2
       97 NAMECALL                         R8 R8 K15 ["add"]
       99 CALL                             R8 2 0
      100 LOADK                            R10 K16 ["subscribe"]
      101 MOVE                             R11 R7
      102 LOADNIL                          R12
      103 NAMECALL                         R8 R0 K17 ["logIfDebugEnabled"]
      105 CALL                             R8 4 0
      106 GETUPVAL                         R8 6
      107 MOVE                             R9 R7
      108 CALL                             R8 1 1
      109 JUMPIF                           R8 ; [+10]
      110 GETUPVAL                         R10 7
      111 DUPTABLE                         R11 K20 [{"eventName", "listener"}]
      112 SETTABLEKS                       R7 R11 K18 ["eventName"]
      114 SETTABLEKS                       R2 R11 K19 ["listener"]
      116 GETUPVAL                         R12 3
      117 NAMECALL                         R8 R0 K21 ["emit"]
      119 CALL                             R8 4 0
      120 FORGLOOP                         R3 2 ; [-52]
      122 NEWCLOSURE                       R3 P0
      123 CAPTURE                          VAL R0
      124 CAPTURE                          REF R1
      125 CAPTURE                          VAL R2
      126 CLOSEUPVALS                      R1
      127 RETURN                           R3 1

PROTO_26:
        0 LOADB                            R3 1
        1 FASTCALL1                        TYPEOF R2 ; [+3]
        2 MOVE                             R5 R2
        3 GETIMPORT                        R4 K1 [typeof]
        5 CALL                             R4 1 1
        6 JUMPIFEQKS                       R4 K2 ["function"] ; [+36]
        8 LOADB                            R3 0
        9 FASTCALL1                        TYPEOF R2 ; [+3]
       10 MOVE                             R5 R2
       11 GETIMPORT                        R4 K1 [typeof]
       13 CALL                             R4 1 1
       14 JUMPIFNOTEQKS                    R4 K3 ["table"] ; [+28]
       16 LOADB                            R3 0
       17 FASTCALL1                        GETMETATABLE R2 ; [+3]
       18 MOVE                             R6 R2
       19 GETIMPORT                        R5 K5 [getmetatable]
       21 CALL                             R5 1 1
       22 FASTCALL1                        TYPEOF R5 ; [+2]
       23 GETIMPORT                        R4 K1 [typeof]
       25 CALL                             R4 1 1
       26 JUMPIFNOTEQKS                    R4 K3 ["table"] ; [+16]
       28 FASTCALL1                        GETMETATABLE R2 ; [+3]
       29 MOVE                             R7 R2
       30 GETIMPORT                        R6 K5 [getmetatable]
       32 CALL                             R6 1 1
       33 GETTABLEKS                       R5 R6 K6 ["__call"]
       35 FASTCALL1                        TYPEOF R5 ; [+2]
       36 GETIMPORT                        R4 K1 [typeof]
       38 CALL                             R4 1 1
       39 JUMPIFEQKS                       R4 K2 ["function"] ; [+2]
       41 LOADB                            R3 0 +1
       42 LOADB                            R3 1
       43 JUMPIF                           R3 ; [+8]
       44 GETIMPORT                        R3 K8 [error]
       46 GETUPVAL                         R5 0
       47 GETTABLEKS                       R4 R5 K9 ["new"]
       49 LOADK                            R5 K10 ["listener must be a function"]
       50 CALL                             R4 1 -1
       51 CALL                             R3 -1 0
       52 GETUPVAL                         R4 1
       53 GETTABLEKS                       R3 R4 K11 ["isArray"]
       55 MOVE                             R4 R1
       56 CALL                             R3 1 1
       57 JUMPIFNOT                        R3 ; [+1]
       58 JUMP                             ; [+6]
       59 NEWTABLE                         R3 0 1
       61 MOVE                             R4 R1
       62 SETLIST                          R3 R4 1 [1]
       64 MOVE                             R1 R3
       65 MOVE                             R3 R1
       66 LOADNIL                          R4
       67 LOADNIL                          R5
       68 FORGPREP                         R3
       69 GETUPVAL                         R8 2
       70 MOVE                             R9 R7
       71 GETUPVAL                         R10 3
       72 CALL                             R8 2 0
       73 GETUPVAL                         R9 4
       74 MOVE                             R11 R0
       75 NAMECALL                         R9 R9 K12 ["get"]
       77 CALL                             R9 2 1
       78 MOVE                             R12 R7
       79 NAMECALL                         R10 R9 K13 ["has"]
       81 CALL                             R10 2 1
       82 JUMPIF                           R10 ; [+8]
       83 MOVE                             R12 R7
       84 GETUPVAL                         R14 5
       85 GETTABLEKS                       R13 R14 K9 ["new"]
       87 CALL                             R13 0 -1
       88 NAMECALL                         R10 R9 K14 ["set"]
       90 CALL                             R10 -1 0
       91 MOVE                             R12 R7
       92 NAMECALL                         R10 R9 K12 ["get"]
       94 CALL                             R10 2 1
       95 MOVE                             R8 R10
       96 MOVE                             R10 R2
       97 NAMECALL                         R8 R8 K15 ["delete"]
       99 CALL                             R8 2 0
      100 LOADK                            R10 K16 ["unsubscribe"]
      101 MOVE                             R11 R7
      102 LOADNIL                          R12
      103 NAMECALL                         R8 R0 K17 ["logIfDebugEnabled"]
      105 CALL                             R8 4 0
      106 GETUPVAL                         R8 6
      107 MOVE                             R9 R7
      108 CALL                             R8 1 1
      109 JUMPIF                           R8 ; [+10]
      110 GETUPVAL                         R10 7
      111 DUPTABLE                         R11 K20 [{"eventName", "listener"}]
      112 SETTABLEKS                       R7 R11 K18 ["eventName"]
      114 SETTABLEKS                       R2 R11 K19 ["listener"]
      116 GETUPVAL                         R12 3
      117 NAMECALL                         R8 R0 K21 ["emit"]
      119 CALL                             R8 4 0
      120 FORGLOOP                         R3 2 ; [-52]
      122 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 GETUPVAL                         R1 1
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_28:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 GETUPVAL                         R4 1
        3 NEWCLOSURE                       R5 P0
        4 CAPTURE                          REF R1
        5 CAPTURE                          VAL R0
        6 NAMECALL                         R2 R2 K0 ["on"]
        8 CALL                             R2 3 1
        9 MOVE                             R1 R2
       10 CLOSEUPVALS                      R1
       11 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["new"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 CALL                             R2 1 -1
        7 RETURN                           R2 -1

PROTO_30:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["isArray"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 JUMPIFNOT                        R2 ; [+1]
        6 JUMP                             ; [+6]
        7 NEWTABLE                         R2 0 1
        9 MOVE                             R3 R1
       10 SETLIST                          R2 R3 1 [1]
       12 MOVE                             R1 R2
       13 MOVE                             R2 R1
       14 LOADNIL                          R3
       15 LOADNIL                          R4
       16 FORGPREP                         R2
       17 GETUPVAL                         R7 1
       18 MOVE                             R8 R6
       19 GETUPVAL                         R9 2
       20 CALL                             R7 2 0
       21 FORGLOOP                         R2 2 ; [-5]
       23 GETUPVAL                         R2 3
       24 MOVE                             R3 R0
       25 MOVE                             R4 R1
       26 CALL                             R2 2 1
       27 RETURN                           R2 1

PROTO_31:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R0 R1 K0 ["delay"]
        4 LOADN                            R1 0
        5 CALL                             R0 1 1
        6 GETVARARGS                       R2 -1
        7 NAMECALL                         R0 R0 K1 ["andThenReturn"]
        9 CALL                             R0 -1 -1
       10 RETURN                           R0 -1

PROTO_32:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["has"]
        4 CALL                             R0 2 1
        5 JUMPIFNOT                        R0 ; [+4]
        6 GETUPVAL                         R0 1
        7 GETUPVAL                         R1 2
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1
       10 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["resolve"]
        3 CALL                             R1 0 1
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U2
        8 NAMECALL                         R1 R1 K1 ["andThen"]
       10 CALL                             R1 2 -1
       11 RETURN                           R1 -1

PROTO_34:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["has"]
        4 CALL                             R0 2 1
        5 JUMPIFNOT                        R0 ; [+5]
        6 GETUPVAL                         R0 1
        7 GETUPVAL                         R1 2
        8 GETUPVAL                         R2 3
        9 CALL                             R0 2 -1
       10 RETURN                           R0 -1
       11 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["resolve"]
        3 CALL                             R1 0 1
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 NAMECALL                         R1 R1 K1 ["andThen"]
       11 CALL                             R1 2 -1
       12 RETURN                           R1 -1

PROTO_36:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 0
        4 GETUPVAL                         R0 3
        5 LOADK                            R2 K0 ["emit"]
        6 GETUPVAL                         R3 1
        7 GETUPVAL                         R4 4
        8 NAMECALL                         R0 R0 K1 ["logIfDebugEnabled"]
       10 CALL                             R0 4 0
       11 GETUPVAL                         R0 5
       12 GETUPVAL                         R1 3
       13 GETUPVAL                         R2 1
       14 GETUPVAL                         R3 4
       15 CALL                             R0 3 0
       16 GETUPVAL                         R1 3
       17 GETUPVAL                         R2 1
       18 GETUPVAL                         R3 6
       19 MOVE                             R5 R1
       20 NAMECALL                         R3 R3 K2 ["get"]
       22 CALL                             R3 2 1
       23 MOVE                             R6 R2
       24 NAMECALL                         R4 R3 K3 ["has"]
       26 CALL                             R4 2 1
       27 JUMPIF                           R4 ; [+8]
       28 MOVE                             R6 R2
       29 GETUPVAL                         R8 7
       30 GETTABLEKS                       R7 R8 K4 ["new"]
       32 CALL                             R7 0 -1
       33 NAMECALL                         R4 R3 K5 ["set"]
       35 CALL                             R4 -1 0
       36 MOVE                             R6 R2
       37 NAMECALL                         R4 R3 K2 ["get"]
       39 CALL                             R4 2 1
       40 MOVE                             R0 R4
       41 GETUPVAL                         R1 8
       42 GETUPVAL                         R3 3
       43 NAMECALL                         R1 R1 K2 ["get"]
       45 CALL                             R1 2 1
       46 GETUPVAL                         R3 9
       47 GETTABLEKS                       R2 R3 K6 ["concat"]
       49 NEWTABLE                         R3 0 0
       51 GETUPVAL                         R5 9
       52 GETTABLEKS                       R4 R5 K7 ["from"]
       54 MOVE                             R5 R0
       55 CALL                             R4 1 -1
       56 CALL                             R2 -1 1
       57 GETUPVAL                         R5 10
       58 GETTABLEKS                       R4 R5 K8 ["toJSBoolean"]
       60 GETUPVAL                         R5 11
       61 GETUPVAL                         R6 1
       62 CALL                             R5 1 -1
       63 CALL                             R4 -1 1
       64 JUMPIFNOT                        R4 ; [+3]
       65 NEWTABLE                         R3 0 0
       67 JUMP                             ; [+11]
       68 GETUPVAL                         R4 9
       69 GETTABLEKS                       R3 R4 K6 ["concat"]
       71 NEWTABLE                         R4 0 0
       73 GETUPVAL                         R6 9
       74 GETTABLEKS                       R5 R6 K7 ["from"]
       76 MOVE                             R6 R1
       77 CALL                             R5 1 -1
       78 CALL                             R3 -1 1
       79 GETUPVAL                         R4 12
       80 DUPCLOSURE                       R6 K9 [PROTO_31]
       81 CAPTURE                          UPVAL U13
       82 NAMECALL                         R4 R4 K10 ["andThen"]
       84 CALL                             R4 2 1
       85 NAMECALL                         R4 R4 K11 ["expect"]
       87 CALL                             R4 1 0
       88 GETUPVAL                         R5 13
       89 GETTABLEKS                       R4 R5 K12 ["all"]
       91 GETUPVAL                         R6 9
       92 GETTABLEKS                       R5 R6 K6 ["concat"]
       94 NEWTABLE                         R6 0 0
       96 GETUPVAL                         R8 9
       97 GETTABLEKS                       R7 R8 K13 ["map"]
       99 MOVE                             R8 R2
      100 NEWCLOSURE                       R9 P1
      101 CAPTURE                          UPVAL U13
      102 CAPTURE                          VAL R0
      103 CAPTURE                          UPVAL U4
      104 CALL                             R7 2 1
      105 GETUPVAL                         R9 9
      106 GETTABLEKS                       R8 R9 K13 ["map"]
      108 MOVE                             R9 R3
      109 NEWCLOSURE                       R10 P2
      110 CAPTURE                          UPVAL U13
      111 CAPTURE                          VAL R1
      112 CAPTURE                          UPVAL U1
      113 CAPTURE                          UPVAL U4
      114 CALL                             R8 2 -1
      115 CALL                             R5 -1 -1
      116 CALL                             R4 -1 1
      117 NAMECALL                         R4 R4 K11 ["expect"]
      119 CALL                             R4 1 0
      120 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["resolve"]
        3 CALL                             R4 0 1
        4 NEWCLOSURE                       R6 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R1
        7 CAPTURE                          VAL R3
        8 CAPTURE                          VAL R0
        9 CAPTURE                          VAL R2
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U4
       13 CAPTURE                          UPVAL U5
       14 CAPTURE                          UPVAL U6
       15 CAPTURE                          UPVAL U7
       16 CAPTURE                          UPVAL U8
       17 CAPTURE                          UPVAL U9
       18 CAPTURE                          UPVAL U0
       19 NAMECALL                         R4 R4 K1 ["andThen"]
       21 CALL                             R4 2 -1
       22 RETURN                           R4 -1

PROTO_38:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R0 R1 K0 ["delay"]
        4 LOADN                            R1 0
        5 CALL                             R0 1 1
        6 GETVARARGS                       R2 -1
        7 NAMECALL                         R0 R0 K1 ["andThenReturn"]
        9 CALL                             R0 -1 -1
       10 RETURN                           R0 -1

PROTO_39:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 0
        4 GETUPVAL                         R0 3
        5 LOADK                            R2 K0 ["emitSerial"]
        6 GETUPVAL                         R3 1
        7 GETUPVAL                         R4 4
        8 NAMECALL                         R0 R0 K1 ["logIfDebugEnabled"]
       10 CALL                             R0 4 0
       11 GETUPVAL                         R1 3
       12 GETUPVAL                         R2 1
       13 GETUPVAL                         R3 5
       14 MOVE                             R5 R1
       15 NAMECALL                         R3 R3 K2 ["get"]
       17 CALL                             R3 2 1
       18 MOVE                             R6 R2
       19 NAMECALL                         R4 R3 K3 ["has"]
       21 CALL                             R4 2 1
       22 JUMPIF                           R4 ; [+8]
       23 MOVE                             R6 R2
       24 GETUPVAL                         R8 6
       25 GETTABLEKS                       R7 R8 K4 ["new"]
       27 CALL                             R7 0 -1
       28 NAMECALL                         R4 R3 K5 ["set"]
       30 CALL                             R4 -1 0
       31 MOVE                             R6 R2
       32 NAMECALL                         R4 R3 K2 ["get"]
       34 CALL                             R4 2 1
       35 MOVE                             R0 R4
       36 GETUPVAL                         R1 7
       37 GETUPVAL                         R3 3
       38 NAMECALL                         R1 R1 K2 ["get"]
       40 CALL                             R1 2 1
       41 GETUPVAL                         R3 8
       42 GETTABLEKS                       R2 R3 K6 ["concat"]
       44 NEWTABLE                         R3 0 0
       46 GETUPVAL                         R5 8
       47 GETTABLEKS                       R4 R5 K7 ["from"]
       49 MOVE                             R5 R0
       50 CALL                             R4 1 -1
       51 CALL                             R2 -1 1
       52 GETUPVAL                         R4 8
       53 GETTABLEKS                       R3 R4 K6 ["concat"]
       55 NEWTABLE                         R4 0 0
       57 GETUPVAL                         R6 8
       58 GETTABLEKS                       R5 R6 K7 ["from"]
       60 MOVE                             R6 R1
       61 CALL                             R5 1 -1
       62 CALL                             R3 -1 1
       63 GETUPVAL                         R4 9
       64 DUPCLOSURE                       R6 K8 [PROTO_38]
       65 CAPTURE                          UPVAL U10
       66 NAMECALL                         R4 R4 K9 ["andThen"]
       68 CALL                             R4 2 1
       69 NAMECALL                         R4 R4 K10 ["expect"]
       71 CALL                             R4 1 0
       72 MOVE                             R4 R2
       73 LOADNIL                          R5
       74 LOADNIL                          R6
       75 FORGPREP                         R4
       76 MOVE                             R11 R8
       77 NAMECALL                         R9 R0 K3 ["has"]
       79 CALL                             R9 2 1
       80 JUMPIFNOT                        R9 ; [+10]
       81 GETUPVAL                         R10 10
       82 GETTABLEKS                       R9 R10 K11 ["resolve"]
       84 MOVE                             R10 R8
       85 GETUPVAL                         R11 4
       86 CALL                             R10 1 -1
       87 CALL                             R9 -1 1
       88 NAMECALL                         R9 R9 K10 ["expect"]
       90 CALL                             R9 1 0
       91 FORGLOOP                         R4 2 ; [-16]
       93 MOVE                             R4 R3
       94 LOADNIL                          R5
       95 LOADNIL                          R6
       96 FORGPREP                         R4
       97 MOVE                             R11 R8
       98 NAMECALL                         R9 R1 K3 ["has"]
      100 CALL                             R9 2 1
      101 JUMPIFNOT                        R9 ; [+11]
      102 GETUPVAL                         R10 10
      103 GETTABLEKS                       R9 R10 K11 ["resolve"]
      105 MOVE                             R10 R8
      106 GETUPVAL                         R11 1
      107 GETUPVAL                         R12 4
      108 CALL                             R10 2 -1
      109 CALL                             R9 -1 1
      110 NAMECALL                         R9 R9 K10 ["expect"]
      112 CALL                             R9 1 0
      113 FORGLOOP                         R4 2 ; [-17]
      115 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["resolve"]
        3 CALL                             R4 0 1
        4 NEWCLOSURE                       R6 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R1
        7 CAPTURE                          VAL R3
        8 CAPTURE                          VAL R0
        9 CAPTURE                          VAL R2
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U4
       13 CAPTURE                          UPVAL U5
       14 CAPTURE                          UPVAL U6
       15 CAPTURE                          UPVAL U0
       16 NAMECALL                         R4 R4 K1 ["andThen"]
       18 CALL                             R4 2 -1
       19 RETURN                           R4 -1

PROTO_41:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["offAny"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_42:
        0 LOADB                            R2 1
        1 FASTCALL1                        TYPEOF R1 ; [+3]
        2 MOVE                             R4 R1
        3 GETIMPORT                        R3 K1 [typeof]
        5 CALL                             R3 1 1
        6 JUMPIFEQKS                       R3 K2 ["function"] ; [+36]
        8 LOADB                            R2 0
        9 FASTCALL1                        TYPEOF R1 ; [+3]
       10 MOVE                             R4 R1
       11 GETIMPORT                        R3 K1 [typeof]
       13 CALL                             R3 1 1
       14 JUMPIFNOTEQKS                    R3 K3 ["table"] ; [+28]
       16 LOADB                            R2 0
       17 FASTCALL1                        GETMETATABLE R1 ; [+3]
       18 MOVE                             R5 R1
       19 GETIMPORT                        R4 K5 [getmetatable]
       21 CALL                             R4 1 1
       22 FASTCALL1                        TYPEOF R4 ; [+2]
       23 GETIMPORT                        R3 K1 [typeof]
       25 CALL                             R3 1 1
       26 JUMPIFNOTEQKS                    R3 K3 ["table"] ; [+16]
       28 FASTCALL1                        GETMETATABLE R1 ; [+3]
       29 MOVE                             R6 R1
       30 GETIMPORT                        R5 K5 [getmetatable]
       32 CALL                             R5 1 1
       33 GETTABLEKS                       R4 R5 K6 ["__call"]
       35 FASTCALL1                        TYPEOF R4 ; [+2]
       36 GETIMPORT                        R3 K1 [typeof]
       38 CALL                             R3 1 1
       39 JUMPIFEQKS                       R3 K2 ["function"] ; [+2]
       41 LOADB                            R2 0 +1
       42 LOADB                            R2 1
       43 JUMPIF                           R2 ; [+8]
       44 GETIMPORT                        R2 K8 [error]
       46 GETUPVAL                         R4 0
       47 GETTABLEKS                       R3 R4 K9 ["new"]
       49 LOADK                            R4 K10 ["listener must be a function"]
       50 CALL                             R3 1 -1
       51 CALL                             R2 -1 0
       52 LOADK                            R4 K11 ["subscribeAny"]
       53 LOADNIL                          R5
       54 LOADNIL                          R6
       55 NAMECALL                         R2 R0 K12 ["logIfDebugEnabled"]
       57 CALL                             R2 4 0
       58 GETUPVAL                         R2 1
       59 MOVE                             R4 R0
       60 NAMECALL                         R2 R2 K13 ["get"]
       62 CALL                             R2 2 1
       63 MOVE                             R4 R1
       64 NAMECALL                         R2 R2 K14 ["add"]
       66 CALL                             R2 2 0
       67 GETUPVAL                         R4 2
       68 DUPTABLE                         R5 K16 [{"listener"}]
       69 SETTABLEKS                       R1 R5 K15 ["listener"]
       71 GETUPVAL                         R6 3
       72 NAMECALL                         R2 R0 K17 ["emit"]
       74 CALL                             R2 4 0
       75 NEWCLOSURE                       R2 P0
       76 CAPTURE                          VAL R0
       77 CAPTURE                          VAL R1
       78 RETURN                           R2 1

PROTO_43:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 RETURN                           R1 1

PROTO_44:
        0 LOADB                            R2 1
        1 FASTCALL1                        TYPEOF R1 ; [+3]
        2 MOVE                             R4 R1
        3 GETIMPORT                        R3 K1 [typeof]
        5 CALL                             R3 1 1
        6 JUMPIFEQKS                       R3 K2 ["function"] ; [+36]
        8 LOADB                            R2 0
        9 FASTCALL1                        TYPEOF R1 ; [+3]
       10 MOVE                             R4 R1
       11 GETIMPORT                        R3 K1 [typeof]
       13 CALL                             R3 1 1
       14 JUMPIFNOTEQKS                    R3 K3 ["table"] ; [+28]
       16 LOADB                            R2 0
       17 FASTCALL1                        GETMETATABLE R1 ; [+3]
       18 MOVE                             R5 R1
       19 GETIMPORT                        R4 K5 [getmetatable]
       21 CALL                             R4 1 1
       22 FASTCALL1                        TYPEOF R4 ; [+2]
       23 GETIMPORT                        R3 K1 [typeof]
       25 CALL                             R3 1 1
       26 JUMPIFNOTEQKS                    R3 K3 ["table"] ; [+16]
       28 FASTCALL1                        GETMETATABLE R1 ; [+3]
       29 MOVE                             R6 R1
       30 GETIMPORT                        R5 K5 [getmetatable]
       32 CALL                             R5 1 1
       33 GETTABLEKS                       R4 R5 K6 ["__call"]
       35 FASTCALL1                        TYPEOF R4 ; [+2]
       36 GETIMPORT                        R3 K1 [typeof]
       38 CALL                             R3 1 1
       39 JUMPIFEQKS                       R3 K2 ["function"] ; [+2]
       41 LOADB                            R2 0 +1
       42 LOADB                            R2 1
       43 JUMPIF                           R2 ; [+8]
       44 GETIMPORT                        R2 K8 [error]
       46 GETUPVAL                         R4 0
       47 GETTABLEKS                       R3 R4 K9 ["new"]
       49 LOADK                            R4 K10 ["listener must be a function"]
       50 CALL                             R3 1 -1
       51 CALL                             R2 -1 0
       52 LOADK                            R4 K11 ["unsubscribeAny"]
       53 LOADNIL                          R5
       54 LOADNIL                          R6
       55 NAMECALL                         R2 R0 K12 ["logIfDebugEnabled"]
       57 CALL                             R2 4 0
       58 GETUPVAL                         R4 1
       59 DUPTABLE                         R5 K14 [{"listener"}]
       60 SETTABLEKS                       R1 R5 K13 ["listener"]
       62 GETUPVAL                         R6 2
       63 NAMECALL                         R2 R0 K15 ["emit"]
       65 CALL                             R2 4 0
       66 GETUPVAL                         R2 3
       67 MOVE                             R4 R0
       68 NAMECALL                         R2 R2 K16 ["get"]
       70 CALL                             R2 2 1
       71 MOVE                             R4 R1
       72 NAMECALL                         R2 R2 K17 ["delete"]
       74 CALL                             R2 2 0
       75 RETURN                           R0 0

PROTO_45:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["isArray"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 JUMPIFNOT                        R2 ; [+1]
        6 JUMP                             ; [+15]
        7 JUMPIFEQKNIL                     R1 ; [+8]
        9 NEWTABLE                         R2 0 1
       11 MOVE                             R3 R1
       12 SETLIST                          R2 R3 1 [1]
       14 MOVE                             R1 R2
       15 JUMP                             ; [+6]
       16 NEWTABLE                         R2 0 1
       18 GETUPVAL                         R3 1
       19 SETLIST                          R2 R3 1 [1]
       21 MOVE                             R1 R2
       22 MOVE                             R2 R1
       23 LOADNIL                          R3
       24 LOADNIL                          R4
       25 FORGPREP                         R2
       26 LOADK                            R9 K1 ["clear"]
       27 MOVE                             R10 R6
       28 LOADNIL                          R11
       29 NAMECALL                         R7 R0 K2 ["logIfDebugEnabled"]
       31 CALL                             R7 4 0
       32 FASTCALL1                        TYPEOF R6 ; [+3]
       33 MOVE                             R8 R6
       34 GETIMPORT                        R7 K4 [typeof]
       36 CALL                             R7 1 1
       37 JUMPIFEQKS                       R7 K5 ["string"] ; [+30]
       39 LOADB                            R7 0
       40 FASTCALL1                        TYPEOF R6 ; [+3]
       41 MOVE                             R9 R6
       42 GETIMPORT                        R8 K4 [typeof]
       44 CALL                             R8 1 1
       45 JUMPIFNOTEQKS                    R8 K6 ["userdata"] ; [+14]
       47 FASTCALL1                        TOSTRING R6 ; [+3]
       48 MOVE                             R9 R6
       49 GETIMPORT                        R8 K8 [tostring]
       51 CALL                             R8 1 1
       52 LOADK                            R10 K9 ["Symbol%(.*%)"]
       53 NAMECALL                         R8 R8 K10 ["match"]
       55 CALL                             R8 2 1
       56 JUMPIFNOTEQKNIL                  R8 ; [+2]
       58 LOADB                            R7 0 +1
       59 LOADB                            R7 1
       60 JUMPIF                           R7 ; [+7]
       61 FASTCALL1                        TYPEOF R6 ; [+3]
       62 MOVE                             R8 R6
       63 GETIMPORT                        R7 K4 [typeof]
       65 CALL                             R7 1 1
       66 JUMPIFNOTEQKS                    R7 K11 ["number"] ; [+44]
       68 GETUPVAL                         R8 2
       69 MOVE                             R10 R0
       70 NAMECALL                         R8 R8 K12 ["get"]
       72 CALL                             R8 2 1
       73 MOVE                             R11 R6
       74 NAMECALL                         R9 R8 K13 ["has"]
       76 CALL                             R9 2 1
       77 JUMPIF                           R9 ; [+8]
       78 MOVE                             R11 R6
       79 GETUPVAL                         R13 3
       80 GETTABLEKS                       R12 R13 K14 ["new"]
       82 CALL                             R12 0 -1
       83 NAMECALL                         R9 R8 K15 ["set"]
       85 CALL                             R9 -1 0
       86 MOVE                             R11 R6
       87 NAMECALL                         R9 R8 K12 ["get"]
       89 CALL                             R9 2 1
       90 MOVE                             R7 R9
       91 NAMECALL                         R7 R7 K1 ["clear"]
       93 CALL                             R7 1 0
       94 GETUPVAL                         R7 4
       95 MOVE                             R8 R0
       96 MOVE                             R9 R6
       97 CALL                             R7 2 1
       98 NAMECALL                         R8 R7 K16 ["ipairs"]
      100 CALL                             R8 1 3
      101 FORGPREP                         R8
      102 NAMECALL                         R13 R12 K17 ["finish"]
      104 CALL                             R13 1 0
      105 FORGLOOP                         R8 2 ; [-4]
      107 NAMECALL                         R8 R7 K1 ["clear"]
      109 CALL                             R8 1 0
      110 JUMP                             ; [+45]
      111 GETUPVAL                         R7 5
      112 MOVE                             R9 R0
      113 NAMECALL                         R7 R7 K12 ["get"]
      115 CALL                             R7 2 1
      116 NAMECALL                         R7 R7 K1 ["clear"]
      118 CALL                             R7 1 0
      119 GETUPVAL                         R7 2
      120 MOVE                             R9 R0
      121 NAMECALL                         R7 R7 K12 ["get"]
      123 CALL                             R7 2 1
      124 NAMECALL                         R7 R7 K18 ["values"]
      126 CALL                             R7 1 3
      127 FORGPREP                         R7
      128 NAMECALL                         R12 R11 K1 ["clear"]
      130 CALL                             R12 1 0
      131 FORGLOOP                         R7 2 ; [-4]
      133 GETUPVAL                         R7 6
      134 MOVE                             R9 R0
      135 NAMECALL                         R7 R7 K12 ["get"]
      137 CALL                             R7 2 1
      138 NAMECALL                         R7 R7 K18 ["values"]
      140 CALL                             R7 1 3
      141 FORGPREP                         R7
      142 NAMECALL                         R12 R11 K16 ["ipairs"]
      144 CALL                             R12 1 3
      145 FORGPREP                         R12
      146 NAMECALL                         R17 R16 K17 ["finish"]
      148 CALL                             R17 1 0
      149 FORGLOOP                         R12 2 ; [-4]
      151 NAMECALL                         R12 R11 K1 ["clear"]
      153 CALL                             R12 1 0
      154 FORGLOOP                         R7 2 ; [-13]
      156 FORGLOOP                         R2 2 ; [-131]
      158 RETURN                           R0 0

PROTO_46:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["isArray"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 JUMPIFNOT                        R2 ; [+1]
        6 JUMP                             ; [+15]
        7 JUMPIFEQKNIL                     R1 ; [+8]
        9 NEWTABLE                         R2 0 1
       11 MOVE                             R3 R1
       12 SETLIST                          R2 R3 1 [1]
       14 MOVE                             R1 R2
       15 JUMP                             ; [+6]
       16 NEWTABLE                         R2 0 1
       18 GETUPVAL                         R3 1
       19 SETLIST                          R2 R3 1 [1]
       21 MOVE                             R1 R2
       22 LOADN                            R2 0
       23 MOVE                             R3 R1
       24 LOADNIL                          R4
       25 LOADNIL                          R5
       26 FORGPREP                         R3
       27 FASTCALL1                        TYPEOF R7 ; [+3]
       28 MOVE                             R9 R7
       29 GETIMPORT                        R8 K2 [typeof]
       31 CALL                             R8 1 1
       32 JUMPIFNOTEQKS                    R8 K3 ["string"] ; [+49]
       34 GETUPVAL                         R12 2
       35 MOVE                             R14 R0
       36 NAMECALL                         R12 R12 K4 ["get"]
       38 CALL                             R12 2 1
       39 GETTABLEKS                       R11 R12 K5 ["size"]
       41 GETUPVAL                         R14 3
       42 MOVE                             R16 R0
       43 NAMECALL                         R14 R14 K4 ["get"]
       45 CALL                             R14 2 1
       46 MOVE                             R17 R7
       47 NAMECALL                         R15 R14 K6 ["has"]
       49 CALL                             R15 2 1
       50 JUMPIF                           R15 ; [+8]
       51 MOVE                             R17 R7
       52 GETUPVAL                         R19 4
       53 GETTABLEKS                       R18 R19 K7 ["new"]
       55 CALL                             R18 0 -1
       56 NAMECALL                         R15 R14 K8 ["set"]
       58 CALL                             R15 -1 0
       59 MOVE                             R17 R7
       60 NAMECALL                         R15 R14 K4 ["get"]
       62 CALL                             R15 2 1
       63 MOVE                             R13 R15
       64 GETTABLEKS                       R12 R13 K5 ["size"]
       66 ADD                              R10 R11 R12
       67 GETUPVAL                         R12 5
       68 MOVE                             R13 R0
       69 MOVE                             R14 R7
       70 CALL                             R12 2 1
       71 GETTABLEKS                       R11 R12 K5 ["size"]
       73 ADD                              R9 R10 R11
       74 GETUPVAL                         R11 5
       75 MOVE                             R12 R0
       76 CALL                             R11 1 1
       77 GETTABLEKS                       R10 R11 K5 ["size"]
       79 ADD                              R8 R9 R10
       80 ADD                              R2 R2 R8
       81 JUMP                             ; [+45]
       82 JUMPIFEQKNIL                     R7 ; [+8]
       84 GETUPVAL                         R8 1
       85 JUMPIFEQ                         R7 R8 ; [+5]
       87 GETUPVAL                         R8 6
       88 MOVE                             R9 R7
       89 GETUPVAL                         R10 7
       90 CALL                             R8 2 0
       91 GETUPVAL                         R9 2
       92 MOVE                             R11 R0
       93 NAMECALL                         R9 R9 K4 ["get"]
       95 CALL                             R9 2 1
       96 GETTABLEKS                       R8 R9 K5 ["size"]
       98 ADD                              R2 R2 R8
       99 GETUPVAL                         R8 3
      100 MOVE                             R10 R0
      101 NAMECALL                         R8 R8 K4 ["get"]
      103 CALL                             R8 2 1
      104 NAMECALL                         R8 R8 K9 ["values"]
      106 CALL                             R8 1 3
      107 FORGPREP                         R8
      108 GETTABLEKS                       R13 R12 K5 ["size"]
      110 ADD                              R2 R2 R13
      111 FORGLOOP                         R8 2 ; [-4]
      113 GETUPVAL                         R8 8
      114 MOVE                             R10 R0
      115 NAMECALL                         R8 R8 K4 ["get"]
      117 CALL                             R8 2 1
      118 NAMECALL                         R8 R8 K9 ["values"]
      120 CALL                             R8 1 3
      121 FORGPREP                         R8
      122 GETTABLEKS                       R13 R12 K5 ["size"]
      124 ADD                              R2 R2 R13
      125 FORGLOOP                         R8 2 ; [-4]
      127 FORGLOOP                         R3 2 ; [-101]
      129 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
        9 CALL                             R1 1 1
       10 GETTABLEKS                       R2 R1 K6 ["Array"]
       12 GETTABLEKS                       R3 R1 K7 ["Boolean"]
       14 GETTABLEKS                       R4 R1 K8 ["Error"]
       16 GETTABLEKS                       R5 R1 K9 ["Map"]
       18 GETTABLEKS                       R6 R1 K10 ["Object"]
       20 GETTABLEKS                       R7 R1 K11 ["Set"]
       22 GETTABLEKS                       R8 R1 K12 ["Symbol"]
       24 GETTABLEKS                       R9 R1 K13 ["WeakMap"]
       26 GETTABLEKS                       R10 R1 K14 ["console"]
       28 GETIMPORT                        R11 K4 [require]
       30 GETTABLEKS                       R12 R0 K15 ["Promise"]
       32 CALL                             R11 1 1
       33 GETIMPORT                        R12 K17 [game]
       35 LOADK                            R14 K18 ["HttpService"]
       36 NAMECALL                         R12 R12 K19 ["GetService"]
       38 CALL                             R12 2 1
       39 LOADNIL                          R13
       40 GETTABLEKS                       R14 R6 K20 ["None"]
       42 NEWTABLE                         R15 1 0
       44 GETTABLEKS                       R16 R9 K21 ["new"]
       46 CALL                             R16 0 1
       47 GETTABLEKS                       R17 R9 K21 ["new"]
       49 CALL                             R17 0 1
       50 GETTABLEKS                       R18 R9 K21 ["new"]
       52 CALL                             R18 0 1
       53 MOVE                             R19 R8
       54 LOADK                            R20 K22 ["anyProducer"]
       55 CALL                             R19 1 1
       56 GETTABLEKS                       R20 R11 K23 ["resolve"]
       58 CALL                             R20 0 1
       59 MOVE                             R21 R8
       60 LOADK                            R22 K24 ["listenerAdded"]
       61 CALL                             R21 1 1
       62 MOVE                             R22 R8
       63 LOADK                            R23 K25 ["listenerRemoved"]
       64 CALL                             R22 1 1
       65 MOVE                             R23 R8
       66 LOADK                            R24 K26 ["metaEventsAllowed"]
       67 CALL                             R23 1 1
       68 LOADB                            R24 0
       69 DUPCLOSURE                       R25 K27 [PROTO_0]
       70 DUPCLOSURE                       R26 K28 [PROTO_1]
       71 NEWCLOSURE                       R27 P2
       72 CAPTURE                          VAL R4
       73 CAPTURE                          REF R13
       74 CAPTURE                          VAL R23
       75 DUPCLOSURE                       R28 K29 [PROTO_3]
       76 CAPTURE                          VAL R4
       77 DUPCLOSURE                       R29 K30 [PROTO_4]
       78 CAPTURE                          VAL R17
       79 CAPTURE                          VAL R7
       80 DUPCLOSURE                       R30 K31 [PROTO_5]
       81 CAPTURE                          VAL R19
       82 CAPTURE                          VAL R18
       83 CAPTURE                          VAL R7
       84 DUPCLOSURE                       R31 K32 [PROTO_6]
       85 CAPTURE                          VAL R18
       86 CAPTURE                          VAL R19
       87 CAPTURE                          VAL R11
       88 DUPCLOSURE                       R32 K33 [PROTO_15]
       89 CAPTURE                          VAL R2
       90 CAPTURE                          VAL R14
       91 CAPTURE                          VAL R30
       92 CAPTURE                          VAL R11
       93 DUPCLOSURE                       R13 K34 [PROTO_16]
       94 CAPTURE                          VAL R21
       95 CAPTURE                          VAL R22
       96 NEWTABLE                         R33 0 0
       98 SETTABLEKS                       R33 R33 K35 ["__index"]
      100 DUPCLOSURE                       R34 K36 [PROTO_20]
      101 CAPTURE                          VAL R33
      102 CAPTURE                          VAL R16
      103 CAPTURE                          VAL R7
      104 CAPTURE                          VAL R17
      105 CAPTURE                          VAL R5
      106 CAPTURE                          VAL R18
      107 CAPTURE                          VAL R3
      108 CAPTURE                          VAL R12
      109 CAPTURE                          VAL R2
      110 CAPTURE                          VAL R6
      111 CAPTURE                          VAL R10
      112 SETTABLEKS                       R34 R33 K21 ["new"]
      114 NEWCLOSURE                       R34 P10
      115 CAPTURE                          REF R24
      116 SETTABLEKS                       R34 R33 K37 ["getIsDebugEnabled"]
      118 NEWCLOSURE                       R34 P11
      119 CAPTURE                          REF R24
      120 SETTABLEKS                       R34 R33 K38 ["setIsDebugEnabled"]
      122 DUPCLOSURE                       R34 K39 [PROTO_23]
      123 CAPTURE                          VAL R33
      124 SETTABLEKS                       R34 R33 K40 ["logIfDebugEnabled"]
      126 NEWCLOSURE                       R34 P13
      127 CAPTURE                          VAL R4
      128 CAPTURE                          VAL R2
      129 CAPTURE                          VAL R27
      130 CAPTURE                          VAL R23
      131 CAPTURE                          VAL R17
      132 CAPTURE                          VAL R7
      133 CAPTURE                          REF R13
      134 CAPTURE                          VAL R21
      135 SETTABLEKS                       R34 R33 K41 ["on"]
      137 NEWCLOSURE                       R34 P14
      138 CAPTURE                          VAL R4
      139 CAPTURE                          VAL R2
      140 CAPTURE                          VAL R27
      141 CAPTURE                          VAL R23
      142 CAPTURE                          VAL R17
      143 CAPTURE                          VAL R7
      144 CAPTURE                          REF R13
      145 CAPTURE                          VAL R22
      146 SETTABLEKS                       R34 R33 K42 ["off"]
      148 DUPCLOSURE                       R34 K43 [PROTO_29]
      149 CAPTURE                          VAL R11
      150 SETTABLEKS                       R34 R33 K44 ["once"]
      152 DUPCLOSURE                       R34 K45 [PROTO_30]
      153 CAPTURE                          VAL R2
      154 CAPTURE                          VAL R27
      155 CAPTURE                          VAL R23
      156 CAPTURE                          VAL R32
      157 SETTABLEKS                       R34 R33 K46 ["events"]
      159 NEWCLOSURE                       R34 P17
      160 CAPTURE                          VAL R11
      161 CAPTURE                          VAL R27
      162 CAPTURE                          VAL R31
      163 CAPTURE                          VAL R17
      164 CAPTURE                          VAL R7
      165 CAPTURE                          VAL R16
      166 CAPTURE                          VAL R2
      167 CAPTURE                          VAL R3
      168 CAPTURE                          REF R13
      169 CAPTURE                          VAL R20
      170 SETTABLEKS                       R34 R33 K47 ["emit"]
      172 DUPCLOSURE                       R34 K48 [PROTO_40]
      173 CAPTURE                          VAL R11
      174 CAPTURE                          VAL R27
      175 CAPTURE                          VAL R17
      176 CAPTURE                          VAL R7
      177 CAPTURE                          VAL R16
      178 CAPTURE                          VAL R2
      179 CAPTURE                          VAL R20
      180 SETTABLEKS                       R34 R33 K49 ["emitSerial"]
      182 DUPCLOSURE                       R34 K50 [PROTO_42]
      183 CAPTURE                          VAL R4
      184 CAPTURE                          VAL R16
      185 CAPTURE                          VAL R21
      186 CAPTURE                          VAL R23
      187 SETTABLEKS                       R34 R33 K51 ["onAny"]
      189 DUPCLOSURE                       R34 K52 [PROTO_43]
      190 CAPTURE                          VAL R32
      191 SETTABLEKS                       R34 R33 K53 ["anyEvent"]
      193 DUPCLOSURE                       R34 K54 [PROTO_44]
      194 CAPTURE                          VAL R4
      195 CAPTURE                          VAL R22
      196 CAPTURE                          VAL R23
      197 CAPTURE                          VAL R16
      198 SETTABLEKS                       R34 R33 K55 ["offAny"]
      200 DUPCLOSURE                       R34 K56 [PROTO_45]
      201 CAPTURE                          VAL R2
      202 CAPTURE                          VAL R14
      203 CAPTURE                          VAL R17
      204 CAPTURE                          VAL R7
      205 CAPTURE                          VAL R30
      206 CAPTURE                          VAL R16
      207 CAPTURE                          VAL R18
      208 SETTABLEKS                       R34 R33 K57 ["clearListeners"]
      210 DUPCLOSURE                       R34 K58 [PROTO_46]
      211 CAPTURE                          VAL R2
      212 CAPTURE                          VAL R14
      213 CAPTURE                          VAL R16
      214 CAPTURE                          VAL R17
      215 CAPTURE                          VAL R7
      216 CAPTURE                          VAL R30
      217 CAPTURE                          VAL R27
      218 CAPTURE                          VAL R23
      219 CAPTURE                          VAL R18
      220 SETTABLEKS                       R34 R33 K59 ["listenerCount"]
      222 SETTABLEKS                       R21 R33 K24 ["listenerAdded"]
      224 SETTABLEKS                       R22 R33 K25 ["listenerRemoved"]
      226 SETTABLEKS                       R33 R15 K60 ["default"]
      228 CLOSEUPVALS                      R13
      229 RETURN                           R15 1
