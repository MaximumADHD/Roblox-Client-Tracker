PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 JUMPIFNOTEQ                      R1 R2 ; [+3]
        6 LOADB                            R2 1
        7 RETURN                           R2 1
        8 LOADB                            R2 0
        9 GETIMPORT                        R3 K2 [string.format]
       11 LOADK                            R4 K3 ["%s expected, got %s"]
       12 GETUPVAL                         R5 1
       13 MOVE                             R6 R1
       14 CALL                             R3 3 -1
       15 RETURN                           R2 -1

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 RETURN                           R1 1

PROTO_2:
        0 JUMPIFEQKNIL                     R0 ; [+3]
        2 LOADB                            R1 1
        3 RETURN                           R1 1
        4 LOADB                            R1 0
        5 LOADK                            R2 K0 ["any expected, got nil"]
        6 RETURN                           R1 2

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOTEQKS                    R1 K0 ["number"] ; [+8]
        5 JUMPIFNOTEQ                      R0 R0 ; [+3]
        7 LOADB                            R2 1
        8 RETURN                           R2 1
        9 LOADB                            R2 0
       10 LOADK                            R3 K1 ["unexpected NaN value"]
       11 RETURN                           R2 2
       12 LOADB                            R2 0
       13 GETIMPORT                        R3 K4 [string.format]
       15 LOADK                            R4 K5 ["number expected, got %s"]
       16 MOVE                             R5 R1
       17 CALL                             R3 2 -1
       18 RETURN                           R2 -1

PROTO_4:
        0 JUMPIFEQ                         R0 R0 ; [+3]
        2 LOADB                            R1 1
        3 RETURN                           R1 1
        4 LOADB                            R1 0
        5 LOADK                            R2 K0 ["unexpected non-NaN value"]
        6 RETURN                           R1 2

PROTO_5:
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

PROTO_6:
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
       25 GETUPVAL                         R7 0
       26 GETTABLEKS                       R6 R7 K4 ["literal"]
       28 MOVE                             R7 R5
       29 CALL                             R6 1 1
       30 SETTABLE                         R6 R1 R4
       31 FORNLOOP                         R2
       32 GETUPVAL                         R3 0
       33 GETTABLEKS                       R2 R3 K5 ["union"]
       35 FASTCALL1                        TABLE_UNPACK R1 ; [+3]
       36 MOVE                             R4 R1
       37 GETIMPORT                        R3 K7 [unpack]
       39 CALL                             R3 1 -1
       40 CALL                             R2 -1 -1
       41 RETURN                           R2 -1

PROTO_7:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [pairs]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 3
        6 FORGPREP_NEXT                    R2
        7 LENGTH                           R8 R1
        8 ADDK                             R7 R8 K2 [1]
        9 SETTABLE                         R5 R1 R7
       10 FORGLOOP                         R2 1 ; [-4]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R2 R3 K3 ["literal"]
       15 FASTCALL1                        TABLE_UNPACK R1 ; [+3]
       16 MOVE                             R4 R1
       17 GETIMPORT                        R3 K5 [unpack]
       19 CALL                             R3 1 -1
       20 CALL                             R2 -1 -1
       21 RETURN                           R2 -1

PROTO_8:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [pairs]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 3
        6 FORGPREP_NEXT                    R2
        7 LENGTH                           R8 R1
        8 ADDK                             R7 R8 K2 [1]
        9 SETTABLE                         R6 R1 R7
       10 FORGLOOP                         R2 2 ; [-4]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R2 R3 K3 ["literal"]
       15 FASTCALL1                        TABLE_UNPACK R1 ; [+3]
       16 MOVE                             R4 R1
       17 GETIMPORT                        R3 K5 [unpack]
       19 CALL                             R3 1 -1
       20 CALL                             R2 -1 -1
       21 RETURN                           R2 -1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["number"]
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

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["number"]
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

PROTO_11:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["number"]
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

PROTO_13:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 RETURN                           R1 1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["number"]
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

PROTO_15:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 RETURN                           R1 1

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["number"]
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

PROTO_17:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 RETURN                           R1 1

PROTO_18:
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

PROTO_19:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["number"]
        3 MOVE                             R4 R0
        4 CALL                             R3 1 1
        5 JUMPIFNOT                        R3 ; [+5]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K0 ["number"]
        9 MOVE                             R4 R1
       10 CALL                             R3 1 1
       11 FASTCALL1                        ASSERT R3 ; [+2]
       12 GETIMPORT                        R2 K2 [assert]
       14 CALL                             R2 1 0
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R2 R3 K3 ["numberMin"]
       18 MOVE                             R3 R0
       19 CALL                             R2 1 1
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R3 R4 K4 ["numberMax"]
       23 MOVE                             R4 R1
       24 CALL                             R3 1 1
       25 NEWCLOSURE                       R4 P0
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R3
       28 RETURN                           R4 1

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
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["number"]
        3 MOVE                             R4 R0
        4 CALL                             R3 1 1
        5 JUMPIFNOT                        R3 ; [+5]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K0 ["number"]
        9 MOVE                             R4 R1
       10 CALL                             R3 1 1
       11 FASTCALL1                        ASSERT R3 ; [+2]
       12 GETIMPORT                        R2 K2 [assert]
       14 CALL                             R2 1 0
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R2 R3 K3 ["numberMinExclusive"]
       18 MOVE                             R3 R0
       19 CALL                             R2 1 1
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R3 R4 K4 ["numberMaxExclusive"]
       23 MOVE                             R4 R1
       24 CALL                             R3 1 1
       25 NEWCLOSURE                       R4 P0
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R3
       28 RETURN                           R4 1

PROTO_22:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["string"]
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
       19 LOADK                            R5 K5 ["\"%s\" failed to match pattern \"%s\""]
       20 MOVE                             R6 R0
       21 GETUPVAL                         R7 1
       22 CALL                             R4 3 -1
       23 RETURN                           R3 -1
       24 LOADB                            R3 1
       25 RETURN                           R3 1

PROTO_23:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["string"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 -1
        5 FASTCALL                         ASSERT ; [+2]
        6 GETIMPORT                        R1 K2 [assert]
        8 CALL                             R1 -1 0
        9 NEWCLOSURE                       R1 P0
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          VAL R0
       12 RETURN                           R1 1

PROTO_24:
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

PROTO_25:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["callback"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 -1
        5 FASTCALL                         ASSERT ; [+2]
        6 GETIMPORT                        R1 K2 [assert]
        8 CALL                             R1 -1 0
        9 NEWCLOSURE                       R1 P0
       10 CAPTURE                          VAL R0
       11 RETURN                           R1 1

PROTO_26:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 0
        3 GETVARARGS                       R1 -1
        4 SETLIST                          R0 R1 -1 [1]
        6 LOADN                            R3 1
        7 GETUPVAL                         R4 0
        8 LENGTH                           R1 R4
        9 LOADN                            R2 1
       10 FORNPREP                         R1
       11 GETUPVAL                         R5 0
       12 GETTABLE                         R4 R5 R3
       13 GETTABLE                         R5 R0 R3
       14 CALL                             R4 1 2
       15 JUMPIFNOTEQKB                    R4 FALSE ; [+9]
       17 LOADB                            R6 0
       18 GETIMPORT                        R7 K2 [string.format]
       20 LOADK                            R8 K3 ["Bad tuple index #%s:\n\t%s"]
       21 MOVE                             R9 R3
       22 ORK                              R10 R5 K4 [""]
       23 CALL                             R7 3 -1
       24 RETURN                           R6 -1
       25 FORNLOOP                         R1
       26 LOADB                            R1 1
       27 RETURN                           R1 1

PROTO_27:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 0
        3 GETVARARGS                       R1 -1
        4 SETLIST                          R0 R1 -1 [1]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 RETURN                           R1 1

PROTO_28:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["table"]
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

PROTO_29:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["callback"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 -1
        5 FASTCALL                         ASSERT ; [+2]
        6 GETIMPORT                        R1 K2 [assert]
        8 CALL                             R1 -1 0
        9 NEWCLOSURE                       R1 P0
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          VAL R0
       12 RETURN                           R1 1

PROTO_30:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["table"]
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

PROTO_31:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["callback"]
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

PROTO_33:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["callback"]
        3 MOVE                             R4 R0
        4 CALL                             R3 1 1
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R4 R5 K0 ["callback"]
        8 MOVE                             R5 R1
        9 CALL                             R4 1 -1
       10 FASTCALL                         ASSERT ; [+2]
       11 GETIMPORT                        R2 K2 [assert]
       13 CALL                             R2 -1 0
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R2 R3 K3 ["keys"]
       17 MOVE                             R3 R0
       18 CALL                             R2 1 1
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R3 R4 K4 ["values"]
       22 MOVE                             R4 R1
       23 CALL                             R3 1 1
       24 NEWCLOSURE                       R4 P0
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R3
       27 RETURN                           R4 1

PROTO_34:
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
       19 FORGLOOP                         R4 2 [inext] ; [-2]
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

PROTO_35:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["callback"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 -1
        5 FASTCALL                         ASSERT ; [+2]
        6 GETIMPORT                        R1 K2 [assert]
        8 CALL                             R1 -1 0
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R1 R2 K3 ["values"]
       12 MOVE                             R2 R0
       13 CALL                             R1 1 1
       14 NEWCLOSURE                       R2 P0
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          VAL R1
       17 RETURN                           R2 1

PROTO_36:
        0 GETIMPORT                        R1 K1 [pairs]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 3
        4 FORGPREP_NEXT                    R1
        5 MOVE                             R6 R5
        6 MOVE                             R7 R0
        7 CALL                             R6 1 1
        8 JUMPIFNOT                        R6 ; [+2]
        9 LOADB                            R6 1
       10 RETURN                           R6 1
       11 FORGLOOP                         R1 2 ; [-7]
       13 LOADB                            R1 0
       14 LOADK                            R2 K2 ["bad type for union"]
       15 RETURN                           R1 2

PROTO_37:
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

PROTO_38:
        0 GETIMPORT                        R1 K1 [pairs]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 3
        4 FORGPREP_NEXT                    R1
        5 MOVE                             R6 R5
        6 MOVE                             R7 R0
        7 CALL                             R6 1 2
        8 JUMPIF                           R6 ; [+3]
        9 LOADB                            R8 0
       10 ORK                              R9 R7 K2 [""]
       11 RETURN                           R8 2
       12 FORGLOOP                         R1 2 ; [-8]
       14 LOADB                            R1 1
       15 RETURN                           R1 1

PROTO_39:
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

PROTO_40:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["table"]
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

PROTO_41:
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

PROTO_42:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["table"]
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
       45 LOADK                            R10 K10 ["[interface] unexpected field '%s'"]
       46 FASTCALL1                        TOSTRING R6 ; [+3]
       47 MOVE                             R12 R6
       48 GETIMPORT                        R11 K9 [tostring]
       50 CALL                             R11 1 1
       51 CALL                             R9 2 -1
       52 RETURN                           R8 -1
       53 FORGLOOP                         R3 1 ; [-15]
       55 LOADB                            R3 1
       56 RETURN                           R3 1

PROTO_43:
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

PROTO_44:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Instance"]
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

PROTO_45:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["string"]
        3 MOVE                             R4 R0
        4 CALL                             R3 1 -1
        5 FASTCALL                         ASSERT ; [+2]
        6 GETIMPORT                        R2 K2 [assert]
        8 CALL                             R2 -1 0
        9 LOADNIL                          R2
       10 JUMPIFEQKNIL                     R1 ; [+7]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R3 R4 K3 ["children"]
       15 MOVE                             R4 R1
       16 CALL                             R3 1 1
       17 MOVE                             R2 R3
       18 NEWCLOSURE                       R3 P0
       19 CAPTURE                          UPVAL U0
       20 CAPTURE                          VAL R0
       21 CAPTURE                          REF R2
       22 CLOSEUPVALS                      R2
       23 RETURN                           R3 1

PROTO_46:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Instance"]
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

PROTO_47:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["string"]
        3 MOVE                             R4 R0
        4 CALL                             R3 1 -1
        5 FASTCALL                         ASSERT ; [+2]
        6 GETIMPORT                        R2 K2 [assert]
        8 CALL                             R2 -1 0
        9 LOADNIL                          R2
       10 JUMPIFEQKNIL                     R1 ; [+7]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R3 R4 K3 ["children"]
       15 MOVE                             R4 R1
       16 CALL                             R3 1 1
       17 MOVE                             R2 R3
       18 NEWCLOSURE                       R3 P0
       19 CAPTURE                          UPVAL U0
       20 CAPTURE                          VAL R0
       21 CAPTURE                          REF R2
       22 CLOSEUPVALS                      R2
       23 RETURN                           R3 1

PROTO_48:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["EnumItem"]
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

PROTO_49:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Enum"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 -1
        5 FASTCALL                         ASSERT ; [+2]
        6 GETIMPORT                        R1 K2 [assert]
        8 CALL                             R1 -1 0
        9 NEWCLOSURE                       R1 P0
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          VAL R0
       12 RETURN                           R1 1

PROTO_50:
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

PROTO_51:
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

PROTO_52:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R1 0
        2 GETVARARGS                       R2 -1
        3 CALL                             R1 -1 -1
        4 FASTCALL                         ASSERT ; [+2]
        5 GETIMPORT                        R0 K1 [assert]
        7 CALL                             R0 -1 0
        8 RETURN                           R0 0

PROTO_53:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

PROTO_54:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Instance"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 2
        5 JUMPIF                           R1 ; [+3]
        6 LOADB                            R3 0
        7 ORK                              R4 R2 K1 [""]
        8 RETURN                           R3 2
        9 NEWTABLE                         R3 0 0
       11 GETIMPORT                        R4 K3 [pairs]
       13 NAMECALL                         R5 R0 K4 ["GetChildren"]
       15 CALL                             R5 1 -1
       16 CALL                             R4 -1 3
       17 FORGPREP_NEXT                    R4
       18 GETTABLEKS                       R9 R8 K5 ["Name"]
       20 GETUPVAL                         R11 1
       21 GETTABLE                         R10 R11 R9
       22 JUMPIFNOT                        R10 ; [+10]
       23 GETTABLE                         R10 R3 R9
       24 JUMPIFNOT                        R10 ; [+7]
       25 LOADB                            R10 0
       26 GETIMPORT                        R11 K8 [string.format]
       28 LOADK                            R12 K9 ["Cannot process multiple children with the same name \"%s\""]
       29 MOVE                             R13 R9
       30 CALL                             R11 2 -1
       31 RETURN                           R10 -1
       32 SETTABLE                         R8 R3 R9
       33 FORGLOOP                         R4 2 ; [-16]
       35 GETIMPORT                        R4 K3 [pairs]
       37 GETUPVAL                         R5 1
       38 CALL                             R4 1 3
       39 FORGPREP_NEXT                    R4
       40 MOVE                             R9 R8
       41 GETTABLE                         R10 R3 R7
       42 CALL                             R9 1 2
       43 JUMPIF                           R9 ; [+11]
       44 LOADB                            R11 0
       45 GETIMPORT                        R12 K8 [string.format]
       47 LOADK                            R13 K10 ["[%s.%s] %s"]
       48 NAMECALL                         R14 R0 K11 ["GetFullName"]
       50 CALL                             R14 1 1
       51 MOVE                             R15 R7
       52 ORK                              R16 R10 K1 [""]
       53 CALL                             R12 4 -1
       54 RETURN                           R11 -1
       55 FORGLOOP                         R4 2 ; [-16]
       57 LOADB                            R4 1
       58 RETURN                           R4 1

PROTO_55:
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
        1 GETIMPORT                        R0 K1 [typeof]
        3 JUMPIF                           R0 ; [+2]
        4 GETIMPORT                        R0 K3 [type]
        6 DUPCLOSURE                       R1 K4 [PROTO_1]
        7 CAPTURE                          VAL R0
        8 NEWTABLE                         R2 128 0
       10 DUPCLOSURE                       R3 K5 [PROTO_2]
       11 SETTABLEKS                       R3 R2 K6 ["any"]
       13 LOADK                            R4 K7 ["boolean"]
       14 NEWCLOSURE                       R3 P2
       15 CAPTURE                          VAL R0
       16 CAPTURE                          VAL R4
       17 SETTABLEKS                       R3 R2 K7 ["boolean"]
       19 LOADK                            R4 K8 ["thread"]
       20 NEWCLOSURE                       R3 P2
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R4
       23 SETTABLEKS                       R3 R2 K8 ["thread"]
       25 LOADK                            R4 K9 ["function"]
       26 NEWCLOSURE                       R3 P2
       27 CAPTURE                          VAL R0
       28 CAPTURE                          VAL R4
       29 SETTABLEKS                       R3 R2 K10 ["callback"]
       31 LOADK                            R4 K11 ["nil"]
       32 NEWCLOSURE                       R3 P2
       33 CAPTURE                          VAL R0
       34 CAPTURE                          VAL R4
       35 SETTABLEKS                       R3 R2 K12 ["none"]
       37 LOADK                            R4 K13 ["string"]
       38 NEWCLOSURE                       R3 P2
       39 CAPTURE                          VAL R0
       40 CAPTURE                          VAL R4
       41 SETTABLEKS                       R3 R2 K13 ["string"]
       43 LOADK                            R4 K14 ["table"]
       44 NEWCLOSURE                       R3 P2
       45 CAPTURE                          VAL R0
       46 CAPTURE                          VAL R4
       47 SETTABLEKS                       R3 R2 K14 ["table"]
       49 LOADK                            R4 K15 ["userdata"]
       50 NEWCLOSURE                       R3 P2
       51 CAPTURE                          VAL R0
       52 CAPTURE                          VAL R4
       53 SETTABLEKS                       R3 R2 K15 ["userdata"]
       55 DUPCLOSURE                       R3 K16 [PROTO_3]
       56 CAPTURE                          VAL R0
       57 SETTABLEKS                       R3 R2 K17 ["number"]
       59 DUPCLOSURE                       R3 K18 [PROTO_4]
       60 SETTABLEKS                       R3 R2 K19 ["nan"]
       62 LOADK                            R4 K20 ["Axes"]
       63 NEWCLOSURE                       R3 P2
       64 CAPTURE                          VAL R0
       65 CAPTURE                          VAL R4
       66 SETTABLEKS                       R3 R2 K20 ["Axes"]
       68 LOADK                            R4 K21 ["BrickColor"]
       69 NEWCLOSURE                       R3 P2
       70 CAPTURE                          VAL R0
       71 CAPTURE                          VAL R4
       72 SETTABLEKS                       R3 R2 K21 ["BrickColor"]
       74 LOADK                            R4 K22 ["CFrame"]
       75 NEWCLOSURE                       R3 P2
       76 CAPTURE                          VAL R0
       77 CAPTURE                          VAL R4
       78 SETTABLEKS                       R3 R2 K22 ["CFrame"]
       80 LOADK                            R4 K23 ["Color3"]
       81 NEWCLOSURE                       R3 P2
       82 CAPTURE                          VAL R0
       83 CAPTURE                          VAL R4
       84 SETTABLEKS                       R3 R2 K23 ["Color3"]
       86 LOADK                            R4 K24 ["ColorSequence"]
       87 NEWCLOSURE                       R3 P2
       88 CAPTURE                          VAL R0
       89 CAPTURE                          VAL R4
       90 SETTABLEKS                       R3 R2 K24 ["ColorSequence"]
       92 LOADK                            R4 K25 ["ColorSequenceKeypoint"]
       93 NEWCLOSURE                       R3 P2
       94 CAPTURE                          VAL R0
       95 CAPTURE                          VAL R4
       96 SETTABLEKS                       R3 R2 K25 ["ColorSequenceKeypoint"]
       98 LOADK                            R4 K26 ["DockWidgetPluginGuiInfo"]
       99 NEWCLOSURE                       R3 P2
      100 CAPTURE                          VAL R0
      101 CAPTURE                          VAL R4
      102 SETTABLEKS                       R3 R2 K26 ["DockWidgetPluginGuiInfo"]
      104 LOADK                            R4 K27 ["Faces"]
      105 NEWCLOSURE                       R3 P2
      106 CAPTURE                          VAL R0
      107 CAPTURE                          VAL R4
      108 SETTABLEKS                       R3 R2 K27 ["Faces"]
      110 LOADK                            R4 K28 ["Instance"]
      111 NEWCLOSURE                       R3 P2
      112 CAPTURE                          VAL R0
      113 CAPTURE                          VAL R4
      114 SETTABLEKS                       R3 R2 K28 ["Instance"]
      116 LOADK                            R4 K29 ["NumberRange"]
      117 NEWCLOSURE                       R3 P2
      118 CAPTURE                          VAL R0
      119 CAPTURE                          VAL R4
      120 SETTABLEKS                       R3 R2 K29 ["NumberRange"]
      122 LOADK                            R4 K30 ["NumberSequence"]
      123 NEWCLOSURE                       R3 P2
      124 CAPTURE                          VAL R0
      125 CAPTURE                          VAL R4
      126 SETTABLEKS                       R3 R2 K30 ["NumberSequence"]
      128 LOADK                            R4 K31 ["NumberSequenceKeypoint"]
      129 NEWCLOSURE                       R3 P2
      130 CAPTURE                          VAL R0
      131 CAPTURE                          VAL R4
      132 SETTABLEKS                       R3 R2 K31 ["NumberSequenceKeypoint"]
      134 LOADK                            R4 K32 ["PathWaypoint"]
      135 NEWCLOSURE                       R3 P2
      136 CAPTURE                          VAL R0
      137 CAPTURE                          VAL R4
      138 SETTABLEKS                       R3 R2 K32 ["PathWaypoint"]
      140 LOADK                            R4 K33 ["PhysicalProperties"]
      141 NEWCLOSURE                       R3 P2
      142 CAPTURE                          VAL R0
      143 CAPTURE                          VAL R4
      144 SETTABLEKS                       R3 R2 K33 ["PhysicalProperties"]
      146 LOADK                            R4 K34 ["Random"]
      147 NEWCLOSURE                       R3 P2
      148 CAPTURE                          VAL R0
      149 CAPTURE                          VAL R4
      150 SETTABLEKS                       R3 R2 K34 ["Random"]
      152 LOADK                            R4 K35 ["Ray"]
      153 NEWCLOSURE                       R3 P2
      154 CAPTURE                          VAL R0
      155 CAPTURE                          VAL R4
      156 SETTABLEKS                       R3 R2 K35 ["Ray"]
      158 LOADK                            R4 K36 ["Rect"]
      159 NEWCLOSURE                       R3 P2
      160 CAPTURE                          VAL R0
      161 CAPTURE                          VAL R4
      162 SETTABLEKS                       R3 R2 K36 ["Rect"]
      164 LOADK                            R4 K37 ["Region3"]
      165 NEWCLOSURE                       R3 P2
      166 CAPTURE                          VAL R0
      167 CAPTURE                          VAL R4
      168 SETTABLEKS                       R3 R2 K37 ["Region3"]
      170 LOADK                            R4 K38 ["Region3int16"]
      171 NEWCLOSURE                       R3 P2
      172 CAPTURE                          VAL R0
      173 CAPTURE                          VAL R4
      174 SETTABLEKS                       R3 R2 K38 ["Region3int16"]
      176 LOADK                            R4 K39 ["TweenInfo"]
      177 NEWCLOSURE                       R3 P2
      178 CAPTURE                          VAL R0
      179 CAPTURE                          VAL R4
      180 SETTABLEKS                       R3 R2 K39 ["TweenInfo"]
      182 LOADK                            R4 K40 ["UDim"]
      183 NEWCLOSURE                       R3 P2
      184 CAPTURE                          VAL R0
      185 CAPTURE                          VAL R4
      186 SETTABLEKS                       R3 R2 K40 ["UDim"]
      188 LOADK                            R4 K41 ["UDim2"]
      189 NEWCLOSURE                       R3 P2
      190 CAPTURE                          VAL R0
      191 CAPTURE                          VAL R4
      192 SETTABLEKS                       R3 R2 K41 ["UDim2"]
      194 LOADK                            R4 K42 ["Vector2"]
      195 NEWCLOSURE                       R3 P2
      196 CAPTURE                          VAL R0
      197 CAPTURE                          VAL R4
      198 SETTABLEKS                       R3 R2 K42 ["Vector2"]
      200 LOADK                            R4 K43 ["Vector3"]
      201 NEWCLOSURE                       R3 P2
      202 CAPTURE                          VAL R0
      203 CAPTURE                          VAL R4
      204 SETTABLEKS                       R3 R2 K43 ["Vector3"]
      206 LOADK                            R4 K44 ["Vector3int16"]
      207 NEWCLOSURE                       R3 P2
      208 CAPTURE                          VAL R0
      209 CAPTURE                          VAL R4
      210 SETTABLEKS                       R3 R2 K44 ["Vector3int16"]
      212 LOADK                            R4 K45 ["Enum"]
      213 NEWCLOSURE                       R3 P2
      214 CAPTURE                          VAL R0
      215 CAPTURE                          VAL R4
      216 SETTABLEKS                       R3 R2 K45 ["Enum"]
      218 LOADK                            R4 K46 ["EnumItem"]
      219 NEWCLOSURE                       R3 P2
      220 CAPTURE                          VAL R0
      221 CAPTURE                          VAL R4
      222 SETTABLEKS                       R3 R2 K46 ["EnumItem"]
      224 LOADK                            R4 K47 ["RBXScriptSignal"]
      225 NEWCLOSURE                       R3 P2
      226 CAPTURE                          VAL R0
      227 CAPTURE                          VAL R4
      228 SETTABLEKS                       R3 R2 K47 ["RBXScriptSignal"]
      230 LOADK                            R4 K48 ["RBXScriptConnection"]
      231 NEWCLOSURE                       R3 P2
      232 CAPTURE                          VAL R0
      233 CAPTURE                          VAL R4
      234 SETTABLEKS                       R3 R2 K48 ["RBXScriptConnection"]
      236 DUPCLOSURE                       R3 K49 [PROTO_6]
      237 CAPTURE                          VAL R2
      238 SETTABLEKS                       R3 R2 K50 ["literal"]
      240 GETTABLEKS                       R3 R2 K50 ["literal"]
      242 SETTABLEKS                       R3 R2 K51 ["exactly"]
      244 DUPCLOSURE                       R3 K52 [PROTO_7]
      245 CAPTURE                          VAL R2
      246 SETTABLEKS                       R3 R2 K53 ["keyOf"]
      248 DUPCLOSURE                       R3 K54 [PROTO_8]
      249 CAPTURE                          VAL R2
      250 SETTABLEKS                       R3 R2 K55 ["valueOf"]
      252 DUPCLOSURE                       R3 K56 [PROTO_9]
      253 CAPTURE                          VAL R2
      254 SETTABLEKS                       R3 R2 K57 ["integer"]
      256 DUPCLOSURE                       R3 K58 [PROTO_11]
      257 CAPTURE                          VAL R2
      258 SETTABLEKS                       R3 R2 K59 ["numberMin"]
      260 DUPCLOSURE                       R3 K60 [PROTO_13]
      261 CAPTURE                          VAL R2
      262 SETTABLEKS                       R3 R2 K61 ["numberMax"]
      264 DUPCLOSURE                       R3 K62 [PROTO_15]
      265 CAPTURE                          VAL R2
      266 SETTABLEKS                       R3 R2 K63 ["numberMinExclusive"]
      268 DUPCLOSURE                       R3 K64 [PROTO_17]
      269 CAPTURE                          VAL R2
      270 SETTABLEKS                       R3 R2 K65 ["numberMaxExclusive"]
      272 GETTABLEKS                       R3 R2 K63 ["numberMinExclusive"]
      274 LOADN                            R4 0
      275 CALL                             R3 1 1
      276 SETTABLEKS                       R3 R2 K66 ["numberPositive"]
      278 GETTABLEKS                       R3 R2 K65 ["numberMaxExclusive"]
      280 LOADN                            R4 0
      281 CALL                             R3 1 1
      282 SETTABLEKS                       R3 R2 K67 ["numberNegative"]
      284 DUPCLOSURE                       R3 K68 [PROTO_19]
      285 CAPTURE                          VAL R2
      286 SETTABLEKS                       R3 R2 K69 ["numberConstrained"]
      288 DUPCLOSURE                       R3 K70 [PROTO_21]
      289 CAPTURE                          VAL R2
      290 SETTABLEKS                       R3 R2 K71 ["numberConstrainedExclusive"]
      292 DUPCLOSURE                       R3 K72 [PROTO_23]
      293 CAPTURE                          VAL R2
      294 SETTABLEKS                       R3 R2 K73 ["match"]
      296 DUPCLOSURE                       R3 K74 [PROTO_25]
      297 CAPTURE                          VAL R2
      298 SETTABLEKS                       R3 R2 K75 ["optional"]
      300 DUPCLOSURE                       R3 K76 [PROTO_27]
      301 SETTABLEKS                       R3 R2 K77 ["tuple"]
      303 DUPCLOSURE                       R3 K78 [PROTO_29]
      304 CAPTURE                          VAL R2
      305 SETTABLEKS                       R3 R2 K79 ["keys"]
      307 DUPCLOSURE                       R3 K80 [PROTO_31]
      308 CAPTURE                          VAL R2
      309 SETTABLEKS                       R3 R2 K81 ["values"]
      311 DUPCLOSURE                       R3 K82 [PROTO_33]
      312 CAPTURE                          VAL R2
      313 SETTABLEKS                       R3 R2 K83 ["map"]
      315 GETTABLEKS                       R3 R2 K79 ["keys"]
      317 GETTABLEKS                       R4 R2 K57 ["integer"]
      319 CALL                             R3 1 1
      320 DUPCLOSURE                       R4 K84 [PROTO_35]
      321 CAPTURE                          VAL R2
      322 CAPTURE                          VAL R3
      323 SETTABLEKS                       R4 R2 K85 ["array"]
      325 GETTABLEKS                       R3 R2 K85 ["array"]
      327 GETTABLEKS                       R4 R2 K10 ["callback"]
      329 CALL                             R3 1 1
      330 DUPCLOSURE                       R4 K86 [PROTO_37]
      331 CAPTURE                          VAL R3
      332 SETTABLEKS                       R4 R2 K87 ["union"]
      334 GETTABLEKS                       R4 R2 K87 ["union"]
      336 SETTABLEKS                       R4 R2 K88 ["some"]
      338 DUPCLOSURE                       R4 K89 [PROTO_39]
      339 CAPTURE                          VAL R3
      340 SETTABLEKS                       R4 R2 K90 ["intersection"]
      342 GETTABLEKS                       R4 R2 K90 ["intersection"]
      344 SETTABLEKS                       R4 R2 K91 ["every"]
      346 GETTABLEKS                       R3 R2 K83 ["map"]
      348 GETTABLEKS                       R4 R2 K6 ["any"]
      350 GETTABLEKS                       R5 R2 K10 ["callback"]
      352 CALL                             R3 2 1
      353 DUPCLOSURE                       R4 K92 [PROTO_41]
      354 CAPTURE                          VAL R3
      355 CAPTURE                          VAL R2
      356 SETTABLEKS                       R4 R2 K93 ["interface"]
      358 DUPCLOSURE                       R4 K94 [PROTO_43]
      359 CAPTURE                          VAL R3
      360 CAPTURE                          VAL R2
      361 SETTABLEKS                       R4 R2 K95 ["strictInterface"]
      363 DUPCLOSURE                       R3 K96 [PROTO_45]
      364 CAPTURE                          VAL R2
      365 SETTABLEKS                       R3 R2 K97 ["instanceOf"]
      367 GETTABLEKS                       R3 R2 K97 ["instanceOf"]
      369 SETTABLEKS                       R3 R2 K98 ["instance"]
      371 DUPCLOSURE                       R3 K99 [PROTO_47]
      372 CAPTURE                          VAL R2
      373 SETTABLEKS                       R3 R2 K100 ["instanceIsA"]
      375 DUPCLOSURE                       R3 K101 [PROTO_49]
      376 CAPTURE                          VAL R2
      377 SETTABLEKS                       R3 R2 K102 ["enum"]
      379 GETTABLEKS                       R3 R2 K77 ["tuple"]
      381 GETTABLEKS                       R4 R2 K10 ["callback"]
      383 GETTABLEKS                       R5 R2 K10 ["callback"]
      385 CALL                             R3 2 1
      386 DUPCLOSURE                       R4 K103 [PROTO_51]
      387 CAPTURE                          VAL R3
      388 SETTABLEKS                       R4 R2 K104 ["wrap"]
      390 DUPCLOSURE                       R3 K105 [PROTO_53]
      391 SETTABLEKS                       R3 R2 K106 ["strict"]
      393 GETTABLEKS                       R3 R2 K83 ["map"]
      395 GETTABLEKS                       R4 R2 K13 ["string"]
      397 GETTABLEKS                       R5 R2 K10 ["callback"]
      399 CALL                             R3 2 1
      400 DUPCLOSURE                       R4 K107 [PROTO_55]
      401 CAPTURE                          VAL R3
      402 CAPTURE                          VAL R2
      403 SETTABLEKS                       R4 R2 K108 ["children"]
      405 RETURN                           R2 1
