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
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["AbsoluteSize"]
        4 GETTABLEKS                       R1 R1 K1 ["X"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 NEWCLOSURE                       R1 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R0
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R3 R0 K1 ["AbsoluteSize"]
       11 GETTABLEKS                       R3 R3 K2 ["X"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 DUPCLOSURE                       R2 K1 [PROTO_0]
        4 CAPTURE                          UPVAL U1
        5 NEWTABLE                         R3 0 1
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K2 ["locale"]
       10 SETLIST                          R3 R4 1 [1]
       12 CALL                             R1 2 1
       13 GETUPVAL                         R2 2
       14 CALL                             R2 0 1
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K3 ["useRef"]
       18 LOADNIL                          R4
       19 CALL                             R3 1 1
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R4 R4 K4 ["useState"]
       23 LOADN                            R5 0
       24 CALL                             R4 1 2
       25 GETUPVAL                         R6 0
       26 GETTABLEKS                       R6 R6 K5 ["useEffect"]
       28 NEWCLOSURE                       R7 P1
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R5
       31 NEWTABLE                         R8 0 0
       33 CALL                             R6 2 0
       34 GETUPVAL                         R6 3
       35 GETUPVAL                         R7 4
       36 DUPTABLE                         R8 K9 [{["LayoutOrder"], ["tag"] = "col gap-medium size-full-0 auto-y"}]
       37 GETTABLEKS                       R9 R0 K6 ["LayoutOrder"]
       39 SETTABLEKS                       R9 R8 K6 ["LayoutOrder"]
       41 DUPTABLE                         R9 K12 [{"Header", "CenteredContent"}]
       42 GETUPVAL                         R10 3
       43 GETUPVAL                         R11 5
       44 DUPTABLE                         R12 K13 [{"LayoutOrder"}]
       45 MOVE                             R13 R2
       46 CALL                             R13 0 1
       47 SETTABLEKS                       R13 R12 K6 ["LayoutOrder"]
       49 CALL                             R10 2 1
       50 SETTABLEKS                       R10 R9 K10 ["Header"]
       52 GETUPVAL                         R10 3
       53 GETUPVAL                         R11 4
       54 DUPTABLE                         R12 K16 [{["LayoutOrder"], ["tag"] = "col align-x-center align-y-center gap-medium size-full-0 auto-y padding-y-xxlarge", ["testId"]}]
       55 MOVE                             R13 R2
       56 CALL                             R13 0 1
       57 SETTABLEKS                       R13 R12 K6 ["LayoutOrder"]
       59 GETUPVAL                         R13 6
       60 GETTABLEKS                       R13 R13 K17 ["IntegrationMenu"]
       62 GETTABLEKS                       R13 R13 K18 ["EmptyState"]
       64 SETTABLEKS                       R13 R12 K15 ["testId"]
       66 GETTABLEKS                       R14 R0 K19 ["isLoading"]
       68 JUMPIFNOT                        R14 ; [+32]
       69 DUPTABLE                         R13 K21 [{"Container"}]
       70 GETUPVAL                         R14 3
       71 GETUPVAL                         R15 4
       72 DUPTABLE                         R16 K13 [{"LayoutOrder"}]
       73 MOVE                             R17 R2
       74 CALL                             R17 0 1
       75 SETTABLEKS                       R17 R16 K6 ["LayoutOrder"]
       77 DUPTABLE                         R17 K23 [{"Loading"}]
       78 GETUPVAL                         R18 3
       79 GETUPVAL                         R19 7
       80 DUPTABLE                         R20 K25 [{"size", "LayoutOrder"}]
       81 GETUPVAL                         R21 8
       82 GETTABLEKS                       R21 R21 K26 ["Enums"]
       84 GETTABLEKS                       R21 R21 K27 ["IconSize"]
       86 GETTABLEKS                       R21 R21 K28 ["Medium"]
       88 SETTABLEKS                       R21 R20 K24 ["size"]
       90 MOVE                             R21 R2
       91 CALL                             R21 0 1
       92 SETTABLEKS                       R21 R20 K6 ["LayoutOrder"]
       94 CALL                             R18 2 1
       95 SETTABLEKS                       R18 R17 K22 ["Loading"]
       97 CALL                             R14 3 1
       98 SETTABLEKS                       R14 R13 K20 ["Container"]
      100 JUMPIF                           R13 ; [+47]
      101 DUPTABLE                         R13 K31 [{"Text", "Button"}]
      102 GETUPVAL                         R14 3
      103 GETUPVAL                         R15 9
      104 DUPTABLE                         R16 K34 [{["tag"] = "auto-xy text-body-small", ["Text"], ["LayoutOrder"], ["ref"]}]
      105 GETTABLEKS                       R17 R1 K35 ["AddAnIntegration"]
      107 SETTABLEKS                       R17 R16 K29 ["Text"]
      109 MOVE                             R17 R2
      110 CALL                             R17 0 1
      111 SETTABLEKS                       R17 R16 K6 ["LayoutOrder"]
      113 SETTABLEKS                       R3 R16 K33 ["ref"]
      115 CALL                             R14 2 1
      116 SETTABLEKS                       R14 R13 K29 ["Text"]
      118 GETUPVAL                         R14 3
      119 GETUPVAL                         R15 10
      120 DUPTABLE                         R16 K40 [{["tag"] = "auto-xy", ["LayoutOrder"], ["text"], ["size"], ["onActivated"], ["width"]}]
      121 MOVE                             R17 R2
      122 CALL                             R17 0 1
      123 SETTABLEKS                       R17 R16 K6 ["LayoutOrder"]
      125 GETTABLEKS                       R17 R1 K41 ["Add"]
      127 SETTABLEKS                       R17 R16 K37 ["text"]
      129 GETUPVAL                         R17 11
      130 GETTABLEKS                       R17 R17 K42 ["XSmall"]
      132 SETTABLEKS                       R17 R16 K24 ["size"]
      134 GETTABLEKS                       R17 R0 K43 ["onAddIntegration"]
      136 SETTABLEKS                       R17 R16 K38 ["onActivated"]
      138 GETIMPORT                        R17 K46 [UDim.new]
      140 LOADNIL                          R18
      141 MOVE                             R19 R4
      142 CALL                             R17 2 1
      143 SETTABLEKS                       R17 R16 K39 ["width"]
      145 CALL                             R14 2 1
      146 SETTABLEKS                       R14 R13 K30 ["Button"]
      148 CALL                             R10 3 1
      149 SETTABLEKS                       R10 R9 K11 ["CenteredContent"]
      151 CALL                             R6 3 -1
      152 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K6 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["IntegrationMenuHeader"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Parent"]
       20 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Parent"]
       27 GETTABLEKS                       R4 R4 K9 ["React"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K6 ["Parent"]
       34 GETTABLEKS                       R5 R5 K10 ["ReactUtils"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K11 ["Util"]
       41 GETTABLEKS                       R6 R6 K12 ["TestIds"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K13 ["Resources"]
       48 GETTABLEKS                       R7 R7 K14 ["Localization"]
       50 GETTABLEKS                       R7 R7 K15 ["Translator"]
       52 CALL                             R6 1 1
       53 GETTABLEKS                       R7 R2 K16 ["Button"]
       55 GETTABLEKS                       R8 R2 K17 ["Text"]
       57 GETTABLEKS                       R9 R2 K18 ["View"]
       59 GETTABLEKS                       R10 R2 K19 ["Enums"]
       61 GETTABLEKS                       R10 R10 K20 ["ButtonSize"]
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
