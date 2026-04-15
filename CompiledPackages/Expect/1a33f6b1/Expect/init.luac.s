PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["new"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        8 GETIMPORT                        R1 K2 [setmetatable]
       10 CALL                             R1 2 1
       11 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["toJSBoolean"]
        3 MOVE                             R4 R0
        4 CALL                             R3 1 1
        5 NOT                              R2 R3
        6 NOT                              R1 R2
        7 JUMPIFNOT                        R1 ; [+25]
        8 FASTCALL1                        TYPEOF R0 ; [+3]
        9 MOVE                             R3 R0
       10 GETIMPORT                        R2 K2 [typeof]
       12 CALL                             R2 1 1
       13 JUMPIFEQKS                       R2 K3 ["table"] ; [+9]
       15 LOADB                            R1 0
       16 FASTCALL1                        TYPEOF R0 ; [+3]
       17 MOVE                             R3 R0
       18 GETIMPORT                        R2 K2 [typeof]
       20 CALL                             R2 1 1
       21 JUMPIFNOTEQKS                    R2 K4 ["function"] ; [+11]
       23 GETTABLEKS                       R3 R0 K5 ["andThen"]
       25 FASTCALL1                        TYPEOF R3 ; [+2]
       26 GETIMPORT                        R2 K2 [typeof]
       28 CALL                             R2 1 1
       29 JUMPIFEQKS                       R2 K4 ["function"] ; [+2]
       31 LOADB                            R1 0 +1
       32 LOADB                            R1 1
       33 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 NEWTABLE                         R6 0 3
        4 MOVE                             R7 R1
        5 MOVE                             R8 R2
        6 LOADB                            R9 1
        7 SETLIST                          R6 R7 3 [1]
        9 FASTCALL1                        TABLE_UNPACK R6 ; [+2]
       10 GETIMPORT                        R5 K2 [table.unpack]
       12 CALL                             R5 1 -1
       13 CALL                             R3 -1 -1
       14 RETURN                           R3 -1

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

PROTO_4:
        0 JUMPIFEQKS                       R0 K0 ["toThrow"] ; [+3]
        2 JUMPIFNOTEQKS                    R0 K1 ["toThrowError"] ; [+6]
        4 GETUPVAL                         R2 0
        5 MOVE                             R3 R0
        6 LOADB                            R4 1
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1
        9 JUMPIFEQKS                       R0 K2 ["toThrowErrorMatchingSnapshot"] ; [+3]
       11 JUMPIFNOTEQKS                    R0 K3 ["toThrowErrorMatchingInlineSnapshot"] ; [+4]
       13 NEWCLOSURE                       R2 P0
       14 CAPTURE                          VAL R1
       15 RETURN                           R2 1
       16 LOADNIL                          R2
       17 RETURN                           R2 1

PROTO_5:
        0 PREPVARARGS                      2
        1 NEWTABLE                         R2 0 0
        3 GETVARARGS                       R3 -1
        4 SETLIST                          R2 R3 -1 [1]
        6 LENGTH                           R3 R2
        7 JUMPIFEQKN                       R3 K0 [0] ; [+5]
        9 GETIMPORT                        R3 K2 [error]
       11 LOADK                            R4 K3 ["Expect takes at most one argument."]
       12 CALL                             R3 1 0
       13 GETUPVAL                         R3 0
       14 CALL                             R3 0 1
       15 DUPTABLE                         R4 K7 [{"never", "rejects", "resolves"}]
       16 NEWTABLE                         R5 0 0
       18 SETTABLEKS                       R5 R4 K4 ["never"]
       20 DUPTABLE                         R5 K8 [{"never"}]
       21 NEWTABLE                         R6 0 0
       23 SETTABLEKS                       R6 R5 K4 ["never"]
       25 SETTABLEKS                       R5 R4 K5 ["rejects"]
       27 DUPTABLE                         R5 K8 [{"never"}]
       28 NEWTABLE                         R6 0 0
       30 SETTABLEKS                       R6 R5 K4 ["never"]
       32 SETTABLEKS                       R5 R4 K6 ["resolves"]
       34 GETUPVAL                         R6 1
       35 GETTABLEKS                       R5 R6 K9 ["new"]
       37 CALL                             R5 0 1
       38 GETIMPORT                        R6 K11 [pairs]
       40 MOVE                             R7 R3
       41 CALL                             R6 1 3
       42 FORGPREP_NEXT                    R6
       43 JUMPIFEQKS                       R9 K12 ["toThrow"] ; [+3]
       45 JUMPIFNOTEQKS                    R9 K13 ["toThrowError"] ; [+6]
       47 GETUPVAL                         R11 2
       48 MOVE                             R12 R9
       49 LOADB                            R13 1
       50 CALL                             R11 2 1
       51 JUMP                             ; [+8]
       52 JUMPIFEQKS                       R9 K14 ["toThrowErrorMatchingSnapshot"] ; [+3]
       54 JUMPIFNOTEQKS                    R9 K15 ["toThrowErrorMatchingInlineSnapshot"] ; [+4]
       56 NEWCLOSURE                       R11 P0
       57 CAPTURE                          VAL R10
       58 JUMP                             ; [+1]
       59 LOADNIL                          R11
       60 GETUPVAL                         R14 3
       61 GETTABLEKS                       R13 R14 K16 ["toJSBoolean"]
       63 MOVE                             R14 R11
       64 CALL                             R13 1 1
       65 JUMPIFNOT                        R13 ; [+2]
       66 MOVE                             R12 R11
       67 JUMPIF                           R12 ; [+1]
       68 MOVE                             R12 R10
       69 GETUPVAL                         R13 4
       70 MOVE                             R14 R10
       71 LOADB                            R15 0
       72 LOADK                            R16 K17 [""]
       73 MOVE                             R17 R1
       74 CALL                             R13 4 1
       75 SETTABLE                         R13 R4 R9
       76 GETTABLEKS                       R13 R4 K4 ["never"]
       78 GETUPVAL                         R14 4
       79 MOVE                             R15 R10
       80 LOADB                            R16 1
       81 LOADK                            R17 K17 [""]
       82 MOVE                             R18 R1
       83 CALL                             R14 4 1
       84 SETTABLE                         R14 R13 R9
       85 GETTABLEKS                       R13 R4 K6 ["resolves"]
       87 GETUPVAL                         R14 5
       88 MOVE                             R15 R9
       89 MOVE                             R16 R12
       90 LOADB                            R17 0
       91 MOVE                             R18 R1
       92 MOVE                             R19 R5
       93 CALL                             R14 5 1
       94 SETTABLE                         R14 R13 R9
       95 GETTABLEKS                       R14 R4 K6 ["resolves"]
       97 GETTABLEKS                       R13 R14 K4 ["never"]
       99 GETUPVAL                         R14 5
      100 MOVE                             R15 R9
      101 MOVE                             R16 R12
      102 LOADB                            R17 1
      103 MOVE                             R18 R1
      104 MOVE                             R19 R5
      105 CALL                             R14 5 1
      106 SETTABLE                         R14 R13 R9
      107 GETTABLEKS                       R13 R4 K5 ["rejects"]
      109 GETUPVAL                         R14 6
      110 MOVE                             R15 R9
      111 MOVE                             R16 R12
      112 LOADB                            R17 0
      113 MOVE                             R18 R1
      114 MOVE                             R19 R5
      115 CALL                             R14 5 1
      116 SETTABLE                         R14 R13 R9
      117 GETTABLEKS                       R14 R4 K5 ["rejects"]
      119 GETTABLEKS                       R13 R14 K4 ["never"]
      121 GETUPVAL                         R14 6
      122 MOVE                             R15 R9
      123 MOVE                             R16 R12
      124 LOADB                            R17 1
      125 MOVE                             R18 R1
      126 MOVE                             R19 R5
      127 CALL                             R14 5 1
      128 SETTABLE                         R14 R13 R9
      129 FORGLOOP                         R6 2 ; [-87]
      131 RETURN                           R4 1

PROTO_6:
        0 JUMPIFNOT                        R0 ; [+3]
        1 MOVE                             R1 R0
        2 CALL                             R1 0 1
        3 RETURN                           R1 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K0 ["RECEIVED_COLOR"]
        7 LOADK                            R2 K1 ["No message was specified for this matcher."]
        8 CALL                             R1 1 1
        9 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 LOADK                            R4 K0 ["resolves"]
        4 MOVE                             R5 R0
        5 GETUPVAL                         R6 3
        6 CALL                             R1 5 1
        7 GETUPVAL                         R3 4
        8 FASTCALL1                        TABLE_UNPACK R3 ; [+2]
        9 GETIMPORT                        R2 K3 [table.unpack]
       11 CALL                             R2 1 -1
       12 CALL                             R1 -1 -1
       13 RETURN                           R1 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R9 1
        2 GETTABLEKS                       R8 R9 K0 ["matcherHint"]
        4 GETUPVAL                         R9 2
        5 LOADNIL                          R10
        6 LOADK                            R11 K1 [""]
        7 GETUPVAL                         R12 3
        8 CALL                             R8 4 -1
        9 FASTCALL                         TOSTRING ; [+2]
       10 GETIMPORT                        R7 K3 [tostring]
       12 CALL                             R7 -1 1
       13 MOVE                             R3 R7
       14 LOADK                            R4 K4 ["\n\n"]
       15 LOADK                            R5 K5 ["Received promise rejected instead of resolved\n"]
       16 LOADK                            R6 K6 ["Rejected to value: %s"]
       17 GETUPVAL                         R9 1
       18 GETTABLEKS                       R8 R9 K7 ["printReceived"]
       20 MOVE                             R9 R0
       21 CALL                             R8 1 -1
       22 NAMECALL                         R6 R6 K8 ["format"]
       24 CALL                             R6 -1 1
       25 CONCAT                           R2 R3 R6
       26 SETTABLEKS                       R2 R1 K9 ["message"]
       28 GETUPVAL                         R2 4
       29 GETTABLEKS                       R1 R2 K10 ["reject"]
       31 GETUPVAL                         R2 0
       32 CALL                             R1 1 -1
       33 RETURN                           R1 -1

PROTO_9:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 0
        3 GETVARARGS                       R1 -1
        4 SETLIST                          R0 R1 -1 [1]
        6 DUPTABLE                         R1 K2 [{"isNot", "promise"}]
        7 GETUPVAL                         R2 0
        8 SETTABLEKS                       R2 R1 K0 ["isNot"]
       10 LOADK                            R2 K3 ["resolves"]
       11 SETTABLEKS                       R2 R1 K1 ["promise"]
       13 GETUPVAL                         R3 1
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R5 R6 K4 ["toJSBoolean"]
       17 MOVE                             R6 R3
       18 CALL                             R5 1 1
       19 NOT                              R4 R5
       20 NOT                              R2 R4
       21 JUMPIFNOT                        R2 ; [+25]
       22 FASTCALL1                        TYPEOF R3 ; [+3]
       23 MOVE                             R5 R3
       24 GETIMPORT                        R4 K6 [typeof]
       26 CALL                             R4 1 1
       27 JUMPIFEQKS                       R4 K7 ["table"] ; [+9]
       29 LOADB                            R2 0
       30 FASTCALL1                        TYPEOF R3 ; [+3]
       31 MOVE                             R5 R3
       32 GETIMPORT                        R4 K6 [typeof]
       34 CALL                             R4 1 1
       35 JUMPIFNOTEQKS                    R4 K8 ["function"] ; [+11]
       37 GETTABLEKS                       R5 R3 K9 ["andThen"]
       39 FASTCALL1                        TYPEOF R5 ; [+2]
       40 GETIMPORT                        R4 K6 [typeof]
       42 CALL                             R4 1 1
       43 JUMPIFEQKS                       R4 K8 ["function"] ; [+2]
       45 LOADB                            R2 0 +1
       46 LOADB                            R2 1
       47 JUMPIF                           R2 ; [+41]
       48 GETIMPORT                        R2 K11 [error]
       50 GETUPVAL                         R4 3
       51 GETTABLEKS                       R3 R4 K12 ["new"]
       53 GETUPVAL                         R5 4
       54 GETTABLEKS                       R4 R5 K13 ["matcherErrorMessage"]
       56 GETUPVAL                         R6 4
       57 GETTABLEKS                       R5 R6 K14 ["matcherHint"]
       59 GETUPVAL                         R6 5
       60 LOADNIL                          R7
       61 LOADK                            R8 K15 [""]
       62 MOVE                             R9 R1
       63 CALL                             R5 4 1
       64 LOADK                            R6 K16 ["%s value must be a promise"]
       65 GETUPVAL                         R10 4
       66 GETTABLEKS                       R9 R10 K17 ["RECEIVED_COLOR"]
       68 LOADK                            R10 K18 ["received"]
       69 CALL                             R9 1 -1
       70 FASTCALL                         TOSTRING ; [+2]
       71 GETIMPORT                        R8 K20 [tostring]
       73 CALL                             R8 -1 1
       74 NAMECALL                         R6 R6 K21 ["format"]
       76 CALL                             R6 2 1
       77 GETUPVAL                         R8 4
       78 GETTABLEKS                       R7 R8 K22 ["printWithType"]
       80 LOADK                            R8 K23 ["Received"]
       81 GETUPVAL                         R9 1
       82 GETUPVAL                         R11 4
       83 GETTABLEKS                       R10 R11 K24 ["printReceived"]
       85 CALL                             R7 3 -1
       86 CALL                             R4 -1 -1
       87 CALL                             R3 -1 -1
       88 CALL                             R2 -1 0
       89 GETUPVAL                         R3 3
       90 GETTABLEKS                       R2 R3 K12 ["new"]
       92 CALL                             R2 0 1
       93 GETUPVAL                         R3 1
       94 NEWCLOSURE                       R5 P0
       95 CAPTURE                          UPVAL U6
       96 CAPTURE                          UPVAL U7
       97 CAPTURE                          UPVAL U0
       98 CAPTURE                          VAL R2
       99 CAPTURE                          VAL R0
      100 NEWCLOSURE                       R6 P1
      101 CAPTURE                          UPVAL U8
      102 CAPTURE                          UPVAL U4
      103 CAPTURE                          UPVAL U5
      104 CAPTURE                          VAL R1
      105 CAPTURE                          UPVAL U9
      106 NAMECALL                         R3 R3 K9 ["andThen"]
      108 CALL                             R3 3 -1
      109 RETURN                           R3 -1

PROTO_10:
        0 NEWCLOSURE                       R5 P0
        1 CAPTURE                          VAL R2
        2 CAPTURE                          VAL R3
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          VAL R1
        9 CAPTURE                          VAL R4
       10 CAPTURE                          UPVAL U4
       11 RETURN                           R5 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R9 1
        2 GETTABLEKS                       R8 R9 K0 ["matcherHint"]
        4 GETUPVAL                         R9 2
        5 LOADNIL                          R10
        6 LOADK                            R11 K1 [""]
        7 GETUPVAL                         R12 3
        8 CALL                             R8 4 -1
        9 FASTCALL                         TOSTRING ; [+2]
       10 GETIMPORT                        R7 K3 [tostring]
       12 CALL                             R7 -1 1
       13 MOVE                             R3 R7
       14 LOADK                            R4 K4 ["\n\n"]
       15 LOADK                            R5 K5 ["Received promise resolved instead of rejected\n"]
       16 LOADK                            R6 K6 ["Resolved to value: %s"]
       17 GETUPVAL                         R9 1
       18 GETTABLEKS                       R8 R9 K7 ["printReceived"]
       20 MOVE                             R9 R0
       21 CALL                             R8 1 -1
       22 NAMECALL                         R6 R6 K8 ["format"]
       24 CALL                             R6 -1 1
       25 CONCAT                           R2 R3 R6
       26 SETTABLEKS                       R2 R1 K9 ["message"]
       28 GETUPVAL                         R2 4
       29 GETTABLEKS                       R1 R2 K10 ["reject"]
       31 GETUPVAL                         R2 0
       32 CALL                             R1 1 -1
       33 RETURN                           R1 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 LOADK                            R4 K0 ["rejects"]
        4 MOVE                             R5 R0
        5 GETUPVAL                         R6 3
        6 CALL                             R1 5 1
        7 GETUPVAL                         R3 4
        8 FASTCALL1                        TABLE_UNPACK R3 ; [+2]
        9 GETIMPORT                        R2 K3 [table.unpack]
       11 CALL                             R2 1 -1
       12 CALL                             R1 -1 -1
       13 RETURN                           R1 -1

PROTO_13:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 0
        3 GETVARARGS                       R1 -1
        4 SETLIST                          R0 R1 -1 [1]
        6 DUPTABLE                         R1 K2 [{"isNot", "promise"}]
        7 GETUPVAL                         R2 0
        8 SETTABLEKS                       R2 R1 K0 ["isNot"]
       10 LOADK                            R2 K3 ["rejects"]
       11 SETTABLEKS                       R2 R1 K1 ["promise"]
       13 GETUPVAL                         R4 1
       14 FASTCALL1                        TYPEOF R4 ; [+2]
       15 GETIMPORT                        R3 K5 [typeof]
       17 CALL                             R3 1 1
       18 JUMPIFNOTEQKS                    R3 K6 ["function"] ; [+4]
       20 GETUPVAL                         R2 1
       21 CALL                             R2 0 1
       22 JUMP                             ; [+1]
       23 GETUPVAL                         R2 1
       24 GETUPVAL                         R6 2
       25 GETTABLEKS                       R5 R6 K7 ["toJSBoolean"]
       27 MOVE                             R6 R2
       28 CALL                             R5 1 1
       29 NOT                              R4 R5
       30 NOT                              R3 R4
       31 JUMPIFNOT                        R3 ; [+25]
       32 FASTCALL1                        TYPEOF R2 ; [+3]
       33 MOVE                             R5 R2
       34 GETIMPORT                        R4 K5 [typeof]
       36 CALL                             R4 1 1
       37 JUMPIFEQKS                       R4 K8 ["table"] ; [+9]
       39 LOADB                            R3 0
       40 FASTCALL1                        TYPEOF R2 ; [+3]
       41 MOVE                             R5 R2
       42 GETIMPORT                        R4 K5 [typeof]
       44 CALL                             R4 1 1
       45 JUMPIFNOTEQKS                    R4 K6 ["function"] ; [+11]
       47 GETTABLEKS                       R5 R2 K9 ["andThen"]
       49 FASTCALL1                        TYPEOF R5 ; [+2]
       50 GETIMPORT                        R4 K5 [typeof]
       52 CALL                             R4 1 1
       53 JUMPIFEQKS                       R4 K6 ["function"] ; [+2]
       55 LOADB                            R3 0 +1
       56 LOADB                            R3 1
       57 JUMPIF                           R3 ; [+41]
       58 GETIMPORT                        R3 K11 [error]
       60 GETUPVAL                         R5 3
       61 GETTABLEKS                       R4 R5 K12 ["new"]
       63 GETUPVAL                         R6 4
       64 GETTABLEKS                       R5 R6 K13 ["matcherErrorMessage"]
       66 GETUPVAL                         R7 4
       67 GETTABLEKS                       R6 R7 K14 ["matcherHint"]
       69 GETUPVAL                         R7 5
       70 LOADNIL                          R8
       71 LOADK                            R9 K15 [""]
       72 MOVE                             R10 R1
       73 CALL                             R6 4 1
       74 LOADK                            R7 K16 ["%s value must be a promise or a function returning a promise"]
       75 GETUPVAL                         R11 4
       76 GETTABLEKS                       R10 R11 K17 ["RECEIVED_COLOR"]
       78 LOADK                            R11 K18 ["received"]
       79 CALL                             R10 1 -1
       80 FASTCALL                         TOSTRING ; [+2]
       81 GETIMPORT                        R9 K20 [tostring]
       83 CALL                             R9 -1 1
       84 NAMECALL                         R7 R7 K21 ["format"]
       86 CALL                             R7 2 1
       87 GETUPVAL                         R9 4
       88 GETTABLEKS                       R8 R9 K22 ["printWithType"]
       90 LOADK                            R9 K23 ["Received"]
       91 GETUPVAL                         R10 1
       92 GETUPVAL                         R12 4
       93 GETTABLEKS                       R11 R12 K24 ["printReceived"]
       95 CALL                             R8 3 -1
       96 CALL                             R5 -1 -1
       97 CALL                             R4 -1 -1
       98 CALL                             R3 -1 0
       99 GETUPVAL                         R4 3
      100 GETTABLEKS                       R3 R4 K12 ["new"]
      102 CALL                             R3 0 1
      103 NEWCLOSURE                       R6 P0
      104 CAPTURE                          UPVAL U6
      105 CAPTURE                          UPVAL U4
      106 CAPTURE                          UPVAL U5
      107 CAPTURE                          VAL R1
      108 CAPTURE                          UPVAL U7
      109 NEWCLOSURE                       R7 P1
      110 CAPTURE                          UPVAL U8
      111 CAPTURE                          UPVAL U9
      112 CAPTURE                          UPVAL U0
      113 CAPTURE                          VAL R3
      114 CAPTURE                          VAL R0
      115 NAMECALL                         R4 R2 K9 ["andThen"]
      117 CALL                             R4 3 -1
      118 RETURN                           R4 -1

PROTO_14:
        0 NEWCLOSURE                       R5 P0
        1 CAPTURE                          VAL R2
        2 CAPTURE                          VAL R3
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R4
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          VAL R1
       11 RETURN                           R5 1

PROTO_15:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 0
        3 GETUPVAL                         R2 1
        4 CALL                             R2 0 1
        5 GETUPVAL                         R5 1
        6 CALL                             R5 0 1
        7 GETTABLEKS                       R4 R5 K1 ["assertionCalls"]
        9 ADDK                             R3 R4 K0 [1]
       10 SETTABLEKS                       R3 R2 K1 ["assertionCalls"]
       12 GETTABLEKS                       R2 R0 K2 ["pass"]
       14 JUMPIFNOT                        R2 ; [+2]
       15 GETUPVAL                         R2 2
       16 JUMPIF                           R2 ; [+5]
       17 GETTABLEKS                       R2 R0 K2 ["pass"]
       19 JUMPIF                           R2 ; [+63]
       20 GETUPVAL                         R2 2
       21 JUMPIF                           R2 ; [+61]
       22 GETTABLEKS                       R3 R0 K3 ["message"]
       24 JUMPIFNOT                        R3 ; [+4]
       25 MOVE                             R4 R3
       26 CALL                             R4 0 1
       27 MOVE                             R2 R4
       28 JUMP                             ; [+6]
       29 GETUPVAL                         R5 3
       30 GETTABLEKS                       R4 R5 K4 ["RECEIVED_COLOR"]
       32 LOADK                            R5 K5 ["No message was specified for this matcher."]
       33 CALL                             R4 1 1
       34 MOVE                             R2 R4
       35 LOADNIL                          R3
       36 GETUPVAL                         R4 4
       37 JUMPIFNOT                        R4 ; [+4]
       38 GETUPVAL                         R3 4
       39 SETTABLEKS                       R2 R3 K3 ["message"]
       41 JUMP                             ; [+12]
       42 JUMPIFNOT                        R1 ; [+5]
       43 GETIMPORT                        R4 K7 [error]
       45 LOADK                            R5 K8 ["Currently async is not implemented"]
       46 CALL                             R4 1 0
       47 JUMP                             ; [+6]
       48 GETUPVAL                         R5 5
       49 GETTABLEKS                       R4 R5 K9 ["new"]
       51 MOVE                             R5 R2
       52 CALL                             R4 1 1
       53 MOVE                             R3 R4
       54 GETUPVAL                         R5 6
       55 GETTABLEKS                       R4 R5 K10 ["assign"]
       57 NEWTABLE                         R5 0 0
       59 MOVE                             R6 R0
       60 DUPTABLE                         R7 K11 [{"message"}]
       61 SETTABLEKS                       R2 R7 K3 ["message"]
       63 CALL                             R4 3 1
       64 SETTABLEKS                       R4 R3 K12 ["matcherResult"]
       66 GETUPVAL                         R4 7
       67 JUMPIFNOT                        R4 ; [+5]
       68 GETIMPORT                        R4 K7 [error]
       70 MOVE                             R5 R3
       71 CALL                             R4 1 0
       72 RETURN                           R0 0
       73 GETUPVAL                         R6 1
       74 CALL                             R6 0 1
       75 GETTABLEKS                       R5 R6 K13 ["suppressedErrors"]
       77 FASTCALL2                        TABLE_INSERT R5 R3 ; [+4]
       79 MOVE                             R6 R3
       80 GETIMPORT                        R4 K16 [table.insert]
       82 CALL                             R4 2 0
       83 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["captureStackTrace"]
        3 JUMPIFNOT                        R1 ; [+13]
        4 FASTCALL1                        TYPEOF R0 ; [+3]
        5 MOVE                             R2 R0
        6 GETIMPORT                        R1 K2 [typeof]
        8 CALL                             R1 1 1
        9 JUMPIFNOTEQKS                    R1 K3 ["table"] ; [+7]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R1 R2 K0 ["captureStackTrace"]
       14 MOVE                             R2 R0
       15 GETUPVAL                         R3 1
       16 CALL                             R1 2 0
       17 GETIMPORT                        R1 K5 [error]
       19 MOVE                             R2 R0
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_18:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETUPVAL                         R2 2
        4 GETVARARGS                       R3 -1
        5 CALL                             R0 -1 1
        6 GETUPVAL                         R1 3
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_19:
        0 PREPVARARGS                      0
        1 LOADB                            R0 1
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K0 ["assign"]
        5 DUPTABLE                         R2 K3 [{"iterableEquality", "subsetEquality"}]
        6 GETUPVAL                         R3 1
        7 SETTABLEKS                       R3 R2 K1 ["iterableEquality"]
        9 GETUPVAL                         R3 2
       10 SETTABLEKS                       R3 R2 K2 ["subsetEquality"]
       12 GETUPVAL                         R3 3
       13 CALL                             R1 2 1
       14 DUPTABLE                         R2 K10 [{"dontThrow", "equals", "error", "isNot", "promise", "utils"}]
       15 NEWCLOSURE                       R3 P0
       16 CAPTURE                          REF R0
       17 SETTABLEKS                       R3 R2 K4 ["dontThrow"]
       19 GETUPVAL                         R3 4
       20 SETTABLEKS                       R3 R2 K5 ["equals"]
       22 GETUPVAL                         R3 5
       23 SETTABLEKS                       R3 R2 K6 ["error"]
       25 GETUPVAL                         R3 6
       26 SETTABLEKS                       R3 R2 K7 ["isNot"]
       28 GETUPVAL                         R3 7
       29 SETTABLEKS                       R3 R2 K8 ["promise"]
       31 SETTABLEKS                       R1 R2 K9 ["utils"]
       33 GETUPVAL                         R4 0
       34 GETTABLEKS                       R3 R4 K0 ["assign"]
       36 MOVE                             R4 R2
       37 GETUPVAL                         R5 8
       38 CALL                             R5 0 -1
       39 CALL                             R3 -1 0
       40 NEWCLOSURE                       R3 P1
       41 CAPTURE                          UPVAL U9
       42 CAPTURE                          UPVAL U8
       43 CAPTURE                          UPVAL U6
       44 CAPTURE                          UPVAL U3
       45 CAPTURE                          UPVAL U5
       46 CAPTURE                          UPVAL U10
       47 CAPTURE                          UPVAL U0
       48 CAPTURE                          REF R0
       49 NEWCLOSURE                       R4 P2
       50 CAPTURE                          UPVAL U11
       51 CAPTURE                          UPVAL U12
       52 GETIMPORT                        R5 K12 [pcall]
       54 NEWCLOSURE                       R6 P3
       55 CAPTURE                          UPVAL U13
       56 CAPTURE                          VAL R2
       57 CAPTURE                          UPVAL U14
       58 CAPTURE                          VAL R3
       59 GETVARARGS                       R7 -1
       60 CALL                             R5 -1 2
       61 JUMPIF                           R5 ; [+21]
       62 GETUPVAL                         R8 11
       63 GETTABLEKS                       R7 R8 K13 ["captureStackTrace"]
       65 JUMPIFNOT                        R7 ; [+13]
       66 FASTCALL1                        TYPEOF R6 ; [+3]
       67 MOVE                             R8 R6
       68 GETIMPORT                        R7 K15 [typeof]
       70 CALL                             R7 1 1
       71 JUMPIFNOTEQKS                    R7 K16 ["table"] ; [+7]
       73 GETUPVAL                         R8 11
       74 GETTABLEKS                       R7 R8 K13 ["captureStackTrace"]
       76 MOVE                             R8 R6
       77 GETUPVAL                         R9 12
       78 CALL                             R7 2 0
       79 GETIMPORT                        R7 K17 [error]
       81 MOVE                             R8 R6
       82 CALL                             R7 1 0
       83 CLOSEUPVALS                      R0
       84 RETURN                           R0 0

PROTO_20:
        0 NEWCLOSURE                       R5 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          VAL R4
        7 CAPTURE                          VAL R1
        8 CAPTURE                          VAL R2
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          UPVAL U6
       11 CAPTURE                          UPVAL U7
       12 CAPTURE                          UPVAL U8
       13 CAPTURE                          VAL R5
       14 CAPTURE                          VAL R0
       15 CAPTURE                          VAL R3
       16 RETURN                           R5 1

PROTO_21:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["table"] ; [+28]
        7 GETTABLEKS                       R2 R0 K3 ["pass"]
        9 FASTCALL1                        TYPEOF R2 ; [+2]
       10 GETIMPORT                        R1 K1 [typeof]
       12 CALL                             R1 1 1
       13 JUMPIFNOTEQKS                    R1 K4 ["boolean"] ; [+20]
       15 GETTABLEKS                       R1 R0 K5 ["message"]
       17 JUMPIFNOT                        R1 ; [+31]
       18 GETTABLEKS                       R2 R0 K5 ["message"]
       20 FASTCALL1                        TYPEOF R2 ; [+2]
       21 GETIMPORT                        R1 K1 [typeof]
       23 CALL                             R1 1 1
       24 JUMPIFEQKS                       R1 K6 ["string"] ; [+24]
       26 GETTABLEKS                       R2 R0 K5 ["message"]
       28 FASTCALL1                        TYPEOF R2 ; [+2]
       29 GETIMPORT                        R1 K1 [typeof]
       31 CALL                             R1 1 1
       32 JUMPIFEQKS                       R1 K7 ["function"] ; [+16]
       34 GETIMPORT                        R1 K9 [error]
       36 LOADK                            R3 K10 ["Unexpected return from a matcher function.\n"]
       37 LOADK                            R4 K11 ["Matcher functions should "]
       38 LOADK                            R5 K12 ["return an object in the following format:\n"]
       39 LOADK                            R6 K13 ["  {message?: string | function, pass: boolean}\n"]
       40 GETUPVAL                         R10 0
       41 GETTABLEKS                       R9 R10 K14 ["stringify"]
       43 MOVE                             R10 R0
       44 CALL                             R9 1 1
       45 MOVE                             R7 R9
       46 LOADK                            R8 K15 [" was returned"]
       47 CONCAT                           R2 R3 R8
       48 CALL                             R1 1 0
       49 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 LOADB                            R3 0
        3 GETUPVAL                         R4 1
        4 CALL                             R1 3 0
        5 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K1 ["captureStackTrace"]
        7 JUMPIFNOT                        R2 ; [+6]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K1 ["captureStackTrace"]
       11 MOVE                             R3 R1
       12 GETUPVAL                         R4 1
       13 CALL                             R2 2 0
       14 GETUPVAL                         R2 2
       15 DUPTABLE                         R3 K4 [{"expectedAssertionsNumber", "expectedAssertionsNumberError"}]
       16 SETTABLEKS                       R0 R3 K2 ["expectedAssertionsNumber"]
       18 SETTABLEKS                       R1 R3 K3 ["expectedAssertionsNumberError"]
       20 CALL                             R2 1 0
       21 RETURN                           R0 0

PROTO_24:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 0
        3 GETVARARGS                       R1 -1
        4 SETLIST                          R0 R1 -1 [1]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K0 ["new"]
        9 CALL                             R1 0 1
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R2 R3 K1 ["captureStackTrace"]
       13 JUMPIFNOT                        R2 ; [+6]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R2 R3 K1 ["captureStackTrace"]
       17 MOVE                             R3 R1
       18 GETUPVAL                         R4 1
       19 CALL                             R2 2 0
       20 GETUPVAL                         R3 2
       21 GETTABLEKS                       R2 R3 K2 ["ensureNoExpected"]
       23 GETTABLEN                        R3 R0 1
       24 LOADK                            R4 K3 [".hasAssertions"]
       25 CALL                             R2 2 0
       26 GETUPVAL                         R2 3
       27 DUPTABLE                         R3 K6 [{"isExpectingAssertions", "isExpectingAssertionsError"}]
       28 LOADB                            R4 1
       29 SETTABLEKS                       R4 R3 K4 ["isExpectingAssertions"]
       31 SETTABLEKS                       R1 R3 K5 ["isExpectingAssertionsError"]
       33 CALL                             R2 1 0
       34 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R1 R0 K2 ["Parent"]
        5 GETIMPORT                        R2 K4 [require]
        7 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
        9 CALL                             R2 1 1
       10 GETTABLEKS                       R3 R2 K6 ["Boolean"]
       12 GETTABLEKS                       R4 R2 K7 ["Error"]
       14 GETTABLEKS                       R5 R2 K8 ["Object"]
       16 GETIMPORT                        R6 K4 [require]
       18 GETTABLEKS                       R7 R1 K9 ["Promise"]
       20 CALL                             R6 1 1
       21 GETIMPORT                        R7 K4 [require]
       23 GETTABLEKS                       R8 R1 K10 ["JestMatcherUtils"]
       25 CALL                             R7 1 1
       26 GETIMPORT                        R8 K4 [require]
       28 GETTABLEKS                       R9 R0 K11 ["asymmetricMatchers"]
       30 CALL                             R8 1 1
       31 GETTABLEKS                       R9 R8 K12 ["any"]
       33 GETTABLEKS                       R10 R8 K13 ["anything"]
       35 GETTABLEKS                       R11 R8 K14 ["arrayContaining"]
       37 GETTABLEKS                       R12 R8 K15 ["arrayNotContaining"]
       39 GETTABLEKS                       R13 R8 K16 ["callable"]
       41 GETTABLEKS                       R14 R8 K17 ["notCallable"]
       43 GETTABLEKS                       R15 R8 K18 ["closeTo"]
       45 GETTABLEKS                       R16 R8 K19 ["notCloseTo"]
       47 GETTABLEKS                       R17 R8 K20 ["nothing"]
       49 GETTABLEKS                       R18 R8 K21 ["objectContaining"]
       51 GETTABLEKS                       R19 R8 K22 ["objectNotContaining"]
       53 GETTABLEKS                       R20 R8 K23 ["stringContaining"]
       55 GETTABLEKS                       R21 R8 K24 ["stringMatching"]
       57 GETTABLEKS                       R22 R8 K25 ["stringNotContaining"]
       59 GETTABLEKS                       R23 R8 K26 ["stringNotMatching"]
       61 GETIMPORT                        R25 K4 [require]
       63 GETTABLEKS                       R26 R0 K27 ["extractExpectedAssertionsErrors"]
       65 CALL                             R25 1 1
       66 GETTABLEKS                       R24 R25 K28 ["default"]
       68 GETIMPORT                        R25 K4 [require]
       70 GETTABLEKS                       R26 R0 K29 ["jasmineUtils"]
       72 CALL                             R25 1 1
       73 GETTABLEKS                       R26 R25 K30 ["equals"]
       75 GETIMPORT                        R27 K4 [require]
       77 GETTABLEKS                       R28 R0 K31 ["jestMatchersObject"]
       79 CALL                             R27 1 1
       80 GETTABLEKS                       R28 R27 K32 ["getMatchers"]
       82 GETTABLEKS                       R29 R27 K33 ["getState"]
       84 GETTABLEKS                       R30 R27 K34 ["setMatchers"]
       86 GETTABLEKS                       R31 R27 K35 ["setState"]
       88 GETIMPORT                        R32 K4 [require]
       90 GETTABLEKS                       R33 R0 K36 ["matchers"]
       92 CALL                             R32 1 1
       93 GETIMPORT                        R33 K4 [require]
       95 GETTABLEKS                       R34 R0 K37 ["spyMatchers"]
       97 CALL                             R33 1 1
       98 GETIMPORT                        R34 K4 [require]
      100 GETTABLEKS                       R35 R0 K38 ["toThrowMatchers"]
      102 CALL                             R34 1 1
      103 GETTABLEKS                       R35 R34 K36 ["matchers"]
      105 GETTABLEKS                       R36 R34 K39 ["createMatcher"]
      107 GETIMPORT                        R37 K4 [require]
      109 GETTABLEKS                       R38 R0 K40 ["types"]
      111 CALL                             R37 1 1
      112 GETIMPORT                        R38 K4 [require]
      114 GETTABLEKS                       R39 R0 K41 ["utils"]
      116 CALL                             R38 1 1
      117 GETTABLEKS                       R39 R38 K42 ["iterableEquality"]
      119 GETTABLEKS                       R40 R38 K43 ["subsetEquality"]
      121 LOADNIL                          R41
      122 LOADNIL                          R42
      123 NEWTABLE                         R44 0 0
      125 DUPTABLE                         R45 K45 [{"__index"}]
      126 SETTABLEKS                       R4 R45 K44 ["__index"]
      128 FASTCALL2                        SETMETATABLE R44 R45 ; [+3]
      130 GETIMPORT                        R43 K47 [setmetatable]
      132 CALL                             R43 2 1
      133 SETTABLEKS                       R43 R43 K44 ["__index"]
      135 DUPCLOSURE                       R44 K48 [PROTO_0]
      136 CAPTURE                          VAL R4
      137 CAPTURE                          VAL R43
      138 SETTABLEKS                       R44 R43 K49 ["new"]
      140 DUPCLOSURE                       R44 K50 [PROTO_1]
      141 CAPTURE                          VAL R3
      142 DUPCLOSURE                       R45 K51 [PROTO_3]
      143 DUPCLOSURE                       R46 K52 [PROTO_4]
      144 CAPTURE                          VAL R36
      145 LOADNIL                          R47
      146 LOADNIL                          R48
      147 NEWCLOSURE                       R49 P4
      148 CAPTURE                          VAL R28
      149 CAPTURE                          VAL R43
      150 CAPTURE                          VAL R36
      151 CAPTURE                          VAL R3
      152 CAPTURE                          REF R41
      153 CAPTURE                          REF R47
      154 CAPTURE                          REF R48
      155 DUPCLOSURE                       R50 K53 [PROTO_6]
      156 CAPTURE                          VAL R7
      157 NEWCLOSURE                       R47 P6
      158 CAPTURE                          VAL R3
      159 CAPTURE                          VAL R43
      160 CAPTURE                          VAL R7
      161 CAPTURE                          REF R41
      162 CAPTURE                          VAL R6
      163 NEWCLOSURE                       R48 P7
      164 CAPTURE                          VAL R3
      165 CAPTURE                          VAL R43
      166 CAPTURE                          VAL R7
      167 CAPTURE                          VAL R6
      168 CAPTURE                          REF R41
      169 NEWCLOSURE                       R41 P8
      170 CAPTURE                          VAL R5
      171 CAPTURE                          VAL R39
      172 CAPTURE                          VAL R40
      173 CAPTURE                          VAL R7
      174 CAPTURE                          VAL R26
      175 CAPTURE                          VAL R29
      176 CAPTURE                          REF R42
      177 CAPTURE                          VAL R43
      178 CAPTURE                          VAL R4
      179 DUPCLOSURE                       R42 K54 [PROTO_21]
      180 CAPTURE                          VAL R7
      181 NEWTABLE                         R51 0 0
      183 DUPCLOSURE                       R52 K55 [PROTO_22]
      184 CAPTURE                          VAL R30
      185 CAPTURE                          VAL R51
      186 SETTABLEKS                       R52 R51 K56 ["extend"]
      188 SETTABLEKS                       R10 R51 K13 ["anything"]
      190 SETTABLEKS                       R9 R51 K12 ["any"]
      192 SETTABLEKS                       R17 R51 K20 ["nothing"]
      194 DUPTABLE                         R52 K57 [{"arrayContaining", "closeTo", "objectContaining", "stringContaining", "stringMatching", "callable"}]
      195 SETTABLEKS                       R12 R52 K14 ["arrayContaining"]
      197 SETTABLEKS                       R16 R52 K18 ["closeTo"]
      199 SETTABLEKS                       R19 R52 K21 ["objectContaining"]
      201 SETTABLEKS                       R22 R52 K23 ["stringContaining"]
      203 SETTABLEKS                       R23 R52 K24 ["stringMatching"]
      205 SETTABLEKS                       R14 R52 K16 ["callable"]
      207 SETTABLEKS                       R52 R51 K58 ["never"]
      209 SETTABLEKS                       R18 R51 K21 ["objectContaining"]
      211 SETTABLEKS                       R11 R51 K14 ["arrayContaining"]
      213 SETTABLEKS                       R15 R51 K18 ["closeTo"]
      215 SETTABLEKS                       R20 R51 K23 ["stringContaining"]
      217 SETTABLEKS                       R21 R51 K24 ["stringMatching"]
      219 SETTABLEKS                       R13 R51 K16 ["callable"]
      221 DUPCLOSURE                       R52 K59 [PROTO_23]
      222 CAPTURE                          VAL R4
      223 CAPTURE                          VAL R52
      224 CAPTURE                          VAL R31
      225 DUPCLOSURE                       R53 K60 [PROTO_24]
      226 CAPTURE                          VAL R4
      227 CAPTURE                          VAL R53
      228 CAPTURE                          VAL R7
      229 CAPTURE                          VAL R31
      230 MOVE                             R54 R30
      231 MOVE                             R55 R32
      232 LOADB                            R56 1
      233 MOVE                             R57 R51
      234 CALL                             R54 3 0
      235 MOVE                             R54 R30
      236 MOVE                             R55 R33
      237 LOADB                            R56 1
      238 MOVE                             R57 R51
      239 CALL                             R54 3 0
      240 MOVE                             R54 R30
      241 MOVE                             R55 R35
      242 LOADB                            R56 1
      243 MOVE                             R57 R51
      244 CALL                             R54 3 0
      245 GETIMPORT                        R55 K4 [require]
      247 GETTABLEKS                       R56 R1 K61 ["JestSnapshot"]
      249 CALL                             R55 1 1
      250 GETTABLEKS                       R54 R55 K62 ["plugins"]
      252 GETTABLEKS                       R55 R54 K63 ["addSerializer"]
      254 SETTABLEKS                       R55 R51 K64 ["addSnapshotSerializer"]
      256 SETTABLEKS                       R52 R51 K65 ["assertions"]
      258 SETTABLEKS                       R53 R51 K66 ["hasAssertions"]
      260 SETTABLEKS                       R29 R51 K33 ["getState"]
      262 SETTABLEKS                       R31 R51 K35 ["setState"]
      264 SETTABLEKS                       R24 R51 K27 ["extractExpectedAssertionsErrors"]
      266 GETIMPORT                        R55 K4 [require]
      268 GETTABLEKS                       R56 R1 K61 ["JestSnapshot"]
      270 CALL                             R55 1 1
      271 GETTABLEKS                       R56 R55 K67 ["toMatchSnapshot"]
      273 GETTABLEKS                       R57 R55 K68 ["toThrowErrorMatchingSnapshot"]
      275 MOVE                             R58 R30
      276 DUPTABLE                         R59 K69 [{"toMatchSnapshot", "toThrowErrorMatchingSnapshot"}]
      277 SETTABLEKS                       R56 R59 K67 ["toMatchSnapshot"]
      279 SETTABLEKS                       R57 R59 K68 ["toThrowErrorMatchingSnapshot"]
      281 LOADB                            R60 0
      282 MOVE                             R61 R51
      283 CALL                             R58 3 0
      284 DUPTABLE                         R60 K71 [{"__call"}]
      285 SETTABLEKS                       R49 R60 K70 ["__call"]
      287 FASTCALL2                        SETMETATABLE R51 R60 ; [+4]
      289 MOVE                             R59 R51
      290 GETIMPORT                        R58 K47 [setmetatable]
      292 CALL                             R58 2 0
      293 CLOSEUPVALS                      R41
      294 RETURN                           R51 1
