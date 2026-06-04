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
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 NOT                              R3 R4
        3 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        5 LOADK                            R4 K0 ["TryInstallPluginFromWeb is deprecated with FFlagStudioRemoveOldPluginInstallFromWebLua"]
        6 GETIMPORT                        R2 K2 [assert]
        8 CALL                             R2 2 0
        9 DUPTABLE                         R2 K4 [{"pluginId"}]
       10 SETTABLEKS                       R1 R2 K3 ["pluginId"]
       12 GETUPVAL                         R3 1
       13 MOVE                             R4 R0
       14 MOVE                             R5 R2
       15 CALL                             R3 2 0
       16 LOADK                            R4 K5 ["PluginManagement"]
       17 MOVE                             R5 R0
       18 CONCAT                           R3 R4 R5
       19 GETUPVAL                         R4 2
       20 MOVE                             R6 R3
       21 LOADN                            R7 1
       22 NAMECALL                         R4 R4 K6 ["ReportCounter"]
       24 CALL                             R4 3 0
       25 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 NOT                              R3 R4
        3 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        5 LOADK                            R4 K0 ["InstallPluginFromWebSuccess is deprecated with FFlagStudioRemoveOldPluginInstallFromWebLua"]
        6 GETIMPORT                        R2 K2 [assert]
        8 CALL                             R2 2 0
        9 DUPTABLE                         R2 K4 [{"pluginId"}]
       10 SETTABLEKS                       R1 R2 K3 ["pluginId"]
       12 GETUPVAL                         R3 1
       13 MOVE                             R4 R0
       14 MOVE                             R5 R2
       15 CALL                             R3 2 0
       16 LOADK                            R4 K5 ["PluginManagement"]
       17 MOVE                             R5 R0
       18 CONCAT                           R3 R4 R5
       19 GETUPVAL                         R4 2
       20 MOVE                             R6 R3
       21 LOADN                            R7 1
       22 NAMECALL                         R4 R4 K6 ["ReportCounter"]
       24 CALL                             R4 3 0
       25 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R5 0
        1 CALL                             R5 0 1
        2 NOT                              R4 R5
        3 FASTCALL2K                       ASSERT R4 K0 ; [+4]
        5 LOADK                            R5 K0 ["InstallPluginFromWebFailure is deprecated with FFlagStudioRemoveOldPluginInstallFromWebLua"]
        6 GETIMPORT                        R3 K2 [assert]
        8 CALL                             R3 2 0
        9 DUPTABLE                         R3 K5 [{"pluginId", "pluginInstallStatusCode"}]
       10 SETTABLEKS                       R1 R3 K3 ["pluginId"]
       12 SETTABLEKS                       R2 R3 K4 ["pluginInstallStatusCode"]
       14 GETUPVAL                         R4 1
       15 MOVE                             R5 R0
       16 MOVE                             R6 R3
       17 CALL                             R4 2 0
       18 LOADK                            R5 K6 ["PluginManagement"]
       19 MOVE                             R6 R0
       20 CONCAT                           R4 R5 R6
       21 GETUPVAL                         R5 2
       22 MOVE                             R7 R4
       23 LOADN                            R8 1
       24 NAMECALL                         R5 R5 K7 ["ReportCounter"]
       26 CALL                             R5 3 0
       27 RETURN                           R0 0

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
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          VAL R1
       12 CAPTURE                          VAL R0
       13 SETTABLEKS                       R5 R4 K0 ["TryInstallPluginFromWeb"]
       15 NEWCLOSURE                       R5 P4
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          VAL R1
       18 CAPTURE                          VAL R0
       19 SETTABLEKS                       R5 R4 K1 ["InstallPluginFromWebSuccess"]
       21 NEWCLOSURE                       R5 P5
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          VAL R1
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R5 R4 K2 ["InstallPluginFromWebFailure"]
       27 NEWCLOSURE                       R5 P6
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R0
       30 SETTABLEKS                       R5 R4 K3 ["TryUpdatePlugin"]
       32 NEWCLOSURE                       R5 P7
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R0
       35 SETTABLEKS                       R5 R4 K4 ["TryUpdateAllPlugins"]
       37 NEWCLOSURE                       R5 P8
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R0
       40 SETTABLEKS                       R5 R4 K5 ["UpdatePluginSuccess"]
       42 NEWCLOSURE                       R5 P9
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R0
       45 SETTABLEKS                       R5 R4 K6 ["UpdatePluginFailure"]
       47 RETURN                           R4 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Analytics"]
        3 GETTABLEKS                       R0 R0 K1 ["new"]
        5 DUPCLOSURE                       R1 K2 [PROTO_10]
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Flags"]
       15 GETTABLEKS                       R2 R2 K7 ["getFFlagStudioRemoveOldPluginInstallFromWebLua"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K8 ["Packages"]
       22 GETTABLEKS                       R3 R3 K9 ["Cryo"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K8 ["Packages"]
       29 GETTABLEKS                       R4 R4 K10 ["Framework"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R3 K11 ["ContextServices"]
       34 DUPCLOSURE                       R5 K12 [PROTO_11]
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R1
       38 RETURN                           R5 1
