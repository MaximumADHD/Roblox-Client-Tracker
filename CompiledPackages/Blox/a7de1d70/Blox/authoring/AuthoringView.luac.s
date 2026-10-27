PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["scheduled"]
        2 JUMPIF                           R1 ; [+10]
        3 LOADB                            R1 1
        4 SETTABLEKS                       R1 R0 K0 ["scheduled"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R3 R0 K1 ["depth"]
        9 MOVE                             R4 R0
       10 NAMECALL                         R1 R1 K2 ["enqueue"]
       12 CALL                             R1 3 0
       13 RETURN                           R0 0

PROTO_1:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["scheduled"]
        3 GETUPVAL                         R1 0
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R0
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K2 [DockWidgetPluginGuiInfo.new]
        2 GETIMPORT                        R2 K6 [Enum.InitialDockState.Float]
        4 LOADB                            R3 1
        5 LOADB                            R4 0
        6 LOADN                            R5 300
        7 LOADN                            R6 500
        8 LOADN                            R7 300
        9 LOADN                            R8 500
       10 CALL                             R1 7 1
       11 LOADK                            R4 K7 ["Main"]
       12 MOVE                             R5 R1
       13 NAMECALL                         R2 R0 K8 ["CreateDockWidgetPluginGui"]
       15 CALL                             R2 3 1
       16 LOADK                            R3 K9 ["UI Authoring"]
       17 SETTABLEKS                       R3 R2 K10 ["Title"]
       19 LOADNIL                          R3
       20 NEWCLOSURE                       R4 P0
       21 CAPTURE                          REF R3
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R5 R5 K1 ["new"]
       25 LOADK                            R6 K11 ["AuthoringView"]
       26 LOADK                            R7 K12 [0.01]
       27 NEWCLOSURE                       R8 P1
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          VAL R4
       30 CALL                             R5 3 1
       31 MOVE                             R3 R5
       32 LOADK                            R5 K11 ["AuthoringView"]
       33 SETTABLEKS                       R5 R2 K13 ["Name"]
       35 DUPTABLE                         R6 K18 [{"disposal", "gui", "publish", "queue"}]
       36 NEWTABLE                         R7 0 0
       38 SETTABLEKS                       R7 R6 K14 ["disposal"]
       40 SETTABLEKS                       R2 R6 K15 ["gui"]
       42 SETTABLEKS                       R4 R6 K16 ["publish"]
       44 SETTABLEKS                       R3 R6 K17 ["queue"]
       46 DUPTABLE                         R7 K20 [{"__index"}]
       47 GETUPVAL                         R8 2
       48 SETTABLEKS                       R8 R7 K19 ["__index"]
       50 FASTCALL2                        SETMETATABLE R6 R7 ; [+3]
       52 GETIMPORT                        R5 K22 [setmetatable]
       54 CALL                             R5 2 1
       55 NAMECALL                         R6 R5 K23 ["onSelectionChange"]
       57 CALL                             R6 1 0
       58 CLOSEUPVALS                      R3
       59 RETURN                           R5 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["onSelectionChange"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["queue"]
        2 NAMECALL                         R1 R1 K1 ["start"]
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K2 ["SelectionChanged"]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R0
       10 NAMECALL                         R1 R1 K3 ["Connect"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R3 R0 K4 ["disposal"]
       15 NEWCLOSURE                       R4 P1
       16 CAPTURE                          VAL R1
       17 FASTCALL2                        TABLE_INSERT R3 R4 ; [+3]
       19 GETIMPORT                        R2 K7 [table.insert]
       21 CALL                             R2 2 0
       22 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["disposal"]
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 FORGPREP                         R1
        5 MOVE                             R6 R5
        6 CALL                             R6 0 0
        7 FORGLOOP                         R1 2 ; [-3]
        9 GETTABLEKS                       R1 R0 K1 ["queue"]
       11 NAMECALL                         R1 R1 K2 ["stop"]
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["Get"]
        3 CALL                             R1 1 1
        4 GETTABLEN                        R2 R1 1
        5 JUMPIFNOT                        R2 ; [+5]
        6 LOADK                            R5 K1 ["Template"]
        7 NAMECALL                         R3 R2 K2 ["IsA"]
        9 CALL                             R3 2 1
       10 JUMPIF                           R3 ; [+1]
       11 RETURN                           R0 0
       12 GETTABLEKS                       R3 R0 K3 ["gui"]
       14 NAMECALL                         R3 R3 K4 ["ClearAllChildren"]
       16 CALL                             R3 1 0
       17 GETTABLEKS                       R3 R0 K3 ["gui"]
       19 LOADK                            R5 K5 ["UI Authoring - "]
       20 GETTABLEKS                       R6 R2 K6 ["Name"]
       22 CONCAT                           R4 R5 R6
       23 SETTABLEKS                       R4 R3 K7 ["Title"]
       25 LOADK                            R5 K8 ["Authoring"]
       26 NAMECALL                         R3 R2 K9 ["FindFirstChild"]
       28 CALL                             R3 2 1
       29 JUMPIF                           R3 ; [+1]
       30 RETURN                           R0 0
       31 NAMECALL                         R4 R3 K4 ["ClearAllChildren"]
       33 CALL                             R4 1 0
       34 GETIMPORT                        R4 K11 [require]
       36 GETIMPORT                        R5 K13 [script]
       38 GETTABLEKS                       R5 R5 K14 ["Parent"]
       40 GETTABLEKS                       R5 R5 K8 ["Authoring"]
       42 CALL                             R4 1 1
       43 GETUPVAL                         R5 1
       44 GETTABLEKS                       R5 R5 K15 ["addStaticCustomTemplate"]
       46 MOVE                             R6 R4
       47 CALL                             R5 1 0
       48 GETUPVAL                         R5 1
       49 GETTABLEKS                       R5 R5 K15 ["addStaticCustomTemplate"]
       51 GETIMPORT                        R6 K11 [require]
       53 GETIMPORT                        R7 K13 [script]
       55 GETTABLEKS                       R7 R7 K14 ["Parent"]
       57 GETTABLEKS                       R7 R7 K16 ["Variant"]
       59 CALL                             R6 1 -1
       60 CALL                             R5 -1 0
       61 GETUPVAL                         R5 2
       62 MOVE                             R6 R4
       63 MOVE                             R7 R3
       64 CALL                             R5 2 0
       65 GETUPVAL                         R5 3
       66 GETTABLEKS                       R6 R0 K17 ["publish"]
       68 DUPTABLE                         R7 K27 [{["type"] = "Ref", ["host"], ["templateId"], ["template"], ["params"], ["children"], ["mounted"] = False}]
       69 GETTABLEKS                       R8 R0 K3 ["gui"]
       71 SETTABLEKS                       R8 R7 K20 ["host"]
       73 GETUPVAL                         R8 4
       74 GETTABLEKS                       R8 R8 K28 ["getId"]
       76 MOVE                             R9 R3
       77 CALL                             R8 1 1
       78 SETTABLEKS                       R8 R7 K21 ["templateId"]
       80 SETTABLEKS                       R3 R7 K22 ["template"]
       82 DUPTABLE                         R8 K31 [{["name"] = "Skill", ["templateId"]}]
       83 GETUPVAL                         R9 4
       84 GETTABLEKS                       R9 R9 K28 ["getId"]
       86 MOVE                             R10 R2
       87 CALL                             R9 1 1
       88 SETTABLEKS                       R9 R8 K21 ["templateId"]
       90 SETTABLEKS                       R8 R7 K23 ["params"]
       92 NEWTABLE                         R8 0 0
       94 SETTABLEKS                       R8 R7 K24 ["children"]
       96 GETTABLEKS                       R8 R0 K3 ["gui"]
       98 CALL                             R5 3 1
       99 GETTABLEKS                       R6 R0 K17 ["publish"]
      101 MOVE                             R7 R5
      102 CALL                             R6 1 0
      103 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 GETIMPORT                        R1 K1 [game]
        5 LOADK                            R3 K2 ["Selection"]
        6 NAMECALL                         R1 R1 K3 ["GetService"]
        8 CALL                             R1 2 1
        9 GETIMPORT                        R2 K5 [script]
       11 GETTABLEKS                       R2 R2 K6 ["Parent"]
       13 GETTABLEKS                       R2 R2 K6 ["Parent"]
       15 GETIMPORT                        R3 K8 [require]
       17 GETTABLEKS                       R4 R2 K9 ["types"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K8 [require]
       22 GETTABLEKS                       R5 R2 K10 ["data"]
       24 GETTABLEKS                       R5 R5 K11 ["WorkQueue"]
       26 CALL                             R4 1 1
       27 GETIMPORT                        R5 K8 [require]
       29 GETTABLEKS                       R6 R2 K12 ["runtime"]
       31 GETTABLEKS                       R6 R6 K13 ["makeElement"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K8 [require]
       36 GETTABLEKS                       R7 R2 K12 ["runtime"]
       38 GETTABLEKS                       R7 R7 K14 ["update"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K8 [require]
       43 GETTABLEKS                       R8 R2 K15 ["monitor"]
       45 GETTABLEKS                       R8 R8 K16 ["TemplateRegistry"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K8 [require]
       50 GETTABLEKS                       R9 R2 K12 ["runtime"]
       52 GETTABLEKS                       R9 R9 K17 ["TemplateResolver"]
       54 CALL                             R8 1 1
       55 GETIMPORT                        R9 K8 [require]
       57 GETTABLEKS                       R10 R2 K15 ["monitor"]
       59 GETTABLEKS                       R10 R10 K18 ["updateTemplateFromAst"]
       61 CALL                             R9 1 1
       62 DUPCLOSURE                       R10 K19 [PROTO_2]
       63 CAPTURE                          VAL R4
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R0
       66 SETTABLEKS                       R10 R0 K20 ["new"]
       68 DUPCLOSURE                       R10 K21 [PROTO_5]
       69 CAPTURE                          VAL R1
       70 SETTABLEKS                       R10 R0 K22 ["watch"]
       72 DUPCLOSURE                       R10 K23 [PROTO_6]
       73 SETTABLEKS                       R10 R0 K24 ["dispose"]
       75 DUPCLOSURE                       R10 K25 [PROTO_7]
       76 CAPTURE                          VAL R1
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R9
       79 CAPTURE                          VAL R5
       80 CAPTURE                          VAL R7
       81 SETTABLEKS                       R10 R0 K26 ["onSelectionChange"]
       83 RETURN                           R0 1
