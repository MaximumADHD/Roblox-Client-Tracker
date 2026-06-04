PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 JUMPIFNOTEQ                      R1 R2 ; [+3]
        8 LOADB                            R2 1
        9 RETURN                           R2 1
       10 LOADB                            R2 0
       11 GETIMPORT                        R3 K4 [string.format]
       13 LOADK                            R4 K5 ["%s expected, got %s"]
       14 GETUPVAL                         R5 0
       15 MOVE                             R6 R1
       16 CALL                             R3 3 -1
       17 RETURN                           R2 -1

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

PROTO_2:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 JUMPIFNOTEQ                      R1 R2 ; [+3]
        8 LOADB                            R2 1
        9 RETURN                           R2 1
       10 LOADB                            R2 0
       11 GETIMPORT                        R3 K4 [string.format]
       13 LOADK                            R4 K5 ["%s expected, got %s"]
       14 GETUPVAL                         R5 0
       15 MOVE                             R6 R1
       16 CALL                             R3 3 -1
       17 RETURN                           R2 -1

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

PROTO_4:
        0 JUMPIFEQKNIL                     R0 ; [+3]
        2 LOADB                            R1 1
        3 RETURN                           R1 1
        4 LOADB                            R1 0
        5 LOADK                            R2 K0 ["any expected, got nil"]
        6 RETURN                           R1 2

PROTO_5:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["number"] ; [+8]
        7 JUMPIFNOTEQ                      R0 R0 ; [+3]
        9 LOADB                            R2 1
       10 RETURN                           R2 1
       11 LOADB                            R2 0
       12 LOADK                            R3 K3 ["unexpected NaN value"]
       13 RETURN                           R2 2
       14 LOADB                            R2 0
       15 GETIMPORT                        R3 K6 [string.format]
       17 LOADK                            R4 K7 ["number expected, got %s"]
       18 MOVE                             R5 R1
       19 CALL                             R3 2 -1
       20 RETURN                           R2 -1

PROTO_6:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["number"] ; [+8]
        7 JUMPIFEQ                         R0 R0 ; [+3]
        9 LOADB                            R2 1
       10 RETURN                           R2 1
       11 LOADB                            R2 0
       12 LOADK                            R3 K3 ["unexpected non-NaN value"]
       13 RETURN                           R2 2
       14 LOADB                            R2 0
       15 GETIMPORT                        R3 K6 [string.format]
       17 LOADK                            R4 K7 ["number expected, got %s"]
       18 MOVE                             R5 R1
       19 CALL                             R3 2 -1
       20 RETURN                           R2 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQ                         R0 R1 ; [+17]
        3 LOADB                            R1 0
        4 GETIMPORT                        R2 K2 [string.format]
        6 LOADK                            R3 K3 ["expected %s, got %s"]
        7 GETUPVAL                         R5 0
        8 FASTCALL1                        TOSTRING R5 ; [+2]
        9 GETIMPORT                        R4 K5 [tostring]
       11 CALL                             R4 1 1
       12 FASTCALL1                        TOSTRING R0 ; [+3]
       13 MOVE                             R6 R0
       14 GETIMPORT                        R5 K5 [tostring]
       16 CALL                             R5 1 1
       17 CALL                             R2 3 -1
       18 RETURN                           R1 -1
       19 LOADB                            R1 1
       20 RETURN                           R1 1

PROTO_8:
        0 PREPVARARGS                      0
        1 LOADK                            R1 K0 ["#"]
        2 FASTCALL1                        SELECT_VARARG R1 ; [+3]
        3 GETIMPORT                        R0 K2 [select]
        5 GETVARARGS                       R2 -1
        6 CALL                             R0 -1 1
        7 JUMPIFNOTEQKN                    R0 K3 [1] ; [+5]
        9 GETVARARGS                       R1 1
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          VAL R1
       12 RETURN                           R2 1
       13 NEWTABLE                         R1 0 0
       15 LOADN                            R4 1
       16 MOVE                             R2 R0
       17 LOADN                            R3 1
       18 FORNPREP                         R2
       19 FASTCALL1                        SELECT_VARARG R4 ; [+4]
       20 GETIMPORT                        R5 K2 [select]
       22 MOVE                             R6 R4
       23 GETVARARGS                       R7 -1
       24 CALL                             R5 -1 1
       25 GETUPVAL                         R6 0
       26 GETTABLEKS                       R6 R6 K4 ["literal"]
       28 MOVE                             R7 R5
       29 CALL                             R6 1 1
       30 SETTABLE                         R6 R1 R4
       31 FORNLOOP                         R2
       32 GETUPVAL                         R2 0
       33 GETTABLEKS                       R2 R2 K5 ["union"]
       35 LOADN                            R5 1
       36 FASTCALL3                        TABLE_UNPACK R1 R5 R0
       38 MOVE                             R4 R1
       39 MOVE                             R6 R0
       40 GETIMPORT                        R3 K8 [table.unpack]
       42 CALL                             R3 3 -1
       43 CALL                             R2 -1 -1
       44 RETURN                           R2 -1

PROTO_9:
        0 NEWTABLE                         R1 0 0
        2 LOADN                            R2 0
        3 GETIMPORT                        R3 K1 [pairs]
        5 MOVE                             R4 R0
        6 CALL                             R3 1 3
        7 FORGPREP_NEXT                    R3
        8 ADDK                             R2 R2 K2 [1]
        9 SETTABLE                         R6 R1 R2
       10 FORGLOOP                         R3 1 ; [-3]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K3 ["literal"]
       15 LOADN                            R6 1
       16 FASTCALL3                        TABLE_UNPACK R1 R6 R2
       18 MOVE                             R5 R1
       19 MOVE                             R7 R2
       20 GETIMPORT                        R4 K6 [table.unpack]
       22 CALL                             R4 3 -1
       23 CALL                             R3 -1 -1
       24 RETURN                           R3 -1

PROTO_10:
        0 NEWTABLE                         R1 0 0
        2 LOADN                            R2 0
        3 GETIMPORT                        R3 K1 [pairs]
        5 MOVE                             R4 R0
        6 CALL                             R3 1 3
        7 FORGPREP_NEXT                    R3
        8 ADDK                             R2 R2 K2 [1]
        9 SETTABLE                         R7 R1 R2
       10 FORGLOOP                         R3 2 ; [-3]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K3 ["literal"]
       15 LOADN                            R6 1
       16 FASTCALL3                        TABLE_UNPACK R1 R6 R2
       18 MOVE                             R5 R1
       19 MOVE                             R7 R2
       20 GETIMPORT                        R4 K6 [table.unpack]
       22 CALL                             R4 3 -1
       23 CALL                             R3 -1 -1
       24 RETURN                           R3 -1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["number"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 2
        5 JUMPIF                           R1 ; [+3]
        6 LOADB                            R3 0
        7 ORK                              R4 R2 K1 [""]
        8 RETURN                           R3 2
        9 MODK                             R3 R0 K2 [1]
       10 JUMPIFNOTEQKN                    R3 K3 [0] ; [+3]
       12 LOADB                            R3 1
       13 RETURN                           R3 1
       14 LOADB                            R3 0
       15 GETIMPORT                        R4 K6 [string.format]
       17 LOADK                            R5 K7 ["integer expected, got %s"]
       18 MOVE                             R6 R0
       19 CALL                             R4 2 -1
       20 RETURN                           R3 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["number"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 2
        5 JUMPIF                           R1 ; [+3]
        6 LOADB                            R3 0
        7 ORK                              R4 R2 K1 [""]
        8 RETURN                           R3 2
        9 GETUPVAL                         R3 1
       10 JUMPIFNOTLE                      R3 R0 ; [+3]
       12 LOADB                            R3 1
       13 RETURN                           R3 1
       14 LOADB                            R3 0
       15 GETIMPORT                        R4 K4 [string.format]
       17 LOADK                            R5 K5 ["number >= %s expected, got %s"]
       18 GETUPVAL                         R6 1
       19 MOVE                             R7 R0
       20 CALL                             R4 3 -1
       21 RETURN                           R3 -1

PROTO_13:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 RETURN                           R1 1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["number"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 2
        5 JUMPIF                           R1 ; [+3]
        6 LOADB                            R3 0
        7 MOVE                             R4 R2
        8 RETURN                           R3 2
        9 GETUPVAL                         R3 1
       10 JUMPIFNOTLE                      R0 R3 ; [+3]
       12 LOADB                            R3 1
       13 RETURN                           R3 1
       14 LOADB                            R3 0
       15 GETIMPORT                        R4 K3 [string.format]
       17 LOADK                            R5 K4 ["number <= %s expected, got %s"]
       18 GETUPVAL                         R6 1
       19 MOVE                             R7 R0
       20 CALL                             R4 3 -1
       21 RETURN                           R3 -1

PROTO_15:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 RETURN                           R1 1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["number"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 2
        5 JUMPIF                           R1 ; [+3]
        6 LOADB                            R3 0
        7 ORK                              R4 R2 K1 [""]
        8 RETURN                           R3 2
        9 GETUPVAL                         R3 1
       10 JUMPIFNOTLT                      R3 R0 ; [+3]
       12 LOADB                            R3 1
       13 RETURN                           R3 1
       14 LOADB                            R3 0
       15 GETIMPORT                        R4 K4 [string.format]
       17 LOADK                            R5 K5 ["number > %s expected, got %s"]
       18 GETUPVAL                         R6 1
       19 MOVE                             R7 R0
       20 CALL                             R4 3 -1
       21 RETURN                           R3 -1

PROTO_17:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 RETURN                           R1 1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["number"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 2
        5 JUMPIF                           R1 ; [+3]
        6 LOADB                            R3 0
        7 ORK                              R4 R2 K1 [""]
        8 RETURN                           R3 2
        9 GETUPVAL                         R3 1
       10 JUMPIFNOTLT                      R0 R3 ; [+3]
       12 LOADB                            R3 1
       13 RETURN                           R3 1
       14 LOADB                            R3 0
       15 GETIMPORT                        R4 K4 [string.format]
       17 LOADK                            R5 K5 ["number < %s expected, got %s"]
       18 GETUPVAL                         R6 1
       19 MOVE                             R7 R0
       20 CALL                             R4 3 -1
       21 RETURN                           R3 -1

PROTO_19:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 RETURN                           R1 1

PROTO_20:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 2
        3 JUMPIF                           R1 ; [+3]
        4 LOADB                            R3 0
        5 ORK                              R4 R2 K0 [""]
        6 RETURN                           R3 2
        7 GETUPVAL                         R3 1
        8 MOVE                             R4 R0
        9 CALL                             R3 1 2
       10 JUMPIF                           R3 ; [+3]
       11 LOADB                            R5 0
       12 ORK                              R6 R4 K0 [""]
       13 RETURN                           R5 2
       14 LOADB                            R5 1
       15 RETURN                           R5 1

PROTO_21:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["number"]
        3 MOVE                             R4 R0
        4 CALL                             R3 1 -1
        5 FASTCALL                         ASSERT ; [+2]
        6 GETIMPORT                        R2 K2 [assert]
        8 CALL                             R2 -1 0
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K0 ["number"]
       12 MOVE                             R4 R1
       13 CALL                             R3 1 -1
       14 FASTCALL                         ASSERT ; [+2]
       15 GETIMPORT                        R2 K2 [assert]
       17 CALL                             R2 -1 0
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K3 ["numberMin"]
       21 MOVE                             R3 R0
       22 CALL                             R2 1 1
       23 GETUPVAL                         R3 0
       24 GETTABLEKS                       R3 R3 K4 ["numberMax"]
       26 MOVE                             R4 R1
       27 CALL                             R3 1 1
       28 NEWCLOSURE                       R4 P0
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R3
       31 RETURN                           R4 1

PROTO_22:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 2
        3 JUMPIF                           R1 ; [+3]
        4 LOADB                            R3 0
        5 ORK                              R4 R2 K0 [""]
        6 RETURN                           R3 2
        7 GETUPVAL                         R3 1
        8 MOVE                             R4 R0
        9 CALL                             R3 1 2
       10 JUMPIF                           R3 ; [+3]
       11 LOADB                            R5 0
       12 ORK                              R6 R4 K0 [""]
       13 RETURN                           R5 2
       14 LOADB                            R5 1
       15 RETURN                           R5 1

PROTO_23:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["number"]
        3 MOVE                             R4 R0
        4 CALL                             R3 1 -1
        5 FASTCALL                         ASSERT ; [+2]
        6 GETIMPORT                        R2 K2 [assert]
        8 CALL                             R2 -1 0
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K0 ["number"]
       12 MOVE                             R4 R1
       13 CALL                             R3 1 -1
       14 FASTCALL                         ASSERT ; [+2]
       15 GETIMPORT                        R2 K2 [assert]
       17 CALL                             R2 -1 0
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K3 ["numberMinExclusive"]
       21 MOVE                             R3 R0
       22 CALL                             R2 1 1
       23 GETUPVAL                         R3 0
       24 GETTABLEKS                       R3 R3 K4 ["numberMaxExclusive"]
       26 MOVE                             R4 R1
       27 CALL                             R3 1 1
       28 NEWCLOSURE                       R4 P0
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R3
       31 RETURN                           R4 1

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["string"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 2
        5 JUMPIF                           R1 ; [+3]
        6 LOADB                            R3 0
        7 MOVE                             R4 R2
        8 RETURN                           R3 2
        9 GETIMPORT                        R3 K2 [string.match]
       11 MOVE                             R4 R0
       12 GETUPVAL                         R5 1
       13 CALL                             R3 2 1
       14 JUMPIFNOTEQKNIL                  R3 ; [+9]
       16 LOADB                            R3 0
       17 GETIMPORT                        R4 K4 [string.format]
       19 LOADK                            R5 K5 ["%q failed to match pattern %q"]
       20 MOVE                             R6 R0
       21 GETUPVAL                         R7 1
       22 CALL                             R4 3 -1
       23 RETURN                           R3 -1
       24 LOADB                            R3 1
       25 RETURN                           R3 1

PROTO_25:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["string"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 -1
        5 FASTCALL                         ASSERT ; [+2]
        6 GETIMPORT                        R1 K2 [assert]
        8 CALL                             R1 -1 0
        9 NEWCLOSURE                       R1 P0
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          VAL R0
       12 RETURN                           R1 1

PROTO_26:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADB                            R1 1
        3 RETURN                           R1 1
        4 GETUPVAL                         R1 0
        5 MOVE                             R2 R0
        6 CALL                             R1 1 2
        7 JUMPIFNOT                        R1 ; [+2]
        8 LOADB                            R3 1
        9 RETURN                           R3 1
       10 LOADB                            R3 0
       11 GETIMPORT                        R4 K2 [string.format]
       13 LOADK                            R5 K3 ["(optional) %s"]
       14 ORK                              R6 R2 K4 [""]
       15 CALL                             R4 2 -1
       16 RETURN                           R3 -1

PROTO_27:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["callback"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 -1
        5 FASTCALL                         ASSERT ; [+2]
        6 GETIMPORT                        R1 K2 [assert]
        8 CALL                             R1 -1 0
        9 NEWCLOSURE                       R1 P0
       10 CAPTURE                          VAL R0
       11 RETURN                           R1 1

PROTO_28:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 0
        3 GETVARARGS                       R1 -1
        4 SETLIST                          R0 R1 -1 [1]
        6 GETIMPORT                        R1 K1 [ipairs]
        8 GETUPVAL                         R2 0
        9 CALL                             R1 1 3
       10 FORGPREP_INEXT                   R1
       11 MOVE                             R6 R5
       12 GETTABLE                         R7 R0 R4
       13 CALL                             R6 1 2
       14 JUMPIFNOTEQKB                    R6 FALSE ; [+9]
       16 LOADB                            R8 0
       17 GETIMPORT                        R9 K4 [string.format]
       19 LOADK                            R10 K5 ["Bad tuple index #%s:\n\t%s"]
       20 MOVE                             R11 R4
       21 ORK                              R12 R7 K6 [""]
       22 CALL                             R9 3 -1
       23 RETURN                           R8 -1
       24 FORGLOOP                         R1 2 [inext] ; [-14]
       26 LOADB                            R1 1
       27 RETURN                           R1 1

PROTO_29:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 0
        3 GETVARARGS                       R1 -1
        4 SETLIST                          R0 R1 -1 [1]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 RETURN                           R1 1

PROTO_30:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["table"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 2
        5 JUMPIFNOTEQKB                    R1 FALSE ; [+4]
        7 LOADB                            R3 0
        8 ORK                              R4 R2 K1 [""]
        9 RETURN                           R3 2
       10 GETIMPORT                        R3 K3 [pairs]
       12 MOVE                             R4 R0
       13 CALL                             R3 1 3
       14 FORGPREP_NEXT                    R3
       15 GETUPVAL                         R8 1
       16 MOVE                             R9 R6
       17 CALL                             R8 1 2
       18 JUMPIFNOTEQKB                    R8 FALSE ; [+13]
       20 LOADB                            R10 0
       21 GETIMPORT                        R11 K6 [string.format]
       23 LOADK                            R12 K7 ["bad key %s:\n\t%s"]
       24 FASTCALL1                        TOSTRING R6 ; [+3]
       25 MOVE                             R14 R6
       26 GETIMPORT                        R13 K9 [tostring]
       28 CALL                             R13 1 1
       29 ORK                              R14 R9 K1 [""]
       30 CALL                             R11 3 -1
       31 RETURN                           R10 -1
       32 FORGLOOP                         R3 1 ; [-18]
       34 LOADB                            R3 1
       35 RETURN                           R3 1

PROTO_31:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["callback"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 -1
        5 FASTCALL                         ASSERT ; [+2]
        6 GETIMPORT                        R1 K2 [assert]
        8 CALL                             R1 -1 0
        9 NEWCLOSURE                       R1 P0
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          VAL R0
       12 RETURN                           R1 1

PROTO_32:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["table"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 2
        5 JUMPIFNOTEQKB                    R1 FALSE ; [+4]
        7 LOADB                            R3 0
        8 ORK                              R4 R2 K1 [""]
        9 RETURN                           R3 2
       10 GETIMPORT                        R3 K3 [pairs]
       12 MOVE                             R4 R0
       13 CALL                             R3 1 3
       14 FORGPREP_NEXT                    R3
       15 GETUPVAL                         R8 1
       16 MOVE                             R9 R7
       17 CALL                             R8 1 2
       18 JUMPIFNOTEQKB                    R8 FALSE ; [+13]
       20 LOADB                            R10 0
       21 GETIMPORT                        R11 K6 [string.format]
       23 LOADK                            R12 K7 ["bad value for key %s:\n\t%s"]
       24 FASTCALL1                        TOSTRING R6 ; [+3]
       25 MOVE                             R14 R6
       26 GETIMPORT                        R13 K9 [tostring]
       28 CALL                             R13 1 1
       29 ORK                              R14 R9 K1 [""]
       30 CALL                             R11 3 -1
       31 RETURN                           R10 -1
       32 FORGLOOP                         R3 2 ; [-18]
       34 LOADB                            R3 1
       35 RETURN                           R3 1

PROTO_33:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["callback"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 -1
        5 FASTCALL                         ASSERT ; [+2]
        6 GETIMPORT                        R1 K2 [assert]
        8 CALL                             R1 -1 0
        9 NEWCLOSURE                       R1 P0
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          VAL R0
       12 RETURN                           R1 1

PROTO_34:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 2
        3 JUMPIF                           R1 ; [+3]
        4 LOADB                            R3 0
        5 ORK                              R4 R2 K0 [""]
        6 RETURN                           R3 2
        7 GETUPVAL                         R3 1
        8 MOVE                             R4 R0
        9 CALL                             R3 1 2
       10 JUMPIF                           R3 ; [+3]
       11 LOADB                            R5 0
       12 ORK                              R6 R4 K0 [""]
       13 RETURN                           R5 2
       14 LOADB                            R5 1
       15 RETURN                           R5 1

PROTO_35:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["callback"]
        3 MOVE                             R4 R0
        4 CALL                             R3 1 -1
        5 FASTCALL                         ASSERT ; [+2]
        6 GETIMPORT                        R2 K2 [assert]
        8 CALL                             R2 -1 0
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K0 ["callback"]
       12 MOVE                             R4 R1
       13 CALL                             R3 1 -1
       14 FASTCALL                         ASSERT ; [+2]
       15 GETIMPORT                        R2 K2 [assert]
       17 CALL                             R2 -1 0
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K3 ["keys"]
       21 MOVE                             R3 R0
       22 CALL                             R2 1 1
       23 GETUPVAL                         R3 0
       24 GETTABLEKS                       R3 R3 K4 ["values"]
       26 MOVE                             R4 R1
       27 CALL                             R3 1 1
       28 NEWCLOSURE                       R4 P0
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R3
       31 RETURN                           R4 1

PROTO_36:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["map"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K1 ["literal"]
        7 LOADB                            R4 1
        8 CALL                             R3 1 -1
        9 CALL                             R1 -1 -1
       10 RETURN                           R1 -1

PROTO_37:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 2
        3 JUMPIFNOTEQKB                    R1 FALSE ; [+8]
        5 LOADB                            R3 0
        6 GETIMPORT                        R4 K2 [string.format]
        8 LOADK                            R5 K3 ["[array] %s"]
        9 ORK                              R6 R2 K4 [""]
       10 CALL                             R4 2 -1
       11 RETURN                           R3 -1
       12 LOADN                            R3 0
       13 GETIMPORT                        R4 K6 [ipairs]
       15 MOVE                             R5 R0
       16 CALL                             R4 1 3
       17 FORGPREP_INEXT                   R4
       18 ADDK                             R3 R3 K7 [1]
       19 FORGLOOP                         R4 1 [inext] ; [-2]
       21 GETIMPORT                        R4 K9 [pairs]
       23 MOVE                             R5 R0
       24 CALL                             R4 1 3
       25 FORGPREP_NEXT                    R4
       26 LOADN                            R9 1
       27 JUMPIFLT                         R7 R9 ; [+3]
       29 JUMPIFNOTLT                      R3 R7 ; [+12]
       31 LOADB                            R9 0
       32 GETIMPORT                        R10 K2 [string.format]
       34 LOADK                            R11 K10 ["[array] key %s must be sequential"]
       35 FASTCALL1                        TOSTRING R7 ; [+3]
       36 MOVE                             R13 R7
       37 GETIMPORT                        R12 K12 [tostring]
       39 CALL                             R12 1 1
       40 CALL                             R10 2 -1
       41 RETURN                           R9 -1
       42 FORGLOOP                         R4 1 ; [-17]
       44 GETUPVAL                         R4 1
       45 MOVE                             R5 R0
       46 CALL                             R4 1 2
       47 JUMPIF                           R4 ; [+7]
       48 LOADB                            R6 0
       49 GETIMPORT                        R7 K2 [string.format]
       51 LOADK                            R8 K3 ["[array] %s"]
       52 ORK                              R9 R5 K4 [""]
       53 CALL                             R7 2 -1
       54 RETURN                           R6 -1
       55 LOADB                            R6 1
       56 RETURN                           R6 1

PROTO_38:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["callback"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 -1
        5 FASTCALL                         ASSERT ; [+2]
        6 GETIMPORT                        R1 K2 [assert]
        8 CALL                             R1 -1 0
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K3 ["values"]
       12 MOVE                             R2 R0
       13 CALL                             R1 1 1
       14 NEWCLOSURE                       R2 P0
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          VAL R1
       17 RETURN                           R2 1

PROTO_39:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 2
        3 JUMPIFNOTEQKB                    R1 FALSE ; [+8]
        5 LOADB                            R3 0
        6 GETIMPORT                        R4 K2 [string.format]
        8 LOADK                            R5 K3 ["[strictArray] %s"]
        9 ORK                              R6 R2 K4 [""]
       10 CALL                             R4 2 -1
       11 RETURN                           R3 -1
       12 GETUPVAL                         R4 1
       13 LENGTH                           R3 R4
       14 LENGTH                           R4 R0
       15 JUMPIFNOTLT                      R3 R4 ; [+9]
       17 LOADB                            R3 0
       18 GETIMPORT                        R4 K2 [string.format]
       20 LOADK                            R5 K5 ["[strictArray] Array size exceeds limit of %d"]
       21 GETUPVAL                         R7 1
       22 LENGTH                           R6 R7
       23 CALL                             R4 2 -1
       24 RETURN                           R3 -1
       25 GETIMPORT                        R3 K7 [pairs]
       27 GETUPVAL                         R4 1
       28 CALL                             R3 1 3
       29 FORGPREP_NEXT                    R3
       30 MOVE                             R8 R7
       31 GETTABLE                         R9 R0 R6
       32 CALL                             R8 1 2
       33 JUMPIF                           R8 ; [+8]
       34 LOADB                            R10 0
       35 GETIMPORT                        R11 K2 [string.format]
       37 LOADK                            R12 K8 ["[strictArray] Array index #%d - %s"]
       38 MOVE                             R13 R6
       39 MOVE                             R14 R9
       40 CALL                             R11 3 -1
       41 RETURN                           R10 -1
       42 FORGLOOP                         R3 2 ; [-13]
       44 LOADB                            R3 1
       45 RETURN                           R3 1

PROTO_40:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 0
        3 GETVARARGS                       R1 -1
        4 SETLIST                          R0 R1 -1 [1]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K0 ["array"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K1 ["callback"]
       12 CALL                             R2 1 1
       13 MOVE                             R3 R0
       14 CALL                             R2 1 -1
       15 FASTCALL                         ASSERT ; [+2]
       16 GETIMPORT                        R1 K3 [assert]
       18 CALL                             R1 -1 0
       19 NEWCLOSURE                       R1 P0
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          VAL R0
       22 RETURN                           R1 1

PROTO_41:
        0 GETIMPORT                        R1 K1 [ipairs]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 3
        4 FORGPREP_INEXT                   R1
        5 MOVE                             R6 R5
        6 MOVE                             R7 R0
        7 CALL                             R6 1 1
        8 JUMPIFNOT                        R6 ; [+2]
        9 LOADB                            R6 1
       10 RETURN                           R6 1
       11 FORGLOOP                         R1 2 [inext] ; [-7]
       13 LOADB                            R1 0
       14 LOADK                            R2 K2 ["bad type for union"]
       15 RETURN                           R1 2

PROTO_42:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 0
        3 GETVARARGS                       R1 -1
        4 SETLIST                          R0 R1 -1 [1]
        6 GETUPVAL                         R2 0
        7 MOVE                             R3 R0
        8 CALL                             R2 1 -1
        9 FASTCALL                         ASSERT ; [+2]
       10 GETIMPORT                        R1 K1 [assert]
       12 CALL                             R1 -1 0
       13 NEWCLOSURE                       R1 P0
       14 CAPTURE                          VAL R0
       15 RETURN                           R1 1

PROTO_43:
        0 GETIMPORT                        R1 K1 [ipairs]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 3
        4 FORGPREP_INEXT                   R1
        5 MOVE                             R6 R5
        6 MOVE                             R7 R0
        7 CALL                             R6 1 2
        8 JUMPIF                           R6 ; [+3]
        9 LOADB                            R8 0
       10 ORK                              R9 R7 K2 [""]
       11 RETURN                           R8 2
       12 FORGLOOP                         R1 2 [inext] ; [-8]
       14 LOADB                            R1 1
       15 RETURN                           R1 1

PROTO_44:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 0
        3 GETVARARGS                       R1 -1
        4 SETLIST                          R0 R1 -1 [1]
        6 GETUPVAL                         R2 0
        7 MOVE                             R3 R0
        8 CALL                             R2 1 -1
        9 FASTCALL                         ASSERT ; [+2]
       10 GETIMPORT                        R1 K1 [assert]
       12 CALL                             R1 -1 0
       13 NEWCLOSURE                       R1 P0
       14 CAPTURE                          VAL R0
       15 RETURN                           R1 1

PROTO_45:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["table"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 2
        5 JUMPIFNOTEQKB                    R1 FALSE ; [+4]
        7 LOADB                            R3 0
        8 ORK                              R4 R2 K1 [""]
        9 RETURN                           R3 2
       10 GETIMPORT                        R3 K3 [pairs]
       12 GETUPVAL                         R4 1
       13 CALL                             R3 1 3
       14 FORGPREP_NEXT                    R3
       15 MOVE                             R8 R7
       16 GETTABLE                         R9 R0 R6
       17 CALL                             R8 1 2
       18 JUMPIFNOTEQKB                    R8 FALSE ; [+13]
       20 LOADB                            R10 0
       21 GETIMPORT                        R11 K6 [string.format]
       23 LOADK                            R12 K7 ["[interface] bad value for %s:\n\t%s"]
       24 FASTCALL1                        TOSTRING R6 ; [+3]
       25 MOVE                             R14 R6
       26 GETIMPORT                        R13 K9 [tostring]
       28 CALL                             R13 1 1
       29 ORK                              R14 R9 K1 [""]
       30 CALL                             R11 3 -1
       31 RETURN                           R10 -1
       32 FORGLOOP                         R3 2 ; [-18]
       34 LOADB                            R3 1
       35 RETURN                           R3 1

PROTO_46:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 -1
        3 FASTCALL                         ASSERT ; [+2]
        4 GETIMPORT                        R1 K1 [assert]
        6 CALL                             R1 -1 0
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          VAL R0
       10 RETURN                           R1 1

PROTO_47:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["table"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 2
        5 JUMPIFNOTEQKB                    R1 FALSE ; [+4]
        7 LOADB                            R3 0
        8 ORK                              R4 R2 K1 [""]
        9 RETURN                           R3 2
       10 GETIMPORT                        R3 K3 [pairs]
       12 GETUPVAL                         R4 1
       13 CALL                             R3 1 3
       14 FORGPREP_NEXT                    R3
       15 MOVE                             R8 R7
       16 GETTABLE                         R9 R0 R6
       17 CALL                             R8 1 2
       18 JUMPIFNOTEQKB                    R8 FALSE ; [+13]
       20 LOADB                            R10 0
       21 GETIMPORT                        R11 K6 [string.format]
       23 LOADK                            R12 K7 ["[interface] bad value for %s:\n\t%s"]
       24 FASTCALL1                        TOSTRING R6 ; [+3]
       25 MOVE                             R14 R6
       26 GETIMPORT                        R13 K9 [tostring]
       28 CALL                             R13 1 1
       29 ORK                              R14 R9 K1 [""]
       30 CALL                             R11 3 -1
       31 RETURN                           R10 -1
       32 FORGLOOP                         R3 2 ; [-18]
       34 GETIMPORT                        R3 K3 [pairs]
       36 MOVE                             R4 R0
       37 CALL                             R3 1 3
       38 FORGPREP_NEXT                    R3
       39 GETUPVAL                         R9 1
       40 GETTABLE                         R8 R9 R6
       41 JUMPIF                           R8 ; [+11]
       42 LOADB                            R8 0
       43 GETIMPORT                        R9 K6 [string.format]
       45 LOADK                            R10 K10 ["[interface] unexpected field %q"]
       46 FASTCALL1                        TOSTRING R6 ; [+3]
       47 MOVE                             R12 R6
       48 GETIMPORT                        R11 K9 [tostring]
       50 CALL                             R11 1 1
       51 CALL                             R9 2 -1
       52 RETURN                           R8 -1
       53 FORGLOOP                         R3 1 ; [-15]
       55 LOADB                            R3 1
       56 RETURN                           R3 1

PROTO_48:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 -1
        3 FASTCALL                         ASSERT ; [+2]
        4 GETIMPORT                        R1 K1 [assert]
        6 CALL                             R1 -1 0
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          VAL R0
       10 RETURN                           R1 1

PROTO_49:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Instance"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 2
        5 JUMPIF                           R1 ; [+3]
        6 LOADB                            R3 0
        7 ORK                              R4 R2 K1 [""]
        8 RETURN                           R3 2
        9 GETTABLEKS                       R3 R0 K2 ["ClassName"]
       11 GETUPVAL                         R4 1
       12 JUMPIFEQ                         R3 R4 ; [+10]
       14 LOADB                            R3 0
       15 GETIMPORT                        R4 K5 [string.format]
       17 LOADK                            R5 K6 ["%s expected, got %s"]
       18 GETUPVAL                         R6 1
       19 GETTABLEKS                       R7 R0 K2 ["ClassName"]
       21 CALL                             R4 3 -1
       22 RETURN                           R3 -1
       23 GETUPVAL                         R3 2
       24 JUMPIFNOT                        R3 ; [+7]
       25 GETUPVAL                         R3 2
       26 MOVE                             R4 R0
       27 CALL                             R3 1 2
       28 JUMPIF                           R3 ; [+3]
       29 LOADB                            R5 0
       30 MOVE                             R6 R4
       31 RETURN                           R5 2
       32 LOADB                            R3 1
       33 RETURN                           R3 1

PROTO_50:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["string"]
        3 MOVE                             R4 R0
        4 CALL                             R3 1 -1
        5 FASTCALL                         ASSERT ; [+2]
        6 GETIMPORT                        R2 K2 [assert]
        8 CALL                             R2 -1 0
        9 LOADNIL                          R2
       10 JUMPIFEQKNIL                     R1 ; [+7]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K3 ["children"]
       15 MOVE                             R4 R1
       16 CALL                             R3 1 1
       17 MOVE                             R2 R3
       18 NEWCLOSURE                       R3 P0
       19 CAPTURE                          UPVAL U0
       20 CAPTURE                          VAL R0
       21 CAPTURE                          REF R2
       22 CLOSEUPVALS                      R2
       23 RETURN                           R3 1

PROTO_51:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Instance"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 2
        5 JUMPIF                           R1 ; [+3]
        6 LOADB                            R3 0
        7 ORK                              R4 R2 K1 [""]
        8 RETURN                           R3 2
        9 GETUPVAL                         R5 1
       10 NAMECALL                         R3 R0 K2 ["IsA"]
       12 CALL                             R3 2 1
       13 JUMPIF                           R3 ; [+9]
       14 LOADB                            R3 0
       15 GETIMPORT                        R4 K5 [string.format]
       17 LOADK                            R5 K6 ["%s expected, got %s"]
       18 GETUPVAL                         R6 1
       19 GETTABLEKS                       R7 R0 K7 ["ClassName"]
       21 CALL                             R4 3 -1
       22 RETURN                           R3 -1
       23 GETUPVAL                         R3 2
       24 JUMPIFNOT                        R3 ; [+7]
       25 GETUPVAL                         R3 2
       26 MOVE                             R4 R0
       27 CALL                             R3 1 2
       28 JUMPIF                           R3 ; [+3]
       29 LOADB                            R5 0
       30 MOVE                             R6 R4
       31 RETURN                           R5 2
       32 LOADB                            R3 1
       33 RETURN                           R3 1

PROTO_52:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["string"]
        3 MOVE                             R4 R0
        4 CALL                             R3 1 -1
        5 FASTCALL                         ASSERT ; [+2]
        6 GETIMPORT                        R2 K2 [assert]
        8 CALL                             R2 -1 0
        9 LOADNIL                          R2
       10 JUMPIFEQKNIL                     R1 ; [+7]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K3 ["children"]
       15 MOVE                             R4 R1
       16 CALL                             R3 1 1
       17 MOVE                             R2 R3
       18 NEWCLOSURE                       R3 P0
       19 CAPTURE                          UPVAL U0
       20 CAPTURE                          VAL R0
       21 CAPTURE                          REF R2
       22 CLOSEUPVALS                      R2
       23 RETURN                           R3 1

PROTO_53:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["EnumItem"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 2
        5 JUMPIF                           R1 ; [+3]
        6 LOADB                            R3 0
        7 MOVE                             R4 R2
        8 RETURN                           R3 2
        9 GETTABLEKS                       R3 R0 K1 ["EnumType"]
       11 GETUPVAL                         R4 1
       12 JUMPIFNOTEQ                      R3 R4 ; [+3]
       14 LOADB                            R3 1
       15 RETURN                           R3 1
       16 LOADB                            R3 0
       17 GETIMPORT                        R4 K4 [string.format]
       19 LOADK                            R5 K5 ["enum of %s expected, got enum of %s"]
       20 GETUPVAL                         R7 1
       21 FASTCALL1                        TOSTRING R7 ; [+2]
       22 GETIMPORT                        R6 K7 [tostring]
       24 CALL                             R6 1 1
       25 GETTABLEKS                       R8 R0 K1 ["EnumType"]
       27 FASTCALL1                        TOSTRING R8 ; [+2]
       28 GETIMPORT                        R7 K7 [tostring]
       30 CALL                             R7 1 1
       31 CALL                             R4 3 -1
       32 RETURN                           R3 -1

PROTO_54:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Enum"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 -1
        5 FASTCALL                         ASSERT ; [+2]
        6 GETIMPORT                        R1 K2 [assert]
        8 CALL                             R1 -1 0
        9 NEWCLOSURE                       R1 P0
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          VAL R0
       12 RETURN                           R1 1

PROTO_55:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R1 0
        2 GETVARARGS                       R2 -1
        3 CALL                             R1 -1 -1
        4 FASTCALL                         ASSERT ; [+2]
        5 GETIMPORT                        R0 K1 [assert]
        7 CALL                             R0 -1 0
        8 GETUPVAL                         R0 1
        9 GETVARARGS                       R1 -1
       10 CALL                             R0 -1 -1
       11 RETURN                           R0 -1

PROTO_56:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 CALL                             R3 2 -1
        4 FASTCALL                         ASSERT ; [+2]
        5 GETIMPORT                        R2 K1 [assert]
        7 CALL                             R2 -1 0
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          VAL R1
       10 CAPTURE                          VAL R0
       11 RETURN                           R2 1

PROTO_57:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R1 0
        2 GETVARARGS                       R2 -1
        3 CALL                             R1 -1 -1
        4 FASTCALL                         ASSERT ; [+2]
        5 GETIMPORT                        R0 K1 [assert]
        7 CALL                             R0 -1 0
        8 RETURN                           R0 0

PROTO_58:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

PROTO_59:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Instance"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 2
        5 JUMPIF                           R1 ; [+3]
        6 LOADB                            R3 0
        7 ORK                              R4 R2 K1 [""]
        8 RETURN                           R3 2
        9 NEWTABLE                         R3 0 0
       11 GETIMPORT                        R4 K3 [ipairs]
       13 NAMECALL                         R5 R0 K4 ["GetChildren"]
       15 CALL                             R5 1 -1
       16 CALL                             R4 -1 3
       17 FORGPREP_INEXT                   R4
       18 GETTABLEKS                       R9 R8 K5 ["Name"]
       20 GETUPVAL                         R11 1
       21 GETTABLE                         R10 R11 R9
       22 JUMPIFNOT                        R10 ; [+10]
       23 GETTABLE                         R10 R3 R9
       24 JUMPIFNOT                        R10 ; [+7]
       25 LOADB                            R10 0
       26 GETIMPORT                        R11 K8 [string.format]
       28 LOADK                            R12 K9 ["Cannot process multiple children with the same name %q"]
       29 MOVE                             R13 R9
       30 CALL                             R11 2 -1
       31 RETURN                           R10 -1
       32 SETTABLE                         R8 R3 R9
       33 FORGLOOP                         R4 2 [inext] ; [-16]
       35 GETIMPORT                        R4 K11 [pairs]
       37 GETUPVAL                         R5 1
       38 CALL                             R4 1 3
       39 FORGPREP_NEXT                    R4
       40 MOVE                             R9 R8
       41 GETTABLE                         R10 R3 R7
       42 CALL                             R9 1 2
       43 JUMPIF                           R9 ; [+11]
       44 LOADB                            R11 0
       45 GETIMPORT                        R12 K8 [string.format]
       47 LOADK                            R13 K12 ["[%s.%s] %s"]
       48 NAMECALL                         R14 R0 K13 ["GetFullName"]
       50 CALL                             R14 1 1
       51 MOVE                             R15 R7
       52 ORK                              R16 R10 K1 [""]
       53 CALL                             R12 4 -1
       54 RETURN                           R11 -1
       55 FORGLOOP                         R4 2 ; [-16]
       57 LOADB                            R4 1
       58 RETURN                           R4 1

PROTO_60:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 -1
        3 FASTCALL                         ASSERT ; [+2]
        4 GETIMPORT                        R1 K1 [assert]
        6 CALL                             R1 -1 0
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          VAL R0
       10 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 128 0
        3 DUPCLOSURE                       R1 K0 [PROTO_1]
        4 SETTABLEKS                       R1 R0 K1 ["type"]
        6 DUPCLOSURE                       R1 K2 [PROTO_3]
        7 SETTABLEKS                       R1 R0 K3 ["typeof"]
        9 DUPCLOSURE                       R1 K4 [PROTO_4]
       10 SETTABLEKS                       R1 R0 K5 ["any"]
       12 GETTABLEKS                       R1 R0 K3 ["typeof"]
       14 LOADK                            R2 K6 ["boolean"]
       15 CALL                             R1 1 1
       16 SETTABLEKS                       R1 R0 K6 ["boolean"]
       18 GETTABLEKS                       R1 R0 K3 ["typeof"]
       20 LOADK                            R2 K7 ["thread"]
       21 CALL                             R1 1 1
       22 SETTABLEKS                       R1 R0 K7 ["thread"]
       24 GETTABLEKS                       R1 R0 K3 ["typeof"]
       26 LOADK                            R2 K8 ["function"]
       27 CALL                             R1 1 1
       28 SETTABLEKS                       R1 R0 K9 ["callback"]
       30 GETTABLEKS                       R1 R0 K9 ["callback"]
       32 SETTABLEKS                       R1 R0 K8 ["function"]
       34 GETTABLEKS                       R1 R0 K3 ["typeof"]
       36 LOADK                            R2 K10 ["nil"]
       37 CALL                             R1 1 1
       38 SETTABLEKS                       R1 R0 K11 ["none"]
       40 GETTABLEKS                       R1 R0 K11 ["none"]
       42 SETTABLEKS                       R1 R0 K10 ["nil"]
       44 GETTABLEKS                       R1 R0 K3 ["typeof"]
       46 LOADK                            R2 K12 ["string"]
       47 CALL                             R1 1 1
       48 SETTABLEKS                       R1 R0 K12 ["string"]
       50 GETTABLEKS                       R1 R0 K3 ["typeof"]
       52 LOADK                            R2 K13 ["table"]
       53 CALL                             R1 1 1
       54 SETTABLEKS                       R1 R0 K13 ["table"]
       56 GETTABLEKS                       R1 R0 K1 ["type"]
       58 LOADK                            R2 K14 ["userdata"]
       59 CALL                             R1 1 1
       60 SETTABLEKS                       R1 R0 K14 ["userdata"]
       62 DUPCLOSURE                       R1 K15 [PROTO_5]
       63 SETTABLEKS                       R1 R0 K16 ["number"]
       65 DUPCLOSURE                       R1 K17 [PROTO_6]
       66 SETTABLEKS                       R1 R0 K18 ["nan"]
       68 GETTABLEKS                       R1 R0 K3 ["typeof"]
       70 LOADK                            R2 K19 ["Axes"]
       71 CALL                             R1 1 1
       72 SETTABLEKS                       R1 R0 K19 ["Axes"]
       74 GETTABLEKS                       R1 R0 K3 ["typeof"]
       76 LOADK                            R2 K20 ["BrickColor"]
       77 CALL                             R1 1 1
       78 SETTABLEKS                       R1 R0 K20 ["BrickColor"]
       80 GETTABLEKS                       R1 R0 K3 ["typeof"]
       82 LOADK                            R2 K21 ["CatalogSearchParams"]
       83 CALL                             R1 1 1
       84 SETTABLEKS                       R1 R0 K21 ["CatalogSearchParams"]
       86 GETTABLEKS                       R1 R0 K3 ["typeof"]
       88 LOADK                            R2 K22 ["CFrame"]
       89 CALL                             R1 1 1
       90 SETTABLEKS                       R1 R0 K22 ["CFrame"]
       92 GETTABLEKS                       R1 R0 K3 ["typeof"]
       94 LOADK                            R2 K23 ["Color3"]
       95 CALL                             R1 1 1
       96 SETTABLEKS                       R1 R0 K23 ["Color3"]
       98 GETTABLEKS                       R1 R0 K3 ["typeof"]
      100 LOADK                            R2 K24 ["ColorSequence"]
      101 CALL                             R1 1 1
      102 SETTABLEKS                       R1 R0 K24 ["ColorSequence"]
      104 GETTABLEKS                       R1 R0 K3 ["typeof"]
      106 LOADK                            R2 K25 ["ColorSequenceKeypoint"]
      107 CALL                             R1 1 1
      108 SETTABLEKS                       R1 R0 K25 ["ColorSequenceKeypoint"]
      110 GETTABLEKS                       R1 R0 K3 ["typeof"]
      112 LOADK                            R2 K26 ["DateTime"]
      113 CALL                             R1 1 1
      114 SETTABLEKS                       R1 R0 K26 ["DateTime"]
      116 GETTABLEKS                       R1 R0 K3 ["typeof"]
      118 LOADK                            R2 K27 ["DockWidgetPluginGuiInfo"]
      119 CALL                             R1 1 1
      120 SETTABLEKS                       R1 R0 K27 ["DockWidgetPluginGuiInfo"]
      122 GETTABLEKS                       R1 R0 K3 ["typeof"]
      124 LOADK                            R2 K28 ["Enum"]
      125 CALL                             R1 1 1
      126 SETTABLEKS                       R1 R0 K28 ["Enum"]
      128 GETTABLEKS                       R1 R0 K3 ["typeof"]
      130 LOADK                            R2 K29 ["EnumItem"]
      131 CALL                             R1 1 1
      132 SETTABLEKS                       R1 R0 K29 ["EnumItem"]
      134 GETTABLEKS                       R1 R0 K3 ["typeof"]
      136 LOADK                            R2 K30 ["Enums"]
      137 CALL                             R1 1 1
      138 SETTABLEKS                       R1 R0 K30 ["Enums"]
      140 GETTABLEKS                       R1 R0 K3 ["typeof"]
      142 LOADK                            R2 K31 ["Faces"]
      143 CALL                             R1 1 1
      144 SETTABLEKS                       R1 R0 K31 ["Faces"]
      146 GETTABLEKS                       R1 R0 K3 ["typeof"]
      148 LOADK                            R2 K32 ["Instance"]
      149 CALL                             R1 1 1
      150 SETTABLEKS                       R1 R0 K32 ["Instance"]
      152 GETTABLEKS                       R1 R0 K3 ["typeof"]
      154 LOADK                            R2 K33 ["NumberRange"]
      155 CALL                             R1 1 1
      156 SETTABLEKS                       R1 R0 K33 ["NumberRange"]
      158 GETTABLEKS                       R1 R0 K3 ["typeof"]
      160 LOADK                            R2 K34 ["NumberSequence"]
      161 CALL                             R1 1 1
      162 SETTABLEKS                       R1 R0 K34 ["NumberSequence"]
      164 GETTABLEKS                       R1 R0 K3 ["typeof"]
      166 LOADK                            R2 K35 ["NumberSequenceKeypoint"]
      167 CALL                             R1 1 1
      168 SETTABLEKS                       R1 R0 K35 ["NumberSequenceKeypoint"]
      170 GETTABLEKS                       R1 R0 K3 ["typeof"]
      172 LOADK                            R2 K36 ["PathWaypoint"]
      173 CALL                             R1 1 1
      174 SETTABLEKS                       R1 R0 K36 ["PathWaypoint"]
      176 GETTABLEKS                       R1 R0 K3 ["typeof"]
      178 LOADK                            R2 K37 ["PhysicalProperties"]
      179 CALL                             R1 1 1
      180 SETTABLEKS                       R1 R0 K37 ["PhysicalProperties"]
      182 GETTABLEKS                       R1 R0 K3 ["typeof"]
      184 LOADK                            R2 K38 ["Random"]
      185 CALL                             R1 1 1
      186 SETTABLEKS                       R1 R0 K38 ["Random"]
      188 GETTABLEKS                       R1 R0 K3 ["typeof"]
      190 LOADK                            R2 K39 ["Ray"]
      191 CALL                             R1 1 1
      192 SETTABLEKS                       R1 R0 K39 ["Ray"]
      194 GETTABLEKS                       R1 R0 K3 ["typeof"]
      196 LOADK                            R2 K40 ["RaycastParams"]
      197 CALL                             R1 1 1
      198 SETTABLEKS                       R1 R0 K40 ["RaycastParams"]
      200 GETTABLEKS                       R1 R0 K3 ["typeof"]
      202 LOADK                            R2 K41 ["RaycastResult"]
      203 CALL                             R1 1 1
      204 SETTABLEKS                       R1 R0 K41 ["RaycastResult"]
      206 GETTABLEKS                       R1 R0 K3 ["typeof"]
      208 LOADK                            R2 K42 ["RBXScriptConnection"]
      209 CALL                             R1 1 1
      210 SETTABLEKS                       R1 R0 K42 ["RBXScriptConnection"]
      212 GETTABLEKS                       R1 R0 K3 ["typeof"]
      214 LOADK                            R2 K43 ["RBXScriptSignal"]
      215 CALL                             R1 1 1
      216 SETTABLEKS                       R1 R0 K43 ["RBXScriptSignal"]
      218 GETTABLEKS                       R1 R0 K3 ["typeof"]
      220 LOADK                            R2 K44 ["Rect"]
      221 CALL                             R1 1 1
      222 SETTABLEKS                       R1 R0 K44 ["Rect"]
      224 GETTABLEKS                       R1 R0 K3 ["typeof"]
      226 LOADK                            R2 K45 ["Region3"]
      227 CALL                             R1 1 1
      228 SETTABLEKS                       R1 R0 K45 ["Region3"]
      230 GETTABLEKS                       R1 R0 K3 ["typeof"]
      232 LOADK                            R2 K46 ["Region3int16"]
      233 CALL                             R1 1 1
      234 SETTABLEKS                       R1 R0 K46 ["Region3int16"]
      236 GETTABLEKS                       R1 R0 K3 ["typeof"]
      238 LOADK                            R2 K47 ["TweenInfo"]
      239 CALL                             R1 1 1
      240 SETTABLEKS                       R1 R0 K47 ["TweenInfo"]
      242 GETTABLEKS                       R1 R0 K3 ["typeof"]
      244 LOADK                            R2 K48 ["UDim"]
      245 CALL                             R1 1 1
      246 SETTABLEKS                       R1 R0 K48 ["UDim"]
      248 GETTABLEKS                       R1 R0 K3 ["typeof"]
      250 LOADK                            R2 K49 ["UDim2"]
      251 CALL                             R1 1 1
      252 SETTABLEKS                       R1 R0 K49 ["UDim2"]
      254 GETTABLEKS                       R1 R0 K3 ["typeof"]
      256 LOADK                            R2 K50 ["Vector2"]
      257 CALL                             R1 1 1
      258 SETTABLEKS                       R1 R0 K50 ["Vector2"]
      260 GETTABLEKS                       R1 R0 K3 ["typeof"]
      262 LOADK                            R2 K51 ["Vector2int16"]
      263 CALL                             R1 1 1
      264 SETTABLEKS                       R1 R0 K51 ["Vector2int16"]
      266 GETTABLEKS                       R1 R0 K3 ["typeof"]
      268 LOADK                            R2 K52 ["Vector3"]
      269 CALL                             R1 1 1
      270 SETTABLEKS                       R1 R0 K52 ["Vector3"]
      272 GETTABLEKS                       R1 R0 K3 ["typeof"]
      274 LOADK                            R2 K53 ["Vector3int16"]
      275 CALL                             R1 1 1
      276 SETTABLEKS                       R1 R0 K53 ["Vector3int16"]
      278 DUPCLOSURE                       R1 K54 [PROTO_8]
      279 CAPTURE                          VAL R0
      280 SETTABLEKS                       R1 R0 K55 ["literal"]
      282 GETTABLEKS                       R1 R0 K55 ["literal"]
      284 SETTABLEKS                       R1 R0 K56 ["exactly"]
      286 DUPCLOSURE                       R1 K57 [PROTO_9]
      287 CAPTURE                          VAL R0
      288 SETTABLEKS                       R1 R0 K58 ["keyOf"]
      290 DUPCLOSURE                       R1 K59 [PROTO_10]
      291 CAPTURE                          VAL R0
      292 SETTABLEKS                       R1 R0 K60 ["valueOf"]
      294 DUPCLOSURE                       R1 K61 [PROTO_11]
      295 CAPTURE                          VAL R0
      296 SETTABLEKS                       R1 R0 K62 ["integer"]
      298 DUPCLOSURE                       R1 K63 [PROTO_13]
      299 CAPTURE                          VAL R0
      300 SETTABLEKS                       R1 R0 K64 ["numberMin"]
      302 DUPCLOSURE                       R1 K65 [PROTO_15]
      303 CAPTURE                          VAL R0
      304 SETTABLEKS                       R1 R0 K66 ["numberMax"]
      306 DUPCLOSURE                       R1 K67 [PROTO_17]
      307 CAPTURE                          VAL R0
      308 SETTABLEKS                       R1 R0 K68 ["numberMinExclusive"]
      310 DUPCLOSURE                       R1 K69 [PROTO_19]
      311 CAPTURE                          VAL R0
      312 SETTABLEKS                       R1 R0 K70 ["numberMaxExclusive"]
      314 GETTABLEKS                       R1 R0 K68 ["numberMinExclusive"]
      316 LOADN                            R2 0
      317 CALL                             R1 1 1
      318 SETTABLEKS                       R1 R0 K71 ["numberPositive"]
      320 GETTABLEKS                       R1 R0 K70 ["numberMaxExclusive"]
      322 LOADN                            R2 0
      323 CALL                             R1 1 1
      324 SETTABLEKS                       R1 R0 K72 ["numberNegative"]
      326 DUPCLOSURE                       R1 K73 [PROTO_21]
      327 CAPTURE                          VAL R0
      328 SETTABLEKS                       R1 R0 K74 ["numberConstrained"]
      330 DUPCLOSURE                       R1 K75 [PROTO_23]
      331 CAPTURE                          VAL R0
      332 SETTABLEKS                       R1 R0 K76 ["numberConstrainedExclusive"]
      334 DUPCLOSURE                       R1 K77 [PROTO_25]
      335 CAPTURE                          VAL R0
      336 SETTABLEKS                       R1 R0 K78 ["match"]
      338 DUPCLOSURE                       R1 K79 [PROTO_27]
      339 CAPTURE                          VAL R0
      340 SETTABLEKS                       R1 R0 K80 ["optional"]
      342 DUPCLOSURE                       R1 K81 [PROTO_29]
      343 SETTABLEKS                       R1 R0 K82 ["tuple"]
      345 DUPCLOSURE                       R1 K83 [PROTO_31]
      346 CAPTURE                          VAL R0
      347 SETTABLEKS                       R1 R0 K84 ["keys"]
      349 DUPCLOSURE                       R1 K85 [PROTO_33]
      350 CAPTURE                          VAL R0
      351 SETTABLEKS                       R1 R0 K86 ["values"]
      353 DUPCLOSURE                       R1 K87 [PROTO_35]
      354 CAPTURE                          VAL R0
      355 SETTABLEKS                       R1 R0 K88 ["map"]
      357 DUPCLOSURE                       R1 K89 [PROTO_36]
      358 CAPTURE                          VAL R0
      359 SETTABLEKS                       R1 R0 K90 ["set"]
      361 GETTABLEKS                       R1 R0 K84 ["keys"]
      363 GETTABLEKS                       R2 R0 K62 ["integer"]
      365 CALL                             R1 1 1
      366 DUPCLOSURE                       R2 K91 [PROTO_38]
      367 CAPTURE                          VAL R0
      368 CAPTURE                          VAL R1
      369 SETTABLEKS                       R2 R0 K92 ["array"]
      371 DUPCLOSURE                       R2 K93 [PROTO_40]
      372 CAPTURE                          VAL R0
      373 CAPTURE                          VAL R1
      374 SETTABLEKS                       R2 R0 K94 ["strictArray"]
      376 GETTABLEKS                       R1 R0 K92 ["array"]
      378 GETTABLEKS                       R2 R0 K9 ["callback"]
      380 CALL                             R1 1 1
      381 DUPCLOSURE                       R2 K95 [PROTO_42]
      382 CAPTURE                          VAL R1
      383 SETTABLEKS                       R2 R0 K96 ["union"]
      385 GETTABLEKS                       R2 R0 K96 ["union"]
      387 SETTABLEKS                       R2 R0 K97 ["some"]
      389 DUPCLOSURE                       R2 K98 [PROTO_44]
      390 CAPTURE                          VAL R1
      391 SETTABLEKS                       R2 R0 K99 ["intersection"]
      393 GETTABLEKS                       R2 R0 K99 ["intersection"]
      395 SETTABLEKS                       R2 R0 K100 ["every"]
      397 GETTABLEKS                       R1 R0 K88 ["map"]
      399 GETTABLEKS                       R2 R0 K5 ["any"]
      401 GETTABLEKS                       R3 R0 K9 ["callback"]
      403 CALL                             R1 2 1
      404 DUPCLOSURE                       R2 K101 [PROTO_46]
      405 CAPTURE                          VAL R1
      406 CAPTURE                          VAL R0
      407 SETTABLEKS                       R2 R0 K102 ["interface"]
      409 DUPCLOSURE                       R2 K103 [PROTO_48]
      410 CAPTURE                          VAL R1
      411 CAPTURE                          VAL R0
      412 SETTABLEKS                       R2 R0 K104 ["strictInterface"]
      414 DUPCLOSURE                       R1 K105 [PROTO_50]
      415 CAPTURE                          VAL R0
      416 SETTABLEKS                       R1 R0 K106 ["instanceOf"]
      418 GETTABLEKS                       R1 R0 K106 ["instanceOf"]
      420 SETTABLEKS                       R1 R0 K107 ["instance"]
      422 DUPCLOSURE                       R1 K108 [PROTO_52]
      423 CAPTURE                          VAL R0
      424 SETTABLEKS                       R1 R0 K109 ["instanceIsA"]
      426 DUPCLOSURE                       R1 K110 [PROTO_54]
      427 CAPTURE                          VAL R0
      428 SETTABLEKS                       R1 R0 K111 ["enum"]
      430 GETTABLEKS                       R1 R0 K82 ["tuple"]
      432 GETTABLEKS                       R2 R0 K9 ["callback"]
      434 GETTABLEKS                       R3 R0 K9 ["callback"]
      436 CALL                             R1 2 1
      437 DUPCLOSURE                       R2 K112 [PROTO_56]
      438 CAPTURE                          VAL R1
      439 SETTABLEKS                       R2 R0 K113 ["wrap"]
      441 DUPCLOSURE                       R1 K114 [PROTO_58]
      442 SETTABLEKS                       R1 R0 K115 ["strict"]
      444 GETTABLEKS                       R1 R0 K88 ["map"]
      446 GETTABLEKS                       R2 R0 K12 ["string"]
      448 GETTABLEKS                       R3 R0 K9 ["callback"]
      450 CALL                             R1 2 1
      451 DUPCLOSURE                       R2 K116 [PROTO_60]
      452 CAPTURE                          VAL R1
      453 CAPTURE                          VAL R0
      454 SETTABLEKS                       R2 R0 K117 ["children"]
      456 RETURN                           R0 1
