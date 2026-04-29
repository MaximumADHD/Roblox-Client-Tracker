PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["table"] ; [+62]
        7 JUMPIFEQKNIL                     R0 ; [+60]
        9 GETTABLEKS                       R1 R0 K3 ["$$typeof"]
       11 GETUPVAL                         R2 0
       12 JUMPIFNOTEQ                      R1 R2 ; [+48]
       14 GETTABLEKS                       R2 R0 K4 ["type"]
       16 GETUPVAL                         R3 1
       17 JUMPIFEQ                         R2 R3 ; [+13]
       19 GETUPVAL                         R3 2
       20 JUMPIFEQ                         R2 R3 ; [+10]
       22 GETUPVAL                         R3 3
       23 JUMPIFEQ                         R2 R3 ; [+7]
       25 GETUPVAL                         R3 4
       26 JUMPIFEQ                         R2 R3 ; [+4]
       28 GETUPVAL                         R3 5
       29 JUMPIFNOTEQ                      R2 R3 ; [+2]
       31 RETURN                           R2 1
       32 MOVE                             R3 R2
       33 JUMPIFNOT                        R3 ; [+10]
       34 LOADB                            R3 0
       35 FASTCALL1                        TYPEOF R2 ; [+3]
       36 MOVE                             R5 R2
       37 GETIMPORT                        R4 K1 [typeof]
       39 CALL                             R4 1 1
       40 JUMPIFNOTEQKS                    R4 K2 ["table"] ; [+3]
       42 GETTABLEKS                       R3 R2 K3 ["$$typeof"]
       44 GETUPVAL                         R4 6
       45 JUMPIFEQ                         R3 R4 ; [+13]
       47 GETUPVAL                         R4 7
       48 JUMPIFEQ                         R3 R4 ; [+10]
       50 GETUPVAL                         R4 8
       51 JUMPIFEQ                         R3 R4 ; [+7]
       53 GETUPVAL                         R4 9
       54 JUMPIFEQ                         R3 R4 ; [+4]
       56 GETUPVAL                         R4 10
       57 JUMPIFNOTEQ                      R3 R4 ; [+2]
       59 RETURN                           R3 1
       60 RETURN                           R1 1
       61 GETUPVAL                         R2 11
       62 JUMPIFEQ                         R1 R2 ; [+4]
       64 GETUPVAL                         R2 12
       65 JUMPIFNOTEQ                      R1 R2 ; [+2]
       67 RETURN                           R1 1
       68 LOADNIL                          R1
       69 RETURN                           R1 1

PROTO_1:
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
       12 LOADK                            R2 K4 ["The ReactIs.isConcurrentMode() alias has been deprecated, and will be removed in React 18+."]
       13 CALL                             R1 1 0
       14 LOADB                            R1 0
       15 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 1
        4 JUMPIFEQ                         R2 R3 ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 RETURN                           R1 1

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

PROTO_6:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 1
        4 JUMPIFEQ                         R2 R3 ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 RETURN                           R1 1

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
       54 DUPCLOSURE                       R18 K22 [PROTO_0]
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R11
       58 CAPTURE                          VAL R13
       59 CAPTURE                          VAL R14
       60 CAPTURE                          VAL R15
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R9
       65 CAPTURE                          VAL R12
       66 CAPTURE                          VAL R10
       67 CAPTURE                          VAL R17
       68 SETTABLEKS                       R18 R2 K23 ["typeOf"]
       70 SETTABLEKS                       R4 R2 K24 ["ContextConsumer"]
       72 SETTABLEKS                       R12 R2 K25 ["ContextProvider"]
       74 SETTABLEKS                       R5 R2 K26 ["Element"]
       76 SETTABLEKS                       R6 R2 K27 ["ForwardRef"]
       78 SETTABLEKS                       R7 R2 K28 ["Fragment"]
       80 SETTABLEKS                       R8 R2 K29 ["Lazy"]
       82 SETTABLEKS                       R9 R2 K30 ["Memo"]
       84 SETTABLEKS                       R10 R2 K31 ["Portal"]
       86 SETTABLEKS                       R11 R2 K32 ["Profiler"]
       88 SETTABLEKS                       R13 R2 K33 ["StrictMode"]
       90 SETTABLEKS                       R14 R2 K34 ["Suspense"]
       92 GETTABLEKS                       R19 R3 K21 ["REACT_BINDING_TYPE"]
       94 SETTABLEKS                       R19 R2 K35 ["Binding"]
       96 SETTABLEKS                       R16 R2 K20 ["isValidElementType"]
       98 LOADB                            R19 0
       99 LOADB                            R20 0
      100 NEWCLOSURE                       R21 P1
      101 CAPTURE                          REF R19
      102 CAPTURE                          VAL R1
      103 SETTABLEKS                       R21 R2 K36 ["isAsyncMode"]
      105 NEWCLOSURE                       R22 P2
      106 CAPTURE                          REF R20
      107 CAPTURE                          VAL R1
      108 SETTABLEKS                       R22 R2 K37 ["isConcurrentMode"]
      110 DUPCLOSURE                       R23 K38 [PROTO_3]
      111 CAPTURE                          VAL R18
      112 CAPTURE                          VAL R4
      113 SETTABLEKS                       R23 R2 K39 ["isContextConsumer"]
      115 DUPCLOSURE                       R24 K40 [PROTO_4]
      116 CAPTURE                          VAL R18
      117 CAPTURE                          VAL R12
      118 SETTABLEKS                       R24 R2 K41 ["isContextProvider"]
      120 DUPCLOSURE                       R25 K42 [PROTO_5]
      121 CAPTURE                          VAL R5
      122 SETTABLEKS                       R25 R2 K43 ["isElement"]
      124 DUPCLOSURE                       R26 K44 [PROTO_6]
      125 CAPTURE                          VAL R18
      126 CAPTURE                          VAL R6
      127 SETTABLEKS                       R26 R2 K45 ["isForwardRef"]
      129 DUPCLOSURE                       R27 K46 [PROTO_7]
      130 CAPTURE                          VAL R18
      131 CAPTURE                          VAL R7
      132 SETTABLEKS                       R27 R2 K47 ["isFragment"]
      134 DUPCLOSURE                       R28 K48 [PROTO_8]
      135 CAPTURE                          VAL R18
      136 CAPTURE                          VAL R8
      137 SETTABLEKS                       R28 R2 K49 ["isLazy"]
      139 DUPCLOSURE                       R29 K50 [PROTO_9]
      140 CAPTURE                          VAL R18
      141 CAPTURE                          VAL R9
      142 SETTABLEKS                       R29 R2 K51 ["isMemo"]
      144 DUPCLOSURE                       R30 K52 [PROTO_10]
      145 CAPTURE                          VAL R18
      146 CAPTURE                          VAL R10
      147 SETTABLEKS                       R30 R2 K53 ["isPortal"]
      149 DUPCLOSURE                       R31 K54 [PROTO_11]
      150 CAPTURE                          VAL R18
      151 CAPTURE                          VAL R11
      152 SETTABLEKS                       R31 R2 K55 ["isProfiler"]
      154 DUPCLOSURE                       R32 K56 [PROTO_12]
      155 CAPTURE                          VAL R18
      156 CAPTURE                          VAL R13
      157 SETTABLEKS                       R32 R2 K57 ["isStrictMode"]
      159 DUPCLOSURE                       R33 K58 [PROTO_13]
      160 CAPTURE                          VAL R18
      161 CAPTURE                          VAL R14
      162 SETTABLEKS                       R33 R2 K59 ["isSuspense"]
      164 DUPCLOSURE                       R34 K60 [PROTO_14]
      165 CAPTURE                          VAL R18
      166 CAPTURE                          VAL R17
      167 SETTABLEKS                       R34 R2 K61 ["isBinding"]
      169 CLOSEUPVALS                      R19
      170 RETURN                           R2 1
