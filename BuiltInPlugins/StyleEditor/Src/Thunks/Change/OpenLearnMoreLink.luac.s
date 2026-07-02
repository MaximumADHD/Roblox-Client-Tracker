PROTO_0:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["https://create.roblox.com/docs/ui/styling/editor"]
        2 NAMECALL                         R2 R2 K1 ["OpenBrowserWindow"]
        4 CALL                             R2 2 0
        5 GETUPVAL                         R4 1
        6 GETUPVAL                         R5 2
        7 DUPTABLE                         R6 K5 [{["eventType"], ["path"] = "OnboardingLink"}]
        8 GETUPVAL                         R7 3
        9 GETTABLEKS                       R7 R7 K4 ["OnboardingLink"]
       11 GETTABLEKS                       R7 R7 K6 ["rawValue"]
       13 CALL                             R7 0 1
       14 SETTABLEKS                       R7 R6 K2 ["eventType"]
       16 CALL                             R5 1 -1
       17 CALL                             R4 -1 -1
       18 NAMECALL                         R2 R0 K7 ["dispatch"]
       20 CALL                             R2 -1 0
       21 RETURN                           R0 0

PROTO_1:
        0 DUPCLOSURE                       R0 K0 [PROTO_0]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["GuiService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETTABLEKS                       R1 R1 K6 ["Parent"]
       17 GETIMPORT                        R2 K8 [require]
       19 GETTABLEKS                       R3 R1 K9 ["Src"]
       21 GETTABLEKS                       R3 R3 K10 ["Thunks"]
       23 GETTABLEKS                       R3 R3 K11 ["Types"]
       25 CALL                             R2 1 1
       26 GETTABLEKS                       R3 R1 K9 ["Src"]
       28 GETTABLEKS                       R3 R3 K10 ["Thunks"]
       30 GETIMPORT                        R4 K8 [require]
       32 GETTABLEKS                       R5 R3 K12 ["Telemetry"]
       34 GETTABLEKS                       R5 R5 K13 ["SendTelemetryEvent"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K8 [require]
       39 GETTABLEKS                       R6 R1 K9 ["Src"]
       41 GETTABLEKS                       R6 R6 K14 ["Resources"]
       43 GETTABLEKS                       R6 R6 K12 ["Telemetry"]
       45 GETTABLEKS                       R6 R6 K15 ["ActionClickedEvent"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K8 [require]
       50 GETTABLEKS                       R7 R1 K9 ["Src"]
       52 GETTABLEKS                       R7 R7 K16 ["Enums"]
       54 GETTABLEKS                       R7 R7 K17 ["ActionClickedEventType"]
       56 CALL                             R6 1 1
       57 DUPCLOSURE                       R7 K18 [PROTO_1]
       58 CAPTURE                          VAL R0
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R6
       62 RETURN                           R7 1
