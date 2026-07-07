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
        0 DUPTABLE                         R2 K5 [{[1] = "GenericTool", ["toolIdentifier"], ["expanded"] = False}]
        1 GETTABLEKS                       R3 R0 K2 ["toolIdentifier"]
        3 SETTABLEKS                       R3 R2 K2 ["toolIdentifier"]
        5 RETURN                           R2 1

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
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Components"]
       25 GETTABLEKS                       R4 R4 K10 ["GenericToolContent"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Parent"]
       32 GETTABLEKS                       R5 R5 K11 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K8 ["Parent"]
       39 GETTABLEKS                       R6 R6 K12 ["ReactUtils"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K13 ["Util"]
       46 GETTABLEKS                       R7 R7 K14 ["Serializer"]
       48 GETTABLEKS                       R7 R7 K15 ["SerializerTypes"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K6 ["Components"]
       55 GETTABLEKS                       R8 R8 K16 ["ShimmerGradient"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K17 ["Resources"]
       62 GETTABLEKS                       R9 R9 K18 ["Localization"]
       64 GETTABLEKS                       R9 R9 K19 ["Translator"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R10 R0 K20 ["Types"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K21 ["Hooks"]
       76 GETTABLEKS                       R11 R11 K22 ["useToolDisplayName"]
       78 CALL                             R10 1 1
       79 GETTABLEKS                       R11 R3 K23 ["ToolInputContent"]
       81 GETTABLEKS                       R12 R3 K24 ["ToolResultContent"]
       83 GETTABLEKS                       R13 R2 K25 ["View"]
       85 GETTABLEKS                       R14 R2 K26 ["Text"]
       87 GETTABLEKS                       R15 R4 K27 ["createElement"]
       89 GETTABLEKS                       R16 R5 K28 ["createNextOrder"]
       91 DUPCLOSURE                       R17 K29 [PROTO_1]
       92 CAPTURE                          VAL R10
       93 CAPTURE                          VAL R4
       94 CAPTURE                          VAL R8
       95 CAPTURE                          VAL R16
       96 CAPTURE                          VAL R15
       97 CAPTURE                          VAL R1
       98 CAPTURE                          VAL R14
       99 CAPTURE                          VAL R7
      100 CAPTURE                          VAL R13
      101 CAPTURE                          VAL R11
      102 CAPTURE                          VAL R12
      103 DUPTABLE                         R18 K32 [{"toMeta", "fromMeta"}]
      104 DUPCLOSURE                       R19 K33 [PROTO_2]
      105 SETTABLEKS                       R19 R18 K30 ["toMeta"]
      107 DUPCLOSURE                       R19 K34 [PROTO_3]
      108 SETTABLEKS                       R19 R18 K31 ["fromMeta"]
      110 DUPTABLE                         R19 K39 [{["Type"] = "GenericTool", ["ContentWidget"], ["Serialization"]}]
      111 GETTABLEKS                       R20 R4 K40 ["memo"]
      113 MOVE                             R21 R17
      114 CALL                             R20 1 1
      115 SETTABLEKS                       R20 R19 K37 ["ContentWidget"]
      117 SETTABLEKS                       R18 R19 K38 ["Serialization"]
      119 RETURN                           R19 1
