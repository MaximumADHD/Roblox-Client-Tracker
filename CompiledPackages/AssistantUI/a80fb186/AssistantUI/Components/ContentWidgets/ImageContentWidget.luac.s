PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKN                    R0 K0 [1] ; [+19]
        3 DUPTABLE                         R0 K2 [{"AttachmentTitle"}]
        4 GETUPVAL                         R1 1
        5 LOADK                            R3 K3 ["Image"]
        6 LOADK                            R4 K4 ["ViewImage"]
        7 DUPTABLE                         R5 K6 [{"count"}]
        8 GETUPVAL                         R7 0
        9 FASTCALL1                        TOSTRING R7 ; [+2]
       10 GETIMPORT                        R6 K8 [tostring]
       12 CALL                             R6 1 1
       13 SETTABLEKS                       R6 R5 K5 ["count"]
       15 NAMECALL                         R1 R1 K9 ["getText"]
       17 CALL                             R1 4 1
       18 SETTABLEKS                       R1 R0 K1 ["AttachmentTitle"]
       20 RETURN                           R0 1
       21 DUPTABLE                         R0 K2 [{"AttachmentTitle"}]
       22 GETUPVAL                         R1 1
       23 LOADK                            R3 K3 ["Image"]
       24 LOADK                            R4 K10 ["ViewImages"]
       25 DUPTABLE                         R5 K6 [{"count"}]
       26 GETUPVAL                         R7 0
       27 FASTCALL1                        TOSTRING R7 ; [+2]
       28 GETIMPORT                        R6 K8 [tostring]
       30 CALL                             R6 1 1
       31 SETTABLEKS                       R6 R5 K5 ["count"]
       33 NAMECALL                         R1 R1 K9 ["getText"]
       35 CALL                             R1 4 1
       36 SETTABLEKS                       R1 R0 K1 ["AttachmentTitle"]
       38 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["imageContents"]
        2 LENGTH                           R2 R1
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K1 ["useMemo"]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          VAL R2
        8 CAPTURE                          UPVAL U1
        9 NEWTABLE                         R5 0 2
       11 GETUPVAL                         R7 1
       12 GETTABLEKS                       R6 R7 K2 ["locale"]
       14 MOVE                             R7 R2
       15 SETLIST                          R5 R6 2 [1]
       17 CALL                             R3 2 1
       18 GETUPVAL                         R4 2
       19 CALL                             R4 0 1
       20 NEWTABLE                         R5 0 0
       22 MOVE                             R6 R1
       23 LOADNIL                          R7
       24 LOADNIL                          R8
       25 FORGPREP                         R6
       26 LOADK                            R12 K3 ["Image_%*"]
       27 MOVE                             R14 R9
       28 NAMECALL                         R12 R12 K4 ["format"]
       30 CALL                             R12 2 1
       31 MOVE                             R11 R12
       32 GETUPVAL                         R12 3
       33 GETUPVAL                         R13 4
       34 DUPTABLE                         R14 K8 [{"imageContent", "style", "LayoutOrder"}]
       35 SETTABLEKS                       R10 R14 K5 ["imageContent"]
       37 LOADK                            R15 K9 ["attachment"]
       38 SETTABLEKS                       R15 R14 K6 ["style"]
       40 SETTABLEKS                       R9 R14 K7 ["LayoutOrder"]
       42 CALL                             R12 2 1
       43 SETTABLE                         R12 R5 R11
       44 FORGLOOP                         R6 2 ; [-19]
       46 GETUPVAL                         R6 3
       47 LOADK                            R7 K10 ["UIListLayout"]
       48 DUPTABLE                         R8 K14 [{"FillDirection", "SortOrder", "Padding"}]
       49 GETIMPORT                        R9 K17 [Enum.FillDirection.Horizontal]
       51 SETTABLEKS                       R9 R8 K11 ["FillDirection"]
       53 GETIMPORT                        R9 K18 [Enum.SortOrder.LayoutOrder]
       55 SETTABLEKS                       R9 R8 K12 ["SortOrder"]
       57 GETIMPORT                        R9 K21 [UDim.new]
       59 LOADN                            R10 0
       60 LOADN                            R11 8
       61 CALL                             R9 2 1
       62 SETTABLEKS                       R9 R8 K13 ["Padding"]
       64 CALL                             R6 2 1
       65 SETTABLEKS                       R6 R5 K10 ["UIListLayout"]
       67 GETUPVAL                         R6 3
       68 GETUPVAL                         R8 5
       69 GETTABLEKS                       R7 R8 K22 ["Root"]
       71 DUPTABLE                         R8 K27 [{"tag", "LayoutOrder", "expanded", "contentId", "editThisContent"}]
       72 LOADK                            R9 K28 ["col size-0-0 gap-small auto-xy"]
       73 SETTABLEKS                       R9 R8 K23 ["tag"]
       75 GETTABLEKS                       R9 R0 K7 ["LayoutOrder"]
       77 SETTABLEKS                       R9 R8 K7 ["LayoutOrder"]
       79 GETTABLEKS                       R9 R0 K24 ["expanded"]
       81 SETTABLEKS                       R9 R8 K24 ["expanded"]
       83 GETTABLEKS                       R9 R0 K25 ["contentId"]
       85 SETTABLEKS                       R9 R8 K25 ["contentId"]
       87 GETTABLEKS                       R9 R0 K26 ["editThisContent"]
       89 SETTABLEKS                       R9 R8 K26 ["editThisContent"]
       91 DUPTABLE                         R9 K31 [{"Header", "Content"}]
       92 GETUPVAL                         R10 3
       93 GETUPVAL                         R12 5
       94 GETTABLEKS                       R11 R12 K29 ["Header"]
       96 DUPTABLE                         R12 K33 [{"LayoutOrder", "testId"}]
       97 MOVE                             R13 R4
       98 CALL                             R13 0 1
       99 SETTABLEKS                       R13 R12 K7 ["LayoutOrder"]
      101 GETUPVAL                         R15 6
      102 GETTABLEKS                       R14 R15 K34 ["ImageContent"]
      104 GETTABLEKS                       R13 R14 K35 ["Expand"]
      106 SETTABLEKS                       R13 R12 K32 ["testId"]
      108 DUPTABLE                         R13 K37 [{"Text"}]
      109 GETUPVAL                         R14 3
      110 GETUPVAL                         R15 7
      111 DUPTABLE                         R16 K38 [{"tag", "Text", "LayoutOrder"}]
      112 LOADK                            R17 K39 ["size-0-full auto-x padding-right-xsmall text-label-small content-default"]
      113 SETTABLEKS                       R17 R16 K23 ["tag"]
      115 GETTABLEKS                       R17 R3 K40 ["AttachmentTitle"]
      117 SETTABLEKS                       R17 R16 K36 ["Text"]
      119 MOVE                             R17 R4
      120 CALL                             R17 0 1
      121 SETTABLEKS                       R17 R16 K7 ["LayoutOrder"]
      123 CALL                             R14 2 1
      124 SETTABLEKS                       R14 R13 K36 ["Text"]
      126 CALL                             R10 3 1
      127 SETTABLEKS                       R10 R9 K29 ["Header"]
      129 GETUPVAL                         R10 3
      130 GETUPVAL                         R12 5
      131 GETTABLEKS                       R11 R12 K30 ["Content"]
      133 DUPTABLE                         R12 K42 [{"tag", "LayoutOrder", "UseVisible"}]
      134 LOADK                            R13 K43 ["size-0-0 auto-xy"]
      135 SETTABLEKS                       R13 R12 K23 ["tag"]
      137 MOVE                             R13 R4
      138 CALL                             R13 0 1
      139 SETTABLEKS                       R13 R12 K7 ["LayoutOrder"]
      141 LOADB                            R13 1
      142 SETTABLEKS                       R13 R12 K41 ["UseVisible"]
      144 DUPTABLE                         R13 K45 [{"Images"}]
      145 GETUPVAL                         R14 3
      146 GETUPVAL                         R15 8
      147 DUPTABLE                         R16 K46 [{"tag"}]
      148 LOADK                            R17 K43 ["size-0-0 auto-xy"]
      149 SETTABLEKS                       R17 R16 K23 ["tag"]
      151 MOVE                             R17 R5
      152 CALL                             R14 3 1
      153 SETTABLEKS                       R14 R13 K44 ["Images"]
      155 CALL                             R10 3 1
      156 SETTABLEKS                       R10 R9 K30 ["Content"]
      158 CALL                             R6 3 -1
      159 RETURN                           R6 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAssistantMultipleChatPersistence is not enabled!"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 DUPTABLE                         R1 K5 [{"type", "imageContents"}]
        9 GETTABLEKS                       R2 R0 K3 ["type"]
       11 SETTABLEKS                       R2 R1 K3 ["type"]
       13 GETTABLEKS                       R2 R0 K4 ["imageContents"]
       15 SETTABLEKS                       R2 R1 K4 ["imageContents"]
       17 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAssistantMultipleChatPersistence is not enabled!"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 DUPTABLE                         R1 K6 [{"type", "imageContents", "expanded"}]
        9 GETTABLEKS                       R2 R0 K3 ["type"]
       11 SETTABLEKS                       R2 R1 K3 ["type"]
       13 GETTABLEKS                       R2 R0 K4 ["imageContents"]
       15 SETTABLEKS                       R2 R1 K4 ["imageContents"]
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
       67 GETTABLEKS                       R10 R11 K20 ["FFlagAssistantMultipleChatPersistence"]
       69 CALL                             R9 1 1
       70 GETTABLEKS                       R10 R2 K21 ["Text"]
       72 GETTABLEKS                       R11 R2 K22 ["View"]
       74 GETTABLEKS                       R12 R5 K23 ["createNextOrder"]
       76 GETTABLEKS                       R13 R4 K24 ["createElement"]
       78 DUPCLOSURE                       R14 K25 [PROTO_1]
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R7
       81 CAPTURE                          VAL R12
       82 CAPTURE                          VAL R13
       83 CAPTURE                          VAL R3
       84 CAPTURE                          VAL R1
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R10
       87 CAPTURE                          VAL R11
       88 DUPCLOSURE                       R15 K26 [PROTO_2]
       89 CAPTURE                          VAL R9
       90 DUPCLOSURE                       R16 K27 [PROTO_3]
       91 CAPTURE                          VAL R9
       92 DUPTABLE                         R17 K31 [{"Type", "ContentWidget", "Serialization"}]
       93 LOADK                            R18 K32 ["Image"]
       94 SETTABLEKS                       R18 R17 K28 ["Type"]
       96 GETTABLEKS                       R18 R4 K33 ["memo"]
       98 MOVE                             R19 R14
       99 CALL                             R18 1 1
      100 SETTABLEKS                       R18 R17 K29 ["ContentWidget"]
      102 DUPTABLE                         R18 K36 [{"serialize", "deserialize"}]
      103 SETTABLEKS                       R15 R18 K34 ["serialize"]
      105 SETTABLEKS                       R16 R18 K35 ["deserialize"]
      107 SETTABLEKS                       R18 R17 K30 ["Serialization"]
      109 RETURN                           R17 1
