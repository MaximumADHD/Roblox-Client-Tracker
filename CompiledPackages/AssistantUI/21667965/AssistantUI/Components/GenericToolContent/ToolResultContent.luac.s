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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 DUPCLOSURE                       R2 K1 [PROTO_0]
        4 CAPTURE                          UPVAL U1
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 2
        7 CALL                             R2 0 1
        8 NEWTABLE                         R3 0 0
       10 GETTABLEKS                       R4 R0 K2 ["toolResult"]
       12 GETTABLEKS                       R4 R4 K3 ["content"]
       14 LOADNIL                          R5
       15 LOADNIL                          R6
       16 FORGPREP                         R4
       17 LOADNIL                          R9
       18 LENGTH                           R10 R3
       19 LOADN                            R11 0
       20 JUMPIFNOTLT                      R11 R10 ; [+23]
       22 GETUPVAL                         R10 3
       23 GETUPVAL                         R11 4
       24 DUPTABLE                         R12 K6 [{"key", "LayoutOrder"}]
       25 LOADK                            R13 K7 ["%*-divider"]
       26 MOVE                             R15 R7
       27 NAMECALL                         R13 R13 K8 ["format"]
       29 CALL                             R13 2 1
       30 SETTABLEKS                       R13 R12 K4 ["key"]
       32 MOVE                             R13 R2
       33 CALL                             R13 0 1
       34 SETTABLEKS                       R13 R12 K5 ["LayoutOrder"]
       36 CALL                             R10 2 1
       37 FASTCALL2                        TABLE_INSERT R3 R10 ; [+5]
       39 MOVE                             R12 R3
       40 MOVE                             R13 R10
       41 GETIMPORT                        R11 K11 [table.insert]
       43 CALL                             R11 2 0
       44 GETUPVAL                         R11 5
       45 GETTABLEKS                       R11 R11 K12 ["FFlagMCPContentNormalization"]
       47 JUMPIFNOT                        R11 ; [+4]
       48 GETUPVAL                         R10 6
       49 MOVE                             R11 R8
       50 CALL                             R10 1 1
       51 JUMP                             ; [+1]
       52 MOVE                             R10 R8
       53 GETTABLEKS                       R11 R10 K13 ["type"]
       55 JUMPIFNOTEQKS                    R11 K14 ["text"] ; [+22]
       57 GETUPVAL                         R11 3
       58 GETUPVAL                         R12 7
       59 DUPTABLE                         R13 K16 [{"key", "Text", "LayoutOrder"}]
       60 FASTCALL1                        TOSTRING R7 ; [+3]
       61 MOVE                             R15 R7
       62 GETIMPORT                        R14 K18 [tostring]
       64 CALL                             R14 1 1
       65 SETTABLEKS                       R14 R13 K4 ["key"]
       67 GETTABLEKS                       R14 R10 K14 ["text"]
       69 SETTABLEKS                       R14 R13 K15 ["Text"]
       71 MOVE                             R14 R2
       72 CALL                             R14 0 1
       73 SETTABLEKS                       R14 R13 K5 ["LayoutOrder"]
       75 CALL                             R11 2 1
       76 MOVE                             R9 R11
       77 JUMP                             ; [+62]
       78 GETTABLEKS                       R11 R10 K13 ["type"]
       80 JUMPIFNOTEQKS                    R11 K19 ["image"] ; [+20]
       82 GETUPVAL                         R11 3
       83 GETUPVAL                         R12 8
       84 DUPTABLE                         R13 K21 [{"key", "imageContent", "LayoutOrder"}]
       85 FASTCALL1                        TOSTRING R7 ; [+3]
       86 MOVE                             R15 R7
       87 GETIMPORT                        R14 K18 [tostring]
       89 CALL                             R14 1 1
       90 SETTABLEKS                       R14 R13 K4 ["key"]
       92 SETTABLEKS                       R10 R13 K20 ["imageContent"]
       94 MOVE                             R14 R2
       95 CALL                             R14 0 1
       96 SETTABLEKS                       R14 R13 K5 ["LayoutOrder"]
       98 CALL                             R11 2 1
       99 MOVE                             R9 R11
      100 JUMP                             ; [+39]
      101 GETUPVAL                         R11 5
      102 GETTABLEKS                       R11 R11 K12 ["FFlagMCPContentNormalization"]
      104 JUMPIFNOT                        R11 ; [+29]
      105 GETUPVAL                         R11 3
      106 GETUPVAL                         R12 7
      107 DUPTABLE                         R13 K16 [{"key", "Text", "LayoutOrder"}]
      108 FASTCALL1                        TOSTRING R7 ; [+3]
      109 MOVE                             R15 R7
      110 GETIMPORT                        R14 K18 [tostring]
      112 CALL                             R14 1 1
      113 SETTABLEKS                       R14 R13 K4 ["key"]
      115 LOADK                            R14 K22 ["[Unsupported content type: %*]"]
      116 GETTABLEKS                       R17 R10 K13 ["type"]
      118 FASTCALL1                        TOSTRING R17 ; [+2]
      119 GETIMPORT                        R16 K18 [tostring]
      121 CALL                             R16 1 1
      122 NAMECALL                         R14 R14 K8 ["format"]
      124 CALL                             R14 2 1
      125 SETTABLEKS                       R14 R13 K15 ["Text"]
      127 MOVE                             R14 R2
      128 CALL                             R14 0 1
      129 SETTABLEKS                       R14 R13 K5 ["LayoutOrder"]
      131 CALL                             R11 2 1
      132 MOVE                             R9 R11
      133 JUMP                             ; [+6]
      134 GETUPVAL                         R11 9
      135 GETTABLEKS                       R11 R11 K23 ["assertNever"]
      137 GETTABLEKS                       R12 R10 K13 ["type"]
      139 CALL                             R11 1 0
      140 FASTCALL2                        TABLE_INSERT R3 R9 ; [+5]
      142 MOVE                             R12 R3
      143 MOVE                             R13 R9
      144 GETIMPORT                        R11 K11 [table.insert]
      146 CALL                             R11 2 0
      147 FORGLOOP                         R4 2 ; [-131]
      149 GETUPVAL                         R4 3
      150 GETUPVAL                         R5 10
      151 DUPTABLE                         R6 K25 [{"LayoutOrder", "Title"}]
      152 GETTABLEKS                       R7 R0 K5 ["LayoutOrder"]
      154 SETTABLEKS                       R7 R6 K5 ["LayoutOrder"]
      156 GETTABLEKS                       R7 R1 K26 ["Result"]
      158 SETTABLEKS                       R7 R6 K24 ["Title"]
      160 GETUPVAL                         R7 3
      161 GETUPVAL                         R8 11
      162 DUPTABLE                         R9 K29 [{["tag"] = "col gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      163 MOVE                             R10 R2
      164 CALL                             R10 0 1
      165 SETTABLEKS                       R10 R9 K5 ["LayoutOrder"]
      167 MOVE                             R10 R3
      168 CALL                             R7 3 -1
      169 CALL                             R4 -1 -1
      170 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Parent"]
       16 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Components"]
       23 GETTABLEKS                       R4 R4 K10 ["ImageContent"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K11 ["Util"]
       30 GETTABLEKS                       R5 R5 K12 ["McpContentNormalizer"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K7 ["Parent"]
       37 GETTABLEKS                       R6 R6 K13 ["React"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K7 ["Parent"]
       44 GETTABLEKS                       R7 R7 K14 ["ReactUtils"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETIMPORT                        R8 K1 [script]
       51 GETTABLEKS                       R8 R8 K7 ["Parent"]
       53 GETTABLEKS                       R8 R8 K15 ["SharedToolContent"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K16 ["Resources"]
       60 GETTABLEKS                       R9 R9 K17 ["Localization"]
       62 GETTABLEKS                       R9 R9 K18 ["Translator"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K19 ["Types"]
       69 CALL                             R9 1 1
       70 GETTABLEKS                       R10 R4 K20 ["normalizeContent"]
       72 GETTABLEKS                       R11 R7 K21 ["ToolContainer"]
       74 GETTABLEKS                       R12 R7 K22 ["ToolText"]
       76 GETTABLEKS                       R13 R2 K23 ["View"]
       78 GETTABLEKS                       R14 R2 K24 ["Divider"]
       80 GETTABLEKS                       R15 R5 K25 ["createElement"]
       82 GETTABLEKS                       R16 R6 K26 ["createNextOrder"]
       84 DUPCLOSURE                       R17 K27 [PROTO_1]
       85 CAPTURE                          VAL R5
       86 CAPTURE                          VAL R8
       87 CAPTURE                          VAL R16
       88 CAPTURE                          VAL R15
       89 CAPTURE                          VAL R14
       90 CAPTURE                          VAL R1
       91 CAPTURE                          VAL R10
       92 CAPTURE                          VAL R12
       93 CAPTURE                          VAL R3
       94 CAPTURE                          VAL R9
       95 CAPTURE                          VAL R11
       96 CAPTURE                          VAL R13
       97 GETTABLEKS                       R18 R5 K28 ["memo"]
       99 MOVE                             R19 R17
      100 CALL                             R18 1 -1
      101 RETURN                           R18 -1
