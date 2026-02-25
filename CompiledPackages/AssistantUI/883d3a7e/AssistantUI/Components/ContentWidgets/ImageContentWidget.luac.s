PROTO_0:
        0 DUPTABLE                         R0 K1 [{"ViewImage"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K2 ["Image"]
        3 LOADK                            R4 K0 ["ViewImage"]
        4 NAMECALL                         R1 R1 K3 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["ViewImage"]
        9 RETURN                           R0 1

PROTO_1:
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
       15 GETUPVAL                         R3 3
       16 GETUPVAL                         R5 4
       17 GETTABLEKS                       R4 R5 K3 ["Root"]
       19 DUPTABLE                         R5 K8 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
       20 GETTABLEKS                       R6 R0 K4 ["LayoutOrder"]
       22 SETTABLEKS                       R6 R5 K4 ["LayoutOrder"]
       24 GETTABLEKS                       R6 R0 K5 ["expanded"]
       26 SETTABLEKS                       R6 R5 K5 ["expanded"]
       28 GETTABLEKS                       R6 R0 K6 ["contentId"]
       30 SETTABLEKS                       R6 R5 K6 ["contentId"]
       32 GETTABLEKS                       R6 R0 K7 ["editThisContent"]
       34 SETTABLEKS                       R6 R5 K7 ["editThisContent"]
       36 DUPTABLE                         R6 K11 [{"Header", "Content"}]
       37 GETUPVAL                         R7 3
       38 GETUPVAL                         R9 4
       39 GETTABLEKS                       R8 R9 K9 ["Header"]
       41 DUPTABLE                         R9 K13 [{"LayoutOrder", "testId"}]
       42 MOVE                             R10 R2
       43 CALL                             R10 0 1
       44 SETTABLEKS                       R10 R9 K4 ["LayoutOrder"]
       46 GETUPVAL                         R12 5
       47 GETTABLEKS                       R11 R12 K14 ["ImageContent"]
       49 GETTABLEKS                       R10 R11 K15 ["Expand"]
       51 SETTABLEKS                       R10 R9 K12 ["testId"]
       53 DUPTABLE                         R10 K17 [{"Text"}]
       54 GETUPVAL                         R11 3
       55 GETUPVAL                         R12 6
       56 DUPTABLE                         R13 K19 [{"tag", "Text", "LayoutOrder"}]
       57 LOADK                            R14 K20 ["size-0-full auto-x text-label-small content-default text-truncate-end"]
       58 SETTABLEKS                       R14 R13 K18 ["tag"]
       60 GETTABLEKS                       R14 R1 K21 ["ViewImage"]
       62 SETTABLEKS                       R14 R13 K16 ["Text"]
       64 MOVE                             R14 R2
       65 CALL                             R14 0 1
       66 SETTABLEKS                       R14 R13 K4 ["LayoutOrder"]
       68 CALL                             R11 2 1
       69 SETTABLEKS                       R11 R10 K16 ["Text"]
       71 CALL                             R7 3 1
       72 SETTABLEKS                       R7 R6 K9 ["Header"]
       74 GETUPVAL                         R7 3
       75 GETUPVAL                         R9 4
       76 GETTABLEKS                       R8 R9 K10 ["Content"]
       78 DUPTABLE                         R9 K23 [{"tag", "LayoutOrder", "UseVisible"}]
       79 LOADK                            R10 K24 ["col size-0-0 fill auto-y radius-small"]
       80 SETTABLEKS                       R10 R9 K18 ["tag"]
       82 MOVE                             R10 R2
       83 CALL                             R10 0 1
       84 SETTABLEKS                       R10 R9 K4 ["LayoutOrder"]
       86 LOADB                            R10 1
       87 SETTABLEKS                       R10 R9 K22 ["UseVisible"]
       89 DUPTABLE                         R10 K26 [{"Image"}]
       90 GETUPVAL                         R11 3
       91 GETUPVAL                         R12 7
       92 DUPTABLE                         R13 K28 [{"imageContent", "LayoutOrder"}]
       93 GETTABLEKS                       R14 R0 K27 ["imageContent"]
       95 SETTABLEKS                       R14 R13 K27 ["imageContent"]
       97 MOVE                             R14 R2
       98 CALL                             R14 0 1
       99 SETTABLEKS                       R14 R13 K4 ["LayoutOrder"]
      101 CALL                             R11 2 1
      102 SETTABLEKS                       R11 R10 K25 ["Image"]
      104 CALL                             R7 3 1
      105 SETTABLEKS                       R7 R6 K10 ["Content"]
      107 CALL                             R3 3 -1
      108 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R3 K7 ["Accordion"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Util"]
       18 GETTABLEKS                       R3 R4 K9 ["ContentWidgetRegistry"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Parent"]
       25 GETTABLEKS                       R4 R5 K11 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Components"]
       32 GETTABLEKS                       R5 R6 K12 ["ImageContent"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K10 ["Parent"]
       39 GETTABLEKS                       R6 R7 K13 ["React"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R8 R0 K10 ["Parent"]
       46 GETTABLEKS                       R7 R8 K14 ["ReactUtils"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R9 R0 K8 ["Util"]
       53 GETTABLEKS                       R8 R9 K15 ["TestIds"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R11 R0 K16 ["Resources"]
       60 GETTABLEKS                       R10 R11 K17 ["Localization"]
       62 GETTABLEKS                       R9 R10 K18 ["Translator"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K19 ["Types"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R12 R0 K20 ["Flags"]
       74 GETTABLEKS                       R11 R12 K21 ["FFlagAssistantRegisterWidgetsThroughTools"]
       76 CALL                             R10 1 1
       77 GETTABLEKS                       R11 R3 K22 ["Text"]
       79 GETTABLEKS                       R12 R6 K23 ["createNextOrder"]
       81 GETTABLEKS                       R13 R5 K24 ["createElement"]
       83 DUPCLOSURE                       R14 K25 [PROTO_1]
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R8
       86 CAPTURE                          VAL R12
       87 CAPTURE                          VAL R13
       88 CAPTURE                          VAL R1
       89 CAPTURE                          VAL R7
       90 CAPTURE                          VAL R11
       91 CAPTURE                          VAL R4
       92 DUPTABLE                         R15 K28 [{"Type", "ContentWidget"}]
       93 LOADK                            R16 K29 ["Image"]
       94 SETTABLEKS                       R16 R15 K26 ["Type"]
       96 GETTABLEKS                       R16 R5 K30 ["memo"]
       98 MOVE                             R17 R14
       99 CALL                             R16 1 1
      100 SETTABLEKS                       R16 R15 K27 ["ContentWidget"]
      102 MOVE                             R16 R10
      103 CALL                             R16 0 1
      104 JUMPIF                           R16 ; [+7]
      105 GETTABLEKS                       R16 R2 K31 ["registerWidget"]
      107 GETTABLEKS                       R17 R15 K26 ["Type"]
      109 GETTABLEKS                       R18 R15 K27 ["ContentWidget"]
      111 CALL                             R16 2 0
      112 RETURN                           R15 1
