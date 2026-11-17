PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K4 ["props"]
        8 GETTABLEKS                       R0 R0 K5 ["OnClose"]
       10 CALL                             R0 0 0
       11 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R1 K2 [{[1] = True}]
        1 SETTABLEKS                       R1 R0 K3 ["state"]
        3 GETIMPORT                        R1 K5 [script]
        5 LOADK                            R3 K6 ["Plugin"]
        6 NAMECALL                         R1 R1 K7 ["FindFirstAncestorOfClass"]
        8 CALL                             R1 2 1
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K8 ["new"]
       12 MOVE                             R3 R1
       13 LOADNIL                          R4
       14 CALL                             R2 2 1
       15 SETTABLEKS                       R2 R0 K9 ["environment"]
       17 NEWCLOSURE                       R2 P0
       18 CAPTURE                          VAL R0
       19 SETTABLEKS                       R2 R0 K10 ["close"]
       21 RETURN                           R0 0

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
       14 DUPTABLE                         R7 K17 [{["Enabled"], ["Modal"] = False, ["Resizable"] = True, ["Title"], ["Buttons"], ["OnClose"], ["OnButtonPressed"], ["MinContentSize"]}]
       15 GETTABLEKS                       R8 R0 K18 ["state"]
       17 GETTABLEKS                       R8 R8 K19 ["enabled"]
       19 SETTABLEKS                       R8 R7 K7 ["Enabled"]
       21 GETTABLEKS                       R8 R1 K12 ["Title"]
       23 SETTABLEKS                       R8 R7 K12 ["Title"]
       25 GETTABLEKS                       R8 R1 K13 ["Buttons"]
       27 SETTABLEKS                       R8 R7 K13 ["Buttons"]
       29 GETTABLEKS                       R8 R0 K20 ["close"]
       31 SETTABLEKS                       R8 R7 K14 ["OnClose"]
       33 GETTABLEKS                       R8 R1 K15 ["OnButtonPressed"]
       35 SETTABLEKS                       R8 R7 K15 ["OnButtonPressed"]
       37 GETTABLEKS                       R8 R1 K16 ["MinContentSize"]
       39 SETTABLEKS                       R8 R7 K16 ["MinContentSize"]
       41 GETTABLEKS                       R8 R1 K21 ["children"]
       43 CALL                             R5 3 1
       44 SETTABLEKS                       R5 R4 K4 ["Dialogue"]
       46 CALL                             R2 2 -1
       47 RETURN                           R2 -1

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
