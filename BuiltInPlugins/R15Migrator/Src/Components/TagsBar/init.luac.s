PROTO_0:
        0 DUPTABLE                         R1 K2 [{"tags", "_Ref"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["tags"]
        5 DUPTABLE                         R2 K5 [{["Filters"] = }]
        6 SETTABLEKS                       R2 R1 K1 ["_Ref"]
        8 SETTABLEKS                       R1 R0 K6 ["state"]
       10 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R1 K2 [{"Label", "Data"}]
        1 GETIMPORT                        R2 K5 [string.format]
        3 LOADK                            R3 K6 ["%s %s"]
        4 GETUPVAL                         R4 0
        5 JUMPIFEQKS                       R0 K7 ["Assigned"] ; [+3]
        7 JUMPIFNOTEQKS                    R0 K8 ["Unassigned"] ; [+8]
        9 GETUPVAL                         R5 1
       10 LOADK                            R7 K9 ["ScriptPane"]
       11 MOVE                             R8 R0
       12 NAMECALL                         R5 R5 K10 ["getText"]
       14 CALL                             R5 3 1
       15 JUMP                             ; [+1]
       16 MOVE                             R5 R0
       17 CALL                             R2 3 1
       18 SETTABLEKS                       R2 R1 K0 ["Label"]
       20 DUPTABLE                         R2 K13 [{"RigType", "InstanceName"}]
       21 GETUPVAL                         R3 0
       22 SETTABLEKS                       R3 R2 K11 ["RigType"]
       24 SETTABLEKS                       R0 R2 K12 ["InstanceName"]
       26 SETTABLEKS                       R2 R1 K1 ["Data"]
       28 RETURN                           R1 1

PROTO_2:
        0 GETTABLE                         R4 R1 R2
        1 GETUPVAL                         R5 0
        2 MOVE                             R6 R4
        3 CALL                             R5 1 1
        4 GETIMPORT                        R6 K2 [table.sort]
        6 MOVE                             R7 R5
        7 CALL                             R6 1 0
        8 GETUPVAL                         R6 1
        9 MOVE                             R7 R0
       10 GETUPVAL                         R8 2
       11 MOVE                             R9 R5
       12 NEWCLOSURE                       R10 P0
       13 CAPTURE                          VAL R2
       14 CAPTURE                          VAL R3
       15 CALL                             R8 2 -1
       16 CALL                             R6 -1 0
       17 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R3 0
        3 MOVE                             R4 R2
        4 GETTABLEKS                       R5 R0 K0 ["rigFilters"]
        6 LOADK                            R6 K1 ["R6"]
        7 MOVE                             R7 R1
        8 CALL                             R3 4 0
        9 GETUPVAL                         R3 0
       10 MOVE                             R4 R2
       11 GETTABLEKS                       R5 R0 K0 ["rigFilters"]
       13 LOADK                            R6 K2 ["R15"]
       14 MOVE                             R7 R1
       15 CALL                             R3 4 0
       16 RETURN                           R2 1

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["Filters"]
        2 GETTABLEKS                       R3 R1 K1 ["_Ref"]
        4 GETTABLEKS                       R3 R3 K0 ["Filters"]
        6 JUMPIFEQ                         R2 R3 ; [+37]
        8 GETTABLEKS                       R3 R0 K0 ["Filters"]
       10 GETTABLEKS                       R4 R0 K2 ["Localization"]
       12 NEWTABLE                         R5 0 0
       14 GETUPVAL                         R6 0
       15 MOVE                             R7 R5
       16 GETTABLEKS                       R8 R3 K3 ["rigFilters"]
       18 LOADK                            R9 K4 ["R6"]
       19 MOVE                             R10 R4
       20 CALL                             R6 4 0
       21 GETUPVAL                         R6 0
       22 MOVE                             R7 R5
       23 GETTABLEKS                       R8 R3 K3 ["rigFilters"]
       25 LOADK                            R9 K5 ["R15"]
       26 MOVE                             R10 R4
       27 CALL                             R6 4 0
       28 MOVE                             R2 R5
       29 DUPTABLE                         R3 K7 [{"tags", "_Ref"}]
       30 SETTABLEKS                       R2 R3 K6 ["tags"]
       32 GETUPVAL                         R4 1
       33 GETTABLEKS                       R5 R1 K1 ["_Ref"]
       35 DUPTABLE                         R6 K8 [{"Filters"}]
       36 GETTABLEKS                       R7 R0 K0 ["Filters"]
       38 SETTABLEKS                       R7 R6 K0 ["Filters"]
       40 CALL                             R4 2 1
       41 SETTABLEKS                       R4 R3 K1 ["_Ref"]
       43 RETURN                           R3 1
       44 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K4 [{"LayoutOrder", "Tag", "OnClosed"}]
        5 SETTABLEKS                       R1 R4 K1 ["LayoutOrder"]
        7 SETTABLEKS                       R0 R4 K2 ["Tag"]
        9 GETUPVAL                         R5 2
       10 GETTABLEKS                       R5 R5 K5 ["OnFilterClosed"]
       12 SETTABLEKS                       R5 R4 K3 ["OnClosed"]
       14 CALL                             R2 2 -1
       15 RETURN                           R2 -1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R0 K1 ["props"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R4 R1 K2 ["tags"]
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          VAL R2
       11 CALL                             R3 2 1
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K3 ["createElement"]
       15 GETUPVAL                         R5 3
       16 DUPTABLE                         R6 K13 [{["LayoutOrder"], ["Size"], ["Layout"], ["HorizontalAlignment"], ["VerticalAlignment"], ["Spacing"] = 4, ["ClipsDescendants"] = True}]
       17 GETTABLEKS                       R7 R2 K4 ["LayoutOrder"]
       19 SETTABLEKS                       R7 R6 K4 ["LayoutOrder"]
       21 GETTABLEKS                       R7 R2 K5 ["Size"]
       23 SETTABLEKS                       R7 R6 K5 ["Size"]
       25 GETIMPORT                        R7 K17 [Enum.FillDirection.Horizontal]
       27 SETTABLEKS                       R7 R6 K6 ["Layout"]
       29 GETIMPORT                        R7 K19 [Enum.HorizontalAlignment.Left]
       31 SETTABLEKS                       R7 R6 K7 ["HorizontalAlignment"]
       33 GETIMPORT                        R7 K21 [Enum.VerticalAlignment.Center]
       35 SETTABLEKS                       R7 R6 K8 ["VerticalAlignment"]
       37 MOVE                             R7 R3
       38 CALL                             R4 3 -1
       39 RETURN                           R4 -1

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
       18 GETTABLEKS                       R3 R3 K8 ["RoactRodux"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["withContext"]
       32 GETTABLEKS                       R6 R3 K12 ["Dash"]
       34 GETTABLEKS                       R7 R6 K13 ["append"]
       36 GETTABLEKS                       R8 R6 K14 ["join"]
       38 GETTABLEKS                       R9 R6 K15 ["keys"]
       40 GETTABLEKS                       R10 R6 K16 ["map"]
       42 GETTABLEKS                       R11 R3 K17 ["UI"]
       44 GETTABLEKS                       R12 R11 K18 ["Pane"]
       46 GETTABLEKS                       R13 R0 K19 ["Src"]
       48 GETTABLEKS                       R13 R13 K20 ["Actions"]
       50 GETIMPORT                        R14 K5 [require]
       52 GETIMPORT                        R15 K1 [script]
       54 GETTABLEKS                       R15 R15 K21 ["TagComponent"]
       56 CALL                             R14 1 1
       57 GETIMPORT                        R15 K5 [require]
       59 GETTABLEKS                       R16 R0 K19 ["Src"]
       61 GETTABLEKS                       R16 R16 K22 ["Types"]
       63 CALL                             R15 1 1
       64 GETTABLEKS                       R16 R0 K19 ["Src"]
       66 GETTABLEKS                       R16 R16 K23 ["Util"]
       68 GETTABLEKS                       R17 R1 K24 ["PureComponent"]
       70 LOADK                            R19 K25 ["TagsBar"]
       71 NAMECALL                         R17 R17 K26 ["extend"]
       73 CALL                             R17 2 1
       74 DUPCLOSURE                       R18 K27 [PROTO_0]
       75 SETTABLEKS                       R18 R17 K28 ["init"]
       77 DUPCLOSURE                       R18 K29 [PROTO_2]
       78 CAPTURE                          VAL R9
       79 CAPTURE                          VAL R7
       80 CAPTURE                          VAL R10
       81 DUPCLOSURE                       R19 K30 [PROTO_3]
       82 CAPTURE                          VAL R18
       83 DUPCLOSURE                       R20 K31 [PROTO_4]
       84 CAPTURE                          VAL R18
       85 CAPTURE                          VAL R8
       86 SETTABLEKS                       R20 R17 K32 ["getDerivedStateFromProps"]
       88 DUPCLOSURE                       R20 K33 [PROTO_6]
       89 CAPTURE                          VAL R10
       90 CAPTURE                          VAL R1
       91 CAPTURE                          VAL R14
       92 CAPTURE                          VAL R12
       93 SETTABLEKS                       R20 R17 K34 ["render"]
       95 MOVE                             R20 R5
       96 DUPTABLE                         R21 K38 [{"Analytics", "Localization", "Stylizer"}]
       97 GETTABLEKS                       R22 R4 K35 ["Analytics"]
       99 SETTABLEKS                       R22 R21 K35 ["Analytics"]
      101 GETTABLEKS                       R22 R4 K36 ["Localization"]
      103 SETTABLEKS                       R22 R21 K36 ["Localization"]
      105 GETTABLEKS                       R22 R3 K39 ["Style"]
      107 GETTABLEKS                       R22 R22 K37 ["Stylizer"]
      109 SETTABLEKS                       R22 R21 K37 ["Stylizer"]
      111 CALL                             R20 1 1
      112 MOVE                             R21 R17
      113 CALL                             R20 1 1
      114 MOVE                             R17 R20
      115 RETURN                           R17 1
