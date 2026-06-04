PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["function"] ; [+3]
        7 LOADB                            R1 1
        8 RETURN                           R1 1
        9 FASTCALL1                        TYPEOF R0 ; [+3]
       10 MOVE                             R2 R0
       11 GETIMPORT                        R1 K1 [typeof]
       13 CALL                             R1 1 1
       14 JUMPIFNOTEQKS                    R1 K3 ["table"] ; [+22]
       16 FASTCALL1                        GETMETATABLE R0 ; [+3]
       17 MOVE                             R2 R0
       18 GETIMPORT                        R1 K5 [getmetatable]
       20 CALL                             R1 1 1
       21 JUMPIFNOT                        R1 ; [+10]
       22 FASTCALL2K                       RAWGET R1 K6 ; [+5]
       24 MOVE                             R3 R1
       25 LOADK                            R4 K6 ["__call"]
       26 GETIMPORT                        R2 K8 [rawget]
       28 CALL                             R2 2 1
       29 JUMPIFNOT                        R2 ; [+2]
       30 LOADB                            R2 1
       31 RETURN                           R2 1
       32 GETTABLEKS                       R2 R0 K9 ["_isMockFunction"]
       34 JUMPIFNOT                        R2 ; [+2]
       35 LOADB                            R2 1
       36 RETURN                           R2 1
       37 LOADB                            R1 0
       38 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["__REACT_DEVTOOLS_GLOBAL_HOOK__"]
        3 JUMPIFNOTEQKNIL                  R1 ; [+2]
        5 LOADB                            R0 0 +1
        6 LOADB                            R0 1
        7 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 1
        1 GETTABLEKS                       R0 R0 K0 ["inject"]
        3 GETUPVAL                         R1 2
        4 CALL                             R0 1 1
        5 SETUPVAL                         R0 0
        6 GETUPVAL                         R0 1
        7 SETUPVAL                         R0 3
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["__REACT_DEVTOOLS_GLOBAL_HOOK__"]
        3 JUMPIFNOTEQKNIL                  R1 ; [+3]
        5 LOADB                            R1 0
        6 RETURN                           R1 1
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["__REACT_DEVTOOLS_GLOBAL_HOOK__"]
       10 GETTABLEKS                       R2 R1 K1 ["isDisabled"]
       12 JUMPIFNOT                        R2 ; [+2]
       13 LOADB                            R2 1
       14 RETURN                           R2 1
       15 GETTABLEKS                       R2 R1 K2 ["supportsFiber"]
       17 JUMPIF                           R2 ; [+11]
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K3 ["__DEV__"]
       21 JUMPIFNOT                        R2 ; [+5]
       22 GETUPVAL                         R2 1
       23 GETTABLEKS                       R2 R2 K4 ["error"]
       25 LOADK                            R3 K5 ["The installed version of React DevTools is too old and will not work with the current version of React. Please update React DevTools. https://reactjs.org/link/react-devtools"]
       26 CALL                             R2 1 0
       27 LOADB                            R2 1
       28 RETURN                           R2 1
       29 GETIMPORT                        R2 K7 [pcall]
       31 NEWCLOSURE                       R3 P0
       32 CAPTURE                          UPVAL U2
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R0
       35 CAPTURE                          UPVAL U3
       36 CALL                             R2 1 2
       37 JUMPIF                           R2 ; [+10]
       38 GETUPVAL                         R4 0
       39 GETTABLEKS                       R4 R4 K3 ["__DEV__"]
       41 JUMPIFNOT                        R4 ; [+6]
       42 GETUPVAL                         R4 1
       43 GETTABLEKS                       R4 R4 K4 ["error"]
       45 LOADK                            R5 K8 ["React instrumentation encountered an error: %s."]
       46 MOVE                             R6 R3
       47 CALL                             R4 2 0
       48 LOADB                            R4 1
       49 RETURN                           R4 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["__DEV__"]
        3 JUMPIFNOT                        R2 ; [+68]
        4 GETUPVAL                         R2 1
        5 JUMPIFNOT                        R2 ; [+66]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K1 ["onScheduleFiberRoot"]
        9 FASTCALL1                        TYPEOF R3 ; [+3]
       10 MOVE                             R5 R3
       11 GETIMPORT                        R4 K3 [typeof]
       13 CALL                             R4 1 1
       14 JUMPIFNOTEQKS                    R4 K4 ["function"] ; [+3]
       16 LOADB                            R2 1
       17 JUMP                             ; [+29]
       18 FASTCALL1                        TYPEOF R3 ; [+3]
       19 MOVE                             R5 R3
       20 GETIMPORT                        R4 K3 [typeof]
       22 CALL                             R4 1 1
       23 JUMPIFNOTEQKS                    R4 K5 ["table"] ; [+22]
       25 FASTCALL1                        GETMETATABLE R3 ; [+3]
       26 MOVE                             R5 R3
       27 GETIMPORT                        R4 K7 [getmetatable]
       29 CALL                             R4 1 1
       30 JUMPIFNOT                        R4 ; [+10]
       31 FASTCALL2K                       RAWGET R4 K8 ; [+5]
       33 MOVE                             R6 R4
       34 LOADK                            R7 K8 ["__call"]
       35 GETIMPORT                        R5 K10 [rawget]
       37 CALL                             R5 2 1
       38 JUMPIFNOT                        R5 ; [+2]
       39 LOADB                            R2 1
       40 JUMP                             ; [+6]
       41 GETTABLEKS                       R5 R3 K11 ["_isMockFunction"]
       43 JUMPIFNOT                        R5 ; [+2]
       44 LOADB                            R2 1
       45 JUMP                             ; [+1]
       46 LOADB                            R2 0
       47 JUMPIFNOT                        R2 ; [+24]
       48 GETIMPORT                        R2 K13 [pcall]
       50 GETUPVAL                         R3 1
       51 GETTABLEKS                       R3 R3 K1 ["onScheduleFiberRoot"]
       53 GETUPVAL                         R4 2
       54 MOVE                             R5 R0
       55 MOVE                             R6 R1
       56 CALL                             R2 4 2
       57 JUMPIF                           R2 ; [+14]
       58 GETUPVAL                         R4 0
       59 GETTABLEKS                       R4 R4 K0 ["__DEV__"]
       61 JUMPIFNOT                        R4 ; [+10]
       62 GETUPVAL                         R4 3
       63 JUMPIF                           R4 ; [+8]
       64 LOADB                            R4 1
       65 SETUPVAL                         R4 3
       66 GETUPVAL                         R4 4
       67 GETTABLEKS                       R4 R4 K14 ["error"]
       69 LOADK                            R5 K15 ["React instrumentation encountered an error: %s"]
       70 MOVE                             R6 R3
       71 CALL                             R4 2 0
       72 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 GETTABLEKS                       R2 R2 K1 ["flags"]
        5 GETUPVAL                         R3 1
        6 FASTCALL2                        BIT32_BAND R2 R3 ; [+3]
        8 GETIMPORT                        R1 K4 [bit32.band]
       10 CALL                             R1 2 1
       11 GETUPVAL                         R2 1
       12 JUMPIFEQ                         R1 R2 ; [+2]
       14 LOADB                            R0 0 +1
       15 LOADB                            R0 1
       16 GETUPVAL                         R1 2
       17 JUMPIFNOT                        R1 ; [+9]
       18 GETUPVAL                         R1 3
       19 GETTABLEKS                       R1 R1 K5 ["onCommitFiberRoot"]
       21 GETUPVAL                         R2 4
       22 GETUPVAL                         R3 0
       23 GETUPVAL                         R4 5
       24 MOVE                             R5 R0
       25 CALL                             R1 4 0
       26 RETURN                           R0 0
       27 GETUPVAL                         R1 3
       28 GETTABLEKS                       R1 R1 K5 ["onCommitFiberRoot"]
       30 GETUPVAL                         R2 4
       31 GETUPVAL                         R3 0
       32 LOADNIL                          R4
       33 MOVE                             R5 R0
       34 CALL                             R1 4 0
       35 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+67]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["onCommitFiberRoot"]
        5 FASTCALL1                        TYPEOF R3 ; [+3]
        6 MOVE                             R5 R3
        7 GETIMPORT                        R4 K2 [typeof]
        9 CALL                             R4 1 1
       10 JUMPIFNOTEQKS                    R4 K3 ["function"] ; [+3]
       12 LOADB                            R2 1
       13 JUMP                             ; [+29]
       14 FASTCALL1                        TYPEOF R3 ; [+3]
       15 MOVE                             R5 R3
       16 GETIMPORT                        R4 K2 [typeof]
       18 CALL                             R4 1 1
       19 JUMPIFNOTEQKS                    R4 K4 ["table"] ; [+22]
       21 FASTCALL1                        GETMETATABLE R3 ; [+3]
       22 MOVE                             R5 R3
       23 GETIMPORT                        R4 K6 [getmetatable]
       25 CALL                             R4 1 1
       26 JUMPIFNOT                        R4 ; [+10]
       27 FASTCALL2K                       RAWGET R4 K7 ; [+5]
       29 MOVE                             R6 R4
       30 LOADK                            R7 K7 ["__call"]
       31 GETIMPORT                        R5 K9 [rawget]
       33 CALL                             R5 2 1
       34 JUMPIFNOT                        R5 ; [+2]
       35 LOADB                            R2 1
       36 JUMP                             ; [+6]
       37 GETTABLEKS                       R5 R3 K10 ["_isMockFunction"]
       39 JUMPIFNOT                        R5 ; [+2]
       40 LOADB                            R2 1
       41 JUMP                             ; [+1]
       42 LOADB                            R2 0
       43 JUMPIFNOT                        R2 ; [+25]
       44 GETIMPORT                        R2 K12 [pcall]
       46 NEWCLOSURE                       R3 P0
       47 CAPTURE                          VAL R0
       48 CAPTURE                          UPVAL U1
       49 CAPTURE                          UPVAL U2
       50 CAPTURE                          UPVAL U0
       51 CAPTURE                          UPVAL U3
       52 CAPTURE                          VAL R1
       53 CALL                             R2 1 2
       54 JUMPIF                           R2 ; [+14]
       55 GETUPVAL                         R4 4
       56 GETTABLEKS                       R4 R4 K13 ["__DEV__"]
       58 JUMPIFNOT                        R4 ; [+10]
       59 GETUPVAL                         R4 5
       60 JUMPIF                           R4 ; [+8]
       61 LOADB                            R4 1
       62 SETUPVAL                         R4 5
       63 GETUPVAL                         R4 6
       64 GETTABLEKS                       R4 R4 K14 ["error"]
       66 LOADK                            R5 K15 ["React instrumentation encountered an error: %s"]
       67 MOVE                             R6 R3
       68 CALL                             R4 2 0
       69 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+65]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["onCommitFiberUnmount"]
        5 FASTCALL1                        TYPEOF R2 ; [+3]
        6 MOVE                             R4 R2
        7 GETIMPORT                        R3 K2 [typeof]
        9 CALL                             R3 1 1
       10 JUMPIFNOTEQKS                    R3 K3 ["function"] ; [+3]
       12 LOADB                            R1 1
       13 JUMP                             ; [+29]
       14 FASTCALL1                        TYPEOF R2 ; [+3]
       15 MOVE                             R4 R2
       16 GETIMPORT                        R3 K2 [typeof]
       18 CALL                             R3 1 1
       19 JUMPIFNOTEQKS                    R3 K4 ["table"] ; [+22]
       21 FASTCALL1                        GETMETATABLE R2 ; [+3]
       22 MOVE                             R4 R2
       23 GETIMPORT                        R3 K6 [getmetatable]
       25 CALL                             R3 1 1
       26 JUMPIFNOT                        R3 ; [+10]
       27 FASTCALL2K                       RAWGET R3 K7 ; [+5]
       29 MOVE                             R5 R3
       30 LOADK                            R6 K7 ["__call"]
       31 GETIMPORT                        R4 K9 [rawget]
       33 CALL                             R4 2 1
       34 JUMPIFNOT                        R4 ; [+2]
       35 LOADB                            R1 1
       36 JUMP                             ; [+6]
       37 GETTABLEKS                       R4 R2 K10 ["_isMockFunction"]
       39 JUMPIFNOT                        R4 ; [+2]
       40 LOADB                            R1 1
       41 JUMP                             ; [+1]
       42 LOADB                            R1 0
       43 JUMPIFNOT                        R1 ; [+23]
       44 GETIMPORT                        R1 K12 [pcall]
       46 GETUPVAL                         R2 0
       47 GETTABLEKS                       R2 R2 K0 ["onCommitFiberUnmount"]
       49 GETUPVAL                         R3 1
       50 MOVE                             R4 R0
       51 CALL                             R1 3 2
       52 JUMPIF                           R1 ; [+14]
       53 GETUPVAL                         R3 2
       54 GETTABLEKS                       R3 R3 K13 ["__DEV__"]
       56 JUMPIFNOT                        R3 ; [+10]
       57 GETUPVAL                         R3 3
       58 JUMPIF                           R3 ; [+8]
       59 LOADB                            R3 1
       60 SETUPVAL                         R3 3
       61 GETUPVAL                         R3 4
       62 GETTABLEKS                       R3 R3 K14 ["error"]
       64 LOADK                            R4 K15 ["React instrumentation encountered an error: %s"]
       65 MOVE                             R5 R2
       66 CALL                             R3 2 0
       67 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["ReactGlobals"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["Shared"]
       16 CALL                             R2 1 1
       17 GETTABLEKS                       R2 R2 K7 ["console"]
       19 GETIMPORT                        R3 K4 [require]
       21 GETTABLEKS                       R4 R0 K8 ["LuauPolyfill"]
       23 CALL                             R3 1 1
       24 NEWTABLE                         R4 8 0
       26 DUPCLOSURE                       R5 K9 [PROTO_0]
       27 GETIMPORT                        R6 K4 [require]
       29 GETTABLEKS                       R7 R0 K6 ["Shared"]
       31 CALL                             R6 1 1
       32 GETTABLEKS                       R6 R6 K10 ["ReactFeatureFlags"]
       34 GETTABLEKS                       R6 R6 K11 ["enableProfilerTimer"]
       36 GETIMPORT                        R7 K4 [require]
       38 GETIMPORT                        R8 K1 [script]
       40 GETTABLEKS                       R8 R8 K2 ["Parent"]
       42 GETTABLEKS                       R8 R8 K12 ["ReactInternalTypes"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K4 [require]
       47 GETTABLEKS                       R9 R0 K6 ["Shared"]
       49 CALL                             R8 1 1
       50 GETIMPORT                        R9 K4 [require]
       52 GETIMPORT                        R10 K1 [script]
       54 GETTABLEKS                       R10 R10 K2 ["Parent"]
       56 GETTABLEKS                       R10 R10 K13 ["ReactFiberFlags"]
       58 CALL                             R9 1 1
       59 GETTABLEKS                       R9 R9 K14 ["DidCapture"]
       61 LOADNIL                          R10
       62 LOADNIL                          R11
       63 LOADB                            R12 0
       64 DUPCLOSURE                       R13 K15 [PROTO_1]
       65 CAPTURE                          VAL R1
       66 SETTABLEKS                       R13 R4 K16 ["isDevToolsPresent"]
       68 NEWCLOSURE                       R13 P2
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R2
       71 CAPTURE                          REF R10
       72 CAPTURE                          REF R11
       73 SETTABLEKS                       R13 R4 K17 ["injectInternals"]
       75 NEWCLOSURE                       R13 P3
       76 CAPTURE                          VAL R1
       77 CAPTURE                          REF R11
       78 CAPTURE                          REF R10
       79 CAPTURE                          REF R12
       80 CAPTURE                          VAL R2
       81 SETTABLEKS                       R13 R4 K18 ["onScheduleRoot"]
       83 NEWCLOSURE                       R13 P4
       84 CAPTURE                          REF R11
       85 CAPTURE                          VAL R9
       86 CAPTURE                          VAL R6
       87 CAPTURE                          REF R10
       88 CAPTURE                          VAL R1
       89 CAPTURE                          REF R12
       90 CAPTURE                          VAL R2
       91 SETTABLEKS                       R13 R4 K19 ["onCommitRoot"]
       93 NEWCLOSURE                       R13 P5
       94 CAPTURE                          REF R11
       95 CAPTURE                          REF R10
       96 CAPTURE                          VAL R1
       97 CAPTURE                          REF R12
       98 CAPTURE                          VAL R2
       99 SETTABLEKS                       R13 R4 K20 ["onCommitUnmount"]
      101 CLOSEUPVALS                      R10
      102 RETURN                           R4 1
