PROTO_0:
        0 DUPTABLE                         R0 K1 [{"Result"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K2 ["ToolContent"]
        3 LOADK                            R4 K0 ["Result"]
        4 NAMECALL                         R1 R1 K3 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Result"]
        9 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useMemo"]
        3 DUPCLOSURE                       R2 K1 [PROTO_0]
        4 CAPTURE                          UPVAL U1
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 2
        7 CALL                             R2 0 1
        8 NEWTABLE                         R3 0 0
       10 GETTABLEKS                       R7 R0 K2 ["toolResult"]
       12 GETTABLEKS                       R4 R7 K3 ["content"]
       14 LOADNIL                          R5
       15 LOADNIL                          R6
       16 FORGPREP                         R4
       17 LOADNIL                          R9
       18 LENGTH                           R10 R3
       19 LOADN                            R11 0
       20 JUMPIFNOTLT                      R11 R10 ; [+29]
       22 GETUPVAL                         R10 3
       23 GETUPVAL                         R11 4
       24 DUPTABLE                         R12 K6 [{"key", "LayoutOrder"}]
       25 GETUPVAL                         R14 5
       26 CALL                             R14 0 1
       27 JUMPIFNOT                        R14 ; [+7]
       28 LOADK                            R14 K7 ["%*-divider"]
       29 MOVE                             R16 R7
       30 NAMECALL                         R14 R14 K8 ["format"]
       32 CALL                             R14 2 1
       33 MOVE                             R13 R14
       34 JUMP                             ; [+1]
       35 LOADNIL                          R13
       36 SETTABLEKS                       R13 R12 K4 ["key"]
       38 MOVE                             R13 R2
       39 CALL                             R13 0 1
       40 SETTABLEKS                       R13 R12 K5 ["LayoutOrder"]
       42 CALL                             R10 2 1
       43 FASTCALL2                        TABLE_INSERT R3 R10 ; [+5]
       45 MOVE                             R12 R3
       46 MOVE                             R13 R10
       47 GETIMPORT                        R11 K11 [table.insert]
       49 CALL                             R11 2 0
       50 GETUPVAL                         R11 6
       51 CALL                             R11 0 1
       52 JUMPIFNOT                        R11 ; [+4]
       53 GETUPVAL                         R10 7
       54 MOVE                             R11 R8
       55 CALL                             R10 1 1
       56 JUMP                             ; [+1]
       57 MOVE                             R10 R8
       58 GETTABLEKS                       R11 R10 K12 ["type"]
       60 JUMPIFNOTEQKS                    R11 K13 ["text"] ; [+27]
       62 GETUPVAL                         R11 3
       63 GETUPVAL                         R12 8
       64 DUPTABLE                         R13 K15 [{"key", "Text", "LayoutOrder"}]
       65 GETUPVAL                         R15 5
       66 CALL                             R15 0 1
       67 JUMPIFNOT                        R15 ; [+6]
       68 FASTCALL1                        TOSTRING R7 ; [+3]
       69 MOVE                             R15 R7
       70 GETIMPORT                        R14 K17 [tostring]
       72 CALL                             R14 1 1
       73 JUMP                             ; [+1]
       74 LOADNIL                          R14
       75 SETTABLEKS                       R14 R13 K4 ["key"]
       77 GETTABLEKS                       R14 R10 K13 ["text"]
       79 SETTABLEKS                       R14 R13 K14 ["Text"]
       81 MOVE                             R14 R2
       82 CALL                             R14 0 1
       83 SETTABLEKS                       R14 R13 K5 ["LayoutOrder"]
       85 CALL                             R11 2 1
       86 MOVE                             R9 R11
       87 JUMP                             ; [+72]
       88 GETTABLEKS                       R11 R10 K12 ["type"]
       90 JUMPIFNOTEQKS                    R11 K18 ["image"] ; [+25]
       92 GETUPVAL                         R11 3
       93 GETUPVAL                         R12 9
       94 DUPTABLE                         R13 K20 [{"key", "imageContent", "LayoutOrder"}]
       95 GETUPVAL                         R15 5
       96 CALL                             R15 0 1
       97 JUMPIFNOT                        R15 ; [+6]
       98 FASTCALL1                        TOSTRING R7 ; [+3]
       99 MOVE                             R15 R7
      100 GETIMPORT                        R14 K17 [tostring]
      102 CALL                             R14 1 1
      103 JUMP                             ; [+1]
      104 LOADNIL                          R14
      105 SETTABLEKS                       R14 R13 K4 ["key"]
      107 SETTABLEKS                       R10 R13 K19 ["imageContent"]
      109 MOVE                             R14 R2
      110 CALL                             R14 0 1
      111 SETTABLEKS                       R14 R13 K5 ["LayoutOrder"]
      113 CALL                             R11 2 1
      114 MOVE                             R9 R11
      115 JUMP                             ; [+44]
      116 GETUPVAL                         R11 6
      117 CALL                             R11 0 1
      118 JUMPIFNOT                        R11 ; [+35]
      119 GETUPVAL                         R11 3
      120 GETUPVAL                         R12 8
      121 DUPTABLE                         R13 K15 [{"key", "Text", "LayoutOrder"}]
      122 GETUPVAL                         R15 5
      123 CALL                             R15 0 1
      124 JUMPIFNOT                        R15 ; [+6]
      125 FASTCALL1                        TOSTRING R7 ; [+3]
      126 MOVE                             R15 R7
      127 GETIMPORT                        R14 K17 [tostring]
      129 CALL                             R14 1 1
      130 JUMP                             ; [+1]
      131 LOADNIL                          R14
      132 SETTABLEKS                       R14 R13 K4 ["key"]
      134 LOADK                            R15 K21 ["[Unsupported content type: %*]"]
      135 GETTABLEKS                       R18 R10 K12 ["type"]
      137 FASTCALL1                        TOSTRING R18 ; [+2]
      138 GETIMPORT                        R17 K17 [tostring]
      140 CALL                             R17 1 1
      141 NAMECALL                         R15 R15 K8 ["format"]
      143 CALL                             R15 2 1
      144 MOVE                             R14 R15
      145 SETTABLEKS                       R14 R13 K14 ["Text"]
      147 MOVE                             R14 R2
      148 CALL                             R14 0 1
      149 SETTABLEKS                       R14 R13 K5 ["LayoutOrder"]
      151 CALL                             R11 2 1
      152 MOVE                             R9 R11
      153 JUMP                             ; [+6]
      154 GETUPVAL                         R12 10
      155 GETTABLEKS                       R11 R12 K22 ["assertNever"]
      157 GETTABLEKS                       R12 R10 K12 ["type"]
      159 CALL                             R11 1 0
      160 FASTCALL2                        TABLE_INSERT R3 R9 ; [+5]
      162 MOVE                             R12 R3
      163 MOVE                             R13 R9
      164 GETIMPORT                        R11 K11 [table.insert]
      166 CALL                             R11 2 0
      167 FORGLOOP                         R4 2 ; [-151]
      169 GETUPVAL                         R4 3
      170 GETUPVAL                         R5 11
      171 DUPTABLE                         R6 K24 [{"LayoutOrder", "Title"}]
      172 GETTABLEKS                       R7 R0 K5 ["LayoutOrder"]
      174 SETTABLEKS                       R7 R6 K5 ["LayoutOrder"]
      176 GETTABLEKS                       R7 R1 K25 ["Result"]
      178 SETTABLEKS                       R7 R6 K23 ["Title"]
      180 GETUPVAL                         R7 3
      181 GETUPVAL                         R8 12
      182 DUPTABLE                         R9 K27 [{"tag", "LayoutOrder"}]
      183 LOADK                            R10 K28 ["col size-full-0 auto-y gap-small"]
      184 SETTABLEKS                       R10 R9 K26 ["tag"]
      186 MOVE                             R10 R2
      187 CALL                             R10 0 1
      188 SETTABLEKS                       R10 R9 K5 ["LayoutOrder"]
      190 MOVE                             R10 R3
      191 CALL                             R7 3 -1
      192 CALL                             R4 -1 -1
      193 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R4 K9 ["ImageContent"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Util"]
       25 GETTABLEKS                       R4 R5 K11 ["McpContentNormalizer"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Parent"]
       32 GETTABLEKS                       R5 R6 K12 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K6 ["Parent"]
       39 GETTABLEKS                       R6 R7 K13 ["ReactUtils"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETIMPORT                        R9 K1 [script]
       46 GETTABLEKS                       R8 R9 K6 ["Parent"]
       48 GETTABLEKS                       R7 R8 K14 ["SharedToolContent"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R10 R0 K15 ["Resources"]
       55 GETTABLEKS                       R9 R10 K16 ["Localization"]
       57 GETTABLEKS                       R8 R9 K17 ["Translator"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K18 ["Types"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R11 R0 K19 ["Flags"]
       69 GETTABLEKS                       R10 R11 K20 ["FFlagMCPAssistantLongRunningToolCalls"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R12 R0 K19 ["Flags"]
       76 GETTABLEKS                       R11 R12 K21 ["FFlagMCPContentNormalization"]
       78 CALL                             R10 1 1
       79 GETTABLEKS                       R11 R3 K22 ["normalizeContent"]
       81 GETTABLEKS                       R12 R6 K23 ["ToolContainer"]
       83 GETTABLEKS                       R13 R6 K24 ["ToolText"]
       85 GETTABLEKS                       R14 R1 K25 ["View"]
       87 GETTABLEKS                       R15 R1 K26 ["Divider"]
       89 GETTABLEKS                       R16 R4 K27 ["createElement"]
       91 GETTABLEKS                       R17 R5 K28 ["createNextOrder"]
       93 DUPCLOSURE                       R18 K29 [PROTO_1]
       94 CAPTURE                          VAL R4
       95 CAPTURE                          VAL R7
       96 CAPTURE                          VAL R17
       97 CAPTURE                          VAL R16
       98 CAPTURE                          VAL R15
       99 CAPTURE                          VAL R9
      100 CAPTURE                          VAL R10
      101 CAPTURE                          VAL R11
      102 CAPTURE                          VAL R13
      103 CAPTURE                          VAL R2
      104 CAPTURE                          VAL R8
      105 CAPTURE                          VAL R12
      106 CAPTURE                          VAL R14
      107 GETTABLEKS                       R19 R4 K30 ["memo"]
      109 MOVE                             R20 R18
      110 CALL                             R19 1 -1
      111 RETURN                           R19 -1
