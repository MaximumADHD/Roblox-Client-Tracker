PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"enabled"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["enabled"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 GETUPVAL                         R0 0
        9 GETTABLEKS                       R0 R0 K3 ["props"]
       11 GETTABLEKS                       R0 R0 K4 ["OnClose"]
       13 CALL                             R0 0 0
       14 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R1 K1 [{"enabled"}]
        1 LOADB                            R2 1
        2 SETTABLEKS                       R2 R1 K0 ["enabled"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 GETIMPORT                        R1 K4 [script]
        8 LOADK                            R3 K5 ["Plugin"]
        9 NAMECALL                         R1 R1 K6 ["FindFirstAncestorOfClass"]
       11 CALL                             R1 2 1
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K7 ["new"]
       15 MOVE                             R3 R1
       16 LOADNIL                          R4
       17 CALL                             R2 2 1
       18 SETTABLEKS                       R2 R0 K8 ["environment"]
       20 NEWCLOSURE                       R2 P0
       21 CAPTURE                          VAL R0
       22 SETTABLEKS                       R2 R0 K9 ["close"]
       24 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["provide"]
        5 GETTABLEKS                       R3 R0 K2 ["environment"]
        7 GETTABLEKS                       R3 R3 K3 ["contextItems"]
        9 DUPTABLE                         R4 K5 [{"Dialogue"}]
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R5 R5 K6 ["createElement"]
       13 GETUPVAL                         R6 2
       14 DUPTABLE                         R7 K15 [{"Enabled", "Modal", "Resizable", "Title", "Buttons", "OnClose", "OnButtonPressed", "MinContentSize"}]
       15 GETTABLEKS                       R8 R0 K16 ["state"]
       17 GETTABLEKS                       R8 R8 K17 ["enabled"]
       19 SETTABLEKS                       R8 R7 K7 ["Enabled"]
       21 LOADB                            R8 0
       22 SETTABLEKS                       R8 R7 K8 ["Modal"]
       24 LOADB                            R8 1
       25 SETTABLEKS                       R8 R7 K9 ["Resizable"]
       27 GETTABLEKS                       R8 R1 K10 ["Title"]
       29 SETTABLEKS                       R8 R7 K10 ["Title"]
       31 GETTABLEKS                       R8 R1 K11 ["Buttons"]
       33 SETTABLEKS                       R8 R7 K11 ["Buttons"]
       35 GETTABLEKS                       R8 R0 K18 ["close"]
       37 SETTABLEKS                       R8 R7 K12 ["OnClose"]
       39 GETTABLEKS                       R8 R1 K13 ["OnButtonPressed"]
       41 SETTABLEKS                       R8 R7 K13 ["OnButtonPressed"]
       43 GETTABLEKS                       R8 R1 K14 ["MinContentSize"]
       45 SETTABLEKS                       R8 R7 K14 ["MinContentSize"]
       47 GETTABLEKS                       R8 R1 K19 ["children"]
       49 CALL                             R5 3 1
       50 SETTABLEKS                       R5 R4 K4 ["Dialogue"]
       52 CALL                             R2 2 -1
       53 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
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
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Controllers"]
       27 GETTABLEKS                       R4 R4 K11 ["Initialization"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R1 K12 ["ContextServices"]
       32 GETTABLEKS                       R5 R1 K13 ["UI"]
       34 GETTABLEKS                       R5 R5 K14 ["StyledDialog"]
       36 GETTABLEKS                       R6 R2 K15 ["PureComponent"]
       38 LOADK                            R8 K16 ["AdHocDialogue"]
       39 NAMECALL                         R6 R6 K17 ["extend"]
       41 CALL                             R6 2 1
       42 DUPCLOSURE                       R7 K18 [PROTO_1]
       43 CAPTURE                          VAL R3
       44 SETTABLEKS                       R7 R6 K19 ["init"]
       46 DUPCLOSURE                       R7 K20 [PROTO_2]
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R5
       50 SETTABLEKS                       R7 R6 K21 ["render"]
       52 RETURN                           R6 1
