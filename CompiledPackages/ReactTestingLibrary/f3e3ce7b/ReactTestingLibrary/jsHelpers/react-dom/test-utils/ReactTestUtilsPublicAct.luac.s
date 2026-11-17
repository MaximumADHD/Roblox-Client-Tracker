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
        0 LOADB                            R0 0
        1 GETUPVAL                         R1 0
        2 CALL                             R1 0 1
        3 JUMPIFNOT                        R1 ; [+2]
        4 LOADB                            R0 1
        5 JUMPBACK                         ; [-5]
        6 JUMPIFNOT                        R0 ; [+4]
        7 GETUPVAL                         R0 1
        8 GETUPVAL                         R1 2
        9 CALL                             R0 1 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R0 2
       12 CALL                             R0 0 0
       13 RETURN                           R0 0

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
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          VAL R0
        6 FASTPCALL                        pcall 1 ; [+2]
        7 GETIMPORT                        R1 K1 [pcall]
        9 CALL                             R1 1 2
       10 JUMPIF                           R1 ; [+3]
       11 MOVE                             R3 R0
       12 MOVE                             R4 R2
       13 CALL                             R3 1 0
       14 RETURN                           R0 0

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
       11 GETIMPORT                        R0 K3 [_G]
       13 GETTABLEKS                       R0 R0 K4 ["__DEV__"]
       15 JUMPIFNOT                        R0 ; [+9]
       16 GETUPVAL                         R0 0
       17 GETUPVAL                         R1 5
       18 JUMPIFNOTLT                      R1 R0 ; [+6]
       20 GETUPVAL                         R0 6
       21 GETTABLEKS                       R0 R0 K5 ["error"]
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
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["error"]
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
       11 GETIMPORT                        R1 K3 [_G]
       13 GETTABLEKS                       R1 R1 K4 ["__DEV__"]
       15 JUMPIFNOT                        R1 ; [+9]
       16 GETUPVAL                         R1 0
       17 GETUPVAL                         R2 5
       18 JUMPIFNOTLT                      R2 R1 ; [+6]
       20 GETUPVAL                         R1 6
       21 GETTABLEKS                       R1 R1 K5 ["error"]
       23 LOADK                            R2 K6 ["You seem to have overlapping act() calls, this is not supported. Be sure to await previous act() calls before making a new one. "]
       24 CALL                             R1 1 0
       25 GETUPVAL                         R1 7
       26 GETTABLEKS                       R1 R1 K7 ["toJSBoolean"]
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
       21 GETIMPORT                        R0 K3 [_G]
       23 GETTABLEKS                       R0 R0 K4 ["__DEV__"]
       25 JUMPIFNOT                        R0 ; [+9]
       26 GETUPVAL                         R0 0
       27 GETUPVAL                         R1 6
       28 JUMPIFNOTLT                      R1 R0 ; [+6]
       30 GETUPVAL                         R0 7
       31 GETTABLEKS                       R0 R0 K5 ["error"]
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
       49 NEWCLOSURE                       R2 P1
       50 CAPTURE                          UPVAL U11
       51 CAPTURE                          UPVAL U12
       52 CAPTURE                          UPVAL U13
       53 CAPTURE                          UPVAL U14
       54 CAPTURE                          VAL R0
       55 FASTPCALL                        pcall 1 ; [+2]
       56 GETIMPORT                        R1 K8 [pcall]
       58 CALL                             R1 1 2
       59 JUMPIF                           R1 ; [+37]
       60 GETUPVAL                         R3 0
       61 SUBK                             R3 R3 K0 [1]
       62 SETUPVAL                         R3 0
       63 GETUPVAL                         R3 3
       64 GETUPVAL                         R4 2
       65 SETTABLEKS                       R4 R3 K1 ["current"]
       67 GETUPVAL                         R3 4
       68 GETUPVAL                         R4 5
       69 SETTABLEKS                       R4 R3 K1 ["current"]
       71 GETIMPORT                        R3 K3 [_G]
       73 GETTABLEKS                       R3 R3 K4 ["__DEV__"]
       75 JUMPIFNOT                        R3 ; [+9]
       76 GETUPVAL                         R3 0
       77 GETUPVAL                         R4 6
       78 JUMPIFNOTLT                      R4 R3 ; [+6]
       80 GETUPVAL                         R3 7
       81 GETTABLEKS                       R3 R3 K5 ["error"]
       83 LOADK                            R4 K6 ["You seem to have overlapping act() calls, this is not supported. Be sure to await previous act() calls before making a new one. "]
       84 CALL                             R3 1 0
       85 GETUPVAL                         R3 9
       86 GETTABLEKS                       R3 R3 K9 ["toJSBoolean"]
       88 MOVE                             R4 R2
       89 CALL                             R3 1 1
       90 JUMPIFNOT                        R3 ; [+4]
       91 GETUPVAL                         R3 10
       92 MOVE                             R4 R2
       93 CALL                             R3 1 0
       94 RETURN                           R0 0
       95 GETUPVAL                         R3 8
       96 CALL                             R3 0 0
       97 RETURN                           R0 0

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
       11 GETIMPORT                        R1 K3 [_G]
       13 GETTABLEKS                       R1 R1 K4 ["__DEV__"]
       15 JUMPIFNOT                        R1 ; [+9]
       16 GETUPVAL                         R1 0
       17 GETUPVAL                         R2 5
       18 JUMPIFNOTLT                      R2 R1 ; [+6]
       20 GETUPVAL                         R1 6
       21 GETTABLEKS                       R1 R1 K5 ["error"]
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
       26 GETIMPORT                        R0 K3 [_G]
       28 GETTABLEKS                       R0 R0 K4 ["__DEV__"]
       30 JUMPIFNOT                        R0 ; [+9]
       31 GETUPVAL                         R0 0
       32 GETUPVAL                         R1 7
       33 JUMPIFNOTLT                      R1 R0 ; [+6]
       35 GETUPVAL                         R0 8
       36 GETTABLEKS                       R0 R0 K5 ["error"]
       38 LOADK                            R1 K6 ["You seem to have overlapping act() calls, this is not supported. Be sure to await previous act() calls before making a new one. "]
       39 CALL                             R0 1 0
       40 RETURN                           R0 0

PROTO_13:
        0 GETIMPORT                        R2 K1 [_G]
        2 GETTABLEKS                       R2 R2 K2 ["__DEV__"]
        4 JUMPIFNOT                        R2 ; [+5]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K3 ["error"]
        8 LOADK                            R3 K4 ["Do not await the result of calling act(...) with sync logic, it is not a Promise."]
        9 CALL                             R2 1 0
       10 MOVE                             R2 R1
       11 CALL                             R2 0 0
       12 RETURN                           R0 0

PROTO_14:
        0 GETIMPORT                        R1 K1 [_G]
        2 GETTABLEKS                       R1 R1 K2 ["__DEV__"]
        4 JUMPIF                           R1 ; [+10]
        5 GETUPVAL                         R1 0
        6 JUMPIFNOTEQKB                    R1 FALSE ; [+8]
        8 LOADB                            R1 1
        9 SETUPVAL                         R1 0
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K3 ["error"]
       13 LOADK                            R2 K4 ["act(...) is not supported in production builds of React, and might not behave as expected."]
       14 CALL                             R1 1 0
       15 GETUPVAL                         R1 2
       16 GETUPVAL                         R2 2
       17 ADDK                             R2 R2 K5 [1]
       18 SETUPVAL                         R2 2
       19 GETUPVAL                         R2 3
       20 GETTABLEKS                       R2 R2 K6 ["current"]
       22 GETUPVAL                         R3 4
       23 GETTABLEKS                       R3 R3 K6 ["current"]
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
       42 NEWCLOSURE                       R7 P1
       43 CAPTURE                          REF R5
       44 CAPTURE                          UPVAL U5
       45 CAPTURE                          VAL R0
       46 FASTPCALL                        pcall 1 ; [+2]
       47 GETIMPORT                        R6 K8 [pcall]
       49 CALL                             R6 1 2
       50 JUMPIF                           R6 ; [+26]
       51 GETUPVAL                         R8 2
       52 SUBK                             R8 R8 K5 [1]
       53 SETUPVAL                         R8 2
       54 GETUPVAL                         R8 3
       55 SETTABLEKS                       R2 R8 K6 ["current"]
       57 GETUPVAL                         R8 4
       58 SETTABLEKS                       R3 R8 K6 ["current"]
       60 GETIMPORT                        R8 K1 [_G]
       62 GETTABLEKS                       R8 R8 K2 ["__DEV__"]
       64 JUMPIFNOT                        R8 ; [+8]
       65 GETUPVAL                         R8 2
       66 JUMPIFNOTLT                      R1 R8 ; [+6]
       68 GETUPVAL                         R8 1
       69 GETTABLEKS                       R8 R8 K3 ["error"]
       71 LOADK                            R9 K9 ["You seem to have overlapping act() calls, this is not supported. Be sure to await previous act() calls before making a new one. "]
       72 CALL                             R8 1 0
       73 GETIMPORT                        R8 K10 [error]
       75 MOVE                             R9 R7
       76 CALL                             R8 1 0
       77 JUMPIFEQKNIL                     R5 ; [+62]
       79 FASTCALL1                        TYPEOF R5 ; [+3]
       80 MOVE                             R9 R5
       81 GETIMPORT                        R8 K12 [typeof]
       83 CALL                             R8 1 1
       84 JUMPIFNOTEQKS                    R8 K13 ["table"] ; [+55]
       86 GETTABLEKS                       R9 R5 K14 ["andThen"]
       88 FASTCALL1                        TYPEOF R9 ; [+2]
       89 GETIMPORT                        R8 K12 [typeof]
       91 CALL                             R8 1 1
       92 JUMPIFNOTEQKS                    R8 K15 ["function"] ; [+47]
       94 LOADB                            R8 0
       95 GETIMPORT                        R9 K1 [_G]
       97 GETTABLEKS                       R9 R9 K2 ["__DEV__"]
       99 JUMPIFNOT                        R9 ; [+18]
      100 GETUPVAL                         R10 6
      101 FASTCALL1                        TYPEOF R10 ; [+2]
      102 GETIMPORT                        R9 K12 [typeof]
      104 CALL                             R9 1 1
      105 JUMPIFEQKS                       R9 K16 ["nil"] ; [+12]
      107 GETUPVAL                         R9 6
      108 GETTABLEKS                       R9 R9 K17 ["delay"]
      110 LOADN                            R10 0
      111 CALL                             R9 1 1
      112 NEWCLOSURE                       R11 P2
      113 CAPTURE                          REF R8
      114 CAPTURE                          UPVAL U1
      115 NAMECALL                         R9 R9 K14 ["andThen"]
      117 CALL                             R9 2 0
      118 GETUPVAL                         R9 6
      119 GETTABLEKS                       R9 R9 K18 ["new"]
      121 NEWCLOSURE                       R10 P3
      122 CAPTURE                          REF R8
      123 CAPTURE                          REF R5
      124 CAPTURE                          UPVAL U2
      125 CAPTURE                          UPVAL U7
      126 CAPTURE                          VAL R2
      127 CAPTURE                          UPVAL U3
      128 CAPTURE                          UPVAL U4
      129 CAPTURE                          VAL R3
      130 CAPTURE                          VAL R1
      131 CAPTURE                          UPVAL U1
      132 CAPTURE                          UPVAL U8
      133 CAPTURE                          UPVAL U9
      134 CAPTURE                          UPVAL U10
      135 CAPTURE                          UPVAL U11
      136 CAPTURE                          UPVAL U12
      137 CALL                             R9 1 -1
      138 CLOSEUPVALS                      R5
      139 RETURN                           R9 -1
      140 GETIMPORT                        R8 K1 [_G]
      142 GETTABLEKS                       R8 R8 K2 ["__DEV__"]
      144 JUMPIFNOT                        R8 ; [+8]
      145 JUMPIFEQKNIL                     R5 ; [+7]
      147 GETUPVAL                         R8 1
      148 GETTABLEKS                       R8 R8 K3 ["error"]
      150 LOADK                            R9 K19 ["The callback passed to act(...) function must return undefined, or a Promise. You returned %s"]
      151 MOVE                             R10 R5
      152 CALL                             R8 2 0
      153 NEWCLOSURE                       R9 P4
      154 CAPTURE                          UPVAL U2
      155 CAPTURE                          UPVAL U7
      156 CAPTURE                          VAL R2
      157 CAPTURE                          UPVAL U9
      158 CAPTURE                          UPVAL U3
      159 CAPTURE                          UPVAL U4
      160 CAPTURE                          VAL R3
      161 CAPTURE                          VAL R1
      162 CAPTURE                          UPVAL U1
      163 FASTPCALL                        pcall 1 ; [+2]
      164 GETIMPORT                        R8 K8 [pcall]
      166 CALL                             R8 1 2
      167 JUMPIF                           R8 ; [+26]
      168 GETUPVAL                         R10 2
      169 SUBK                             R10 R10 K5 [1]
      170 SETUPVAL                         R10 2
      171 GETUPVAL                         R10 3
      172 SETTABLEKS                       R2 R10 K6 ["current"]
      174 GETUPVAL                         R10 4
      175 SETTABLEKS                       R3 R10 K6 ["current"]
      177 GETIMPORT                        R10 K1 [_G]
      179 GETTABLEKS                       R10 R10 K2 ["__DEV__"]
      181 JUMPIFNOT                        R10 ; [+8]
      182 GETUPVAL                         R10 2
      183 JUMPIFNOTLT                      R1 R10 ; [+6]
      185 GETUPVAL                         R10 1
      186 GETTABLEKS                       R10 R10 K3 ["error"]
      188 LOADK                            R11 K9 ["You seem to have overlapping act() calls, this is not supported. Be sure to await previous act() calls before making a new one. "]
      189 CALL                             R10 1 0
      190 GETIMPORT                        R10 K10 [error]
      192 MOVE                             R11 R9
      193 CALL                             R10 1 0
      194 DUPTABLE                         R10 K20 [{"andThen"}]
      195 DUPCLOSURE                       R11 K21 [PROTO_13]
      196 CAPTURE                          UPVAL U1
      197 SETTABLEKS                       R11 R10 K14 ["andThen"]
      199 CLOSEUPVALS                      R5
      200 RETURN                           R10 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R0 R0 K2 ["Parent"]
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
       48 GETTABLEKS                       R11 R10 K14 ["__SECRET_INTERNALS_DO_NOT_USE_OR_YOU_WILL_BE_FIRED"]
       50 GETTABLEKS                       R11 R11 K15 ["Events"]
       52 GETTABLEKS                       R12 R11 K16 ["IsThisRendererActing"]
       54 GETTABLEKS                       R13 R11 K17 ["flushPassiveEffects"]
       56 GETTABLEKS                       R14 R10 K18 ["unstable_batchedUpdates"]
       58 GETTABLEKS                       R15 R7 K19 ["IsSomeRendererActing"]
       60 GETIMPORT                        R16 K4 [require]
       62 GETIMPORT                        R18 K1 [script]
       64 GETTABLEKS                       R18 R18 K2 ["Parent"]
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
