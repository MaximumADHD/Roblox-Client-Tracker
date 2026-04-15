PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["$$typeof"]
        3 RETURN                           R0 1

PROTO_1:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["table"] ; [+77]
        7 JUMPIFEQKNIL                     R0 ; [+75]
        9 LOADNIL                          R1
       10 GETUPVAL                         R2 0
       11 JUMPIFNOT                        R2 ; [+12]
       12 LOADNIL                          R2
       13 GETIMPORT                        R3 K4 [pcall]
       15 NEWCLOSURE                       R4 P0
       16 CAPTURE                          VAL R0
       17 CALL                             R3 1 2
       18 MOVE                             R2 R3
       19 MOVE                             R1 R4
       20 JUMPIF                           R2 ; [+5]
       21 LOADNIL                          R3
       22 RETURN                           R3 1
       23 JUMP                             ; [+2]
       24 GETTABLEKS                       R1 R0 K5 ["$$typeof"]
       26 GETUPVAL                         R2 1
       27 JUMPIFNOTEQ                      R1 R2 ; [+48]
       29 GETTABLEKS                       R2 R0 K6 ["type"]
       31 GETUPVAL                         R3 2
       32 JUMPIFEQ                         R2 R3 ; [+13]
       34 GETUPVAL                         R3 3
       35 JUMPIFEQ                         R2 R3 ; [+10]
       37 GETUPVAL                         R3 4
       38 JUMPIFEQ                         R2 R3 ; [+7]
       40 GETUPVAL                         R3 5
       41 JUMPIFEQ                         R2 R3 ; [+4]
       43 GETUPVAL                         R3 6
       44 JUMPIFNOTEQ                      R2 R3 ; [+2]
       46 RETURN                           R2 1
       47 MOVE                             R3 R2
       48 JUMPIFNOT                        R3 ; [+10]
       49 LOADB                            R3 0
       50 FASTCALL1                        TYPEOF R2 ; [+3]
       51 MOVE                             R5 R2
       52 GETIMPORT                        R4 K1 [typeof]
       54 CALL                             R4 1 1
       55 JUMPIFNOTEQKS                    R4 K2 ["table"] ; [+3]
       57 GETTABLEKS                       R3 R2 K5 ["$$typeof"]
       59 GETUPVAL                         R4 7
       60 JUMPIFEQ                         R3 R4 ; [+13]
       62 GETUPVAL                         R4 8
       63 JUMPIFEQ                         R3 R4 ; [+10]
       65 GETUPVAL                         R4 9
       66 JUMPIFEQ                         R3 R4 ; [+7]
       68 GETUPVAL                         R4 10
       69 JUMPIFEQ                         R3 R4 ; [+4]
       71 GETUPVAL                         R4 11
       72 JUMPIFNOTEQ                      R3 R4 ; [+2]
       74 RETURN                           R3 1
       75 RETURN                           R1 1
       76 GETUPVAL                         R2 12
       77 JUMPIFEQ                         R1 R2 ; [+4]
       79 GETUPVAL                         R2 13
       80 JUMPIFNOTEQ                      R1 R2 ; [+2]
       82 RETURN                           R1 1
       83 LOADNIL                          R1
       84 RETURN                           R1 1

PROTO_2:
        0 GETIMPORT                        R2 K1 [_G]
        2 GETTABLEKS                       R1 R2 K2 ["__DEV__"]
        4 JUMPIFNOT                        R1 ; [+9]
        5 GETUPVAL                         R1 0
        6 JUMPIF                           R1 ; [+7]
        7 LOADB                            R1 1
        8 SETUPVAL                         R1 0
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R1 R2 K3 ["warn"]
       12 LOADK                            R2 K4 ["The ReactIs.isAsyncMode() alias has been deprecated, and will be removed in React 18+."]
       13 CALL                             R1 1 0
       14 LOADB                            R1 0
       15 RETURN                           R1 1

PROTO_3:
        0 GETIMPORT                        R2 K1 [_G]
        2 GETTABLEKS                       R1 R2 K2 ["__DEV__"]
        4 JUMPIFNOT                        R1 ; [+9]
        5 GETUPVAL                         R1 0
        6 JUMPIF                           R1 ; [+7]
        7 LOADB                            R1 1
        8 SETUPVAL                         R1 0
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R1 R2 K3 ["warn"]
       12 LOADK                            R2 K4 ["The ReactIs.isConcurrentMode() alias has been deprecated, and will be removed in React 18+."]
       13 CALL                             R1 1 0
       14 LOADB                            R1 0
       15 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 1
        4 JUMPIFEQ                         R2 R3 ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 1
        4 JUMPIFEQ                         R2 R3 ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 RETURN                           R1 1

PROTO_6:
        0 LOADB                            R1 0
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [typeof]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+11]
        8 LOADB                            R1 0
        9 JUMPIFEQKNIL                     R0 ; [+8]
       11 GETTABLEKS                       R2 R0 K3 ["$$typeof"]
       13 GETUPVAL                         R3 0
       14 JUMPIFEQ                         R2 R3 ; [+2]
       16 LOADB                            R1 0 +1
       17 LOADB                            R1 1
       18 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 1
        4 JUMPIFEQ                         R2 R3 ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 1
        4 JUMPIFEQ                         R2 R3 ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 1
        4 JUMPIFEQ                         R2 R3 ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 1
        4 JUMPIFEQ                         R2 R3 ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 1
        4 JUMPIFEQ                         R2 R3 ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 1
        4 JUMPIFEQ                         R2 R3 ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 1
        4 JUMPIFEQ                         R2 R3 ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 RETURN                           R1 1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 1
        4 JUMPIFEQ                         R2 R3 ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 RETURN                           R1 1

PROTO_15:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 1
        4 JUMPIFEQ                         R2 R3 ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETIMPORT                        R2 K4 [require]
        7 GETTABLEKS                       R3 R0 K5 ["Shared"]
        9 CALL                             R2 1 1
       10 GETTABLEKS                       R1 R2 K6 ["console"]
       12 NEWTABLE                         R2 32 0
       14 GETIMPORT                        R4 K4 [require]
       16 GETTABLEKS                       R5 R0 K5 ["Shared"]
       18 CALL                             R4 1 1
       19 GETTABLEKS                       R3 R4 K7 ["ReactSymbols"]
       21 GETTABLEKS                       R4 R3 K8 ["REACT_CONTEXT_TYPE"]
       23 GETTABLEKS                       R5 R3 K9 ["REACT_ELEMENT_TYPE"]
       25 GETTABLEKS                       R6 R3 K10 ["REACT_FORWARD_REF_TYPE"]
       27 GETTABLEKS                       R7 R3 K11 ["REACT_FRAGMENT_TYPE"]
       29 GETTABLEKS                       R8 R3 K12 ["REACT_LAZY_TYPE"]
       31 GETTABLEKS                       R9 R3 K13 ["REACT_MEMO_TYPE"]
       33 GETTABLEKS                       R10 R3 K14 ["REACT_PORTAL_TYPE"]
       35 GETTABLEKS                       R11 R3 K15 ["REACT_PROFILER_TYPE"]
       37 GETTABLEKS                       R12 R3 K16 ["REACT_PROVIDER_TYPE"]
       39 GETTABLEKS                       R13 R3 K17 ["REACT_STRICT_MODE_TYPE"]
       41 GETTABLEKS                       R14 R3 K18 ["REACT_SUSPENSE_TYPE"]
       43 GETTABLEKS                       R15 R3 K19 ["REACT_SUSPENSE_LIST_TYPE"]
       45 GETIMPORT                        R17 K4 [require]
       47 GETTABLEKS                       R18 R0 K5 ["Shared"]
       49 CALL                             R17 1 1
       50 GETTABLEKS                       R16 R17 K20 ["isValidElementType"]
       52 GETTABLEKS                       R17 R3 K21 ["REACT_BINDING_TYPE"]
       54 GETIMPORT                        R18 K4 [require]
       56 GETTABLEKS                       R19 R0 K22 ["SafeFlags"]
       58 CALL                             R18 1 1
       59 GETTABLEKS                       R19 R18 K23 ["createGetFFlag"]
       61 LOADK                            R20 K24 ["ReactIsProtectedTypeOf"]
       62 LOADB                            R21 0
       63 CALL                             R19 2 1
       64 CALL                             R19 0 1
       65 DUPCLOSURE                       R20 K25 [PROTO_1]
       66 CAPTURE                          VAL R19
       67 CAPTURE                          VAL R5
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R11
       70 CAPTURE                          VAL R13
       71 CAPTURE                          VAL R14
       72 CAPTURE                          VAL R15
       73 CAPTURE                          VAL R4
       74 CAPTURE                          VAL R6
       75 CAPTURE                          VAL R8
       76 CAPTURE                          VAL R9
       77 CAPTURE                          VAL R12
       78 CAPTURE                          VAL R10
       79 CAPTURE                          VAL R17
       80 SETTABLEKS                       R20 R2 K26 ["typeOf"]
       82 SETTABLEKS                       R4 R2 K27 ["ContextConsumer"]
       84 SETTABLEKS                       R12 R2 K28 ["ContextProvider"]
       86 SETTABLEKS                       R5 R2 K29 ["Element"]
       88 SETTABLEKS                       R6 R2 K30 ["ForwardRef"]
       90 SETTABLEKS                       R7 R2 K31 ["Fragment"]
       92 SETTABLEKS                       R8 R2 K32 ["Lazy"]
       94 SETTABLEKS                       R9 R2 K33 ["Memo"]
       96 SETTABLEKS                       R10 R2 K34 ["Portal"]
       98 SETTABLEKS                       R11 R2 K35 ["Profiler"]
      100 SETTABLEKS                       R13 R2 K36 ["StrictMode"]
      102 SETTABLEKS                       R14 R2 K37 ["Suspense"]
      104 GETTABLEKS                       R21 R3 K21 ["REACT_BINDING_TYPE"]
      106 SETTABLEKS                       R21 R2 K38 ["Binding"]
      108 SETTABLEKS                       R16 R2 K20 ["isValidElementType"]
      110 LOADB                            R21 0
      111 LOADB                            R22 0
      112 NEWCLOSURE                       R23 P1
      113 CAPTURE                          REF R21
      114 CAPTURE                          VAL R1
      115 SETTABLEKS                       R23 R2 K39 ["isAsyncMode"]
      117 NEWCLOSURE                       R24 P2
      118 CAPTURE                          REF R22
      119 CAPTURE                          VAL R1
      120 SETTABLEKS                       R24 R2 K40 ["isConcurrentMode"]
      122 DUPCLOSURE                       R25 K41 [PROTO_4]
      123 CAPTURE                          VAL R20
      124 CAPTURE                          VAL R4
      125 SETTABLEKS                       R25 R2 K42 ["isContextConsumer"]
      127 DUPCLOSURE                       R26 K43 [PROTO_5]
      128 CAPTURE                          VAL R20
      129 CAPTURE                          VAL R12
      130 SETTABLEKS                       R26 R2 K44 ["isContextProvider"]
      132 DUPCLOSURE                       R27 K45 [PROTO_6]
      133 CAPTURE                          VAL R5
      134 SETTABLEKS                       R27 R2 K46 ["isElement"]
      136 DUPCLOSURE                       R28 K47 [PROTO_7]
      137 CAPTURE                          VAL R20
      138 CAPTURE                          VAL R6
      139 SETTABLEKS                       R28 R2 K48 ["isForwardRef"]
      141 DUPCLOSURE                       R29 K49 [PROTO_8]
      142 CAPTURE                          VAL R20
      143 CAPTURE                          VAL R7
      144 SETTABLEKS                       R29 R2 K50 ["isFragment"]
      146 DUPCLOSURE                       R30 K51 [PROTO_9]
      147 CAPTURE                          VAL R20
      148 CAPTURE                          VAL R8
      149 SETTABLEKS                       R30 R2 K52 ["isLazy"]
      151 DUPCLOSURE                       R31 K53 [PROTO_10]
      152 CAPTURE                          VAL R20
      153 CAPTURE                          VAL R9
      154 SETTABLEKS                       R31 R2 K54 ["isMemo"]
      156 DUPCLOSURE                       R32 K55 [PROTO_11]
      157 CAPTURE                          VAL R20
      158 CAPTURE                          VAL R10
      159 SETTABLEKS                       R32 R2 K56 ["isPortal"]
      161 DUPCLOSURE                       R33 K57 [PROTO_12]
      162 CAPTURE                          VAL R20
      163 CAPTURE                          VAL R11
      164 SETTABLEKS                       R33 R2 K58 ["isProfiler"]
      166 DUPCLOSURE                       R34 K59 [PROTO_13]
      167 CAPTURE                          VAL R20
      168 CAPTURE                          VAL R13
      169 SETTABLEKS                       R34 R2 K60 ["isStrictMode"]
      171 DUPCLOSURE                       R35 K61 [PROTO_14]
      172 CAPTURE                          VAL R20
      173 CAPTURE                          VAL R14
      174 SETTABLEKS                       R35 R2 K62 ["isSuspense"]
      176 DUPCLOSURE                       R36 K63 [PROTO_15]
      177 CAPTURE                          VAL R20
      178 CAPTURE                          VAL R17
      179 SETTABLEKS                       R36 R2 K64 ["isBinding"]
      181 CLOSEUPVALS                      R21
      182 RETURN                           R2 1
