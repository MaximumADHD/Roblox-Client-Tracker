PROTO_0:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 LOADK                            R2 K0 ["Util_waitForGuestReady_IsReady"]
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K1 ["ALL"]
        7 NAMECALL                         R0 R0 K2 ["FireHost"]
        9 CALL                             R0 3 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 1
        4 LOADK                            R3 K0 ["Util_waitForGuestReady_IsReady"]
        5 MOVE                             R4 R0
        6 NAMECALL                         R1 R1 K1 ["FireHost"]
        8 CALL                             R1 3 0
        9 RETURN                           R0 0

PROTO_2:
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

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 NAMECALL                         R1 R0 K0 ["IsGuest"]
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+15]
        4 LOADB                            R1 0
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          REF R1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U0
        9 LOADK                            R5 K1 ["Util_waitForGuestReady_Ping"]
       10 NEWCLOSURE                       R6 P1
       11 CAPTURE                          REF R1
       12 CAPTURE                          VAL R0
       13 NAMECALL                         R3 R0 K2 ["OnGuestEvent"]
       15 CALL                             R3 3 0
       16 CLOSEUPVALS                      R1
       17 RETURN                           R2 1
       18 CLOSEUPVALS                      R1
       19 NAMECALL                         R1 R0 K3 ["IsHost"]
       21 CALL                             R1 1 1
       22 JUMPIFNOT                        R1 ; [+27]
       23 GETIMPORT                        R1 K6 [coroutine.running]
       25 CALL                             R1 0 1
       26 LOADB                            R2 0
       27 LOADK                            R5 K7 ["Util_waitForGuestReady_IsReady"]
       28 NEWCLOSURE                       R6 P2
       29 CAPTURE                          REF R2
       30 CAPTURE                          VAL R1
       31 NAMECALL                         R3 R0 K8 ["OnHostEvent"]
       33 CALL                             R3 3 2
       34 JUMPIF                           R2 ; [+7]
       35 LOADK                            R7 K1 ["Util_waitForGuestReady_Ping"]
       36 GETUPVAL                         R8 0
       37 GETTABLEKS                       R8 R8 K9 ["ALL"]
       39 NAMECALL                         R5 R0 K10 ["FireGuest"]
       41 CALL                             R5 3 0
       42 JUMPIF                           R2 ; [+3]
       43 GETIMPORT                        R5 K12 [coroutine.yield]
       45 CALL                             R5 0 0
       46 JUMPIFNOT                        R4 ; [+2]
       47 MOVE                             R5 R4
       48 CALL                             R5 0 0
       49 CLOSEUPVALS                      R2
       50 DUPCLOSURE                       R1 K13 [PROTO_3]
       51 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["DMNetworking"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_4]
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1
