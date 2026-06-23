PROTO_0:
        0 DUPTABLE                         R0 K1 [{"FirstPartyTool"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K2 ["SettingsDialog"]
        3 LOADK                            R4 K3 ["FirstPartyTools"]
        4 NAMECALL                         R1 R1 K4 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["FirstPartyTool"]
        9 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["useMemo"]
       10 DUPCLOSURE                       R3 K3 [PROTO_0]
       11 CAPTURE                          UPVAL U2
       12 NEWTABLE                         R4 0 1
       14 GETUPVAL                         R5 2
       15 GETTABLEKS                       R5 R5 K4 ["locale"]
       17 SETLIST                          R4 R5 1 [1]
       19 CALL                             R2 2 1
       20 NEWTABLE                         R3 0 0
       22 GETUPVAL                         R4 3
       23 GETUPVAL                         R5 4
       24 DUPTABLE                         R6 K8 [{"tag", "Text", "LayoutOrder"}]
       25 LOADK                            R7 K9 ["auto-xy text-caption-small text-wrap text-align-x-left"]
       26 SETTABLEKS                       R7 R6 K5 ["tag"]
       28 GETTABLEKS                       R7 R2 K10 ["FirstPartyTool"]
       30 SETTABLEKS                       R7 R6 K6 ["Text"]
       32 GETUPVAL                         R7 5
       33 CALL                             R7 0 1
       34 SETTABLEKS                       R7 R6 K7 ["LayoutOrder"]
       36 CALL                             R4 2 1
       37 SETTABLEKS                       R4 R3 K11 ["FirstPartyToolLabel"]
       39 GETTABLEKS                       R4 R1 K12 ["options"]
       41 JUMPIFNOT                        R4 ; [+90]
       42 LENGTH                           R5 R4
       43 LOADN                            R6 0
       44 JUMPIFNOTLT                      R6 R5 ; [+87]
       46 MOVE                             R5 R4
       47 LOADNIL                          R6
       48 LOADNIL                          R7
       49 FORGPREP                         R5
       50 GETTABLEKS                       R10 R9 K13 ["label"]
       52 GETUPVAL                         R11 3
       53 GETUPVAL                         R12 6
       54 DUPTABLE                         R13 K15 [{"testId", "LayoutOrder", "tag"}]
       55 GETUPVAL                         R14 7
       56 GETTABLEKS                       R14 R14 K16 ["ToolMenuView"]
       58 GETTABLEKS                       R14 R14 K17 ["Option"]
       60 GETTABLEKS                       R14 R14 K18 ["Container"]
       62 SETTABLEKS                       R14 R13 K14 ["testId"]
       64 GETUPVAL                         R14 5
       65 CALL                             R14 0 1
       66 SETTABLEKS                       R14 R13 K7 ["LayoutOrder"]
       68 LOADK                            R14 K19 ["row size-full-0 auto-y gap-small flex-y-fill align-y-center"]
       69 SETTABLEKS                       R14 R13 K5 ["tag"]
       71 DUPTABLE                         R14 K22 [{"Checkbox", "Label"}]
       72 GETUPVAL                         R15 3
       73 GETUPVAL                         R16 8
       74 DUPTABLE                         R17 K26 [{"testId", "LayoutOrder", "isChecked", "onActivated", "label", "size"}]
       75 GETUPVAL                         R18 7
       76 GETTABLEKS                       R18 R18 K16 ["ToolMenuView"]
       78 GETTABLEKS                       R18 R18 K17 ["Option"]
       80 GETTABLEKS                       R18 R18 K20 ["Checkbox"]
       82 SETTABLEKS                       R18 R17 K14 ["testId"]
       84 GETUPVAL                         R18 5
       85 CALL                             R18 0 1
       86 SETTABLEKS                       R18 R17 K7 ["LayoutOrder"]
       88 GETTABLEKS                       R18 R9 K23 ["isChecked"]
       90 SETTABLEKS                       R18 R17 K23 ["isChecked"]
       92 GETTABLEKS                       R18 R9 K27 ["onChange"]
       94 SETTABLEKS                       R18 R17 K24 ["onActivated"]
       96 LOADK                            R18 K28 [""]
       97 SETTABLEKS                       R18 R17 K13 ["label"]
       99 GETUPVAL                         R18 9
      100 GETTABLEKS                       R18 R18 K29 ["Enums"]
      102 GETTABLEKS                       R18 R18 K30 ["InputSize"]
      104 GETTABLEKS                       R18 R18 K31 ["XSmall"]
      106 SETTABLEKS                       R18 R17 K25 ["size"]
      108 CALL                             R15 2 1
      109 SETTABLEKS                       R15 R14 K20 ["Checkbox"]
      111 GETUPVAL                         R15 3
      112 GETUPVAL                         R16 4
      113 DUPTABLE                         R17 K8 [{"tag", "Text", "LayoutOrder"}]
      114 LOADK                            R18 K32 ["auto-xy text-body-small text-no-wrap text-align-x-left"]
      115 SETTABLEKS                       R18 R17 K5 ["tag"]
      117 GETTABLEKS                       R18 R9 K33 ["displayLabel"]
      119 SETTABLEKS                       R18 R17 K6 ["Text"]
      121 GETUPVAL                         R18 5
      122 CALL                             R18 0 1
      123 SETTABLEKS                       R18 R17 K7 ["LayoutOrder"]
      125 CALL                             R15 2 1
      126 SETTABLEKS                       R15 R14 K21 ["Label"]
      128 CALL                             R11 3 1
      129 SETTABLE                         R11 R3 R10
      130 FORGLOOP                         R5 2 ; [-81]
      132 GETUPVAL                         R5 3
      133 GETUPVAL                         R6 6
      134 DUPTABLE                         R7 K34 [{"tag", "LayoutOrder"}]
      135 LOADK                            R8 K35 ["size-full-full"]
      136 SETTABLEKS                       R8 R7 K5 ["tag"]
      138 GETTABLEKS                       R8 R0 K7 ["LayoutOrder"]
      140 SETTABLEKS                       R8 R7 K7 ["LayoutOrder"]
      142 DUPTABLE                         R8 K37 [{"MainView"}]
      143 GETUPVAL                         R9 3
      144 GETUPVAL                         R10 6
      145 DUPTABLE                         R11 K38 [{"tag", "testId"}]
      146 LOADK                            R12 K39 ["col auto-xy padding-small gap-small bg-surface-100"]
      147 SETTABLEKS                       R12 R11 K5 ["tag"]
      149 GETUPVAL                         R12 7
      150 GETTABLEKS                       R12 R12 K16 ["ToolMenuView"]
      152 GETTABLEKS                       R12 R12 K18 ["Container"]
      154 SETTABLEKS                       R12 R11 K14 ["testId"]
      156 MOVE                             R12 R3
      157 CALL                             R9 3 1
      158 SETTABLEKS                       R9 R8 K36 ["MainView"]
      160 CALL                             R5 3 -1
      161 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R3 K9 ["Contexts"]
       20 GETTABLEKS                       R3 R3 K10 ["OptionsContext"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Parent"]
       27 GETTABLEKS                       R4 R4 K11 ["React"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K6 ["Parent"]
       34 GETTABLEKS                       R5 R5 K12 ["ReactUtils"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K13 ["Util"]
       41 GETTABLEKS                       R6 R6 K14 ["TestIds"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K15 ["Resources"]
       48 GETTABLEKS                       R7 R7 K16 ["Localization"]
       50 GETTABLEKS                       R7 R7 K17 ["Translator"]
       52 CALL                             R6 1 1
       53 GETTABLEKS                       R7 R1 K18 ["Checkbox"]
       55 GETTABLEKS                       R8 R1 K19 ["Text"]
       57 GETTABLEKS                       R9 R1 K20 ["View"]
       59 GETTABLEKS                       R10 R4 K21 ["createNextOrder"]
       61 MOVE                             R11 R10
       62 CALL                             R11 0 1
       63 GETTABLEKS                       R12 R3 K22 ["createElement"]
       65 DUPCLOSURE                       R13 K23 [PROTO_1]
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R12
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R11
       72 CAPTURE                          VAL R9
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R7
       75 CAPTURE                          VAL R1
       76 RETURN                           R13 1
