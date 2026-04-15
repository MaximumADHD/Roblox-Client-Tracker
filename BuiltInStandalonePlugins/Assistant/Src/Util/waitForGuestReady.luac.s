PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+21]
        5 GETUPVAL                         R0 2
        6 LOADK                            R2 K0 ["Util_waitForGuestReady_IsReady"]
        7 GETUPVAL                         R5 3
        8 GETTABLEKS                       R4 R5 K1 ["Types"]
       10 GETTABLEKS                       R3 R4 K2 ["Edit"]
       12 NAMECALL                         R0 R0 K3 ["FireHost"]
       14 CALL                             R0 3 0
       15 GETUPVAL                         R0 2
       16 LOADK                            R2 K0 ["Util_waitForGuestReady_IsReady"]
       17 GETUPVAL                         R5 3
       18 GETTABLEKS                       R4 R5 K1 ["Types"]
       20 GETTABLEKS                       R3 R4 K4 ["Server"]
       22 NAMECALL                         R0 R0 K3 ["FireHost"]
       24 CALL                             R0 3 0
       25 RETURN                           R0 0
       26 GETUPVAL                         R0 2
       27 LOADK                            R2 K0 ["Util_waitForGuestReady_IsReady"]
       28 LOADNIL                          R3
       29 NAMECALL                         R0 R0 K3 ["FireHost"]
       31 CALL                             R0 3 0
       32 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R0 1
        4 SETUPVAL                         R0 0
        5 GETUPVAL                         R0 1
        6 CALL                             R0 0 1
        7 JUMPIFNOT                        R0 ; [+21]
        8 GETUPVAL                         R0 2
        9 LOADK                            R2 K0 ["Util_waitForGuestReady_IsReady"]
       10 GETUPVAL                         R5 3
       11 GETTABLEKS                       R4 R5 K1 ["Types"]
       13 GETTABLEKS                       R3 R4 K2 ["Edit"]
       15 NAMECALL                         R0 R0 K3 ["FireHost"]
       17 CALL                             R0 3 0
       18 GETUPVAL                         R0 2
       19 LOADK                            R2 K0 ["Util_waitForGuestReady_IsReady"]
       20 GETUPVAL                         R5 3
       21 GETTABLEKS                       R4 R5 K1 ["Types"]
       23 GETTABLEKS                       R3 R4 K4 ["Server"]
       25 NAMECALL                         R0 R0 K3 ["FireHost"]
       27 CALL                             R0 3 0
       28 RETURN                           R0 0
       29 GETUPVAL                         R0 2
       30 LOADK                            R2 K0 ["Util_waitForGuestReady_IsReady"]
       31 LOADNIL                          R3
       32 NAMECALL                         R0 R0 K3 ["FireHost"]
       34 CALL                             R0 3 0
       35 RETURN                           R0 0

PROTO_3:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETIMPORT                        R0 K2 [coroutine.status]
        4 GETUPVAL                         R1 1
        5 CALL                             R0 1 1
        6 JUMPIFNOTEQKS                    R0 K3 ["suspended"] ; [+5]
        8 GETIMPORT                        R0 K6 [task.spawn]
       10 GETUPVAL                         R1 1
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 NAMECALL                         R1 R0 K0 ["IsGuest"]
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+6]
        4 NAMECALL                         R1 R0 K1 ["IsHost"]
        6 CALL                             R1 1 1
        7 JUMPIFNOT                        R1 ; [+2]
        8 DUPCLOSURE                       R1 K2 [PROTO_0]
        9 RETURN                           R1 1
       10 NAMECALL                         R1 R0 K0 ["IsGuest"]
       12 CALL                             R1 1 1
       13 JUMPIFNOT                        R1 ; [+18]
       14 LOADB                            R1 0
       15 NEWCLOSURE                       R2 P1
       16 CAPTURE                          REF R1
       17 CAPTURE                          UPVAL U0
       18 CAPTURE                          VAL R0
       19 CAPTURE                          UPVAL U1
       20 LOADK                            R5 K3 ["Util_waitForGuestReady_Ping"]
       21 NEWCLOSURE                       R6 P2
       22 CAPTURE                          REF R1
       23 CAPTURE                          UPVAL U0
       24 CAPTURE                          VAL R0
       25 CAPTURE                          UPVAL U1
       26 NAMECALL                         R3 R0 K4 ["OnGuestEvent"]
       28 CALL                             R3 3 0
       29 CLOSEUPVALS                      R1
       30 RETURN                           R2 1
       31 CLOSEUPVALS                      R1
       32 NAMECALL                         R1 R0 K1 ["IsHost"]
       34 CALL                             R1 1 1
       35 JUMPIFNOT                        R1 ; [+46]
       36 GETIMPORT                        R1 K7 [coroutine.running]
       38 CALL                             R1 0 1
       39 LOADB                            R2 0
       40 LOADK                            R5 K8 ["Util_waitForGuestReady_IsReady"]
       41 NEWCLOSURE                       R6 P3
       42 CAPTURE                          REF R2
       43 CAPTURE                          VAL R1
       44 NAMECALL                         R3 R0 K9 ["OnHostEvent"]
       46 CALL                             R3 3 2
       47 GETUPVAL                         R5 0
       48 CALL                             R5 0 1
       49 JUMPIFNOT                        R5 ; [+19]
       50 LOADK                            R7 K3 ["Util_waitForGuestReady_Ping"]
       51 GETUPVAL                         R10 1
       52 GETTABLEKS                       R9 R10 K10 ["Types"]
       54 GETTABLEKS                       R8 R9 K11 ["Standalone"]
       56 NAMECALL                         R5 R0 K12 ["FireGuest"]
       58 CALL                             R5 3 0
       59 LOADK                            R7 K3 ["Util_waitForGuestReady_Ping"]
       60 GETUPVAL                         R10 1
       61 GETTABLEKS                       R9 R10 K10 ["Types"]
       63 GETTABLEKS                       R8 R9 K13 ["Client"]
       65 NAMECALL                         R5 R0 K12 ["FireGuest"]
       67 CALL                             R5 3 0
       68 JUMP                             ; [+5]
       69 LOADK                            R7 K3 ["Util_waitForGuestReady_Ping"]
       70 LOADNIL                          R8
       71 NAMECALL                         R5 R0 K12 ["FireGuest"]
       73 CALL                             R5 3 0
       74 JUMPIF                           R2 ; [+3]
       75 GETIMPORT                        R5 K15 [coroutine.yield]
       77 CALL                             R5 0 0
       78 JUMPIFNOT                        R4 ; [+2]
       79 MOVE                             R5 R4
       80 CALL                             R5 0 0
       81 CLOSEUPVALS                      R2
       82 DUPCLOSURE                       R1 K16 [PROTO_4]
       83 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["AssistantUI"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["DMNetworking"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R5 R1 K9 ["Flags"]
       23 GETTABLEKS                       R4 R5 K10 ["Shared"]
       25 GETTABLEKS                       R3 R4 K11 ["FFlagAssistantDMNetworkIdentity"]
       27 GETTABLEKS                       R5 R1 K12 ["Utils"]
       29 GETTABLEKS                       R4 R5 K13 ["DataModelType"]
       31 DUPCLOSURE                       R5 K14 [PROTO_5]
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R4
       34 RETURN                           R5 1
