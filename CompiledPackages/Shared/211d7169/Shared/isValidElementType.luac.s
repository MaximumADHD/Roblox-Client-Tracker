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
       12 JUMPIFEQ                         R0 R2 ; [+13]
       14 GETUPVAL                         R2 1
       15 JUMPIFEQ                         R0 R2 ; [+10]
       17 GETUPVAL                         R2 2
       18 JUMPIFEQ                         R0 R2 ; [+7]
       20 GETUPVAL                         R2 3
       21 JUMPIFEQ                         R0 R2 ; [+4]
       23 GETUPVAL                         R2 4
       24 JUMPIFNOTEQ                      R0 R2 ; [+3]
       26 LOADB                            R2 1
       27 RETURN                           R2 1
       28 JUMPIFNOTEQKS                    R1 K4 ["table"] ; [+47]
       30 GETTABLEKS                       R2 R0 K5 ["isReactComponent"]
       32 JUMPIFNOT                        R2 ; [+2]
       33 LOADB                            R2 1
       34 RETURN                           R2 1
       35 GETTABLEKS                       R2 R0 K6 ["$$typeof"]
       37 GETUPVAL                         R3 5
       38 JUMPIFEQ                         R2 R3 ; [+35]
       40 GETTABLEKS                       R2 R0 K6 ["$$typeof"]
       42 GETUPVAL                         R3 6
       43 JUMPIFEQ                         R2 R3 ; [+30]
       45 GETTABLEKS                       R2 R0 K6 ["$$typeof"]
       47 GETUPVAL                         R3 7
       48 JUMPIFEQ                         R2 R3 ; [+25]
       50 GETTABLEKS                       R2 R0 K6 ["$$typeof"]
       52 GETUPVAL                         R3 8
       53 JUMPIFEQ                         R2 R3 ; [+20]
       55 GETTABLEKS                       R2 R0 K6 ["$$typeof"]
       57 GETUPVAL                         R3 9
       58 JUMPIFEQ                         R2 R3 ; [+15]
       60 GETTABLEKS                       R2 R0 K6 ["$$typeof"]
       62 GETUPVAL                         R3 10
       63 JUMPIFEQ                         R2 R3 ; [+10]
       65 GETTABLEKS                       R2 R0 K6 ["$$typeof"]
       67 GETUPVAL                         R3 11
       68 JUMPIFEQ                         R2 R3 ; [+5]
       70 GETTABLEN                        R2 R0 1
       71 GETUPVAL                         R3 12
       72 JUMPIFNOTEQ                      R2 R3 ; [+3]
       74 LOADB                            R2 1
       75 RETURN                           R2 1
       76 LOADB                            R2 0
       77 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["ReactSymbols"]
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
       36 DUPCLOSURE                       R14 K19 [PROTO_0]
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R6
       40 CAPTURE                          VAL R7
       41 CAPTURE                          VAL R8
       42 CAPTURE                          VAL R10
       43 CAPTURE                          VAL R9
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R11
       48 CAPTURE                          VAL R12
       49 CAPTURE                          VAL R13
       50 RETURN                           R14 1
