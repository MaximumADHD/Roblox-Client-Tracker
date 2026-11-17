PROTO_0:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R2 0 1
        3 DUPTABLE                         R3 K3 [{"Uri", "Widget", "DEPRECATED_PluginGui"}]
        4 GETUPVAL                         R4 1
        5 SETTABLEKS                       R4 R3 K0 ["Uri"]
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R4 R4 K4 ["current"]
       10 SETTABLEKS                       R4 R3 K1 ["Widget"]
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R4 R4 K4 ["current"]
       15 LOADK                            R6 K5 ["PluginGui"]
       16 NAMECALL                         R4 R4 K6 ["FindFirstAncestorWhichIsA"]
       18 CALL                             R4 2 1
       19 SETTABLEKS                       R4 R3 K2 ["DEPRECATED_PluginGui"]
       21 SETLIST                          R2 R3 1 [1]
       23 NAMECALL                         R0 R0 K7 ["RegisterAsync"]
       25 CALL                             R0 2 0
       26 RETURN                           R0 0

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
       18 GETUPVAL                         R1 1
       19 NAMECALL                         R1 R1 K6 ["GetUri"]
       21 CALL                             R1 1 1
       22 GETIMPORT                        R2 K9 [task.spawn]
       24 NEWCLOSURE                       R3 P0
       25 CAPTURE                          VAL R0
       26 CAPTURE                          VAL R1
       27 CAPTURE                          UPVAL U0
       28 CALL                             R2 1 1
       29 NEWCLOSURE                       R3 P1
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R0
       32 CAPTURE                          VAL R1
       33 RETURN                           R3 1

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
       22 NEWTABLE                         R4 0 0
       24 CALL                             R2 2 0
       25 GETUPVAL                         R2 1
       26 GETTABLEKS                       R2 R2 K6 ["createElement"]
       28 LOADK                            R3 K7 ["Frame"]
       29 DUPTABLE                         R4 K12 [{["BackgroundTransparency"] = 1, ["Size"], ["ref"]}]
       30 GETIMPORT                        R5 K15 [UDim2.fromScale]
       32 LOADN                            R6 1
       33 LOADN                            R7 1
       34 CALL                             R5 2 1
       35 SETTABLEKS                       R5 R4 K10 ["Size"]
       37 SETTABLEKS                       R1 R4 K11 ["ref"]
       39 CALL                             R2 2 -1
       40 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["SceneAnalysis"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K9 [PROTO_4]
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R2
       24 RETURN                           R3 1
