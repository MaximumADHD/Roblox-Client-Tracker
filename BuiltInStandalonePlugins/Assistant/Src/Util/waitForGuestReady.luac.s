PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+21]
        3 GETUPVAL                         R0 1
        4 LOADK                            R2 K0 ["Util_waitForGuestReady_IsReady"]
        5 GETUPVAL                         R5 2
        6 GETTABLEKS                       R4 R5 K1 ["Types"]
        8 GETTABLEKS                       R3 R4 K2 ["Client"]
       10 NAMECALL                         R0 R0 K3 ["FireHost"]
       12 CALL                             R0 3 0
       13 GETUPVAL                         R0 1
       14 LOADK                            R2 K0 ["Util_waitForGuestReady_IsReady"]
       15 GETUPVAL                         R5 2
       16 GETTABLEKS                       R4 R5 K1 ["Types"]
       18 GETTABLEKS                       R3 R4 K4 ["Server"]
       20 NAMECALL                         R0 R0 K3 ["FireHost"]
       22 CALL                             R0 3 0
       23 RETURN                           R0 0
       24 GETUPVAL                         R0 1
       25 LOADK                            R2 K0 ["Util_waitForGuestReady_IsReady"]
       26 LOADNIL                          R3
       27 NAMECALL                         R0 R0 K3 ["FireHost"]
       29 CALL                             R0 3 0
       30 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+21]
        3 GETUPVAL                         R0 1
        4 LOADK                            R2 K0 ["Util_waitForGuestReady_IsReady"]
        5 GETUPVAL                         R5 2
        6 GETTABLEKS                       R4 R5 K1 ["Types"]
        8 GETTABLEKS                       R3 R4 K2 ["Client"]
       10 NAMECALL                         R0 R0 K3 ["FireHost"]
       12 CALL                             R0 3 0
       13 GETUPVAL                         R0 1
       14 LOADK                            R2 K0 ["Util_waitForGuestReady_IsReady"]
       15 GETUPVAL                         R5 2
       16 GETTABLEKS                       R4 R5 K1 ["Types"]
       18 GETTABLEKS                       R3 R4 K4 ["Server"]
       20 NAMECALL                         R0 R0 K3 ["FireHost"]
       22 CALL                             R0 3 0
       23 RETURN                           R0 0
       24 GETUPVAL                         R0 1
       25 LOADK                            R2 K0 ["Util_waitForGuestReady_IsReady"]
       26 LOADNIL                          R3
       27 NAMECALL                         R0 R0 K3 ["FireHost"]
       29 CALL                             R0 3 0
       30 RETURN                           R0 0

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
       13 JUMPIFNOT                        R1 ; [+13]
       14 NEWCLOSURE                       R1 P1
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U1
       18 LOADK                            R4 K3 ["Util_waitForGuestReady_Ping"]
       19 NEWCLOSURE                       R5 P2
       20 CAPTURE                          UPVAL U0
       21 CAPTURE                          VAL R0
       22 CAPTURE                          UPVAL U1
       23 NAMECALL                         R2 R0 K4 ["OnGuestEvent"]
       25 CALL                             R2 3 0
       26 RETURN                           R1 1
       27 NAMECALL                         R1 R0 K1 ["IsHost"]
       29 CALL                             R1 1 1
       30 JUMPIFNOT                        R1 ; [+29]
       31 GETIMPORT                        R1 K7 [coroutine.running]
       33 CALL                             R1 0 1
       34 LOADB                            R2 0
       35 LOADK                            R5 K8 ["Util_waitForGuestReady_IsReady"]
       36 NEWCLOSURE                       R6 P3
       37 CAPTURE                          REF R2
       38 CAPTURE                          VAL R1
       39 NAMECALL                         R3 R0 K9 ["OnHostEvent"]
       41 CALL                             R3 3 2
       42 LOADK                            R7 K3 ["Util_waitForGuestReady_Ping"]
       43 GETUPVAL                         R9 0
       44 CALL                             R9 0 1
       45 JUMPIFNOT                        R9 ; [+2]
       46 LOADK                            R8 K10 ["Standalone"]
       47 JUMP                             ; [+1]
       48 LOADNIL                          R8
       49 NAMECALL                         R5 R0 K11 ["FireGuest"]
       51 CALL                             R5 3 0
       52 JUMPIF                           R2 ; [+3]
       53 GETIMPORT                        R5 K13 [coroutine.yield]
       55 CALL                             R5 0 0
       56 JUMPIFNOT                        R4 ; [+2]
       57 MOVE                             R5 R4
       58 CALL                             R5 0 0
       59 CLOSEUPVALS                      R2
       60 DUPCLOSURE                       R1 K14 [PROTO_4]
       61 RETURN                           R1 1

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
