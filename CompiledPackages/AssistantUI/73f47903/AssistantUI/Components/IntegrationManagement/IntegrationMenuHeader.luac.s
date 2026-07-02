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
       19 DUPTABLE                         R6 K7 [{["LayoutOrder"], ["tag"] = "col gap-small size-full-0 auto-y padding-x-large"}]
       20 MOVE                             R7 R1
       21 CALL                             R7 0 1
       22 SETTABLEKS                       R7 R6 K4 ["LayoutOrder"]
       24 DUPTABLE                         R7 K11 [{"TitleAndButton", "Disclaimer", "IntegrationsDisabledNotice"}]
       25 GETUPVAL                         R8 3
       26 GETUPVAL                         R9 4
       27 DUPTABLE                         R10 K13 [{["LayoutOrder"], ["tag"] = "row align-y-center gap-small size-full-0 auto-y"}]
       28 MOVE                             R11 R1
       29 CALL                             R11 0 1
       30 SETTABLEKS                       R11 R10 K4 ["LayoutOrder"]
       32 DUPTABLE                         R11 K17 [{"TitleText", "Spacer", "AddIntegrationButtonContainer"}]
       33 GETUPVAL                         R12 3
       34 GETUPVAL                         R13 5
       35 DUPTABLE                         R14 K20 [{["tag"] = "bold auto-xy text-title-medium text-align-x-left", ["Text"], ["LayoutOrder"]}]
       36 GETTABLEKS                       R15 R2 K21 ["ManageIntegrations"]
       38 SETTABLEKS                       R15 R14 K19 ["Text"]
       40 MOVE                             R15 R1
       41 CALL                             R15 0 1
       42 SETTABLEKS                       R15 R14 K4 ["LayoutOrder"]
       44 CALL                             R12 2 1
       45 SETTABLEKS                       R12 R11 K14 ["TitleText"]
       47 GETUPVAL                         R12 3
       48 GETUPVAL                         R13 4
       49 DUPTABLE                         R14 K23 [{["tag"] = "fill", ["LayoutOrder"]}]
       50 MOVE                             R15 R1
       51 CALL                             R15 0 1
       52 SETTABLEKS                       R15 R14 K4 ["LayoutOrder"]
       54 CALL                             R12 2 1
       55 SETTABLEKS                       R12 R11 K15 ["Spacer"]
       57 GETUPVAL                         R12 3
       58 GETUPVAL                         R13 4
       59 DUPTABLE                         R14 K26 [{["LayoutOrder"], ["tag"] = "auto-xy", ["GroupTransparency"]}]
       60 MOVE                             R15 R1
       61 CALL                             R15 0 1
       62 SETTABLEKS                       R15 R14 K4 ["LayoutOrder"]
       64 JUMPIFNOT                        R3 ; [+2]
       65 LOADN                            R15 0
       66 JUMP                             ; [+1]
       67 LOADN                            R15 1
       68 SETTABLEKS                       R15 R14 K25 ["GroupTransparency"]
       70 DUPTABLE                         R15 K28 [{"AddIntegrationButton"}]
       71 GETUPVAL                         R16 3
       72 GETUPVAL                         R17 6
       73 DUPTABLE                         R18 K32 [{"text", "size", "onActivated"}]
       74 GETTABLEKS                       R19 R2 K33 ["Add"]
       76 SETTABLEKS                       R19 R18 K29 ["text"]
       78 GETUPVAL                         R19 7
       79 GETTABLEKS                       R19 R19 K34 ["XSmall"]
       81 SETTABLEKS                       R19 R18 K30 ["size"]
       83 JUMPIFNOT                        R3 ; [+2]
       84 MOVE                             R19 R3
       85 JUMP                             ; [+1]
       86 GETUPVAL                         R19 8
       87 SETTABLEKS                       R19 R18 K31 ["onActivated"]
       89 CALL                             R16 2 1
       90 SETTABLEKS                       R16 R15 K27 ["AddIntegrationButton"]
       92 CALL                             R12 3 1
       93 SETTABLEKS                       R12 R11 K16 ["AddIntegrationButtonContainer"]
       95 CALL                             R8 3 1
       96 SETTABLEKS                       R8 R7 K8 ["TitleAndButton"]
       98 GETUPVAL                         R8 3
       99 GETUPVAL                         R9 5
      100 DUPTABLE                         R10 K36 [{["tag"] = "auto-xy text-caption-small text-wrap text-align-x-left", ["Text"], ["LayoutOrder"]}]
      101 GETTABLEKS                       R11 R2 K9 ["Disclaimer"]
      103 SETTABLEKS                       R11 R10 K19 ["Text"]
      105 MOVE                             R11 R1
      106 CALL                             R11 0 1
      107 SETTABLEKS                       R11 R10 K4 ["LayoutOrder"]
      109 CALL                             R8 2 1
      110 SETTABLEKS                       R8 R7 K9 ["Disclaimer"]
      112 GETUPVAL                         R8 3
      113 GETUPVAL                         R9 9
      114 DUPTABLE                         R10 K37 [{"LayoutOrder"}]
      115 MOVE                             R11 R1
      116 CALL                             R11 0 1
      117 SETTABLEKS                       R11 R10 K4 ["LayoutOrder"]
      119 CALL                             R8 2 1
      120 SETTABLEKS                       R8 R7 K10 ["IntegrationsDisabledNotice"]
      122 CALL                             R4 3 -1
      123 RETURN                           R4 -1

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
