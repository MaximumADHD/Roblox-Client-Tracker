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
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 -1
        2 FASTCALL                         ASSERT ; [+2]
        3 GETIMPORT                        R1 K1 [assert]
        5 CALL                             R1 -1 0
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K2 ["use"]
        9 CALL                             R1 0 1
       10 NAMECALL                         R1 R1 K3 ["get"]
       12 CALL                             R1 1 1
       13 GETUPVAL                         R2 2
       14 GETTABLEKS                       R2 R2 K4 ["child"]
       16 GETTABLEKS                       R3 R0 K5 ["WidgetUri"]
       18 GETTABLEKS                       R4 R0 K6 ["Item"]
       20 GETTABLEKS                       R4 R4 K7 ["Id"]
       22 CALL                             R2 2 1
       23 GETUPVAL                         R3 3
       24 MOVE                             R4 R1
       25 CALL                             R3 1 1
       26 GETUPVAL                         R4 4
       27 GETTABLEKS                       R4 R4 K8 ["createElement"]
       29 GETUPVAL                         R5 5
       30 DUPTABLE                         R6 K13 [{"Uri", "LayoutOrder", "UpdateState", "onActivated"}]
       31 SETTABLEKS                       R2 R6 K9 ["Uri"]
       33 GETTABLEKS                       R7 R0 K10 ["LayoutOrder"]
       35 SETTABLEKS                       R7 R6 K10 ["LayoutOrder"]
       37 SETTABLEKS                       R3 R6 K11 ["UpdateState"]
       39 NEWCLOSURE                       R7 P0
       40 CAPTURE                          UPVAL U6
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R1
       43 CAPTURE                          UPVAL U7
       44 SETTABLEKS                       R7 R6 K12 ["onActivated"]
       46 CALL                             R4 2 -1
       47 RETURN                           R4 -1

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
       32 GETTABLEKS                       R5 R5 K11 ["SharedFlags"]
       34 GETTABLEKS                       R5 R5 K12 ["getFeatureStudioBackgroundUpdates"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K10 ["Src"]
       41 GETTABLEKS                       R6 R6 K13 ["Hooks"]
       43 GETTABLEKS                       R6 R6 K14 ["useUpdateState"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K10 ["Src"]
       50 GETTABLEKS                       R7 R7 K15 ["Components"]
       52 GETTABLEKS                       R7 R7 K16 ["UpdateStatus"]
       54 GETTABLEKS                       R7 R7 K17 ["UpdateStatusButtonV2"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R8 R0 K10 ["Src"]
       61 GETTABLEKS                       R8 R8 K18 ["Types"]
       63 CALL                             R7 1 1
       64 GETTABLEKS                       R8 R3 K19 ["Util"]
       66 GETTABLEKS                       R8 R8 K20 ["StudioUri"]
       68 GETTABLEKS                       R9 R2 K21 ["ContextServices"]
       70 GETTABLEKS                       R10 R9 K22 ["Plugin"]
       72 DUPCLOSURE                       R11 K23 [PROTO_1]
       73 CAPTURE                          VAL R8
       74 DUPCLOSURE                       R12 K24 [PROTO_3]
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R10
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R1
       80 CAPTURE                          VAL R6
       81 CAPTURE                          VAL R11
       82 CAPTURE                          VAL R2
       83 RETURN                           R12 1
