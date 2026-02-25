PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Util_waitForGuestReady_IsReady"]
        2 LOADNIL                          R3
        3 NAMECALL                         R0 R0 K1 ["FireHost"]
        5 CALL                             R0 3 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Util_waitForGuestReady_IsReady"]
        2 LOADNIL                          R3
        3 NAMECALL                         R0 R0 K1 ["FireHost"]
        5 CALL                             R0 3 0
        6 RETURN                           R0 0

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
       13 JUMPIFNOT                        R1 ; [+9]
       14 NEWCLOSURE                       R1 P1
       15 CAPTURE                          VAL R0
       16 LOADK                            R4 K3 ["Util_waitForGuestReady_Ping"]
       17 NEWCLOSURE                       R5 P2
       18 CAPTURE                          VAL R0
       19 NAMECALL                         R2 R0 K4 ["OnGuestEvent"]
       21 CALL                             R2 3 0
       22 RETURN                           R1 1
       23 NAMECALL                         R1 R0 K1 ["IsHost"]
       25 CALL                             R1 1 1
       26 JUMPIFNOT                        R1 ; [+24]
       27 GETIMPORT                        R1 K7 [coroutine.running]
       29 CALL                             R1 0 1
       30 LOADB                            R2 0
       31 LOADK                            R5 K8 ["Util_waitForGuestReady_IsReady"]
       32 NEWCLOSURE                       R6 P3
       33 CAPTURE                          REF R2
       34 CAPTURE                          VAL R1
       35 NAMECALL                         R3 R0 K9 ["OnHostEvent"]
       37 CALL                             R3 3 2
       38 LOADK                            R7 K3 ["Util_waitForGuestReady_Ping"]
       39 LOADNIL                          R8
       40 NAMECALL                         R5 R0 K10 ["FireGuest"]
       42 CALL                             R5 3 0
       43 JUMPIF                           R2 ; [+3]
       44 GETIMPORT                        R5 K12 [coroutine.yield]
       46 CALL                             R5 0 0
       47 JUMPIFNOT                        R4 ; [+2]
       48 MOVE                             R5 R4
       49 CALL                             R5 0 0
       50 CLOSEUPVALS                      R2
       51 DUPCLOSURE                       R1 K13 [PROTO_4]
       52 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["DMNetworking"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_5]
       15 RETURN                           R2 1
