PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["get"]
        3 CALL                             R0 1 1
        4 NAMECALL                         R1 R0 K1 ["GetUri"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K2 ["join"]
       10 MOVE                             R3 R1
       11 DUPTABLE                         R4 K5 [{"Category", "ItemId"}]
       12 LOADK                            R5 K6 ["Widgets"]
       13 SETTABLEKS                       R5 R4 K3 ["Category"]
       15 LOADK                            R5 K7 ["MainViewWidget"]
       16 SETTABLEKS                       R5 R4 K4 ["ItemId"]
       18 CALL                             R2 2 -1
       19 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["use"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K1 ["useMemo"]
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
        7 DUPTABLE                         R5 K5 [{"BackgroundColor3", "BackgroundTransparency", "Size", "ref"}]
        8 GETIMPORT                        R6 K8 [Color3.new]
       10 LOADN                            R7 1
       11 LOADN                            R8 0
       12 LOADN                            R9 1
       13 CALL                             R6 3 1
       14 SETTABLEKS                       R6 R5 K1 ["BackgroundColor3"]
       16 LOADN                            R6 1
       17 SETTABLEKS                       R6 R5 K2 ["BackgroundTransparency"]
       19 GETIMPORT                        R6 K11 [UDim2.fromScale]
       21 LOADN                            R7 1
       22 LOADN                            R8 1
       23 CALL                             R6 2 1
       24 SETTABLEKS                       R6 R5 K3 ["Size"]
       26 SETTABLEKS                       R2 R5 K4 ["ref"]
       28 DUPTABLE                         R6 K14 [{"UIListLayout", "MainView"}]
       29 GETUPVAL                         R7 2
       30 LOADK                            R8 K12 ["UIListLayout"]
       31 DUPTABLE                         R9 K16 [{"FillDirection"}]
       32 GETIMPORT                        R10 K19 [Enum.FillDirection.Vertical]
       34 SETTABLEKS                       R10 R9 K15 ["FillDirection"]
       36 CALL                             R7 2 1
       37 SETTABLEKS                       R7 R6 K12 ["UIListLayout"]
       39 GETUPVAL                         R7 2
       40 GETUPVAL                         R8 3
       41 DUPTABLE                         R9 K21 [{"textBoxRef"}]
       42 GETTABLEKS                       R10 R0 K20 ["textBoxRef"]
       44 SETTABLEKS                       R10 R9 K20 ["textBoxRef"]
       46 CALL                             R7 2 1
       47 SETTABLEKS                       R7 R6 K13 ["MainView"]
       49 CALL                             R3 3 -1
       50 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["AssistantUI"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R1 K8 ["Components"]
       16 GETTABLEKS                       R2 R3 K9 ["MainView"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R5 R0 K6 ["Packages"]
       22 GETTABLEKS                       R4 R5 K10 ["Framework"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R6 R0 K6 ["Packages"]
       29 GETTABLEKS                       R5 R6 K11 ["React"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R7 R0 K6 ["Packages"]
       36 GETTABLEKS                       R6 R7 K12 ["StudioFoundation"]
       38 CALL                             R5 1 1
       39 GETTABLEKS                       R6 R3 K13 ["ContextServices"]
       41 GETTABLEKS                       R7 R6 K14 ["Plugin"]
       43 GETTABLEKS                       R9 R5 K15 ["Util"]
       45 GETTABLEKS                       R8 R9 K16 ["StudioUri"]
       47 GETTABLEKS                       R10 R5 K17 ["Hooks"]
       49 GETTABLEKS                       R9 R10 K18 ["useWidgetRef"]
       51 GETTABLEKS                       R10 R4 K19 ["createElement"]
       53 DUPCLOSURE                       R11 K20 [PROTO_1]
       54 CAPTURE                          VAL R7
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R8
       57 DUPCLOSURE                       R12 K21 [PROTO_2]
       58 CAPTURE                          VAL R11
       59 CAPTURE                          VAL R9
       60 CAPTURE                          VAL R10
       61 CAPTURE                          VAL R2
       62 DUPTABLE                         R13 K24 [{"WidgetTrackingMainView", "useMainViewWidgetUri"}]
       63 SETTABLEKS                       R12 R13 K22 ["WidgetTrackingMainView"]
       65 SETTABLEKS                       R11 R13 K23 ["useMainViewWidgetUri"]
       67 RETURN                           R13 1
