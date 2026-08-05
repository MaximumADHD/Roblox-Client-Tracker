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
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["useMemo"]
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
       20 GETUPVAL                         R6 5
       21 GETTABLEKS                       R6 R6 K2 ["Root"]
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
       42 GETUPVAL                         R10 5
       43 GETTABLEKS                       R10 R10 K8 ["Header"]
       45 DUPTABLE                         R11 K11 [{"LayoutOrder"}]
       46 MOVE                             R12 R4
       47 CALL                             R12 0 1
       48 SETTABLEKS                       R12 R11 K3 ["LayoutOrder"]
       50 DUPTABLE                         R12 K13 [{"Text"}]
       51 GETUPVAL                         R13 4
       52 GETUPVAL                         R14 6
       53 DUPTABLE                         R15 K16 [{["tag"] = "size-0-full auto-x text-label-small text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
       54 GETTABLEKS                       R17 R0 K17 ["toolResult"]
       56 JUMPIFNOT                        R17 ; [+3]
       57 GETTABLEKS                       R16 R3 K18 ["Called"]
       59 JUMP                             ; [+8]
       60 GETTABLEKS                       R17 R0 K19 ["toolUse"]
       62 JUMPIFNOT                        R17 ; [+3]
       63 GETTABLEKS                       R16 R3 K20 ["Calling"]
       65 JUMP                             ; [+2]
       66 GETTABLEKS                       R16 R3 K21 ["Generating"]
       68 SETTABLEKS                       R16 R15 K12 ["Text"]
       70 MOVE                             R16 R4
       71 CALL                             R16 0 1
       72 SETTABLEKS                       R16 R15 K3 ["LayoutOrder"]
       74 DUPTABLE                         R16 K23 [{"Shimmer"}]
       75 GETTABLEKS                       R18 R0 K17 ["toolResult"]
       77 JUMPIF                           R18 ; [+4]
       78 GETUPVAL                         R17 4
       79 GETUPVAL                         R18 7
       80 CALL                             R17 1 1
       81 JUMP                             ; [+1]
       82 LOADNIL                          R17
       83 SETTABLEKS                       R17 R16 K22 ["Shimmer"]
       85 CALL                             R13 3 1
       86 SETTABLEKS                       R13 R12 K12 ["Text"]
       88 CALL                             R9 3 1
       89 SETTABLEKS                       R9 R8 K8 ["Header"]
       91 GETUPVAL                         R9 4
       92 GETUPVAL                         R10 5
       93 GETTABLEKS                       R10 R10 K9 ["Content"]
       95 DUPTABLE                         R11 K27 [{["tag"] = "col fill gap-small size-0-0 auto-y", ["LayoutOrder"], ["UseVisible"] = True}]
       96 MOVE                             R12 R4
       97 CALL                             R12 0 1
       98 SETTABLEKS                       R12 R11 K3 ["LayoutOrder"]
      100 DUPTABLE                         R12 K30 [{"InputContainer", "ResultContainer"}]
      101 GETTABLEKS                       R13 R0 K19 ["toolUse"]
      103 JUMPIFNOT                        R13 ; [+23]
      104 GETUPVAL                         R13 4
      105 GETUPVAL                         R14 8
      106 DUPTABLE                         R15 K32 [{["tag"] = "size-full-0 auto-y", ["LayoutOrder"]}]
      107 MOVE                             R16 R4
      108 CALL                             R16 0 1
      109 SETTABLEKS                       R16 R15 K3 ["LayoutOrder"]
      111 DUPTABLE                         R16 K34 [{"Input"}]
      112 GETUPVAL                         R17 4
      113 GETUPVAL                         R18 9
      114 DUPTABLE                         R19 K35 [{"toolUse", "LayoutOrder"}]
      115 GETTABLEKS                       R20 R0 K19 ["toolUse"]
      117 SETTABLEKS                       R20 R19 K19 ["toolUse"]
      119 MOVE                             R20 R4
      120 CALL                             R20 0 1
      121 SETTABLEKS                       R20 R19 K3 ["LayoutOrder"]
      123 CALL                             R17 2 1
      124 SETTABLEKS                       R17 R16 K33 ["Input"]
      126 CALL                             R13 3 1
      127 SETTABLEKS                       R13 R12 K28 ["InputContainer"]
      129 GETTABLEKS                       R13 R0 K17 ["toolResult"]
      131 JUMPIFNOT                        R13 ; [+23]
      132 GETUPVAL                         R13 4
      133 GETUPVAL                         R14 8
      134 DUPTABLE                         R15 K32 [{["tag"] = "size-full-0 auto-y", ["LayoutOrder"]}]
      135 MOVE                             R16 R4
      136 CALL                             R16 0 1
      137 SETTABLEKS                       R16 R15 K3 ["LayoutOrder"]
      139 DUPTABLE                         R16 K37 [{"Result"}]
      140 GETUPVAL                         R17 4
      141 GETUPVAL                         R18 10
      142 DUPTABLE                         R19 K38 [{"toolResult", "LayoutOrder"}]
      143 GETTABLEKS                       R20 R0 K17 ["toolResult"]
      145 SETTABLEKS                       R20 R19 K17 ["toolResult"]
      147 MOVE                             R20 R4
      148 CALL                             R20 0 1
      149 SETTABLEKS                       R20 R19 K3 ["LayoutOrder"]
      151 CALL                             R17 2 1
      152 SETTABLEKS                       R17 R16 K36 ["Result"]
      154 CALL                             R13 3 1
      155 SETTABLEKS                       R13 R12 K29 ["ResultContainer"]
      157 CALL                             R9 3 1
      158 SETTABLEKS                       R9 R8 K9 ["Content"]
      160 CALL                             R5 3 -1
      161 RETURN                           R5 -1

PROTO_2:
        0 DUPTABLE                         R1 K1 [{"toolIdentifier"}]
        1 GETTABLEKS                       R2 R0 K0 ["toolIdentifier"]
        3 SETTABLEKS                       R2 R1 K0 ["toolIdentifier"]
        5 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FFlagAssistantAcpHistoryCompatibility"]
        3 JUMPIF                           R2 ; [+6]
        4 DUPTABLE                         R2 K6 [{["type"] = "GenericTool", ["toolIdentifier"], ["expanded"] = False}]
        5 GETTABLEKS                       R3 R0 K3 ["toolIdentifier"]
        7 SETTABLEKS                       R3 R2 K3 ["toolIdentifier"]
        9 RETURN                           R2 1
       10 GETTABLEKS                       R2 R1 K7 ["toolUseContent"]
       12 DUPTABLE                         R3 K6 [{["type"] = "GenericTool", ["toolIdentifier"], ["expanded"] = False}]
       13 GETTABLEKS                       R4 R0 K3 ["toolIdentifier"]
       15 JUMPIF                           R4 ; [+4]
       16 MOVE                             R4 R2
       17 JUMPIFNOT                        R4 ; [+2]
       18 GETTABLEKS                       R4 R2 K8 ["name"]
       20 SETTABLEKS                       R4 R3 K3 ["toolIdentifier"]
       22 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Accordion"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Flags"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Parent"]
       23 GETTABLEKS                       R4 R4 K10 ["Foundation"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K6 ["Components"]
       30 GETTABLEKS                       R5 R5 K11 ["GenericToolContent"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K9 ["Parent"]
       37 GETTABLEKS                       R6 R6 K12 ["React"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K9 ["Parent"]
       44 GETTABLEKS                       R7 R7 K13 ["ReactUtils"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R8 R0 K14 ["Util"]
       51 GETTABLEKS                       R8 R8 K15 ["Serializer"]
       53 GETTABLEKS                       R8 R8 K16 ["SerializerTypes"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K6 ["Components"]
       60 GETTABLEKS                       R9 R9 K17 ["ShimmerGradient"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K18 ["Resources"]
       67 GETTABLEKS                       R10 R10 K19 ["Localization"]
       69 GETTABLEKS                       R10 R10 K20 ["Translator"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K21 ["Types"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R12 R0 K22 ["Hooks"]
       81 GETTABLEKS                       R12 R12 K23 ["useToolDisplayName"]
       83 CALL                             R11 1 1
       84 GETTABLEKS                       R12 R4 K24 ["ToolInputContent"]
       86 GETTABLEKS                       R13 R4 K25 ["ToolResultContent"]
       88 GETTABLEKS                       R14 R3 K26 ["View"]
       90 GETTABLEKS                       R15 R3 K27 ["Text"]
       92 GETTABLEKS                       R16 R5 K28 ["createElement"]
       94 GETTABLEKS                       R17 R6 K29 ["createNextOrder"]
       96 DUPCLOSURE                       R18 K30 [PROTO_1]
       97 CAPTURE                          VAL R11
       98 CAPTURE                          VAL R5
       99 CAPTURE                          VAL R9
      100 CAPTURE                          VAL R17
      101 CAPTURE                          VAL R16
      102 CAPTURE                          VAL R1
      103 CAPTURE                          VAL R15
      104 CAPTURE                          VAL R8
      105 CAPTURE                          VAL R14
      106 CAPTURE                          VAL R12
      107 CAPTURE                          VAL R13
      108 DUPTABLE                         R19 K33 [{"toMeta", "fromMeta"}]
      109 DUPCLOSURE                       R20 K34 [PROTO_2]
      110 SETTABLEKS                       R20 R19 K31 ["toMeta"]
      112 DUPCLOSURE                       R20 K35 [PROTO_3]
      113 CAPTURE                          VAL R2
      114 SETTABLEKS                       R20 R19 K32 ["fromMeta"]
      116 DUPTABLE                         R20 K40 [{["Type"] = "GenericTool", ["ContentWidget"], ["Serialization"]}]
      117 GETTABLEKS                       R21 R5 K41 ["memo"]
      119 MOVE                             R22 R18
      120 CALL                             R21 1 1
      121 SETTABLEKS                       R21 R20 K38 ["ContentWidget"]
      123 SETTABLEKS                       R19 R20 K39 ["Serialization"]
      125 RETURN                           R20 1
