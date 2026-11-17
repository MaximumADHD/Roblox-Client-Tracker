PROTO_0:
        0 DUPTABLE                         R0 K5 [{"GetUpdateStateAsync", "GetCanAutoUpdateAsync", "UpdateStateChanged", "CanAutoUpdateNotification", "RequestToUpdatePopupVisibilityDueToStateChange"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K6 ["fn"]
        4 CALL                             R1 0 1
        5 SETTABLEKS                       R1 R0 K0 ["GetUpdateStateAsync"]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K6 ["fn"]
       10 CALL                             R1 0 1
       11 SETTABLEKS                       R1 R0 K1 ["GetCanAutoUpdateAsync"]
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R1 R1 K7 ["new"]
       16 CALL                             R1 0 1
       17 SETTABLEKS                       R1 R0 K2 ["UpdateStateChanged"]
       19 GETUPVAL                         R1 1
       20 GETTABLEKS                       R1 R1 K7 ["new"]
       22 CALL                             R1 0 1
       23 SETTABLEKS                       R1 R0 K3 ["CanAutoUpdateNotification"]
       25 GETUPVAL                         R1 1
       26 GETTABLEKS                       R1 R1 K7 ["new"]
       28 CALL                             R1 0 1
       29 SETTABLEKS                       R1 R0 K4 ["RequestToUpdatePopupVisibilityDueToStateChange"]
       31 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dev"]
       13 GETTABLEKS                       R2 R2 K8 ["JestGlobals"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Packages"]
       20 GETTABLEKS                       R3 R3 K9 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K10 ["Util"]
       25 GETTABLEKS                       R3 R3 K11 ["Signal"]
       27 GETTABLEKS                       R4 R1 K12 ["jest"]
       29 NEWTABLE                         R5 2 0
       31 DUPCLOSURE                       R6 K13 [PROTO_0]
       32 CAPTURE                          VAL R4
       33 CAPTURE                          VAL R3
       34 SETTABLEKS                       R6 R5 K14 ["new"]
       36 NEWTABLE                         R6 0 5
       38 GETIMPORT                        R7 K18 [Enum.UpdateState.UpdateNotAvailable]
       40 GETIMPORT                        R8 K20 [Enum.UpdateState.UpdateAvailable]
       42 GETIMPORT                        R9 K22 [Enum.UpdateState.UpdateInProgress]
       44 GETIMPORT                        R10 K24 [Enum.UpdateState.UpdateReady]
       46 GETIMPORT                        R11 K26 [Enum.UpdateState.UpdateFailed]
       48 SETLIST                          R6 R7 5 [1]
       50 SETTABLEKS                       R6 R5 K27 ["states"]
       52 RETURN                           R5 1
