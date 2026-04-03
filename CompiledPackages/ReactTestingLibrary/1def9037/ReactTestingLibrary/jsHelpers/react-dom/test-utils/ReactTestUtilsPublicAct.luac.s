PROTO_0:
        0 LOADB                            R0 0
        1 GETUPVAL                         R1 0
        2 CALL                             R1 0 1
        3 JUMPIFNOT                        R1 ; [+2]
        4 LOADB                            R0 1
        5 JUMPBACK                         ; [-5]
        6 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADN                            R2 0
        2 MOVE                             R3 R0
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_2:
        0 LOADB                            R1 0
        1 GETUPVAL                         R2 0
        2 CALL                             R2 0 1
        3 JUMPIFNOT                        R2 ; [+2]
        4 LOADB                            R1 1
        5 JUMPBACK                         ; [-5]
        6 MOVE                             R0 R1
        7 JUMPIFNOT                        R0 ; [+4]
        8 GETUPVAL                         R0 1
        9 GETUPVAL                         R1 2
       10 CALL                             R0 1 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R0 2
       13 CALL                             R0 0 0
       14 RETURN                           R0 0

PROTO_3:
        0 LOADB                            R0 0
        1 GETUPVAL                         R1 0
        2 CALL                             R1 0 1
        3 JUMPIFNOT                        R1 ; [+2]
        4 LOADB                            R0 1
        5 JUMPBACK                         ; [-5]
        6 GETUPVAL                         R0 1
        7 GETIMPORT                        R2 K2 [task.delay]
        9 FASTCALL1                        TYPE R2 ; [+2]
       10 GETIMPORT                        R1 K4 [type]
       12 CALL                             R1 1 1
       13 JUMPIFNOTEQKS                    R1 K5 ["table"] ; [+3]
       15 DUPCLOSURE                       R0 K6 [PROTO_1]
       16 CAPTURE                          UPVAL U2
       17 MOVE                             R1 R0
       18 NEWCLOSURE                       R2 P1
       19 CAPTURE                          UPVAL U0
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          UPVAL U4
       22 CALL                             R1 1 0
       23 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          VAL R0
        8 CALL                             R1 1 2
        9 JUMPIF                           R1 ; [+3]
       10 MOVE                             R3 R0
       11 MOVE                             R4 R2
       12 CALL                             R3 1 0
       13 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 SUBK                             R0 R0 K0 [1]
        2 SETUPVAL                         R0 0
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R1 2
        5 SETTABLEKS                       R1 R0 K1 ["current"]
        7 GETUPVAL                         R0 3
        8 GETUPVAL                         R1 4
        9 SETTABLEKS                       R1 R0 K1 ["current"]
       11 GETIMPORT                        R1 K3 [_G]
       13 GETTABLEKS                       R0 R1 K4 ["__DEV__"]
       15 JUMPIFNOT                        R0 ; [+9]
       16 GETUPVAL                         R0 0
       17 GETUPVAL                         R1 5
       18 JUMPIFNOTLT                      R1 R0 ; [+6]
       20 GETUPVAL                         R1 6
       21 GETTABLEKS                       R0 R1 K5 ["error"]
       23 LOADK                            R1 K6 ["You seem to have overlapping act() calls, this is not supported. Be sure to await previous act() calls before making a new one. "]
       24 CALL                             R0 1 0
       25 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 1
        1 GETUPVAL                         R1 2
        2 CALL                             R0 1 1
        3 SETUPVAL                         R0 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKB                    R0 FALSE ; [+6]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K0 ["error"]
        6 LOADK                            R1 K1 ["You called act(async () => ...) without await. This could lead to unexpected testing behaviour, interleaving multiple act calls and mixing their scopes. You should - await act(async () => ...);"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 SUBK                             R1 R1 K0 [1]
        2 SETUPVAL                         R1 0
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 SETTABLEKS                       R2 R1 K1 ["current"]
        7 GETUPVAL                         R1 3
        8 GETUPVAL                         R2 4
        9 SETTABLEKS                       R2 R1 K1 ["current"]
       11 GETIMPORT                        R2 K3 [_G]
       13 GETTABLEKS                       R1 R2 K4 ["__DEV__"]
       15 JUMPIFNOT                        R1 ; [+9]
       16 GETUPVAL                         R1 0
       17 GETUPVAL                         R2 5
       18 JUMPIFNOTLT                      R2 R1 ; [+6]
       20 GETUPVAL                         R2 6
       21 GETTABLEKS                       R1 R2 K5 ["error"]
       23 LOADK                            R2 K6 ["You seem to have overlapping act() calls, this is not supported. Be sure to await previous act() calls before making a new one. "]
       24 CALL                             R1 1 0
       25 GETUPVAL                         R2 7
       26 GETTABLEKS                       R1 R2 K7 ["toJSBoolean"]
       28 MOVE                             R2 R0
       29 CALL                             R1 1 1
       30 JUMPIFNOT                        R1 ; [+4]
       31 GETUPVAL                         R1 8
       32 MOVE                             R2 R0
       33 CALL                             R1 1 0
       34 RETURN                           R0 0
       35 GETUPVAL                         R1 9
       36 CALL                             R1 0 0
       37 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 1
        2 JUMPIFLT                         R1 R0 ; [+7]
        4 GETUPVAL                         R0 1
        5 JUMPIFNOTEQKB                    R0 TRUE ; [+32]
        7 GETUPVAL                         R0 2
        8 JUMPIFNOTEQKB                    R0 TRUE ; [+29]
       10 GETUPVAL                         R0 0
       11 SUBK                             R0 R0 K0 [1]
       12 SETUPVAL                         R0 0
       13 GETUPVAL                         R0 3
       14 GETUPVAL                         R1 2
       15 SETTABLEKS                       R1 R0 K1 ["current"]
       17 GETUPVAL                         R0 4
       18 GETUPVAL                         R1 5
       19 SETTABLEKS                       R1 R0 K1 ["current"]
       21 GETIMPORT                        R1 K3 [_G]
       23 GETTABLEKS                       R0 R1 K4 ["__DEV__"]
       25 JUMPIFNOT                        R0 ; [+9]
       26 GETUPVAL                         R0 0
       27 GETUPVAL                         R1 6
       28 JUMPIFNOTLT                      R1 R0 ; [+6]
       30 GETUPVAL                         R1 7
       31 GETTABLEKS                       R0 R1 K5 ["error"]
       33 LOADK                            R1 K6 ["You seem to have overlapping act() calls, this is not supported. Be sure to await previous act() calls before making a new one. "]
       34 CALL                             R0 1 0
       35 GETUPVAL                         R0 8
       36 CALL                             R0 0 0
       37 RETURN                           R0 0
       38 NEWCLOSURE                       R0 P0
       39 CAPTURE                          UPVAL U0
       40 CAPTURE                          UPVAL U3
       41 CAPTURE                          UPVAL U2
       42 CAPTURE                          UPVAL U4
       43 CAPTURE                          UPVAL U5
       44 CAPTURE                          UPVAL U6
       45 CAPTURE                          UPVAL U7
       46 CAPTURE                          UPVAL U9
       47 CAPTURE                          UPVAL U10
       48 CAPTURE                          UPVAL U8
       49 GETIMPORT                        R1 K8 [pcall]
       51 NEWCLOSURE                       R2 P1
       52 CAPTURE                          UPVAL U11
       53 CAPTURE                          UPVAL U12
       54 CAPTURE                          UPVAL U13
       55 CAPTURE                          UPVAL U14
       56 CAPTURE                          VAL R0
       57 CALL                             R1 1 2
       58 JUMPIF                           R1 ; [+37]
       59 GETUPVAL                         R3 0
       60 SUBK                             R3 R3 K0 [1]
       61 SETUPVAL                         R3 0
       62 GETUPVAL                         R3 3
       63 GETUPVAL                         R4 2
       64 SETTABLEKS                       R4 R3 K1 ["current"]
       66 GETUPVAL                         R3 4
       67 GETUPVAL                         R4 5
       68 SETTABLEKS                       R4 R3 K1 ["current"]
       70 GETIMPORT                        R4 K3 [_G]
       72 GETTABLEKS                       R3 R4 K4 ["__DEV__"]
       74 JUMPIFNOT                        R3 ; [+9]
       75 GETUPVAL                         R3 0
       76 GETUPVAL                         R4 6
       77 JUMPIFNOTLT                      R4 R3 ; [+6]
       79 GETUPVAL                         R4 7
       80 GETTABLEKS                       R3 R4 K5 ["error"]
       82 LOADK                            R4 K6 ["You seem to have overlapping act() calls, this is not supported. Be sure to await previous act() calls before making a new one. "]
       83 CALL                             R3 1 0
       84 GETUPVAL                         R4 9
       85 GETTABLEKS                       R3 R4 K9 ["toJSBoolean"]
       87 MOVE                             R4 R2
       88 CALL                             R3 1 1
       89 JUMPIFNOT                        R3 ; [+4]
       90 GETUPVAL                         R3 10
       91 MOVE                             R4 R2
       92 CALL                             R3 1 0
       93 RETURN                           R0 0
       94 GETUPVAL                         R3 8
       95 CALL                             R3 0 0
       96 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 SUBK                             R1 R1 K0 [1]
        2 SETUPVAL                         R1 0
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 SETTABLEKS                       R2 R1 K1 ["current"]
        7 GETUPVAL                         R1 3
        8 GETUPVAL                         R2 4
        9 SETTABLEKS                       R2 R1 K1 ["current"]
       11 GETIMPORT                        R2 K3 [_G]
       13 GETTABLEKS                       R1 R2 K4 ["__DEV__"]
       15 JUMPIFNOT                        R1 ; [+9]
       16 GETUPVAL                         R1 0
       17 GETUPVAL                         R2 5
       18 JUMPIFNOTLT                      R2 R1 ; [+6]
       20 GETUPVAL                         R2 6
       21 GETTABLEKS                       R1 R2 K5 ["error"]
       23 LOADK                            R2 K6 ["You seem to have overlapping act() calls, this is not supported. Be sure to await previous act() calls before making a new one. "]
       24 CALL                             R1 1 0
       25 GETUPVAL                         R1 7
       26 MOVE                             R2 R0
       27 CALL                             R1 1 0
       28 RETURN                           R0 0

PROTO_11:
        0 LOADB                            R2 1
        1 SETUPVAL                         R2 0
        2 GETUPVAL                         R2 1
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          UPVAL U6
        9 CAPTURE                          UPVAL U7
       10 CAPTURE                          UPVAL U8
       11 CAPTURE                          UPVAL U9
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U10
       14 CAPTURE                          VAL R1
       15 CAPTURE                          UPVAL U11
       16 CAPTURE                          UPVAL U12
       17 CAPTURE                          UPVAL U13
       18 CAPTURE                          UPVAL U14
       19 NEWCLOSURE                       R5 P1
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          UPVAL U5
       22 CAPTURE                          UPVAL U4
       23 CAPTURE                          UPVAL U6
       24 CAPTURE                          UPVAL U7
       25 CAPTURE                          UPVAL U8
       26 CAPTURE                          UPVAL U9
       27 CAPTURE                          VAL R1
       28 NAMECALL                         R2 R2 K0 ["andThen"]
       30 CALL                             R2 3 0
       31 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKN                    R0 K0 [1] ; [+13]
        3 GETUPVAL                         R0 1
        4 JUMPIFEQKB                       R0 FALSE ; [+4]
        6 GETUPVAL                         R0 2
        7 JUMPIFNOTEQKB                    R0 FALSE ; [+7]
        9 LOADB                            R0 0
       10 GETUPVAL                         R1 3
       11 CALL                             R1 0 1
       12 JUMPIFNOT                        R1 ; [+2]
       13 LOADB                            R0 1
       14 JUMPBACK                         ; [-5]
       15 GETUPVAL                         R0 0
       16 SUBK                             R0 R0 K0 [1]
       17 SETUPVAL                         R0 0
       18 GETUPVAL                         R0 4
       19 GETUPVAL                         R1 2
       20 SETTABLEKS                       R1 R0 K1 ["current"]
       22 GETUPVAL                         R0 5
       23 GETUPVAL                         R1 6
       24 SETTABLEKS                       R1 R0 K1 ["current"]
       26 GETIMPORT                        R1 K3 [_G]
       28 GETTABLEKS                       R0 R1 K4 ["__DEV__"]
       30 JUMPIFNOT                        R0 ; [+9]
       31 GETUPVAL                         R0 0
       32 GETUPVAL                         R1 7
       33 JUMPIFNOTLT                      R1 R0 ; [+6]
       35 GETUPVAL                         R1 8
       36 GETTABLEKS                       R0 R1 K5 ["error"]
       38 LOADK                            R1 K6 ["You seem to have overlapping act() calls, this is not supported. Be sure to await previous act() calls before making a new one. "]
       39 CALL                             R0 1 0
       40 RETURN                           R0 0

PROTO_13:
        0 GETIMPORT                        R3 K1 [_G]
        2 GETTABLEKS                       R2 R3 K2 ["__DEV__"]
        4 JUMPIFNOT                        R2 ; [+5]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K3 ["error"]
        8 LOADK                            R3 K4 ["Do not await the result of calling act(...) with sync logic, it is not a Promise."]
        9 CALL                             R2 1 0
       10 MOVE                             R2 R1
       11 CALL                             R2 0 0
       12 RETURN                           R0 0

PROTO_14:
        0 GETIMPORT                        R2 K1 [_G]
        2 GETTABLEKS                       R1 R2 K2 ["__DEV__"]
        4 JUMPIF                           R1 ; [+10]
        5 GETUPVAL                         R1 0
        6 JUMPIFNOTEQKB                    R1 FALSE ; [+8]
        8 LOADB                            R1 1
        9 SETUPVAL                         R1 0
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R1 R2 K3 ["error"]
       13 LOADK                            R2 K4 ["act(...) is not supported in production builds of React, and might not behave as expected."]
       14 CALL                             R1 1 0
       15 GETUPVAL                         R1 2
       16 GETUPVAL                         R2 2
       17 ADDK                             R2 R2 K5 [1]
       18 SETUPVAL                         R2 2
       19 GETUPVAL                         R3 3
       20 GETTABLEKS                       R2 R3 K6 ["current"]
       22 GETUPVAL                         R4 4
       23 GETTABLEKS                       R3 R4 K6 ["current"]
       25 GETUPVAL                         R4 3
       26 LOADB                            R5 1
       27 SETTABLEKS                       R5 R4 K6 ["current"]
       29 GETUPVAL                         R4 4
       30 LOADB                            R5 1
       31 SETTABLEKS                       R5 R4 K6 ["current"]
       33 NEWCLOSURE                       R4 P0
       34 CAPTURE                          UPVAL U2
       35 CAPTURE                          UPVAL U3
       36 CAPTURE                          VAL R2
       37 CAPTURE                          UPVAL U4
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R1
       40 CAPTURE                          UPVAL U1
       41 LOADNIL                          R5
       42 GETIMPORT                        R6 K8 [pcall]
       44 NEWCLOSURE                       R7 P1
       45 CAPTURE                          REF R5
       46 CAPTURE                          UPVAL U5
       47 CAPTURE                          VAL R0
       48 CALL                             R6 1 2
       49 JUMPIF                           R6 ; [+26]
       50 GETUPVAL                         R8 2
       51 SUBK                             R8 R8 K5 [1]
       52 SETUPVAL                         R8 2
       53 GETUPVAL                         R8 3
       54 SETTABLEKS                       R2 R8 K6 ["current"]
       56 GETUPVAL                         R8 4
       57 SETTABLEKS                       R3 R8 K6 ["current"]
       59 GETIMPORT                        R9 K1 [_G]
       61 GETTABLEKS                       R8 R9 K2 ["__DEV__"]
       63 JUMPIFNOT                        R8 ; [+8]
       64 GETUPVAL                         R8 2
       65 JUMPIFNOTLT                      R1 R8 ; [+6]
       67 GETUPVAL                         R9 1
       68 GETTABLEKS                       R8 R9 K3 ["error"]
       70 LOADK                            R9 K9 ["You seem to have overlapping act() calls, this is not supported. Be sure to await previous act() calls before making a new one. "]
       71 CALL                             R8 1 0
       72 GETIMPORT                        R8 K10 [error]
       74 MOVE                             R9 R7
       75 CALL                             R8 1 0
       76 JUMPIFEQKNIL                     R5 ; [+63]
       78 FASTCALL1                        TYPEOF R5 ; [+3]
       79 MOVE                             R9 R5
       80 GETIMPORT                        R8 K12 [typeof]
       82 CALL                             R8 1 1
       83 JUMPIFNOTEQKS                    R8 K13 ["table"] ; [+56]
       85 GETTABLEKS                       R9 R5 K14 ["andThen"]
       87 FASTCALL1                        TYPEOF R9 ; [+2]
       88 GETIMPORT                        R8 K12 [typeof]
       90 CALL                             R8 1 1
       91 JUMPIFNOTEQKS                    R8 K15 ["function"] ; [+48]
       93 LOADB                            R8 0
       94 GETIMPORT                        R10 K1 [_G]
       96 GETTABLEKS                       R9 R10 K2 ["__DEV__"]
       98 JUMPIFNOT                        R9 ; [+18]
       99 GETUPVAL                         R10 6
      100 FASTCALL1                        TYPEOF R10 ; [+2]
      101 GETIMPORT                        R9 K12 [typeof]
      103 CALL                             R9 1 1
      104 JUMPIFEQKS                       R9 K16 ["nil"] ; [+12]
      106 GETUPVAL                         R10 6
      107 GETTABLEKS                       R9 R10 K17 ["delay"]
      109 LOADN                            R10 0
      110 CALL                             R9 1 1
      111 NEWCLOSURE                       R11 P2
      112 CAPTURE                          REF R8
      113 CAPTURE                          UPVAL U1
      114 NAMECALL                         R9 R9 K14 ["andThen"]
      116 CALL                             R9 2 0
      117 GETUPVAL                         R10 6
      118 GETTABLEKS                       R9 R10 K18 ["new"]
      120 NEWCLOSURE                       R10 P3
      121 CAPTURE                          REF R8
      122 CAPTURE                          REF R5
      123 CAPTURE                          UPVAL U2
      124 CAPTURE                          UPVAL U7
      125 CAPTURE                          VAL R2
      126 CAPTURE                          UPVAL U3
      127 CAPTURE                          UPVAL U4
      128 CAPTURE                          VAL R3
      129 CAPTURE                          VAL R1
      130 CAPTURE                          UPVAL U1
      131 CAPTURE                          UPVAL U8
      132 CAPTURE                          UPVAL U9
      133 CAPTURE                          UPVAL U10
      134 CAPTURE                          UPVAL U11
      135 CAPTURE                          UPVAL U12
      136 CALL                             R9 1 -1
      137 CLOSEUPVALS                      R5
      138 RETURN                           R9 -1
      139 CLOSEUPVALS                      R8
      140 GETIMPORT                        R9 K1 [_G]
      142 GETTABLEKS                       R8 R9 K2 ["__DEV__"]
      144 JUMPIFNOT                        R8 ; [+8]
      145 JUMPIFEQKNIL                     R5 ; [+7]
      147 GETUPVAL                         R9 1
      148 GETTABLEKS                       R8 R9 K3 ["error"]
      150 LOADK                            R9 K19 ["The callback passed to act(...) function must return undefined, or a Promise. You returned %s"]
      151 MOVE                             R10 R5
      152 CALL                             R8 2 0
      153 GETIMPORT                        R8 K8 [pcall]
      155 NEWCLOSURE                       R9 P4
      156 CAPTURE                          UPVAL U2
      157 CAPTURE                          UPVAL U7
      158 CAPTURE                          VAL R2
      159 CAPTURE                          UPVAL U9
      160 CAPTURE                          UPVAL U3
      161 CAPTURE                          UPVAL U4
      162 CAPTURE                          VAL R3
      163 CAPTURE                          VAL R1
      164 CAPTURE                          UPVAL U1
      165 CALL                             R8 1 2
      166 JUMPIF                           R8 ; [+26]
      167 GETUPVAL                         R10 2
      168 SUBK                             R10 R10 K5 [1]
      169 SETUPVAL                         R10 2
      170 GETUPVAL                         R10 3
      171 SETTABLEKS                       R2 R10 K6 ["current"]
      173 GETUPVAL                         R10 4
      174 SETTABLEKS                       R3 R10 K6 ["current"]
      176 GETIMPORT                        R11 K1 [_G]
      178 GETTABLEKS                       R10 R11 K2 ["__DEV__"]
      180 JUMPIFNOT                        R10 ; [+8]
      181 GETUPVAL                         R10 2
      182 JUMPIFNOTLT                      R1 R10 ; [+6]
      184 GETUPVAL                         R11 1
      185 GETTABLEKS                       R10 R11 K3 ["error"]
      187 LOADK                            R11 K9 ["You seem to have overlapping act() calls, this is not supported. Be sure to await previous act() calls before making a new one. "]
      188 CALL                             R10 1 0
      189 GETIMPORT                        R10 K10 [error]
      191 MOVE                             R11 R9
      192 CALL                             R10 1 0
      193 DUPTABLE                         R10 K20 [{"andThen"}]
      194 DUPCLOSURE                       R11 K21 [PROTO_13]
      195 CAPTURE                          UPVAL U1
      196 SETTABLEKS                       R11 R10 K14 ["andThen"]
      198 CLOSEUPVALS                      R5
      199 RETURN                           R10 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R5 K1 [script]
        3 GETTABLEKS                       R4 R5 K2 ["Parent"]
        5 GETTABLEKS                       R3 R4 K2 ["Parent"]
        7 GETTABLEKS                       R2 R3 K2 ["Parent"]
        9 GETTABLEKS                       R1 R2 K2 ["Parent"]
       11 GETTABLEKS                       R0 R1 K2 ["Parent"]
       13 GETIMPORT                        R1 K4 [require]
       15 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K6 ["Boolean"]
       20 GETTABLEKS                       R3 R1 K7 ["console"]
       22 GETIMPORT                        R4 K4 [require]
       24 GETTABLEKS                       R5 R0 K8 ["Promise"]
       26 CALL                             R4 1 1
       27 NEWTABLE                         R5 1 0
       29 GETIMPORT                        R6 K4 [require]
       31 GETTABLEKS                       R7 R0 K9 ["Shared"]
       33 CALL                             R6 1 1
       34 GETTABLEKS                       R7 R6 K10 ["ReactSharedInternals"]
       36 GETTABLEKS                       R8 R6 K11 ["enqueueTask"]
       38 GETIMPORT                        R9 K4 [require]
       40 GETTABLEKS                       R10 R0 K12 ["Scheduler"]
       42 CALL                             R9 1 1
       43 GETIMPORT                        R10 K4 [require]
       45 GETTABLEKS                       R11 R0 K13 ["ReactRoblox"]
       47 CALL                             R10 1 1
       48 GETTABLEKS                       R12 R10 K14 ["__SECRET_INTERNALS_DO_NOT_USE_OR_YOU_WILL_BE_FIRED"]
       50 GETTABLEKS                       R11 R12 K15 ["Events"]
       52 GETTABLEKS                       R12 R11 K16 ["IsThisRendererActing"]
       54 GETTABLEKS                       R13 R11 K17 ["flushPassiveEffects"]
       56 GETTABLEKS                       R14 R10 K18 ["unstable_batchedUpdates"]
       58 GETTABLEKS                       R15 R7 K19 ["IsSomeRendererActing"]
       60 GETIMPORT                        R16 K4 [require]
       62 GETIMPORT                        R19 K1 [script]
       64 GETTABLEKS                       R18 R19 K2 ["Parent"]
       66 GETTABLEKS                       R17 R18 K20 ["realTaskDelay.roblox.global"]
       68 CALL                             R16 1 1
       69 GETTABLEKS                       R19 R9 K21 ["unstable_flushAllWithoutAsserting"]
       71 FASTCALL1                        TYPEOF R19 ; [+2]
       72 GETIMPORT                        R18 K23 [typeof]
       74 CALL                             R18 1 1
       75 JUMPIFEQKS                       R18 K24 ["function"] ; [+2]
       77 LOADB                            R17 0 +1
       78 LOADB                            R17 1
       79 DUPCLOSURE                       R18 K25 [PROTO_0]
       80 CAPTURE                          VAL R13
       81 DUPCLOSURE                       R19 K26 [PROTO_4]
       82 CAPTURE                          VAL R13
       83 CAPTURE                          VAL R8
       84 CAPTURE                          VAL R16
       85 CAPTURE                          VAL R19
       86 LOADN                            R20 0
       87 LOADB                            R21 0
       88 NEWCLOSURE                       R22 P2
       89 CAPTURE                          REF R21
       90 CAPTURE                          VAL R3
       91 CAPTURE                          REF R20
       92 CAPTURE                          VAL R15
       93 CAPTURE                          VAL R12
       94 CAPTURE                          VAL R14
       95 CAPTURE                          VAL R4
       96 CAPTURE                          VAL R17
       97 CAPTURE                          VAL R2
       98 CAPTURE                          VAL R13
       99 CAPTURE                          VAL R8
      100 CAPTURE                          VAL R16
      101 CAPTURE                          VAL R19
      102 SETTABLEKS                       R22 R5 K27 ["default"]
      104 CLOSEUPVALS                      R20
      105 RETURN                           R5 1
