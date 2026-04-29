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
       20 JUMPIFNOTLT                      R11 R10 ; [+24]
       22 GETUPVAL                         R10 3
       23 GETUPVAL                         R11 4
       24 DUPTABLE                         R12 K6 [{"key", "LayoutOrder"}]
       25 LOADK                            R14 K7 ["%*-divider"]
       26 MOVE                             R16 R7
       27 NAMECALL                         R14 R14 K8 ["format"]
       29 CALL                             R14 2 1
       30 MOVE                             R13 R14
       31 SETTABLEKS                       R13 R12 K4 ["key"]
       33 MOVE                             R13 R2
       34 CALL                             R13 0 1
       35 SETTABLEKS                       R13 R12 K5 ["LayoutOrder"]
       37 CALL                             R10 2 1
       38 FASTCALL2                        TABLE_INSERT R3 R10 ; [+5]
       40 MOVE                             R12 R3
       41 MOVE                             R13 R10
       42 GETIMPORT                        R11 K11 [table.insert]
       44 CALL                             R11 2 0
       45 GETUPVAL                         R11 5
       46 CALL                             R11 0 1
       47 JUMPIFNOT                        R11 ; [+4]
       48 GETUPVAL                         R10 6
       49 MOVE                             R11 R8
       50 CALL                             R10 1 1
       51 JUMP                             ; [+1]
       52 MOVE                             R10 R8
       53 GETTABLEKS                       R11 R10 K12 ["type"]
       55 JUMPIFNOTEQKS                    R11 K13 ["text"] ; [+22]
       57 GETUPVAL                         R11 3
       58 GETUPVAL                         R12 7
       59 DUPTABLE                         R13 K15 [{"key", "Text", "LayoutOrder"}]
       60 FASTCALL1                        TOSTRING R7 ; [+3]
       61 MOVE                             R15 R7
       62 GETIMPORT                        R14 K17 [tostring]
       64 CALL                             R14 1 1
       65 SETTABLEKS                       R14 R13 K4 ["key"]
       67 GETTABLEKS                       R14 R10 K13 ["text"]
       69 SETTABLEKS                       R14 R13 K14 ["Text"]
       71 MOVE                             R14 R2
       72 CALL                             R14 0 1
       73 SETTABLEKS                       R14 R13 K5 ["LayoutOrder"]
       75 CALL                             R11 2 1
       76 MOVE                             R9 R11
       77 JUMP                             ; [+62]
       78 GETTABLEKS                       R11 R10 K12 ["type"]
       80 JUMPIFNOTEQKS                    R11 K18 ["image"] ; [+20]
       82 GETUPVAL                         R11 3
       83 GETUPVAL                         R12 8
       84 DUPTABLE                         R13 K20 [{"key", "imageContent", "LayoutOrder"}]
       85 FASTCALL1                        TOSTRING R7 ; [+3]
       86 MOVE                             R15 R7
       87 GETIMPORT                        R14 K17 [tostring]
       89 CALL                             R14 1 1
       90 SETTABLEKS                       R14 R13 K4 ["key"]
       92 SETTABLEKS                       R10 R13 K19 ["imageContent"]
       94 MOVE                             R14 R2
       95 CALL                             R14 0 1
       96 SETTABLEKS                       R14 R13 K5 ["LayoutOrder"]
       98 CALL                             R11 2 1
       99 MOVE                             R9 R11
      100 JUMP                             ; [+39]
      101 GETUPVAL                         R11 5
      102 CALL                             R11 0 1
      103 JUMPIFNOT                        R11 ; [+30]
      104 GETUPVAL                         R11 3
      105 GETUPVAL                         R12 7
      106 DUPTABLE                         R13 K15 [{"key", "Text", "LayoutOrder"}]
      107 FASTCALL1                        TOSTRING R7 ; [+3]
      108 MOVE                             R15 R7
      109 GETIMPORT                        R14 K17 [tostring]
      111 CALL                             R14 1 1
      112 SETTABLEKS                       R14 R13 K4 ["key"]
      114 LOADK                            R15 K21 ["[Unsupported content type: %*]"]
      115 GETTABLEKS                       R18 R10 K12 ["type"]
      117 FASTCALL1                        TOSTRING R18 ; [+2]
      118 GETIMPORT                        R17 K17 [tostring]
      120 CALL                             R17 1 1
      121 NAMECALL                         R15 R15 K8 ["format"]
      123 CALL                             R15 2 1
      124 MOVE                             R14 R15
      125 SETTABLEKS                       R14 R13 K14 ["Text"]
      127 MOVE                             R14 R2
      128 CALL                             R14 0 1
      129 SETTABLEKS                       R14 R13 K5 ["LayoutOrder"]
      131 CALL                             R11 2 1
      132 MOVE                             R9 R11
      133 JUMP                             ; [+6]
      134 GETUPVAL                         R12 9
      135 GETTABLEKS                       R11 R12 K22 ["assertNever"]
      137 GETTABLEKS                       R12 R10 K12 ["type"]
      139 CALL                             R11 1 0
      140 FASTCALL2                        TABLE_INSERT R3 R9 ; [+5]
      142 MOVE                             R12 R3
      143 MOVE                             R13 R9
      144 GETIMPORT                        R11 K11 [table.insert]
      146 CALL                             R11 2 0
      147 FORGLOOP                         R4 2 ; [-131]
      149 GETUPVAL                         R4 3
      150 GETUPVAL                         R5 10
      151 DUPTABLE                         R6 K24 [{"LayoutOrder", "Title"}]
      152 GETTABLEKS                       R7 R0 K5 ["LayoutOrder"]
      154 SETTABLEKS                       R7 R6 K5 ["LayoutOrder"]
      156 GETTABLEKS                       R7 R1 K25 ["Result"]
      158 SETTABLEKS                       R7 R6 K23 ["Title"]
      160 GETUPVAL                         R7 3
      161 GETUPVAL                         R8 11
      162 DUPTABLE                         R9 K27 [{"tag", "LayoutOrder"}]
      163 LOADK                            R10 K28 ["col size-full-0 auto-y gap-small"]
      164 SETTABLEKS                       R10 R9 K26 ["tag"]
      166 MOVE                             R10 R2
      167 CALL                             R10 0 1
      168 SETTABLEKS                       R10 R9 K5 ["LayoutOrder"]
      170 MOVE                             R10 R3
      171 CALL                             R7 3 -1
      172 CALL                             R4 -1 -1
      173 RETURN                           R4 -1

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
       69 GETTABLEKS                       R10 R11 K20 ["FFlagMCPContentNormalization"]
       71 CALL                             R9 1 1
       72 GETTABLEKS                       R10 R3 K21 ["normalizeContent"]
       74 GETTABLEKS                       R11 R6 K22 ["ToolContainer"]
       76 GETTABLEKS                       R12 R6 K23 ["ToolText"]
       78 GETTABLEKS                       R13 R1 K24 ["View"]
       80 GETTABLEKS                       R14 R1 K25 ["Divider"]
       82 GETTABLEKS                       R15 R4 K26 ["createElement"]
       84 GETTABLEKS                       R16 R5 K27 ["createNextOrder"]
       86 DUPCLOSURE                       R17 K28 [PROTO_1]
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R7
       89 CAPTURE                          VAL R16
       90 CAPTURE                          VAL R15
       91 CAPTURE                          VAL R14
       92 CAPTURE                          VAL R9
       93 CAPTURE                          VAL R10
       94 CAPTURE                          VAL R12
       95 CAPTURE                          VAL R2
       96 CAPTURE                          VAL R8
       97 CAPTURE                          VAL R11
       98 CAPTURE                          VAL R13
       99 GETTABLEKS                       R18 R4 K29 ["memo"]
      101 MOVE                             R19 R17
      102 CALL                             R18 1 -1
      103 RETURN                           R18 -1
