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
       35 GETUPVAL                         R5 0
       36 CALL                             R5 0 1
       37 JUMPIFNOT                        R5 ; [+3]
       38 GETTABLEKS                       R4 R0 K11 ["PassesThroughMouseEvents"]
       40 JUMP                             ; [+1]
       41 LOADNIL                          R4
       42 SETTABLEKS                       R4 R3 K11 ["PassesThroughMouseEvents"]
       44 GETTABLEKS                       R4 R0 K17 ["PopupSelfAnchorPoint"]
       46 SETTABLEKS                       R4 R3 K12 ["SelfAnchorPoint"]
       48 GETTABLEKS                       R4 R0 K18 ["PopupTargetAnchorPoint"]
       50 SETTABLEKS                       R4 R3 K13 ["TargetAnchorPoint"]
       52 SETTABLEKS                       R3 R2 K7 ["Popup"]
       54 LOADNIL                          R3
       55 GETUPVAL                         R4 1
       56 JUMPIFNOT                        R4 ; [+3]
       57 GETTABLEKS                       R3 R0 K2 ["Title"]
       59 JUMP                             ; [+7]
       60 GETTABLEKS                       R4 R0 K2 ["Title"]
       62 GETUPVAL                         R5 2
       63 NAMECALL                         R5 R5 K19 ["GenerateGUID"]
       65 CALL                             R5 1 1
       66 CONCAT                           R3 R4 R5
       67 MOVE                             R6 R3
       68 MOVE                             R7 R2
       69 NAMECALL                         R4 R1 K20 ["CreateQWidgetPluginGui"]
       71 CALL                             R4 3 1
       72 GETTABLEKS                       R5 R0 K2 ["Title"]
       74 SETTABLEKS                       R5 R4 K21 ["Name"]
       76 GETTABLEKS                       R5 R0 K22 ["ZIndexBehavior"]
       78 JUMPIFNOT                        R5 ; [+4]
       79 GETTABLEKS                       R5 R0 K22 ["ZIndexBehavior"]
       81 SETTABLEKS                       R5 R4 K22 ["ZIndexBehavior"]
       83 RETURN                           R4 1

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
       31 GETIMPORT                        R4 K10 [require]
       33 GETTABLEKS                       R5 R1 K15 ["SharedFlags"]
       35 GETTABLEKS                       R5 R5 K16 ["getFFlagDevFrameworkAddPopupPassesThroughMouseEventsProp"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K1 [game]
       40 LOADK                            R7 K17 ["DevFrameworkPopupFixedTitle"]
       41 LOADB                            R8 0
       42 NAMECALL                         R5 R5 K18 ["DefineFastFlag"]
       44 CALL                             R5 3 1
       45 MOVE                             R6 R3
       46 LOADK                            R7 K19 ["Popup"]
       47 DUPCLOSURE                       R8 K20 [PROTO_0]
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R0
       51 CALL                             R6 2 1
       52 GETTABLEKS                       R7 R2 K21 ["wrap"]
       54 MOVE                             R8 R6
       55 GETIMPORT                        R9 K5 [script]
       57 CALL                             R7 2 0
       58 RETURN                           R6 1
