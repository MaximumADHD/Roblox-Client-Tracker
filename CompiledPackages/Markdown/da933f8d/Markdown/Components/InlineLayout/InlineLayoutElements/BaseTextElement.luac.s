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
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R4 R5 K3 ["identity"]
       15 SETTABLEKS                       R4 R3 K4 ["mapProps"]
       17 SETTABLEKS                       R0 R3 K5 ["Element"]
       19 GETTABLEKS                       R5 R3 K6 ["splitBy"]
       21 GETUPVAL                         R7 2
       22 GETTABLEKS                       R6 R7 K7 ["Symbol"]
       24 JUMPIFNOTEQ                      R5 R6 ; [+2]
       26 LOADB                            R4 0 +1
       27 LOADB                            R4 1
       28 SETTABLEKS                       R4 R3 K8 ["canForceSplit"]
       30 GETTABLEKS                       R6 R3 K2 ["props"]
       32 GETTABLEKS                       R5 R6 K9 ["SplitBy"]
       34 JUMPIFNOT                        R5 ; [+5]
       35 GETTABLEKS                       R5 R3 K2 ["props"]
       37 GETTABLEKS                       R4 R5 K9 ["SplitBy"]
       39 JUMP                             ; [+3]
       40 GETUPVAL                         R5 2
       41 GETTABLEKS                       R4 R5 K10 ["Word"]
       43 SETTABLEKS                       R4 R3 K6 ["splitBy"]
       45 LOADB                            R4 0
       46 GETTABLEKS                       R6 R3 K2 ["props"]
       48 GETTABLEKS                       R5 R6 K11 ["TextVariant"]
       50 JUMPIFEQKNIL                     R5 ; [+12]
       52 GETIMPORT                        R5 K13 [next]
       54 GETTABLEKS                       R7 R3 K2 ["props"]
       56 GETTABLEKS                       R6 R7 K11 ["TextVariant"]
       58 CALL                             R5 1 1
       59 JUMPIFNOTEQKNIL                  R5 ; [+2]
       61 LOADB                            R4 0 +1
       62 LOADB                            R4 1
       63 SETTABLEKS                       R4 R3 K14 ["hasRichText"]
       65 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["new"]
        3 GETTABLEKS                       R3 R0 K1 ["Element"]
        5 MOVE                             R4 R1
        6 JUMPIF                           R4 ; [+2]
        7 GETTABLEKS                       R4 R0 K2 ["props"]
        9 GETTABLEKS                       R5 R0 K3 ["mapProps"]
       11 CALL                             R2 3 -1
       12 RETURN                           R2 -1

PROTO_4:
        0 DUPTABLE                         R1 K1 [{"X"}]
        1 LOADN                            R2 100
        2 SETTABLEKS                       R2 R1 K0 ["X"]
        4 RETURN                           R1 1

PROTO_5:
        0 GETTABLEKS                       R4 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R4 K1 ["Text"]
        4 NAMECALL                         R1 R0 K2 ["_getWidth"]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["GetTextBoundsAsync"]
        4 CALL                             R1 2 1
        5 GETTABLEKS                       R0 R1 K1 ["X"]
        7 RETURN                           R0 1

PROTO_7:
        0 GETIMPORT                        R2 K2 [Instance.new]
        2 LOADK                            R3 K3 ["GetTextBoundsParams"]
        3 CALL                             R2 1 1
        4 GETUPVAL                         R3 0
        5 CALL                             R3 0 1
        6 JUMPIFNOT                        R3 ; [+9]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R5 R0 K4 ["props"]
       10 GETTABLEKS                       R4 R5 K5 ["fontStyle"]
       12 CALL                             R3 1 1
       13 SETTABLEKS                       R3 R2 K6 ["Font"]
       15 JUMP                             ; [+11]
       16 GETIMPORT                        R3 K8 [Font.fromEnum]
       18 GETTABLEKS                       R6 R0 K4 ["props"]
       20 GETTABLEKS                       R5 R6 K5 ["fontStyle"]
       22 GETTABLEKS                       R4 R5 K6 ["Font"]
       24 CALL                             R3 1 1
       25 SETTABLEKS                       R3 R2 K6 ["Font"]
       27 GETTABLEKS                       R5 R0 K4 ["props"]
       29 GETTABLEKS                       R4 R5 K5 ["fontStyle"]
       31 GETTABLEKS                       R3 R4 K9 ["FontSize"]
       33 SETTABLEKS                       R3 R2 K10 ["Size"]
       35 SETTABLEKS                       R1 R2 K11 ["Text"]
       37 GETTABLEKS                       R3 R0 K12 ["hasRichText"]
       39 JUMPIFNOT                        R3 ; [+12]
       40 GETUPVAL                         R3 2
       41 MOVE                             R4 R1
       42 GETTABLEKS                       R6 R0 K4 ["props"]
       44 GETTABLEKS                       R5 R6 K13 ["TextVariant"]
       46 CALL                             R3 2 1
       47 SETTABLEKS                       R3 R2 K11 ["Text"]
       49 LOADB                            R3 1
       50 SETTABLEKS                       R3 R2 K14 ["RichText"]
       52 GETIMPORT                        R3 K16 [pcall]
       54 NEWCLOSURE                       R4 P0
       55 CAPTURE                          UPVAL U3
       56 CAPTURE                          VAL R2
       57 CALL                             R3 1 2
       58 JUMPIFNOT                        R3 ; [+1]
       59 RETURN                           R4 1
       60 GETUPVAL                         R6 4
       61 GETTABLEKS                       R7 R2 K11 ["Text"]
       63 GETTABLE                         R5 R6 R7
       64 JUMPIF                           R5 ; [+15]
       65 GETUPVAL                         R5 4
       66 GETTABLEKS                       R6 R2 K11 ["Text"]
       68 LOADB                            R7 1
       69 SETTABLE                         R7 R5 R6
       70 GETIMPORT                        R5 K18 [warn]
       72 LOADK                            R7 K19 ["Failed to get width for the %* in BaseTextElement"]
       73 GETTABLEKS                       R9 R2 K11 ["Text"]
       75 NAMECALL                         R7 R7 K20 ["format"]
       77 CALL                             R7 2 1
       78 MOVE                             R6 R7
       79 CALL                             R5 1 0
       80 LOADB                            R5 0
       81 SETTABLEKS                       R5 R2 K14 ["RichText"]
       83 GETUPVAL                         R6 3
       84 MOVE                             R8 R2
       85 NAMECALL                         R6 R6 K21 ["GetTextBoundsAsync"]
       87 CALL                             R6 2 1
       88 GETTABLEKS                       R5 R6 K22 ["X"]
       90 RETURN                           R5 1

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
        5 GETUPVAL                         R5 1
        6 GETTABLEKS                       R4 R5 K1 ["Symbol"]
        8 JUMP                             ; [+2]
        9 GETTABLEKS                       R4 R0 K2 ["splitBy"]
       11 NEWCLOSURE                       R5 P0
       12 CAPTURE                          VAL R0
       13 GETTABLEKS                       R7 R0 K3 ["props"]
       15 GETTABLEKS                       R6 R7 K4 ["Text"]
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
        0 GETTABLEKS                       R4 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R4 K1 ["Text"]
        4 GETTABLEKS                       R4 R0 K2 ["hasRichText"]
        6 JUMPIFNOT                        R4 ; [+21]
        7 GETTABLEKS                       R5 R0 K0 ["props"]
        9 GETTABLEKS                       R4 R5 K1 ["Text"]
       11 JUMPIFNOT                        R4 ; [+16]
       12 GETTABLEKS                       R5 R0 K0 ["props"]
       14 GETTABLEKS                       R4 R5 K3 ["TextVariant"]
       16 JUMPIFNOT                        R4 ; [+11]
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R6 R0 K0 ["props"]
       20 GETTABLEKS                       R5 R6 K1 ["Text"]
       22 GETTABLEKS                       R7 R0 K0 ["props"]
       24 GETTABLEKS                       R6 R7 K3 ["TextVariant"]
       26 CALL                             R4 2 1
       27 MOVE                             R3 R4
       28 GETUPVAL                         R5 1
       29 GETTABLEKS                       R4 R5 K4 ["createElement"]
       31 GETTABLEKS                       R5 R0 K5 ["Element"]
       33 GETTABLEKS                       R6 R0 K6 ["mapProps"]
       35 GETUPVAL                         R7 2
       36 GETTABLEKS                       R8 R0 K0 ["props"]
       38 DUPTABLE                         R9 K12 [{"id", "Text", "RichText", "AutomaticSize", "LayoutOrder", "key", "TextVariant"}]
       39 SETTABLEKS                       R1 R9 K7 ["id"]
       41 SETTABLEKS                       R3 R9 K1 ["Text"]
       43 GETTABLEKS                       R10 R0 K2 ["hasRichText"]
       45 SETTABLEKS                       R10 R9 K8 ["RichText"]
       47 GETIMPORT                        R10 K15 [Enum.AutomaticSize.XY]
       49 SETTABLEKS                       R10 R9 K9 ["AutomaticSize"]
       51 SETTABLEKS                       R2 R9 K10 ["LayoutOrder"]
       53 FASTCALL1                        TOSTRING R2 ; [+3]
       54 MOVE                             R11 R2
       55 GETIMPORT                        R10 K17 [tostring]
       57 CALL                             R10 1 1
       58 SETTABLEKS                       R10 R9 K11 ["key"]
       60 GETUPVAL                         R11 3
       61 GETTABLEKS                       R10 R11 K18 ["None"]
       63 SETTABLEKS                       R10 R9 K3 ["TextVariant"]
       65 CALL                             R7 2 -1
       66 CALL                             R6 -1 -1
       67 CALL                             R4 -1 -1
       68 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Packages"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["React"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Dash"]
       16 CALL                             R2 1 1
       17 GETIMPORT                        R4 K1 [script]
       19 LOADK                            R6 K8 ["Components"]
       20 NAMECALL                         R4 R4 K3 ["FindFirstAncestor"]
       22 CALL                             R4 2 1
       23 GETTABLEKS                       R3 R4 K9 ["Parent"]
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R6 R3 K10 ["Utils"]
       29 GETTABLEKS                       R5 R6 K11 ["IsCli"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R7 R3 K10 ["Utils"]
       36 GETTABLEKS                       R6 R7 K12 ["TextSplitByEnum"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K5 [require]
       41 GETTABLEKS                       R8 R3 K10 ["Utils"]
       43 GETTABLEKS                       R7 R8 K13 ["SplitText"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K5 [require]
       48 GETTABLEKS                       R9 R3 K10 ["Utils"]
       50 GETTABLEKS                       R8 R9 K14 ["InlineElementType"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K5 [require]
       55 GETTABLEKS                       R10 R3 K10 ["Utils"]
       57 GETTABLEKS                       R9 R10 K15 ["GetFontFace"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K5 [require]
       62 GETTABLEKS                       R11 R3 K16 ["Flags"]
       64 GETTABLEKS                       R10 R11 K17 ["FFlagMarkdownStudioThemeColors"]
       66 CALL                             R9 1 1
       67 GETTABLEKS                       R10 R2 K18 ["join"]
       69 NEWTABLE                         R11 0 0
       71 DUPCLOSURE                       R12 K19 [PROTO_0]
       72 LOADNIL                          R13
       73 DUPCLOSURE                       R13 K20 [PROTO_1]
       74 NEWTABLE                         R14 8 0
       76 SETTABLEKS                       R14 R14 K21 ["__index"]
       78 SETTABLEKS                       R7 R14 K22 ["__type"]
       80 DUPCLOSURE                       R15 K23 [PROTO_2]
       81 CAPTURE                          VAL R14
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R5
       84 SETTABLEKS                       R15 R14 K24 ["new"]
       86 DUPCLOSURE                       R15 K25 [PROTO_3]
       87 CAPTURE                          VAL R14
       88 SETTABLEKS                       R15 R14 K26 ["_clone"]
       90 GETIMPORT                        R15 K28 [game]
       92 LOADK                            R17 K29 ["TextService"]
       93 NAMECALL                         R15 R15 K30 ["GetService"]
       95 CALL                             R15 2 1
       96 MOVE                             R16 R4
       97 CALL                             R16 0 1
       98 JUMPIFNOT                        R16 ; [+16]
       99 NEWTABLE                         R16 2 0
      101 SETTABLEKS                       R16 R16 K21 ["__index"]
      103 NEWTABLE                         R18 0 0
      105 FASTCALL2                        SETMETATABLE R18 R16 ; [+4]
      107 MOVE                             R19 R16
      108 GETIMPORT                        R17 K32 [setmetatable]
      110 CALL                             R17 2 1
      111 MOVE                             R15 R17
      112 DUPCLOSURE                       R17 K33 [PROTO_4]
      113 SETTABLEKS                       R17 R16 K34 ["GetTextBoundsAsync"]
      115 DUPCLOSURE                       R16 K35 [PROTO_5]
      116 SETTABLEKS                       R16 R14 K36 ["getWidth"]
      118 NEWCLOSURE                       R16 P6
      119 CAPTURE                          VAL R9
      120 CAPTURE                          VAL R8
      121 CAPTURE                          REF R13
      122 CAPTURE                          REF R15
      123 CAPTURE                          VAL R11
      124 SETTABLEKS                       R16 R14 K37 ["_getWidth"]
      126 DUPCLOSURE                       R16 K38 [PROTO_9]
      127 CAPTURE                          VAL R6
      128 CAPTURE                          VAL R5
      129 CAPTURE                          VAL R10
      130 SETTABLEKS                       R16 R14 K39 ["split"]
      132 NEWCLOSURE                       R16 P8
      133 CAPTURE                          REF R13
      134 CAPTURE                          VAL R1
      135 CAPTURE                          VAL R10
      136 CAPTURE                          VAL R2
      137 SETTABLEKS                       R16 R14 K40 ["render"]
      139 CLOSEUPVALS                      R13
      140 RETURN                           R14 1
