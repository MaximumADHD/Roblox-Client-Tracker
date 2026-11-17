PROTO_0:
        0 GETTABLEKS                       R5 R1 K0 ["notification"]
        2 GETTABLE                         R4 R0 R5
        3 JUMPIFNOTEQKNIL                  R4 ; [+2]
        5 LOADB                            R3 0 +1
        6 LOADB                            R3 1
        7 LOADK                            R5 K1 ["Notification "]
        8 GETTABLEKS                       R6 R1 K0 ["notification"]
       10 LOADK                            R7 K2 [" does not exist in Notifications."]
       11 CONCAT                           R4 R5 R7
       12 FASTCALL2                        ASSERT R3 R4 ; [+3]
       14 GETIMPORT                        R2 K4 [assert]
       16 CALL                             R2 2 0
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R2 R2 K5 ["Dictionary"]
       20 GETTABLEKS                       R2 R2 K6 ["join"]
       22 MOVE                             R3 R0
       23 NEWTABLE                         R4 1 0
       25 GETTABLEKS                       R5 R1 K0 ["notification"]
       27 GETTABLEKS                       R6 R1 K7 ["value"]
       29 SETTABLE                         R6 R4 R5
       30 CALL                             R2 2 1
       31 GETTABLEKS                       R3 R1 K0 ["notification"]
       33 JUMPIFNOTEQKS                    R3 K8 ["Loaded"] ; [+7]
       35 GETTABLEKS                       R3 R1 K7 ["value"]
       37 JUMPIFNOT                        R3 ; [+3]
       38 LOADB                            R3 0
       39 SETTABLEKS                       R3 R2 K9 ["Saved"]
       41 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Rodux"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Cryo"]
       20 CALL                             R2 1 1
       21 DUPTABLE                         R3 K16 [{["QuantizeWarning"] = False, ["Saved"] = False, ["Loaded"] = False, ["ClippedWarning"] = False, ["InvalidAnimation"] = False, ["CannotPasteError"] = False}]
       22 GETTABLEKS                       R4 R1 K17 ["createReducer"]
       24 MOVE                             R5 R3
       25 DUPTABLE                         R6 K19 [{"SetNotification"}]
       26 DUPCLOSURE                       R7 K20 [PROTO_0]
       27 CAPTURE                          VAL R2
       28 SETTABLEKS                       R7 R6 K18 ["SetNotification"]
       30 CALL                             R4 2 -1
       31 RETURN                           R4 -1
