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
       21 GETTABLEKS                       R4 R4 K6 ["createElement"]
       23 GETUPVAL                         R5 4
       24 DUPTABLE                         R6 K11 [{"Uri", "LayoutOrder", "UpdateState", "onActivated"}]
       25 SETTABLEKS                       R2 R6 K7 ["Uri"]
       27 GETTABLEKS                       R7 R0 K8 ["LayoutOrder"]
       29 SETTABLEKS                       R7 R6 K8 ["LayoutOrder"]
       31 SETTABLEKS                       R3 R6 K9 ["UpdateState"]
       33 NEWCLOSURE                       R7 P0
       34 CAPTURE                          UPVAL U5
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R1
       37 CAPTURE                          UPVAL U6
       38 SETTABLEKS                       R7 R6 K10 ["onActivated"]
       40 CALL                             R4 2 -1
       41 RETURN                           R4 -1

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
       41 GETTABLEKS                       R6 R6 K13 ["Components"]
       43 GETTABLEKS                       R6 R6 K14 ["UpdateStatus"]
       45 GETTABLEKS                       R6 R6 K15 ["UpdateStatusButtonV2"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K10 ["Src"]
       52 GETTABLEKS                       R7 R7 K16 ["Types"]
       54 CALL                             R6 1 1
       55 GETTABLEKS                       R7 R3 K17 ["Util"]
       57 GETTABLEKS                       R7 R7 K18 ["StudioUri"]
       59 GETTABLEKS                       R8 R2 K19 ["ContextServices"]
       61 GETTABLEKS                       R9 R8 K20 ["Plugin"]
       63 DUPCLOSURE                       R10 K21 [PROTO_1]
       64 CAPTURE                          VAL R7
       65 DUPCLOSURE                       R11 K22 [PROTO_3]
       66 CAPTURE                          VAL R9
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R4
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R10
       72 CAPTURE                          VAL R2
       73 RETURN                           R11 1
