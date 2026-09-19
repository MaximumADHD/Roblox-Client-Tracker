PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R2 ; [+9]
        5 GETIMPORT                        R3 K2 [error]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K3 ["new"]
       10 LOADK                            R5 K4 ["react-cache: read and preload may only be called from within a component's render. They are not supported in event handlers or lifecycle methods."]
       11 CALL                             R4 1 -1
       12 CALL                             R3 -1 0
       13 JUMPIFNOTEQKNIL                  R2 ; [+2]
       15 LOADB                            R4 0 +1
       16 LOADB                            R4 1
       17 FASTCALL2K                       ASSERT R4 K5 ; [+4]
       19 LOADK                            R5 K5 ["assert needed until Luau understands if nil then error()"]
       20 GETIMPORT                        R3 K7 [assert]
       22 CALL                             R3 2 0
       23 GETTABLEKS                       R3 R2 K8 ["readContext"]
       25 MOVE                             R4 R0
       26 MOVE                             R5 R1
       27 CALL                             R3 2 -1
       28 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["get"]
        4 CALL                             R1 2 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+12]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K1 ["new"]
       10 CALL                             R2 0 1
       11 MOVE                             R1 R2
       12 GETUPVAL                         R2 0
       13 MOVE                             R4 R0
       14 MOVE                             R5 R1
       15 NAMECALL                         R2 R2 K2 ["set"]
       17 CALL                             R2 3 0
       18 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["status"]
        3 JUMPIFNOTEQKN                    R1 K1 [0] ; [+7]
        5 GETUPVAL                         R1 0
        6 LOADN                            R2 1
        7 SETTABLEKS                       R2 R1 K0 ["status"]
        9 SETTABLEKS                       R0 R1 K2 ["value"]
       11 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["status"]
        3 JUMPIFNOTEQKN                    R1 K1 [0] ; [+7]
        5 GETUPVAL                         R1 0
        6 LOADN                            R2 2
        7 SETTABLEKS                       R2 R1 K0 ["status"]
        9 SETTABLEKS                       R0 R1 K2 ["value"]
       11 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R5 0
        1 MOVE                             R7 R0
        2 NAMECALL                         R5 R5 K0 ["get"]
        4 CALL                             R5 2 1
        5 JUMPIFNOTEQKNIL                  R5 ; [+12]
        7 GETUPVAL                         R6 1
        8 GETTABLEKS                       R6 R6 K1 ["new"]
       10 CALL                             R6 0 1
       11 MOVE                             R5 R6
       12 GETUPVAL                         R6 0
       13 MOVE                             R8 R0
       14 MOVE                             R9 R5
       15 NAMECALL                         R6 R6 K2 ["set"]
       17 CALL                             R6 3 0
       18 MOVE                             R4 R5
       19 MOVE                             R7 R3
       20 NAMECALL                         R5 R4 K0 ["get"]
       22 CALL                             R5 2 1
       23 JUMPIFNOTEQKNIL                  R5 ; [+24]
       25 MOVE                             R6 R1
       26 MOVE                             R7 R2
       27 CALL                             R6 1 1
       28 LOADNIL                          R7
       29 NEWCLOSURE                       R10 P0
       30 CAPTURE                          REF R7
       31 NEWCLOSURE                       R11 P1
       32 CAPTURE                          REF R7
       33 NAMECALL                         R8 R6 K3 ["andThen"]
       35 CALL                             R8 3 0
       36 DUPTABLE                         R8 K7 [{["status"] = 0, ["value"]}]
       37 SETTABLEKS                       R6 R8 K6 ["value"]
       39 MOVE                             R7 R8
       40 MOVE                             R10 R3
       41 MOVE                             R11 R7
       42 NAMECALL                         R8 R4 K2 ["set"]
       44 CALL                             R8 3 0
       45 CLOSEUPVALS                      R7
       46 RETURN                           R7 1
       47 CLOSEUPVALS                      R7
       48 RETURN                           R5 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADNIL                          R2
        3 SETTABLE                         R2 R0 R1
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R5 R2
        3 NAMECALL                         R3 R3 K0 ["get"]
        5 CALL                             R3 2 1
        6 JUMPIFNOTEQKNIL                  R3 ; [+12]
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R4 R4 K1 ["new"]
       11 CALL                             R4 0 1
       12 MOVE                             R3 R4
       13 GETUPVAL                         R4 1
       14 MOVE                             R6 R2
       15 MOVE                             R7 R3
       16 NAMECALL                         R4 R4 K2 ["set"]
       18 CALL                             R4 3 0
       19 MOVE                             R1 R3
       20 LOADNIL                          R2
       21 SETTABLE                         R2 R1 R0
       22 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["current"]
        4 JUMPIFNOTEQKNIL                  R2 ; [+9]
        6 GETIMPORT                        R3 K2 [error]
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R4 R4 K3 ["new"]
       11 LOADK                            R5 K4 ["react-cache: read and preload may only be called from within a component's render. They are not supported in event handlers or lifecycle methods."]
       12 CALL                             R4 1 -1
       13 CALL                             R3 -1 0
       14 JUMPIFNOTEQKNIL                  R2 ; [+2]
       16 LOADB                            R4 0 +1
       17 LOADB                            R4 1
       18 FASTCALL2K                       ASSERT R4 K5 ; [+4]
       20 LOADK                            R5 K5 ["assert needed until Luau understands if nil then error()"]
       21 GETIMPORT                        R3 K7 [assert]
       23 CALL                             R3 2 0
       24 GETTABLEKS                       R3 R2 K8 ["readContext"]
       26 MOVE                             R4 R1
       27 LOADNIL                          R5
       28 CALL                             R3 2 1
       29 GETUPVAL                         R1 3
       30 MOVE                             R2 R0
       31 CALL                             R1 1 1
       32 GETUPVAL                         R2 4
       33 GETUPVAL                         R3 5
       34 GETUPVAL                         R4 6
       35 MOVE                             R5 R0
       36 MOVE                             R6 R1
       37 CALL                             R2 4 1
       38 GETTABLEKS                       R3 R2 K9 ["status"]
       40 JUMPIFNOTEQKN                    R3 K10 [0] ; [+7]
       42 GETIMPORT                        R3 K2 [error]
       44 GETTABLEKS                       R4 R2 K11 ["value"]
       46 CALL                             R3 1 0
       47 RETURN                           R0 0
       48 GETTABLEKS                       R3 R2 K9 ["status"]
       50 JUMPIFNOTEQKN                    R3 K12 [1] ; [+4]
       52 GETTABLEKS                       R3 R2 K11 ["value"]
       54 RETURN                           R3 1
       55 GETTABLEKS                       R3 R2 K9 ["status"]
       57 JUMPIFNOTEQKN                    R3 K13 [2] ; [+7]
       59 GETIMPORT                        R3 K2 [error]
       61 GETTABLEKS                       R4 R2 K11 ["value"]
       63 CALL                             R3 1 0
       64 RETURN                           R0 0
       65 LOADNIL                          R3
       66 RETURN                           R3 1
       67 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["current"]
        4 JUMPIFNOTEQKNIL                  R2 ; [+9]
        6 GETIMPORT                        R3 K2 [error]
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R4 R4 K3 ["new"]
       11 LOADK                            R5 K4 ["react-cache: read and preload may only be called from within a component's render. They are not supported in event handlers or lifecycle methods."]
       12 CALL                             R4 1 -1
       13 CALL                             R3 -1 0
       14 JUMPIFNOTEQKNIL                  R2 ; [+2]
       16 LOADB                            R4 0 +1
       17 LOADB                            R4 1
       18 FASTCALL2K                       ASSERT R4 K5 ; [+4]
       20 LOADK                            R5 K5 ["assert needed until Luau understands if nil then error()"]
       21 GETIMPORT                        R3 K7 [assert]
       23 CALL                             R3 2 0
       24 GETTABLEKS                       R3 R2 K8 ["readContext"]
       26 MOVE                             R4 R1
       27 LOADNIL                          R5
       28 CALL                             R3 2 1
       29 GETUPVAL                         R1 3
       30 MOVE                             R2 R0
       31 CALL                             R1 1 1
       32 GETUPVAL                         R2 4
       33 GETUPVAL                         R3 5
       34 GETUPVAL                         R4 6
       35 MOVE                             R5 R0
       36 MOVE                             R6 R1
       37 CALL                             R2 4 0
       38 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R6 R3
        3 NAMECALL                         R4 R4 K0 ["get"]
        5 CALL                             R4 2 1
        6 JUMPIFNOTEQKNIL                  R4 ; [+12]
        8 GETUPVAL                         R5 2
        9 GETTABLEKS                       R5 R5 K1 ["new"]
       11 CALL                             R5 0 1
       12 MOVE                             R4 R5
       13 GETUPVAL                         R5 1
       14 MOVE                             R7 R3
       15 MOVE                             R8 R4
       16 NAMECALL                         R5 R5 K2 ["set"]
       18 CALL                             R5 3 0
       19 MOVE                             R2 R4
       20 DUPTABLE                         R3 K6 [{["status"] = 1, ["value"]}]
       21 SETTABLEKS                       R1 R3 K5 ["value"]
       23 MOVE                             R6 R0
       24 MOVE                             R7 R3
       25 NAMECALL                         R4 R2 K2 ["set"]
       27 CALL                             R4 3 0
       28 RETURN                           R0 0

PROTO_10:
        0 MOVE                             R3 R2
        1 JUMPIF                           R3 ; [+2]
        2 NEWTABLE                         R3 0 0
        4 LOADNIL                          R4
        5 DUPTABLE                         R5 K5 [{"clear", "invalidate", "read", "preload", "write"}]
        6 NEWCLOSURE                       R6 P0
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          REF R4
        9 SETTABLEKS                       R6 R5 K0 ["clear"]
       11 NEWCLOSURE                       R6 P1
       12 CAPTURE                          REF R4
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          UPVAL U1
       15 SETTABLEKS                       R6 R5 K1 ["invalidate"]
       17 NEWCLOSURE                       R6 P2
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          UPVAL U4
       21 CAPTURE                          VAL R1
       22 CAPTURE                          UPVAL U5
       23 CAPTURE                          REF R4
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R6 R5 K2 ["read"]
       27 NEWCLOSURE                       R6 P3
       28 CAPTURE                          UPVAL U2
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          UPVAL U4
       31 CAPTURE                          VAL R1
       32 CAPTURE                          UPVAL U5
       33 CAPTURE                          REF R4
       34 CAPTURE                          VAL R0
       35 SETTABLEKS                       R6 R5 K3 ["preload"]
       37 NEWCLOSURE                       R6 P4
       38 CAPTURE                          REF R4
       39 CAPTURE                          UPVAL U0
       40 CAPTURE                          UPVAL U1
       41 SETTABLEKS                       R6 R5 K4 ["write"]
       43 MOVE                             R4 R5
       44 GETUPVAL                         R5 6
       45 MOVE                             R7 R4
       46 MOVE                             R8 R3
       47 NAMECALL                         R5 R5 K6 ["set"]
       49 CALL                             R5 3 0
       50 CLOSEUPVALS                      R4
       51 RETURN                           R4 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["clear"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K6 ["Error"]
       16 GETTABLEKS                       R3 R1 K7 ["Map"]
       18 GETTABLEKS                       R4 R1 K8 ["WeakMap"]
       20 GETIMPORT                        R5 K4 [require]
       22 GETTABLEKS                       R6 R0 K9 ["Shared"]
       24 CALL                             R5 1 1
       25 GETIMPORT                        R6 K4 [require]
       27 GETTABLEKS                       R7 R0 K10 ["React"]
       29 CALL                             R6 1 1
       30 GETTABLEKS                       R7 R6 K11 ["createContext"]
       32 GETTABLEKS                       R8 R6 K12 ["__SECRET_INTERNALS_DO_NOT_USE_OR_YOU_WILL_BE_FIRED"]
       34 GETTABLEKS                       R8 R8 K13 ["ReactCurrentDispatcher"]
       36 DUPCLOSURE                       R9 K14 [PROTO_0]
       37 CAPTURE                          VAL R8
       38 CAPTURE                          VAL R2
       39 MOVE                             R10 R7
       40 LOADNIL                          R11
       41 CALL                             R10 1 1
       42 GETTABLEKS                       R11 R3 K15 ["new"]
       44 CALL                             R11 0 1
       45 GETTABLEKS                       R12 R3 K15 ["new"]
       47 CALL                             R12 0 1
       48 DUPCLOSURE                       R13 K16 [PROTO_1]
       49 CAPTURE                          VAL R11
       50 CAPTURE                          VAL R4
       51 DUPCLOSURE                       R14 K17 [PROTO_4]
       52 CAPTURE                          VAL R11
       53 CAPTURE                          VAL R4
       54 NEWTABLE                         R15 2 0
       56 DUPCLOSURE                       R16 K18 [PROTO_10]
       57 CAPTURE                          VAL R11
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R10
       60 CAPTURE                          VAL R8
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R14
       63 CAPTURE                          VAL R12
       64 SETTABLEKS                       R16 R15 K19 ["createResource"]
       66 DUPCLOSURE                       R16 K20 [PROTO_11]
       67 CAPTURE                          VAL R11
       68 SETTABLEKS                       R16 R15 K21 ["invalidateResources"]
       70 RETURN                           R15 1
