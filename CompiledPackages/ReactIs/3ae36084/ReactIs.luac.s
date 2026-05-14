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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["__DEV__"]
        3 JUMPIFNOT                        R1 ; [+9]
        4 GETUPVAL                         R1 1
        5 JUMPIF                           R1 ; [+7]
        6 LOADB                            R1 1
        7 SETUPVAL                         R1 1
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R1 R2 K1 ["warn"]
       11 LOADK                            R2 K2 ["The ReactIs.isAsyncMode() alias has been deprecated, and will be removed in React 18+."]
       12 CALL                             R1 1 0
       13 LOADB                            R1 0
       14 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["__DEV__"]
        3 JUMPIFNOT                        R1 ; [+9]
        4 GETUPVAL                         R1 1
        5 JUMPIF                           R1 ; [+7]
        6 LOADB                            R1 1
        7 SETUPVAL                         R1 1
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R1 R2 K1 ["warn"]
       11 LOADK                            R2 K2 ["The ReactIs.isConcurrentMode() alias has been deprecated, and will be removed in React 18+."]
       12 CALL                             R1 1 0
       13 LOADB                            R1 0
       14 RETURN                           R1 1

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
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["ReactGlobals"]
        9 CALL                             R1 1 1
       10 GETIMPORT                        R2 K4 [require]
       12 GETTABLEKS                       R3 R0 K6 ["Shared"]
       14 CALL                             R2 1 1
       15 GETTABLEKS                       R2 R2 K7 ["console"]
       17 NEWTABLE                         R3 32 0
       19 GETIMPORT                        R4 K4 [require]
       21 GETTABLEKS                       R5 R0 K6 ["Shared"]
       23 CALL                             R4 1 1
       24 GETTABLEKS                       R4 R4 K8 ["ReactSymbols"]
       26 GETTABLEKS                       R5 R4 K9 ["REACT_CONTEXT_TYPE"]
       28 GETTABLEKS                       R6 R4 K10 ["REACT_ELEMENT_TYPE"]
       30 GETTABLEKS                       R7 R4 K11 ["REACT_FORWARD_REF_TYPE"]
       32 GETTABLEKS                       R8 R4 K12 ["REACT_FRAGMENT_TYPE"]
       34 GETTABLEKS                       R9 R4 K13 ["REACT_LAZY_TYPE"]
       36 GETTABLEKS                       R10 R4 K14 ["REACT_MEMO_TYPE"]
       38 GETTABLEKS                       R11 R4 K15 ["REACT_PORTAL_TYPE"]
       40 GETTABLEKS                       R12 R4 K16 ["REACT_PROFILER_TYPE"]
       42 GETTABLEKS                       R13 R4 K17 ["REACT_PROVIDER_TYPE"]
       44 GETTABLEKS                       R14 R4 K18 ["REACT_STRICT_MODE_TYPE"]
       46 GETTABLEKS                       R15 R4 K19 ["REACT_SUSPENSE_TYPE"]
       48 GETTABLEKS                       R16 R4 K20 ["REACT_SUSPENSE_LIST_TYPE"]
       50 GETIMPORT                        R17 K4 [require]
       52 GETTABLEKS                       R18 R0 K6 ["Shared"]
       54 CALL                             R17 1 1
       55 GETTABLEKS                       R17 R17 K21 ["isValidElementType"]
       57 GETTABLEKS                       R18 R4 K22 ["REACT_BINDING_TYPE"]
       59 GETIMPORT                        R19 K4 [require]
       61 GETTABLEKS                       R20 R0 K23 ["SafeFlags"]
       63 CALL                             R19 1 1
       64 GETTABLEKS                       R20 R19 K24 ["createGetFFlag"]
       66 LOADK                            R21 K25 ["ReactIsProtectedTypeOf"]
       67 LOADB                            R22 0
       68 CALL                             R20 2 1
       69 CALL                             R20 0 1
       70 DUPCLOSURE                       R21 K26 [PROTO_1]
       71 CAPTURE                          VAL R20
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R8
       74 CAPTURE                          VAL R12
       75 CAPTURE                          VAL R14
       76 CAPTURE                          VAL R15
       77 CAPTURE                          VAL R16
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R7
       80 CAPTURE                          VAL R9
       81 CAPTURE                          VAL R10
       82 CAPTURE                          VAL R13
       83 CAPTURE                          VAL R11
       84 CAPTURE                          VAL R18
       85 SETTABLEKS                       R21 R3 K27 ["typeOf"]
       87 SETTABLEKS                       R5 R3 K28 ["ContextConsumer"]
       89 SETTABLEKS                       R13 R3 K29 ["ContextProvider"]
       91 SETTABLEKS                       R6 R3 K30 ["Element"]
       93 SETTABLEKS                       R7 R3 K31 ["ForwardRef"]
       95 SETTABLEKS                       R8 R3 K32 ["Fragment"]
       97 SETTABLEKS                       R9 R3 K33 ["Lazy"]
       99 SETTABLEKS                       R10 R3 K34 ["Memo"]
      101 SETTABLEKS                       R11 R3 K35 ["Portal"]
      103 SETTABLEKS                       R12 R3 K36 ["Profiler"]
      105 SETTABLEKS                       R14 R3 K37 ["StrictMode"]
      107 SETTABLEKS                       R15 R3 K38 ["Suspense"]
      109 GETTABLEKS                       R22 R4 K22 ["REACT_BINDING_TYPE"]
      111 SETTABLEKS                       R22 R3 K39 ["Binding"]
      113 SETTABLEKS                       R17 R3 K21 ["isValidElementType"]
      115 LOADB                            R22 0
      116 LOADB                            R23 0
      117 NEWCLOSURE                       R24 P1
      118 CAPTURE                          VAL R1
      119 CAPTURE                          REF R22
      120 CAPTURE                          VAL R2
      121 SETTABLEKS                       R24 R3 K40 ["isAsyncMode"]
      123 NEWCLOSURE                       R25 P2
      124 CAPTURE                          VAL R1
      125 CAPTURE                          REF R23
      126 CAPTURE                          VAL R2
      127 SETTABLEKS                       R25 R3 K41 ["isConcurrentMode"]
      129 DUPCLOSURE                       R26 K42 [PROTO_4]
      130 CAPTURE                          VAL R21
      131 CAPTURE                          VAL R5
      132 SETTABLEKS                       R26 R3 K43 ["isContextConsumer"]
      134 DUPCLOSURE                       R27 K44 [PROTO_5]
      135 CAPTURE                          VAL R21
      136 CAPTURE                          VAL R13
      137 SETTABLEKS                       R27 R3 K45 ["isContextProvider"]
      139 DUPCLOSURE                       R28 K46 [PROTO_6]
      140 CAPTURE                          VAL R6
      141 SETTABLEKS                       R28 R3 K47 ["isElement"]
      143 DUPCLOSURE                       R29 K48 [PROTO_7]
      144 CAPTURE                          VAL R21
      145 CAPTURE                          VAL R7
      146 SETTABLEKS                       R29 R3 K49 ["isForwardRef"]
      148 DUPCLOSURE                       R30 K50 [PROTO_8]
      149 CAPTURE                          VAL R21
      150 CAPTURE                          VAL R8
      151 SETTABLEKS                       R30 R3 K51 ["isFragment"]
      153 DUPCLOSURE                       R31 K52 [PROTO_9]
      154 CAPTURE                          VAL R21
      155 CAPTURE                          VAL R9
      156 SETTABLEKS                       R31 R3 K53 ["isLazy"]
      158 DUPCLOSURE                       R32 K54 [PROTO_10]
      159 CAPTURE                          VAL R21
      160 CAPTURE                          VAL R10
      161 SETTABLEKS                       R32 R3 K55 ["isMemo"]
      163 DUPCLOSURE                       R33 K56 [PROTO_11]
      164 CAPTURE                          VAL R21
      165 CAPTURE                          VAL R11
      166 SETTABLEKS                       R33 R3 K57 ["isPortal"]
      168 DUPCLOSURE                       R34 K58 [PROTO_12]
      169 CAPTURE                          VAL R21
      170 CAPTURE                          VAL R12
      171 SETTABLEKS                       R34 R3 K59 ["isProfiler"]
      173 DUPCLOSURE                       R35 K60 [PROTO_13]
      174 CAPTURE                          VAL R21
      175 CAPTURE                          VAL R14
      176 SETTABLEKS                       R35 R3 K61 ["isStrictMode"]
      178 DUPCLOSURE                       R36 K62 [PROTO_14]
      179 CAPTURE                          VAL R21
      180 CAPTURE                          VAL R15
      181 SETTABLEKS                       R36 R3 K63 ["isSuspense"]
      183 DUPCLOSURE                       R37 K64 [PROTO_15]
      184 CAPTURE                          VAL R21
      185 CAPTURE                          VAL R18
      186 SETTABLEKS                       R37 R3 K65 ["isBinding"]
      188 CLOSEUPVALS                      R22
      189 RETURN                           R3 1
