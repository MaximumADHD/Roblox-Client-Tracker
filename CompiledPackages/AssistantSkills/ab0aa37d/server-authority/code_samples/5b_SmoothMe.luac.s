PROTO_0:
        0 GETIMPORT                        R0 K1 [script]
        2 LOADK                            R2 K2 ["Target"]
        3 NAMECALL                         R0 R0 K3 ["GetAttribute"]
        5 CALL                             R0 2 1
        6 JUMPIFEQKNIL                     R0 ; [+8]
        8 FASTCALL1                        TYPEOF R0 ; [+3]
        9 MOVE                             R2 R0
       10 GETIMPORT                        R1 K5 [typeof]
       12 CALL                             R1 1 1
       13 JUMPIFEQKS                       R1 K6 ["InstanceHandle"] ; [+4]
       15 LOADNIL                          R1
       16 LOADNIL                          R2
       17 RETURN                           R1 2
       18 NAMECALL                         R1 R0 K7 ["Get"]
       20 CALL                             R1 1 1
       21 JUMPIFNOTEQKNIL                  R1 ; [+4]
       23 LOADNIL                          R2
       24 LOADNIL                          R3
       25 RETURN                           R2 2
       26 GETTABLEKS                       R2 R1 K8 ["Position"]
       28 GETTABLEKS                       R3 R1 K9 ["Rotation"]
       30 RETURN                           R2 2

PROTO_1:
        0 GETIMPORT                        R3 K1 [script]
        2 LOADK                            R5 K2 ["Target"]
        3 NAMECALL                         R3 R3 K3 ["GetAttribute"]
        5 CALL                             R3 2 1
        6 JUMPIFEQKNIL                     R3 ; [+8]
        8 FASTCALL1                        TYPEOF R3 ; [+3]
        9 MOVE                             R5 R3
       10 GETIMPORT                        R4 K5 [typeof]
       12 CALL                             R4 1 1
       13 JUMPIFEQKS                       R4 K6 ["InstanceHandle"] ; [+4]
       15 LOADNIL                          R1
       16 LOADNIL                          R2
       17 JUMP                             ; [+12]
       18 NAMECALL                         R4 R3 K7 ["Get"]
       20 CALL                             R4 1 1
       21 JUMPIFNOTEQKNIL                  R4 ; [+4]
       23 LOADNIL                          R1
       24 LOADNIL                          R2
       25 JUMP                             ; [+4]
       26 GETTABLEKS                       R1 R4 K8 ["Position"]
       28 GETTABLEKS                       R2 R4 K9 ["Rotation"]
       30 JUMPIFNOTEQKNIL                  R1 ; [+4]
       32 GETUPVAL                         R3 0
       33 GETTABLEKS                       R1 R3 K10 ["last_target"]
       35 GETUPVAL                         R3 0
       36 GETIMPORT                        R4 K1 [script]
       38 GETTABLEKS                       R4 R4 K11 ["Parent"]
       40 GETTABLEKS                       R4 R4 K8 ["Position"]
       42 SETTABLEKS                       R4 R3 K12 ["position"]
       44 GETUPVAL                         R3 1
       45 GETUPVAL                         R4 2
       46 GETTABLEKS                       R4 R4 K13 ["SmoothPosition"]
       48 GETUPVAL                         R5 1
       49 GETTABLEKS                       R5 R5 K8 ["Position"]
       51 MOVE                             R6 R1
       52 GETUPVAL                         R7 0
       53 MOVE                             R8 R0
       54 CALL                             R4 4 1
       55 SETTABLEKS                       R4 R3 K8 ["Position"]
       57 JUMPIFEQKNIL                     R2 ; [+4]
       59 GETUPVAL                         R3 1
       60 SETTABLEKS                       R2 R3 K9 ["Rotation"]
       62 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [game]
        5 GETTABLEKS                       R1 R1 K4 ["ReplicatedStorage"]
        7 GETTABLEKS                       R1 R1 K5 ["SmoothingModule"]
        9 CALL                             R0 1 1
       10 GETTABLEKS                       R1 R0 K6 ["new"]
       12 DUPTABLE                         R2 K15 [{["Time"] = 0.15, ["EngageMin"] = 3, ["EngageMax"] = 20, ["Disengage"] = 1}]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K17 [script]
       16 GETTABLEKS                       R2 R2 K18 ["Parent"]
       18 DUPCLOSURE                       R3 K19 [PROTO_0]
       19 LOADB                            R4 0
       20 SETTABLEKS                       R4 R2 K20 ["CanCollide"]
       22 LOADB                            R4 1
       23 SETTABLEKS                       R4 R2 K21 ["Anchored"]
       25 LOADB                            R4 0
       26 SETTABLEKS                       R4 R2 K22 ["CanQuery"]
       28 LOADB                            R4 0
       29 SETTABLEKS                       R4 R2 K23 ["CanTouch"]
       31 GETIMPORT                        R4 K3 [game]
       33 GETTABLEKS                       R4 R4 K24 ["RunService"]
       35 GETTABLEKS                       R4 R4 K25 ["RenderStepped"]
       37 DUPCLOSURE                       R6 K26 [PROTO_1]
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R0
       41 NAMECALL                         R4 R4 K27 ["Connect"]
       43 CALL                             R4 2 0
       44 RETURN                           R0 0
