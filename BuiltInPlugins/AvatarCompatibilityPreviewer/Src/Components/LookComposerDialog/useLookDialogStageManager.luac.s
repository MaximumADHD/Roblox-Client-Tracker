PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["lookAsyncCallsState"]
        3 GETTABLEKS                       R0 R0 K1 ["lookCreationCallState"]
        5 JUMPIFNOTEQKS                    R0 K2 ["Success"] ; [+3]
        7 LOADK                            R0 K2 ["Success"]
        8 RETURN                           R0 1
        9 GETUPVAL                         R0 0
       10 GETTABLEKS                       R0 R0 K0 ["lookAsyncCallsState"]
       12 GETTABLEKS                       R0 R0 K1 ["lookCreationCallState"]
       14 JUMPIFNOTEQKS                    R0 K3 ["Failure"] ; [+3]
       16 LOADK                            R0 K3 ["Failure"]
       17 RETURN                           R0 1
       18 GETUPVAL                         R0 0
       19 GETTABLEKS                       R0 R0 K0 ["lookAsyncCallsState"]
       21 GETTABLEKS                       R0 R0 K4 ["lookValidationCallState"]
       23 JUMPIFNOTEQKS                    R0 K2 ["Success"] ; [+3]
       25 LOADK                            R0 K5 ["EditInfo"]
       26 RETURN                           R0 1
       27 LOADK                            R0 K6 ["ConfirmItems"]
       28 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKS                    R0 K0 ["ConfirmItems"] ; [+8]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K1 ["lookAsyncCallsState"]
        6 GETTABLEKS                       R0 R0 K2 ["onValidateLook"]
        8 CALL                             R0 0 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R0 0
       11 JUMPIFNOTEQKS                    R0 K3 ["EditInfo"] ; [+8]
       13 GETUPVAL                         R0 1
       14 GETTABLEKS                       R0 R0 K1 ["lookAsyncCallsState"]
       16 GETTABLEKS                       R0 R0 K4 ["onCreateLook"]
       18 CALL                             R0 0 0
       19 RETURN                           R0 0
       20 GETUPVAL                         R0 0
       21 JUMPIFNOTEQKS                    R0 K5 ["Success"] ; [+8]
       23 GETUPVAL                         R0 1
       24 GETTABLEKS                       R0 R0 K1 ["lookAsyncCallsState"]
       26 GETTABLEKS                       R0 R0 K6 ["onOpenCreatorHubLink"]
       28 CALL                             R0 0 0
       29 RETURN                           R0 0
       30 GETUPVAL                         R0 0
       31 JUMPIFNOTEQKS                    R0 K7 ["Failure"] ; [+7]
       33 GETUPVAL                         R0 1
       34 GETTABLEKS                       R0 R0 K1 ["lookAsyncCallsState"]
       36 GETTABLEKS                       R0 R0 K8 ["onResetLookCreationCalls"]
       38 CALL                             R0 0 0
       39 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKS                    R0 K0 ["EditInfo"] ; [+8]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K1 ["lookAsyncCallsState"]
        6 GETTABLEKS                       R0 R0 K2 ["onResetLookCreationCalls"]
        8 CALL                             R0 0 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R0 1
       11 GETTABLEKS                       R0 R0 K3 ["onClose"]
       13 CALL                             R0 0 0
       14 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKS                    R0 K0 ["ConfirmItems"] ; [+15]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K1 ["hasBlockingError"]
        6 JUMPIF                           R0 ; [+9]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K2 ["lookAsyncCallsState"]
       10 GETTABLEKS                       R1 R1 K3 ["lookValidationCallState"]
       12 JUMPIFEQKS                       R1 K4 ["Firing"] ; [+2]
       14 LOADB                            R0 0 +1
       15 LOADB                            R0 1
       16 RETURN                           R0 1
       17 GETUPVAL                         R0 0
       18 JUMPIFNOTEQKS                    R0 K5 ["EditInfo"] ; [+15]
       20 GETUPVAL                         R0 1
       21 GETTABLEKS                       R0 R0 K6 ["invalidMetadata"]
       23 JUMPIF                           R0 ; [+9]
       24 GETUPVAL                         R1 1
       25 GETTABLEKS                       R1 R1 K2 ["lookAsyncCallsState"]
       27 GETTABLEKS                       R1 R1 K7 ["lookCreationCallState"]
       29 JUMPIFEQKS                       R1 K4 ["Firing"] ; [+2]
       31 LOADB                            R0 0 +1
       32 LOADB                            R0 1
       33 RETURN                           R0 1
       34 GETUPVAL                         R0 0
       35 JUMPIFNOTEQKS                    R0 K8 ["Success"] ; [+11]
       37 GETUPVAL                         R1 1
       38 GETTABLEKS                       R1 R1 K2 ["lookAsyncCallsState"]
       40 GETTABLEKS                       R1 R1 K9 ["openCreatorHubLinkCallState"]
       42 JUMPIFEQKS                       R1 K4 ["Firing"] ; [+2]
       44 LOADB                            R0 0 +1
       45 LOADB                            R0 1
       46 RETURN                           R0 1
       47 LOADB                            R0 0
       48 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKS                    R0 K0 ["EditInfo"] ; [+11]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["lookAsyncCallsState"]
        6 GETTABLEKS                       R1 R1 K2 ["lookCreationCallState"]
        8 JUMPIFEQKS                       R1 K3 ["Firing"] ; [+2]
       10 LOADB                            R0 0 +1
       11 LOADB                            R0 1
       12 RETURN                           R0 1
       13 LOADB                            R0 0
       14 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 NEWTABLE                         R3 0 2
        7 GETTABLEKS                       R4 R0 K1 ["lookAsyncCallsState"]
        9 GETTABLEKS                       R4 R4 K2 ["lookCreationCallState"]
       11 GETTABLEKS                       R5 R0 K1 ["lookAsyncCallsState"]
       13 GETTABLEKS                       R5 R5 K3 ["lookValidationCallState"]
       15 SETLIST                          R3 R4 2 [1]
       17 CALL                             R1 2 1
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K4 ["useCallback"]
       21 NEWCLOSURE                       R3 P1
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R0
       24 NEWTABLE                         R4 0 5
       26 MOVE                             R5 R1
       27 GETTABLEKS                       R6 R0 K1 ["lookAsyncCallsState"]
       29 GETTABLEKS                       R6 R6 K5 ["onValidateLook"]
       31 GETTABLEKS                       R7 R0 K1 ["lookAsyncCallsState"]
       33 GETTABLEKS                       R7 R7 K6 ["onCreateLook"]
       35 GETTABLEKS                       R8 R0 K1 ["lookAsyncCallsState"]
       37 GETTABLEKS                       R8 R8 K7 ["onOpenCreatorHubLink"]
       39 GETTABLEKS                       R9 R0 K1 ["lookAsyncCallsState"]
       41 GETTABLEKS                       R9 R9 K8 ["onResetLookCreationCalls"]
       43 SETLIST                          R4 R5 5 [1]
       45 CALL                             R2 2 1
       46 GETUPVAL                         R3 0
       47 GETTABLEKS                       R3 R3 K4 ["useCallback"]
       49 NEWCLOSURE                       R4 P2
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R0
       52 NEWTABLE                         R5 0 3
       54 MOVE                             R6 R1
       55 GETTABLEKS                       R7 R0 K9 ["onClose"]
       57 GETTABLEKS                       R8 R0 K1 ["lookAsyncCallsState"]
       59 GETTABLEKS                       R8 R8 K8 ["onResetLookCreationCalls"]
       61 SETLIST                          R5 R6 3 [1]
       63 CALL                             R3 2 1
       64 GETUPVAL                         R4 0
       65 GETTABLEKS                       R4 R4 K0 ["useMemo"]
       67 NEWCLOSURE                       R5 P3
       68 CAPTURE                          VAL R1
       69 CAPTURE                          VAL R0
       70 NEWTABLE                         R6 0 6
       72 MOVE                             R7 R1
       73 GETTABLEKS                       R8 R0 K10 ["hasBlockingError"]
       75 GETTABLEKS                       R9 R0 K11 ["invalidMetadata"]
       77 GETTABLEKS                       R10 R0 K1 ["lookAsyncCallsState"]
       79 GETTABLEKS                       R10 R10 K2 ["lookCreationCallState"]
       81 GETTABLEKS                       R11 R0 K1 ["lookAsyncCallsState"]
       83 GETTABLEKS                       R11 R11 K12 ["openCreatorHubLinkCallState"]
       85 GETTABLEKS                       R12 R0 K1 ["lookAsyncCallsState"]
       87 GETTABLEKS                       R12 R12 K3 ["lookValidationCallState"]
       89 SETLIST                          R6 R7 6 [1]
       91 CALL                             R4 2 1
       92 GETUPVAL                         R5 0
       93 GETTABLEKS                       R5 R5 K0 ["useMemo"]
       95 NEWCLOSURE                       R6 P4
       96 CAPTURE                          VAL R1
       97 CAPTURE                          VAL R0
       98 NEWTABLE                         R7 0 2
      100 MOVE                             R8 R1
      101 GETTABLEKS                       R9 R0 K1 ["lookAsyncCallsState"]
      103 GETTABLEKS                       R9 R9 K2 ["lookCreationCallState"]
      105 SETLIST                          R7 R8 2 [1]
      107 CALL                             R5 2 1
      108 DUPTABLE                         R6 K18 [{"dialogStage", "onForward", "onBack", "isForwardDisabled", "isBackDisabled"}]
      109 SETTABLEKS                       R1 R6 K13 ["dialogStage"]
      111 SETTABLEKS                       R2 R6 K14 ["onForward"]
      113 SETTABLEKS                       R3 R6 K15 ["onBack"]
      115 SETTABLEKS                       R4 R6 K16 ["isForwardDisabled"]
      117 SETTABLEKS                       R5 R6 K17 ["isBackDisabled"]
      119 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K10 [PROTO_5]
       22 CAPTURE                          VAL R1
       23 RETURN                           R3 1
