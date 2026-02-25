PROTO_0:
        0 JUMPIFNOTEQKS                    R1 K0 ["_currentValue"] ; [+5]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["_currentValue"]
        5 RETURN                           R2 1
        6 JUMPIFNOTEQKS                    R1 K1 ["_currentValue2"] ; [+5]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K1 ["_currentValue2"]
       11 RETURN                           R2 1
       12 JUMPIFNOTEQKS                    R1 K2 ["_threadCount"] ; [+5]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R2 R3 K2 ["_threadCount"]
       17 RETURN                           R2 1
       18 JUMPIFNOTEQKS                    R1 K3 ["displayName"] ; [+5]
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R2 R3 K3 ["displayName"]
       23 RETURN                           R2 1
       24 LOADNIL                          R2
       25 RETURN                           R2 1

PROTO_1:
        0 JUMPIFNOTEQKS                    R1 K0 ["_currentValue"] ; [+5]
        2 GETUPVAL                         R3 0
        3 SETTABLEKS                       R2 R3 K0 ["_currentValue"]
        5 RETURN                           R0 0
        6 JUMPIFNOTEQKS                    R1 K1 ["_currentValue2"] ; [+5]
        8 GETUPVAL                         R3 0
        9 SETTABLEKS                       R2 R3 K1 ["_currentValue2"]
       11 RETURN                           R0 0
       12 JUMPIFNOTEQKS                    R1 K2 ["_threadCount"] ; [+5]
       14 GETUPVAL                         R3 0
       15 SETTABLEKS                       R2 R3 K2 ["_threadCount"]
       17 RETURN                           R0 0
       18 JUMPIFNOTEQKS                    R1 K3 ["displayName"] ; [+14]
       20 GETUPVAL                         R3 1
       21 JUMPIF                           R3 ; [+11]
       22 GETUPVAL                         R4 2
       23 GETTABLEKS                       R3 R4 K4 ["warn"]
       25 LOADK                            R5 K5 ["Setting `displayName` on Context.Consumer has no effect. "]
       26 LOADK                            R6 K6 ["You should set it directly on the context with Context.displayName = "]
       27 MOVE                             R7 R2
       28 LOADK                            R8 K7 ["."]
       29 CONCAT                           R4 R5 R8
       30 CALL                             R3 1 0
       31 LOADB                            R3 1
       32 SETUPVAL                         R3 1
       33 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R2 16 0
        2 GETUPVAL                         R3 0
        3 SETTABLEKS                       R3 R2 K0 ["$$typeof"]
        5 SETTABLEKS                       R1 R2 K1 ["_calculateChangedBits"]
        7 SETTABLEKS                       R0 R2 K2 ["_currentValue"]
        9 SETTABLEKS                       R0 R2 K3 ["_currentValue2"]
       11 LOADN                            R3 0
       12 SETTABLEKS                       R3 R2 K4 ["_threadCount"]
       14 LOADNIL                          R3
       15 SETTABLEKS                       R3 R2 K5 ["Provider"]
       17 LOADNIL                          R3
       18 SETTABLEKS                       R3 R2 K6 ["Consumer"]
       20 LOADNIL                          R3
       21 SETTABLEKS                       R3 R2 K7 ["displayName"]
       23 LOADNIL                          R3
       24 SETTABLEKS                       R3 R2 K8 ["_currentRenderer"]
       26 LOADNIL                          R3
       27 SETTABLEKS                       R3 R2 K9 ["_currentRenderer2"]
       29 NEWTABLE                         R3 2 0
       31 GETUPVAL                         R4 1
       32 SETTABLEKS                       R4 R3 K0 ["$$typeof"]
       34 SETTABLEKS                       R2 R3 K10 ["_context"]
       36 SETTABLEKS                       R3 R2 K5 ["Provider"]
       38 LOADB                            R3 0
       39 GETIMPORT                        R5 K12 [_G]
       41 GETTABLEKS                       R4 R5 K13 ["__DEV__"]
       43 JUMPIFNOT                        R4 ; [+31]
       44 NEWTABLE                         R4 4 0
       46 GETUPVAL                         R5 0
       47 SETTABLEKS                       R5 R4 K0 ["$$typeof"]
       49 SETTABLEKS                       R2 R4 K10 ["_context"]
       51 GETTABLEKS                       R5 R2 K1 ["_calculateChangedBits"]
       53 SETTABLEKS                       R5 R4 K1 ["_calculateChangedBits"]
       55 DUPTABLE                         R7 K16 [{"__index", "__newindex"}]
       56 NEWCLOSURE                       R8 P0
       57 CAPTURE                          VAL R2
       58 SETTABLEKS                       R8 R7 K14 ["__index"]
       60 NEWCLOSURE                       R8 P1
       61 CAPTURE                          VAL R2
       62 CAPTURE                          REF R3
       63 CAPTURE                          UPVAL U2
       64 SETTABLEKS                       R8 R7 K15 ["__newindex"]
       66 FASTCALL2                        SETMETATABLE R4 R7 ; [+4]
       68 MOVE                             R6 R4
       69 GETIMPORT                        R5 K18 [setmetatable]
       71 CALL                             R5 2 0
       72 SETTABLEKS                       R4 R2 K6 ["Consumer"]
       74 JUMP                             ; [+2]
       75 SETTABLEKS                       R2 R2 K6 ["Consumer"]
       77 GETIMPORT                        R5 K12 [_G]
       79 GETTABLEKS                       R4 R5 K13 ["__DEV__"]
       81 JUMPIFNOT                        R4 ; [+6]
       82 LOADNIL                          R4
       83 SETTABLEKS                       R4 R2 K8 ["_currentRenderer"]
       85 LOADNIL                          R4
       86 SETTABLEKS                       R4 R2 K9 ["_currentRenderer2"]
       88 CLOSEUPVALS                      R3
       89 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Shared"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["console"]
       14 GETIMPORT                        R4 K4 [require]
       16 GETTABLEKS                       R5 R0 K5 ["Shared"]
       18 CALL                             R4 1 1
       19 GETTABLEKS                       R3 R4 K7 ["ReactSymbols"]
       21 GETTABLEKS                       R4 R3 K8 ["REACT_PROVIDER_TYPE"]
       23 GETTABLEKS                       R5 R3 K9 ["REACT_CONTEXT_TYPE"]
       25 NEWTABLE                         R6 1 0
       27 DUPCLOSURE                       R7 K10 [PROTO_2]
       28 CAPTURE                          VAL R5
       29 CAPTURE                          VAL R4
       30 CAPTURE                          VAL R2
       31 SETTABLEKS                       R7 R6 K11 ["createContext"]
       33 RETURN                           R6 1
