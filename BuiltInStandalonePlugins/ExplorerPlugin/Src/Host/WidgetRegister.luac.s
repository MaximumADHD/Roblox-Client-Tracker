PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 LOADNIL                          R1
        4 LOADK                            R4 K1 ["PluginGui"]
        5 NAMECALL                         R2 R0 K2 ["FindFirstAncestorWhichIsA"]
        7 CALL                             R2 2 1
        8 MOVE                             R1 R2
        9 JUMPIFNOTEQKNIL                  R1 ; [+40]
       11 GETUPVAL                         R2 1
       12 DUPTABLE                         R4 K8 [{"eventName", "description", "backends", "throttlingPercentage", "lastUpdated"}]
       13 LOADK                            R5 K9 ["LuaExplorerLoadWithoutPluginGui"]
       14 SETTABLEKS                       R5 R4 K3 ["eventName"]
       16 LOADK                            R5 K10 ["Fired when WidgetRegister loads without a plugin GUI"]
       17 SETTABLEKS                       R5 R4 K4 ["description"]
       19 NEWTABLE                         R5 0 1
       21 LOADK                            R6 K11 ["Points"]
       22 SETLIST                          R5 R6 1 [1]
       24 SETTABLEKS                       R5 R4 K5 ["backends"]
       26 LOADN                            R5 16
       27 SETTABLEKS                       R5 R4 K6 ["throttlingPercentage"]
       29 NEWTABLE                         R5 0 3
       31 LOADN                            R6 25
       32 LOADN                            R7 6
       33 LOADN                            R8 17
       34 SETLIST                          R5 R6 3 [1]
       36 SETTABLEKS                       R5 R4 K7 ["lastUpdated"]
       38 NEWTABLE                         R5 0 0
       40 LOADN                            R6 1
       41 NAMECALL                         R2 R2 K12 ["LogCounter"]
       43 CALL                             R2 4 0
       44 GETTABLEKS                       R2 R0 K13 ["AncestryChanged"]
       46 NAMECALL                         R2 R2 K14 ["Wait"]
       48 CALL                             R2 1 0
       49 JUMPBACK                         ; [-46]
       50 GETUPVAL                         R2 2
       51 NEWTABLE                         R4 0 1
       53 DUPTABLE                         R5 K18 [{"Uri", "Widget", "DEPRECATED_PluginGui"}]
       54 GETUPVAL                         R6 3
       55 SETTABLEKS                       R6 R5 K15 ["Uri"]
       57 SETTABLEKS                       R0 R5 K16 ["Widget"]
       59 SETTABLEKS                       R1 R5 K17 ["DEPRECATED_PluginGui"]
       61 SETLIST                          R4 R5 1 [1]
       63 NAMECALL                         R2 R2 K19 ["RegisterAsync"]
       65 CALL                             R2 2 0
       66 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R2 0 1
        3 GETUPVAL                         R3 1
        4 SETLIST                          R2 R3 1 [1]
        6 NAMECALL                         R0 R0 K0 ["DeregisterAsync"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K2 [task.cancel]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 GETIMPORT                        R0 K4 [task.spawn]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R2 ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 FASTCALL2K                       ASSERT R1 K1 ; [+4]
        9 LOADK                            R2 K1 ["WidgetRegister not mounted"]
       10 GETIMPORT                        R0 K3 [assert]
       12 CALL                             R0 2 0
       13 GETUPVAL                         R0 1
       14 LOADK                            R2 K4 ["Widgets"]
       15 NAMECALL                         R0 R0 K5 ["GetPluginComponent"]
       17 CALL                             R0 2 1
       18 GETIMPORT                        R1 K8 [task.spawn]
       20 NEWCLOSURE                       R2 P0
       21 CAPTURE                          UPVAL U0
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U3
       25 CALL                             R1 1 1
       26 NEWCLOSURE                       R2 P1
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R0
       29 CAPTURE                          UPVAL U3
       30 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ContextServices"]
        3 GETTABLEKS                       R0 R0 K1 ["Plugin"]
        5 NAMECALL                         R0 R0 K2 ["use"]
        7 CALL                             R0 1 1
        8 NAMECALL                         R0 R0 K3 ["get"]
       10 CALL                             R0 1 1
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K4 ["useRef"]
       14 LOADNIL                          R2
       15 CALL                             R1 1 1
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R2 R2 K5 ["useEffect"]
       19 NEWCLOSURE                       R3 P0
       20 CAPTURE                          VAL R1
       21 CAPTURE                          VAL R0
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          UPVAL U3
       24 NEWTABLE                         R4 0 0
       26 CALL                             R2 2 0
       27 GETUPVAL                         R2 4
       28 LOADK                            R3 K6 ["Frame"]
       29 DUPTABLE                         R4 K10 [{"BackgroundTransparency", "Size", "ref"}]
       30 LOADN                            R5 1
       31 SETTABLEKS                       R5 R4 K7 ["BackgroundTransparency"]
       33 GETIMPORT                        R5 K13 [UDim2.fromScale]
       35 LOADN                            R6 1
       36 LOADN                            R7 1
       37 CALL                             R5 2 1
       38 SETTABLEKS                       R5 R4 K8 ["Size"]
       40 SETTABLEKS                       R1 R4 K9 ["ref"]
       42 CALL                             R2 2 -1
       43 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["TelemetryService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["ExplorerPlugin"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Src"]
       17 GETTABLEKS                       R3 R3 K11 ["Util"]
       19 GETTABLEKS                       R3 R3 K12 ["ExplorerGuiUri"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R4 R1 K13 ["Packages"]
       26 GETTABLEKS                       R4 R4 K14 ["Framework"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R5 R1 K13 ["Packages"]
       33 GETTABLEKS                       R5 R5 K15 ["React"]
       35 CALL                             R4 1 1
       36 GETTABLEKS                       R5 R4 K16 ["createElement"]
       38 DUPCLOSURE                       R6 K17 [PROTO_4]
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R0
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R5
       44 RETURN                           R6 1
