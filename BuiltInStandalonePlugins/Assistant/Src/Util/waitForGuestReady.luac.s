PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 LOADK                            R2 K0 ["Util_waitForGuestReady_IsReady"]
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K1 ["Types"]
        7 GETTABLEKS                       R3 R3 K2 ["Edit"]
        9 NAMECALL                         R0 R0 K3 ["FireHost"]
       11 CALL                             R0 3 0
       12 GETUPVAL                         R0 1
       13 LOADK                            R2 K0 ["Util_waitForGuestReady_IsReady"]
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R3 R3 K1 ["Types"]
       17 GETTABLEKS                       R3 R3 K4 ["Server"]
       19 NAMECALL                         R0 R0 K3 ["FireHost"]
       21 CALL                             R0 3 0
       22 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R0 1
        4 SETUPVAL                         R0 0
        5 GETUPVAL                         R0 1
        6 LOADK                            R2 K0 ["Util_waitForGuestReady_IsReady"]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K1 ["Types"]
       10 GETTABLEKS                       R3 R3 K2 ["Edit"]
       12 NAMECALL                         R0 R0 K3 ["FireHost"]
       14 CALL                             R0 3 0
       15 GETUPVAL                         R0 1
       16 LOADK                            R2 K0 ["Util_waitForGuestReady_IsReady"]
       17 GETUPVAL                         R3 2
       18 GETTABLEKS                       R3 R3 K1 ["Types"]
       20 GETTABLEKS                       R3 R3 K4 ["Server"]
       22 NAMECALL                         R0 R0 K3 ["FireHost"]
       24 CALL                             R0 3 0
       25 RETURN                           R0 0

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
       13 JUMPIFNOT                        R1 ; [+16]
       14 LOADB                            R1 0
       15 NEWCLOSURE                       R2 P1
       16 CAPTURE                          REF R1
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U0
       19 LOADK                            R5 K3 ["Util_waitForGuestReady_Ping"]
       20 NEWCLOSURE                       R6 P2
       21 CAPTURE                          REF R1
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U0
       24 NAMECALL                         R3 R0 K4 ["OnGuestEvent"]
       26 CALL                             R3 3 0
       27 CLOSEUPVALS                      R1
       28 RETURN                           R2 1
       29 CLOSEUPVALS                      R1
       30 NAMECALL                         R1 R0 K1 ["IsHost"]
       32 CALL                             R1 1 1
       33 JUMPIFNOT                        R1 ; [+37]
       34 GETIMPORT                        R1 K7 [coroutine.running]
       36 CALL                             R1 0 1
       37 LOADB                            R2 0
       38 LOADK                            R5 K8 ["Util_waitForGuestReady_IsReady"]
       39 NEWCLOSURE                       R6 P3
       40 CAPTURE                          REF R2
       41 CAPTURE                          VAL R1
       42 NAMECALL                         R3 R0 K9 ["OnHostEvent"]
       44 CALL                             R3 3 2
       45 LOADK                            R7 K3 ["Util_waitForGuestReady_Ping"]
       46 GETUPVAL                         R8 0
       47 GETTABLEKS                       R8 R8 K10 ["Types"]
       49 GETTABLEKS                       R8 R8 K11 ["Standalone"]
       51 NAMECALL                         R5 R0 K12 ["FireGuest"]
       53 CALL                             R5 3 0
       54 LOADK                            R7 K3 ["Util_waitForGuestReady_Ping"]
       55 GETUPVAL                         R8 0
       56 GETTABLEKS                       R8 R8 K10 ["Types"]
       58 GETTABLEKS                       R8 R8 K13 ["Client"]
       60 NAMECALL                         R5 R0 K12 ["FireGuest"]
       62 CALL                             R5 3 0
       63 JUMPIF                           R2 ; [+3]
       64 GETIMPORT                        R5 K15 [coroutine.yield]
       66 CALL                             R5 0 0
       67 JUMPIFNOT                        R4 ; [+2]
       68 MOVE                             R5 R4
       69 CALL                             R5 0 0
       70 CLOSEUPVALS                      R2
       71 DUPCLOSURE                       R1 K16 [PROTO_4]
       72 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["AssistantUI"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["DMNetworking"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["Utils"]
       23 GETTABLEKS                       R3 R3 K10 ["DataModelType"]
       25 DUPCLOSURE                       R4 K11 [PROTO_5]
       26 CAPTURE                          VAL R3
       27 RETURN                           R4 1
