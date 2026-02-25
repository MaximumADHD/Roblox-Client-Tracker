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
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R0 R3
        2 GETTABLEKS                       R1 R2 K0 ["getValue"]
        4 CALL                             R1 0 -1
        5 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["value"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K1 ["fire"]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["value"]
        3 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 2
        2 DUPTABLE                         R3 K3 [{"value", "subscribe", "fire"}]
        3 SETTABLEKS                       R0 R3 K0 ["value"]
        5 SETTABLEKS                       R1 R3 K1 ["subscribe"]
        7 SETTABLEKS                       R2 R3 K2 ["fire"]
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          VAL R3
       11 SETTABLEKS                       R4 R3 K4 ["update"]
       13 NEWCLOSURE                       R4 P1
       14 CAPTURE                          VAL R3
       15 SETTABLEKS                       R4 R3 K5 ["getValue"]
       17 LOADNIL                          R4
       18 GETIMPORT                        R6 K7 [_G]
       20 GETTABLEKS                       R5 R6 K8 ["__DEV__"]
       22 JUMPIFNOT                        R5 ; [+6]
       23 GETIMPORT                        R5 K11 [debug.traceback]
       25 LOADK                            R6 K12 ["Binding created at:"]
       26 LOADN                            R7 3
       27 CALL                             R5 2 1
       28 MOVE                             R4 R5
       29 NEWTABLE                         R6 4 0
       31 GETUPVAL                         R8 1
       32 GETTABLEKS                       R7 R8 K13 ["REACT_BINDING_TYPE"]
       34 SETTABLEKS                       R7 R6 K14 ["$$typeof"]
       36 GETUPVAL                         R7 2
       37 SETTABLE                         R3 R6 R7
       38 SETTABLEKS                       R4 R6 K15 ["_source"]
       40 GETUPVAL                         R7 3
       41 FASTCALL2                        SETMETATABLE R6 R7 ; [+3]
       43 GETIMPORT                        R5 K17 [setmetatable]
       45 CALL                             R5 2 1
       46 GETTABLEKS                       R6 R3 K4 ["update"]
       48 RETURN                           R5 2

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
        4 GETIMPORT                        R0 K1 [pairs]
        6 GETUPVAL                         R1 0
        7 CALL                             R0 1 3
        8 FORGPREP_NEXT                    R0
        9 MOVE                             R5 R4
       10 CALL                             R5 0 0
       11 FORGLOOP                         R0 2 ; [-3]
       13 LOADNIL                          R0
       14 SETUPVAL                         R0 0
       15 RETURN                           R0 0

PROTO_17:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [pairs]
        4 GETUPVAL                         R3 0
        5 CALL                             R2 1 3
        6 FORGPREP_NEXT                    R2
        7 GETUPVAL                         R8 1
        8 GETTABLEKS                       R7 R8 K2 ["subscribe"]
       10 MOVE                             R8 R6
       11 NEWCLOSURE                       R9 P0
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 CALL                             R7 2 1
       15 SETTABLE                         R7 R1 R5
       16 FORGLOOP                         R2 2 ; [-10]
       18 NEWCLOSURE                       R2 P1
       19 CAPTURE                          REF R1
       20 CLOSEUPVALS                      R1
       21 RETURN                           R2 1

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
        4 JUMPIFNOT                        R1 ; [+50]
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
       20 GETIMPORT                        R1 K10 [pairs]
       22 MOVE                             R2 R0
       23 CALL                             R1 1 3
       24 FORGPREP_NEXT                    R1
       25 FASTCALL1                        TYPEOF R5 ; [+3]
       26 MOVE                             R7 R5
       27 GETIMPORT                        R6 K4 [typeof]
       29 CALL                             R6 1 1
       30 JUMPIFNOTEQKS                    R6 K5 ["table"] ; [+8]
       32 GETTABLEKS                       R6 R5 K11 ["$$typeof"]
       34 GETUPVAL                         R8 0
       35 GETTABLEKS                       R7 R8 K12 ["REACT_BINDING_TYPE"]
       37 JUMPIFEQ                         R6 R7 ; [+15]
       39 LOADK                            R6 K13 ["Expected arg #1 to contain only bindings, but key %q had a non-binding value"]
       40 FASTCALL1                        TOSTRING R4 ; [+3]
       41 MOVE                             R9 R4
       42 GETIMPORT                        R8 K15 [tostring]
       44 CALL                             R8 1 1
       45 NAMECALL                         R6 R6 K16 ["format"]
       47 CALL                             R6 2 1
       48 GETIMPORT                        R7 K18 [error]
       50 MOVE                             R8 R6
       51 LOADN                            R9 2
       52 CALL                             R7 2 0
       53 FORGLOOP                         R1 2 ; [-29]
       55 NEWTABLE                         R1 4 0
       57 NEWCLOSURE                       R2 P0
       58 CAPTURE                          VAL R0
       59 NEWCLOSURE                       R3 P1
       60 CAPTURE                          VAL R0
       61 CAPTURE                          UPVAL U1
       62 CAPTURE                          VAL R2
       63 SETTABLEKS                       R3 R1 K19 ["subscribe"]
       65 DUPCLOSURE                       R3 K20 [PROTO_18]
       66 SETTABLEKS                       R3 R1 K21 ["update"]
       68 NEWCLOSURE                       R3 P3
       69 CAPTURE                          VAL R2
       70 SETTABLEKS                       R3 R1 K22 ["getValue"]
       72 LOADNIL                          R3
       73 GETIMPORT                        R5 K1 [_G]
       75 GETTABLEKS                       R4 R5 K2 ["__DEV__"]
       77 JUMPIFNOT                        R4 ; [+6]
       78 GETIMPORT                        R4 K25 [debug.traceback]
       80 LOADK                            R5 K26 ["Joined binding created at:"]
       81 LOADN                            R6 2
       82 CALL                             R4 2 1
       83 MOVE                             R3 R4
       84 NEWTABLE                         R5 4 0
       86 GETUPVAL                         R7 0
       87 GETTABLEKS                       R6 R7 K12 ["REACT_BINDING_TYPE"]
       89 SETTABLEKS                       R6 R5 K11 ["$$typeof"]
       91 GETUPVAL                         R6 2
       92 SETTABLE                         R1 R5 R6
       93 SETTABLEKS                       R3 R5 K27 ["_source"]
       95 GETUPVAL                         R6 3
       96 FASTCALL2                        SETMETATABLE R5 R6 ; [+3]
       98 GETIMPORT                        R4 K29 [setmetatable]
      100 CALL                             R4 2 1
      101 RETURN                           R4 1

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
       19 GETTABLEKS                       R3 R1 K8 ["Symbol"]
       21 GETIMPORT                        R4 K4 [require]
       23 GETIMPORT                        R7 K1 [script]
       25 GETTABLEKS                       R6 R7 K2 ["Parent"]
       27 GETTABLEKS                       R5 R6 K9 ["createSignal.roblox"]
       29 CALL                             R4 1 1
       30 MOVE                             R5 R3
       31 LOADK                            R6 K10 ["BindingImpl"]
       32 CALL                             R5 1 1
       33 NEWTABLE                         R6 8 0
       35 NEWTABLE                         R7 2 0
       37 DUPCLOSURE                       R8 K11 [PROTO_0]
       38 CAPTURE                          VAL R6
       39 SETTABLEKS                       R8 R7 K12 ["getValue"]
       41 DUPCLOSURE                       R8 K13 [PROTO_1]
       42 CAPTURE                          VAL R6
       43 SETTABLEKS                       R8 R7 K14 ["map"]
       45 DUPTABLE                         R8 K17 [{"__index", "__tostring"}]
       46 SETTABLEKS                       R7 R8 K15 ["__index"]
       48 DUPCLOSURE                       R9 K18 [PROTO_2]
       49 SETTABLEKS                       R9 R8 K16 ["__tostring"]
       51 DUPCLOSURE                       R9 K19 [PROTO_3]
       52 CAPTURE                          VAL R5
       53 SETTABLEKS                       R9 R6 K20 ["update"]
       55 DUPCLOSURE                       R9 K21 [PROTO_4]
       56 CAPTURE                          VAL R5
       57 SETTABLEKS                       R9 R6 K22 ["subscribe"]
       59 DUPCLOSURE                       R9 K23 [PROTO_5]
       60 CAPTURE                          VAL R5
       61 SETTABLEKS                       R9 R6 K12 ["getValue"]
       63 DUPCLOSURE                       R9 K24 [PROTO_8]
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R8
       68 SETTABLEKS                       R9 R6 K25 ["create"]
       70 DUPCLOSURE                       R9 K26 [PROTO_13]
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R8
       75 SETTABLEKS                       R9 R6 K14 ["map"]
       77 DUPCLOSURE                       R9 K27 [PROTO_20]
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R6
       80 CAPTURE                          VAL R5
       81 CAPTURE                          VAL R8
       82 SETTABLEKS                       R9 R6 K28 ["join"]
       84 RETURN                           R6 1
