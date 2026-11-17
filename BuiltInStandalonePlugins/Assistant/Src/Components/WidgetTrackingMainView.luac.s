PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["get"]
        3 CALL                             R0 1 1
        4 NAMECALL                         R1 R0 K1 ["GetUri"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["join"]
       10 MOVE                             R3 R1
       11 DUPTABLE                         R4 K7 [{["Category"] = "Widgets", ["ItemId"] = "MainViewWidget"}]
       12 CALL                             R2 2 -1
       13 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["use"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["useMemo"]
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U2
       10 NEWTABLE                         R3 0 1
       12 MOVE                             R4 R0
       13 SETLIST                          R3 R4 1 [1]
       15 CALL                             R1 2 -1
       16 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 2
        6 LOADK                            R4 K0 ["Frame"]
        7 DUPTABLE                         R5 K5 [{["BackgroundTransparency"] = 1, ["Size"], ["ref"]}]
        8 GETIMPORT                        R6 K8 [UDim2.fromScale]
       10 LOADN                            R7 1
       11 LOADN                            R8 1
       12 CALL                             R6 2 1
       13 SETTABLEKS                       R6 R5 K3 ["Size"]
       15 SETTABLEKS                       R2 R5 K4 ["ref"]
       17 DUPTABLE                         R6 K11 [{"UIListLayout", "MainView"}]
       18 GETUPVAL                         R7 2
       19 LOADK                            R8 K9 ["UIListLayout"]
       20 DUPTABLE                         R9 K13 [{"FillDirection"}]
       21 GETIMPORT                        R10 K16 [Enum.FillDirection.Vertical]
       23 SETTABLEKS                       R10 R9 K12 ["FillDirection"]
       25 CALL                             R7 2 1
       26 SETTABLEKS                       R7 R6 K9 ["UIListLayout"]
       28 GETUPVAL                         R7 2
       29 GETUPVAL                         R8 3
       30 DUPTABLE                         R9 K19 [{"textBoxRef", "externalInterfaceRef"}]
       31 GETTABLEKS                       R10 R0 K17 ["textBoxRef"]
       33 SETTABLEKS                       R10 R9 K17 ["textBoxRef"]
       35 GETTABLEKS                       R10 R0 K18 ["externalInterfaceRef"]
       37 SETTABLEKS                       R10 R9 K18 ["externalInterfaceRef"]
       39 CALL                             R7 2 1
       40 SETTABLEKS                       R7 R6 K10 ["MainView"]
       42 CALL                             R3 3 -1
       43 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["AssistantUI"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["StudioFoundation"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R2 K11 ["ContextServices"]
       37 GETTABLEKS                       R6 R5 K12 ["Plugin"]
       39 GETTABLEKS                       R7 R4 K13 ["Util"]
       41 GETTABLEKS                       R7 R7 K14 ["StudioUri"]
       43 GETTABLEKS                       R8 R4 K15 ["Hooks"]
       45 GETTABLEKS                       R8 R8 K16 ["useWidgetRef"]
       47 GETTABLEKS                       R9 R1 K17 ["Components"]
       49 GETTABLEKS                       R9 R9 K18 ["MainView"]
       51 GETTABLEKS                       R10 R3 K19 ["createElement"]
       53 DUPCLOSURE                       R11 K20 [PROTO_1]
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R7
       57 DUPCLOSURE                       R12 K21 [PROTO_2]
       58 CAPTURE                          VAL R11
       59 CAPTURE                          VAL R8
       60 CAPTURE                          VAL R10
       61 CAPTURE                          VAL R9
       62 DUPTABLE                         R13 K24 [{"WidgetTrackingMainView", "useMainViewWidgetUri"}]
       63 SETTABLEKS                       R12 R13 K22 ["WidgetTrackingMainView"]
       65 SETTABLEKS                       R11 R13 K23 ["useMainViewWidgetUri"]
       67 RETURN                           R13 1
