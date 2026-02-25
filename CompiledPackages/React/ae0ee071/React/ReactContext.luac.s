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
       39 GETUPVAL                         R5 2
       40 GETTABLEKS                       R4 R5 K11 ["__DEV__"]
       42 JUMPIFNOT                        R4 ; [+31]
       43 NEWTABLE                         R4 4 0
       45 GETUPVAL                         R5 0
       46 SETTABLEKS                       R5 R4 K0 ["$$typeof"]
       48 SETTABLEKS                       R2 R4 K10 ["_context"]
       50 GETTABLEKS                       R5 R2 K1 ["_calculateChangedBits"]
       52 SETTABLEKS                       R5 R4 K1 ["_calculateChangedBits"]
       54 DUPTABLE                         R7 K14 [{"__index", "__newindex"}]
       55 NEWCLOSURE                       R8 P0
       56 CAPTURE                          VAL R2
       57 SETTABLEKS                       R8 R7 K12 ["__index"]
       59 NEWCLOSURE                       R8 P1
       60 CAPTURE                          VAL R2
       61 CAPTURE                          REF R3
       62 CAPTURE                          UPVAL U3
       63 SETTABLEKS                       R8 R7 K13 ["__newindex"]
       65 FASTCALL2                        SETMETATABLE R4 R7 ; [+4]
       67 MOVE                             R6 R4
       68 GETIMPORT                        R5 K16 [setmetatable]
       70 CALL                             R5 2 0
       71 SETTABLEKS                       R4 R2 K6 ["Consumer"]
       73 JUMP                             ; [+2]
       74 SETTABLEKS                       R2 R2 K6 ["Consumer"]
       76 GETUPVAL                         R5 2
       77 GETTABLEKS                       R4 R5 K11 ["__DEV__"]
       79 JUMPIFNOT                        R4 ; [+6]
       80 LOADNIL                          R4
       81 SETTABLEKS                       R4 R2 K8 ["_currentRenderer"]
       83 LOADNIL                          R4
       84 SETTABLEKS                       R4 R2 K9 ["_currentRenderer2"]
       86 CLOSEUPVALS                      R3
       87 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["ReactGlobals"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["Shared"]
       16 CALL                             R2 1 1
       17 GETTABLEKS                       R3 R2 K7 ["console"]
       19 GETIMPORT                        R5 K4 [require]
       21 GETTABLEKS                       R6 R0 K6 ["Shared"]
       23 CALL                             R5 1 1
       24 GETTABLEKS                       R4 R5 K8 ["ReactSymbols"]
       26 GETTABLEKS                       R5 R4 K9 ["REACT_PROVIDER_TYPE"]
       28 GETTABLEKS                       R6 R4 K10 ["REACT_CONTEXT_TYPE"]
       30 NEWTABLE                         R7 1 0
       32 DUPCLOSURE                       R8 K11 [PROTO_2]
       33 CAPTURE                          VAL R6
       34 CAPTURE                          VAL R5
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R3
       37 SETTABLEKS                       R8 R7 K12 ["createContext"]
       39 RETURN                           R7 1
