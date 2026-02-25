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
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R4 R5 K1 ["Filters"]
        6 GETUPVAL                         R6 1
        7 GETTABLEKS                       R5 R6 K2 ["OnFilterSelected"]
        9 CALL                             R1 4 1
       10 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
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
       20 DUPTABLE                         R6 K6 [{"ShowSeparator"}]
       21 LOADB                            R7 1
       22 SETTABLEKS                       R7 R6 K5 ["ShowSeparator"]
       24 GETUPVAL                         R7 3
       25 LOADK                            R8 K7 ["R15"]
       26 LOADK                            R9 K8 ["Unassigned"]
       27 GETTABLEKS                       R10 R0 K9 ["Filters"]
       29 GETTABLEKS                       R11 R0 K10 ["OnFilterSelected"]
       31 LOADK                            R13 K11 ["R15 "]
       32 LOADK                            R16 K12 ["ScriptPane"]
       33 LOADK                            R17 K8 ["Unassigned"]
       34 NAMECALL                         R14 R1 K13 ["getText"]
       36 CALL                             R14 3 1
       37 CONCAT                           R12 R13 R14
       38 CALL                             R7 5 1
       39 GETUPVAL                         R8 3
       40 LOADK                            R9 K7 ["R15"]
       41 LOADK                            R10 K14 ["Assigned"]
       42 GETTABLEKS                       R11 R0 K9 ["Filters"]
       44 GETTABLEKS                       R12 R0 K10 ["OnFilterSelected"]
       46 LOADK                            R14 K11 ["R15 "]
       47 LOADK                            R17 K12 ["ScriptPane"]
       48 LOADK                            R18 K14 ["Assigned"]
       49 NAMECALL                         R15 R1 K13 ["getText"]
       51 CALL                             R15 3 1
       52 CONCAT                           R13 R14 R15
       53 CALL                             R8 5 1
       54 SETLIST                          R5 R6 3 [1]
       56 CALL                             R3 2 1
       57 GETUPVAL                         R4 4
       58 MOVE                             R5 R2
       59 MOVE                             R6 R3
       60 CALL                             R4 2 0
       61 RETURN                           R0 0

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
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K2 ["createElement"]
        7 GETUPVAL                         R4 1
        8 DUPTABLE                         R5 K7 [{"LayoutOrder", "Size", "LeftIcon", "OnClick"}]
        9 GETTABLEKS                       R6 R2 K3 ["LayoutOrder"]
       11 SETTABLEKS                       R6 R5 K3 ["LayoutOrder"]
       13 GETTABLEKS                       R6 R2 K4 ["Size"]
       15 SETTABLEKS                       R6 R5 K4 ["Size"]
       17 LOADK                            R6 K8 ["rbxasset://textures/StudioSharedUI/Filter.png"]
       18 SETTABLEKS                       R6 R5 K5 ["LeftIcon"]
       20 GETTABLEKS                       R6 R0 K9 ["showMenu"]
       22 SETTABLEKS                       R6 R5 K6 ["OnClick"]
       24 CALL                             R3 2 -1
       25 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
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
       39 GETTABLEKS                       R13 R0 K18 ["Src"]
       41 GETTABLEKS                       R12 R13 K19 ["Actions"]
       43 GETTABLEKS                       R14 R0 K18 ["Src"]
       45 GETTABLEKS                       R13 R14 K20 ["Components"]
       47 GETTABLEKS                       R15 R0 K18 ["Src"]
       49 GETTABLEKS                       R14 R15 K21 ["Util"]
       51 GETIMPORT                        R15 K5 [require]
       53 GETTABLEKS                       R16 R14 K22 ["ScriptReplacement"]
       55 CALL                             R15 1 1
       56 GETIMPORT                        R16 K5 [require]
       58 GETTABLEKS                       R18 R0 K18 ["Src"]
       60 GETTABLEKS                       R17 R18 K23 ["Types"]
       62 CALL                             R16 1 1
       63 GETTABLEKS                       R18 R0 K18 ["Src"]
       65 GETTABLEKS                       R17 R18 K21 ["Util"]
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
       92 GETTABLEKS                       R23 R2 K36 ["Style"]
       94 GETTABLEKS                       R22 R23 K33 ["Stylizer"]
       96 SETTABLEKS                       R22 R21 K33 ["Stylizer"]
       98 GETTABLEKS                       R22 R3 K34 ["Plugin"]
      100 SETTABLEKS                       R22 R21 K34 ["Plugin"]
      102 CALL                             R20 1 1
      103 MOVE                             R21 R18
      104 CALL                             R20 1 1
      105 MOVE                             R18 R20
      106 RETURN                           R18 1
