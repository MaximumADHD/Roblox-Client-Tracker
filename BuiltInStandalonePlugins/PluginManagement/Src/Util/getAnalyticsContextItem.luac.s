PROTO_0:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R1 R2
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        8 GETTABLEKS                       R2 R2 K1 ["join"]
       10 DUPTABLE                         R3 K4 [{"studioSid", "clientId"}]
       11 GETUPVAL                         R4 1
       12 NAMECALL                         R4 R4 K5 ["GetSessionId"]
       14 CALL                             R4 1 1
       15 SETTABLEKS                       R4 R3 K2 ["studioSid"]
       17 GETUPVAL                         R4 1
       18 NAMECALL                         R4 R4 K6 ["GetClientId"]
       20 CALL                             R4 1 1
       21 SETTABLEKS                       R4 R3 K3 ["clientId"]
       23 MOVE                             R4 R1
       24 CALL                             R2 2 1
       25 GETUPVAL                         R3 1
       26 LOADK                            R5 K7 ["studio"]
       27 LOADK                            R6 K8 ["PluginManagement"]
       28 MOVE                             R7 R0
       29 MOVE                             R8 R2
       30 NAMECALL                         R3 R3 K9 ["SendEventDeferred"]
       32 CALL                             R3 5 0
       33 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 ORK                              R5 R1 K0 [1]
        3 NAMECALL                         R2 R2 K1 ["ReportCounter"]
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 0
        4 LOADK                            R3 K0 ["PluginManagement"]
        5 MOVE                             R4 R0
        6 CONCAT                           R2 R3 R4
        7 GETUPVAL                         R3 1
        8 MOVE                             R5 R2
        9 LOADN                            R6 1
       10 NAMECALL                         R3 R3 K1 ["ReportCounter"]
       12 CALL                             R3 3 0
       13 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R2 K1 [{"pluginId"}]
        1 SETTABLEKS                       R1 R2 K0 ["pluginId"]
        3 GETUPVAL                         R3 0
        4 MOVE                             R4 R0
        5 MOVE                             R5 R2
        6 CALL                             R3 2 0
        7 LOADK                            R4 K2 ["PluginManagement"]
        8 MOVE                             R5 R0
        9 CONCAT                           R3 R4 R5
       10 GETUPVAL                         R4 1
       11 MOVE                             R6 R3
       12 LOADN                            R7 1
       13 NAMECALL                         R4 R4 K3 ["ReportCounter"]
       15 CALL                             R4 3 0
       16 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R2 K1 [{"pluginId"}]
        1 SETTABLEKS                       R1 R2 K0 ["pluginId"]
        3 GETUPVAL                         R3 0
        4 MOVE                             R4 R0
        5 MOVE                             R5 R2
        6 CALL                             R3 2 0
        7 LOADK                            R4 K2 ["PluginManagement"]
        8 MOVE                             R5 R0
        9 CONCAT                           R3 R4 R5
       10 GETUPVAL                         R4 1
       11 MOVE                             R6 R3
       12 LOADN                            R7 1
       13 NAMECALL                         R4 R4 K3 ["ReportCounter"]
       15 CALL                             R4 3 0
       16 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R3 K2 [{"pluginId", "pluginInstallStatusCode"}]
        1 SETTABLEKS                       R1 R3 K0 ["pluginId"]
        3 SETTABLEKS                       R2 R3 K1 ["pluginInstallStatusCode"]
        5 GETUPVAL                         R4 0
        6 MOVE                             R5 R0
        7 MOVE                             R6 R3
        8 CALL                             R4 2 0
        9 LOADK                            R5 K3 ["PluginManagement"]
       10 MOVE                             R6 R0
       11 CONCAT                           R4 R5 R6
       12 GETUPVAL                         R5 1
       13 MOVE                             R7 R4
       14 LOADN                            R8 1
       15 NAMECALL                         R5 R5 K4 ["ReportCounter"]
       17 CALL                             R5 3 0
       18 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R2 K1 [{"pluginId"}]
        1 SETTABLEKS                       R1 R2 K0 ["pluginId"]
        3 GETUPVAL                         R3 0
        4 MOVE                             R4 R0
        5 MOVE                             R5 R2
        6 CALL                             R3 2 0
        7 LOADK                            R4 K2 ["PluginManagement"]
        8 MOVE                             R5 R0
        9 CONCAT                           R3 R4 R5
       10 GETUPVAL                         R4 1
       11 MOVE                             R6 R3
       12 LOADN                            R7 1
       13 NAMECALL                         R4 R4 K3 ["ReportCounter"]
       15 CALL                             R4 3 0
       16 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 LOADNIL                          R3
        3 CALL                             R1 2 0
        4 LOADK                            R2 K0 ["PluginManagement"]
        5 MOVE                             R3 R0
        6 CONCAT                           R1 R2 R3
        7 GETUPVAL                         R2 1
        8 MOVE                             R4 R1
        9 LOADN                            R5 1
       10 NAMECALL                         R2 R2 K1 ["ReportCounter"]
       12 CALL                             R2 3 0
       13 RETURN                           R0 0

PROTO_8:
        0 DUPTABLE                         R2 K1 [{"pluginId"}]
        1 SETTABLEKS                       R1 R2 K0 ["pluginId"]
        3 GETUPVAL                         R3 0
        4 MOVE                             R4 R0
        5 MOVE                             R5 R2
        6 CALL                             R3 2 0
        7 LOADK                            R4 K2 ["PluginManagement"]
        8 MOVE                             R5 R0
        9 CONCAT                           R3 R4 R5
       10 GETUPVAL                         R4 1
       11 MOVE                             R6 R3
       12 LOADN                            R7 1
       13 NAMECALL                         R4 R4 K3 ["ReportCounter"]
       15 CALL                             R4 3 0
       16 RETURN                           R0 0

PROTO_9:
        0 DUPTABLE                         R2 K1 [{"pluginId"}]
        1 SETTABLEKS                       R1 R2 K0 ["pluginId"]
        3 GETUPVAL                         R3 0
        4 MOVE                             R4 R0
        5 MOVE                             R5 R2
        6 CALL                             R3 2 0
        7 LOADK                            R4 K2 ["PluginManagement"]
        8 MOVE                             R5 R0
        9 CONCAT                           R3 R4 R5
       10 GETUPVAL                         R4 1
       11 MOVE                             R6 R3
       12 LOADN                            R7 1
       13 NAMECALL                         R4 R4 K3 ["ReportCounter"]
       15 CALL                             R4 3 0
       16 RETURN                           R0 0

PROTO_10:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 NEWCLOSURE                       R2 P1
        4 CAPTURE                          VAL R0
        5 NEWCLOSURE                       R3 P2
        6 CAPTURE                          VAL R1
        7 CAPTURE                          VAL R0
        8 DUPTABLE                         R4 K7 [{"TryInstallPluginFromWeb", "InstallPluginFromWebSuccess", "InstallPluginFromWebFailure", "TryUpdatePlugin", "TryUpdateAllPlugins", "UpdatePluginSuccess", "UpdatePluginFailure"}]
        9 NEWCLOSURE                       R5 P3
       10 CAPTURE                          VAL R1
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R5 R4 K0 ["TryInstallPluginFromWeb"]
       14 NEWCLOSURE                       R5 P4
       15 CAPTURE                          VAL R1
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R5 R4 K1 ["InstallPluginFromWebSuccess"]
       19 NEWCLOSURE                       R5 P5
       20 CAPTURE                          VAL R1
       21 CAPTURE                          VAL R0
       22 SETTABLEKS                       R5 R4 K2 ["InstallPluginFromWebFailure"]
       24 NEWCLOSURE                       R5 P6
       25 CAPTURE                          VAL R1
       26 CAPTURE                          VAL R0
       27 SETTABLEKS                       R5 R4 K3 ["TryUpdatePlugin"]
       29 NEWCLOSURE                       R5 P7
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R0
       32 SETTABLEKS                       R5 R4 K4 ["TryUpdateAllPlugins"]
       34 NEWCLOSURE                       R5 P8
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R0
       37 SETTABLEKS                       R5 R4 K5 ["UpdatePluginSuccess"]
       39 NEWCLOSURE                       R5 P9
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R0
       42 SETTABLEKS                       R5 R4 K6 ["UpdatePluginFailure"]
       44 RETURN                           R4 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Analytics"]
        3 GETTABLEKS                       R0 R0 K1 ["new"]
        5 DUPCLOSURE                       R1 K2 [PROTO_10]
        6 CAPTURE                          UPVAL U1
        7 CALL                             R0 1 -1
        8 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Cryo"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       25 DUPCLOSURE                       R4 K9 [PROTO_11]
       26 CAPTURE                          VAL R3
       27 CAPTURE                          VAL R1
       28 RETURN                           R4 1
