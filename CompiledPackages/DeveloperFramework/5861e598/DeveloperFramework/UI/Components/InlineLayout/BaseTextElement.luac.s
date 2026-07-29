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
        4 GETTABLEKS                       R4 R0 K4 ["props"]
        6 GETTABLEKS                       R4 R4 K5 ["FontFace"]
        8 JUMPIFNOT                        R4 ; [+5]
        9 GETTABLEKS                       R3 R0 K4 ["props"]
       11 GETTABLEKS                       R3 R3 K5 ["FontFace"]
       13 JUMP                             ; [+7]
       14 GETIMPORT                        R3 K8 [Font.fromEnum]
       16 GETTABLEKS                       R4 R0 K4 ["props"]
       18 GETTABLEKS                       R4 R4 K6 ["Font"]
       20 CALL                             R3 1 1
       21 SETTABLEKS                       R3 R2 K6 ["Font"]
       23 GETTABLEKS                       R3 R0 K4 ["props"]
       25 GETTABLEKS                       R3 R3 K9 ["TextSize"]
       27 SETTABLEKS                       R3 R2 K10 ["Size"]
       29 SETTABLEKS                       R1 R2 K11 ["Text"]
       31 GETTABLEKS                       R3 R0 K12 ["hasRichText"]
       33 JUMPIFNOT                        R3 ; [+69]
       34 GETTABLEKS                       R4 R0 K4 ["props"]
       36 GETTABLEKS                       R4 R4 K13 ["TextStyle"]
       38 LOADK                            R7 K14 ["[&<>\"']"]
       39 NEWTABLE                         R8 8 0
       41 LOADK                            R9 K15 ["&amp;"]
       42 SETTABLEKS                       R9 R8 K16 ["&"]
       44 LOADK                            R9 K17 ["&lt;"]
       45 SETTABLEKS                       R9 R8 K18 ["<"]
       47 LOADK                            R9 K19 ["&gt;"]
       48 SETTABLEKS                       R9 R8 K20 [">"]
       50 LOADK                            R9 K21 ["&quot;"]
       51 SETTABLEKS                       R9 R8 K22 ["\""]
       53 LOADK                            R9 K23 ["&apos;"]
       54 SETTABLEKS                       R9 R8 K24 ["'"]
       56 NAMECALL                         R5 R1 K25 ["gsub"]
       58 CALL                             R5 3 1
       59 GETTABLEKS                       R6 R4 K26 ["Bold"]
       61 JUMPIFNOT                        R6 ; [+6]
       62 LOADK                            R6 K27 ["<b>%*</b>"]
       63 MOVE                             R8 R5
       64 NAMECALL                         R6 R6 K28 ["format"]
       66 CALL                             R6 2 1
       67 MOVE                             R5 R6
       68 GETTABLEKS                       R6 R4 K29 ["Italic"]
       70 JUMPIFNOT                        R6 ; [+6]
       71 LOADK                            R6 K30 ["<i>%*</i>"]
       72 MOVE                             R8 R5
       73 NAMECALL                         R6 R6 K28 ["format"]
       75 CALL                             R6 2 1
       76 MOVE                             R5 R6
       77 GETTABLEKS                       R6 R4 K31 ["Strike"]
       79 JUMPIFNOT                        R6 ; [+6]
       80 LOADK                            R6 K32 ["<s>%*</s>"]
       81 MOVE                             R8 R5
       82 NAMECALL                         R6 R6 K28 ["format"]
       84 CALL                             R6 2 1
       85 MOVE                             R5 R6
       86 GETTABLEKS                       R6 R4 K33 ["Color"]
       88 JUMPIFNOT                        R6 ; [+8]
       89 LOADK                            R6 K34 ["<font color=\"%*\">%*</font>"]
       90 GETTABLEKS                       R8 R4 K33 ["Color"]
       92 MOVE                             R9 R5
       93 NAMECALL                         R6 R6 K28 ["format"]
       95 CALL                             R6 3 1
       96 MOVE                             R5 R6
       97 MOVE                             R3 R5
       98 SETTABLEKS                       R3 R2 K11 ["Text"]
      100 LOADB                            R3 1
      101 SETTABLEKS                       R3 R2 K35 ["RichText"]
      103 GETIMPORT                        R3 K37 [pcall]
      105 NEWCLOSURE                       R4 P0
      106 CAPTURE                          UPVAL U0
      107 CAPTURE                          VAL R2
      108 CALL                             R3 1 2
      109 JUMPIFNOT                        R3 ; [+1]
      110 RETURN                           R4 1
      111 GETUPVAL                         R6 1
      112 GETTABLEKS                       R7 R2 K11 ["Text"]
      114 GETTABLE                         R5 R6 R7
      115 JUMPIF                           R5 ; [+15]
      116 GETUPVAL                         R5 1
      117 GETTABLEKS                       R6 R2 K11 ["Text"]
      119 LOADB                            R7 1
      120 SETTABLE                         R7 R5 R6
      121 GETIMPORT                        R5 K39 [warn]
      123 LOADK                            R7 K40 ["Failed to get width for the %* in BaseTextElement"]
      124 GETTABLEKS                       R9 R2 K11 ["Text"]
      126 NAMECALL                         R7 R7 K28 ["format"]
      128 CALL                             R7 2 1
      129 MOVE                             R6 R7
      130 CALL                             R5 1 0
      131 LOADB                            R5 0
      132 SETTABLEKS                       R5 R2 K35 ["RichText"]
      134 GETUPVAL                         R5 0
      135 MOVE                             R7 R2
      136 NAMECALL                         R5 R5 K41 ["GetTextBoundsAsync"]
      138 CALL                             R5 2 1
      139 GETTABLEKS                       R5 R5 K42 ["X"]
      141 RETURN                           R5 1

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
       52 GETTABLEKS                       R7 R0 K4 ["Parent"]
       54 GETTABLEKS                       R7 R7 K13 ["Dash"]
       56 CALL                             R6 1 1
       57 GETTABLEKS                       R7 R6 K14 ["join"]
       59 NEWTABLE                         R8 0 0
       61 DUPCLOSURE                       R9 K15 [PROTO_0]
       62 DUPCLOSURE                       R10 K16 [PROTO_1]
       63 NEWTABLE                         R11 8 0
       65 SETTABLEKS                       R11 R11 K17 ["__index"]
       67 SETTABLEKS                       R5 R11 K18 ["__type"]
       69 DUPCLOSURE                       R12 K19 [PROTO_2]
       70 CAPTURE                          VAL R11
       71 CAPTURE                          VAL R6
       72 CAPTURE                          VAL R3
       73 SETTABLEKS                       R12 R11 K20 ["new"]
       75 DUPCLOSURE                       R12 K21 [PROTO_3]
       76 CAPTURE                          VAL R11
       77 SETTABLEKS                       R12 R11 K22 ["_clone"]
       79 GETIMPORT                        R12 K24 [game]
       81 LOADK                            R14 K25 ["TextService"]
       82 NAMECALL                         R12 R12 K26 ["GetService"]
       84 CALL                             R12 2 1
       85 MOVE                             R13 R2
       86 CALL                             R13 0 1
       87 JUMPIFNOT                        R13 ; [+16]
       88 NEWTABLE                         R13 2 0
       90 SETTABLEKS                       R13 R13 K17 ["__index"]
       92 NEWTABLE                         R15 0 0
       94 FASTCALL2                        SETMETATABLE R15 R13 ; [+4]
       96 MOVE                             R16 R13
       97 GETIMPORT                        R14 K28 [setmetatable]
       99 CALL                             R14 2 1
      100 MOVE                             R12 R14
      101 DUPCLOSURE                       R14 K29 [PROTO_4]
      102 SETTABLEKS                       R14 R13 K30 ["GetTextBoundsAsync"]
      104 DUPCLOSURE                       R13 K31 [PROTO_5]
      105 SETTABLEKS                       R13 R11 K32 ["getWidth"]
      107 NEWCLOSURE                       R13 P6
      108 CAPTURE                          REF R12
      109 CAPTURE                          VAL R8
      110 SETTABLEKS                       R13 R11 K33 ["_getWidth"]
      112 DUPCLOSURE                       R13 K34 [PROTO_9]
      113 CAPTURE                          VAL R4
      114 CAPTURE                          VAL R3
      115 CAPTURE                          VAL R7
      116 SETTABLEKS                       R13 R11 K35 ["split"]
      118 DUPCLOSURE                       R13 K36 [PROTO_10]
      119 CAPTURE                          VAL R1
      120 CAPTURE                          VAL R7
      121 CAPTURE                          VAL R6
      122 SETTABLEKS                       R13 R11 K37 ["render"]
      124 CLOSEUPVALS                      R12
      125 RETURN                           R11 1
