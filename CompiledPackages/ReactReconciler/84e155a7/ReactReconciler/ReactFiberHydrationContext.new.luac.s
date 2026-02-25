PROTO_0:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
        3 CALL                             R1 1 0
        4 GETIMPORT                        R1 K1 [print]
        6 LOADK                            R2 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
        7 CALL                             R1 1 0
        8 GETIMPORT                        R1 K1 [print]
       10 LOADK                            R3 K3 ["UNIMPLEMENTED ERROR: "]
       11 MOVE                             R4 R0
       12 CONCAT                           R2 R3 R4
       13 CALL                             R1 1 0
       14 GETIMPORT                        R1 K5 [error]
       16 LOADK                            R3 K6 ["FIXME (roblox): "]
       17 MOVE                             R4 R0
       18 LOADK                            R5 K7 [" is unimplemented"]
       19 CONCAT                           R2 R3 R5
       20 LOADN                            R3 2
       21 CALL                             R1 2 0
       22 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["__DEV__"]
        3 JUMPIFNOT                        R0 ; [+7]
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+5]
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R0 R1 K1 ["error"]
        9 LOADK                            R1 K2 ["We should not be hydrating here. This is a bug in React. Please file a bug."]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+2]
        2 LOADB                            R1 0
        3 RETURN                           R1 1
        4 GETTABLEKS                       R2 R0 K0 ["stateNode"]
        6 GETTABLEKS                       R1 R2 K1 ["containerInfo"]
        8 GETUPVAL                         R2 2
        9 MOVE                             R3 R1
       10 CALL                             R2 1 1
       11 SETUPVAL                         R2 1
       12 SETUPVAL                         R0 3
       13 LOADB                            R2 1
       14 SETUPVAL                         R2 4
       15 LOADB                            R2 1
       16 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+2]
        2 LOADB                            R2 0
        3 RETURN                           R2 1
        4 GETUPVAL                         R2 2
        5 MOVE                             R3 R1
        6 CALL                             R2 1 1
        7 SETUPVAL                         R2 1
        8 GETGLOBAL                        R2 K0 ["popToNextHostParent"]
       10 MOVE                             R3 R0
       11 CALL                             R2 1 0
       12 LOADB                            R2 1
       13 SETUPVAL                         R2 3
       14 LOADB                            R2 1
       15 RETURN                           R2 1

PROTO_4:
        0 GETIMPORT                        R2 K1 [print]
        2 LOADK                            R3 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
        3 CALL                             R2 1 0
        4 GETIMPORT                        R2 K1 [print]
        6 LOADK                            R3 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
        7 CALL                             R2 1 0
        8 GETIMPORT                        R2 K1 [print]
       10 LOADK                            R3 K3 ["UNIMPLEMENTED ERROR: deleteHydratableInstance"]
       11 CALL                             R2 1 0
       12 GETIMPORT                        R2 K5 [error]
       14 LOADK                            R3 K6 ["FIXME (roblox): deleteHydratableInstance is unimplemented"]
       15 LOADN                            R4 2
       16 CALL                             R2 2 0
       17 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R2 K1 [print]
        2 LOADK                            R3 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
        3 CALL                             R2 1 0
        4 GETIMPORT                        R2 K1 [print]
        6 LOADK                            R3 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
        7 CALL                             R2 1 0
        8 GETIMPORT                        R2 K1 [print]
       10 LOADK                            R3 K3 ["UNIMPLEMENTED ERROR: insertNonHydratedInstance"]
       11 CALL                             R2 1 0
       12 GETIMPORT                        R2 K5 [error]
       14 LOADK                            R3 K6 ["FIXME (roblox): insertNonHydratedInstance is unimplemented"]
       15 LOADN                            R4 2
       16 CALL                             R2 2 0
       17 GETTABLEKS                       R4 R1 K7 ["flags"]
       19 GETUPVAL                         R6 0
       20 FASTCALL1                        BIT32_BNOT R6 ; [+2]
       21 GETIMPORT                        R5 K10 [bit32.bnot]
       23 CALL                             R5 1 1
       24 FASTCALL2                        BIT32_BAND R4 R5 ; [+3]
       26 GETIMPORT                        R3 K12 [bit32.band]
       28 CALL                             R3 2 1
       29 GETUPVAL                         R4 1
       30 FASTCALL2                        BIT32_BOR R3 R4 ; [+3]
       32 GETIMPORT                        R2 K14 [bit32.bor]
       34 CALL                             R2 2 1
       35 SETTABLEKS                       R2 R1 K7 ["flags"]
       37 GETUPVAL                         R3 2
       38 GETTABLEKS                       R2 R3 K15 ["__DEV__"]
       40 JUMPIFNOT                        R2 ; [0]
       41 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["tag"]
        2 GETUPVAL                         R3 0
        3 JUMPIFNOTEQ                      R2 R3 ; [+18]
        5 GETTABLEKS                       R2 R0 K1 ["type"]
        7 GETTABLEKS                       R3 R0 K2 ["pendingProps"]
        9 GETUPVAL                         R4 1
       10 MOVE                             R5 R1
       11 MOVE                             R6 R2
       12 MOVE                             R7 R3
       13 CALL                             R4 3 1
       14 JUMPIFEQKNIL                     R4 ; [+5]
       16 SETTABLEKS                       R4 R0 K3 ["stateNode"]
       18 LOADB                            R5 1
       19 RETURN                           R5 1
       20 LOADB                            R5 0
       21 RETURN                           R5 1
       22 GETTABLEKS                       R2 R0 K0 ["tag"]
       24 GETUPVAL                         R3 2
       25 JUMPIFNOTEQ                      R2 R3 ; [+15]
       27 GETTABLEKS                       R2 R0 K2 ["pendingProps"]
       29 GETUPVAL                         R3 3
       30 MOVE                             R4 R1
       31 MOVE                             R5 R2
       32 CALL                             R3 2 1
       33 JUMPIFEQKNIL                     R3 ; [+5]
       35 SETTABLEKS                       R3 R0 K3 ["stateNode"]
       37 LOADB                            R4 1
       38 RETURN                           R4 1
       39 LOADB                            R4 0
       40 RETURN                           R4 1
       41 GETTABLEKS                       R2 R0 K0 ["tag"]
       43 GETUPVAL                         R3 4
       44 JUMPIFNOTEQ                      R2 R3 ; [+27]
       46 GETUPVAL                         R2 5
       47 JUMPIFNOT                        R2 ; [+22]
       48 GETUPVAL                         R2 6
       49 MOVE                             R3 R1
       50 CALL                             R2 1 1
       51 JUMPIFEQKNIL                     R2 ; [+18]
       53 DUPTABLE                         R3 K6 [{"dehydrated", "retryLane"}]
       54 SETTABLEKS                       R2 R3 K4 ["dehydrated"]
       56 GETUPVAL                         R4 7
       57 SETTABLEKS                       R4 R3 K5 ["retryLane"]
       59 SETTABLEKS                       R3 R0 K7 ["memoizedState"]
       61 GETUPVAL                         R4 8
       62 MOVE                             R5 R2
       63 CALL                             R4 1 1
       64 SETTABLEKS                       R0 R4 K8 ["return_"]
       66 SETTABLEKS                       R4 R0 K9 ["child"]
       68 LOADB                            R5 1
       69 RETURN                           R5 1
       70 LOADB                            R2 0
       71 RETURN                           R2 1
       72 LOADB                            R2 0
       73 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 1
        4 JUMPIF                           R1 ; [+9]
        5 GETGLOBAL                        R2 K0 ["insertNonHydratedInstance"]
        7 GETUPVAL                         R3 2
        8 MOVE                             R4 R0
        9 CALL                             R2 2 0
       10 LOADB                            R2 0
       11 SETUPVAL                         R2 0
       12 SETUPVAL                         R0 2
       13 RETURN                           R0 0
       14 MOVE                             R2 R1
       15 GETGLOBAL                        R3 K1 ["tryHydrate"]
       17 MOVE                             R4 R0
       18 MOVE                             R5 R1
       19 CALL                             R3 2 1
       20 JUMPIF                           R3 ; [+25]
       21 GETUPVAL                         R3 3
       22 MOVE                             R4 R2
       23 CALL                             R3 1 1
       24 MOVE                             R1 R3
       25 JUMPIFNOT                        R1 ; [+6]
       26 GETGLOBAL                        R3 K1 ["tryHydrate"]
       28 MOVE                             R4 R0
       29 MOVE                             R5 R1
       30 CALL                             R3 2 1
       31 JUMPIF                           R3 ; [+9]
       32 GETGLOBAL                        R3 K0 ["insertNonHydratedInstance"]
       34 GETUPVAL                         R4 2
       35 MOVE                             R5 R0
       36 CALL                             R3 2 0
       37 LOADB                            R3 0
       38 SETUPVAL                         R3 0
       39 SETUPVAL                         R0 2
       40 RETURN                           R0 0
       41 GETGLOBAL                        R3 K2 ["deleteHydratableInstance"]
       43 GETUPVAL                         R4 2
       44 MOVE                             R5 R2
       45 CALL                             R3 2 0
       46 SETUPVAL                         R0 2
       47 GETUPVAL                         R3 4
       48 MOVE                             R4 R1
       49 CALL                             R3 1 1
       50 SETUPVAL                         R3 1
       51 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R3 0
        1 JUMPIF                           R3 ; [+4]
        2 GETUPVAL                         R3 1
        3 LOADB                            R4 0
        4 LOADK                            R5 K0 ["Expected prepareToHydrateHostInstance() to never be called. This error is likely caused by a bug in React. Please file an issue."]
        5 CALL                             R3 2 0
        6 GETTABLEKS                       R3 R0 K1 ["stateNode"]
        8 GETUPVAL                         R4 2
        9 MOVE                             R5 R3
       10 GETTABLEKS                       R6 R0 K2 ["type"]
       12 GETTABLEKS                       R7 R0 K3 ["memoizedProps"]
       14 MOVE                             R8 R1
       15 MOVE                             R9 R2
       16 MOVE                             R10 R0
       17 CALL                             R4 6 1
       18 SETTABLEKS                       R4 R0 K4 ["updateQueue"]
       20 JUMPIFEQKNIL                     R4 ; [+3]
       22 LOADB                            R5 1
       23 RETURN                           R5 1
       24 LOADB                            R5 0
       25 RETURN                           R5 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+4]
        2 GETUPVAL                         R1 1
        3 LOADB                            R2 0
        4 LOADK                            R3 K0 ["Expected prepareToHydrateHostTextInstance() to never be called. This error is likely caused by a bug in React. Please file an issue."]
        5 CALL                             R1 2 0
        6 GETTABLEKS                       R1 R0 K1 ["stateNode"]
        8 GETTABLEKS                       R2 R0 K2 ["memoizedProps"]
       10 GETUPVAL                         R3 2
       11 MOVE                             R4 R1
       12 MOVE                             R5 R2
       13 MOVE                             R6 R0
       14 CALL                             R3 3 1
       15 GETUPVAL                         R5 3
       16 GETTABLEKS                       R4 R5 K3 ["__DEV__"]
       18 JUMPIFNOT                        R4 ; [+37]
       19 JUMPIFNOT                        R3 ; [+36]
       20 GETUPVAL                         R4 4
       21 JUMPIFEQKNIL                     R4 ; [+34]
       23 GETTABLEKS                       R5 R4 K4 ["tag"]
       25 GETUPVAL                         R6 5
       26 JUMPIFNOTEQ                      R5 R6 ; [+11]
       28 GETTABLEKS                       R6 R4 K1 ["stateNode"]
       30 GETTABLEKS                       R5 R6 K5 ["containerInfo"]
       32 GETUPVAL                         R6 6
       33 MOVE                             R7 R5
       34 MOVE                             R8 R1
       35 MOVE                             R9 R2
       36 CALL                             R6 3 0
       37 RETURN                           R3 1
       38 GETTABLEKS                       R5 R4 K4 ["tag"]
       40 GETUPVAL                         R6 7
       41 JUMPIFNOTEQ                      R5 R6 ; [+14]
       43 GETTABLEKS                       R5 R4 K6 ["type"]
       45 GETTABLEKS                       R6 R4 K2 ["memoizedProps"]
       47 GETTABLEKS                       R7 R4 K1 ["stateNode"]
       49 GETUPVAL                         R8 8
       50 MOVE                             R9 R5
       51 MOVE                             R10 R6
       52 MOVE                             R11 R7
       53 MOVE                             R12 R1
       54 MOVE                             R13 R2
       55 CALL                             R8 5 0
       56 RETURN                           R3 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+4]
        2 GETUPVAL                         R1 1
        3 LOADB                            R2 0
        4 LOADK                            R3 K0 ["Expected prepareToHydrateHostSuspenseInstance() to never be called. This error is likely caused by a bug in React. Please file an issue."]
        5 CALL                             R1 2 0
        6 GETTABLEKS                       R1 R0 K1 ["memoizedState"]
        8 LOADNIL                          R2
        9 JUMPIFEQKNIL                     R1 ; [+4]
       11 GETTABLEKS                       R2 R1 K2 ["dehydrated"]
       13 JUMP                             ; [+1]
       14 LOADNIL                          R2
       15 GETUPVAL                         R3 1
       16 MOVE                             R4 R2
       17 LOADK                            R5 K3 ["Expected to have a hydrated suspense instance. This error is likely caused by a bug in React. Please file an issue."]
       18 CALL                             R3 2 0
       19 GETUPVAL                         R3 2
       20 MOVE                             R4 R2
       21 MOVE                             R5 R0
       22 CALL                             R3 2 0
       23 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+4]
        2 GETUPVAL                         R1 1
        3 LOADB                            R2 0
        4 LOADK                            R3 K0 ["Expected skipPastDehydratedSuspenseInstance() to never be called. This error is likely caused by a bug in React. Please file an issue."]
        5 CALL                             R1 2 0
        6 GETTABLEKS                       R1 R0 K1 ["memoizedState"]
        8 LOADNIL                          R2
        9 JUMPIFEQKNIL                     R1 ; [+4]
       11 GETTABLEKS                       R2 R1 K2 ["dehydrated"]
       13 JUMP                             ; [+1]
       14 LOADNIL                          R2
       15 GETUPVAL                         R3 1
       16 MOVE                             R4 R2
       17 LOADK                            R5 K3 ["Expected to have a hydrated suspense instance. This error is likely caused by a bug in React. Please file an issue."]
       18 CALL                             R3 2 0
       19 GETUPVAL                         R3 2
       20 MOVE                             R4 R2
       21 CALL                             R3 1 -1
       22 RETURN                           R3 -1

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["return_"]
        2 JUMPIFEQKNIL                     R1 ; [+19]
        4 GETTABLEKS                       R2 R1 K1 ["tag"]
        6 GETUPVAL                         R3 0
        7 JUMPIFEQ                         R2 R3 ; [+14]
        9 GETTABLEKS                       R2 R1 K1 ["tag"]
       11 GETUPVAL                         R3 1
       12 JUMPIFEQ                         R2 R3 ; [+9]
       14 GETTABLEKS                       R2 R1 K1 ["tag"]
       16 GETUPVAL                         R3 2
       17 JUMPIFEQ                         R2 R3 ; [+4]
       19 GETTABLEKS                       R1 R1 K0 ["return_"]
       21 JUMPBACK                         ; [-20]
       22 SETUPVAL                         R1 3
       23 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+2]
        2 LOADB                            R1 0
        3 RETURN                           R1 1
        4 GETUPVAL                         R1 1
        5 JUMPIFEQ                         R0 R1 ; [+3]
        7 LOADB                            R1 0
        8 RETURN                           R1 1
        9 GETUPVAL                         R1 2
       10 JUMPIF                           R1 ; [+8]
       11 GETGLOBAL                        R1 K0 ["popToNextHostParent"]
       13 MOVE                             R2 R0
       14 CALL                             R1 1 0
       15 LOADB                            R1 1
       16 SETUPVAL                         R1 2
       17 LOADB                            R1 0
       18 RETURN                           R1 1
       19 GETTABLEKS                       R1 R0 K1 ["type"]
       21 GETTABLEKS                       R2 R0 K2 ["tag"]
       23 GETUPVAL                         R3 3
       24 JUMPIFNOTEQ                      R2 R3 ; [+11]
       26 JUMPIFEQKS                       R1 K3 ["head"] ; [+21]
       28 JUMPIFEQKS                       R1 K4 ["body"] ; [+19]
       30 GETUPVAL                         R2 4
       31 MOVE                             R3 R1
       32 GETTABLEKS                       R4 R0 K5 ["memoizedProps"]
       34 CALL                             R2 2 1
       35 JUMPIF                           R2 ; [+12]
       36 GETUPVAL                         R2 5
       37 JUMPIFNOT                        R2 ; [+10]
       38 GETGLOBAL                        R3 K6 ["deleteHydratableInstance"]
       40 MOVE                             R4 R0
       41 MOVE                             R5 R2
       42 CALL                             R3 2 0
       43 GETUPVAL                         R3 6
       44 MOVE                             R4 R2
       45 CALL                             R3 1 1
       46 MOVE                             R2 R3
       47 JUMPBACK                         ; [-11]
       48 GETGLOBAL                        R2 K0 ["popToNextHostParent"]
       50 MOVE                             R3 R0
       51 CALL                             R2 1 0
       52 GETTABLEKS                       R2 R0 K2 ["tag"]
       54 GETUPVAL                         R3 7
       55 JUMPIFNOTEQ                      R2 R3 ; [+7]
       57 GETGLOBAL                        R2 K7 ["skipPastDehydratedSuspenseInstance"]
       59 MOVE                             R3 R0
       60 CALL                             R2 1 1
       61 SETUPVAL                         R2 5
       62 JUMP                             ; [+10]
       63 GETUPVAL                         R2 1
       64 JUMPIFNOT                        R2 ; [+6]
       65 GETUPVAL                         R2 6
       66 GETTABLEKS                       R3 R0 K8 ["stateNode"]
       68 CALL                             R2 1 1
       69 SETUPVAL                         R2 5
       70 JUMP                             ; [+2]
       71 LOADNIL                          R2
       72 SETUPVAL                         R2 5
       73 LOADB                            R2 1
       74 RETURN                           R2 1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 LOADNIL                          R0
        4 SETUPVAL                         R0 1
        5 LOADNIL                          R0
        6 SETUPVAL                         R0 2
        7 LOADB                            R0 0
        8 SETUPVAL                         R0 3
        9 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["ReactGlobals"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R3 K4 [require]
       14 GETTABLEKS                       R4 R0 K6 ["Shared"]
       16 CALL                             R3 1 1
       17 GETTABLEKS                       R2 R3 K7 ["console"]
       19 DUPCLOSURE                       R3 K8 [PROTO_0]
       20 GETIMPORT                        R4 K4 [require]
       22 GETIMPORT                        R7 K1 [script]
       24 GETTABLEKS                       R6 R7 K2 ["Parent"]
       26 GETTABLEKS                       R5 R6 K9 ["ReactInternalTypes"]
       28 CALL                             R4 1 1
       29 GETIMPORT                        R5 K4 [require]
       31 GETIMPORT                        R8 K1 [script]
       33 GETTABLEKS                       R7 R8 K2 ["Parent"]
       35 GETTABLEKS                       R6 R7 K10 ["ReactFiberHostConfig"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K4 [require]
       40 GETIMPORT                        R9 K1 [script]
       42 GETTABLEKS                       R8 R9 K2 ["Parent"]
       44 GETTABLEKS                       R7 R8 K11 ["ReactFiberSuspenseComponent.new"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K4 [require]
       49 GETIMPORT                        R10 K1 [script]
       51 GETTABLEKS                       R9 R10 K2 ["Parent"]
       53 GETTABLEKS                       R8 R9 K12 ["ReactWorkTags"]
       55 CALL                             R7 1 1
       56 GETTABLEKS                       R8 R7 K13 ["HostComponent"]
       58 GETTABLEKS                       R9 R7 K14 ["HostText"]
       60 GETTABLEKS                       R10 R7 K15 ["HostRoot"]
       62 GETTABLEKS                       R11 R7 K16 ["SuspenseComponent"]
       64 GETIMPORT                        R12 K4 [require]
       66 GETIMPORT                        R15 K1 [script]
       68 GETTABLEKS                       R14 R15 K2 ["Parent"]
       70 GETTABLEKS                       R13 R14 K17 ["ReactFiberFlags"]
       72 CALL                             R12 1 1
       73 GETTABLEKS                       R13 R12 K18 ["Placement"]
       75 GETTABLEKS                       R14 R12 K19 ["Hydrating"]
       77 GETIMPORT                        R16 K4 [require]
       79 GETTABLEKS                       R17 R0 K6 ["Shared"]
       81 CALL                             R16 1 1
       82 GETTABLEKS                       R15 R16 K20 ["invariant"]
       84 GETIMPORT                        R16 K4 [require]
       86 GETIMPORT                        R19 K1 [script]
       88 GETTABLEKS                       R18 R19 K2 ["Parent"]
       90 GETTABLEKS                       R17 R18 K21 ["ReactFiber.new"]
       92 CALL                             R16 1 1
       93 GETTABLEKS                       R17 R16 K22 ["createFiberFromDehydratedFragment"]
       95 GETTABLEKS                       R18 R5 K23 ["supportsHydration"]
       97 GETTABLEKS                       R19 R5 K24 ["getNextHydratableSibling"]
       99 GETTABLEKS                       R20 R5 K25 ["getFirstHydratableChild"]
      101 GETTABLEKS                       R21 R5 K26 ["canHydrateInstance"]
      103 GETTABLEKS                       R22 R5 K27 ["canHydrateTextInstance"]
      105 GETTABLEKS                       R23 R5 K28 ["canHydrateSuspenseInstance"]
      107 GETTABLEKS                       R24 R5 K29 ["hydrateInstance"]
      109 GETTABLEKS                       R25 R5 K30 ["hydrateTextInstance"]
      111 GETTABLEKS                       R26 R5 K31 ["hydrateSuspenseInstance"]
      113 GETTABLEKS                       R27 R5 K32 ["getNextHydratableInstanceAfterSuspenseInstance"]
      115 GETTABLEKS                       R28 R5 K33 ["didNotMatchHydratedContainerTextInstance"]
      117 GETTABLEKS                       R29 R5 K34 ["didNotMatchHydratedTextInstance"]
      119 GETTABLEKS                       R30 R5 K35 ["shouldSetTextContent"]
      121 GETIMPORT                        R33 K4 [require]
      123 GETTABLEKS                       R34 R0 K6 ["Shared"]
      125 CALL                             R33 1 1
      126 GETTABLEKS                       R32 R33 K36 ["ReactFeatureFlags"]
      128 GETTABLEKS                       R31 R32 K37 ["enableSuspenseServerRenderer"]
      130 GETIMPORT                        R33 K4 [require]
      132 GETIMPORT                        R36 K1 [script]
      134 GETTABLEKS                       R35 R36 K2 ["Parent"]
      136 GETTABLEKS                       R34 R35 K38 ["ReactFiberLane"]
      138 CALL                             R33 1 1
      139 GETTABLEKS                       R32 R33 K39 ["OffscreenLane"]
      141 LOADNIL                          R33
      142 LOADNIL                          R34
      143 LOADB                            R35 0
      144 NEWCLOSURE                       R36 P1
      145 CAPTURE                          VAL R1
      146 CAPTURE                          REF R35
      147 CAPTURE                          VAL R2
      148 SETGLOBAL                        R36 K40 ["warnIfHydrating"]
      150 NEWCLOSURE                       R36 P2
      151 CAPTURE                          VAL R18
      152 CAPTURE                          REF R34
      153 CAPTURE                          VAL R20
      154 CAPTURE                          REF R33
      155 CAPTURE                          REF R35
      156 SETGLOBAL                        R36 K41 ["enterHydrationState"]
      158 NEWCLOSURE                       R36 P3
      159 CAPTURE                          VAL R18
      160 CAPTURE                          REF R34
      161 CAPTURE                          VAL R19
      162 CAPTURE                          REF R35
      163 SETGLOBAL                        R36 K42 ["reenterHydrationStateFromDehydratedSuspenseInstance"]
      165 DUPCLOSURE                       R36 K43 [PROTO_4]
      166 SETGLOBAL                        R36 K44 ["deleteHydratableInstance"]
      168 DUPCLOSURE                       R36 K45 [PROTO_5]
      169 CAPTURE                          VAL R14
      170 CAPTURE                          VAL R13
      171 CAPTURE                          VAL R1
      172 SETGLOBAL                        R36 K46 ["insertNonHydratedInstance"]
      174 DUPCLOSURE                       R36 K47 [PROTO_6]
      175 CAPTURE                          VAL R8
      176 CAPTURE                          VAL R21
      177 CAPTURE                          VAL R9
      178 CAPTURE                          VAL R22
      179 CAPTURE                          VAL R11
      180 CAPTURE                          VAL R31
      181 CAPTURE                          VAL R23
      182 CAPTURE                          VAL R32
      183 CAPTURE                          VAL R17
      184 SETGLOBAL                        R36 K48 ["tryHydrate"]
      186 NEWCLOSURE                       R36 P7
      187 CAPTURE                          REF R35
      188 CAPTURE                          REF R34
      189 CAPTURE                          REF R33
      190 CAPTURE                          VAL R19
      191 CAPTURE                          VAL R20
      192 SETGLOBAL                        R36 K49 ["tryToClaimNextHydratableInstance"]
      194 DUPCLOSURE                       R36 K50 [PROTO_8]
      195 CAPTURE                          VAL R18
      196 CAPTURE                          VAL R15
      197 CAPTURE                          VAL R24
      198 SETGLOBAL                        R36 K51 ["prepareToHydrateHostInstance"]
      200 NEWCLOSURE                       R36 P9
      201 CAPTURE                          VAL R18
      202 CAPTURE                          VAL R15
      203 CAPTURE                          VAL R25
      204 CAPTURE                          VAL R1
      205 CAPTURE                          REF R33
      206 CAPTURE                          VAL R10
      207 CAPTURE                          VAL R28
      208 CAPTURE                          VAL R8
      209 CAPTURE                          VAL R29
      210 SETGLOBAL                        R36 K52 ["prepareToHydrateHostTextInstance"]
      212 DUPCLOSURE                       R36 K53 [PROTO_10]
      213 CAPTURE                          VAL R18
      214 CAPTURE                          VAL R15
      215 CAPTURE                          VAL R26
      216 SETGLOBAL                        R36 K54 ["prepareToHydrateHostSuspenseInstance"]
      218 DUPCLOSURE                       R36 K55 [PROTO_11]
      219 CAPTURE                          VAL R18
      220 CAPTURE                          VAL R15
      221 CAPTURE                          VAL R27
      222 SETGLOBAL                        R36 K56 ["skipPastDehydratedSuspenseInstance"]
      224 NEWCLOSURE                       R36 P12
      225 CAPTURE                          VAL R8
      226 CAPTURE                          VAL R10
      227 CAPTURE                          VAL R11
      228 CAPTURE                          REF R33
      229 SETGLOBAL                        R36 K57 ["popToNextHostParent"]
      231 NEWCLOSURE                       R36 P13
      232 CAPTURE                          VAL R18
      233 CAPTURE                          REF R33
      234 CAPTURE                          REF R35
      235 CAPTURE                          VAL R8
      236 CAPTURE                          VAL R30
      237 CAPTURE                          REF R34
      238 CAPTURE                          VAL R19
      239 CAPTURE                          VAL R11
      240 SETGLOBAL                        R36 K58 ["popHydrationState"]
      242 NEWCLOSURE                       R36 P14
      243 CAPTURE                          VAL R18
      244 CAPTURE                          REF R33
      245 CAPTURE                          REF R34
      246 CAPTURE                          REF R35
      247 SETGLOBAL                        R36 K59 ["resetHydrationState"]
      249 NEWCLOSURE                       R36 P15
      250 CAPTURE                          REF R35
      251 SETGLOBAL                        R36 K60 ["getIsHydrating"]
      253 DUPTABLE                         R36 K61 [{"warnIfHydrating", "enterHydrationState", "getIsHydrating", "reenterHydrationStateFromDehydratedSuspenseInstance", "resetHydrationState", "tryToClaimNextHydratableInstance", "prepareToHydrateHostInstance", "prepareToHydrateHostTextInstance", "prepareToHydrateHostSuspenseInstance", "popHydrationState"}]
      254 GETGLOBAL                        R37 K40 ["warnIfHydrating"]
      256 SETTABLEKS                       R37 R36 K40 ["warnIfHydrating"]
      258 GETGLOBAL                        R37 K41 ["enterHydrationState"]
      260 SETTABLEKS                       R37 R36 K41 ["enterHydrationState"]
      262 GETGLOBAL                        R37 K60 ["getIsHydrating"]
      264 SETTABLEKS                       R37 R36 K60 ["getIsHydrating"]
      266 GETGLOBAL                        R37 K42 ["reenterHydrationStateFromDehydratedSuspenseInstance"]
      268 SETTABLEKS                       R37 R36 K42 ["reenterHydrationStateFromDehydratedSuspenseInstance"]
      270 GETGLOBAL                        R37 K59 ["resetHydrationState"]
      272 SETTABLEKS                       R37 R36 K59 ["resetHydrationState"]
      274 GETGLOBAL                        R37 K49 ["tryToClaimNextHydratableInstance"]
      276 SETTABLEKS                       R37 R36 K49 ["tryToClaimNextHydratableInstance"]
      278 GETGLOBAL                        R37 K51 ["prepareToHydrateHostInstance"]
      280 SETTABLEKS                       R37 R36 K51 ["prepareToHydrateHostInstance"]
      282 GETGLOBAL                        R37 K52 ["prepareToHydrateHostTextInstance"]
      284 SETTABLEKS                       R37 R36 K52 ["prepareToHydrateHostTextInstance"]
      286 GETGLOBAL                        R37 K54 ["prepareToHydrateHostSuspenseInstance"]
      288 SETTABLEKS                       R37 R36 K54 ["prepareToHydrateHostSuspenseInstance"]
      290 GETGLOBAL                        R37 K58 ["popHydrationState"]
      292 SETTABLEKS                       R37 R36 K58 ["popHydrationState"]
      294 CLOSEUPVALS                      R33
      295 RETURN                           R36 1
