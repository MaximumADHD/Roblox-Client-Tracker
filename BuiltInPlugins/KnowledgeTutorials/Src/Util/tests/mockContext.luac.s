PROTO_0:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["ScreenGui"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 0
        5 SETTABLEKS                       R1 R0 K4 ["Parent"]
        7 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["provideMockContext"]
        3 NEWTABLE                         R2 0 3
        5 GETUPVAL                         R5 1
        6 GETTABLEKS                       R4 R5 K1 ["Plugin"]
        8 GETTABLEKS                       R3 R4 K2 ["new"]
       10 DUPTABLE                         R4 K5 [{"CreateQWidgetPluginGui", "CreateWidgetPluginGui"}]
       11 GETUPVAL                         R5 2
       12 SETTABLEKS                       R5 R4 K3 ["CreateQWidgetPluginGui"]
       14 GETUPVAL                         R5 2
       15 SETTABLEKS                       R5 R4 K4 ["CreateWidgetPluginGui"]
       17 CALL                             R3 1 1
       18 GETUPVAL                         R5 3
       19 GETTABLEKS                       R4 R5 K6 ["mock"]
       21 CALL                             R4 0 1
       22 GETUPVAL                         R7 1
       23 GETTABLEKS                       R6 R7 K7 ["Design"]
       25 GETTABLEKS                       R5 R6 K2 ["new"]
       27 GETUPVAL                         R6 4
       28 CALL                             R5 1 -1
       29 SETLIST                          R2 R3 -1 [1]
       31 DUPTABLE                         R3 K9 [{"FoundationProvider"}]
       32 GETUPVAL                         R5 5
       33 GETTABLEKS                       R4 R5 K10 ["createElement"]
       35 GETUPVAL                         R7 6
       36 GETTABLEKS                       R6 R7 K11 ["Components"]
       38 GETTABLEKS                       R5 R6 K12 ["FoundationProviderAdapter"]
       40 DUPTABLE                         R6 K16 [{"theme", "device", "children"}]
       41 LOADK                            R7 K17 ["Dark"]
       42 SETTABLEKS                       R7 R6 K13 ["theme"]
       44 LOADK                            R7 K18 ["Desktop"]
       45 SETTABLEKS                       R7 R6 K14 ["device"]
       47 GETUPVAL                         R7 7
       48 SETTABLEKS                       R7 R6 K15 ["children"]
       50 CALL                             R4 2 1
       51 SETTABLEKS                       R4 R3 K8 ["FoundationProvider"]
       53 CALL                             R1 2 -1
       54 RETURN                           R1 -1

PROTO_2:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["Expected children to be a table"]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R2 R3 K6 ["Styling"]
       18 GETTABLEKS                       R1 R2 K7 ["registerPluginStyles"]
       20 GETUPVAL                         R2 1
       21 CALL                             R1 1 1
       22 NEWCLOSURE                       R2 P0
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          UPVAL U4
       26 CAPTURE                          UPVAL U5
       27 CAPTURE                          VAL R1
       28 CAPTURE                          UPVAL U6
       29 CAPTURE                          UPVAL U7
       30 CAPTURE                          VAL R0
       31 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["KnowledgeTutorials"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["StudioFoundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K10 ["TestHelpers"]
       30 GETTABLEKS                       R5 R2 K11 ["ContextServices"]
       32 GETIMPORT                        R6 K13 [game]
       34 LOADK                            R8 K14 ["CoreGui"]
       35 NAMECALL                         R6 R6 K15 ["GetService"]
       37 CALL                             R6 2 1
       38 GETIMPORT                        R7 K17 [plugin]
       40 JUMPIF                           R7 ; [+6]
       41 GETIMPORT                        R7 K1 [script]
       43 LOADK                            R9 K18 ["Plugin"]
       44 NAMECALL                         R7 R7 K19 ["FindFirstAncestorWhichIsA"]
       46 CALL                             R7 2 1
       47 GETIMPORT                        R8 K5 [require]
       49 GETTABLEKS                       R12 R0 K20 ["Src"]
       51 GETTABLEKS                       R11 R12 K21 ["Util"]
       53 GETTABLEKS                       R10 R11 K22 ["Telemetry"]
       55 GETTABLEKS                       R9 R10 K23 ["TelemetryContext"]
       57 CALL                             R8 1 1
       58 DUPCLOSURE                       R9 K24 [PROTO_0]
       59 CAPTURE                          VAL R6
       60 DUPCLOSURE                       R10 K25 [PROTO_2]
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R4
       64 CAPTURE                          VAL R5
       65 CAPTURE                          VAL R9
       66 CAPTURE                          VAL R8
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R3
       69 RETURN                           R10 1
