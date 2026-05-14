PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R0 K3 [{"ManageIntegrations", "Add", "Disclaimer"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K4 ["IntegrationManagement"]
        3 LOADK                            R4 K0 ["ManageIntegrations"]
        4 NAMECALL                         R1 R1 K5 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["ManageIntegrations"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K6 ["Settings"]
       11 LOADK                            R4 K1 ["Add"]
       12 NAMECALL                         R1 R1 K5 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["Add"]
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K4 ["IntegrationManagement"]
       19 LOADK                            R4 K2 ["Disclaimer"]
       20 NAMECALL                         R1 R1 K5 ["getText"]
       22 CALL                             R1 3 1
       23 SETTABLEKS                       R1 R0 K2 ["Disclaimer"]
       25 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useMemo"]
        5 DUPCLOSURE                       R3 K1 [PROTO_1]
        6 CAPTURE                          UPVAL U2
        7 NEWTABLE                         R4 0 1
        9 GETUPVAL                         R5 2
       10 GETTABLEKS                       R5 R5 K2 ["locale"]
       12 SETLIST                          R4 R5 1 [1]
       14 CALL                             R2 2 1
       15 GETTABLEKS                       R3 R0 K3 ["onAddIntegration"]
       17 GETUPVAL                         R4 3
       18 GETUPVAL                         R5 4
       19 DUPTABLE                         R6 K6 [{"LayoutOrder", "tag"}]
       20 MOVE                             R7 R1
       21 CALL                             R7 0 1
       22 SETTABLEKS                       R7 R6 K4 ["LayoutOrder"]
       24 LOADK                            R7 K7 ["col size-full-0 auto-y gap-small padding-x-large"]
       25 SETTABLEKS                       R7 R6 K5 ["tag"]
       27 DUPTABLE                         R7 K11 [{"TitleAndButton", "Disclaimer", "IntegrationsDisabledNotice"}]
       28 GETUPVAL                         R8 3
       29 GETUPVAL                         R9 4
       30 DUPTABLE                         R10 K6 [{"LayoutOrder", "tag"}]
       31 MOVE                             R11 R1
       32 CALL                             R11 0 1
       33 SETTABLEKS                       R11 R10 K4 ["LayoutOrder"]
       35 LOADK                            R11 K12 ["row size-full-0 auto-y gap-small align-y-center"]
       36 SETTABLEKS                       R11 R10 K5 ["tag"]
       38 DUPTABLE                         R11 K16 [{"TitleText", "Spacer", "AddIntegrationButtonContainer"}]
       39 GETUPVAL                         R12 3
       40 GETUPVAL                         R13 5
       41 DUPTABLE                         R14 K18 [{"tag", "Text", "LayoutOrder"}]
       42 LOADK                            R15 K19 ["auto-xy text-title-medium bold text-align-x-left"]
       43 SETTABLEKS                       R15 R14 K5 ["tag"]
       45 GETTABLEKS                       R15 R2 K20 ["ManageIntegrations"]
       47 SETTABLEKS                       R15 R14 K17 ["Text"]
       49 MOVE                             R15 R1
       50 CALL                             R15 0 1
       51 SETTABLEKS                       R15 R14 K4 ["LayoutOrder"]
       53 CALL                             R12 2 1
       54 SETTABLEKS                       R12 R11 K13 ["TitleText"]
       56 GETUPVAL                         R12 3
       57 GETUPVAL                         R13 4
       58 DUPTABLE                         R14 K21 [{"tag", "LayoutOrder"}]
       59 LOADK                            R15 K22 ["fill"]
       60 SETTABLEKS                       R15 R14 K5 ["tag"]
       62 MOVE                             R15 R1
       63 CALL                             R15 0 1
       64 SETTABLEKS                       R15 R14 K4 ["LayoutOrder"]
       66 CALL                             R12 2 1
       67 SETTABLEKS                       R12 R11 K14 ["Spacer"]
       69 GETUPVAL                         R12 3
       70 GETUPVAL                         R13 4
       71 DUPTABLE                         R14 K24 [{"LayoutOrder", "tag", "GroupTransparency"}]
       72 MOVE                             R15 R1
       73 CALL                             R15 0 1
       74 SETTABLEKS                       R15 R14 K4 ["LayoutOrder"]
       76 LOADK                            R15 K25 ["auto-xy"]
       77 SETTABLEKS                       R15 R14 K5 ["tag"]
       79 JUMPIFNOT                        R3 ; [+2]
       80 LOADN                            R15 0
       81 JUMP                             ; [+1]
       82 LOADN                            R15 1
       83 SETTABLEKS                       R15 R14 K23 ["GroupTransparency"]
       85 DUPTABLE                         R15 K27 [{"AddIntegrationButton"}]
       86 GETUPVAL                         R16 3
       87 GETUPVAL                         R17 6
       88 DUPTABLE                         R18 K31 [{"text", "size", "onActivated"}]
       89 GETTABLEKS                       R19 R2 K32 ["Add"]
       91 SETTABLEKS                       R19 R18 K28 ["text"]
       93 GETUPVAL                         R19 7
       94 GETTABLEKS                       R19 R19 K33 ["XSmall"]
       96 SETTABLEKS                       R19 R18 K29 ["size"]
       98 JUMPIFNOT                        R3 ; [+2]
       99 MOVE                             R19 R3
      100 JUMP                             ; [+1]
      101 GETUPVAL                         R19 8
      102 SETTABLEKS                       R19 R18 K30 ["onActivated"]
      104 CALL                             R16 2 1
      105 SETTABLEKS                       R16 R15 K26 ["AddIntegrationButton"]
      107 CALL                             R12 3 1
      108 SETTABLEKS                       R12 R11 K15 ["AddIntegrationButtonContainer"]
      110 CALL                             R8 3 1
      111 SETTABLEKS                       R8 R7 K8 ["TitleAndButton"]
      113 GETUPVAL                         R8 3
      114 GETUPVAL                         R9 5
      115 DUPTABLE                         R10 K18 [{"tag", "Text", "LayoutOrder"}]
      116 LOADK                            R11 K34 ["auto-xy text-caption-small text-wrap text-align-x-left"]
      117 SETTABLEKS                       R11 R10 K5 ["tag"]
      119 GETTABLEKS                       R11 R2 K9 ["Disclaimer"]
      121 SETTABLEKS                       R11 R10 K17 ["Text"]
      123 MOVE                             R11 R1
      124 CALL                             R11 0 1
      125 SETTABLEKS                       R11 R10 K4 ["LayoutOrder"]
      127 CALL                             R8 2 1
      128 SETTABLEKS                       R8 R7 K9 ["Disclaimer"]
      130 GETUPVAL                         R8 3
      131 GETUPVAL                         R9 9
      132 DUPTABLE                         R10 K35 [{"LayoutOrder"}]
      133 MOVE                             R11 R1
      134 CALL                             R11 0 1
      135 SETTABLEKS                       R11 R10 K4 ["LayoutOrder"]
      137 CALL                             R8 2 1
      138 SETTABLEKS                       R8 R7 K10 ["IntegrationsDisabledNotice"]
      140 CALL                             R4 3 -1
      141 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K6 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["IntegrationsDisabledNotice"]
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
       39 GETTABLEKS                       R6 R0 K11 ["Resources"]
       41 GETTABLEKS                       R6 R6 K12 ["Localization"]
       43 GETTABLEKS                       R6 R6 K13 ["Translator"]
       45 CALL                             R5 1 1
       46 GETTABLEKS                       R6 R2 K14 ["Button"]
       48 GETTABLEKS                       R7 R2 K15 ["Enums"]
       50 GETTABLEKS                       R7 R7 K16 ["ButtonSize"]
       52 GETTABLEKS                       R8 R2 K17 ["Text"]
       54 GETTABLEKS                       R9 R2 K18 ["View"]
       56 GETTABLEKS                       R10 R4 K19 ["createNextOrder"]
       58 GETTABLEKS                       R11 R3 K20 ["createElement"]
       60 DUPCLOSURE                       R12 K21 [PROTO_0]
       61 DUPCLOSURE                       R13 K22 [PROTO_2]
       62 CAPTURE                          VAL R10
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R5
       65 CAPTURE                          VAL R11
       66 CAPTURE                          VAL R9
       67 CAPTURE                          VAL R8
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R7
       70 CAPTURE                          VAL R12
       71 CAPTURE                          VAL R1
       72 GETTABLEKS                       R14 R3 K23 ["memo"]
       74 MOVE                             R15 R13
       75 CALL                             R14 1 -1
       76 RETURN                           R14 -1
