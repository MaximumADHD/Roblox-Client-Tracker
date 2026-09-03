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
       46 GETTABLEKS                       R11 R11 K12 ["FFlagMCPContentNormalization"]
       48 JUMPIFNOT                        R11 ; [+4]
       49 GETUPVAL                         R10 6
       50 MOVE                             R11 R8
       51 CALL                             R10 1 1
       52 JUMP                             ; [+1]
       53 MOVE                             R10 R8
       54 GETTABLEKS                       R11 R10 K13 ["type"]
       56 JUMPIFNOTEQKS                    R11 K14 ["text"] ; [+22]
       58 GETUPVAL                         R11 3
       59 GETUPVAL                         R12 7
       60 DUPTABLE                         R13 K16 [{"key", "Text", "LayoutOrder"}]
       61 FASTCALL1                        TOSTRING R7 ; [+3]
       62 MOVE                             R15 R7
       63 GETIMPORT                        R14 K18 [tostring]
       65 CALL                             R14 1 1
       66 SETTABLEKS                       R14 R13 K4 ["key"]
       68 GETTABLEKS                       R14 R10 K14 ["text"]
       70 SETTABLEKS                       R14 R13 K15 ["Text"]
       72 MOVE                             R14 R2
       73 CALL                             R14 0 1
       74 SETTABLEKS                       R14 R13 K5 ["LayoutOrder"]
       76 CALL                             R11 2 1
       77 MOVE                             R9 R11
       78 JUMP                             ; [+63]
       79 GETTABLEKS                       R11 R10 K13 ["type"]
       81 JUMPIFNOTEQKS                    R11 K19 ["image"] ; [+20]
       83 GETUPVAL                         R11 3
       84 GETUPVAL                         R12 8
       85 DUPTABLE                         R13 K21 [{"key", "imageContent", "LayoutOrder"}]
       86 FASTCALL1                        TOSTRING R7 ; [+3]
       87 MOVE                             R15 R7
       88 GETIMPORT                        R14 K18 [tostring]
       90 CALL                             R14 1 1
       91 SETTABLEKS                       R14 R13 K4 ["key"]
       93 SETTABLEKS                       R10 R13 K20 ["imageContent"]
       95 MOVE                             R14 R2
       96 CALL                             R14 0 1
       97 SETTABLEKS                       R14 R13 K5 ["LayoutOrder"]
       99 CALL                             R11 2 1
      100 MOVE                             R9 R11
      101 JUMP                             ; [+40]
      102 GETUPVAL                         R11 5
      103 GETTABLEKS                       R11 R11 K12 ["FFlagMCPContentNormalization"]
      105 JUMPIFNOT                        R11 ; [+30]
      106 GETUPVAL                         R11 3
      107 GETUPVAL                         R12 7
      108 DUPTABLE                         R13 K16 [{"key", "Text", "LayoutOrder"}]
      109 FASTCALL1                        TOSTRING R7 ; [+3]
      110 MOVE                             R15 R7
      111 GETIMPORT                        R14 K18 [tostring]
      113 CALL                             R14 1 1
      114 SETTABLEKS                       R14 R13 K4 ["key"]
      116 LOADK                            R15 K22 ["[Unsupported content type: %*]"]
      117 GETTABLEKS                       R18 R10 K13 ["type"]
      119 FASTCALL1                        TOSTRING R18 ; [+2]
      120 GETIMPORT                        R17 K18 [tostring]
      122 CALL                             R17 1 1
      123 NAMECALL                         R15 R15 K8 ["format"]
      125 CALL                             R15 2 1
      126 MOVE                             R14 R15
      127 SETTABLEKS                       R14 R13 K15 ["Text"]
      129 MOVE                             R14 R2
      130 CALL                             R14 0 1
      131 SETTABLEKS                       R14 R13 K5 ["LayoutOrder"]
      133 CALL                             R11 2 1
      134 MOVE                             R9 R11
      135 JUMP                             ; [+6]
      136 GETUPVAL                         R11 9
      137 GETTABLEKS                       R11 R11 K23 ["assertNever"]
      139 GETTABLEKS                       R12 R10 K13 ["type"]
      141 CALL                             R11 1 0
      142 FASTCALL2                        TABLE_INSERT R3 R9 ; [+5]
      144 MOVE                             R12 R3
      145 MOVE                             R13 R9
      146 GETIMPORT                        R11 K11 [table.insert]
      148 CALL                             R11 2 0
      149 FORGLOOP                         R4 2 ; [-133]
      151 GETUPVAL                         R4 3
      152 GETUPVAL                         R5 10
      153 DUPTABLE                         R6 K25 [{"LayoutOrder", "Title"}]
      154 GETTABLEKS                       R7 R0 K5 ["LayoutOrder"]
      156 SETTABLEKS                       R7 R6 K5 ["LayoutOrder"]
      158 GETTABLEKS                       R7 R1 K26 ["Result"]
      160 SETTABLEKS                       R7 R6 K24 ["Title"]
      162 GETUPVAL                         R7 3
      163 GETUPVAL                         R8 11
      164 DUPTABLE                         R9 K29 [{["tag"] = "col gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      165 MOVE                             R10 R2
      166 CALL                             R10 0 1
      167 SETTABLEKS                       R10 R9 K5 ["LayoutOrder"]
      169 MOVE                             R10 R3
      170 CALL                             R7 3 -1
      171 CALL                             R4 -1 -1
      172 RETURN                           R4 -1

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
