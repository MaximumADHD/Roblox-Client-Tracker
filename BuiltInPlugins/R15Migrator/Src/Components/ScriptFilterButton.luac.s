PROTO_0:
        0 DUPTABLE                         R5 K4 [{"Text", "Checked", "Data", "OnItemClicked"}]
        1 MOVE                             R6 R4
        2 JUMPIF                           R6 ; [+4]
        3 MOVE                             R7 R0
        4 LOADK                            R8 K5 [" "]
        5 MOVE                             R9 R1
        6 CONCAT                           R6 R7 R9
        7 SETTABLEKS                       R6 R5 K0 ["Text"]
        9 GETTABLE                         R6 R2 R0
       10 JUMPIFNOT                        R6 ; [+2]
       11 GETTABLE                         R7 R2 R0
       12 GETTABLE                         R6 R7 R1
       13 SETTABLEKS                       R6 R5 K1 ["Checked"]
       15 DUPTABLE                         R6 K8 [{"RigType", "InstanceName"}]
       16 SETTABLEKS                       R0 R6 K6 ["RigType"]
       18 SETTABLEKS                       R1 R6 K7 ["InstanceName"]
       20 SETTABLEKS                       R6 R5 K2 ["Data"]
       22 SETTABLEKS                       R3 R5 K3 ["OnItemClicked"]
       24 RETURN                           R5 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["R6"]
        2 MOVE                             R3 R0
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K1 ["Filters"]
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R5 R5 K2 ["OnFilterSelected"]
        9 CALL                             R1 4 1
       10 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Localization"]
        5 GETTABLEKS                       R2 R0 K2 ["Plugin"]
        7 NAMECALL                         R2 R2 K3 ["get"]
        9 CALL                             R2 1 1
       10 GETUPVAL                         R3 1
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R5 R0 K4 ["InstanceNames"]
       14 NEWCLOSURE                       R6 P0
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          VAL R0
       17 CALL                             R4 2 1
       18 NEWTABLE                         R5 0 3
       20 DUPTABLE                         R6 K7 [{["ShowSeparator"] = True}]
       21 GETTABLEKS                       R8 R0 K8 ["Filters"]
       23 GETTABLEKS                       R9 R0 K9 ["OnFilterSelected"]
       25 LOADK                            R11 K10 ["R15 "]
       26 LOADK                            R14 K11 ["ScriptPane"]
       27 LOADK                            R15 K12 ["Unassigned"]
       28 NAMECALL                         R12 R1 K13 ["getText"]
       30 CALL                             R12 3 1
       31 CONCAT                           R10 R11 R12
       32 DUPTABLE                         R7 K18 [{"Text", "Checked", "Data", "OnItemClicked"}]
       33 ORK                              R11 R10 K19 ["R15 Unassigned"]
       34 SETTABLEKS                       R11 R7 K14 ["Text"]
       36 GETTABLEKS                       R11 R8 K20 ["R15"]
       38 JUMPIFNOT                        R11 ; [+4]
       39 GETTABLEKS                       R12 R8 K20 ["R15"]
       41 GETTABLEKS                       R11 R12 K12 ["Unassigned"]
       43 SETTABLEKS                       R11 R7 K15 ["Checked"]
       45 DUPTABLE                         R11 K23 [{["RigType"] = "R15", ["InstanceName"] = "Unassigned"}]
       46 SETTABLEKS                       R11 R7 K16 ["Data"]
       48 SETTABLEKS                       R9 R7 K17 ["OnItemClicked"]
       50 GETTABLEKS                       R9 R0 K8 ["Filters"]
       52 GETTABLEKS                       R10 R0 K9 ["OnFilterSelected"]
       54 LOADK                            R12 K10 ["R15 "]
       55 LOADK                            R15 K11 ["ScriptPane"]
       56 LOADK                            R16 K24 ["Assigned"]
       57 NAMECALL                         R13 R1 K13 ["getText"]
       59 CALL                             R13 3 1
       60 CONCAT                           R11 R12 R13
       61 DUPTABLE                         R8 K18 [{"Text", "Checked", "Data", "OnItemClicked"}]
       62 ORK                              R12 R11 K25 ["R15 Assigned"]
       63 SETTABLEKS                       R12 R8 K14 ["Text"]
       65 GETTABLEKS                       R12 R9 K20 ["R15"]
       67 JUMPIFNOT                        R12 ; [+4]
       68 GETTABLEKS                       R13 R9 K20 ["R15"]
       70 GETTABLEKS                       R12 R13 K24 ["Assigned"]
       72 SETTABLEKS                       R12 R8 K15 ["Checked"]
       74 DUPTABLE                         R12 K26 [{["RigType"] = "R15", ["InstanceName"] = "Assigned"}]
       75 SETTABLEKS                       R12 R8 K16 ["Data"]
       77 SETTABLEKS                       R10 R8 K17 ["OnItemClicked"]
       79 SETLIST                          R5 R6 3 [1]
       81 CALL                             R3 2 1
       82 GETUPVAL                         R4 4
       83 MOVE                             R5 R2
       84 MOVE                             R6 R3
       85 CALL                             R4 2 0
       86 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 SETTABLEKS                       R1 R0 K0 ["showMenu"]
        8 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R0 K1 ["props"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["createElement"]
        7 GETUPVAL                         R4 1
        8 DUPTABLE                         R5 K8 [{["LayoutOrder"], ["Size"], ["LeftIcon"] = "rbxasset://textures/StudioSharedUI/Filter.png", ["OnClick"]}]
        9 GETTABLEKS                       R6 R2 K3 ["LayoutOrder"]
       11 SETTABLEKS                       R6 R5 K3 ["LayoutOrder"]
       13 GETTABLEKS                       R6 R2 K4 ["Size"]
       15 SETTABLEKS                       R6 R5 K4 ["Size"]
       17 GETTABLEKS                       R6 R0 K9 ["showMenu"]
       19 SETTABLEKS                       R6 R5 K7 ["OnClick"]
       21 CALL                             R3 2 -1
       22 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["withContext"]
       25 GETTABLEKS                       R5 R2 K11 ["Dash"]
       27 GETTABLEKS                       R6 R5 K12 ["append"]
       29 GETTABLEKS                       R7 R5 K13 ["join"]
       31 GETTABLEKS                       R8 R5 K14 ["map"]
       33 GETTABLEKS                       R9 R2 K15 ["UI"]
       35 GETTABLEKS                       R10 R9 K16 ["IconButton"]
       37 GETTABLEKS                       R11 R9 K17 ["showContextMenu"]
       39 GETTABLEKS                       R12 R0 K18 ["Src"]
       41 GETTABLEKS                       R12 R12 K19 ["Actions"]
       43 GETTABLEKS                       R13 R0 K18 ["Src"]
       45 GETTABLEKS                       R13 R13 K20 ["Components"]
       47 GETTABLEKS                       R14 R0 K18 ["Src"]
       49 GETTABLEKS                       R14 R14 K21 ["Util"]
       51 GETIMPORT                        R15 K5 [require]
       53 GETTABLEKS                       R16 R14 K22 ["ScriptReplacement"]
       55 CALL                             R15 1 1
       56 GETIMPORT                        R16 K5 [require]
       58 GETTABLEKS                       R17 R0 K18 ["Src"]
       60 GETTABLEKS                       R17 R17 K23 ["Types"]
       62 CALL                             R16 1 1
       63 GETTABLEKS                       R17 R0 K18 ["Src"]
       65 GETTABLEKS                       R17 R17 K21 ["Util"]
       67 GETTABLEKS                       R18 R1 K24 ["PureComponent"]
       69 LOADK                            R20 K25 ["ScriptFilterButton"]
       70 NAMECALL                         R18 R18 K26 ["extend"]
       72 CALL                             R18 2 1
       73 DUPCLOSURE                       R19 K27 [PROTO_0]
       74 DUPCLOSURE                       R20 K28 [PROTO_3]
       75 CAPTURE                          VAL R6
       76 CAPTURE                          VAL R8
       77 CAPTURE                          VAL R19
       78 CAPTURE                          VAL R11
       79 SETTABLEKS                       R20 R18 K29 ["init"]
       81 DUPCLOSURE                       R20 K30 [PROTO_4]
       82 CAPTURE                          VAL R1
       83 CAPTURE                          VAL R10
       84 SETTABLEKS                       R20 R18 K31 ["render"]
       86 MOVE                             R20 R4
       87 DUPTABLE                         R21 K35 [{"Localization", "Stylizer", "Plugin"}]
       88 GETTABLEKS                       R22 R3 K32 ["Localization"]
       90 SETTABLEKS                       R22 R21 K32 ["Localization"]
       92 GETTABLEKS                       R22 R2 K36 ["Style"]
       94 GETTABLEKS                       R22 R22 K33 ["Stylizer"]
       96 SETTABLEKS                       R22 R21 K33 ["Stylizer"]
       98 GETTABLEKS                       R22 R3 K34 ["Plugin"]
      100 SETTABLEKS                       R22 R21 K34 ["Plugin"]
      102 CALL                             R20 1 1
      103 MOVE                             R21 R18
      104 CALL                             R20 1 1
      105 MOVE                             R18 R20
      106 RETURN                           R18 1
