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
        0 GETIMPORT                        R0 K1 [_G]
        2 GETTABLEKS                       R0 R0 K2 ["__DEV__"]
        4 JUMPIFNOT                        R0 ; [+7]
        5 GETUPVAL                         R0 0
        6 JUMPIFNOT                        R0 ; [+5]
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K3 ["error"]
       10 LOADK                            R1 K4 ["We should not be hydrating here. This is a bug in React. Please file a bug."]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+2]
        2 LOADB                            R1 0
        3 RETURN                           R1 1
        4 GETTABLEKS                       R1 R0 K0 ["stateNode"]
        6 GETTABLEKS                       R1 R1 K1 ["containerInfo"]
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
       37 GETIMPORT                        R2 K16 [_G]
       39 GETTABLEKS                       R2 R2 K17 ["__DEV__"]
       41 JUMPIFNOT                        R2 ; [0]
       42 RETURN                           R0 0

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
       15 GETIMPORT                        R4 K4 [_G]
       17 GETTABLEKS                       R4 R4 K5 ["__DEV__"]
       19 JUMPIFNOT                        R4 ; [+37]
       20 JUMPIFNOT                        R3 ; [+36]
       21 GETUPVAL                         R4 3
       22 JUMPIFEQKNIL                     R4 ; [+34]
       24 GETTABLEKS                       R5 R4 K6 ["tag"]
       26 GETUPVAL                         R6 4
       27 JUMPIFNOTEQ                      R5 R6 ; [+11]
       29 GETTABLEKS                       R5 R4 K1 ["stateNode"]
       31 GETTABLEKS                       R5 R5 K7 ["containerInfo"]
       33 GETUPVAL                         R6 5
       34 MOVE                             R7 R5
       35 MOVE                             R8 R1
       36 MOVE                             R9 R2
       37 CALL                             R6 3 0
       38 RETURN                           R3 1
       39 GETTABLEKS                       R5 R4 K6 ["tag"]
       41 GETUPVAL                         R6 6
       42 JUMPIFNOTEQ                      R5 R6 ; [+14]
       44 GETTABLEKS                       R5 R4 K8 ["type"]
       46 GETTABLEKS                       R6 R4 K2 ["memoizedProps"]
       48 GETTABLEKS                       R7 R4 K1 ["stateNode"]
       50 GETUPVAL                         R8 7
       51 MOVE                             R9 R5
       52 MOVE                             R10 R6
       53 MOVE                             R11 R7
       54 MOVE                             R12 R1
       55 MOVE                             R13 R2
       56 CALL                             R8 5 0
       57 RETURN                           R3 1

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
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Shared"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R1 R1 K6 ["console"]
       14 DUPCLOSURE                       R2 K7 [PROTO_0]
       15 GETIMPORT                        R3 K4 [require]
       17 GETIMPORT                        R4 K1 [script]
       19 GETTABLEKS                       R4 R4 K2 ["Parent"]
       21 GETTABLEKS                       R4 R4 K8 ["ReactInternalTypes"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K4 [require]
       26 GETIMPORT                        R5 K1 [script]
       28 GETTABLEKS                       R5 R5 K2 ["Parent"]
       30 GETTABLEKS                       R5 R5 K9 ["ReactFiberHostConfig"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K4 [require]
       35 GETIMPORT                        R7 K1 [script]
       37 GETTABLEKS                       R7 R7 K2 ["Parent"]
       39 GETTABLEKS                       R6 R7 K10 ["ReactFiberSuspenseComponent.new"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K4 [require]
       44 GETIMPORT                        R7 K1 [script]
       46 GETTABLEKS                       R7 R7 K2 ["Parent"]
       48 GETTABLEKS                       R7 R7 K11 ["ReactWorkTags"]
       50 CALL                             R6 1 1
       51 GETTABLEKS                       R7 R6 K12 ["HostComponent"]
       53 GETTABLEKS                       R8 R6 K13 ["HostText"]
       55 GETTABLEKS                       R9 R6 K14 ["HostRoot"]
       57 GETTABLEKS                       R10 R6 K15 ["SuspenseComponent"]
       59 GETIMPORT                        R11 K4 [require]
       61 GETIMPORT                        R12 K1 [script]
       63 GETTABLEKS                       R12 R12 K2 ["Parent"]
       65 GETTABLEKS                       R12 R12 K16 ["ReactFiberFlags"]
       67 CALL                             R11 1 1
       68 GETTABLEKS                       R12 R11 K17 ["Placement"]
       70 GETTABLEKS                       R13 R11 K18 ["Hydrating"]
       72 GETIMPORT                        R14 K4 [require]
       74 GETTABLEKS                       R15 R0 K5 ["Shared"]
       76 CALL                             R14 1 1
       77 GETTABLEKS                       R14 R14 K19 ["invariant"]
       79 GETIMPORT                        R15 K4 [require]
       81 GETIMPORT                        R17 K1 [script]
       83 GETTABLEKS                       R17 R17 K2 ["Parent"]
       85 GETTABLEKS                       R16 R17 K20 ["ReactFiber.new"]
       87 CALL                             R15 1 1
       88 GETTABLEKS                       R16 R15 K21 ["createFiberFromDehydratedFragment"]
       90 GETTABLEKS                       R17 R4 K22 ["supportsHydration"]
       92 GETTABLEKS                       R18 R4 K23 ["getNextHydratableSibling"]
       94 GETTABLEKS                       R19 R4 K24 ["getFirstHydratableChild"]
       96 GETTABLEKS                       R20 R4 K25 ["canHydrateInstance"]
       98 GETTABLEKS                       R21 R4 K26 ["canHydrateTextInstance"]
      100 GETTABLEKS                       R22 R4 K27 ["canHydrateSuspenseInstance"]
      102 GETTABLEKS                       R23 R4 K28 ["hydrateInstance"]
      104 GETTABLEKS                       R24 R4 K29 ["hydrateTextInstance"]
      106 GETTABLEKS                       R25 R4 K30 ["hydrateSuspenseInstance"]
      108 GETTABLEKS                       R26 R4 K31 ["getNextHydratableInstanceAfterSuspenseInstance"]
      110 GETTABLEKS                       R27 R4 K32 ["didNotMatchHydratedContainerTextInstance"]
      112 GETTABLEKS                       R28 R4 K33 ["didNotMatchHydratedTextInstance"]
      114 GETTABLEKS                       R29 R4 K34 ["shouldSetTextContent"]
      116 GETIMPORT                        R30 K4 [require]
      118 GETTABLEKS                       R31 R0 K5 ["Shared"]
      120 CALL                             R30 1 1
      121 GETTABLEKS                       R30 R30 K35 ["ReactFeatureFlags"]
      123 GETTABLEKS                       R30 R30 K36 ["enableSuspenseServerRenderer"]
      125 GETIMPORT                        R31 K4 [require]
      127 GETIMPORT                        R32 K1 [script]
      129 GETTABLEKS                       R32 R32 K2 ["Parent"]
      131 GETTABLEKS                       R32 R32 K37 ["ReactFiberLane"]
      133 CALL                             R31 1 1
      134 GETTABLEKS                       R31 R31 K38 ["OffscreenLane"]
      136 LOADNIL                          R32
      137 LOADNIL                          R33
      138 LOADB                            R34 0
      139 NEWCLOSURE                       R35 P1
      140 CAPTURE                          REF R34
      141 CAPTURE                          VAL R1
      142 SETGLOBAL                        R35 K39 ["warnIfHydrating"]
      144 NEWCLOSURE                       R35 P2
      145 CAPTURE                          VAL R17
      146 CAPTURE                          REF R33
      147 CAPTURE                          VAL R19
      148 CAPTURE                          REF R32
      149 CAPTURE                          REF R34
      150 SETGLOBAL                        R35 K40 ["enterHydrationState"]
      152 NEWCLOSURE                       R35 P3
      153 CAPTURE                          VAL R17
      154 CAPTURE                          REF R33
      155 CAPTURE                          VAL R18
      156 CAPTURE                          REF R34
      157 SETGLOBAL                        R35 K41 ["reenterHydrationStateFromDehydratedSuspenseInstance"]
      159 DUPCLOSURE                       R35 K42 [PROTO_4]
      160 SETGLOBAL                        R35 K43 ["deleteHydratableInstance"]
      162 DUPCLOSURE                       R35 K44 [PROTO_5]
      163 CAPTURE                          VAL R13
      164 CAPTURE                          VAL R12
      165 SETGLOBAL                        R35 K45 ["insertNonHydratedInstance"]
      167 DUPCLOSURE                       R35 K46 [PROTO_6]
      168 CAPTURE                          VAL R7
      169 CAPTURE                          VAL R20
      170 CAPTURE                          VAL R8
      171 CAPTURE                          VAL R21
      172 CAPTURE                          VAL R10
      173 CAPTURE                          VAL R30
      174 CAPTURE                          VAL R22
      175 CAPTURE                          VAL R31
      176 CAPTURE                          VAL R16
      177 SETGLOBAL                        R35 K47 ["tryHydrate"]
      179 NEWCLOSURE                       R35 P7
      180 CAPTURE                          REF R34
      181 CAPTURE                          REF R33
      182 CAPTURE                          REF R32
      183 CAPTURE                          VAL R18
      184 CAPTURE                          VAL R19
      185 SETGLOBAL                        R35 K48 ["tryToClaimNextHydratableInstance"]
      187 DUPCLOSURE                       R35 K49 [PROTO_8]
      188 CAPTURE                          VAL R17
      189 CAPTURE                          VAL R14
      190 CAPTURE                          VAL R23
      191 SETGLOBAL                        R35 K50 ["prepareToHydrateHostInstance"]
      193 NEWCLOSURE                       R35 P9
      194 CAPTURE                          VAL R17
      195 CAPTURE                          VAL R14
      196 CAPTURE                          VAL R24
      197 CAPTURE                          REF R32
      198 CAPTURE                          VAL R9
      199 CAPTURE                          VAL R27
      200 CAPTURE                          VAL R7
      201 CAPTURE                          VAL R28
      202 SETGLOBAL                        R35 K51 ["prepareToHydrateHostTextInstance"]
      204 DUPCLOSURE                       R35 K52 [PROTO_10]
      205 CAPTURE                          VAL R17
      206 CAPTURE                          VAL R14
      207 CAPTURE                          VAL R25
      208 SETGLOBAL                        R35 K53 ["prepareToHydrateHostSuspenseInstance"]
      210 DUPCLOSURE                       R35 K54 [PROTO_11]
      211 CAPTURE                          VAL R17
      212 CAPTURE                          VAL R14
      213 CAPTURE                          VAL R26
      214 SETGLOBAL                        R35 K55 ["skipPastDehydratedSuspenseInstance"]
      216 NEWCLOSURE                       R35 P12
      217 CAPTURE                          VAL R7
      218 CAPTURE                          VAL R9
      219 CAPTURE                          VAL R10
      220 CAPTURE                          REF R32
      221 SETGLOBAL                        R35 K56 ["popToNextHostParent"]
      223 NEWCLOSURE                       R35 P13
      224 CAPTURE                          VAL R17
      225 CAPTURE                          REF R32
      226 CAPTURE                          REF R34
      227 CAPTURE                          VAL R7
      228 CAPTURE                          VAL R29
      229 CAPTURE                          REF R33
      230 CAPTURE                          VAL R18
      231 CAPTURE                          VAL R10
      232 SETGLOBAL                        R35 K57 ["popHydrationState"]
      234 NEWCLOSURE                       R35 P14
      235 CAPTURE                          VAL R17
      236 CAPTURE                          REF R32
      237 CAPTURE                          REF R33
      238 CAPTURE                          REF R34
      239 SETGLOBAL                        R35 K58 ["resetHydrationState"]
      241 NEWCLOSURE                       R35 P15
      242 CAPTURE                          REF R34
      243 SETGLOBAL                        R35 K59 ["getIsHydrating"]
      245 DUPTABLE                         R35 K60 [{"warnIfHydrating", "enterHydrationState", "getIsHydrating", "reenterHydrationStateFromDehydratedSuspenseInstance", "resetHydrationState", "tryToClaimNextHydratableInstance", "prepareToHydrateHostInstance", "prepareToHydrateHostTextInstance", "prepareToHydrateHostSuspenseInstance", "popHydrationState"}]
      246 GETGLOBAL                        R36 K39 ["warnIfHydrating"]
      248 SETTABLEKS                       R36 R35 K39 ["warnIfHydrating"]
      250 GETGLOBAL                        R36 K40 ["enterHydrationState"]
      252 SETTABLEKS                       R36 R35 K40 ["enterHydrationState"]
      254 GETGLOBAL                        R36 K59 ["getIsHydrating"]
      256 SETTABLEKS                       R36 R35 K59 ["getIsHydrating"]
      258 GETGLOBAL                        R36 K41 ["reenterHydrationStateFromDehydratedSuspenseInstance"]
      260 SETTABLEKS                       R36 R35 K41 ["reenterHydrationStateFromDehydratedSuspenseInstance"]
      262 GETGLOBAL                        R36 K58 ["resetHydrationState"]
      264 SETTABLEKS                       R36 R35 K58 ["resetHydrationState"]
      266 GETGLOBAL                        R36 K48 ["tryToClaimNextHydratableInstance"]
      268 SETTABLEKS                       R36 R35 K48 ["tryToClaimNextHydratableInstance"]
      270 GETGLOBAL                        R36 K50 ["prepareToHydrateHostInstance"]
      272 SETTABLEKS                       R36 R35 K50 ["prepareToHydrateHostInstance"]
      274 GETGLOBAL                        R36 K51 ["prepareToHydrateHostTextInstance"]
      276 SETTABLEKS                       R36 R35 K51 ["prepareToHydrateHostTextInstance"]
      278 GETGLOBAL                        R36 K53 ["prepareToHydrateHostSuspenseInstance"]
      280 SETTABLEKS                       R36 R35 K53 ["prepareToHydrateHostSuspenseInstance"]
      282 GETGLOBAL                        R36 K57 ["popHydrationState"]
      284 SETTABLEKS                       R36 R35 K57 ["popHydrationState"]
      286 CLOSEUPVALS                      R32
      287 RETURN                           R35 1
