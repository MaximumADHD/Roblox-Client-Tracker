PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantUseRemoteServiceExp"]
        3 JUMPIF                           R0 ; [+3]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["FFlagAssistantForceRemoteServiceForInternal"]
        7 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantUseRemoteService"]
        3 JUMPIFNOT                        R0 ; [+2]
        4 LOADB                            R0 1
        5 RETURN                           R0 1
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K1 ["FFlagAssistantUseRemoteServiceExp"]
        9 JUMPIF                           R0 ; [+3]
       10 GETUPVAL                         R0 0
       11 GETTABLEKS                       R0 R0 K2 ["FFlagAssistantForceRemoteServiceForInternal"]
       13 JUMPIF                           R0 ; [+2]
       14 LOADB                            R0 0
       15 RETURN                           R0 1
       16 GETUPVAL                         R1 1
       17 JUMPIFEQKB                       R1 TRUE ; [+2]
       19 LOADB                            R0 0 +1
       20 LOADB                            R0 1
       21 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+11]
        2 GETIMPORT                        R0 K1 [require]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K2 ["Guest"]
        7 GETTABLEKS                       R1 R1 K3 ["Environment"]
        9 CALL                             R0 1 1
       10 GETTABLEKS                       R0 R0 K4 ["get"]
       12 CALL                             R0 0 1
       13 GETUPVAL                         R1 2
       14 GETTABLEKS                       R1 R1 K5 ["FFlagAssistantForceRemoteServiceForInternal"]
       16 JUMPIFNOT                        R1 ; [+6]
       17 GETTABLEKS                       R1 R0 K6 ["hasInternalPermission"]
       19 CALL                             R1 0 1
       20 JUMPIFNOT                        R1 ; [+2]
       21 LOADB                            R1 1
       22 RETURN                           R1 1
       23 GETUPVAL                         R1 2
       24 GETTABLEKS                       R1 R1 K7 ["FFlagAssistantUseRemoteServiceExp"]
       26 JUMPIF                           R1 ; [+2]
       27 LOADB                            R1 0
       28 RETURN                           R1 1
       29 GETTABLEKS                       R2 R0 K8 ["getExperimentFeatureEnabled"]
       31 LOADK                            R3 K9 ["AssistantUseRemoteService"]
       32 CALL                             R2 1 1
       33 JUMPIFEQKB                       R2 TRUE ; [+2]
       35 LOADB                            R1 0 +1
       36 LOADB                            R1 1
       37 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantUseRemoteService"]
        3 JUMPIFNOT                        R1 ; [+2]
        4 LOADB                            R1 1
        5 RETURN                           R1 1
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K1 ["FFlagAssistantUseRemoteServiceExp"]
        9 JUMPIF                           R1 ; [+3]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K2 ["FFlagAssistantForceRemoteServiceForInternal"]
       13 JUMPIF                           R1 ; [+2]
       14 LOADB                            R1 0
       15 RETURN                           R1 1
       16 GETUPVAL                         R1 1
       17 JUMPIFEQKNIL                     R1 ; [+3]
       19 GETUPVAL                         R1 1
       20 RETURN                           R1 1
       21 GETIMPORT                        R1 K4 [pcall]
       23 NEWCLOSURE                       R2 P0
       24 CAPTURE                          VAL R0
       25 CAPTURE                          UPVAL U2
       26 CAPTURE                          UPVAL U0
       27 CALL                             R1 1 2
       28 JUMPIF                           R1 ; [+4]
       29 LOADB                            R3 0
       30 SETUPVAL                         R3 1
       31 LOADB                            R3 0
       32 RETURN                           R3 1
       33 JUMPIFEQKB                       R2 TRUE ; [+2]
       35 LOADB                            R3 0 +1
       36 LOADB                            R3 1
       37 SETUPVAL                         R3 1
       38 RETURN                           R3 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantUseRemoteService"]
        3 JUMPIFNOT                        R1 ; [+2]
        4 LOADB                            R1 1
        5 RETURN                           R1 1
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K1 ["FFlagAssistantUseRemoteServiceExp"]
        9 JUMPIF                           R1 ; [+3]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K2 ["FFlagAssistantForceRemoteServiceForInternal"]
       13 JUMPIF                           R1 ; [+2]
       14 LOADB                            R1 0
       15 RETURN                           R1 1
       16 GETUPVAL                         R1 1
       17 JUMPIFNOTEQKNIL                  R1 ; [+2]
       19 SETUPVAL                         R0 1
       20 GETUPVAL                         R1 1
       21 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantUseRemoteService"]
        3 JUMPIFNOT                        R1 ; [+2]
        4 LOADB                            R0 1
        5 RETURN                           R0 1
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K1 ["FFlagAssistantUseRemoteServiceExp"]
        9 JUMPIF                           R1 ; [+3]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K2 ["FFlagAssistantForceRemoteServiceForInternal"]
       13 JUMPIF                           R1 ; [+2]
       14 LOADB                            R0 0
       15 RETURN                           R0 1
       16 GETUPVAL                         R1 1
       17 JUMPIFEQKB                       R1 TRUE ; [+2]
       19 LOADB                            R0 0 +1
       20 LOADB                            R0 1
       21 RETURN                           R0 1

PROTO_6:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 NAMECALL                         R3 R0 K0 ["IsGuest"]
        5 CALL                             R3 1 1
        6 JUMPIFNOT                        R3 ; [+9]
        7 GETUPVAL                         R3 2
        8 MOVE                             R4 R1
        9 CALL                             R3 1 1
       10 LOADK                            R6 K1 ["RemoteServiceGate_Get"]
       11 MOVE                             R7 R2
       12 NAMECALL                         R4 R0 K2 ["OnGuestInvokeAsync"]
       14 CALL                             R4 3 0
       15 RETURN                           R3 1
       16 LOADK                            R5 K1 ["RemoteServiceGate_Get"]
       17 MOVE                             R6 R2
       18 NAMECALL                         R3 R0 K2 ["OnGuestInvokeAsync"]
       20 CALL                             R3 3 1
       21 GETIMPORT                        R4 K4 [pcall]
       23 MOVE                             R5 R3
       24 GETUPVAL                         R6 3
       25 GETTABLEKS                       R6 R6 K5 ["Types"]
       27 GETTABLEKS                       R6 R6 K6 ["Standalone"]
       29 CALL                             R4 2 2
       30 JUMPIFNOT                        R4 ; [+29]
       31 FASTCALL1                        TYPEOF R5 ; [+3]
       32 MOVE                             R7 R5
       33 GETIMPORT                        R6 K8 [typeof]
       35 CALL                             R6 1 1
       36 JUMPIFNOTEQKS                    R6 K9 ["boolean"] ; [+23]
       38 GETUPVAL                         R7 0
       39 GETTABLEKS                       R7 R7 K10 ["FFlagAssistantUseRemoteService"]
       41 JUMPIFNOT                        R7 ; [+2]
       42 LOADB                            R6 1
       43 RETURN                           R6 1
       44 GETUPVAL                         R7 0
       45 GETTABLEKS                       R7 R7 K11 ["FFlagAssistantUseRemoteServiceExp"]
       47 JUMPIF                           R7 ; [+3]
       48 GETUPVAL                         R7 0
       49 GETTABLEKS                       R7 R7 K12 ["FFlagAssistantForceRemoteServiceForInternal"]
       51 JUMPIF                           R7 ; [+2]
       52 LOADB                            R6 0
       53 RETURN                           R6 1
       54 GETUPVAL                         R7 1
       55 JUMPIFNOTEQKNIL                  R7 ; [+2]
       57 SETUPVAL                         R5 1
       58 GETUPVAL                         R6 1
       59 RETURN                           R6 1
       60 GETIMPORT                        R6 K14 [warn]
       62 LOADK                            R8 K15 ["[Assistant] Could not read the remote service gate from the Standalone DM (%*); resolving locally."]
       63 FASTCALL1                        TOSTRING R5 ; [+3]
       64 MOVE                             R11 R5
       65 GETIMPORT                        R10 K17 [tostring]
       67 CALL                             R10 1 1
       68 NAMECALL                         R8 R8 K18 ["format"]
       70 CALL                             R8 2 1
       71 MOVE                             R7 R8
       72 CALL                             R6 1 0
       73 GETUPVAL                         R6 2
       74 MOVE                             R7 R1
       75 CALL                             R6 1 1
       76 RETURN                           R6 1

PROTO_7:
        0 LOADNIL                          R0
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["DMNetworking"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Util"]
       18 GETTABLEKS                       R3 R3 K9 ["DataModelType"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Flags"]
       25 CALL                             R3 1 1
       26 LOADNIL                          R4
       27 DUPCLOSURE                       R5 K11 [PROTO_0]
       28 CAPTURE                          VAL R3
       29 NEWCLOSURE                       R6 P1
       30 CAPTURE                          VAL R3
       31 CAPTURE                          REF R4
       32 NEWCLOSURE                       R7 P2
       33 CAPTURE                          VAL R3
       34 CAPTURE                          REF R4
       35 CAPTURE                          VAL R0
       36 NEWCLOSURE                       R8 P3
       37 CAPTURE                          VAL R3
       38 CAPTURE                          REF R4
       39 NEWCLOSURE                       R9 P4
       40 CAPTURE                          VAL R3
       41 CAPTURE                          REF R4
       42 CAPTURE                          VAL R7
       43 CAPTURE                          VAL R2
       44 NEWCLOSURE                       R10 P5
       45 CAPTURE                          REF R4
       46 DUPTABLE                         R11 K19 [{["FEATURE_NAME"] = "AssistantUseRemoteService", ["get"], ["resolve"], ["resolveAcrossDataModels"], ["adopt"], ["reset"]}]
       47 SETTABLEKS                       R6 R11 K14 ["get"]
       49 SETTABLEKS                       R7 R11 K15 ["resolve"]
       51 SETTABLEKS                       R9 R11 K16 ["resolveAcrossDataModels"]
       53 SETTABLEKS                       R8 R11 K17 ["adopt"]
       55 SETTABLEKS                       R10 R11 K18 ["reset"]
       57 CLOSEUPVALS                      R4
       58 RETURN                           R11 1
