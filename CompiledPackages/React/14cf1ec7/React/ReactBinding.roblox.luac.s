PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getValue"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["map"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_2:
        0 GETIMPORT                        R1 K2 [string.format]
        2 LOADK                            R2 K3 ["RoactBinding(%s)"]
        3 NAMECALL                         R4 R0 K4 ["getValue"]
        5 CALL                             R4 1 -1
        6 FASTCALL                         TOSTRING ; [+2]
        7 GETIMPORT                        R3 K6 [tostring]
        9 CALL                             R3 -1 1
       10 CALL                             R1 2 -1
       11 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R0 R4
        2 GETTABLEKS                       R2 R3 K0 ["update"]
        4 MOVE                             R3 R1
        5 CALL                             R2 1 -1
        6 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R0 R4
        2 GETTABLEKS                       R2 R3 K0 ["subscribe"]
        4 MOVE                             R3 R1
        5 CALL                             R2 1 -1
        6 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R0 R2
        2 NAMECALL                         R1 R1 K0 ["getValue"]
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["value"]
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["value"]
        3 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 2
        2 DUPTABLE                         R3 K2 [{"value", "subscribe"}]
        3 SETTABLEKS                       R0 R3 K0 ["value"]
        5 SETTABLEKS                       R1 R3 K1 ["subscribe"]
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          VAL R3
        9 CAPTURE                          VAL R2
       10 SETTABLEKS                       R4 R3 K3 ["update"]
       12 NEWCLOSURE                       R4 P1
       13 CAPTURE                          VAL R3
       14 SETTABLEKS                       R4 R3 K4 ["getValue"]
       16 LOADNIL                          R4
       17 GETUPVAL                         R6 1
       18 GETTABLEKS                       R5 R6 K5 ["__DEV__"]
       20 JUMPIFNOT                        R5 ; [+6]
       21 GETIMPORT                        R5 K8 [debug.traceback]
       23 LOADK                            R6 K9 ["Binding created at:"]
       24 LOADN                            R7 3
       25 CALL                             R5 2 1
       26 MOVE                             R4 R5
       27 NEWTABLE                         R6 4 0
       29 GETUPVAL                         R8 2
       30 GETTABLEKS                       R7 R8 K10 ["REACT_BINDING_TYPE"]
       32 SETTABLEKS                       R7 R6 K11 ["$$typeof"]
       34 GETUPVAL                         R7 3
       35 SETTABLE                         R3 R6 R7
       36 SETTABLEKS                       R4 R6 K12 ["_source"]
       38 GETUPVAL                         R7 4
       39 FASTCALL2                        SETMETATABLE R6 R7 ; [+3]
       41 GETIMPORT                        R5 K14 [setmetatable]
       43 CALL                             R5 2 1
       44 GETTABLEKS                       R6 R3 K3 ["update"]
       46 RETURN                           R5 2

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["subscribe"]
        3 GETUPVAL                         R2 1
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U2
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_11:
        0 GETIMPORT                        R1 K1 [error]
        2 LOADK                            R2 K2 ["Bindings created by Binding:map(fn) cannot be updated directly"]
        3 LOADN                            R3 2
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["getValue"]
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 -1
        6 RETURN                           R0 -1

PROTO_13:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["__DEV__"]
        3 JUMPIFNOT                        R2 ; [+38]
        4 LOADB                            R3 0
        5 FASTCALL1                        TYPEOF R0 ; [+3]
        6 MOVE                             R5 R0
        7 GETIMPORT                        R4 K2 [typeof]
        9 CALL                             R4 1 1
       10 JUMPIFNOTEQKS                    R4 K3 ["table"] ; [+10]
       12 GETTABLEKS                       R4 R0 K4 ["$$typeof"]
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R5 R6 K5 ["REACT_BINDING_TYPE"]
       17 JUMPIFEQ                         R4 R5 ; [+2]
       19 LOADB                            R3 0 +1
       20 LOADB                            R3 1
       21 FASTCALL2K                       ASSERT R3 K6 ; [+4]
       23 LOADK                            R4 K6 ["Expected `self` to be a binding"]
       24 GETIMPORT                        R2 K8 [assert]
       26 CALL                             R2 2 0
       27 FASTCALL1                        TYPEOF R1 ; [+3]
       28 MOVE                             R5 R1
       29 GETIMPORT                        R4 K2 [typeof]
       31 CALL                             R4 1 1
       32 JUMPIFEQKS                       R4 K9 ["function"] ; [+2]
       34 LOADB                            R3 0 +1
       35 LOADB                            R3 1
       36 FASTCALL2K                       ASSERT R3 K10 ; [+4]
       38 LOADK                            R4 K10 ["Expected arg #1 to be a function"]
       39 GETIMPORT                        R2 K8 [assert]
       41 CALL                             R2 2 0
       42 NEWTABLE                         R2 4 0
       44 NEWCLOSURE                       R3 P0
       45 CAPTURE                          UPVAL U2
       46 CAPTURE                          VAL R0
       47 CAPTURE                          VAL R1
       48 SETTABLEKS                       R3 R2 K11 ["subscribe"]
       50 DUPCLOSURE                       R3 K12 [PROTO_11]
       51 SETTABLEKS                       R3 R2 K13 ["update"]
       53 NEWCLOSURE                       R3 P2
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R0
       56 SETTABLEKS                       R3 R2 K14 ["getValue"]
       58 LOADNIL                          R3
       59 GETUPVAL                         R5 0
       60 GETTABLEKS                       R4 R5 K0 ["__DEV__"]
       62 JUMPIFNOT                        R4 ; [+6]
       63 GETIMPORT                        R4 K17 [debug.traceback]
       65 LOADK                            R5 K18 ["Mapped binding created at:"]
       66 LOADN                            R6 3
       67 CALL                             R4 2 1
       68 MOVE                             R3 R4
       69 NEWTABLE                         R5 4 0
       71 GETUPVAL                         R7 1
       72 GETTABLEKS                       R6 R7 K5 ["REACT_BINDING_TYPE"]
       74 SETTABLEKS                       R6 R5 K4 ["$$typeof"]
       76 GETUPVAL                         R6 3
       77 SETTABLE                         R2 R5 R6
       78 SETTABLEKS                       R3 R5 K19 ["_source"]
       80 GETUPVAL                         R6 4
       81 FASTCALL2                        SETMETATABLE R5 R6 ; [+3]
       83 GETIMPORT                        R4 K21 [setmetatable]
       85 CALL                             R4 2 1
       86 RETURN                           R4 1

PROTO_14:
        0 NEWTABLE                         R0 0 0
        2 GETIMPORT                        R1 K1 [pairs]
        4 GETUPVAL                         R2 0
        5 CALL                             R1 1 3
        6 FORGPREP_NEXT                    R1
        7 NAMECALL                         R6 R5 K2 ["getValue"]
        9 CALL                             R6 1 1
       10 SETTABLE                         R6 R0 R4
       11 FORGLOOP                         R1 2 ; [-5]
       13 RETURN                           R0 1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 CALL                             R2 0 1
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 0
        5 LOADNIL                          R1
        6 LOADNIL                          R2
        7 FORGPREP                         R0
        8 MOVE                             R5 R4
        9 CALL                             R5 0 0
       10 FORGLOOP                         R0 2 ; [-3]
       12 LOADNIL                          R0
       13 SETUPVAL                         R0 0
       14 RETURN                           R0 0

PROTO_17:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETUPVAL                         R8 1
        7 GETTABLEKS                       R7 R8 K0 ["subscribe"]
        9 MOVE                             R8 R6
       10 NEWCLOSURE                       R9 P0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U2
       13 CALL                             R7 2 1
       14 SETTABLE                         R7 R1 R5
       15 FORGLOOP                         R2 2 ; [-10]
       17 NEWCLOSURE                       R2 P1
       18 CAPTURE                          REF R1
       19 CLOSEUPVALS                      R1
       20 RETURN                           R2 1

PROTO_18:
        0 GETIMPORT                        R1 K1 [error]
        2 LOADK                            R2 K2 ["Bindings created by joinBindings(...) cannot be updated directly"]
        3 LOADN                            R3 2
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 RETURN                           R0 1

PROTO_20:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["__DEV__"]
        3 JUMPIFNOT                        R1 ; [+49]
        4 FASTCALL1                        TYPEOF R0 ; [+3]
        5 MOVE                             R4 R0
        6 GETIMPORT                        R3 K2 [typeof]
        8 CALL                             R3 1 1
        9 JUMPIFEQKS                       R3 K3 ["table"] ; [+2]
       11 LOADB                            R2 0 +1
       12 LOADB                            R2 1
       13 FASTCALL2K                       ASSERT R2 K4 ; [+4]
       15 LOADK                            R3 K4 ["Expected arg #1 to be of type table"]
       16 GETIMPORT                        R1 K6 [assert]
       18 CALL                             R1 2 0
       19 MOVE                             R1 R0
       20 LOADNIL                          R2
       21 LOADNIL                          R3
       22 FORGPREP                         R1
       23 FASTCALL1                        TYPEOF R5 ; [+3]
       24 MOVE                             R7 R5
       25 GETIMPORT                        R6 K2 [typeof]
       27 CALL                             R6 1 1
       28 JUMPIFNOTEQKS                    R6 K3 ["table"] ; [+8]
       30 GETTABLEKS                       R6 R5 K7 ["$$typeof"]
       32 GETUPVAL                         R8 1
       33 GETTABLEKS                       R7 R8 K8 ["REACT_BINDING_TYPE"]
       35 JUMPIFEQ                         R6 R7 ; [+15]
       37 LOADK                            R6 K9 ["Expected arg #1 to contain only bindings, but key %q had a non-binding value"]
       38 FASTCALL1                        TOSTRING R4 ; [+3]
       39 MOVE                             R9 R4
       40 GETIMPORT                        R8 K11 [tostring]
       42 CALL                             R8 1 1
       43 NAMECALL                         R6 R6 K12 ["format"]
       45 CALL                             R6 2 1
       46 GETIMPORT                        R7 K14 [error]
       48 MOVE                             R8 R6
       49 LOADN                            R9 2
       50 CALL                             R7 2 0
       51 FORGLOOP                         R1 2 ; [-29]
       53 NEWTABLE                         R1 4 0
       55 NEWCLOSURE                       R2 P0
       56 CAPTURE                          VAL R0
       57 NEWCLOSURE                       R3 P1
       58 CAPTURE                          VAL R0
       59 CAPTURE                          UPVAL U2
       60 CAPTURE                          VAL R2
       61 SETTABLEKS                       R3 R1 K15 ["subscribe"]
       63 DUPCLOSURE                       R3 K16 [PROTO_18]
       64 SETTABLEKS                       R3 R1 K17 ["update"]
       66 NEWCLOSURE                       R3 P3
       67 CAPTURE                          VAL R2
       68 SETTABLEKS                       R3 R1 K18 ["getValue"]
       70 LOADNIL                          R3
       71 GETUPVAL                         R5 0
       72 GETTABLEKS                       R4 R5 K0 ["__DEV__"]
       74 JUMPIFNOT                        R4 ; [+6]
       75 GETIMPORT                        R4 K21 [debug.traceback]
       77 LOADK                            R5 K22 ["Joined binding created at:"]
       78 LOADN                            R6 2
       79 CALL                             R4 2 1
       80 MOVE                             R3 R4
       81 NEWTABLE                         R5 4 0
       83 GETUPVAL                         R7 1
       84 GETTABLEKS                       R6 R7 K8 ["REACT_BINDING_TYPE"]
       86 SETTABLEKS                       R6 R5 K7 ["$$typeof"]
       88 GETUPVAL                         R6 3
       89 SETTABLE                         R1 R5 R6
       90 SETTABLEKS                       R3 R5 K23 ["_source"]
       92 GETUPVAL                         R6 4
       93 FASTCALL2                        SETMETATABLE R5 R6 ; [+3]
       95 GETIMPORT                        R4 K25 [setmetatable]
       97 CALL                             R4 2 1
       98 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["ReactGlobals"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["LuauPolyfill"]
       16 CALL                             R2 1 1
       17 GETIMPORT                        R4 K4 [require]
       19 GETTABLEKS                       R5 R0 K7 ["Shared"]
       21 CALL                             R4 1 1
       22 GETTABLEKS                       R3 R4 K8 ["ReactSymbols"]
       24 GETIMPORT                        R4 K4 [require]
       26 GETTABLEKS                       R5 R0 K7 ["Shared"]
       28 CALL                             R4 1 1
       29 GETTABLEKS                       R5 R2 K9 ["Symbol"]
       31 GETIMPORT                        R6 K4 [require]
       33 GETIMPORT                        R9 K1 [script]
       35 GETTABLEKS                       R8 R9 K2 ["Parent"]
       37 GETTABLEKS                       R7 R8 K10 ["createSignal.roblox"]
       39 CALL                             R6 1 1
       40 MOVE                             R7 R5
       41 LOADK                            R8 K11 ["BindingImpl"]
       42 CALL                             R7 1 1
       43 NEWTABLE                         R8 8 0
       45 NEWTABLE                         R9 2 0
       47 DUPCLOSURE                       R10 K12 [PROTO_0]
       48 CAPTURE                          VAL R8
       49 SETTABLEKS                       R10 R9 K13 ["getValue"]
       51 DUPCLOSURE                       R10 K14 [PROTO_1]
       52 CAPTURE                          VAL R8
       53 SETTABLEKS                       R10 R9 K15 ["map"]
       55 DUPTABLE                         R10 K18 [{"__index", "__tostring"}]
       56 SETTABLEKS                       R9 R10 K16 ["__index"]
       58 DUPCLOSURE                       R11 K19 [PROTO_2]
       59 SETTABLEKS                       R11 R10 K17 ["__tostring"]
       61 DUPCLOSURE                       R11 K20 [PROTO_3]
       62 CAPTURE                          VAL R7
       63 SETTABLEKS                       R11 R8 K21 ["update"]
       65 DUPCLOSURE                       R11 K22 [PROTO_4]
       66 CAPTURE                          VAL R7
       67 SETTABLEKS                       R11 R8 K23 ["subscribe"]
       69 DUPCLOSURE                       R11 K24 [PROTO_5]
       70 CAPTURE                          VAL R7
       71 SETTABLEKS                       R11 R8 K13 ["getValue"]
       73 DUPCLOSURE                       R11 K25 [PROTO_8]
       74 CAPTURE                          VAL R6
       75 CAPTURE                          VAL R1
       76 CAPTURE                          VAL R3
       77 CAPTURE                          VAL R7
       78 CAPTURE                          VAL R10
       79 SETTABLEKS                       R11 R8 K26 ["create"]
       81 DUPCLOSURE                       R11 K27 [PROTO_13]
       82 CAPTURE                          VAL R1
       83 CAPTURE                          VAL R3
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R7
       86 CAPTURE                          VAL R10
       87 SETTABLEKS                       R11 R8 K15 ["map"]
       89 DUPCLOSURE                       R11 K28 [PROTO_20]
       90 CAPTURE                          VAL R1
       91 CAPTURE                          VAL R3
       92 CAPTURE                          VAL R8
       93 CAPTURE                          VAL R7
       94 CAPTURE                          VAL R10
       95 SETTABLEKS                       R11 R8 K29 ["join"]
       97 RETURN                           R8 1
