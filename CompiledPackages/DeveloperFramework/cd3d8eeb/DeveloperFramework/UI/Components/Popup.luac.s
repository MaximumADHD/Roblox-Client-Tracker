PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Plugin"]
        2 NAMECALL                         R1 R1 K1 ["get"]
        4 CALL                             R1 1 1
        5 DUPTABLE                         R2 K8 [{"Title", "Size", "MinSize", "Resizable", "Modal", "Popup"}]
        6 GETTABLEKS                       R3 R0 K2 ["Title"]
        8 SETTABLEKS                       R3 R2 K2 ["Title"]
       10 GETTABLEKS                       R3 R0 K3 ["Size"]
       12 SETTABLEKS                       R3 R2 K3 ["Size"]
       14 GETTABLEKS                       R3 R0 K4 ["MinSize"]
       16 SETTABLEKS                       R3 R2 K4 ["MinSize"]
       18 GETTABLEKS                       R3 R0 K5 ["Resizable"]
       20 SETTABLEKS                       R3 R2 K5 ["Resizable"]
       22 GETTABLEKS                       R3 R0 K6 ["Modal"]
       24 SETTABLEKS                       R3 R2 K6 ["Modal"]
       26 DUPTABLE                         R3 K14 [{"Target", "ActionId", "PassesThroughMouseEvents", "SelfAnchorPoint", "TargetAnchorPoint"}]
       27 GETTABLEKS                       R4 R0 K15 ["PopupTarget"]
       29 SETTABLEKS                       R4 R3 K9 ["Target"]
       31 GETTABLEKS                       R4 R0 K16 ["PopupActionId"]
       33 SETTABLEKS                       R4 R3 K10 ["ActionId"]
       35 GETTABLEKS                       R4 R0 K11 ["PassesThroughMouseEvents"]
       37 SETTABLEKS                       R4 R3 K11 ["PassesThroughMouseEvents"]
       39 GETTABLEKS                       R4 R0 K17 ["PopupSelfAnchorPoint"]
       41 SETTABLEKS                       R4 R3 K12 ["SelfAnchorPoint"]
       43 GETTABLEKS                       R4 R0 K18 ["PopupTargetAnchorPoint"]
       45 SETTABLEKS                       R4 R3 K13 ["TargetAnchorPoint"]
       47 SETTABLEKS                       R3 R2 K7 ["Popup"]
       49 LOADNIL                          R3
       50 GETUPVAL                         R4 0
       51 JUMPIFNOT                        R4 ; [+3]
       52 GETTABLEKS                       R3 R0 K2 ["Title"]
       54 JUMP                             ; [+7]
       55 GETTABLEKS                       R4 R0 K2 ["Title"]
       57 GETUPVAL                         R5 1
       58 NAMECALL                         R5 R5 K19 ["GenerateGUID"]
       60 CALL                             R5 1 1
       61 CONCAT                           R3 R4 R5
       62 MOVE                             R6 R3
       63 MOVE                             R7 R2
       64 NAMECALL                         R4 R1 K20 ["CreateQWidgetPluginGui"]
       66 CALL                             R4 3 1
       67 GETTABLEKS                       R5 R0 K2 ["Title"]
       69 SETTABLEKS                       R5 R4 K21 ["Name"]
       71 GETTABLEKS                       R5 R0 K22 ["ZIndexBehavior"]
       73 JUMPIFNOT                        R5 ; [+4]
       74 GETTABLEKS                       R5 R0 K22 ["ZIndexBehavior"]
       76 SETTABLEKS                       R5 R4 K22 ["ZIndexBehavior"]
       78 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["UI"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R1 R1 K8 ["Parent"]
       15 GETIMPORT                        R2 K10 [require]
       17 GETTABLEKS                       R3 R1 K11 ["Util"]
       19 CALL                             R2 1 1
       20 GETTABLEKS                       R2 R2 K12 ["Typecheck"]
       22 GETIMPORT                        R3 K10 [require]
       24 GETTABLEKS                       R4 R1 K6 ["UI"]
       26 GETTABLEKS                       R4 R4 K13 ["Components"]
       28 GETTABLEKS                       R4 R4 K14 ["createPluginWidget"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K1 [game]
       33 LOADK                            R6 K15 ["DevFrameworkPopupFixedTitle"]
       34 LOADB                            R7 0
       35 NAMECALL                         R4 R4 K16 ["DefineFastFlag"]
       37 CALL                             R4 3 1
       38 MOVE                             R5 R3
       39 LOADK                            R6 K17 ["Popup"]
       40 DUPCLOSURE                       R7 K18 [PROTO_0]
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R0
       43 CALL                             R5 2 1
       44 GETTABLEKS                       R6 R2 K19 ["wrap"]
       46 MOVE                             R7 R5
       47 GETIMPORT                        R8 K5 [script]
       49 CALL                             R6 2 0
       50 RETURN                           R5 1
