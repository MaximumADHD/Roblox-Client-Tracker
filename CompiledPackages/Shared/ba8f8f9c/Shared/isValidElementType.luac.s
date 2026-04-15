PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["string"] ; [+3]
        7 JUMPIFNOTEQKS                    R1 K3 ["function"] ; [+3]
        9 LOADB                            R2 1
       10 RETURN                           R2 1
       11 GETUPVAL                         R2 0
       12 JUMPIFEQ                         R0 R2 ; [+16]
       14 GETUPVAL                         R2 1
       15 JUMPIFEQ                         R0 R2 ; [+13]
       17 GETUPVAL                         R2 2
       18 JUMPIFEQ                         R0 R2 ; [+10]
       20 GETUPVAL                         R2 3
       21 JUMPIFEQ                         R0 R2 ; [+7]
       23 GETUPVAL                         R2 4
       24 JUMPIFEQ                         R0 R2 ; [+4]
       26 GETUPVAL                         R2 5
       27 JUMPIFNOTEQ                      R0 R2 ; [+3]
       29 LOADB                            R2 1
       30 RETURN                           R2 1
       31 JUMPIFNOTEQKS                    R1 K4 ["table"] ; [+47]
       33 GETTABLEKS                       R2 R0 K5 ["isReactComponent"]
       35 JUMPIFNOT                        R2 ; [+2]
       36 LOADB                            R2 1
       37 RETURN                           R2 1
       38 GETTABLEKS                       R2 R0 K6 ["$$typeof"]
       40 GETUPVAL                         R3 6
       41 JUMPIFEQ                         R2 R3 ; [+35]
       43 GETTABLEKS                       R2 R0 K6 ["$$typeof"]
       45 GETUPVAL                         R3 7
       46 JUMPIFEQ                         R2 R3 ; [+30]
       48 GETTABLEKS                       R2 R0 K6 ["$$typeof"]
       50 GETUPVAL                         R3 8
       51 JUMPIFEQ                         R2 R3 ; [+25]
       53 GETTABLEKS                       R2 R0 K6 ["$$typeof"]
       55 GETUPVAL                         R3 9
       56 JUMPIFEQ                         R2 R3 ; [+20]
       58 GETTABLEKS                       R2 R0 K6 ["$$typeof"]
       60 GETUPVAL                         R3 10
       61 JUMPIFEQ                         R2 R3 ; [+15]
       63 GETTABLEKS                       R2 R0 K6 ["$$typeof"]
       65 GETUPVAL                         R3 11
       66 JUMPIFEQ                         R2 R3 ; [+10]
       68 GETTABLEKS                       R2 R0 K6 ["$$typeof"]
       70 GETUPVAL                         R3 12
       71 JUMPIFEQ                         R2 R3 ; [+5]
       73 GETTABLEN                        R2 R0 1
       74 GETUPVAL                         R3 13
       75 JUMPIFNOTEQ                      R2 R3 ; [+3]
       77 LOADB                            R2 1
       78 RETURN                           R2 1
       79 LOADB                            R2 0
       80 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["ReactSymbols"]
        9 CALL                             R0 1 1
       10 GETTABLEKS                       R1 R0 K6 ["REACT_CONTEXT_TYPE"]
       12 GETTABLEKS                       R2 R0 K7 ["REACT_FORWARD_REF_TYPE"]
       14 GETTABLEKS                       R3 R0 K8 ["REACT_FRAGMENT_TYPE"]
       16 GETTABLEKS                       R4 R0 K9 ["REACT_PROFILER_TYPE"]
       18 GETTABLEKS                       R5 R0 K10 ["REACT_PROVIDER_TYPE"]
       20 GETTABLEKS                       R6 R0 K11 ["REACT_DEBUG_TRACING_MODE_TYPE"]
       22 GETTABLEKS                       R7 R0 K12 ["REACT_STRICT_MODE_TYPE"]
       24 GETTABLEKS                       R8 R0 K13 ["REACT_SUSPENSE_TYPE"]
       26 GETTABLEKS                       R9 R0 K14 ["REACT_MEMO_TYPE"]
       28 GETTABLEKS                       R10 R0 K15 ["REACT_LAZY_TYPE"]
       30 GETTABLEKS                       R11 R0 K16 ["REACT_FUNDAMENTAL_TYPE"]
       32 GETTABLEKS                       R12 R0 K17 ["REACT_BLOCK_TYPE"]
       34 GETTABLEKS                       R13 R0 K18 ["REACT_SERVER_BLOCK_TYPE"]
       36 GETTABLEKS                       R14 R0 K19 ["REACT_LEGACY_HIDDEN_TYPE"]
       38 DUPCLOSURE                       R15 K20 [PROTO_0]
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R6
       42 CAPTURE                          VAL R7
       43 CAPTURE                          VAL R8
       44 CAPTURE                          VAL R14
       45 CAPTURE                          VAL R10
       46 CAPTURE                          VAL R9
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R11
       51 CAPTURE                          VAL R12
       52 CAPTURE                          VAL R13
       53 RETURN                           R15 1
