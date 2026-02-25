PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R4 R5 K1 ["state"]
        6 GETTABLEKS                       R3 R4 K2 ["SelectedId"]
        8 GETTABLEKS                       R4 R0 K3 ["Id"]
       10 JUMPIFEQ                         R3 R4 ; [+10]
       12 GETUPVAL                         R3 0
       13 DUPTABLE                         R5 K4 [{"SelectedId"}]
       14 GETTABLEKS                       R6 R0 K3 ["Id"]
       16 SETTABLEKS                       R6 R5 K2 ["SelectedId"]
       18 NAMECALL                         R3 R3 K5 ["setState"]
       20 CALL                             R3 2 0
       21 GETTABLEKS                       R3 R2 K6 ["OnChanged"]
       23 JUMPIFNOT                        R3 ; [+5]
       24 GETTABLEKS                       R3 R2 K6 ["OnChanged"]
       26 MOVE                             R4 R0
       27 MOVE                             R5 R1
       28 CALL                             R3 2 0
       29 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R1 K1 [{"SelectedId"}]
        1 GETTABLEKS                       R4 R0 K3 ["props"]
        3 GETTABLEKS                       R3 R4 K0 ["SelectedId"]
        5 ORK                              R2 R3 K2 ["Unassigned"]
        6 SETTABLEKS                       R2 R1 K0 ["SelectedId"]
        8 SETTABLEKS                       R1 R0 K4 ["state"]
       10 NEWCLOSURE                       R1 P0
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R1 R0 K5 ["onItemActivated"]
       14 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R2 K1 [{"SelectedId"}]
        1 GETTABLEKS                       R3 R0 K2 ["Value"]
        3 SETTABLEKS                       R3 R2 K0 ["SelectedId"]
        5 RETURN                           R2 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R0 K1 ["props"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K2 ["createElement"]
        7 GETUPVAL                         R4 1
        8 DUPTABLE                         R5 K8 [{"Size", "Items", "OnItemActivated", "SelectedId", "Enabled"}]
        9 GETIMPORT                        R6 K11 [UDim2.fromScale]
       11 LOADN                            R7 1
       12 LOADN                            R8 1
       13 CALL                             R6 2 1
       14 SETTABLEKS                       R6 R5 K3 ["Size"]
       16 GETTABLEKS                       R7 R2 K12 ["Schema"]
       18 GETTABLEKS                       R6 R7 K13 ["Options"]
       20 SETTABLEKS                       R6 R5 K4 ["Items"]
       22 GETTABLEKS                       R6 R0 K14 ["onItemActivated"]
       24 SETTABLEKS                       R6 R5 K5 ["OnItemActivated"]
       26 GETTABLEKS                       R6 R1 K6 ["SelectedId"]
       28 SETTABLEKS                       R6 R5 K6 ["SelectedId"]
       30 GETTABLEKS                       R7 R2 K15 ["Disabled"]
       32 NOT                              R6 R7
       33 SETTABLEKS                       R6 R5 K7 ["Enabled"]
       35 NEWTABLE                         R6 0 0
       37 CALL                             R3 3 -1
       38 RETURN                           R3 -1

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
       18 GETTABLEKS                       R3 R4 K8 ["RoactRodux"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["withContext"]
       32 GETTABLEKS                       R6 R3 K12 ["Dash"]
       34 GETTABLEKS                       R7 R6 K13 ["join"]
       36 GETTABLEKS                       R8 R3 K14 ["UI"]
       38 GETTABLEKS                       R9 R8 K15 ["SelectInput"]
       40 GETTABLEKS                       R11 R0 K16 ["Src"]
       42 GETTABLEKS                       R10 R11 K17 ["Actions"]
       44 GETTABLEKS                       R12 R0 K16 ["Src"]
       46 GETTABLEKS                       R11 R12 K18 ["Components"]
       48 GETIMPORT                        R12 K5 [require]
       50 GETTABLEKS                       R14 R0 K16 ["Src"]
       52 GETTABLEKS                       R13 R14 K19 ["Types"]
       54 CALL                             R12 1 1
       55 GETTABLEKS                       R14 R0 K16 ["Src"]
       57 GETTABLEKS                       R13 R14 K20 ["Util"]
       59 GETTABLEKS                       R14 R1 K21 ["PureComponent"]
       61 LOADK                            R16 K22 ["DropdownCell"]
       62 NAMECALL                         R14 R14 K23 ["extend"]
       64 CALL                             R14 2 1
       65 DUPCLOSURE                       R15 K24 [PROTO_1]
       66 SETTABLEKS                       R15 R14 K25 ["init"]
       68 DUPCLOSURE                       R15 K26 [PROTO_2]
       69 SETTABLEKS                       R15 R14 K27 ["getDerivedStateFromProps"]
       71 DUPCLOSURE                       R15 K28 [PROTO_3]
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R9
       74 SETTABLEKS                       R15 R14 K29 ["render"]
       76 MOVE                             R15 R5
       77 DUPTABLE                         R16 K33 [{"Analytics", "Localization", "Stylizer"}]
       78 GETTABLEKS                       R17 R4 K30 ["Analytics"]
       80 SETTABLEKS                       R17 R16 K30 ["Analytics"]
       82 GETTABLEKS                       R17 R4 K31 ["Localization"]
       84 SETTABLEKS                       R17 R16 K31 ["Localization"]
       86 GETTABLEKS                       R18 R3 K34 ["Style"]
       88 GETTABLEKS                       R17 R18 K32 ["Stylizer"]
       90 SETTABLEKS                       R17 R16 K32 ["Stylizer"]
       92 CALL                             R15 1 1
       93 MOVE                             R16 R14
       94 CALL                             R15 1 1
       95 MOVE                             R14 R15
       96 RETURN                           R14 1
