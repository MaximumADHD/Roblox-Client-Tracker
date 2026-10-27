PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 [0.8]
        2 SETTABLEKS                       R1 R0 K1 ["Transparency"]
        4 GETUPVAL                         R0 1
        5 LOADB                            R1 0
        6 SETTABLEKS                       R1 R0 K2 ["Enabled"]
        8 GETUPVAL                         R0 2
        9 LOADN                            R2 1
       10 NAMECALL                         R0 R0 K3 ["Emit"]
       12 CALL                             R0 2 0
       13 GETUPVAL                         R0 3
       14 LOADN                            R2 6
       15 NAMECALL                         R0 R0 K3 ["Emit"]
       17 CALL                             R0 2 0
       18 GETUPVAL                         R0 4
       19 NAMECALL                         R0 R0 K4 ["Play"]
       21 CALL                             R0 1 0
       22 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["Transparency"]
        4 GETUPVAL                         R0 1
        5 LOADB                            R1 1
        6 SETTABLEKS                       R1 R0 K1 ["Enabled"]
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["IsPickedUp"]
        2 NAMECALL                         R1 R1 K1 ["GetAttribute"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R2 1
        6 JUMPIFEQ                         R2 R1 ; [+10]
        8 JUMPIFNOT                        R1 ; [+4]
        9 GETGLOBAL                        R2 K2 ["playPickupEffect"]
       11 CALL                             R2 0 0
       12 JUMP                             ; [+3]
       13 GETGLOBAL                        R2 K3 ["stopPickupEffect"]
       15 CALL                             R2 0 0
       16 SETUPVAL                         R1 1
       17 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 LOADB                            R1 0
        6 LOADK                            R4 K3 ["PickupSound"]
        7 NAMECALL                         R2 R0 K4 ["WaitForChild"]
        9 CALL                             R2 2 1
       10 LOADK                            R5 K5 ["CoinMesh"]
       11 NAMECALL                         R3 R0 K4 ["WaitForChild"]
       13 CALL                             R3 2 1
       14 LOADK                            R6 K6 ["PointLight"]
       15 NAMECALL                         R4 R3 K4 ["WaitForChild"]
       17 CALL                             R4 2 1
       18 LOADK                            R7 K7 ["Center"]
       19 NAMECALL                         R5 R0 K4 ["WaitForChild"]
       21 CALL                             R5 2 1
       22 LOADK                            R7 K8 ["ImpactEmitter"]
       23 NAMECALL                         R5 R5 K4 ["WaitForChild"]
       25 CALL                             R5 2 1
       26 LOADK                            R8 K9 ["SparkleEmitter"]
       27 NAMECALL                         R6 R0 K4 ["WaitForChild"]
       29 CALL                             R6 2 1
       30 DUPCLOSURE                       R7 K10 [PROTO_0]
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R4
       33 CAPTURE                          VAL R5
       34 CAPTURE                          VAL R6
       35 CAPTURE                          VAL R2
       36 SETGLOBAL                        R7 K11 ["playPickupEffect"]
       38 DUPCLOSURE                       R7 K12 [PROTO_1]
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R4
       41 SETGLOBAL                        R7 K13 ["stopPickupEffect"]
       43 GETIMPORT                        R7 K15 [game]
       45 GETTABLEKS                       R7 R7 K16 ["RunService"]
       47 GETTABLEKS                       R7 R7 K17 ["RenderStepped"]
       49 NEWCLOSURE                       R9 P2
       50 CAPTURE                          VAL R0
       51 CAPTURE                          REF R1
       52 NAMECALL                         R7 R7 K18 ["Connect"]
       54 CALL                             R7 2 0
       55 CLOSEUPVALS                      R1
       56 RETURN                           R0 0
