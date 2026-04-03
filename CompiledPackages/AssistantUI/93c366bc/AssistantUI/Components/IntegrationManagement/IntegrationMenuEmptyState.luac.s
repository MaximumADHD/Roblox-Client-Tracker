PROTO_0:
        0 DUPTABLE                         R0 K3 [{"ManageIntegrations", "AddAnIntegration", "Add"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K4 ["IntegrationManagement"]
        3 LOADK                            R4 K0 ["ManageIntegrations"]
        4 NAMECALL                         R1 R1 K5 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["ManageIntegrations"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K4 ["IntegrationManagement"]
       11 LOADK                            R4 K6 ["AddIntegration"]
       12 NAMECALL                         R1 R1 K5 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["AddAnIntegration"]
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K7 ["Settings"]
       19 LOADK                            R4 K2 ["Add"]
       20 NAMECALL                         R1 R1 K5 ["getText"]
       22 CALL                             R1 3 1
       23 SETTABLEKS                       R1 R0 K2 ["Add"]
       25 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["AbsoluteSize"]
        4 GETTABLEKS                       R1 R2 K1 ["X"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 NEWCLOSURE                       R1 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R0
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R4 R0 K1 ["AbsoluteSize"]
       11 GETTABLEKS                       R3 R4 K2 ["X"]
       13 CALL                             R2 1 0
       14 LOADK                            R4 K1 ["AbsoluteSize"]
       15 NAMECALL                         R2 R0 K3 ["GetPropertyChangedSignal"]
       17 CALL                             R2 2 1
       18 MOVE                             R4 R1
       19 NAMECALL                         R2 R2 K4 ["Connect"]
       21 CALL                             R2 2 1
       22 NEWCLOSURE                       R3 P1
       23 CAPTURE                          VAL R2
       24 RETURN                           R3 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useMemo"]
        3 DUPCLOSURE                       R2 K1 [PROTO_0]
        4 CAPTURE                          UPVAL U1
        5 NEWTABLE                         R3 0 1
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R4 R5 K2 ["locale"]
       10 SETLIST                          R3 R4 1 [1]
       12 CALL                             R1 2 1
       13 GETUPVAL                         R2 2
       14 CALL                             R2 0 1
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R3 R4 K3 ["useRef"]
       18 LOADNIL                          R4
       19 CALL                             R3 1 1
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R4 R5 K4 ["useState"]
       23 LOADN                            R5 0
       24 CALL                             R4 1 2
       25 GETUPVAL                         R7 0
       26 GETTABLEKS                       R6 R7 K5 ["useEffect"]
       28 NEWCLOSURE                       R7 P1
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R5
       31 NEWTABLE                         R8 0 0
       33 CALL                             R6 2 0
       34 GETUPVAL                         R6 3
       35 GETUPVAL                         R7 4
       36 DUPTABLE                         R8 K8 [{"LayoutOrder", "tag"}]
       37 GETTABLEKS                       R9 R0 K6 ["LayoutOrder"]
       39 SETTABLEKS                       R9 R8 K6 ["LayoutOrder"]
       41 LOADK                            R9 K9 ["col size-full-0 auto-y gap-medium"]
       42 SETTABLEKS                       R9 R8 K7 ["tag"]
       44 DUPTABLE                         R9 K12 [{"Header", "CenteredContent"}]
       45 GETUPVAL                         R10 3
       46 GETUPVAL                         R11 5
       47 DUPTABLE                         R12 K13 [{"LayoutOrder"}]
       48 MOVE                             R13 R2
       49 CALL                             R13 0 1
       50 SETTABLEKS                       R13 R12 K6 ["LayoutOrder"]
       52 CALL                             R10 2 1
       53 SETTABLEKS                       R10 R9 K10 ["Header"]
       55 GETUPVAL                         R10 3
       56 GETUPVAL                         R11 4
       57 DUPTABLE                         R12 K15 [{"LayoutOrder", "tag", "testId"}]
       58 MOVE                             R13 R2
       59 CALL                             R13 0 1
       60 SETTABLEKS                       R13 R12 K6 ["LayoutOrder"]
       62 LOADK                            R13 K16 ["col size-full-0 auto-y align-y-center align-x-center gap-medium padding-y-xxlarge"]
       63 SETTABLEKS                       R13 R12 K7 ["tag"]
       65 GETUPVAL                         R15 6
       66 GETTABLEKS                       R14 R15 K17 ["IntegrationMenu"]
       68 GETTABLEKS                       R13 R14 K18 ["EmptyState"]
       70 SETTABLEKS                       R13 R12 K14 ["testId"]
       72 GETTABLEKS                       R14 R0 K19 ["isLoading"]
       74 JUMPIFNOT                        R14 ; [+32]
       75 DUPTABLE                         R13 K21 [{"Container"}]
       76 GETUPVAL                         R14 3
       77 GETUPVAL                         R15 4
       78 DUPTABLE                         R16 K13 [{"LayoutOrder"}]
       79 MOVE                             R17 R2
       80 CALL                             R17 0 1
       81 SETTABLEKS                       R17 R16 K6 ["LayoutOrder"]
       83 DUPTABLE                         R17 K23 [{"Loading"}]
       84 GETUPVAL                         R18 3
       85 GETUPVAL                         R19 7
       86 DUPTABLE                         R20 K25 [{"size", "LayoutOrder"}]
       87 GETUPVAL                         R24 8
       88 GETTABLEKS                       R23 R24 K26 ["Enums"]
       90 GETTABLEKS                       R22 R23 K27 ["IconSize"]
       92 GETTABLEKS                       R21 R22 K28 ["Medium"]
       94 SETTABLEKS                       R21 R20 K24 ["size"]
       96 MOVE                             R21 R2
       97 CALL                             R21 0 1
       98 SETTABLEKS                       R21 R20 K6 ["LayoutOrder"]
      100 CALL                             R18 2 1
      101 SETTABLEKS                       R18 R17 K22 ["Loading"]
      103 CALL                             R14 3 1
      104 SETTABLEKS                       R14 R13 K20 ["Container"]
      106 JUMPIF                           R13 ; [+53]
      107 DUPTABLE                         R13 K31 [{"Text", "Button"}]
      108 GETUPVAL                         R14 3
      109 GETUPVAL                         R15 9
      110 DUPTABLE                         R16 K33 [{"tag", "Text", "LayoutOrder", "ref"}]
      111 LOADK                            R17 K34 ["auto-xy text-body-small"]
      112 SETTABLEKS                       R17 R16 K7 ["tag"]
      114 GETTABLEKS                       R17 R1 K35 ["AddAnIntegration"]
      116 SETTABLEKS                       R17 R16 K29 ["Text"]
      118 MOVE                             R17 R2
      119 CALL                             R17 0 1
      120 SETTABLEKS                       R17 R16 K6 ["LayoutOrder"]
      122 SETTABLEKS                       R3 R16 K32 ["ref"]
      124 CALL                             R14 2 1
      125 SETTABLEKS                       R14 R13 K29 ["Text"]
      127 GETUPVAL                         R14 3
      128 GETUPVAL                         R15 10
      129 DUPTABLE                         R16 K39 [{"tag", "LayoutOrder", "text", "size", "onActivated", "width"}]
      130 LOADK                            R17 K40 ["auto-xy"]
      131 SETTABLEKS                       R17 R16 K7 ["tag"]
      133 MOVE                             R17 R2
      134 CALL                             R17 0 1
      135 SETTABLEKS                       R17 R16 K6 ["LayoutOrder"]
      137 GETTABLEKS                       R17 R1 K41 ["Add"]
      139 SETTABLEKS                       R17 R16 K36 ["text"]
      141 GETUPVAL                         R18 11
      142 GETTABLEKS                       R17 R18 K42 ["XSmall"]
      144 SETTABLEKS                       R17 R16 K24 ["size"]
      146 GETTABLEKS                       R17 R0 K43 ["onAddIntegration"]
      148 SETTABLEKS                       R17 R16 K37 ["onActivated"]
      150 GETIMPORT                        R17 K46 [UDim.new]
      152 LOADNIL                          R18
      153 MOVE                             R19 R4
      154 CALL                             R17 2 1
      155 SETTABLEKS                       R17 R16 K38 ["width"]
      157 CALL                             R14 2 1
      158 SETTABLEKS                       R14 R13 K30 ["Button"]
      160 CALL                             R10 3 1
      161 SETTABLEKS                       R10 R9 K11 ["CenteredContent"]
      163 CALL                             R6 3 -1
      164 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R4 K1 [script]
       11 GETTABLEKS                       R3 R4 K6 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["IntegrationMenuHeader"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K6 ["Parent"]
       20 GETTABLEKS                       R3 R4 K8 ["Foundation"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K6 ["Parent"]
       27 GETTABLEKS                       R4 R5 K9 ["React"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K6 ["Parent"]
       34 GETTABLEKS                       R5 R6 K10 ["ReactUtils"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R7 R0 K11 ["Util"]
       41 GETTABLEKS                       R6 R7 K12 ["TestIds"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R9 R0 K13 ["Resources"]
       48 GETTABLEKS                       R8 R9 K14 ["Localization"]
       50 GETTABLEKS                       R7 R8 K15 ["Translator"]
       52 CALL                             R6 1 1
       53 GETTABLEKS                       R7 R2 K16 ["Button"]
       55 GETTABLEKS                       R8 R2 K17 ["Text"]
       57 GETTABLEKS                       R9 R2 K18 ["View"]
       59 GETTABLEKS                       R11 R2 K19 ["Enums"]
       61 GETTABLEKS                       R10 R11 K20 ["ButtonSize"]
       63 GETTABLEKS                       R11 R2 K21 ["Loading"]
       65 GETTABLEKS                       R12 R4 K22 ["createNextOrder"]
       67 GETTABLEKS                       R13 R3 K23 ["createElement"]
       69 DUPCLOSURE                       R14 K24 [PROTO_4]
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R6
       72 CAPTURE                          VAL R12
       73 CAPTURE                          VAL R13
       74 CAPTURE                          VAL R9
       75 CAPTURE                          VAL R1
       76 CAPTURE                          VAL R5
       77 CAPTURE                          VAL R11
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R8
       80 CAPTURE                          VAL R7
       81 CAPTURE                          VAL R10
       82 GETTABLEKS                       R15 R3 K25 ["memo"]
       84 MOVE                             R16 R14
       85 CALL                             R15 1 -1
       86 RETURN                           R15 -1
