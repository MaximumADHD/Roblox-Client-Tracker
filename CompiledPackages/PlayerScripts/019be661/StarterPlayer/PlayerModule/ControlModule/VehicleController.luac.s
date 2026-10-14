PROTO_0:
        0 NEWTABLE                         R1 2 0
        2 GETUPVAL                         R2 0
        3 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        5 GETIMPORT                        R0 K1 [setmetatable]
        7 CALL                             R0 2 1
        8 LOADB                            R1 0
        9 SETTABLEKS                       R1 R0 K2 ["enabled"]
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K3 ["vehicleSeat"]
       14 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["enabled"]
        2 JUMPIFNOTEQ                      R1 R3 ; [+6]
        4 GETTABLEKS                       R3 R0 K1 ["vehicleSeat"]
        6 JUMPIFNOTEQ                      R2 R3 ; [+2]
        8 RETURN                           R0 0
        9 SETTABLEKS                       R1 R0 K0 ["enabled"]
       11 JUMPIFNOT                        R1 ; [+9]
       12 JUMPIF                           R2 ; [+1]
       13 RETURN                           R0 0
       14 SETTABLEKS                       R2 R0 K1 ["vehicleSeat"]
       16 GETUPVAL                         R3 0
       17 LOADB                            R4 1
       18 SETTABLEKS                       R4 R3 K2 ["Enabled"]
       20 RETURN                           R0 0
       21 GETUPVAL                         R3 0
       22 LOADB                            R4 0
       23 SETTABLEKS                       R4 R3 K2 ["Enabled"]
       25 LOADNIL                          R3
       26 SETTABLEKS                       R3 R0 K1 ["vehicleSeat"]
       28 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["vehicleSeat"]
        2 JUMPIF                           R3 ; [+3]
        3 MOVE                             R3 R1
        4 LOADB                            R4 0
        5 RETURN                           R3 2
        6 JUMPIFNOT                        R2 ; [+33]
        7 GETUPVAL                         R3 0
        8 NAMECALL                         R3 R3 K1 ["GetState"]
       10 CALL                             R3 1 1
       11 GETUPVAL                         R4 1
       12 NAMECALL                         R4 R4 K1 ["GetState"]
       14 CALL                             R4 1 1
       15 LOADN                            R7 0
       16 MINUS                            R8 R3
       17 FASTCALL3                        VECTOR R4 R7 R8
       19 MOVE                             R6 R4
       20 GETIMPORT                        R5 K4 [Vector3.new]
       22 CALL                             R5 3 1
       23 ADD                              R1 R1 R5
       24 GETTABLEKS                       R5 R0 K0 ["vehicleSeat"]
       26 GETTABLEKS                       R7 R1 K5 ["Z"]
       28 MINUS                            R6 R7
       29 SETTABLEKS                       R6 R5 K6 ["ThrottleFloat"]
       31 GETTABLEKS                       R5 R0 K0 ["vehicleSeat"]
       33 GETTABLEKS                       R6 R1 K7 ["X"]
       35 SETTABLEKS                       R6 R5 K8 ["SteerFloat"]
       37 MOVE                             R5 R1
       38 LOADB                            R6 1
       39 RETURN                           R5 2
       40 GETTABLEKS                       R3 R0 K0 ["vehicleSeat"]
       42 GETTABLEKS                       R3 R3 K9 ["Occupant"]
       44 GETTABLEKS                       R3 R3 K10 ["RootPart"]
       46 GETTABLEKS                       R3 R3 K11 ["CFrame"]
       48 MOVE                             R5 R1
       49 NAMECALL                         R3 R3 K12 ["VectorToObjectSpace"]
       51 CALL                             R3 2 1
       52 GETTABLEKS                       R4 R0 K0 ["vehicleSeat"]
       54 MOVE                             R7 R3
       55 NAMECALL                         R5 R0 K13 ["ComputeThrottle"]
       57 CALL                             R5 2 1
       58 SETTABLEKS                       R5 R4 K6 ["ThrottleFloat"]
       60 GETTABLEKS                       R4 R0 K0 ["vehicleSeat"]
       62 MOVE                             R7 R3
       63 NAMECALL                         R5 R0 K14 ["ComputeSteer"]
       65 CALL                             R5 2 1
       66 SETTABLEKS                       R5 R4 K8 ["SteerFloat"]
       68 LOADK                            R4 K15 [{0, 0, 0}]
       69 LOADB                            R5 1
       70 RETURN                           R4 2

PROTO_3:
        0 LOADK                            R2 K0 [{0, 0, 0}]
        1 JUMPIFEQ                         R1 R2 ; [+5]
        3 GETTABLEKS                       R3 R1 K1 ["Z"]
        5 MINUS                            R2 R3
        6 RETURN                           R2 1
        7 LOADN                            R2 0
        8 RETURN                           R2 1

PROTO_4:
        0 LOADK                            R2 K0 [{0, 0, 0}]
        1 JUMPIFEQ                         R1 R2 ; [+15]
        3 GETTABLEKS                       R6 R1 K2 ["x"]
        5 MINUS                            R5 R6
        6 GETTABLEKS                       R7 R1 K3 ["z"]
        8 MINUS                            R6 R7
        9 FASTCALL2                        MATH_ATAN2 R5 R6 ; [+3]
       11 GETIMPORT                        R4 K6 [math.atan2]
       13 CALL                             R4 2 1
       14 MINUS                            R3 R4
       15 MULK                             R2 R3 K1 [57.2957795130823]
       16 RETURN                           R2 1
       17 LOADN                            R2 0
       18 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 LOADK                            R2 K3 ["InputContexts"]
        8 NAMECALL                         R0 R0 K4 ["WaitForChild"]
       10 CALL                             R0 2 1
       11 LOADK                            R3 K5 ["VehicleContext"]
       12 NAMECALL                         R1 R0 K4 ["WaitForChild"]
       14 CALL                             R1 2 1
       15 LOADK                            R4 K6 ["ThrottleAction"]
       16 NAMECALL                         R2 R1 K4 ["WaitForChild"]
       18 CALL                             R2 2 1
       19 LOADK                            R5 K7 ["SteerAction"]
       20 NAMECALL                         R3 R1 K4 ["WaitForChild"]
       22 CALL                             R3 2 1
       23 GETIMPORT                        R4 K9 [require]
       25 GETIMPORT                        R5 K1 [script]
       27 GETTABLEKS                       R5 R5 K2 ["Parent"]
       29 GETTABLEKS                       R5 R5 K2 ["Parent"]
       31 LOADK                            R7 K10 ["CommonUtils"]
       32 NAMECALL                         R5 R5 K4 ["WaitForChild"]
       34 CALL                             R5 2 -1
       35 CALL                             R4 -1 1
       36 GETTABLEKS                       R5 R4 K11 ["get"]
       38 LOADK                            R6 K12 ["FlagUtil"]
       39 CALL                             R5 1 1
       40 NEWTABLE                         R6 8 0
       42 SETTABLEKS                       R6 R6 K13 ["__index"]
       44 DUPCLOSURE                       R7 K14 [PROTO_0]
       45 CAPTURE                          VAL R6
       46 SETTABLEKS                       R7 R6 K15 ["new"]
       48 DUPCLOSURE                       R7 K16 [PROTO_1]
       49 CAPTURE                          VAL R1
       50 SETTABLEKS                       R7 R6 K17 ["Enable"]
       52 DUPCLOSURE                       R7 K18 [PROTO_2]
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R3
       55 SETTABLEKS                       R7 R6 K19 ["Update"]
       57 DUPCLOSURE                       R7 K20 [PROTO_3]
       58 SETTABLEKS                       R7 R6 K21 ["ComputeThrottle"]
       60 DUPCLOSURE                       R7 K22 [PROTO_4]
       61 SETTABLEKS                       R7 R6 K23 ["ComputeSteer"]
       63 RETURN                           R6 1
