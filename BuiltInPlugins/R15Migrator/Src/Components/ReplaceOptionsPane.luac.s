PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R7 1
        2 GETTABLEKS                       R6 R7 K0 ["state"]
        4 GETTABLEKS                       R5 R6 K1 ["rules"]
        6 CALL                             R4 1 1
        7 DUPTABLE                         R5 K5 [{"FromText", "ToText", "Enabled"}]
        8 SETTABLEKS                       R1 R5 K2 ["FromText"]
       10 SETTABLEKS                       R2 R5 K3 ["ToText"]
       12 SETTABLEKS                       R3 R5 K4 ["Enabled"]
       14 SETTABLE                         R5 R4 R0
       15 GETUPVAL                         R7 1
       16 GETTABLEKS                       R6 R7 K6 ["props"]
       18 GETTABLEKS                       R5 R6 K7 ["Analytics"]
       20 LOADK                            R7 K8 ["onScriptRulesUpdate"]
       21 NAMECALL                         R5 R5 K9 ["getHandler"]
       23 CALL                             R5 2 1
       24 MOVE                             R6 R1
       25 MOVE                             R7 R2
       26 MOVE                             R8 R3
       27 CALL                             R5 3 0
       28 GETUPVAL                         R5 1
       29 DUPTABLE                         R7 K10 [{"rules"}]
       30 SETTABLEKS                       R4 R7 K1 ["rules"]
       32 NAMECALL                         R5 R5 K11 ["setState"]
       34 CALL                             R5 2 0
       35 GETUPVAL                         R7 1
       36 GETTABLEKS                       R6 R7 K6 ["props"]
       38 GETTABLEKS                       R5 R6 K12 ["ReplaceRules"]
       40 GETUPVAL                         R6 0
       41 MOVE                             R7 R4
       42 CALL                             R6 1 -1
       43 CALL                             R5 -1 0
       44 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R4 K8 [{"Key", "FromText", "ToText", "Enabled", "Selectable", "UpdateReplaceRules", "Position", "Size"}]
        1 GETTABLEKS                       R5 R0 K0 ["Key"]
        3 SETTABLEKS                       R5 R4 K0 ["Key"]
        5 GETTABLEKS                       R5 R0 K1 ["FromText"]
        7 SETTABLEKS                       R5 R4 K1 ["FromText"]
        9 GETTABLEKS                       R5 R0 K2 ["ToText"]
       11 SETTABLEKS                       R5 R4 K2 ["ToText"]
       13 GETTABLEKS                       R5 R0 K3 ["Enabled"]
       15 SETTABLEKS                       R5 R4 K3 ["Enabled"]
       17 GETTABLEKS                       R5 R0 K4 ["Selectable"]
       19 SETTABLEKS                       R5 R4 K4 ["Selectable"]
       21 GETUPVAL                         R6 0
       22 GETTABLEKS                       R5 R6 K9 ["onRuleUpdated"]
       24 SETTABLEKS                       R5 R4 K5 ["UpdateReplaceRules"]
       26 SETTABLEKS                       R2 R4 K6 ["Position"]
       28 SETTABLEKS                       R3 R4 K7 ["Size"]
       30 RETURN                           R4 1

PROTO_2:
        0 DUPTABLE                         R2 K1 [{"rules"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R4 R1 K2 ["replaceRules"]
        4 CALL                             R3 1 1
        5 SETTABLEKS                       R3 R2 K0 ["rules"]
        7 SETTABLEKS                       R2 R0 K3 ["state"]
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R2 R0 K4 ["onRuleUpdated"]
       14 NEWCLOSURE                       R2 P1
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R2 R0 K5 ["getRowProps"]
       18 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R4 R2 K3 ["rules"]
        8 NEWTABLE                         R5 0 0
       10 MOVE                             R6 R4
       11 LOADNIL                          R7
       12 LOADNIL                          R8
       13 FORGPREP                         R6
       14 DUPTABLE                         R13 K9 [{"Key", "FromText", "ToText", "Enabled", "Selectable"}]
       15 SETTABLEKS                       R9 R13 K4 ["Key"]
       17 GETTABLEKS                       R14 R10 K5 ["FromText"]
       19 SETTABLEKS                       R14 R13 K5 ["FromText"]
       21 GETTABLEKS                       R14 R10 K6 ["ToText"]
       23 SETTABLEKS                       R14 R13 K6 ["ToText"]
       25 GETTABLEKS                       R14 R10 K7 ["Enabled"]
       27 SETTABLEKS                       R14 R13 K7 ["Enabled"]
       29 LOADB                            R14 1
       30 SETTABLEKS                       R14 R13 K8 ["Selectable"]
       32 FASTCALL2                        TABLE_INSERT R5 R13 ; [+4]
       34 MOVE                             R12 R5
       35 GETIMPORT                        R11 K12 [table.insert]
       37 CALL                             R11 2 0
       38 FORGLOOP                         R6 2 ; [-25]
       40 GETUPVAL                         R7 0
       41 GETTABLEKS                       R6 R7 K13 ["createElement"]
       43 GETUPVAL                         R7 1
       44 DUPTABLE                         R8 K19 [{"Rows", "RowComponent", "RowHeight", "GetRowProps", "Size"}]
       45 SETTABLEKS                       R5 R8 K14 ["Rows"]
       47 GETUPVAL                         R9 2
       48 SETTABLEKS                       R9 R8 K15 ["RowComponent"]
       50 GETTABLEKS                       R9 R3 K16 ["RowHeight"]
       52 SETTABLEKS                       R9 R8 K16 ["RowHeight"]
       54 GETTABLEKS                       R9 R0 K20 ["getRowProps"]
       56 SETTABLEKS                       R9 R8 K17 ["GetRowProps"]
       58 GETIMPORT                        R9 K23 [UDim2.new]
       60 LOADN                            R10 1
       61 LOADN                            R11 0
       62 LOADN                            R12 0
       63 GETTABLEKS                       R13 R3 K24 ["PaneHeight"]
       65 CALL                             R9 4 1
       66 SETTABLEKS                       R9 R8 K18 ["Size"]
       68 CALL                             R6 2 -1
       69 RETURN                           R6 -1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["paneSizeChanged"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["paneSizeChanged"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["paneSizeChanged"]
       11 GETTABLEKS                       R1 R0 K2 ["listSizeChanged"]
       13 JUMPIFNOT                        R1 ; [+8]
       14 GETTABLEKS                       R1 R0 K2 ["listSizeChanged"]
       16 NAMECALL                         R1 R1 K1 ["Disconnect"]
       18 CALL                             R1 1 0
       19 LOADNIL                          R1
       20 SETTABLEKS                       R1 R0 K2 ["listSizeChanged"]
       22 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R2 K1 [{"replaceRules"}]
        1 GETTABLEKS                       R4 R0 K2 ["ScriptConversion"]
        3 GETTABLEKS                       R3 R4 K0 ["replaceRules"]
        5 SETTABLEKS                       R3 R2 K0 ["replaceRules"]
        7 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_7:
        0 DUPTABLE                         R1 K1 [{"ReplaceRules"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["ReplaceRules"]
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Roact"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["RoactRodux"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R1 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R1 K11 ["UI"]
       32 GETTABLEKS                       R6 R5 K12 ["List"]
       34 GETTABLEKS                       R7 R1 K13 ["Util"]
       36 GETTABLEKS                       R8 R7 K14 ["deepCopy"]
       38 GETIMPORT                        R9 K5 [require]
       40 GETTABLEKS                       R12 R0 K15 ["Src"]
       42 GETTABLEKS                       R11 R12 K16 ["Components"]
       44 GETTABLEKS                       R10 R11 K17 ["ReplaceOptionItem"]
       46 CALL                             R9 1 1
       47 GETIMPORT                        R10 K5 [require]
       49 GETTABLEKS                       R13 R0 K15 ["Src"]
       51 GETTABLEKS                       R12 R13 K18 ["Thunks"]
       53 GETTABLEKS                       R11 R12 K19 ["ReplaceRules"]
       55 CALL                             R10 1 1
       56 GETTABLEKS                       R11 R2 K20 ["PureComponent"]
       58 LOADK                            R13 K21 ["ReplaceOptionsPane"]
       59 NAMECALL                         R11 R11 K22 ["extend"]
       61 CALL                             R11 2 1
       62 DUPCLOSURE                       R12 K23 [PROTO_2]
       63 CAPTURE                          VAL R8
       64 SETTABLEKS                       R12 R11 K24 ["init"]
       66 DUPCLOSURE                       R12 K25 [PROTO_3]
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R9
       70 SETTABLEKS                       R12 R11 K26 ["render"]
       72 DUPCLOSURE                       R12 K27 [PROTO_4]
       73 SETTABLEKS                       R12 R11 K28 ["willUnmount"]
       75 GETTABLEKS                       R12 R4 K29 ["withContext"]
       77 DUPTABLE                         R13 K32 [{"Stylizer", "Analytics"}]
       78 GETTABLEKS                       R14 R4 K30 ["Stylizer"]
       80 SETTABLEKS                       R14 R13 K30 ["Stylizer"]
       82 GETTABLEKS                       R14 R4 K31 ["Analytics"]
       84 SETTABLEKS                       R14 R13 K31 ["Analytics"]
       86 CALL                             R12 1 1
       87 MOVE                             R13 R11
       88 CALL                             R12 1 1
       89 MOVE                             R11 R12
       90 DUPCLOSURE                       R12 K33 [PROTO_5]
       91 DUPCLOSURE                       R13 K34 [PROTO_7]
       92 CAPTURE                          VAL R10
       93 GETTABLEKS                       R14 R3 K35 ["connect"]
       95 MOVE                             R15 R12
       96 MOVE                             R16 R13
       97 CALL                             R14 2 1
       98 MOVE                             R15 R11
       99 CALL                             R14 1 -1
      100 RETURN                           R14 -1
