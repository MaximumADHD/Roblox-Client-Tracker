PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["generating"]
        3 JUMPIFNOT                        R0 ; [+11]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K1 ["current"]
        7 JUMPIF                           R0 ; [+7]
        8 GETUPVAL                         R0 1
        9 GETIMPORT                        R1 K3 [tick]
       11 CALL                             R1 0 1
       12 SETTABLEKS                       R1 R0 K1 ["current"]
       14 RETURN                           R0 0
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R0 R1 K0 ["generating"]
       18 JUMPIF                           R0 ; [+8]
       19 GETUPVAL                         R1 1
       20 GETTABLEKS                       R0 R1 K1 ["current"]
       22 JUMPIFNOT                        R0 ; [+4]
       23 GETUPVAL                         R0 1
       24 LOADNIL                          R1
       25 SETTABLEKS                       R1 R0 K1 ["current"]
       27 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R2 K1 [tick]
        2 CALL                             R2 0 1
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K2 ["current"]
        6 SUB                              R1 R2 R3
        7 FASTCALL1                        MATH_FLOOR R1 ; [+2]
        8 GETIMPORT                        R0 K5 [math.floor]
       10 CALL                             R0 1 1
       11 GETUPVAL                         R1 1
       12 MOVE                             R2 R0
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["generating"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K1 ["current"]
        7 JUMPIF                           R0 ; [+1]
        8 RETURN                           R0 0
        9 LOADNIL                          R0
       10 GETIMPORT                        R2 K3 [game]
       12 LOADK                            R4 K4 ["RunService"]
       13 NAMECALL                         R2 R2 K5 ["GetService"]
       15 CALL                             R2 2 1
       16 GETTABLEKS                       R1 R2 K6 ["Heartbeat"]
       18 NEWCLOSURE                       R3 P0
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          UPVAL U2
       21 NAMECALL                         R1 R1 K7 ["Connect"]
       23 CALL                             R1 2 1
       24 MOVE                             R0 R1
       25 NEWCLOSURE                       R1 P1
       26 CAPTURE                          REF R0
       27 CLOSEUPVALS                      R0
       28 RETURN                           R1 1

PROTO_4:
        0 DUPTABLE                         R0 K2 [{"Thinking", "Title"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K0 ["Thinking"]
        3 LOADK                            R4 K3 ["Generating"]
        4 NAMECALL                         R1 R1 K4 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Thinking"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K0 ["Thinking"]
       11 LOADK                            R4 K5 ["Complete"]
       12 DUPTABLE                         R5 K7 [{"x"}]
       13 GETUPVAL                         R6 1
       14 SETTABLEKS                       R6 R5 K6 ["x"]
       16 NAMECALL                         R1 R1 K4 ["getText"]
       18 CALL                             R1 4 1
       19 SETTABLEKS                       R1 R0 K1 ["Title"]
       21 RETURN                           R0 1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["thinking"]
        2 JUMPIFNOTEQKS                    R1 K1 [""] ; [+7]
        4 GETTABLEKS                       R1 R0 K2 ["signature"]
        6 JUMPIFNOTEQKS                    R1 K1 [""] ; [+3]
        8 LOADNIL                          R1
        9 RETURN                           R1 1
       10 LOADK                            R1 K1 [""]
       11 GETTABLEKS                       R2 R0 K0 ["thinking"]
       13 JUMPIFEQKS                       R2 K1 [""] ; [+3]
       15 GETTABLEKS                       R1 R0 K0 ["thinking"]
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R2 R3 K3 ["useRef"]
       20 LOADNIL                          R3
       21 CALL                             R2 1 1
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R3 R4 K4 ["useState"]
       25 LOADN                            R4 0
       26 CALL                             R3 1 2
       27 GETUPVAL                         R6 0
       28 GETTABLEKS                       R5 R6 K5 ["useEffect"]
       30 NEWCLOSURE                       R6 P0
       31 CAPTURE                          VAL R0
       32 CAPTURE                          VAL R2
       33 NEWTABLE                         R7 0 1
       35 GETTABLEKS                       R8 R0 K6 ["generating"]
       37 SETLIST                          R7 R8 1 [1]
       39 CALL                             R5 2 0
       40 GETUPVAL                         R6 0
       41 GETTABLEKS                       R5 R6 K5 ["useEffect"]
       43 NEWCLOSURE                       R6 P1
       44 CAPTURE                          VAL R0
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R4
       47 NEWTABLE                         R7 0 1
       49 GETTABLEKS                       R8 R0 K6 ["generating"]
       51 SETLIST                          R7 R8 1 [1]
       53 CALL                             R5 2 0
       54 GETUPVAL                         R6 0
       55 GETTABLEKS                       R5 R6 K7 ["useMemo"]
       57 NEWCLOSURE                       R6 P2
       58 CAPTURE                          UPVAL U1
       59 CAPTURE                          VAL R3
       60 NEWTABLE                         R7 0 1
       62 MOVE                             R8 R3
       63 SETLIST                          R7 R8 1 [1]
       65 CALL                             R5 2 1
       66 GETUPVAL                         R6 2
       67 CALL                             R6 0 1
       68 GETUPVAL                         R7 3
       69 GETUPVAL                         R9 4
       70 GETTABLEKS                       R8 R9 K8 ["Root"]
       72 DUPTABLE                         R9 K13 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
       73 GETTABLEKS                       R10 R0 K9 ["LayoutOrder"]
       75 SETTABLEKS                       R10 R9 K9 ["LayoutOrder"]
       77 GETTABLEKS                       R10 R0 K10 ["expanded"]
       79 SETTABLEKS                       R10 R9 K10 ["expanded"]
       81 GETTABLEKS                       R10 R0 K11 ["contentId"]
       83 SETTABLEKS                       R10 R9 K11 ["contentId"]
       85 GETTABLEKS                       R10 R0 K12 ["editThisContent"]
       87 SETTABLEKS                       R10 R9 K12 ["editThisContent"]
       89 DUPTABLE                         R10 K16 [{"Header", "Content"}]
       90 GETUPVAL                         R11 3
       91 GETUPVAL                         R13 4
       92 GETTABLEKS                       R12 R13 K14 ["Header"]
       94 DUPTABLE                         R13 K18 [{"LayoutOrder", "testId"}]
       95 MOVE                             R14 R6
       96 CALL                             R14 0 1
       97 SETTABLEKS                       R14 R13 K9 ["LayoutOrder"]
       99 GETUPVAL                         R16 5
      100 GETTABLEKS                       R15 R16 K19 ["Thinking"]
      102 GETTABLEKS                       R14 R15 K20 ["Expand"]
      104 SETTABLEKS                       R14 R13 K17 ["testId"]
      106 DUPTABLE                         R14 K22 [{"Text"}]
      107 GETUPVAL                         R15 3
      108 GETUPVAL                         R16 6
      109 DUPTABLE                         R17 K24 [{"tag", "Text", "LayoutOrder"}]
      110 LOADK                            R18 K25 ["size-0-full auto-x text-label-small content-muted text-truncate-end"]
      111 SETTABLEKS                       R18 R17 K23 ["tag"]
      113 GETTABLEKS                       R19 R0 K6 ["generating"]
      115 JUMPIFNOT                        R19 ; [+3]
      116 GETTABLEKS                       R18 R5 K19 ["Thinking"]
      118 JUMP                             ; [+2]
      119 GETTABLEKS                       R18 R5 K26 ["Title"]
      121 SETTABLEKS                       R18 R17 K21 ["Text"]
      123 MOVE                             R18 R6
      124 CALL                             R18 0 1
      125 SETTABLEKS                       R18 R17 K9 ["LayoutOrder"]
      127 DUPTABLE                         R18 K28 [{"Shimmer"}]
      128 GETTABLEKS                       R19 R0 K6 ["generating"]
      130 JUMPIFNOT                        R19 ; [+3]
      131 GETUPVAL                         R19 3
      132 GETUPVAL                         R20 7
      133 CALL                             R19 1 1
      134 SETTABLEKS                       R19 R18 K27 ["Shimmer"]
      136 CALL                             R15 3 1
      137 SETTABLEKS                       R15 R14 K21 ["Text"]
      139 CALL                             R11 3 1
      140 SETTABLEKS                       R11 R10 K14 ["Header"]
      142 GETUPVAL                         R11 3
      143 GETUPVAL                         R13 4
      144 GETTABLEKS                       R12 R13 K15 ["Content"]
      146 DUPTABLE                         R13 K29 [{"tag", "LayoutOrder"}]
      147 LOADK                            R14 K30 ["col size-0-0 fill auto-y radius-small bg-shift-300"]
      148 SETTABLEKS                       R14 R13 K23 ["tag"]
      150 MOVE                             R14 R6
      151 CALL                             R14 0 1
      152 SETTABLEKS                       R14 R13 K9 ["LayoutOrder"]
      154 DUPTABLE                         R14 K32 [{"ThinkingContent"}]
      155 GETUPVAL                         R15 3
      156 GETUPVAL                         R16 8
      157 DUPTABLE                         R17 K29 [{"tag", "LayoutOrder"}]
      158 LOADK                            R18 K33 ["size-full-0 auto-y padding-small"]
      159 SETTABLEKS                       R18 R17 K23 ["tag"]
      161 MOVE                             R18 R6
      162 CALL                             R18 0 1
      163 SETTABLEKS                       R18 R17 K9 ["LayoutOrder"]
      165 DUPTABLE                         R18 K35 [{"MarkdownText"}]
      166 GETUPVAL                         R19 3
      167 GETUPVAL                         R20 9
      168 DUPTABLE                         R21 K38 [{"markdown", "messageId"}]
      169 SETTABLEKS                       R1 R21 K36 ["markdown"]
      171 GETTABLEKS                       R22 R0 K37 ["messageId"]
      173 SETTABLEKS                       R22 R21 K37 ["messageId"]
      175 CALL                             R19 2 1
      176 SETTABLEKS                       R19 R18 K34 ["MarkdownText"]
      178 CALL                             R15 3 1
      179 SETTABLEKS                       R15 R14 K31 ["ThinkingContent"]
      181 CALL                             R11 3 1
      182 SETTABLEKS                       R11 R10 K15 ["Content"]
      184 CALL                             R7 3 -1
      185 RETURN                           R7 -1

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
       32 GETTABLEKS                       R5 R6 K12 ["MarkdownText"]
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
       51 GETTABLEKS                       R9 R0 K6 ["Components"]
       53 GETTABLEKS                       R8 R9 K15 ["ShimmerGradient"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R10 R0 K8 ["Util"]
       60 GETTABLEKS                       R9 R10 K16 ["TestIds"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R12 R0 K17 ["Resources"]
       67 GETTABLEKS                       R11 R12 K18 ["Localization"]
       69 GETTABLEKS                       R10 R11 K19 ["Translator"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K20 ["Types"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R13 R0 K21 ["Flags"]
       81 GETTABLEKS                       R12 R13 K22 ["FFlagAssistantRegisterWidgetsThroughTools"]
       83 CALL                             R11 1 1
       84 GETTABLEKS                       R12 R3 K23 ["Text"]
       86 GETTABLEKS                       R13 R3 K24 ["View"]
       88 GETTABLEKS                       R14 R6 K25 ["createNextOrder"]
       90 GETTABLEKS                       R15 R5 K26 ["createElement"]
       92 DUPCLOSURE                       R16 K27 [PROTO_5]
       93 CAPTURE                          VAL R5
       94 CAPTURE                          VAL R9
       95 CAPTURE                          VAL R14
       96 CAPTURE                          VAL R15
       97 CAPTURE                          VAL R1
       98 CAPTURE                          VAL R8
       99 CAPTURE                          VAL R12
      100 CAPTURE                          VAL R7
      101 CAPTURE                          VAL R13
      102 CAPTURE                          VAL R4
      103 DUPTABLE                         R17 K30 [{"Type", "ContentWidget"}]
      104 LOADK                            R18 K31 ["Thinking"]
      105 SETTABLEKS                       R18 R17 K28 ["Type"]
      107 GETTABLEKS                       R18 R5 K32 ["memo"]
      109 MOVE                             R19 R16
      110 CALL                             R18 1 1
      111 SETTABLEKS                       R18 R17 K29 ["ContentWidget"]
      113 MOVE                             R18 R11
      114 CALL                             R18 0 1
      115 JUMPIF                           R18 ; [+7]
      116 GETTABLEKS                       R18 R2 K33 ["registerWidget"]
      118 GETTABLEKS                       R19 R17 K28 ["Type"]
      120 GETTABLEKS                       R20 R17 K29 ["ContentWidget"]
      122 CALL                             R18 2 0
      123 RETURN                           R17 1
