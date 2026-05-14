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
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

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
       21 CAPTURE                          VAL R0
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          UPVAL U0
       24 CALL                             R1 1 0
       25 NEWCLOSURE                       R1 P1
       26 CAPTURE                          VAL R0
       27 CAPTURE                          UPVAL U2
       28 RETURN                           R1 1

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
       23 NEWTABLE                         R4 0 0
       25 CALL                             R2 2 0
       26 GETUPVAL                         R2 1
       27 GETTABLEKS                       R2 R2 K6 ["createElement"]
       29 LOADK                            R3 K7 ["Frame"]
       30 DUPTABLE                         R4 K11 [{"BackgroundTransparency", "Size", "ref"}]
       31 LOADN                            R5 1
       32 SETTABLEKS                       R5 R4 K8 ["BackgroundTransparency"]
       34 GETIMPORT                        R5 K14 [UDim2.fromScale]
       36 LOADN                            R6 1
       37 LOADN                            R7 1
       38 CALL                             R5 2 1
       39 SETTABLEKS                       R5 R4 K9 ["Size"]
       41 SETTABLEKS                       R1 R4 K10 ["ref"]
       43 CALL                             R2 2 -1
       44 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PerformanceTools"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["PerformanceToolsUri"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R3 K10 ["Framework"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K9 ["Packages"]
       27 GETTABLEKS                       R4 R4 K11 ["React"]
       29 CALL                             R3 1 1
       30 DUPCLOSURE                       R4 K12 [PROTO_4]
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R1
       34 RETURN                           R4 1
