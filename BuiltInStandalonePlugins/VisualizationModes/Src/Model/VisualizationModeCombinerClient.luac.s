PROTO_0:
        0 NEWTABLE                         R3 4 0
        2 GETUPVAL                         R4 0
        3 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
        5 GETIMPORT                        R2 K1 [setmetatable]
        7 CALL                             R2 2 1
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R3 R4 K2 ["new"]
       11 CALL                             R3 0 1
       12 SETTABLEKS                       R3 R2 K3 ["_maid"]
       14 FASTCALL2K                       ASSERT R1 K4 ; [+5]
       16 MOVE                             R4 R1
       17 LOADK                            R5 K4 ["No tracker"]
       18 GETIMPORT                        R3 K6 [assert]
       20 CALL                             R3 2 1
       21 SETTABLEKS                       R3 R2 K7 ["_visualizationModeServiceTracker"]
       23 FASTCALL2K                       ASSERT R0 K8 ; [+5]
       25 MOVE                             R4 R0
       26 LOADK                            R5 K8 ["No plugin"]
       27 GETIMPORT                        R3 K6 [assert]
       29 CALL                             R3 2 1
       30 SETTABLEKS                       R3 R2 K9 ["_plugin"]
       32 NAMECALL                         R3 R2 K10 ["_setupStateBinding"]
       34 CALL                             R3 1 0
       35 NAMECALL                         R3 R2 K11 ["_bindRemoteRequests"]
       37 CALL                             R3 1 0
       38 RETURN                           R2 1

PROTO_1:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R6 R0
        2 GETIMPORT                        R5 K1 [typeof]
        4 CALL                             R5 1 1
        5 JUMPIFEQKS                       R5 K2 ["string"] ; [+2]
        7 LOADB                            R4 0 +1
        8 LOADB                            R4 1
        9 FASTCALL2K                       ASSERT R4 K3 ; [+4]
       11 LOADK                            R5 K3 ["Bad visualizationModeCategoryName"]
       12 GETIMPORT                        R3 K5 [assert]
       14 CALL                             R3 2 0
       15 FASTCALL1                        TYPEOF R1 ; [+3]
       16 MOVE                             R6 R1
       17 GETIMPORT                        R5 K1 [typeof]
       19 CALL                             R5 1 1
       20 JUMPIFEQKS                       R5 K2 ["string"] ; [+2]
       22 LOADB                            R4 0 +1
       23 LOADB                            R4 1
       24 FASTCALL2K                       ASSERT R4 K6 ; [+4]
       26 LOADK                            R5 K6 ["Bad visualizationModeName"]
       27 GETIMPORT                        R3 K5 [assert]
       29 CALL                             R3 2 0
       30 FASTCALL1                        TYPEOF R2 ; [+3]
       31 MOVE                             R6 R2
       32 GETIMPORT                        R5 K1 [typeof]
       34 CALL                             R5 1 1
       35 JUMPIFEQKS                       R5 K7 ["boolean"] ; [+2]
       37 LOADB                            R4 0 +1
       38 LOADB                            R4 1
       39 FASTCALL2K                       ASSERT R4 K8 ; [+4]
       41 LOADK                            R5 K8 ["Bad isEnabled"]
       42 GETIMPORT                        R3 K5 [assert]
       44 CALL                             R3 2 0
       45 GETUPVAL                         R4 0
       46 GETTABLEKS                       R3 R4 K9 ["_visualizationModeServiceTracker"]
       48 MOVE                             R5 R0
       49 MOVE                             R6 R1
       50 MOVE                             R7 R2
       51 NAMECALL                         R3 R3 K10 ["updateVisualizationModeIsEnabled"]
       53 CALL                             R3 4 0
       54 RETURN                           R0 0

PROTO_2:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R5 R0
        2 GETIMPORT                        R4 K1 [typeof]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["string"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       11 LOADK                            R4 K3 ["Bad visualizationModeCategoryName"]
       12 GETIMPORT                        R2 K5 [assert]
       14 CALL                             R2 2 0
       15 FASTCALL1                        TYPEOF R1 ; [+3]
       16 MOVE                             R5 R1
       17 GETIMPORT                        R4 K1 [typeof]
       19 CALL                             R4 1 1
       20 JUMPIFEQKS                       R4 K6 ["boolean"] ; [+2]
       22 LOADB                            R3 0 +1
       23 LOADB                            R3 1
       24 FASTCALL2K                       ASSERT R3 K7 ; [+4]
       26 LOADK                            R4 K7 ["Bad isEnabled"]
       27 GETIMPORT                        R2 K5 [assert]
       29 CALL                             R2 2 0
       30 GETUPVAL                         R3 0
       31 GETTABLEKS                       R2 R3 K8 ["_visualizationModeServiceTracker"]
       33 MOVE                             R4 R0
       34 MOVE                             R5 R1
       35 NAMECALL                         R2 R2 K9 ["updateVisualizationModeCategoryIsEnabled"]
       37 CALL                             R2 3 0
       38 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["_maid"]
        2 GETTABLEKS                       R3 R0 K1 ["_plugin"]
        4 LOADK                            R5 K2 ["updateVisualizationModeIsEnabled"]
        5 NEWCLOSURE                       R6 P0
        6 CAPTURE                          VAL R0
        7 NAMECALL                         R3 R3 K3 ["OnInvoke"]
        9 CALL                             R3 3 -1
       10 NAMECALL                         R1 R1 K4 ["giveTask"]
       12 CALL                             R1 -1 0
       13 GETTABLEKS                       R1 R0 K0 ["_maid"]
       15 GETTABLEKS                       R3 R0 K1 ["_plugin"]
       17 LOADK                            R5 K5 ["updateVisualizationModeCategoryIsEnabled"]
       18 NEWCLOSURE                       R6 P1
       19 CAPTURE                          VAL R0
       20 NAMECALL                         R3 R3 K3 ["OnInvoke"]
       22 CALL                             R3 3 -1
       23 NAMECALL                         R1 R1 K4 ["giveTask"]
       25 CALL                             R1 -1 0
       26 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_reportCombinerClientState"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_reportCombinerClientState"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_reportCombinerClientState"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_reportCombinerClientClosingState"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["_maid"]
        2 GETTABLEKS                       R4 R0 K1 ["_visualizationModeServiceTracker"]
        4 GETTABLEKS                       R3 R4 K2 ["changed"]
        6 NEWCLOSURE                       R5 P0
        7 CAPTURE                          VAL R0
        8 NAMECALL                         R3 R3 K3 ["Connect"]
       10 CALL                             R3 2 -1
       11 NAMECALL                         R1 R1 K4 ["giveTask"]
       13 CALL                             R1 -1 0
       14 GETTABLEKS                       R1 R0 K0 ["_maid"]
       16 GETTABLEKS                       R3 R0 K5 ["_plugin"]
       18 LOADK                            R5 K6 ["queryClientCombinerState"]
       19 NEWCLOSURE                       R6 P1
       20 CAPTURE                          VAL R0
       21 NAMECALL                         R3 R3 K7 ["OnInvoke"]
       23 CALL                             R3 3 -1
       24 NAMECALL                         R1 R1 K4 ["giveTask"]
       26 CALL                             R1 -1 0
       27 GETTABLEKS                       R1 R0 K0 ["_maid"]
       29 GETTABLEKS                       R3 R0 K5 ["_plugin"]
       31 LOADK                            R5 K8 ["HostDataModelType"]
       32 NAMECALL                         R3 R3 K9 ["GetPropertyChangedSignal"]
       34 CALL                             R3 2 1
       35 NEWCLOSURE                       R5 P2
       36 CAPTURE                          VAL R0
       37 NAMECALL                         R3 R3 K3 ["Connect"]
       39 CALL                             R3 2 -1
       40 NAMECALL                         R1 R1 K4 ["giveTask"]
       42 CALL                             R1 -1 0
       43 GETTABLEKS                       R1 R0 K0 ["_maid"]
       45 NEWCLOSURE                       R3 P3
       46 CAPTURE                          VAL R0
       47 NAMECALL                         R1 R1 K4 ["giveTask"]
       49 CALL                             R1 2 0
       50 NAMECALL                         R1 R0 K10 ["_reportCombinerClientState"]
       52 CALL                             R1 1 0
       53 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["_visualizationModeServiceTracker"]
        2 NAMECALL                         R1 R1 K1 ["getState"]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+2]
        7 RETURN                           R0 0
        8 DUPTABLE                         R2 K4 [{"visualizationModeServiceState", "hostDataModelType"}]
        9 SETTABLEKS                       R1 R2 K2 ["visualizationModeServiceState"]
       11 GETTABLEKS                       R4 R0 K5 ["_plugin"]
       13 GETTABLEKS                       R3 R4 K6 ["HostDataModelType"]
       15 SETTABLEKS                       R3 R2 K3 ["hostDataModelType"]
       17 GETTABLEKS                       R3 R0 K5 ["_plugin"]
       19 LOADK                            R5 K7 ["reportClientCombinerState"]
       20 MOVE                             R6 R2
       21 NAMECALL                         R3 R3 K8 ["Invoke"]
       23 CALL                             R3 3 0
       24 RETURN                           R0 0

PROTO_10:
        0 DUPTABLE                         R1 K2 [{"visualizationModeServiceState", "hostDataModelType"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["visualizationModeServiceState"]
        5 GETTABLEKS                       R3 R0 K3 ["_plugin"]
        7 GETTABLEKS                       R2 R3 K4 ["HostDataModelType"]
        9 SETTABLEKS                       R2 R1 K1 ["hostDataModelType"]
       11 GETTABLEKS                       R2 R0 K3 ["_plugin"]
       13 LOADK                            R4 K5 ["reportClientCombinerState"]
       14 MOVE                             R5 R1
       15 NAMECALL                         R2 R2 K6 ["Invoke"]
       17 CALL                             R2 3 0
       18 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["_maid"]
        2 NAMECALL                         R1 R1 K1 ["destroy"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["VisualizationModes"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K6 ["Src"]
       18 GETTABLEKS                       R4 R5 K8 ["Util"]
       20 GETTABLEKS                       R3 R4 K9 ["Maid"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R7 R0 K6 ["Src"]
       27 GETTABLEKS                       R6 R7 K10 ["Model"]
       29 GETTABLEKS                       R5 R6 K11 ["Tracking"]
       31 GETTABLEKS                       R4 R5 K12 ["VisualizationModeServiceTracker"]
       33 CALL                             R3 1 1
       34 NEWTABLE                         R4 8 0
       36 SETTABLEKS                       R4 R4 K13 ["__index"]
       38 DUPCLOSURE                       R5 K14 [PROTO_0]
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R2
       41 SETTABLEKS                       R5 R4 K15 ["new"]
       43 DUPCLOSURE                       R5 K16 [PROTO_3]
       44 SETTABLEKS                       R5 R4 K17 ["_bindRemoteRequests"]
       46 DUPCLOSURE                       R5 K18 [PROTO_8]
       47 SETTABLEKS                       R5 R4 K19 ["_setupStateBinding"]
       49 DUPCLOSURE                       R5 K20 [PROTO_9]
       50 SETTABLEKS                       R5 R4 K21 ["_reportCombinerClientState"]
       52 DUPCLOSURE                       R5 K22 [PROTO_10]
       53 SETTABLEKS                       R5 R4 K23 ["_reportCombinerClientClosingState"]
       55 DUPCLOSURE                       R5 K24 [PROTO_11]
       56 SETTABLEKS                       R5 R4 K25 ["destroy"]
       58 RETURN                           R4 1
