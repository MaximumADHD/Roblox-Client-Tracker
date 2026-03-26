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
       79 GETUPVAL                         R11 7
       80 CALL                             R11 0 1
       81 JUMPIF                           R11 ; [+3]
       82 GETUPVAL                         R11 8
       83 CALL                             R11 0 1
       84 JUMPIFNOT                        R11 ; [+2]
       85 LOADK                            R10 K24 ["col size-0-0 fill auto-xy radius-small"]
       86 JUMP                             ; [+1]
       87 LOADK                            R10 K25 ["col size-0-0 fill auto-y radius-small"]
       88 SETTABLEKS                       R10 R9 K18 ["tag"]
       90 MOVE                             R10 R2
       91 CALL                             R10 0 1
       92 SETTABLEKS                       R10 R9 K4 ["LayoutOrder"]
       94 LOADB                            R10 1
       95 SETTABLEKS                       R10 R9 K22 ["UseVisible"]
       97 DUPTABLE                         R10 K27 [{"Image"}]
       98 GETUPVAL                         R11 3
       99 GETUPVAL                         R12 9
      100 DUPTABLE                         R13 K30 [{"imageContent", "maxSize", "LayoutOrder"}]
      101 GETTABLEKS                       R14 R0 K28 ["imageContent"]
      103 SETTABLEKS                       R14 R13 K28 ["imageContent"]
      105 GETUPVAL                         R15 7
      106 CALL                             R15 0 1
      107 JUMPIF                           R15 ; [+3]
      108 GETUPVAL                         R15 8
      109 CALL                             R15 0 1
      110 JUMPIFNOT                        R15 ; [+6]
      111 GETIMPORT                        R14 K33 [Vector2.new]
      113 LOADN                            R15 100
      114 LOADN                            R16 100
      115 CALL                             R14 2 1
      116 JUMP                             ; [+1]
      117 LOADNIL                          R14
      118 SETTABLEKS                       R14 R13 K29 ["maxSize"]
      120 MOVE                             R14 R2
      121 CALL                             R14 0 1
      122 SETTABLEKS                       R14 R13 K4 ["LayoutOrder"]
      124 CALL                             R11 2 1
      125 SETTABLEKS                       R11 R10 K26 ["Image"]
      127 CALL                             R7 3 1
      128 SETTABLEKS                       R7 R6 K10 ["Content"]
      130 CALL                             R3 3 -1
      131 RETURN                           R3 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAssistantPersistConversations is not enabled!"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 DUPTABLE                         R1 K5 [{"type", "imageContent"}]
        9 GETTABLEKS                       R2 R0 K3 ["type"]
       11 SETTABLEKS                       R2 R1 K3 ["type"]
       13 GETTABLEKS                       R2 R0 K4 ["imageContent"]
       15 SETTABLEKS                       R2 R1 K4 ["imageContent"]
       17 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAssistantPersistConversations is not enabled!"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 DUPTABLE                         R1 K6 [{"type", "imageContent", "expanded"}]
        9 GETTABLEKS                       R2 R0 K3 ["type"]
       11 SETTABLEKS                       R2 R1 K3 ["type"]
       13 GETTABLEKS                       R2 R0 K4 ["imageContent"]
       15 SETTABLEKS                       R2 R1 K4 ["imageContent"]
       17 LOADB                            R2 0
       18 SETTABLEKS                       R2 R1 K5 ["expanded"]
       20 RETURN                           R1 1

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
       16 GETTABLEKS                       R4 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R4 K9 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Components"]
       25 GETTABLEKS                       R4 R5 K10 ["ImageContent"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Parent"]
       32 GETTABLEKS                       R5 R6 K11 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K8 ["Parent"]
       39 GETTABLEKS                       R6 R7 K12 ["ReactUtils"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R8 R0 K13 ["Util"]
       46 GETTABLEKS                       R7 R8 K14 ["TestIds"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R10 R0 K15 ["Resources"]
       53 GETTABLEKS                       R9 R10 K16 ["Localization"]
       55 GETTABLEKS                       R8 R9 K17 ["Translator"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K18 ["Types"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R11 R0 K19 ["Flags"]
       67 GETTABLEKS                       R10 R11 K20 ["FFlagAssistantPersistConversations"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R12 R0 K19 ["Flags"]
       74 GETTABLEKS                       R11 R12 K21 ["FFlagEnablePrimitiveGenTool"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R13 R0 K19 ["Flags"]
       81 GETTABLEKS                       R12 R13 K22 ["FFlagMaxSizeForImageContent"]
       83 CALL                             R11 1 1
       84 GETTABLEKS                       R12 R2 K23 ["Text"]
       86 GETTABLEKS                       R13 R5 K24 ["createNextOrder"]
       88 GETTABLEKS                       R14 R4 K25 ["createElement"]
       90 DUPCLOSURE                       R15 K26 [PROTO_1]
       91 CAPTURE                          VAL R4
       92 CAPTURE                          VAL R7
       93 CAPTURE                          VAL R13
       94 CAPTURE                          VAL R14
       95 CAPTURE                          VAL R1
       96 CAPTURE                          VAL R6
       97 CAPTURE                          VAL R12
       98 CAPTURE                          VAL R11
       99 CAPTURE                          VAL R10
      100 CAPTURE                          VAL R3
      101 DUPCLOSURE                       R16 K27 [PROTO_2]
      102 CAPTURE                          VAL R9
      103 DUPCLOSURE                       R17 K28 [PROTO_3]
      104 CAPTURE                          VAL R9
      105 DUPTABLE                         R18 K32 [{"Type", "ContentWidget", "Serialization"}]
      106 LOADK                            R19 K33 ["Image"]
      107 SETTABLEKS                       R19 R18 K29 ["Type"]
      109 GETTABLEKS                       R19 R4 K34 ["memo"]
      111 MOVE                             R20 R15
      112 CALL                             R19 1 1
      113 SETTABLEKS                       R19 R18 K30 ["ContentWidget"]
      115 DUPTABLE                         R19 K37 [{"serialize", "deserialize"}]
      116 SETTABLEKS                       R16 R19 K35 ["serialize"]
      118 SETTABLEKS                       R17 R19 K36 ["deserialize"]
      120 SETTABLEKS                       R19 R18 K31 ["Serialization"]
      122 RETURN                           R18 1
