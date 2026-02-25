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
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["AbsoluteSize"]
        4 GETTABLEKS                       R1 R2 K1 ["Y"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 NEWCLOSURE                       R1 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R0
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R4 R0 K1 ["AbsoluteSize"]
       11 GETTABLEKS                       R3 R4 K2 ["Y"]
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

PROTO_7:
        0 GETIMPORT                        R1 K2 [UDim2.fromOffset]
        2 LOADN                            R2 0
        3 DIVK                             R3 R0 K3 [2]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_8:
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
       26 GETTABLEKS                       R6 R7 K3 ["useRef"]
       28 LOADNIL                          R7
       29 CALL                             R6 1 1
       30 GETUPVAL                         R8 0
       31 GETTABLEKS                       R7 R8 K5 ["useBinding"]
       33 LOADN                            R8 0
       34 CALL                             R7 1 2
       35 GETUPVAL                         R10 0
       36 GETTABLEKS                       R9 R10 K6 ["useEffect"]
       38 NEWCLOSURE                       R10 P1
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R5
       41 NEWTABLE                         R11 0 0
       43 CALL                             R9 2 0
       44 GETUPVAL                         R10 0
       45 GETTABLEKS                       R9 R10 K6 ["useEffect"]
       47 NEWCLOSURE                       R10 P2
       48 CAPTURE                          VAL R6
       49 CAPTURE                          VAL R8
       50 NEWTABLE                         R11 0 0
       52 CALL                             R9 2 0
       53 GETUPVAL                         R9 3
       54 GETUPVAL                         R10 4
       55 DUPTABLE                         R11 K9 [{"LayoutOrder", "tag"}]
       56 GETTABLEKS                       R12 R0 K7 ["LayoutOrder"]
       58 SETTABLEKS                       R12 R11 K7 ["LayoutOrder"]
       60 LOADK                            R12 K10 ["size-full-full"]
       61 SETTABLEKS                       R12 R11 K8 ["tag"]
       63 DUPTABLE                         R12 K13 [{"Header", "CenteredContent"}]
       64 GETUPVAL                         R13 3
       65 GETUPVAL                         R14 5
       66 DUPTABLE                         R15 K14 [{"LayoutOrder"}]
       67 MOVE                             R16 R2
       68 CALL                             R16 0 1
       69 SETTABLEKS                       R16 R15 K7 ["LayoutOrder"]
       71 CALL                             R13 2 1
       72 SETTABLEKS                       R13 R12 K11 ["Header"]
       74 GETUPVAL                         R13 3
       75 GETUPVAL                         R14 4
       76 DUPTABLE                         R15 K17 [{"LayoutOrder", "tag", "Position", "testId"}]
       77 MOVE                             R16 R2
       78 CALL                             R16 0 1
       79 SETTABLEKS                       R16 R15 K7 ["LayoutOrder"]
       81 LOADK                            R16 K18 ["col size-full-full align-y-center align-x-center gap-medium"]
       82 SETTABLEKS                       R16 R15 K8 ["tag"]
       84 DUPCLOSURE                       R18 K19 [PROTO_7]
       85 NAMECALL                         R16 R7 K20 ["map"]
       87 CALL                             R16 2 1
       88 SETTABLEKS                       R16 R15 K15 ["Position"]
       90 GETUPVAL                         R18 6
       91 GETTABLEKS                       R17 R18 K21 ["IntegrationMenu"]
       93 GETTABLEKS                       R16 R17 K22 ["EmptyState"]
       95 SETTABLEKS                       R16 R15 K16 ["testId"]
       97 GETTABLEKS                       R17 R0 K23 ["isLoading"]
       99 JUMPIFNOT                        R17 ; [+32]
      100 DUPTABLE                         R16 K25 [{"Container"}]
      101 GETUPVAL                         R17 3
      102 GETUPVAL                         R18 4
      103 DUPTABLE                         R19 K14 [{"LayoutOrder"}]
      104 MOVE                             R20 R2
      105 CALL                             R20 0 1
      106 SETTABLEKS                       R20 R19 K7 ["LayoutOrder"]
      108 DUPTABLE                         R20 K27 [{"Loading"}]
      109 GETUPVAL                         R21 3
      110 GETUPVAL                         R22 7
      111 DUPTABLE                         R23 K29 [{"size", "LayoutOrder"}]
      112 GETUPVAL                         R27 8
      113 GETTABLEKS                       R26 R27 K30 ["Enums"]
      115 GETTABLEKS                       R25 R26 K31 ["IconSize"]
      117 GETTABLEKS                       R24 R25 K32 ["Medium"]
      119 SETTABLEKS                       R24 R23 K28 ["size"]
      121 MOVE                             R24 R2
      122 CALL                             R24 0 1
      123 SETTABLEKS                       R24 R23 K7 ["LayoutOrder"]
      125 CALL                             R21 2 1
      126 SETTABLEKS                       R21 R20 K26 ["Loading"]
      128 CALL                             R17 3 1
      129 SETTABLEKS                       R17 R16 K24 ["Container"]
      131 JUMPIF                           R16 ; [+53]
      132 DUPTABLE                         R16 K35 [{"Text", "Button"}]
      133 GETUPVAL                         R17 3
      134 GETUPVAL                         R18 9
      135 DUPTABLE                         R19 K37 [{"tag", "Text", "LayoutOrder", "ref"}]
      136 LOADK                            R20 K38 ["auto-xy text-body-small"]
      137 SETTABLEKS                       R20 R19 K8 ["tag"]
      139 GETTABLEKS                       R20 R1 K39 ["AddAnIntegration"]
      141 SETTABLEKS                       R20 R19 K33 ["Text"]
      143 MOVE                             R20 R2
      144 CALL                             R20 0 1
      145 SETTABLEKS                       R20 R19 K7 ["LayoutOrder"]
      147 SETTABLEKS                       R3 R19 K36 ["ref"]
      149 CALL                             R17 2 1
      150 SETTABLEKS                       R17 R16 K33 ["Text"]
      152 GETUPVAL                         R17 3
      153 GETUPVAL                         R18 10
      154 DUPTABLE                         R19 K43 [{"tag", "LayoutOrder", "text", "size", "onActivated", "width"}]
      155 LOADK                            R20 K44 ["auto-xy"]
      156 SETTABLEKS                       R20 R19 K8 ["tag"]
      158 MOVE                             R20 R2
      159 CALL                             R20 0 1
      160 SETTABLEKS                       R20 R19 K7 ["LayoutOrder"]
      162 GETTABLEKS                       R20 R1 K45 ["Add"]
      164 SETTABLEKS                       R20 R19 K40 ["text"]
      166 GETUPVAL                         R21 11
      167 GETTABLEKS                       R20 R21 K46 ["XSmall"]
      169 SETTABLEKS                       R20 R19 K28 ["size"]
      171 GETTABLEKS                       R20 R0 K47 ["onAddIntegration"]
      173 SETTABLEKS                       R20 R19 K41 ["onActivated"]
      175 GETIMPORT                        R20 K50 [UDim.new]
      177 LOADNIL                          R21
      178 MOVE                             R22 R4
      179 CALL                             R20 2 1
      180 SETTABLEKS                       R20 R19 K42 ["width"]
      182 CALL                             R17 2 1
      183 SETTABLEKS                       R17 R16 K34 ["Button"]
      185 CALL                             R13 3 1
      186 SETTABLEKS                       R13 R12 K12 ["CenteredContent"]
      188 CALL                             R9 3 -1
      189 RETURN                           R9 -1

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
       69 DUPCLOSURE                       R14 K24 [PROTO_8]
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
