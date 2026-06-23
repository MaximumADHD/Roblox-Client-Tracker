PROTO_0:
        0 GETIMPORT                        R0 K1 [plugin]
        2 LOADK                            R2 K2 ["InteractionTelemetry"]
        3 NAMECALL                         R0 R0 K3 ["GetPluginComponent"]
        5 CALL                             R0 2 1
        6 DUPTABLE                         R3 K7 [{"functionType", "sourceType", "sourceData"}]
        7 LOADK                            R4 K8 ["Navigation"]
        8 SETTABLEKS                       R4 R3 K4 ["functionType"]
       10 LOADK                            R4 K9 ["Widget"]
       11 SETTABLEKS                       R4 R3 K5 ["sourceType"]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K10 ["toString"]
       16 GETUPVAL                         R5 1
       17 CALL                             R4 1 1
       18 SETTABLEKS                       R4 R3 K6 ["sourceData"]
       20 NAMECALL                         R1 R0 K11 ["ReportInteractionAsync"]
       22 CALL                             R1 2 0
       23 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K2 [task.defer]
        2 GETUPVAL                         R1 0
        3 GETUPVAL                         R2 1
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 2
        6 LOADK                            R2 K3 ["Actions"]
        7 NAMECALL                         R0 R0 K4 ["GetPluginComponent"]
        9 CALL                             R0 2 1
       10 GETUPVAL                         R1 3
       11 GETTABLEKS                       R1 R1 K5 ["Util"]
       13 GETTABLEKS                       R1 R1 K6 ["StudioUri"]
       15 GETTABLEKS                       R1 R1 K7 ["fromAction"]
       17 LOADK                            R2 K8 ["UpdateManager"]
       18 LOADK                            R3 K9 ["Continue"]
       19 CALL                             R1 2 1
       20 MOVE                             R4 R1
       21 NAMECALL                         R2 R0 K10 ["ActivateAsync"]
       23 CALL                             R2 2 0
       24 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 NAMECALL                         R1 R1 K1 ["get"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["child"]
       10 GETTABLEKS                       R3 R0 K3 ["WidgetUri"]
       12 GETTABLEKS                       R4 R0 K4 ["Item"]
       14 GETTABLEKS                       R4 R4 K5 ["Id"]
       16 CALL                             R2 2 1
       17 GETUPVAL                         R3 2
       18 MOVE                             R4 R1
       19 CALL                             R3 1 1
       20 GETUPVAL                         R4 3
       21 CALL                             R4 0 1
       22 JUMPIFNOT                        R4 ; [+6]
       23 GETIMPORT                        R4 K9 [Enum.UpdateState.UpdateInProgress]
       25 JUMPIFNOTEQ                      R3 R4 ; [+3]
       27 LOADNIL                          R4
       28 RETURN                           R4 1
       29 GETUPVAL                         R4 4
       30 CALL                             R4 0 1
       31 JUMPIFNOT                        R4 ; [+6]
       32 GETIMPORT                        R4 K11 [Enum.UpdateState.UpdateFailed]
       34 JUMPIFNOTEQ                      R3 R4 ; [+3]
       36 LOADNIL                          R4
       37 RETURN                           R4 1
       38 GETUPVAL                         R4 5
       39 GETTABLEKS                       R4 R4 K12 ["createElement"]
       41 GETUPVAL                         R5 6
       42 DUPTABLE                         R6 K16 [{"Uri", "LayoutOrder", "UpdateState", "onActivated"}]
       43 SETTABLEKS                       R2 R6 K13 ["Uri"]
       45 GETTABLEKS                       R7 R0 K14 ["LayoutOrder"]
       47 SETTABLEKS                       R7 R6 K14 ["LayoutOrder"]
       49 SETTABLEKS                       R3 R6 K7 ["UpdateState"]
       51 NEWCLOSURE                       R7 P0
       52 CAPTURE                          UPVAL U7
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R1
       55 CAPTURE                          UPVAL U8
       56 SETTABLEKS                       R7 R6 K15 ["onActivated"]
       58 CALL                             R4 2 -1
       59 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["StudioFoundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Hooks"]
       34 GETTABLEKS                       R5 R5 K12 ["useUpdateState"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K10 ["Src"]
       41 GETTABLEKS                       R6 R6 K13 ["SharedFlags"]
       43 GETTABLEKS                       R6 R6 K14 ["getFFlagStudioDoNotShowUpdateInProgressButton"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K10 ["Src"]
       50 GETTABLEKS                       R7 R7 K13 ["SharedFlags"]
       52 GETTABLEKS                       R7 R7 K15 ["getFFlagStudioDoNotShowUpdateFailedButton"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K10 ["Src"]
       59 GETTABLEKS                       R8 R8 K16 ["Components"]
       61 GETTABLEKS                       R8 R8 K17 ["UpdateStatus"]
       63 GETTABLEKS                       R8 R8 K18 ["UpdateStatusButtonV2"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R9 R0 K10 ["Src"]
       70 GETTABLEKS                       R9 R9 K19 ["Types"]
       72 CALL                             R8 1 1
       73 GETTABLEKS                       R9 R3 K20 ["Util"]
       75 GETTABLEKS                       R9 R9 K21 ["StudioUri"]
       77 GETTABLEKS                       R10 R2 K22 ["ContextServices"]
       79 GETTABLEKS                       R11 R10 K23 ["Plugin"]
       81 DUPCLOSURE                       R12 K24 [PROTO_1]
       82 CAPTURE                          VAL R9
       83 DUPCLOSURE                       R13 K25 [PROTO_3]
       84 CAPTURE                          VAL R11
       85 CAPTURE                          VAL R9
       86 CAPTURE                          VAL R4
       87 CAPTURE                          VAL R5
       88 CAPTURE                          VAL R6
       89 CAPTURE                          VAL R1
       90 CAPTURE                          VAL R7
       91 CAPTURE                          VAL R12
       92 CAPTURE                          VAL R2
       93 RETURN                           R13 1
