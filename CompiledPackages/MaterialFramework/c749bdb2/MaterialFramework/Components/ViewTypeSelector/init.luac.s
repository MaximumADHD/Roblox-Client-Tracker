PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["rawValue"]
        2 CALL                             R3 0 1
        3 GETTABLEKS                       R4 R1 K0 ["rawValue"]
        5 CALL                             R4 0 1
        6 JUMPIFLT                         R3 R4 ; [+2]
        8 LOADB                            R2 0 +1
        9 LOADB                            R2 1
       10 RETURN                           R2 1

PROTO_1:
        0 DUPTABLE                         R1 K2 [{"Id", "Label"}]
        1 SETTABLEKS                       R0 R1 K0 ["Id"]
        3 GETUPVAL                         R2 0
        4 GETUPVAL                         R4 1
        5 LOADK                            R5 K3 ["ViewTypeSelector"]
        6 GETTABLEKS                       R6 R0 K4 ["rawValue"]
        8 CALL                             R6 0 -1
        9 NAMECALL                         R2 R2 K5 ["getProjectText"]
       11 CALL                             R2 -1 1
       12 SETTABLEKS                       R2 R1 K1 ["Label"]
       14 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["allValues"]
        3 CALL                             R1 0 1
        4 GETIMPORT                        R2 K3 [table.sort]
        6 MOVE                             R3 R1
        7 DUPCLOSURE                       R4 K4 [PROTO_0]
        8 CALL                             R2 2 0
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R2 R3 K5 ["map"]
       12 MOVE                             R3 R1
       13 NEWCLOSURE                       R4 P1
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U2
       16 CALL                             R2 2 -1
       17 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["createElement"]
        3 GETUPVAL                         R4 1
        4 DUPTABLE                         R5 K8 [{"GridSize", "LayoutOrder", "OnClick", "OnGridSizeChanged", "Style", "Text", "ViewType"}]
        5 GETUPVAL                         R7 2
        6 GETTABLEKS                       R6 R7 K1 ["GridSize"]
        8 SETTABLEKS                       R6 R5 K1 ["GridSize"]
       10 SETTABLEKS                       R1 R5 K2 ["LayoutOrder"]
       12 SETTABLEKS                       R2 R5 K3 ["OnClick"]
       14 GETUPVAL                         R7 2
       15 GETTABLEKS                       R6 R7 K4 ["OnGridSizeChanged"]
       17 SETTABLEKS                       R6 R5 K4 ["OnGridSizeChanged"]
       19 GETUPVAL                         R6 3
       20 SETTABLEKS                       R6 R5 K5 ["Style"]
       22 GETTABLEKS                       R6 R0 K9 ["Label"]
       24 SETTABLEKS                       R6 R5 K6 ["Text"]
       26 GETTABLEKS                       R6 R0 K10 ["Id"]
       28 SETTABLEKS                       R6 R5 K7 ["ViewType"]
       30 CALL                             R3 2 -1
       31 RETURN                           R3 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["OnViewTypeSelected"]
        3 GETTABLEKS                       R2 R0 K1 ["Id"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["Disabled"]
        2 JUMPIFNOT                        R2 ; [+4]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K0 ["Disabled"]
        6 JUMP                             ; [+1]
        7 LOADNIL                          R1
        8 GETUPVAL                         R2 1
        9 LOADK                            R4 K1 ["ViewTypeSelector"]
       10 MOVE                             R5 R0
       11 MOVE                             R6 R1
       12 NAMECALL                         R2 R2 K2 ["use"]
       14 CALL                             R2 4 1
       15 GETTABLEKS                       R3 R0 K3 ["ViewType"]
       17 GETUPVAL                         R6 2
       18 GETTABLEKS                       R5 R6 K4 ["isEnumValue"]
       20 MOVE                             R6 R3
       21 CALL                             R5 1 1
       22 FASTCALL2K                       ASSERT R5 K5 ; [+4]
       24 LOADK                            R6 K5 ["Invalid ViewType"]
       25 GETIMPORT                        R4 K7 [assert]
       27 CALL                             R4 2 0
       28 NEWCLOSURE                       R4 P0
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          UPVAL U4
       31 CAPTURE                          VAL R0
       32 CAPTURE                          VAL R2
       33 GETUPVAL                         R5 5
       34 NAMECALL                         R5 R5 K2 ["use"]
       36 CALL                             R5 1 1
       37 GETUPVAL                         R6 6
       38 MOVE                             R7 R5
       39 CALL                             R6 1 1
       40 GETUPVAL                         R8 3
       41 GETTABLEKS                       R7 R8 K8 ["createElement"]
       43 GETUPVAL                         R8 7
       44 DUPTABLE                         R9 K19 [{"Enabled", "Icons", "Items", "HideText", "LayoutOrder", "OnItemActivated", "OnRenderItem", "SelectedId", "Size", "StyleModifier"}]
       45 GETTABLEKS                       R11 R0 K0 ["Disabled"]
       47 NOT                              R10 R11
       48 SETTABLEKS                       R10 R9 K9 ["Enabled"]
       50 NEWTABLE                         R10 0 2
       52 GETTABLEKS                       R11 R2 K20 ["GridIcon"]
       54 GETTABLEKS                       R12 R2 K21 ["ListIcon"]
       56 SETLIST                          R10 R11 2 [1]
       58 SETTABLEKS                       R10 R9 K10 ["Icons"]
       60 SETTABLEKS                       R6 R9 K11 ["Items"]
       62 LOADB                            R10 1
       63 SETTABLEKS                       R10 R9 K12 ["HideText"]
       65 GETTABLEKS                       R10 R0 K13 ["LayoutOrder"]
       67 SETTABLEKS                       R10 R9 K13 ["LayoutOrder"]
       69 NEWCLOSURE                       R10 P1
       70 CAPTURE                          VAL R0
       71 SETTABLEKS                       R10 R9 K14 ["OnItemActivated"]
       73 SETTABLEKS                       R4 R9 K15 ["OnRenderItem"]
       75 SETTABLEKS                       R3 R9 K16 ["SelectedId"]
       77 GETTABLEKS                       R10 R2 K17 ["Size"]
       79 SETTABLEKS                       R10 R9 K17 ["Size"]
       81 SETTABLEKS                       R1 R9 K18 ["StyleModifier"]
       83 CALL                             R7 2 -1
       84 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K4 [require]
       16 GETTABLEKS                       R4 R1 K6 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K4 [require]
       21 GETTABLEKS                       R5 R1 K7 ["Framework"]
       23 CALL                             R4 1 1
       24 GETTABLEKS                       R5 R4 K8 ["ContextServices"]
       26 GETTABLEKS                       R6 R5 K9 ["Localization"]
       28 GETTABLEKS                       R8 R4 K10 ["Style"]
       30 GETTABLEKS                       R7 R8 K11 ["Stylizer"]
       32 GETTABLEKS                       R8 R4 K12 ["UI"]
       34 GETTABLEKS                       R9 R8 K13 ["SelectInput"]
       36 GETTABLEKS                       R11 R4 K14 ["Util"]
       38 GETTABLEKS                       R10 R11 K15 ["StyleModifier"]
       40 GETIMPORT                        R11 K4 [require]
       42 GETIMPORT                        R13 K1 [script]
       44 GETTABLEKS                       R12 R13 K16 ["ViewTypeButton"]
       46 CALL                             R11 1 1
       47 GETIMPORT                        R12 K4 [require]
       49 GETTABLEKS                       R14 R0 K17 ["Enums"]
       51 GETTABLEKS                       R13 R14 K18 ["ViewType"]
       53 CALL                             R12 1 1
       54 GETIMPORT                        R13 K4 [require]
       56 GETTABLEKS                       R14 R0 K19 ["Resources"]
       58 CALL                             R13 1 1
       59 GETTABLEKS                       R14 R13 K20 ["LOCALIZATION_PROJECT_NAME"]
       61 DUPCLOSURE                       R15 K21 [PROTO_2]
       62 CAPTURE                          VAL R12
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R14
       65 DUPCLOSURE                       R16 K22 [PROTO_5]
       66 CAPTURE                          VAL R10
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R12
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R11
       71 CAPTURE                          VAL R6
       72 CAPTURE                          VAL R15
       73 CAPTURE                          VAL R9
       74 SETGLOBAL                        R16 K23 ["ViewTypeSelector"]
       76 GETGLOBAL                        R16 K23 ["ViewTypeSelector"]
       78 RETURN                           R16 1
