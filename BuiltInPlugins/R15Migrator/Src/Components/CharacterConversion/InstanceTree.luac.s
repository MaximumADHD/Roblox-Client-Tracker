PROTO_0:
        0 LOADK                            R3 K0 ["Accoutrement"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+2]
        5 LOADB                            R1 1
        6 RETURN                           R1 1
        7 LOADK                            R3 K2 ["BasePart"]
        8 NAMECALL                         R1 R0 K1 ["IsA"]
       10 CALL                             R1 2 1
       11 JUMPIFNOT                        R1 ; [+2]
       12 LOADB                            R1 1
       13 RETURN                           R1 1
       14 LOADB                            R1 0
       15 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R2 0 0
        2 NAMECALL                         R3 R0 K0 ["GetChildren"]
        4 CALL                             R3 1 3
        5 FORGPREP                         R3
        6 MOVE                             R8 R1
        7 MOVE                             R9 R7
        8 CALL                             R8 1 1
        9 JUMPIFNOT                        R8 ; [+7]
       10 LENGTH                           R9 R2
       11 ADDK                             R8 R9 K1 [1]
       12 GETUPVAL                         R9 0
       13 MOVE                             R10 R7
       14 MOVE                             R11 R1
       15 CALL                             R9 2 1
       16 SETTABLE                         R9 R2 R8
       17 FORGLOOP                         R3 2 ; [-12]
       19 NAMECALL                         R3 R0 K2 ["Clone"]
       21 CALL                             R3 1 1
       22 NAMECALL                         R4 R3 K3 ["ClearAllChildren"]
       24 CALL                             R4 1 0
       25 MOVE                             R4 R2
       26 LOADNIL                          R5
       27 LOADNIL                          R6
       28 FORGPREP                         R4
       29 SETTABLEKS                       R3 R8 K4 ["Parent"]
       31 FORGLOOP                         R4 2 ; [-3]
       33 RETURN                           R3 1

PROTO_2:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 GETUPVAL                         R1 0
        4 NAMECALL                         R3 R0 K0 ["GetChildren"]
        6 CALL                             R3 1 1
        7 GETTABLEN                        R2 R3 1
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R3 R4 K1 ["isValidDisplayInstance"]
       11 CALL                             R1 2 1
       12 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["state"]
        3 GETTABLEKS                       R1 R2 K1 ["Selection"]
        5 MOVE                             R2 R1
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 FORGPREP                         R2
        9 GETTABLE                         R7 R0 R5
       10 JUMPIFNOT                        R7 ; [+3]
       11 JUMPIFNOT                        R6 ; [+2]
       12 LOADB                            R7 0
       13 SETTABLE                         R7 R0 R5
       14 FORGLOOP                         R2 2 ; [-6]
       16 GETUPVAL                         R2 0
       17 DUPTABLE                         R4 K2 [{"Selection"}]
       18 SETTABLEKS                       R0 R4 K1 ["Selection"]
       20 NAMECALL                         R2 R2 K3 ["setState"]
       22 CALL                             R2 2 0
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R3 R4 K4 ["props"]
       26 GETTABLEKS                       R2 R3 K5 ["OnSelectionChange"]
       28 JUMPIFNOT                        R2 ; [+7]
       29 GETUPVAL                         R4 0
       30 GETTABLEKS                       R3 R4 K4 ["props"]
       32 GETTABLEKS                       R2 R3 K5 ["OnSelectionChange"]
       34 MOVE                             R3 R0
       35 CALL                             R2 1 0
       36 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"Expansion"}]
        2 GETUPVAL                         R6 1
        3 GETTABLEKS                       R5 R6 K2 ["Dictionary"]
        5 GETTABLEKS                       R4 R5 K3 ["join"]
        7 GETUPVAL                         R7 0
        8 GETTABLEKS                       R6 R7 K4 ["state"]
       10 GETTABLEKS                       R5 R6 K0 ["Expansion"]
       12 MOVE                             R6 R0
       13 CALL                             R4 2 1
       14 SETTABLEKS                       R4 R3 K0 ["Expansion"]
       16 NAMECALL                         R1 R1 K5 ["setState"]
       18 CALL                             R1 2 0
       19 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["getInstanceTreeRoot"]
        2 GETTABLEKS                       R3 R0 K1 ["props"]
        4 GETTABLEKS                       R2 R3 K2 ["Instance"]
        6 CALL                             R1 1 1
        7 SETTABLEKS                       R1 R0 K3 ["instanceTreeRoot"]
        9 DUPTABLE                         R1 K6 [{"Expansion", "Selection"}]
       10 NEWTABLE                         R2 1 0
       12 GETTABLEKS                       R3 R0 K3 ["instanceTreeRoot"]
       14 LOADB                            R4 1
       15 SETTABLE                         R4 R2 R3
       16 SETTABLEKS                       R2 R1 K4 ["Expansion"]
       18 NEWTABLE                         R2 0 0
       20 SETTABLEKS                       R2 R1 K5 ["Selection"]
       22 SETTABLEKS                       R1 R0 K7 ["state"]
       24 NEWCLOSURE                       R1 P0
       25 CAPTURE                          VAL R0
       26 SETTABLEKS                       R1 R0 K8 ["onSelectionChanged"]
       28 NEWCLOSURE                       R1 P1
       29 CAPTURE                          VAL R0
       30 CAPTURE                          UPVAL U0
       31 SETTABLEKS                       R1 R0 K9 ["onExpansionChanged"]
       33 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K2 ["createElement"]
        7 GETUPVAL                         R4 1
        8 DUPTABLE                         R5 K11 [{"Size", "LayoutOrder", "Instances", "Selection", "Expansion", "OnSelectionChange", "OnExpansionChange", "Style"}]
        9 GETIMPORT                        R6 K14 [UDim2.fromScale]
       11 LOADN                            R7 1
       12 LOADN                            R8 1
       13 CALL                             R6 2 1
       14 SETTABLEKS                       R6 R5 K3 ["Size"]
       16 GETTABLEKS                       R7 R0 K0 ["props"]
       18 GETTABLEKS                       R6 R7 K4 ["LayoutOrder"]
       20 SETTABLEKS                       R6 R5 K4 ["LayoutOrder"]
       22 NEWTABLE                         R6 0 1
       24 GETTABLEKS                       R7 R0 K15 ["instanceTreeRoot"]
       26 SETLIST                          R6 R7 1 [1]
       28 SETTABLEKS                       R6 R5 K5 ["Instances"]
       30 GETTABLEKS                       R7 R0 K16 ["state"]
       32 GETTABLEKS                       R6 R7 K6 ["Selection"]
       34 SETTABLEKS                       R6 R5 K6 ["Selection"]
       36 GETTABLEKS                       R7 R0 K16 ["state"]
       38 GETTABLEKS                       R6 R7 K7 ["Expansion"]
       40 SETTABLEKS                       R6 R5 K7 ["Expansion"]
       42 GETTABLEKS                       R6 R0 K17 ["onSelectionChanged"]
       44 SETTABLEKS                       R6 R5 K8 ["OnSelectionChange"]
       46 GETTABLEKS                       R6 R0 K18 ["onExpansionChanged"]
       48 SETTABLEKS                       R6 R5 K9 ["OnExpansionChange"]
       50 GETTABLEKS                       R6 R2 K19 ["CompactNoBorder"]
       52 SETTABLEKS                       R6 R5 K10 ["Style"]
       54 CALL                             R3 2 -1
       55 RETURN                           R3 -1

PROTO_7:
        0 GETTABLEKS                       R2 R1 K0 ["Instance"]
        2 GETTABLEKS                       R4 R0 K1 ["props"]
        4 GETTABLEKS                       R3 R4 K0 ["Instance"]
        6 JUMPIFEQ                         R2 R3 ; [+27]
        8 GETTABLEKS                       R2 R0 K2 ["getInstanceTreeRoot"]
       10 GETTABLEKS                       R4 R0 K1 ["props"]
       12 GETTABLEKS                       R3 R4 K0 ["Instance"]
       14 CALL                             R2 1 1
       15 SETTABLEKS                       R2 R0 K3 ["instanceTreeRoot"]
       17 DUPTABLE                         R4 K6 [{"Expansion", "Selection"}]
       18 NEWTABLE                         R5 1 0
       20 GETTABLEKS                       R6 R0 K3 ["instanceTreeRoot"]
       22 LOADB                            R7 1
       23 SETTABLE                         R7 R5 R6
       24 SETTABLEKS                       R5 R4 K4 ["Expansion"]
       26 NEWTABLE                         R5 0 0
       28 SETTABLEKS                       R5 R4 K5 ["Selection"]
       30 NAMECALL                         R2 R0 K7 ["setState"]
       32 CALL                             R2 2 0
       33 RETURN                           R0 0
       34 GETTABLEKS                       R2 R1 K5 ["Selection"]
       36 GETTABLEKS                       R4 R0 K1 ["props"]
       38 GETTABLEKS                       R3 R4 K5 ["Selection"]
       40 JUMPIFEQ                         R2 R3 ; [+28]
       42 NEWTABLE                         R2 0 0
       44 GETTABLEKS                       R6 R0 K1 ["props"]
       46 GETTABLEKS                       R3 R6 K5 ["Selection"]
       48 LOADNIL                          R4
       49 LOADNIL                          R5
       50 FORGPREP                         R3
       51 GETTABLEKS                       R8 R0 K3 ["instanceTreeRoot"]
       53 MOVE                             R10 R6
       54 LOADB                            R11 1
       55 NAMECALL                         R8 R8 K8 ["FindFirstChild"]
       57 CALL                             R8 3 1
       58 JUMPIFNOT                        R8 ; [+2]
       59 LOADB                            R9 1
       60 SETTABLE                         R9 R2 R8
       61 FORGLOOP                         R3 1 ; [-11]
       63 DUPTABLE                         R5 K9 [{"Selection"}]
       64 SETTABLEKS                       R2 R5 K5 ["Selection"]
       66 NAMECALL                         R3 R0 K7 ["setState"]
       68 CALL                             R3 2 0
       69 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Roact"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R2 K11 ["UI"]
       32 GETTABLEKS                       R6 R5 K12 ["InstanceTreeView"]
       34 GETTABLEKS                       R7 R3 K13 ["PureComponent"]
       36 LOADK                            R9 K14 ["CharacterInstanceTree"]
       37 NAMECALL                         R7 R7 K15 ["extend"]
       39 CALL                             R7 2 1
       40 DUPCLOSURE                       R8 K16 [PROTO_0]
       41 SETTABLEKS                       R8 R7 K17 ["isValidDisplayInstance"]
       43 DUPCLOSURE                       R8 K18 [PROTO_1]
       44 CAPTURE                          VAL R8
       45 NEWCLOSURE                       R9 P2
       46 CAPTURE                          VAL R8
       47 CAPTURE                          REF R7
       48 SETTABLEKS                       R9 R7 K19 ["getInstanceTreeRoot"]
       50 DUPCLOSURE                       R9 K20 [PROTO_5]
       51 CAPTURE                          VAL R1
       52 SETTABLEKS                       R9 R7 K21 ["init"]
       54 DUPCLOSURE                       R9 K22 [PROTO_6]
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R6
       57 SETTABLEKS                       R9 R7 K23 ["render"]
       59 DUPCLOSURE                       R9 K24 [PROTO_7]
       60 SETTABLEKS                       R9 R7 K25 ["didUpdate"]
       62 GETTABLEKS                       R9 R4 K26 ["withContext"]
       64 DUPTABLE                         R10 K28 [{"Stylizer"}]
       65 GETTABLEKS                       R11 R4 K27 ["Stylizer"]
       67 SETTABLEKS                       R11 R10 K27 ["Stylizer"]
       69 CALL                             R9 1 1
       70 MOVE                             R10 R7
       71 CALL                             R9 1 1
       72 MOVE                             R7 R9
       73 CLOSEUPVALS                      R7
       74 RETURN                           R7 1
