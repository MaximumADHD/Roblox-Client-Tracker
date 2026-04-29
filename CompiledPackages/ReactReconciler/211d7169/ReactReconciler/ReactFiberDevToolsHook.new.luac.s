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
        0 GETUPVAL                         R1 1
        1 GETTABLEKS                       R0 R1 K0 ["inject"]
        3 GETUPVAL                         R1 2
        4 CALL                             R0 1 1
        5 SETUPVAL                         R0 0
        6 GETUPVAL                         R0 1
        7 SETUPVAL                         R0 3
        8 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R2 K1 [_G]
        2 GETTABLEKS                       R1 R2 K2 ["__REACT_DEVTOOLS_GLOBAL_HOOK__"]
        4 JUMPIFNOTEQKNIL                  R1 ; [+3]
        6 LOADB                            R1 0
        7 RETURN                           R1 1
        8 GETIMPORT                        R2 K1 [_G]
       10 GETTABLEKS                       R1 R2 K2 ["__REACT_DEVTOOLS_GLOBAL_HOOK__"]
       12 GETTABLEKS                       R2 R1 K3 ["isDisabled"]
       14 JUMPIFNOT                        R2 ; [+2]
       15 LOADB                            R2 1
       16 RETURN                           R2 1
       17 GETTABLEKS                       R2 R1 K4 ["supportsFiber"]
       19 JUMPIF                           R2 ; [+12]
       20 GETIMPORT                        R3 K1 [_G]
       22 GETTABLEKS                       R2 R3 K5 ["__DEV__"]
       24 JUMPIFNOT                        R2 ; [+5]
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R2 R3 K6 ["error"]
       28 LOADK                            R3 K7 ["The installed version of React DevTools is too old and will not work with the current version of React. Please update React DevTools. https://reactjs.org/link/react-devtools"]
       29 CALL                             R2 1 0
       30 LOADB                            R2 1
       31 RETURN                           R2 1
       32 GETIMPORT                        R2 K9 [pcall]
       34 NEWCLOSURE                       R3 P0
       35 CAPTURE                          UPVAL U1
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R0
       38 CAPTURE                          UPVAL U2
       39 CALL                             R2 1 2
       40 JUMPIF                           R2 ; [+11]
       41 GETIMPORT                        R5 K1 [_G]
       43 GETTABLEKS                       R4 R5 K5 ["__DEV__"]
       45 JUMPIFNOT                        R4 ; [+6]
       46 GETUPVAL                         R5 0
       47 GETTABLEKS                       R4 R5 K6 ["error"]
       49 LOADK                            R5 K10 ["React instrumentation encountered an error: %s."]
       50 MOVE                             R6 R3
       51 CALL                             R4 2 0
       52 LOADB                            R4 1
       53 RETURN                           R4 1

PROTO_3:
        0 GETIMPORT                        R3 K1 [_G]
        2 GETTABLEKS                       R2 R3 K2 ["__DEV__"]
        4 JUMPIFNOT                        R2 ; [+69]
        5 GETUPVAL                         R2 0
        6 JUMPIFNOT                        R2 ; [+67]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K3 ["onScheduleFiberRoot"]
       10 FASTCALL1                        TYPEOF R3 ; [+3]
       11 MOVE                             R5 R3
       12 GETIMPORT                        R4 K5 [typeof]
       14 CALL                             R4 1 1
       15 JUMPIFNOTEQKS                    R4 K6 ["function"] ; [+3]
       17 LOADB                            R2 1
       18 JUMP                             ; [+29]
       19 FASTCALL1                        TYPEOF R3 ; [+3]
       20 MOVE                             R5 R3
       21 GETIMPORT                        R4 K5 [typeof]
       23 CALL                             R4 1 1
       24 JUMPIFNOTEQKS                    R4 K7 ["table"] ; [+22]
       26 FASTCALL1                        GETMETATABLE R3 ; [+3]
       27 MOVE                             R5 R3
       28 GETIMPORT                        R4 K9 [getmetatable]
       30 CALL                             R4 1 1
       31 JUMPIFNOT                        R4 ; [+10]
       32 FASTCALL2K                       RAWGET R4 K10 ; [+5]
       34 MOVE                             R6 R4
       35 LOADK                            R7 K10 ["__call"]
       36 GETIMPORT                        R5 K12 [rawget]
       38 CALL                             R5 2 1
       39 JUMPIFNOT                        R5 ; [+2]
       40 LOADB                            R2 1
       41 JUMP                             ; [+6]
       42 GETTABLEKS                       R5 R3 K13 ["_isMockFunction"]
       44 JUMPIFNOT                        R5 ; [+2]
       45 LOADB                            R2 1
       46 JUMP                             ; [+1]
       47 LOADB                            R2 0
       48 JUMPIFNOT                        R2 ; [+25]
       49 GETIMPORT                        R2 K15 [pcall]
       51 GETUPVAL                         R4 0
       52 GETTABLEKS                       R3 R4 K3 ["onScheduleFiberRoot"]
       54 GETUPVAL                         R4 1
       55 MOVE                             R5 R0
       56 MOVE                             R6 R1
       57 CALL                             R2 4 2
       58 JUMPIF                           R2 ; [+15]
       59 GETIMPORT                        R5 K1 [_G]
       61 GETTABLEKS                       R4 R5 K2 ["__DEV__"]
       63 JUMPIFNOT                        R4 ; [+10]
       64 GETUPVAL                         R4 2
       65 JUMPIF                           R4 ; [+8]
       66 LOADB                            R4 1
       67 SETUPVAL                         R4 2
       68 GETUPVAL                         R5 3
       69 GETTABLEKS                       R4 R5 K16 ["error"]
       71 LOADK                            R5 K17 ["React instrumentation encountered an error: %s"]
       72 MOVE                             R6 R3
       73 CALL                             R4 2 0
       74 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["current"]
        3 GETTABLEKS                       R2 R3 K1 ["flags"]
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
       18 GETUPVAL                         R2 3
       19 GETTABLEKS                       R1 R2 K5 ["onCommitFiberRoot"]
       21 GETUPVAL                         R2 4
       22 GETUPVAL                         R3 0
       23 GETUPVAL                         R4 5
       24 MOVE                             R5 R0
       25 CALL                             R1 4 0
       26 RETURN                           R0 0
       27 GETUPVAL                         R2 3
       28 GETTABLEKS                       R1 R2 K5 ["onCommitFiberRoot"]
       30 GETUPVAL                         R2 4
       31 GETUPVAL                         R3 0
       32 LOADNIL                          R4
       33 MOVE                             R5 R0
       34 CALL                             R1 4 0
       35 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+68]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K0 ["onCommitFiberRoot"]
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
       43 JUMPIFNOT                        R2 ; [+26]
       44 GETIMPORT                        R2 K12 [pcall]
       46 NEWCLOSURE                       R3 P0
       47 CAPTURE                          VAL R0
       48 CAPTURE                          UPVAL U1
       49 CAPTURE                          UPVAL U2
       50 CAPTURE                          UPVAL U0
       51 CAPTURE                          UPVAL U3
       52 CAPTURE                          VAL R1
       53 CALL                             R2 1 2
       54 JUMPIF                           R2 ; [+15]
       55 GETIMPORT                        R5 K14 [_G]
       57 GETTABLEKS                       R4 R5 K15 ["__DEV__"]
       59 JUMPIFNOT                        R4 ; [+10]
       60 GETUPVAL                         R4 4
       61 JUMPIF                           R4 ; [+8]
       62 LOADB                            R4 1
       63 SETUPVAL                         R4 4
       64 GETUPVAL                         R5 5
       65 GETTABLEKS                       R4 R5 K16 ["error"]
       67 LOADK                            R5 K17 ["React instrumentation encountered an error: %s"]
       68 MOVE                             R6 R3
       69 CALL                             R4 2 0
       70 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+66]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["onCommitFiberUnmount"]
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
       43 JUMPIFNOT                        R1 ; [+24]
       44 GETIMPORT                        R1 K12 [pcall]
       46 GETUPVAL                         R3 0
       47 GETTABLEKS                       R2 R3 K0 ["onCommitFiberUnmount"]
       49 GETUPVAL                         R3 1
       50 MOVE                             R4 R0
       51 CALL                             R1 3 2
       52 JUMPIF                           R1 ; [+15]
       53 GETIMPORT                        R4 K14 [_G]
       55 GETTABLEKS                       R3 R4 K15 ["__DEV__"]
       57 JUMPIFNOT                        R3 ; [+10]
       58 GETUPVAL                         R3 2
       59 JUMPIF                           R3 ; [+8]
       60 LOADB                            R3 1
       61 SETUPVAL                         R3 2
       62 GETUPVAL                         R4 3
       63 GETTABLEKS                       R3 R4 K16 ["error"]
       65 LOADK                            R4 K17 ["React instrumentation encountered an error: %s"]
       66 MOVE                             R5 R2
       67 CALL                             R3 2 0
       68 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["Shared"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R1 R2 K6 ["console"]
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K7 ["LuauPolyfill"]
       18 CALL                             R2 1 1
       19 NEWTABLE                         R3 8 0
       21 DUPCLOSURE                       R4 K8 [PROTO_0]
       22 GETIMPORT                        R7 K4 [require]
       24 GETTABLEKS                       R8 R0 K5 ["Shared"]
       26 CALL                             R7 1 1
       27 GETTABLEKS                       R6 R7 K9 ["ReactFeatureFlags"]
       29 GETTABLEKS                       R5 R6 K10 ["enableProfilerTimer"]
       31 GETIMPORT                        R6 K4 [require]
       33 GETIMPORT                        R9 K1 [script]
       35 GETTABLEKS                       R8 R9 K2 ["Parent"]
       37 GETTABLEKS                       R7 R8 K11 ["ReactInternalTypes"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K4 [require]
       42 GETTABLEKS                       R8 R0 K5 ["Shared"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R9 K4 [require]
       47 GETIMPORT                        R12 K1 [script]
       49 GETTABLEKS                       R11 R12 K2 ["Parent"]
       51 GETTABLEKS                       R10 R11 K12 ["ReactFiberFlags"]
       53 CALL                             R9 1 1
       54 GETTABLEKS                       R8 R9 K13 ["DidCapture"]
       56 LOADNIL                          R9
       57 LOADNIL                          R10
       58 LOADB                            R11 0
       59 GETIMPORT                        R15 K15 [_G]
       61 GETTABLEKS                       R14 R15 K16 ["__REACT_DEVTOOLS_GLOBAL_HOOK__"]
       63 FASTCALL1                        TYPEOF R14 ; [+2]
       64 GETIMPORT                        R13 K18 [typeof]
       66 CALL                             R13 1 1
       67 JUMPIFNOTEQKS                    R13 K19 ["nil"] ; [+2]
       69 LOADB                            R12 0 +1
       70 LOADB                            R12 1
       71 SETTABLEKS                       R12 R3 K20 ["isDevToolsPresent"]
       73 NEWCLOSURE                       R12 P1
       74 CAPTURE                          VAL R1
       75 CAPTURE                          REF R9
       76 CAPTURE                          REF R10
       77 SETTABLEKS                       R12 R3 K21 ["injectInternals"]
       79 NEWCLOSURE                       R12 P2
       80 CAPTURE                          REF R10
       81 CAPTURE                          REF R9
       82 CAPTURE                          REF R11
       83 CAPTURE                          VAL R1
       84 SETTABLEKS                       R12 R3 K22 ["onScheduleRoot"]
       86 NEWCLOSURE                       R12 P3
       87 CAPTURE                          REF R10
       88 CAPTURE                          VAL R8
       89 CAPTURE                          VAL R5
       90 CAPTURE                          REF R9
       91 CAPTURE                          REF R11
       92 CAPTURE                          VAL R1
       93 SETTABLEKS                       R12 R3 K23 ["onCommitRoot"]
       95 NEWCLOSURE                       R12 P4
       96 CAPTURE                          REF R10
       97 CAPTURE                          REF R9
       98 CAPTURE                          REF R11
       99 CAPTURE                          VAL R1
      100 SETTABLEKS                       R12 R3 K24 ["onCommitUnmount"]
      102 CLOSEUPVALS                      R9
      103 RETURN                           R3 1
