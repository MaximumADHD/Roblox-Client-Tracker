PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R1 R4 K0 ["rowDefinitions"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 GETTABLEKS                       R6 R5 K1 ["prop"]
       10 GETTABLEKS                       R7 R5 K2 ["initialValue"]
       12 SETTABLE                         R7 R0 R6
       13 FORGLOOP                         R1 2 ; [-6]
       15 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K3 ["prop"]
        7 GETUPVAL                         R3 1
        8 SETTABLE                         R3 R1 R2
        9 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CALL                             R2 1 0
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K0 ["onChange"]
        8 JUMPIFNOT                        R2 ; [+7]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R2 R3 K0 ["onChange"]
       12 GETTABLEKS                       R3 R0 K1 ["prop"]
       14 MOVE                             R4 R1
       15 CALL                             R2 2 0
       16 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 2
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K1 ["useCallback"]
        9 NEWCLOSURE                       R4 P1
       10 CAPTURE                          VAL R2
       11 CAPTURE                          VAL R0
       12 NEWTABLE                         R5 0 1
       14 GETTABLEKS                       R6 R0 K2 ["onChange"]
       16 SETLIST                          R5 R6 1 [1]
       18 CALL                             R3 2 1
       19 GETUPVAL                         R4 1
       20 CALL                             R4 0 1
       21 GETIMPORT                        R5 K5 [table.create]
       23 GETTABLEKS                       R7 R0 K6 ["rowDefinitions"]
       25 LENGTH                           R6 R7
       26 CALL                             R5 1 1
       27 GETTABLEKS                       R6 R0 K6 ["rowDefinitions"]
       29 LOADNIL                          R7
       30 LOADNIL                          R8
       31 FORGPREP                         R6
       32 GETUPVAL                         R12 2
       33 GETTABLEKS                       R13 R10 K7 ["type"]
       35 GETTABLE                         R11 R12 R13
       36 GETUPVAL                         R12 3
       37 GETUPVAL                         R13 4
       38 DUPTABLE                         R14 K10 [{"tag", "LayoutOrder"}]
       39 LOADK                            R15 K11 ["row size-full-0 auto-xy padding-y-xxsmall gap-small align-y-center"]
       40 SETTABLEKS                       R15 R14 K8 ["tag"]
       42 MOVE                             R15 R4
       43 CALL                             R15 0 1
       44 SETTABLEKS                       R15 R14 K9 ["LayoutOrder"]
       46 DUPTABLE                         R15 K14 [{"Label", "Value"}]
       47 GETUPVAL                         R16 3
       48 GETUPVAL                         R17 5
       49 DUPTABLE                         R18 K16 [{"tag", "Text", "LayoutOrder"}]
       50 LOADK                            R19 K17 ["size-2500-0 grow-2 auto-xy text-body-small content-default text-align-x-left text-truncate-end"]
       51 SETTABLEKS                       R19 R18 K8 ["tag"]
       53 GETTABLEKS                       R19 R10 K18 ["label"]
       55 SETTABLEKS                       R19 R18 K15 ["Text"]
       57 MOVE                             R19 R4
       58 CALL                             R19 0 1
       59 SETTABLEKS                       R19 R18 K9 ["LayoutOrder"]
       61 CALL                             R16 2 1
       62 SETTABLEKS                       R16 R15 K12 ["Label"]
       64 GETUPVAL                         R16 3
       65 GETUPVAL                         R17 4
       66 DUPTABLE                         R18 K10 [{"tag", "LayoutOrder"}]
       67 LOADK                            R19 K19 ["size-2500-600 grow-4"]
       68 SETTABLEKS                       R19 R18 K8 ["tag"]
       70 MOVE                             R19 R4
       71 CALL                             R19 0 1
       72 SETTABLEKS                       R19 R18 K9 ["LayoutOrder"]
       74 DUPTABLE                         R19 K21 [{"ValueNode"}]
       75 MOVE                             R20 R11
       76 JUMPIFNOT                        R20 ; [+24]
       77 GETUPVAL                         R20 3
       78 MOVE                             R21 R11
       79 DUPTABLE                         R22 K25 [{"definition", "value", "isDisabled", "onChange", "LayoutOrder"}]
       80 SETTABLEKS                       R10 R22 K22 ["definition"]
       82 GETTABLEKS                       R24 R10 K26 ["prop"]
       84 GETTABLE                         R23 R1 R24
       85 SETTABLEKS                       R23 R22 K23 ["value"]
       87 GETTABLEKS                       R23 R0 K24 ["isDisabled"]
       89 SETTABLEKS                       R23 R22 K24 ["isDisabled"]
       91 NEWCLOSURE                       R23 P2
       92 CAPTURE                          VAL R3
       93 CAPTURE                          VAL R10
       94 SETTABLEKS                       R23 R22 K2 ["onChange"]
       96 MOVE                             R23 R4
       97 CALL                             R23 0 1
       98 SETTABLEKS                       R23 R22 K9 ["LayoutOrder"]
      100 CALL                             R20 2 1
      101 SETTABLEKS                       R20 R19 K20 ["ValueNode"]
      103 CALL                             R16 3 1
      104 SETTABLEKS                       R16 R15 K13 ["Value"]
      106 CALL                             R12 3 1
      107 SETTABLE                         R12 R5 R9
      108 FORGLOOP                         R6 2 ; [-77]
      110 GETUPVAL                         R6 3
      111 GETUPVAL                         R7 4
      112 DUPTABLE                         R8 K28 [{"tag", "GroupTransparency", "LayoutOrder"}]
      113 LOADK                            R9 K29 ["col size-full-0 auto-xy"]
      114 SETTABLEKS                       R9 R8 K8 ["tag"]
      116 GETTABLEKS                       R10 R0 K24 ["isDisabled"]
      118 JUMPIFNOT                        R10 ; [+2]
      119 LOADK                            R9 K30 [0.5]
      120 JUMP                             ; [+1]
      121 LOADNIL                          R9
      122 SETTABLEKS                       R9 R8 K27 ["GroupTransparency"]
      124 GETTABLEKS                       R9 R0 K9 ["LayoutOrder"]
      126 SETTABLEKS                       R9 R8 K9 ["LayoutOrder"]
      128 MOVE                             R9 R5
      129 CALL                             R6 3 -1
      130 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R5 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETIMPORT                        R6 K1 [script]
       32 GETTABLEKS                       R5 R6 K10 ["InstancePropertyRow"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETIMPORT                        R7 K1 [script]
       39 GETTABLEKS                       R6 R7 K11 ["NumberPropertyRow"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETIMPORT                        R8 K1 [script]
       46 GETTABLEKS                       R7 R8 K12 ["PropertyRowTypes"]
       48 CALL                             R6 1 1
       49 GETTABLEKS                       R7 R1 K13 ["Text"]
       51 GETTABLEKS                       R8 R1 K14 ["View"]
       53 GETTABLEKS                       R9 R2 K15 ["createElement"]
       55 GETTABLEKS                       R10 R3 K16 ["createNextOrder"]
       57 GETTABLEKS                       R11 R6 K17 ["ROW_TYPES"]
       59 NEWTABLE                         R12 2 0
       61 GETTABLEKS                       R13 R11 K18 ["Number"]
       63 GETTABLEKS                       R14 R5 K11 ["NumberPropertyRow"]
       65 SETTABLE                         R14 R12 R13
       66 GETTABLEKS                       R13 R11 K19 ["Instance"]
       68 GETTABLEKS                       R14 R4 K10 ["InstancePropertyRow"]
       70 SETTABLE                         R14 R12 R13
       71 DUPCLOSURE                       R13 K20 [PROTO_4]
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R10
       74 CAPTURE                          VAL R12
       75 CAPTURE                          VAL R9
       76 CAPTURE                          VAL R8
       77 CAPTURE                          VAL R7
       78 DUPTABLE                         R14 K24 [{"ROW_TYPES", "PropertyRows", "createNumberRowDefinition", "createInstanceRowDefinition"}]
       79 SETTABLEKS                       R11 R14 K17 ["ROW_TYPES"]
       81 SETTABLEKS                       R13 R14 K21 ["PropertyRows"]
       83 GETTABLEKS                       R15 R5 K25 ["createRowDefinition"]
       85 SETTABLEKS                       R15 R14 K22 ["createNumberRowDefinition"]
       87 GETTABLEKS                       R15 R4 K25 ["createRowDefinition"]
       89 SETTABLEKS                       R15 R14 K23 ["createInstanceRowDefinition"]
       91 RETURN                           R14 1
