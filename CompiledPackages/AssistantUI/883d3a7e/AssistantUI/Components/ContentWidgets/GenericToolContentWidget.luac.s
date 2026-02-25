PROTO_0:
        0 DUPTABLE                         R0 K3 [{"Generating", "Calling", "Called"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K4 ["ToolContent"]
        3 LOADK                            R4 K0 ["Generating"]
        4 DUPTABLE                         R5 K6 [{"tool"}]
        5 GETUPVAL                         R6 1
        6 SETTABLEKS                       R6 R5 K5 ["tool"]
        8 NAMECALL                         R1 R1 K7 ["getText"]
       10 CALL                             R1 4 1
       11 SETTABLEKS                       R1 R0 K0 ["Generating"]
       13 GETUPVAL                         R1 0
       14 LOADK                            R3 K4 ["ToolContent"]
       15 LOADK                            R4 K1 ["Calling"]
       16 DUPTABLE                         R5 K6 [{"tool"}]
       17 GETUPVAL                         R6 1
       18 SETTABLEKS                       R6 R5 K5 ["tool"]
       20 NAMECALL                         R1 R1 K7 ["getText"]
       22 CALL                             R1 4 1
       23 SETTABLEKS                       R1 R0 K1 ["Calling"]
       25 GETUPVAL                         R1 0
       26 LOADK                            R3 K4 ["ToolContent"]
       27 LOADK                            R4 K2 ["Called"]
       28 DUPTABLE                         R5 K6 [{"tool"}]
       29 GETUPVAL                         R6 1
       30 SETTABLEKS                       R6 R5 K5 ["tool"]
       32 NAMECALL                         R1 R1 K7 ["getText"]
       34 CALL                             R1 4 1
       35 SETTABLEKS                       R1 R0 K2 ["Called"]
       37 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["toolIdentifier"]
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R3 R4 K1 ["useMemo"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          VAL R2
       11 NEWTABLE                         R5 0 1
       13 MOVE                             R6 R2
       14 SETLIST                          R5 R6 1 [1]
       16 CALL                             R3 2 1
       17 GETUPVAL                         R4 3
       18 CALL                             R4 0 1
       19 GETUPVAL                         R5 4
       20 GETUPVAL                         R7 5
       21 GETTABLEKS                       R6 R7 K2 ["Root"]
       23 DUPTABLE                         R7 K7 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
       24 GETTABLEKS                       R8 R0 K3 ["LayoutOrder"]
       26 SETTABLEKS                       R8 R7 K3 ["LayoutOrder"]
       28 GETTABLEKS                       R8 R0 K4 ["expanded"]
       30 SETTABLEKS                       R8 R7 K4 ["expanded"]
       32 GETTABLEKS                       R8 R0 K5 ["contentId"]
       34 SETTABLEKS                       R8 R7 K5 ["contentId"]
       36 GETTABLEKS                       R8 R0 K6 ["editThisContent"]
       38 SETTABLEKS                       R8 R7 K6 ["editThisContent"]
       40 DUPTABLE                         R8 K10 [{"Header", "Content"}]
       41 GETUPVAL                         R9 4
       42 GETUPVAL                         R11 5
       43 GETTABLEKS                       R10 R11 K8 ["Header"]
       45 DUPTABLE                         R11 K11 [{"LayoutOrder"}]
       46 MOVE                             R12 R4
       47 CALL                             R12 0 1
       48 SETTABLEKS                       R12 R11 K3 ["LayoutOrder"]
       50 DUPTABLE                         R12 K13 [{"Text"}]
       51 GETUPVAL                         R13 4
       52 GETUPVAL                         R14 6
       53 DUPTABLE                         R15 K15 [{"tag", "Text", "LayoutOrder"}]
       54 LOADK                            R16 K16 ["size-0-full auto-x text-label-small content-default text-truncate-end"]
       55 SETTABLEKS                       R16 R15 K14 ["tag"]
       57 GETTABLEKS                       R17 R0 K17 ["toolResult"]
       59 JUMPIFNOT                        R17 ; [+3]
       60 GETTABLEKS                       R16 R3 K18 ["Called"]
       62 JUMP                             ; [+8]
       63 GETTABLEKS                       R17 R0 K19 ["toolUse"]
       65 JUMPIFNOT                        R17 ; [+3]
       66 GETTABLEKS                       R16 R3 K20 ["Calling"]
       68 JUMP                             ; [+2]
       69 GETTABLEKS                       R16 R3 K21 ["Generating"]
       71 SETTABLEKS                       R16 R15 K12 ["Text"]
       73 MOVE                             R16 R4
       74 CALL                             R16 0 1
       75 SETTABLEKS                       R16 R15 K3 ["LayoutOrder"]
       77 DUPTABLE                         R16 K23 [{"Shimmer"}]
       78 GETTABLEKS                       R18 R0 K24 ["generating"]
       80 JUMPIF                           R18 ; [+6]
       81 GETTABLEKS                       R18 R0 K19 ["toolUse"]
       83 JUMPIFNOT                        R18 ; [+7]
       84 GETTABLEKS                       R18 R0 K17 ["toolResult"]
       86 JUMPIF                           R18 ; [+4]
       87 GETUPVAL                         R17 4
       88 GETUPVAL                         R18 7
       89 CALL                             R17 1 1
       90 JUMP                             ; [+1]
       91 LOADNIL                          R17
       92 SETTABLEKS                       R17 R16 K22 ["Shimmer"]
       94 CALL                             R13 3 1
       95 SETTABLEKS                       R13 R12 K12 ["Text"]
       97 CALL                             R9 3 1
       98 SETTABLEKS                       R9 R8 K8 ["Header"]
      100 GETUPVAL                         R9 4
      101 GETUPVAL                         R11 5
      102 GETTABLEKS                       R10 R11 K9 ["Content"]
      104 DUPTABLE                         R11 K26 [{"tag", "LayoutOrder", "UseVisible"}]
      105 LOADK                            R12 K27 ["col size-0-0 fill auto-y gap-small"]
      106 SETTABLEKS                       R12 R11 K14 ["tag"]
      108 MOVE                             R12 R4
      109 CALL                             R12 0 1
      110 SETTABLEKS                       R12 R11 K3 ["LayoutOrder"]
      112 LOADB                            R12 1
      113 SETTABLEKS                       R12 R11 K25 ["UseVisible"]
      115 DUPTABLE                         R12 K30 [{"InputContainer", "ResultContainer"}]
      116 GETTABLEKS                       R13 R0 K19 ["toolUse"]
      118 JUMPIFNOT                        R13 ; [+26]
      119 GETUPVAL                         R13 4
      120 GETUPVAL                         R14 8
      121 DUPTABLE                         R15 K31 [{"tag", "LayoutOrder"}]
      122 LOADK                            R16 K32 ["size-full-0 auto-y"]
      123 SETTABLEKS                       R16 R15 K14 ["tag"]
      125 MOVE                             R16 R4
      126 CALL                             R16 0 1
      127 SETTABLEKS                       R16 R15 K3 ["LayoutOrder"]
      129 DUPTABLE                         R16 K34 [{"Input"}]
      130 GETUPVAL                         R17 4
      131 GETUPVAL                         R18 9
      132 DUPTABLE                         R19 K35 [{"toolUse", "LayoutOrder"}]
      133 GETTABLEKS                       R20 R0 K19 ["toolUse"]
      135 SETTABLEKS                       R20 R19 K19 ["toolUse"]
      137 MOVE                             R20 R4
      138 CALL                             R20 0 1
      139 SETTABLEKS                       R20 R19 K3 ["LayoutOrder"]
      141 CALL                             R17 2 1
      142 SETTABLEKS                       R17 R16 K33 ["Input"]
      144 CALL                             R13 3 1
      145 SETTABLEKS                       R13 R12 K28 ["InputContainer"]
      147 GETTABLEKS                       R13 R0 K17 ["toolResult"]
      149 JUMPIFNOT                        R13 ; [+26]
      150 GETUPVAL                         R13 4
      151 GETUPVAL                         R14 8
      152 DUPTABLE                         R15 K31 [{"tag", "LayoutOrder"}]
      153 LOADK                            R16 K32 ["size-full-0 auto-y"]
      154 SETTABLEKS                       R16 R15 K14 ["tag"]
      156 MOVE                             R16 R4
      157 CALL                             R16 0 1
      158 SETTABLEKS                       R16 R15 K3 ["LayoutOrder"]
      160 DUPTABLE                         R16 K37 [{"Result"}]
      161 GETUPVAL                         R17 4
      162 GETUPVAL                         R18 10
      163 DUPTABLE                         R19 K38 [{"toolResult", "LayoutOrder"}]
      164 GETTABLEKS                       R20 R0 K17 ["toolResult"]
      166 SETTABLEKS                       R20 R19 K17 ["toolResult"]
      168 MOVE                             R20 R4
      169 CALL                             R20 0 1
      170 SETTABLEKS                       R20 R19 K3 ["LayoutOrder"]
      172 CALL                             R17 2 1
      173 SETTABLEKS                       R17 R16 K36 ["Result"]
      175 CALL                             R13 3 1
      176 SETTABLEKS                       R13 R12 K29 ["ResultContainer"]
      178 CALL                             R9 3 1
      179 SETTABLEKS                       R9 R8 K9 ["Content"]
      181 CALL                             R5 3 -1
      182 RETURN                           R5 -1

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
       32 GETTABLEKS                       R5 R6 K12 ["GenericToolContent"]
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
       58 GETTABLEKS                       R11 R0 K16 ["Resources"]
       60 GETTABLEKS                       R10 R11 K17 ["Localization"]
       62 GETTABLEKS                       R9 R10 K18 ["Translator"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K19 ["Types"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R12 R0 K20 ["Hooks"]
       74 GETTABLEKS                       R11 R12 K21 ["useToolDisplayName"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R13 R0 K22 ["Flags"]
       81 GETTABLEKS                       R12 R13 K23 ["FFlagAssistantRegisterWidgetsThroughTools"]
       83 CALL                             R11 1 1
       84 GETTABLEKS                       R12 R4 K24 ["ToolInputContent"]
       86 GETTABLEKS                       R13 R4 K25 ["ToolResultContent"]
       88 GETTABLEKS                       R14 R3 K26 ["View"]
       90 GETTABLEKS                       R15 R3 K27 ["Text"]
       92 GETTABLEKS                       R16 R5 K28 ["createElement"]
       94 GETTABLEKS                       R17 R6 K29 ["createNextOrder"]
       96 DUPCLOSURE                       R18 K30 [PROTO_1]
       97 CAPTURE                          VAL R10
       98 CAPTURE                          VAL R5
       99 CAPTURE                          VAL R8
      100 CAPTURE                          VAL R17
      101 CAPTURE                          VAL R16
      102 CAPTURE                          VAL R1
      103 CAPTURE                          VAL R15
      104 CAPTURE                          VAL R7
      105 CAPTURE                          VAL R14
      106 CAPTURE                          VAL R12
      107 CAPTURE                          VAL R13
      108 DUPTABLE                         R19 K33 [{"Type", "ContentWidget"}]
      109 LOADK                            R20 K34 ["GenericTool"]
      110 SETTABLEKS                       R20 R19 K31 ["Type"]
      112 GETTABLEKS                       R20 R5 K35 ["memo"]
      114 MOVE                             R21 R18
      115 CALL                             R20 1 1
      116 SETTABLEKS                       R20 R19 K32 ["ContentWidget"]
      118 MOVE                             R20 R11
      119 CALL                             R20 0 1
      120 JUMPIF                           R20 ; [+7]
      121 GETTABLEKS                       R20 R2 K36 ["registerWidget"]
      123 GETTABLEKS                       R21 R19 K31 ["Type"]
      125 GETTABLEKS                       R22 R19 K32 ["ContentWidget"]
      127 CALL                             R20 2 0
      128 RETURN                           R19 1
