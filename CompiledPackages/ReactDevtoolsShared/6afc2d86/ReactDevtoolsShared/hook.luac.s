PROTO_0:
        0 LOADK                            R1 K0 ["production"]
        1 RETURN                           R1 1

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 ADDK                             R0 R0 K0 [1]
        2 SETUPVAL                         R0 0
        3 GETUPVAL                         R0 0
        4 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["__REACT_DEVTOOLS_APPEND_COMPONENT_STACK__"]
        3 JUMPIFNOTEQKB                    R1 FALSE ; [+2]
        5 LOADB                            R0 0 +1
        6 LOADB                            R0 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K1 ["__REACT_DEVTOOLS_BREAK_ON_CONSOLE_ERRORS__"]
       10 JUMPIFEQKB                       R2 TRUE ; [+2]
       12 LOADB                            R1 0 +1
       13 LOADB                            R1 1
       14 JUMPIF                           R0 ; [+1]
       15 JUMPIFNOT                        R1 ; [+10]
       16 GETUPVAL                         R2 1
       17 GETUPVAL                         R3 2
       18 CALL                             R2 1 0
       19 GETUPVAL                         R2 3
       20 DUPTABLE                         R3 K4 [{"appendComponentStack", "breakOnConsoleErrors"}]
       21 SETTABLEKS                       R0 R3 K2 ["appendComponentStack"]
       23 SETTABLEKS                       R1 R3 K3 ["breakOnConsoleErrors"]
       25 CALL                             R2 1 0
       26 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 ADDK                             R2 R2 K0 [1]
        2 SETUPVAL                         R2 0
        3 GETUPVAL                         R1 0
        4 GETUPVAL                         R2 1
        5 MOVE                             R4 R1
        6 MOVE                             R5 R0
        7 NAMECALL                         R2 R2 K1 ["set"]
        9 CALL                             R2 3 0
       10 LOADK                            R2 K2 ["production"]
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R3 R4 K3 ["__DEV__"]
       14 JUMPIFNOT                        R3 ; [+8]
       15 GETIMPORT                        R3 K5 [pcall]
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          UPVAL U4
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U5
       22 CALL                             R3 1 0
       23 GETUPVAL                         R4 6
       24 GETTABLEKS                       R3 R4 K6 ["__REACT_DEVTOOLS_ATTACH__"]
       26 FASTCALL1                        TYPE R3 ; [+3]
       27 MOVE                             R5 R3
       28 GETIMPORT                        R4 K8 [type]
       30 CALL                             R4 1 1
       31 JUMPIFNOTEQKS                    R4 K9 ["function"] ; [+15]
       33 MOVE                             R4 R3
       34 GETUPVAL                         R5 7
       35 MOVE                             R6 R1
       36 MOVE                             R7 R0
       37 GETUPVAL                         R8 6
       38 CALL                             R4 4 1
       39 GETUPVAL                         R6 7
       40 GETTABLEKS                       R5 R6 K10 ["rendererInterfaces"]
       42 MOVE                             R7 R1
       43 MOVE                             R8 R4
       44 NAMECALL                         R5 R5 K1 ["set"]
       46 CALL                             R5 3 0
       47 GETUPVAL                         R5 7
       48 GETTABLEKS                       R4 R5 K11 ["emit"]
       50 LOADK                            R5 K12 ["renderer"]
       51 DUPTABLE                         R6 K15 [{"id", "renderer", "reactBuildType"}]
       52 SETTABLEKS                       R1 R6 K13 ["id"]
       54 SETTABLEKS                       R0 R6 K12 ["renderer"]
       56 SETTABLEKS                       R2 R6 K14 ["reactBuildType"]
       58 CALL                             R4 2 0
       59 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["off"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["on"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          VAL R0
        9 CAPTURE                          VAL R1
       10 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIF                           R2 ; [+4]
        3 GETUPVAL                         R2 0
        4 NEWTABLE                         R3 0 0
        6 SETTABLE                         R3 R2 R0
        7 GETUPVAL                         R4 0
        8 GETTABLE                         R3 R4 R0
        9 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
       11 MOVE                             R4 R1
       12 GETIMPORT                        R2 K2 [table.insert]
       14 CALL                             R2 2 0
       15 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K0 ["indexOf"]
        7 GETUPVAL                         R4 0
        8 GETTABLE                         R3 R4 R0
        9 MOVE                             R4 R1
       10 CALL                             R2 2 1
       11 JUMPIFEQKN                       R2 K1 [-1] ; [+9]
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R3 R4 K2 ["splice"]
       16 GETUPVAL                         R5 0
       17 GETTABLE                         R4 R5 R0
       18 MOVE                             R5 R2
       19 LOADN                            R6 1
       20 CALL                             R3 3 0
       21 GETUPVAL                         R5 0
       22 GETTABLE                         R4 R5 R0
       23 LENGTH                           R3 R4
       24 JUMPIFNOTEQKN                    R3 K3 [0] ; [+4]
       26 GETUPVAL                         R3 0
       27 LOADNIL                          R4
       28 SETTABLE                         R4 R3 R0
       29 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOT                        R2 ; [+10]
        3 GETUPVAL                         R5 0
        4 GETTABLE                         R2 R5 R0
        5 LOADNIL                          R3
        6 LOADNIL                          R4
        7 FORGPREP                         R2
        8 MOVE                             R7 R6
        9 MOVE                             R8 R1
       10 CALL                             R7 1 0
       11 FORGLOOP                         R2 2 ; [-4]
       13 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLE                         R2 R1 R0
        2 JUMPIF                           R2 ; [+5]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K0 ["new"]
        6 CALL                             R2 0 1
        7 SETTABLE                         R2 R1 R0
        8 GETTABLE                         R2 R1 R0
        9 RETURN                           R2 1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K0 ["get"]
        4 CALL                             R2 2 1
        5 JUMPIFEQKNIL                     R2 ; [+5]
        7 GETTABLEKS                       R3 R2 K1 ["handleCommitFiberUnmount"]
        9 MOVE                             R4 R1
       10 CALL                             R3 1 0
       11 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["getFiberRoots"]
        3 MOVE                             R4 R0
        4 CALL                             R3 1 1
        5 GETTABLEKS                       R4 R1 K1 ["current"]
        7 MOVE                             R7 R1
        8 NAMECALL                         R5 R3 K2 ["has"]
       10 CALL                             R5 2 1
       11 LOADB                            R6 1
       12 GETTABLEKS                       R7 R4 K3 ["memoizedState"]
       14 JUMPIFEQKNIL                     R7 ; [+9]
       16 GETTABLEKS                       R8 R4 K3 ["memoizedState"]
       18 GETTABLEKS                       R7 R8 K4 ["element"]
       20 JUMPIFEQKNIL                     R7 ; [+2]
       22 LOADB                            R6 0 +1
       23 LOADB                            R6 1
       24 JUMPIF                           R5 ; [+6]
       25 JUMPIF                           R6 ; [+5]
       26 MOVE                             R9 R1
       27 NAMECALL                         R7 R3 K5 ["add"]
       29 CALL                             R7 2 0
       30 JUMP                             ; [+6]
       31 JUMPIFNOT                        R5 ; [+5]
       32 JUMPIFNOT                        R6 ; [+4]
       33 MOVE                             R9 R1
       34 NAMECALL                         R7 R3 K6 ["delete"]
       36 CALL                             R7 2 0
       37 GETUPVAL                         R7 1
       38 MOVE                             R9 R0
       39 NAMECALL                         R7 R7 K7 ["get"]
       41 CALL                             R7 2 1
       42 JUMPIFEQKNIL                     R7 ; [+6]
       44 GETTABLEKS                       R8 R7 K8 ["handleCommitFiberRoot"]
       46 MOVE                             R9 R1
       47 MOVE                             R10 R2
       48 CALL                             R8 2 0
       49 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["__REACT_DEVTOOLS_GLOBAL_HOOK__"]
        2 JUMPIFNOT                        R1 ; [+2]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 LOADNIL                          R1
        6 NEWTABLE                         R2 0 0
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R3 R4 K1 ["new"]
       11 CALL                             R3 0 1
       12 NEWTABLE                         R4 0 0
       14 GETUPVAL                         R6 0
       15 GETTABLEKS                       R5 R6 K1 ["new"]
       17 CALL                             R5 0 1
       18 DUPCLOSURE                       R6 K2 [PROTO_0]
       19 DUPCLOSURE                       R7 K3 [PROTO_1]
       20 LOADN                            R8 1
       21 NEWCLOSURE                       R9 P2
       22 CAPTURE                          REF R8
       23 NEWCLOSURE                       R10 P3
       24 CAPTURE                          REF R8
       25 CAPTURE                          VAL R5
       26 CAPTURE                          UPVAL U1
       27 CAPTURE                          UPVAL U2
       28 CAPTURE                          UPVAL U3
       29 CAPTURE                          UPVAL U4
       30 CAPTURE                          VAL R0
       31 CAPTURE                          REF R1
       32 NEWCLOSURE                       R11 P4
       33 CAPTURE                          REF R1
       34 NEWCLOSURE                       R12 P5
       35 CAPTURE                          VAL R4
       36 NEWCLOSURE                       R13 P6
       37 CAPTURE                          VAL R4
       38 CAPTURE                          UPVAL U5
       39 NEWCLOSURE                       R14 P7
       40 CAPTURE                          VAL R4
       41 NEWCLOSURE                       R15 P8
       42 CAPTURE                          VAL R2
       43 CAPTURE                          UPVAL U6
       44 NEWCLOSURE                       R16 P9
       45 CAPTURE                          VAL R3
       46 NEWCLOSURE                       R17 P10
       47 CAPTURE                          REF R1
       48 CAPTURE                          VAL R3
       49 DUPTABLE                         R18 K17 [{"rendererInterfaces", "listeners", "renderers", "emit", "getFiberRoots", "inject", "on", "off", "sub", "supportsFiber", "checkDCE", "onCommitFiberUnmount", "onCommitFiberRoot"}]
       50 SETTABLEKS                       R3 R18 K4 ["rendererInterfaces"]
       52 SETTABLEKS                       R4 R18 K5 ["listeners"]
       54 SETTABLEKS                       R5 R18 K6 ["renderers"]
       56 SETTABLEKS                       R14 R18 K7 ["emit"]
       58 SETTABLEKS                       R15 R18 K8 ["getFiberRoots"]
       60 SETTABLEKS                       R10 R18 K9 ["inject"]
       62 SETTABLEKS                       R12 R18 K10 ["on"]
       64 SETTABLEKS                       R13 R18 K11 ["off"]
       66 SETTABLEKS                       R11 R18 K12 ["sub"]
       68 LOADB                            R19 1
       69 SETTABLEKS                       R19 R18 K13 ["supportsFiber"]
       71 SETTABLEKS                       R7 R18 K14 ["checkDCE"]
       73 SETTABLEKS                       R16 R18 K15 ["onCommitFiberUnmount"]
       75 SETTABLEKS                       R17 R18 K16 ["onCommitFiberRoot"]
       77 MOVE                             R1 R18
       78 SETTABLEKS                       R1 R0 K0 ["__REACT_DEVTOOLS_GLOBAL_HOOK__"]
       80 CLOSEUPVALS                      R1
       81 RETURN                           R1 1

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
       17 GETTABLEKS                       R3 R2 K7 ["Array"]
       19 GETTABLEKS                       R4 R2 K8 ["Map"]
       21 GETTABLEKS                       R5 R2 K9 ["Set"]
       23 NEWTABLE                         R6 1 0
       25 GETIMPORT                        R7 K4 [require]
       27 GETIMPORT                        R11 K1 [script]
       29 GETTABLEKS                       R10 R11 K2 ["Parent"]
       31 GETTABLEKS                       R9 R10 K10 ["backend"]
       33 GETTABLEKS                       R8 R9 K11 ["console"]
       35 CALL                             R7 1 1
       36 GETTABLEKS                       R8 R7 K12 ["patch"]
       38 GETTABLEKS                       R9 R7 K13 ["registerRenderer"]
       40 GETIMPORT                        R10 K4 [require]
       42 GETIMPORT                        R14 K1 [script]
       44 GETTABLEKS                       R13 R14 K2 ["Parent"]
       46 GETTABLEKS                       R12 R13 K10 ["backend"]
       48 GETTABLEKS                       R11 R12 K14 ["types"]
       50 CALL                             R10 1 1
       51 DUPCLOSURE                       R11 K15 [PROTO_13]
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R9
       56 CAPTURE                          VAL R8
       57 CAPTURE                          VAL R3
       58 CAPTURE                          VAL R5
       59 SETTABLEKS                       R11 R6 K16 ["installHook"]
       61 RETURN                           R6 1
