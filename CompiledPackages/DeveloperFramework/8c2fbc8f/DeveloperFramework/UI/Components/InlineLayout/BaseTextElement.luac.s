PROTO_0:
        0 LOADK                            R3 K0 ["[&<>\"']"]
        1 NEWTABLE                         R4 8 0
        3 LOADK                            R5 K1 ["&amp;"]
        4 SETTABLEKS                       R5 R4 K2 ["&"]
        6 LOADK                            R5 K3 ["&lt;"]
        7 SETTABLEKS                       R5 R4 K4 ["<"]
        9 LOADK                            R5 K5 ["&gt;"]
       10 SETTABLEKS                       R5 R4 K6 [">"]
       12 LOADK                            R5 K7 ["&quot;"]
       13 SETTABLEKS                       R5 R4 K8 ["\""]
       15 LOADK                            R5 K9 ["&apos;"]
       16 SETTABLEKS                       R5 R4 K10 ["'"]
       18 NAMECALL                         R1 R0 K11 ["gsub"]
       20 CALL                             R1 3 -1
       21 RETURN                           R1 -1

PROTO_1:
        0 LOADK                            R4 K0 ["[&<>\"']"]
        1 NEWTABLE                         R5 8 0
        3 LOADK                            R6 K1 ["&amp;"]
        4 SETTABLEKS                       R6 R5 K2 ["&"]
        6 LOADK                            R6 K3 ["&lt;"]
        7 SETTABLEKS                       R6 R5 K4 ["<"]
        9 LOADK                            R6 K5 ["&gt;"]
       10 SETTABLEKS                       R6 R5 K6 [">"]
       12 LOADK                            R6 K7 ["&quot;"]
       13 SETTABLEKS                       R6 R5 K8 ["\""]
       15 LOADK                            R6 K9 ["&apos;"]
       16 SETTABLEKS                       R6 R5 K10 ["'"]
       18 NAMECALL                         R2 R0 K11 ["gsub"]
       20 CALL                             R2 3 1
       21 GETTABLEKS                       R3 R1 K12 ["Bold"]
       23 JUMPIFNOT                        R3 ; [+6]
       24 LOADK                            R3 K13 ["<b>%*</b>"]
       25 MOVE                             R5 R2
       26 NAMECALL                         R3 R3 K14 ["format"]
       28 CALL                             R3 2 1
       29 MOVE                             R2 R3
       30 GETTABLEKS                       R3 R1 K15 ["Italic"]
       32 JUMPIFNOT                        R3 ; [+6]
       33 LOADK                            R3 K16 ["<i>%*</i>"]
       34 MOVE                             R5 R2
       35 NAMECALL                         R3 R3 K14 ["format"]
       37 CALL                             R3 2 1
       38 MOVE                             R2 R3
       39 GETTABLEKS                       R3 R1 K17 ["Strike"]
       41 JUMPIFNOT                        R3 ; [+6]
       42 LOADK                            R3 K18 ["<s>%*</s>"]
       43 MOVE                             R5 R2
       44 NAMECALL                         R3 R3 K14 ["format"]
       46 CALL                             R3 2 1
       47 MOVE                             R2 R3
       48 GETTABLEKS                       R3 R1 K19 ["Color"]
       50 JUMPIFNOT                        R3 ; [+8]
       51 LOADK                            R3 K20 ["<font color=\"%*\">%*</font>"]
       52 GETTABLEKS                       R5 R1 K19 ["Color"]
       54 MOVE                             R6 R2
       55 NAMECALL                         R3 R3 K14 ["format"]
       57 CALL                             R3 3 1
       58 MOVE                             R2 R3
       59 RETURN                           R2 1

PROTO_2:
        0 NEWTABLE                         R4 8 0
        2 GETUPVAL                         R5 0
        3 FASTCALL2                        SETMETATABLE R4 R5 ; [+3]
        5 GETIMPORT                        R3 K1 [setmetatable]
        7 CALL                             R3 2 1
        8 SETTABLEKS                       R1 R3 K2 ["props"]
       10 MOVE                             R4 R2
       11 JUMPIF                           R4 ; [+3]
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K3 ["identity"]
       15 SETTABLEKS                       R4 R3 K4 ["mapProps"]
       17 SETTABLEKS                       R0 R3 K5 ["Element"]
       19 GETTABLEKS                       R5 R3 K6 ["splitBy"]
       21 GETUPVAL                         R6 2
       22 GETTABLEKS                       R6 R6 K7 ["Symbol"]
       24 JUMPIFNOTEQ                      R5 R6 ; [+2]
       26 LOADB                            R4 0 +1
       27 LOADB                            R4 1
       28 SETTABLEKS                       R4 R3 K8 ["canForceSplit"]
       30 GETTABLEKS                       R5 R3 K2 ["props"]
       32 GETTABLEKS                       R5 R5 K9 ["SplitBy"]
       34 JUMPIFNOT                        R5 ; [+5]
       35 GETTABLEKS                       R4 R3 K2 ["props"]
       37 GETTABLEKS                       R4 R4 K9 ["SplitBy"]
       39 JUMP                             ; [+3]
       40 GETUPVAL                         R4 2
       41 GETTABLEKS                       R4 R4 K10 ["Word"]
       43 SETTABLEKS                       R4 R3 K6 ["splitBy"]
       45 LOADB                            R4 0
       46 GETTABLEKS                       R5 R3 K2 ["props"]
       48 GETTABLEKS                       R5 R5 K11 ["TextStyle"]
       50 JUMPIFEQKNIL                     R5 ; [+12]
       52 GETIMPORT                        R5 K13 [next]
       54 GETTABLEKS                       R6 R3 K2 ["props"]
       56 GETTABLEKS                       R6 R6 K11 ["TextStyle"]
       58 CALL                             R5 1 1
       59 JUMPIFNOTEQKNIL                  R5 ; [+2]
       61 LOADB                            R4 0 +1
       62 LOADB                            R4 1
       63 SETTABLEKS                       R4 R3 K14 ["hasRichText"]
       65 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 GETTABLEKS                       R3 R0 K1 ["Element"]
        5 MOVE                             R4 R1
        6 JUMPIF                           R4 ; [+2]
        7 GETTABLEKS                       R4 R0 K2 ["props"]
        9 GETTABLEKS                       R5 R0 K3 ["mapProps"]
       11 CALL                             R2 3 -1
       12 RETURN                           R2 -1

PROTO_4:
        0 DUPTABLE                         R1 K2 [{[1] = 100}]
        1 RETURN                           R1 1

PROTO_5:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R3 K1 ["Text"]
        4 NAMECALL                         R1 R0 K2 ["_getWidth"]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["GetTextBoundsAsync"]
        4 CALL                             R0 2 1
        5 GETTABLEKS                       R0 R0 K1 ["X"]
        7 RETURN                           R0 1

PROTO_7:
        0 GETIMPORT                        R2 K2 [Instance.new]
        2 LOADK                            R3 K3 ["GetTextBoundsParams"]
        3 CALL                             R2 1 1
        4 GETUPVAL                         R3 0
        5 JUMPIFNOT                        R3 ; [+20]
        6 GETTABLEKS                       R4 R0 K4 ["props"]
        8 GETTABLEKS                       R4 R4 K5 ["FontFace"]
       10 JUMPIFNOT                        R4 ; [+5]
       11 GETTABLEKS                       R3 R0 K4 ["props"]
       13 GETTABLEKS                       R3 R3 K5 ["FontFace"]
       15 JUMP                             ; [+7]
       16 GETIMPORT                        R3 K8 [Font.fromEnum]
       18 GETTABLEKS                       R4 R0 K4 ["props"]
       20 GETTABLEKS                       R4 R4 K6 ["Font"]
       22 CALL                             R3 1 1
       23 SETTABLEKS                       R3 R2 K6 ["Font"]
       25 JUMP                             ; [+9]
       26 GETIMPORT                        R3 K8 [Font.fromEnum]
       28 GETTABLEKS                       R4 R0 K4 ["props"]
       30 GETTABLEKS                       R4 R4 K6 ["Font"]
       32 CALL                             R3 1 1
       33 SETTABLEKS                       R3 R2 K6 ["Font"]
       35 GETTABLEKS                       R3 R0 K4 ["props"]
       37 GETTABLEKS                       R3 R3 K9 ["TextSize"]
       39 SETTABLEKS                       R3 R2 K10 ["Size"]
       41 SETTABLEKS                       R1 R2 K11 ["Text"]
       43 GETTABLEKS                       R3 R0 K12 ["hasRichText"]
       45 JUMPIFNOT                        R3 ; [+69]
       46 GETTABLEKS                       R4 R0 K4 ["props"]
       48 GETTABLEKS                       R4 R4 K13 ["TextStyle"]
       50 LOADK                            R7 K14 ["[&<>\"']"]
       51 NEWTABLE                         R8 8 0
       53 LOADK                            R9 K15 ["&amp;"]
       54 SETTABLEKS                       R9 R8 K16 ["&"]
       56 LOADK                            R9 K17 ["&lt;"]
       57 SETTABLEKS                       R9 R8 K18 ["<"]
       59 LOADK                            R9 K19 ["&gt;"]
       60 SETTABLEKS                       R9 R8 K20 [">"]
       62 LOADK                            R9 K21 ["&quot;"]
       63 SETTABLEKS                       R9 R8 K22 ["\""]
       65 LOADK                            R9 K23 ["&apos;"]
       66 SETTABLEKS                       R9 R8 K24 ["'"]
       68 NAMECALL                         R5 R1 K25 ["gsub"]
       70 CALL                             R5 3 1
       71 GETTABLEKS                       R6 R4 K26 ["Bold"]
       73 JUMPIFNOT                        R6 ; [+6]
       74 LOADK                            R6 K27 ["<b>%*</b>"]
       75 MOVE                             R8 R5
       76 NAMECALL                         R6 R6 K28 ["format"]
       78 CALL                             R6 2 1
       79 MOVE                             R5 R6
       80 GETTABLEKS                       R6 R4 K29 ["Italic"]
       82 JUMPIFNOT                        R6 ; [+6]
       83 LOADK                            R6 K30 ["<i>%*</i>"]
       84 MOVE                             R8 R5
       85 NAMECALL                         R6 R6 K28 ["format"]
       87 CALL                             R6 2 1
       88 MOVE                             R5 R6
       89 GETTABLEKS                       R6 R4 K31 ["Strike"]
       91 JUMPIFNOT                        R6 ; [+6]
       92 LOADK                            R6 K32 ["<s>%*</s>"]
       93 MOVE                             R8 R5
       94 NAMECALL                         R6 R6 K28 ["format"]
       96 CALL                             R6 2 1
       97 MOVE                             R5 R6
       98 GETTABLEKS                       R6 R4 K33 ["Color"]
      100 JUMPIFNOT                        R6 ; [+8]
      101 LOADK                            R6 K34 ["<font color=\"%*\">%*</font>"]
      102 GETTABLEKS                       R8 R4 K33 ["Color"]
      104 MOVE                             R9 R5
      105 NAMECALL                         R6 R6 K28 ["format"]
      107 CALL                             R6 3 1
      108 MOVE                             R5 R6
      109 MOVE                             R3 R5
      110 SETTABLEKS                       R3 R2 K11 ["Text"]
      112 LOADB                            R3 1
      113 SETTABLEKS                       R3 R2 K35 ["RichText"]
      115 GETIMPORT                        R3 K37 [pcall]
      117 NEWCLOSURE                       R4 P0
      118 CAPTURE                          UPVAL U1
      119 CAPTURE                          VAL R2
      120 CALL                             R3 1 2
      121 JUMPIFNOT                        R3 ; [+1]
      122 RETURN                           R4 1
      123 GETUPVAL                         R6 2
      124 GETTABLEKS                       R7 R2 K11 ["Text"]
      126 GETTABLE                         R5 R6 R7
      127 JUMPIF                           R5 ; [+15]
      128 GETUPVAL                         R5 2
      129 GETTABLEKS                       R6 R2 K11 ["Text"]
      131 LOADB                            R7 1
      132 SETTABLE                         R7 R5 R6
      133 GETIMPORT                        R5 K39 [warn]
      135 LOADK                            R7 K40 ["Failed to get width for the %* in BaseTextElement"]
      136 GETTABLEKS                       R9 R2 K11 ["Text"]
      138 NAMECALL                         R7 R7 K28 ["format"]
      140 CALL                             R7 2 1
      141 MOVE                             R6 R7
      142 CALL                             R5 1 0
      143 LOADB                            R5 0
      144 SETTABLEKS                       R5 R2 K35 ["RichText"]
      146 GETUPVAL                         R5 1
      147 MOVE                             R7 R2
      148 NAMECALL                         R5 R5 K41 ["GetTextBoundsAsync"]
      150 CALL                             R5 2 1
      151 GETTABLEKS                       R5 R5 K42 ["X"]
      153 RETURN                           R5 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["_getWidth"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_9:
        0 GETTABLEKS                       R3 R0 K0 ["canForceSplit"]
        2 AND                              R2 R3 R2
        3 GETUPVAL                         R3 0
        4 JUMPIFNOT                        R2 ; [+4]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K1 ["Symbol"]
        8 JUMP                             ; [+2]
        9 GETTABLEKS                       R4 R0 K2 ["splitBy"]
       11 NEWCLOSURE                       R5 P0
       12 CAPTURE                          VAL R0
       13 GETTABLEKS                       R6 R0 K3 ["props"]
       15 GETTABLEKS                       R6 R6 K4 ["Text"]
       17 MOVE                             R7 R1
       18 CALL                             R3 4 2
       19 GETUPVAL                         R7 2
       20 GETTABLEKS                       R8 R0 K3 ["props"]
       22 DUPTABLE                         R9 K5 [{"Text"}]
       23 SETTABLEKS                       R3 R9 K4 ["Text"]
       25 CALL                             R7 2 -1
       26 NAMECALL                         R5 R0 K6 ["_clone"]
       28 CALL                             R5 -1 1
       29 JUMPIFNOT                        R4 ; [+16]
       30 GETUPVAL                         R8 2
       31 GETTABLEKS                       R9 R0 K3 ["props"]
       33 DUPTABLE                         R10 K5 [{"Text"}]
       34 LOADK                            R13 K7 ["^%s*"]
       35 LOADK                            R14 K8 [""]
       36 NAMECALL                         R11 R4 K9 ["gsub"]
       38 CALL                             R11 3 1
       39 SETTABLEKS                       R11 R10 K4 ["Text"]
       41 CALL                             R8 2 -1
       42 NAMECALL                         R6 R0 K6 ["_clone"]
       44 CALL                             R6 -1 1
       45 RETURN                           R5 2
       46 LOADNIL                          R6
       47 RETURN                           R5 2

PROTO_10:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R3 K1 ["Text"]
        4 GETTABLEKS                       R4 R0 K2 ["hasRichText"]
        6 JUMPIFNOT                        R4 ; [+68]
        7 GETTABLEKS                       R4 R0 K0 ["props"]
        9 GETTABLEKS                       R4 R4 K1 ["Text"]
       11 GETTABLEKS                       R5 R0 K0 ["props"]
       13 GETTABLEKS                       R5 R5 K3 ["TextStyle"]
       15 LOADK                            R8 K4 ["[&<>\"']"]
       16 NEWTABLE                         R9 8 0
       18 LOADK                            R10 K5 ["&amp;"]
       19 SETTABLEKS                       R10 R9 K6 ["&"]
       21 LOADK                            R10 K7 ["&lt;"]
       22 SETTABLEKS                       R10 R9 K8 ["<"]
       24 LOADK                            R10 K9 ["&gt;"]
       25 SETTABLEKS                       R10 R9 K10 [">"]
       27 LOADK                            R10 K11 ["&quot;"]
       28 SETTABLEKS                       R10 R9 K12 ["\""]
       30 LOADK                            R10 K13 ["&apos;"]
       31 SETTABLEKS                       R10 R9 K14 ["'"]
       33 NAMECALL                         R6 R4 K15 ["gsub"]
       35 CALL                             R6 3 1
       36 GETTABLEKS                       R7 R5 K16 ["Bold"]
       38 JUMPIFNOT                        R7 ; [+6]
       39 LOADK                            R7 K17 ["<b>%*</b>"]
       40 MOVE                             R9 R6
       41 NAMECALL                         R7 R7 K18 ["format"]
       43 CALL                             R7 2 1
       44 MOVE                             R6 R7
       45 GETTABLEKS                       R7 R5 K19 ["Italic"]
       47 JUMPIFNOT                        R7 ; [+6]
       48 LOADK                            R7 K20 ["<i>%*</i>"]
       49 MOVE                             R9 R6
       50 NAMECALL                         R7 R7 K18 ["format"]
       52 CALL                             R7 2 1
       53 MOVE                             R6 R7
       54 GETTABLEKS                       R7 R5 K21 ["Strike"]
       56 JUMPIFNOT                        R7 ; [+6]
       57 LOADK                            R7 K22 ["<s>%*</s>"]
       58 MOVE                             R9 R6
       59 NAMECALL                         R7 R7 K18 ["format"]
       61 CALL                             R7 2 1
       62 MOVE                             R6 R7
       63 GETTABLEKS                       R7 R5 K23 ["Color"]
       65 JUMPIFNOT                        R7 ; [+8]
       66 LOADK                            R7 K24 ["<font color=\"%*\">%*</font>"]
       67 GETTABLEKS                       R9 R5 K23 ["Color"]
       69 MOVE                             R10 R6
       70 NAMECALL                         R7 R7 K18 ["format"]
       72 CALL                             R7 3 1
       73 MOVE                             R6 R7
       74 MOVE                             R3 R6
       75 GETUPVAL                         R4 0
       76 GETTABLEKS                       R4 R4 K25 ["createElement"]
       78 GETTABLEKS                       R5 R0 K26 ["Element"]
       80 GETTABLEKS                       R6 R0 K27 ["mapProps"]
       82 GETUPVAL                         R7 1
       83 GETTABLEKS                       R8 R0 K0 ["props"]
       85 DUPTABLE                         R9 K33 [{"id", "Text", "RichText", "AutomaticSize", "key", "LayoutOrder", "TextStyle"}]
       86 SETTABLEKS                       R1 R9 K28 ["id"]
       88 SETTABLEKS                       R3 R9 K1 ["Text"]
       90 GETTABLEKS                       R10 R0 K2 ["hasRichText"]
       92 SETTABLEKS                       R10 R9 K29 ["RichText"]
       94 GETIMPORT                        R10 K36 [Enum.AutomaticSize.XY]
       96 SETTABLEKS                       R10 R9 K30 ["AutomaticSize"]
       98 FASTCALL1                        TOSTRING R2 ; [+3]
       99 MOVE                             R11 R2
      100 GETIMPORT                        R10 K38 [tostring]
      102 CALL                             R10 1 1
      103 SETTABLEKS                       R10 R9 K31 ["key"]
      105 SETTABLEKS                       R2 R9 K32 ["LayoutOrder"]
      107 GETUPVAL                         R10 2
      108 GETTABLEKS                       R10 R10 K39 ["None"]
      110 SETTABLEKS                       R10 R9 K3 ["TextStyle"]
      112 CALL                             R7 2 -1
      113 CALL                             R6 -1 -1
      114 CALL                             R4 -1 -1
      115 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Util"]
       20 GETTABLEKS                       R3 R3 K9 ["isCli"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K6 [require]
       25 GETIMPORT                        R4 K1 [script]
       27 GETTABLEKS                       R4 R4 K4 ["Parent"]
       29 GETTABLEKS                       R4 R4 K10 ["TextSplitByEnum"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K6 [require]
       34 GETIMPORT                        R5 K1 [script]
       36 GETTABLEKS                       R5 R5 K4 ["Parent"]
       38 GETTABLEKS                       R5 R5 K11 ["splitText"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K6 [require]
       43 GETIMPORT                        R6 K1 [script]
       45 GETTABLEKS                       R6 R6 K4 ["Parent"]
       47 GETTABLEKS                       R6 R6 K12 ["InlineElementType"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K6 [require]
       52 GETTABLEKS                       R7 R0 K13 ["SharedFlags"]
       54 GETTABLEKS                       R7 R7 K14 ["getFFlagDevFrameworkMarkdownControlCodeFont"]
       56 CALL                             R6 1 1
       57 CALL                             R6 0 1
       58 GETIMPORT                        R7 K6 [require]
       60 GETTABLEKS                       R8 R0 K4 ["Parent"]
       62 GETTABLEKS                       R8 R8 K15 ["Dash"]
       64 CALL                             R7 1 1
       65 GETTABLEKS                       R8 R7 K16 ["join"]
       67 NEWTABLE                         R9 0 0
       69 DUPCLOSURE                       R10 K17 [PROTO_0]
       70 DUPCLOSURE                       R11 K18 [PROTO_1]
       71 NEWTABLE                         R12 8 0
       73 SETTABLEKS                       R12 R12 K19 ["__index"]
       75 SETTABLEKS                       R5 R12 K20 ["__type"]
       77 DUPCLOSURE                       R13 K21 [PROTO_2]
       78 CAPTURE                          VAL R12
       79 CAPTURE                          VAL R7
       80 CAPTURE                          VAL R3
       81 SETTABLEKS                       R13 R12 K22 ["new"]
       83 DUPCLOSURE                       R13 K23 [PROTO_3]
       84 CAPTURE                          VAL R12
       85 SETTABLEKS                       R13 R12 K24 ["_clone"]
       87 GETIMPORT                        R13 K26 [game]
       89 LOADK                            R15 K27 ["TextService"]
       90 NAMECALL                         R13 R13 K28 ["GetService"]
       92 CALL                             R13 2 1
       93 MOVE                             R14 R2
       94 CALL                             R14 0 1
       95 JUMPIFNOT                        R14 ; [+16]
       96 NEWTABLE                         R14 2 0
       98 SETTABLEKS                       R14 R14 K19 ["__index"]
      100 NEWTABLE                         R16 0 0
      102 FASTCALL2                        SETMETATABLE R16 R14 ; [+4]
      104 MOVE                             R17 R14
      105 GETIMPORT                        R15 K30 [setmetatable]
      107 CALL                             R15 2 1
      108 MOVE                             R13 R15
      109 DUPCLOSURE                       R15 K31 [PROTO_4]
      110 SETTABLEKS                       R15 R14 K32 ["GetTextBoundsAsync"]
      112 DUPCLOSURE                       R14 K33 [PROTO_5]
      113 SETTABLEKS                       R14 R12 K34 ["getWidth"]
      115 NEWCLOSURE                       R14 P6
      116 CAPTURE                          VAL R6
      117 CAPTURE                          REF R13
      118 CAPTURE                          VAL R9
      119 SETTABLEKS                       R14 R12 K35 ["_getWidth"]
      121 DUPCLOSURE                       R14 K36 [PROTO_9]
      122 CAPTURE                          VAL R4
      123 CAPTURE                          VAL R3
      124 CAPTURE                          VAL R8
      125 SETTABLEKS                       R14 R12 K37 ["split"]
      127 DUPCLOSURE                       R14 K38 [PROTO_10]
      128 CAPTURE                          VAL R1
      129 CAPTURE                          VAL R8
      130 CAPTURE                          VAL R7
      131 SETTABLEKS                       R14 R12 K39 ["render"]
      133 CLOSEUPVALS                      R13
      134 RETURN                           R12 1
