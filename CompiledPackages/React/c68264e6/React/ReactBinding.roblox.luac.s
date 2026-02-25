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
       17 GETIMPORT                        R6 K6 [_G]
       19 GETTABLEKS                       R5 R6 K7 ["__DEV__"]
       21 JUMPIFNOT                        R5 ; [+6]
       22 GETIMPORT                        R5 K10 [debug.traceback]
       24 LOADK                            R6 K11 ["Binding created at:"]
       25 LOADN                            R7 3
       26 CALL                             R5 2 1
       27 MOVE                             R4 R5
       28 NEWTABLE                         R6 4 0
       30 GETUPVAL                         R8 1
       31 GETTABLEKS                       R7 R8 K12 ["REACT_BINDING_TYPE"]
       33 SETTABLEKS                       R7 R6 K13 ["$$typeof"]
       35 GETUPVAL                         R7 2
       36 SETTABLE                         R3 R6 R7
       37 SETTABLEKS                       R4 R6 K14 ["_source"]
       39 GETUPVAL                         R7 3
       40 FASTCALL2                        SETMETATABLE R6 R7 ; [+3]
       42 GETIMPORT                        R5 K16 [setmetatable]
       44 CALL                             R5 2 1
       45 GETTABLEKS                       R6 R3 K3 ["update"]
       47 RETURN                           R5 2

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
        0 GETIMPORT                        R3 K1 [_G]
        2 GETTABLEKS                       R2 R3 K2 ["__DEV__"]
        4 JUMPIFNOT                        R2 ; [+38]
        5 LOADB                            R3 0
        6 FASTCALL1                        TYPEOF R0 ; [+3]
        7 MOVE                             R5 R0
        8 GETIMPORT                        R4 K4 [typeof]
       10 CALL                             R4 1 1
       11 JUMPIFNOTEQKS                    R4 K5 ["table"] ; [+10]
       13 GETTABLEKS                       R4 R0 K6 ["$$typeof"]
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R5 R6 K7 ["REACT_BINDING_TYPE"]
       18 JUMPIFEQ                         R4 R5 ; [+2]
       20 LOADB                            R3 0 +1
       21 LOADB                            R3 1
       22 FASTCALL2K                       ASSERT R3 K8 ; [+4]
       24 LOADK                            R4 K8 ["Expected `self` to be a binding"]
       25 GETIMPORT                        R2 K10 [assert]
       27 CALL                             R2 2 0
       28 FASTCALL1                        TYPEOF R1 ; [+3]
       29 MOVE                             R5 R1
       30 GETIMPORT                        R4 K4 [typeof]
       32 CALL                             R4 1 1
       33 JUMPIFEQKS                       R4 K11 ["function"] ; [+2]
       35 LOADB                            R3 0 +1
       36 LOADB                            R3 1
       37 FASTCALL2K                       ASSERT R3 K12 ; [+4]
       39 LOADK                            R4 K12 ["Expected arg #1 to be a function"]
       40 GETIMPORT                        R2 K10 [assert]
       42 CALL                             R2 2 0
       43 NEWTABLE                         R2 4 0
       45 NEWCLOSURE                       R3 P0
       46 CAPTURE                          UPVAL U1
       47 CAPTURE                          VAL R0
       48 CAPTURE                          VAL R1
       49 SETTABLEKS                       R3 R2 K13 ["subscribe"]
       51 DUPCLOSURE                       R3 K14 [PROTO_11]
       52 SETTABLEKS                       R3 R2 K15 ["update"]
       54 NEWCLOSURE                       R3 P2
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R0
       57 SETTABLEKS                       R3 R2 K16 ["getValue"]
       59 LOADNIL                          R3
       60 GETIMPORT                        R5 K1 [_G]
       62 GETTABLEKS                       R4 R5 K2 ["__DEV__"]
       64 JUMPIFNOT                        R4 ; [+6]
       65 GETIMPORT                        R4 K19 [debug.traceback]
       67 LOADK                            R5 K20 ["Mapped binding created at:"]
       68 LOADN                            R6 3
       69 CALL                             R4 2 1
       70 MOVE                             R3 R4
       71 NEWTABLE                         R5 4 0
       73 GETUPVAL                         R7 0
       74 GETTABLEKS                       R6 R7 K7 ["REACT_BINDING_TYPE"]
       76 SETTABLEKS                       R6 R5 K6 ["$$typeof"]
       78 GETUPVAL                         R6 2
       79 SETTABLE                         R2 R5 R6
       80 SETTABLEKS                       R3 R5 K21 ["_source"]
       82 GETUPVAL                         R6 3
       83 FASTCALL2                        SETMETATABLE R5 R6 ; [+3]
       85 GETIMPORT                        R4 K23 [setmetatable]
       87 CALL                             R4 2 1
       88 RETURN                           R4 1

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
        0 GETIMPORT                        R2 K1 [_G]
        2 GETTABLEKS                       R1 R2 K2 ["__DEV__"]
        4 JUMPIFNOT                        R1 ; [+49]
        5 FASTCALL1                        TYPEOF R0 ; [+3]
        6 MOVE                             R4 R0
        7 GETIMPORT                        R3 K4 [typeof]
        9 CALL                             R3 1 1
       10 JUMPIFEQKS                       R3 K5 ["table"] ; [+2]
       12 LOADB                            R2 0 +1
       13 LOADB                            R2 1
       14 FASTCALL2K                       ASSERT R2 K6 ; [+4]
       16 LOADK                            R3 K6 ["Expected arg #1 to be of type table"]
       17 GETIMPORT                        R1 K8 [assert]
       19 CALL                             R1 2 0
       20 MOVE                             R1 R0
       21 LOADNIL                          R2
       22 LOADNIL                          R3
       23 FORGPREP                         R1
       24 FASTCALL1                        TYPEOF R5 ; [+3]
       25 MOVE                             R7 R5
       26 GETIMPORT                        R6 K4 [typeof]
       28 CALL                             R6 1 1
       29 JUMPIFNOTEQKS                    R6 K5 ["table"] ; [+8]
       31 GETTABLEKS                       R6 R5 K9 ["$$typeof"]
       33 GETUPVAL                         R8 0
       34 GETTABLEKS                       R7 R8 K10 ["REACT_BINDING_TYPE"]
       36 JUMPIFEQ                         R6 R7 ; [+15]
       38 LOADK                            R6 K11 ["Expected arg #1 to contain only bindings, but key %q had a non-binding value"]
       39 FASTCALL1                        TOSTRING R4 ; [+3]
       40 MOVE                             R9 R4
       41 GETIMPORT                        R8 K13 [tostring]
       43 CALL                             R8 1 1
       44 NAMECALL                         R6 R6 K14 ["format"]
       46 CALL                             R6 2 1
       47 GETIMPORT                        R7 K16 [error]
       49 MOVE                             R8 R6
       50 LOADN                            R9 2
       51 CALL                             R7 2 0
       52 FORGLOOP                         R1 2 ; [-29]
       54 NEWTABLE                         R1 4 0
       56 NEWCLOSURE                       R2 P0
       57 CAPTURE                          VAL R0
       58 NEWCLOSURE                       R3 P1
       59 CAPTURE                          VAL R0
       60 CAPTURE                          UPVAL U1
       61 CAPTURE                          VAL R2
       62 SETTABLEKS                       R3 R1 K17 ["subscribe"]
       64 DUPCLOSURE                       R3 K18 [PROTO_18]
       65 SETTABLEKS                       R3 R1 K19 ["update"]
       67 NEWCLOSURE                       R3 P3
       68 CAPTURE                          VAL R2
       69 SETTABLEKS                       R3 R1 K20 ["getValue"]
       71 LOADNIL                          R3
       72 GETIMPORT                        R5 K1 [_G]
       74 GETTABLEKS                       R4 R5 K2 ["__DEV__"]
       76 JUMPIFNOT                        R4 ; [+6]
       77 GETIMPORT                        R4 K23 [debug.traceback]
       79 LOADK                            R5 K24 ["Joined binding created at:"]
       80 LOADN                            R6 2
       81 CALL                             R4 2 1
       82 MOVE                             R3 R4
       83 NEWTABLE                         R5 4 0
       85 GETUPVAL                         R7 0
       86 GETTABLEKS                       R6 R7 K10 ["REACT_BINDING_TYPE"]
       88 SETTABLEKS                       R6 R5 K9 ["$$typeof"]
       90 GETUPVAL                         R6 2
       91 SETTABLE                         R1 R5 R6
       92 SETTABLEKS                       R3 R5 K25 ["_source"]
       94 GETUPVAL                         R6 3
       95 FASTCALL2                        SETMETATABLE R5 R6 ; [+3]
       97 GETIMPORT                        R4 K27 [setmetatable]
       99 CALL                             R4 2 1
      100 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R3 K4 [require]
       14 GETTABLEKS                       R4 R0 K6 ["Shared"]
       16 CALL                             R3 1 1
       17 GETTABLEKS                       R2 R3 K7 ["ReactSymbols"]
       19 GETIMPORT                        R3 K4 [require]
       21 GETTABLEKS                       R4 R0 K6 ["Shared"]
       23 CALL                             R3 1 1
       24 GETTABLEKS                       R4 R1 K8 ["Symbol"]
       26 GETIMPORT                        R5 K4 [require]
       28 GETIMPORT                        R8 K1 [script]
       30 GETTABLEKS                       R7 R8 K2 ["Parent"]
       32 GETTABLEKS                       R6 R7 K9 ["createSignal.roblox"]
       34 CALL                             R5 1 1
       35 MOVE                             R6 R4
       36 LOADK                            R7 K10 ["BindingImpl"]
       37 CALL                             R6 1 1
       38 NEWTABLE                         R7 8 0
       40 NEWTABLE                         R8 2 0
       42 DUPCLOSURE                       R9 K11 [PROTO_0]
       43 CAPTURE                          VAL R7
       44 SETTABLEKS                       R9 R8 K12 ["getValue"]
       46 DUPCLOSURE                       R9 K13 [PROTO_1]
       47 CAPTURE                          VAL R7
       48 SETTABLEKS                       R9 R8 K14 ["map"]
       50 DUPTABLE                         R9 K17 [{"__index", "__tostring"}]
       51 SETTABLEKS                       R8 R9 K15 ["__index"]
       53 DUPCLOSURE                       R10 K18 [PROTO_2]
       54 SETTABLEKS                       R10 R9 K16 ["__tostring"]
       56 DUPCLOSURE                       R10 K19 [PROTO_3]
       57 CAPTURE                          VAL R6
       58 SETTABLEKS                       R10 R7 K20 ["update"]
       60 DUPCLOSURE                       R10 K21 [PROTO_4]
       61 CAPTURE                          VAL R6
       62 SETTABLEKS                       R10 R7 K22 ["subscribe"]
       64 DUPCLOSURE                       R10 K23 [PROTO_5]
       65 CAPTURE                          VAL R6
       66 SETTABLEKS                       R10 R7 K12 ["getValue"]
       68 DUPCLOSURE                       R10 K24 [PROTO_8]
       69 CAPTURE                          VAL R5
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R6
       72 CAPTURE                          VAL R9
       73 SETTABLEKS                       R10 R7 K25 ["create"]
       75 DUPCLOSURE                       R10 K26 [PROTO_13]
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R7
       78 CAPTURE                          VAL R6
       79 CAPTURE                          VAL R9
       80 SETTABLEKS                       R10 R7 K14 ["map"]
       82 DUPCLOSURE                       R10 K27 [PROTO_20]
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R7
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R9
       87 SETTABLEKS                       R10 R7 K28 ["join"]
       89 RETURN                           R7 1
