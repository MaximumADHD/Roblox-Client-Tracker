PROTO_0:
        0 LOADK                            R3 K0 ["HumanoidRootPart"]
        1 NAMECALL                         R1 R0 K1 ["WaitForChild"]
        3 CALL                             R1 2 1
        4 GETUPVAL                         R2 0
        5 MOVE                             R4 R1
        6 GETIMPORT                        R5 K5 [Enum.PredictionMode.On]
        8 NAMECALL                         R2 R2 K6 ["SetPredictionMode"]
       10 CALL                             R2 3 0
       11 RETURN                           R0 0

PROTO_1:
        0 DUPCLOSURE                       R0 K0 [PROTO_0]
        1 CAPTURE                          UPVAL U0
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K1 ["LocalPlayer"]
        5 GETTABLEKS                       R1 R1 K2 ["Character"]
        7 JUMPIFNOT                        R1 ; [+17]
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K1 ["LocalPlayer"]
       11 GETTABLEKS                       R1 R1 K2 ["Character"]
       13 LOADK                            R4 K3 ["HumanoidRootPart"]
       14 NAMECALL                         R2 R1 K4 ["WaitForChild"]
       16 CALL                             R2 2 1
       17 GETUPVAL                         R3 0
       18 MOVE                             R5 R2
       19 GETIMPORT                        R6 K8 [Enum.PredictionMode.On]
       21 NAMECALL                         R3 R3 K9 ["SetPredictionMode"]
       23 CALL                             R3 3 0
       24 RETURN                           R0 0
       25 GETUPVAL                         R1 1
       26 GETTABLEKS                       R1 R1 K1 ["LocalPlayer"]
       28 GETTABLEKS                       R1 R1 K10 ["CharacterAdded"]
       30 MOVE                             R3 R0
       31 NAMECALL                         R1 R1 K11 ["Connect"]
       33 CALL                             R1 2 0
       34 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["isServerAuthority"]
        3 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+9]
        2 GETUPVAL                         R0 1
        3 NAMECALL                         R0 R0 K0 ["IsClient"]
        5 CALL                             R0 1 1
        6 JUMPIFNOT                        R0 ; [+4]
        7 GETUPVAL                         R0 2
        8 GETTABLEKS                       R0 R0 K1 ["PredictLocalHumanoid"]
       10 CALL                             R0 0 0
       11 GETUPVAL                         R0 3
       12 GETTABLEKS                       R0 R0 K2 ["data"]
       14 GETTABLEKS                       R0 R0 K3 ["inputsSetupComplete"]
       16 JUMPIF                           R0 ; [+13]
       17 GETUPVAL                         R0 1
       18 NAMECALL                         R0 R0 K4 ["IsServer"]
       20 CALL                             R0 1 1
       21 JUMPIFNOT                        R0 ; [+8]
       22 GETUPVAL                         R0 3
       23 LOADK                            R2 K5 ["INPUTS_SETUP"]
       24 NAMECALL                         R0 R0 K6 ["subscribe"]
       26 CALL                             R0 2 1
       27 NAMECALL                         R0 R0 K7 ["Wait"]
       29 CALL                             R0 1 0
       30 GETUPVAL                         R0 4
       31 NAMECALL                         R0 R0 K8 ["InitializeServerAuthority"]
       33 CALL                             R0 1 0
       34 LOADB                            R0 1
       35 SETUPVAL                         R0 5
       36 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 GETIMPORT                        R1 K2 [require]
        7 GETIMPORT                        R2 K4 [script]
        9 GETTABLEKS                       R2 R2 K5 ["Parent"]
       11 LOADK                            R4 K6 ["ControlModule"]
       12 NAMECALL                         R2 R2 K7 ["WaitForChild"]
       14 CALL                             R2 2 -1
       15 CALL                             R1 -1 1
       16 GETIMPORT                        R2 K9 [game]
       18 LOADK                            R4 K10 ["Players"]
       19 NAMECALL                         R2 R2 K11 ["GetService"]
       21 CALL                             R2 2 1
       22 GETIMPORT                        R3 K9 [game]
       24 LOADK                            R5 K12 ["RunService"]
       25 NAMECALL                         R3 R3 K11 ["GetService"]
       27 CALL                             R3 2 1
       28 GETIMPORT                        R4 K2 [require]
       30 GETIMPORT                        R5 K4 [script]
       32 GETTABLEKS                       R5 R5 K5 ["Parent"]
       34 LOADK                            R7 K13 ["CommonUtils"]
       35 NAMECALL                         R5 R5 K7 ["WaitForChild"]
       37 CALL                             R5 2 -1
       38 CALL                             R4 -1 1
       39 GETTABLEKS                       R5 R4 K14 ["get"]
       41 LOADK                            R6 K15 ["FlagUtil"]
       42 CALL                             R5 1 1
       43 GETTABLEKS                       R6 R4 K14 ["get"]
       45 LOADK                            R7 K16 ["PlayerModuleEventBus"]
       46 CALL                             R6 1 1
       47 GETTABLEKS                       R7 R5 K17 ["getUserFlag"]
       49 LOADK                            R8 K18 ["UserDisableForceLocalHumanoidPrediction"]
       50 CALL                             R7 1 1
       51 DUPTABLE                         R8 K21 [{["SERVER_AUTHORITY_CHANGED"] = "SERVER_AUTHORITY_CHANGED", ["INPUTS_SETUP"] = "INPUTS_SETUP"}]
       52 LOADB                            R9 0
       53 DUPCLOSURE                       R10 K22 [PROTO_1]
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R2
       56 SETTABLEKS                       R10 R0 K23 ["PredictLocalHumanoid"]
       58 NEWCLOSURE                       R10 P1
       59 CAPTURE                          REF R9
       60 SETTABLEKS                       R10 R0 K24 ["initialize"]
       62 NEWCLOSURE                       R10 P2
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R0
       66 CAPTURE                          VAL R6
       67 CAPTURE                          VAL R1
       68 CAPTURE                          REF R9
       69 SETTABLEKS                       R10 R0 K25 ["Initialize"]
       71 CLOSEUPVALS                      R9
       72 RETURN                           R0 1
