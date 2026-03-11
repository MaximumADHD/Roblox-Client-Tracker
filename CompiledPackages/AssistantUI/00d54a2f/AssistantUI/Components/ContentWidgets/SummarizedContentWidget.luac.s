PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R0 K0 ["icon"]
        4 JUMPIFNOT                        R2 ; [+4]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R4 R0 K0 ["icon"]
        8 GETTABLE                         R2 R3 R4
        9 GETUPVAL                         R3 2
       10 GETUPVAL                         R4 3
       11 DUPTABLE                         R5 K3 [{"tag", "LayoutOrder"}]
       12 LOADK                            R6 K4 ["col size-full-0 auto-xy gap-small"]
       13 SETTABLEKS                       R6 R5 K1 ["tag"]
       15 GETTABLEKS                       R6 R0 K2 ["LayoutOrder"]
       17 SETTABLEKS                       R6 R5 K2 ["LayoutOrder"]
       19 DUPTABLE                         R6 K6 [{"Title"}]
       20 GETUPVAL                         R7 2
       21 GETUPVAL                         R8 3
       22 DUPTABLE                         R9 K3 [{"tag", "LayoutOrder"}]
       23 LOADK                            R10 K7 ["row gap-xsmall size-full-600 radius-medium align-y-center"]
       24 SETTABLEKS                       R10 R9 K1 ["tag"]
       26 MOVE                             R10 R1
       27 CALL                             R10 0 1
       28 SETTABLEKS                       R10 R9 K2 ["LayoutOrder"]
       30 DUPTABLE                         R10 K10 [{"Icon", "Text"}]
       31 MOVE                             R11 R2
       32 JUMPIFNOT                        R11 ; [+20]
       33 GETUPVAL                         R11 2
       34 GETUPVAL                         R12 4
       35 DUPTABLE                         R13 K13 [{"Image", "tag", "LayoutOrder", "testId"}]
       36 SETTABLEKS                       R2 R13 K11 ["Image"]
       38 LOADK                            R14 K14 ["size-300-300 anchor-center-center position-center-center content-emphasis"]
       39 SETTABLEKS                       R14 R13 K1 ["tag"]
       41 MOVE                             R14 R1
       42 CALL                             R14 0 1
       43 SETTABLEKS                       R14 R13 K2 ["LayoutOrder"]
       45 GETUPVAL                         R16 5
       46 GETTABLEKS                       R15 R16 K15 ["Summarized"]
       48 GETTABLEKS                       R14 R15 K8 ["Icon"]
       50 SETTABLEKS                       R14 R13 K12 ["testId"]
       52 CALL                             R11 2 1
       53 SETTABLEKS                       R11 R10 K8 ["Icon"]
       55 GETUPVAL                         R11 2
       56 GETUPVAL                         R12 6
       57 DUPTABLE                         R13 K16 [{"tag", "Text", "LayoutOrder"}]
       58 LOADK                            R14 K17 ["size-0-full auto-x text-label-small text-truncate-end content-emphasis"]
       59 SETTABLEKS                       R14 R13 K1 ["tag"]
       61 GETTABLEKS                       R14 R0 K18 ["summary"]
       63 SETTABLEKS                       R14 R13 K9 ["Text"]
       65 MOVE                             R14 R1
       66 CALL                             R14 0 1
       67 SETTABLEKS                       R14 R13 K2 ["LayoutOrder"]
       69 DUPTABLE                         R14 K20 [{"Shimmer"}]
       70 GETTABLEKS                       R15 R0 K21 ["generating"]
       72 JUMPIFNOT                        R15 ; [+3]
       73 GETUPVAL                         R15 2
       74 GETUPVAL                         R16 7
       75 CALL                             R15 1 1
       76 SETTABLEKS                       R15 R14 K19 ["Shimmer"]
       78 CALL                             R11 3 1
       79 SETTABLEKS                       R11 R10 K9 ["Text"]
       81 CALL                             R7 3 1
       82 SETTABLEKS                       R7 R6 K5 ["Title"]
       84 CALL                             R3 3 -1
       85 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAssistantPersistConversations is not enabled!"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 DUPTABLE                         R1 K6 [{"type", "icon", "summary"}]
        9 GETTABLEKS                       R2 R0 K3 ["type"]
       11 SETTABLEKS                       R2 R1 K3 ["type"]
       13 GETTABLEKS                       R2 R0 K4 ["icon"]
       15 SETTABLEKS                       R2 R1 K4 ["icon"]
       17 GETTABLEKS                       R2 R0 K5 ["summary"]
       19 SETTABLEKS                       R2 R1 K5 ["summary"]
       21 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAssistantPersistConversations is not enabled!"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 DUPTABLE                         R1 K6 [{"type", "icon", "summary"}]
        9 GETTABLEKS                       R2 R0 K3 ["type"]
       11 SETTABLEKS                       R2 R1 K3 ["type"]
       13 GETTABLEKS                       R2 R0 K4 ["icon"]
       15 SETTABLEKS                       R2 R1 K4 ["icon"]
       17 GETTABLEKS                       R2 R0 K5 ["summary"]
       19 SETTABLEKS                       R2 R1 K5 ["summary"]
       21 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R3 K7 ["ContentWidgetRegistry"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R4 K9 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R5 K10 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Parent"]
       32 GETTABLEKS                       R5 R6 K11 ["ReactUtils"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K12 ["Components"]
       39 GETTABLEKS                       R6 R7 K13 ["ShimmerGradient"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R8 R0 K6 ["Util"]
       46 GETTABLEKS                       R7 R8 K14 ["TestIds"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K15 ["Types"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R10 R0 K16 ["Flags"]
       58 GETTABLEKS                       R9 R10 K17 ["FFlagAssistantPersistConversations"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R11 R0 K16 ["Flags"]
       65 GETTABLEKS                       R10 R11 K18 ["FFlagAssistantRegisterWidgetsThroughTools"]
       67 CALL                             R9 1 1
       68 GETTABLEKS                       R10 R2 K19 ["Text"]
       70 GETTABLEKS                       R11 R2 K20 ["View"]
       72 GETTABLEKS                       R12 R2 K21 ["Image"]
       74 GETTABLEKS                       R13 R4 K22 ["createNextOrder"]
       76 GETTABLEKS                       R14 R3 K23 ["createElement"]
       78 DUPTABLE                         R15 K25 [{"Search"}]
       79 LOADK                            R16 K26 ["search"]
       80 SETTABLEKS                       R16 R15 K24 ["Search"]
       82 DUPTABLE                         R16 K27 [{"search"}]
       83 LOADK                            R17 K28 ["icons/common/search_small"]
       84 SETTABLEKS                       R17 R16 K26 ["search"]
       86 DUPCLOSURE                       R17 K29 [PROTO_0]
       87 CAPTURE                          VAL R13
       88 CAPTURE                          VAL R16
       89 CAPTURE                          VAL R14
       90 CAPTURE                          VAL R11
       91 CAPTURE                          VAL R12
       92 CAPTURE                          VAL R6
       93 CAPTURE                          VAL R10
       94 CAPTURE                          VAL R5
       95 DUPCLOSURE                       R18 K30 [PROTO_1]
       96 CAPTURE                          VAL R8
       97 DUPCLOSURE                       R19 K31 [PROTO_2]
       98 CAPTURE                          VAL R8
       99 DUPTABLE                         R20 K36 [{"Type", "ContentWidget", "Serialization", "Icons"}]
      100 LOADK                            R21 K37 ["Summarized"]
      101 SETTABLEKS                       R21 R20 K32 ["Type"]
      103 GETTABLEKS                       R21 R3 K38 ["memo"]
      105 MOVE                             R22 R17
      106 CALL                             R21 1 1
      107 SETTABLEKS                       R21 R20 K33 ["ContentWidget"]
      109 DUPTABLE                         R21 K41 [{"serialize", "deserialize"}]
      110 SETTABLEKS                       R18 R21 K39 ["serialize"]
      112 SETTABLEKS                       R19 R21 K40 ["deserialize"]
      114 SETTABLEKS                       R21 R20 K34 ["Serialization"]
      116 SETTABLEKS                       R15 R20 K35 ["Icons"]
      118 MOVE                             R21 R9
      119 CALL                             R21 0 1
      120 JUMPIF                           R21 ; [+7]
      121 GETTABLEKS                       R21 R1 K42 ["registerWidget_DEPRECATED"]
      123 GETTABLEKS                       R22 R20 K32 ["Type"]
      125 GETTABLEKS                       R23 R20 K33 ["ContentWidget"]
      127 CALL                             R21 2 0
      128 RETURN                           R20 1
