PROTO_0:
        0 NEWTABLE                         R1 4 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["new"]
        5 LOADK                            R3 K1 ["[DMNetworking] [Callback]"]
        6 GETTABLEKS                       R4 R0 K2 ["logLevel"]
        8 CALL                             R2 2 1
        9 SETTABLEKS                       R2 R1 K3 ["_logger"]
       11 GETTABLEKS                       R2 R0 K4 ["identity"]
       13 JUMPIF                           R2 ; [+5]
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R2 R2 K5 ["Identity"]
       17 GETTABLEKS                       R2 R2 K6 ["None"]
       19 SETTABLEKS                       R2 R1 K7 ["_identity"]
       21 NEWTABLE                         R2 0 0
       23 SETTABLEKS                       R2 R1 K8 ["_eventCallbacks"]
       25 NEWTABLE                         R2 0 0
       27 SETTABLEKS                       R2 R1 K9 ["_invokeCallbacks"]
       29 GETUPVAL                         R4 2
       30 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       32 MOVE                             R3 R1
       33 GETIMPORT                        R2 K11 [setmetatable]
       35 CALL                             R2 2 0
       36 RETURN                           R1 1

PROTO_1:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["_logger"]
        4 LOADK                            R3 K1 ["[{key}] received event"]
        5 DUPTABLE                         R4 K3 [{"key"}]
        6 GETUPVAL                         R5 1
        7 SETTABLEKS                       R5 R4 K2 ["key"]
        9 NAMECALL                         R1 R1 K4 ["info"]
       11 CALL                             R1 3 0
       12 GETUPVAL                         R1 2
       13 MOVE                             R2 R0
       14 GETVARARGS                       R3 -1
       15 CALL                             R1 -1 0
       16 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K2 [table.find]
        2 GETUPVAL                         R1 0
        3 GETUPVAL                         R2 1
        4 CALL                             R0 2 1
        5 JUMPIFNOT                        R0 ; [+11]
        6 GETUPVAL                         R1 0
        7 GETUPVAL                         R3 0
        8 GETUPVAL                         R5 0
        9 LENGTH                           R4 R5
       10 GETTABLE                         R2 R3 R4
       11 SETTABLE                         R2 R1 R0
       12 GETUPVAL                         R1 0
       13 GETUPVAL                         R3 0
       14 LENGTH                           R2 R3
       15 LOADNIL                          R3
       16 SETTABLE                         R3 R1 R2
       17 GETUPVAL                         R2 0
       18 LENGTH                           R1 R2
       19 JUMPIFNOTEQKN                    R1 K3 [0] ; [+15]
       21 GETUPVAL                         R2 2
       22 GETTABLEKS                       R2 R2 K4 ["_eventCallbacks"]
       24 GETUPVAL                         R3 3
       25 GETTABLE                         R1 R2 R3
       26 GETUPVAL                         R2 0
       27 JUMPIFNOTEQ                      R1 R2 ; [+7]
       29 GETUPVAL                         R1 2
       30 GETTABLEKS                       R1 R1 K4 ["_eventCallbacks"]
       32 GETUPVAL                         R2 3
       33 LOADNIL                          R3
       34 SETTABLE                         R3 R1 R2
       35 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 NEWTABLE                         R4 0 2
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R5 R5 K0 ["TAG_EVENT"]
        6 MOVE                             R6 R1
        7 SETLIST                          R4 R5 2 [1]
        9 CALL                             R3 1 1
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R1
       13 CAPTURE                          VAL R2
       14 GETTABLEKS                       R6 R0 K1 ["_eventCallbacks"]
       16 GETTABLE                         R5 R6 R3
       17 JUMPIF                           R5 ; [+5]
       18 NEWTABLE                         R5 0 0
       20 GETTABLEKS                       R6 R0 K1 ["_eventCallbacks"]
       22 SETTABLE                         R5 R6 R3
       23 FASTCALL2K                       ASSERT R5 K2 ; [+5]
       25 MOVE                             R7 R5
       26 LOADK                            R8 K2 ["Failed to get callback list"]
       27 GETIMPORT                        R6 K4 [assert]
       29 CALL                             R6 2 0
       30 FASTCALL2                        TABLE_INSERT R5 R4 ; [+5]
       32 MOVE                             R7 R5
       33 MOVE                             R8 R4
       34 GETIMPORT                        R6 K7 [table.insert]
       36 CALL                             R6 2 0
       37 NEWCLOSURE                       R6 P1
       38 CAPTURE                          REF R5
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R0
       41 CAPTURE                          VAL R3
       42 CLOSEUPVALS                      R5
       43 RETURN                           R6 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["_identity"]
        2 RETURN                           R1 1

PROTO_5:
        0 GETIMPORT                        R2 K2 [table.clone]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 LOADB                            R3 1
        5 SETTABLEKS                       R3 R2 K3 ["_isDerived"]
        7 GETTABLEKS                       R3 R1 K4 ["logLevel"]
        9 JUMPIFEQKNIL                     R3 ; [+15]
       11 GETIMPORT                        R3 K2 [table.clone]
       13 GETTABLEKS                       R4 R0 K5 ["_logger"]
       15 CALL                             R3 1 1
       16 SETTABLEKS                       R3 R2 K5 ["_logger"]
       18 GETTABLEKS                       R3 R2 K5 ["_logger"]
       20 GETTABLEKS                       R5 R1 K4 ["logLevel"]
       22 NAMECALL                         R3 R3 K6 ["setMinLevel"]
       24 CALL                             R3 2 0
       25 RETURN                           R2 1

PROTO_6:
        0 PREPVARARGS                      3
        1 JUMPIFNOTEQKNIL                  R2 ; [+2]
        3 LOADB                            R4 0 +1
        4 LOADB                            R4 1
        5 LOADK                            R5 K0 ["Fire requires a target id for %*"]
        6 MOVE                             R7 R1
        7 NAMECALL                         R5 R5 K1 ["format"]
        9 CALL                             R5 2 1
       10 FASTCALL2                        ASSERT R4 R5 ; [+3]
       12 GETIMPORT                        R3 K3 [assert]
       14 CALL                             R3 2 0
       15 GETUPVAL                         R3 0
       16 NEWTABLE                         R4 0 2
       18 GETUPVAL                         R5 1
       19 GETTABLEKS                       R5 R5 K4 ["TAG_EVENT"]
       21 MOVE                             R6 R1
       22 SETLIST                          R4 R5 2 [1]
       24 CALL                             R3 1 1
       25 NEWTABLE                         R4 0 0
       27 GETVARARGS                       R5 -1
       28 SETLIST                          R4 R5 -1 [1]
       30 GETTABLEKS                       R5 R0 K5 ["_logger"]
       32 LOADK                            R7 K6 ["[{key}] sending event [args: {args}]"]
       33 DUPTABLE                         R8 K9 [{"key", "args"}]
       34 SETTABLEKS                       R1 R8 K7 ["key"]
       36 SETTABLEKS                       R4 R8 K8 ["args"]
       38 NAMECALL                         R5 R5 K10 ["info"]
       40 CALL                             R5 3 0
       41 GETTABLEKS                       R6 R0 K11 ["_eventCallbacks"]
       43 GETTABLE                         R5 R6 R3
       44 JUMPIF                           R5 ; [+1]
       45 RETURN                           R0 0
       46 GETIMPORT                        R6 K14 [table.clone]
       48 MOVE                             R7 R5
       49 CALL                             R6 1 3
       50 FORGPREP                         R6
       51 GETIMPORT                        R11 K17 [task.spawn]
       53 MOVE                             R12 R10
       54 GETTABLEKS                       R13 R0 K18 ["_identity"]
       56 GETVARARGS                       R14 -1
       57 CALL                             R11 -1 0
       58 FORGLOOP                         R6 2 ; [-8]
       60 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_invokeCallbacks"]
        3 GETUPVAL                         R2 1
        4 GETTABLE                         R0 R1 R2
        5 GETUPVAL                         R1 2
        6 JUMPIFNOTEQ                      R0 R1 ; [+7]
        8 GETUPVAL                         R0 0
        9 GETTABLEKS                       R0 R0 K0 ["_invokeCallbacks"]
       11 GETUPVAL                         R1 1
       12 LOADNIL                          R2
       13 SETTABLE                         R2 R0 R1
       14 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R3 0
        1 NEWTABLE                         R4 0 2
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R5 R5 K0 ["TAG_INVOKE"]
        6 MOVE                             R6 R1
        7 SETLIST                          R4 R5 2 [1]
        9 CALL                             R3 1 1
       10 GETTABLEKS                       R7 R0 K1 ["_invokeCallbacks"]
       12 GETTABLE                         R6 R7 R3
       13 NOT                              R5 R6
       14 LOADK                            R6 K2 ["Invoke handler for key %* already exists"]
       15 MOVE                             R8 R1
       16 NAMECALL                         R6 R6 K3 ["format"]
       18 CALL                             R6 2 1
       19 FASTCALL2                        ASSERT R5 R6 ; [+3]
       21 GETIMPORT                        R4 K5 [assert]
       23 CALL                             R4 2 0
       24 GETTABLEKS                       R4 R0 K1 ["_invokeCallbacks"]
       26 SETTABLE                         R2 R4 R3
       27 NEWCLOSURE                       R4 P0
       28 CAPTURE                          VAL R0
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R2
       31 RETURN                           R4 1

PROTO_9:
        0 PREPVARARGS                      3
        1 JUMPIFNOTEQKNIL                  R2 ; [+2]
        3 LOADB                            R4 0 +1
        4 LOADB                            R4 1
        5 LOADK                            R5 K0 ["InvokeAsync requires a target id for %*"]
        6 MOVE                             R7 R1
        7 NAMECALL                         R5 R5 K1 ["format"]
        9 CALL                             R5 2 1
       10 FASTCALL2                        ASSERT R4 R5 ; [+3]
       12 GETIMPORT                        R3 K3 [assert]
       14 CALL                             R3 2 0
       15 GETUPVAL                         R3 0
       16 NEWTABLE                         R4 0 2
       18 GETUPVAL                         R5 1
       19 GETTABLEKS                       R5 R5 K4 ["TAG_INVOKE"]
       21 MOVE                             R6 R1
       22 SETLIST                          R4 R5 2 [1]
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R5 R0 K5 ["_invokeCallbacks"]
       27 GETTABLE                         R4 R5 R3
       28 LOADK                            R7 K6 ["No invoke callback found for key: %*"]
       29 MOVE                             R9 R1
       30 NAMECALL                         R7 R7 K1 ["format"]
       32 CALL                             R7 2 1
       33 FASTCALL2                        ASSERT R4 R7 ; [+4]
       35 MOVE                             R6 R4
       36 GETIMPORT                        R5 K3 [assert]
       38 CALL                             R5 2 0
       39 NEWTABLE                         R5 0 0
       41 GETVARARGS                       R6 -1
       42 SETLIST                          R5 R6 -1 [1]
       44 GETTABLEKS                       R6 R0 K7 ["_logger"]
       46 LOADK                            R8 K8 ["[{key}] sending invoke [args: {args}]"]
       47 DUPTABLE                         R9 K11 [{"key", "args"}]
       48 SETTABLEKS                       R1 R9 K9 ["key"]
       50 SETTABLEKS                       R5 R9 K10 ["args"]
       52 NAMECALL                         R6 R6 K12 ["info"]
       54 CALL                             R6 3 0
       55 GETIMPORT                        R6 K15 [table.pack]
       57 MOVE                             R8 R4
       58 GETTABLEKS                       R9 R0 K16 ["_identity"]
       60 GETVARARGS                       R10 -1
       61 FASTPCALL                        pcall 2 ; [+2]
       62 GETIMPORT                        R7 K18 [pcall]
       64 CALL                             R7 -1 -1
       65 CALL                             R6 -1 1
       66 GETTABLEKS                       R7 R0 K7 ["_logger"]
       68 LOADK                            R9 K19 ["[{key}] received invoke response [results: {results}]"]
       69 DUPTABLE                         R10 K21 [{"key", "results"}]
       70 SETTABLEKS                       R1 R10 K9 ["key"]
       72 SETTABLEKS                       R6 R10 K20 ["results"]
       74 NAMECALL                         R7 R7 K12 ["info"]
       76 CALL                             R7 3 0
       77 GETTABLEN                        R7 R6 1
       78 JUMPIF                           R7 ; [+5]
       79 GETIMPORT                        R7 K23 [error]
       81 GETTABLEN                        R8 R6 2
       82 LOADN                            R9 0
       83 CALL                             R7 2 0
       84 LOADN                            R9 2
       85 GETTABLEKS                       R10 R6 K24 ["n"]
       87 FASTCALL3                        TABLE_UNPACK R6 R9 R10
       89 MOVE                             R8 R6
       90 GETIMPORT                        R7 K26 [table.unpack]
       92 CALL                             R7 3 -1
       93 RETURN                           R7 -1

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["_isDerived"]
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R1 R0 K1 ["_eventCallbacks"]
        6 LOADNIL                          R2
        7 LOADNIL                          R3
        8 FORGPREP                         R1
        9 FASTCALL2K                       ASSERT R5 K2 ; [+5]
       11 MOVE                             R7 R5
       12 LOADK                            R8 K2 ["Failed to get callback list"]
       13 GETIMPORT                        R6 K4 [assert]
       15 CALL                             R6 2 0
       16 GETIMPORT                        R6 K7 [table.clear]
       18 MOVE                             R7 R5
       19 CALL                             R6 1 0
       20 FORGLOOP                         R1 2 ; [-12]
       22 GETIMPORT                        R1 K7 [table.clear]
       24 GETTABLEKS                       R2 R0 K1 ["_eventCallbacks"]
       26 CALL                             R1 1 0
       27 GETIMPORT                        R1 K7 [table.clear]
       29 GETTABLEKS                       R2 R0 K8 ["_invokeCallbacks"]
       31 CALL                             R1 1 0
       32 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DMNetworking"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Utils"]
       11 GETTABLEKS                       R2 R2 K7 ["Logger"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Types"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K6 ["Utils"]
       23 GETTABLEKS                       R4 R4 K9 ["makeKey"]
       25 CALL                             R3 1 1
       26 NEWTABLE                         R4 16 0
       28 SETTABLEKS                       R4 R4 K10 ["__index"]
       30 DUPCLOSURE                       R5 K11 [PROTO_0]
       31 CAPTURE                          VAL R1
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R4
       34 SETTABLEKS                       R5 R4 K12 ["new"]
       36 DUPCLOSURE                       R5 K13 [PROTO_3]
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R2
       39 SETTABLEKS                       R5 R4 K14 ["OnFire"]
       41 DUPCLOSURE                       R5 K15 [PROTO_4]
       42 SETTABLEKS                       R5 R4 K16 ["GetIdentity"]
       44 DUPCLOSURE                       R5 K17 [PROTO_5]
       45 SETTABLEKS                       R5 R4 K18 ["WithConfig"]
       47 DUPCLOSURE                       R5 K19 [PROTO_6]
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R2
       50 SETTABLEKS                       R5 R4 K20 ["Fire"]
       52 DUPCLOSURE                       R5 K21 [PROTO_8]
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R2
       55 SETTABLEKS                       R5 R4 K22 ["OnInvoke"]
       57 DUPCLOSURE                       R5 K23 [PROTO_9]
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R2
       60 SETTABLEKS                       R5 R4 K24 ["InvokeAsync"]
       62 DUPCLOSURE                       R5 K25 [PROTO_10]
       63 SETTABLEKS                       R5 R4 K26 ["Destroy"]
       65 RETURN                           R4 1
