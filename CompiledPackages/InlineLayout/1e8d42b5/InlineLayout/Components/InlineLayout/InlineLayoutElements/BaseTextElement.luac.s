PROTO_0:
        0 GETIMPORT                        R4 K2 [string.find]
        2 MOVE                             R5 R1
        3 LOADK                            R6 K3 ["\""]
        4 CALL                             R4 2 1
        5 JUMPIFNOT                        R4 ; [+2]
        6 LOADK                            R3 K4 ["'"]
        7 JUMP                             ; [+1]
        8 LOADK                            R3 K3 ["\""]
        9 LOADK                            R5 K5 ["%* %*=%*%*%*"]
       10 MOVE                             R7 R0
       11 MOVE                             R8 R2
       12 MOVE                             R9 R3
       13 MOVE                             R10 R1
       14 MOVE                             R11 R3
       15 NAMECALL                         R5 R5 K6 ["format"]
       17 CALL                             R5 6 1
       18 MOVE                             R4 R5
       19 RETURN                           R4 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["reduce"]
        3 GETTABLEKS                       R3 R1 K1 ["attributes"]
        5 DUPCLOSURE                       R4 K2 [PROTO_0]
        6 LOADK                            R5 K3 [""]
        7 CALL                             R2 3 1
        8 LOADK                            R4 K4 ["<%*%*>%*</%*>"]
        9 GETTABLEKS                       R6 R1 K5 ["name"]
       11 MOVE                             R7 R2
       12 MOVE                             R8 R0
       13 GETTABLEKS                       R9 R1 K5 ["name"]
       15 NAMECALL                         R4 R4 K6 ["format"]
       17 CALL                             R4 5 1
       18 MOVE                             R3 R4
       19 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["reduce"]
        3 GETTABLEKS                       R4 R1 K1 ["attributes"]
        5 DUPCLOSURE                       R5 K2 [PROTO_0]
        6 LOADK                            R6 K3 [""]
        7 CALL                             R3 3 1
        8 LOADK                            R4 K4 ["<%*%*>%*</%*>"]
        9 GETTABLEKS                       R6 R1 K5 ["name"]
       11 MOVE                             R7 R3
       12 MOVE                             R8 R0
       13 GETTABLEKS                       R9 R1 K5 ["name"]
       15 NAMECALL                         R4 R4 K6 ["format"]
       17 CALL                             R4 5 1
       18 MOVE                             R2 R4
       19 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["escapeRichFormatting"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["reduce"]
        8 MOVE                             R4 R1
        9 DUPCLOSURE                       R5 K2 [PROTO_2]
       10 CAPTURE                          UPVAL U1
       11 MOVE                             R6 R2
       12 CALL                             R3 3 1
       13 MOVE                             R2 R3
       14 RETURN                           R2 1

PROTO_4:
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
       48 GETTABLEKS                       R5 R5 K11 ["EngineTags"]
       50 JUMPIFEQKNIL                     R5 ; [+12]
       52 GETIMPORT                        R5 K13 [next]
       54 GETTABLEKS                       R6 R3 K2 ["props"]
       56 GETTABLEKS                       R6 R6 K11 ["EngineTags"]
       58 CALL                             R5 1 1
       59 JUMPIFNOTEQKNIL                  R5 ; [+2]
       61 LOADB                            R4 0 +1
       62 LOADB                            R4 1
       63 SETTABLEKS                       R4 R3 K14 ["hasRichText"]
       65 GETTABLEKS                       R4 R3 K14 ["hasRichText"]
       67 JUMPIFNOT                        R4 ; [+24]
       68 GETTABLEKS                       R4 R3 K2 ["props"]
       70 GETTABLEKS                       R4 R4 K15 ["Text"]
       72 JUMPIFNOT                        R4 ; [+19]
       73 GETUPVAL                         R4 1
       74 GETTABLEKS                       R4 R4 K16 ["assign"]
       76 GETTABLEKS                       R5 R3 K2 ["props"]
       78 DUPTABLE                         R6 K17 [{"Text"}]
       79 GETUPVAL                         R7 3
       80 GETTABLEKS                       R7 R7 K18 ["unescapeRichFormatting"]
       82 GETTABLEKS                       R8 R3 K2 ["props"]
       84 GETTABLEKS                       R8 R8 K15 ["Text"]
       86 CALL                             R7 1 1
       87 SETTABLEKS                       R7 R6 K15 ["Text"]
       89 CALL                             R4 2 1
       90 SETTABLEKS                       R4 R3 K2 ["props"]
       92 RETURN                           R3 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 GETTABLEKS                       R3 R0 K1 ["Element"]
        5 MOVE                             R4 R1
        6 JUMPIF                           R4 ; [+2]
        7 GETTABLEKS                       R4 R0 K2 ["props"]
        9 GETTABLEKS                       R5 R0 K3 ["mapProps"]
       11 CALL                             R2 3 -1
       12 RETURN                           R2 -1

PROTO_6:
        0 DUPTABLE                         R1 K1 [{"X"}]
        1 LOADN                            R2 100
        2 SETTABLEKS                       R2 R1 K0 ["X"]
        4 RETURN                           R1 1

PROTO_7:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R3 K1 ["Text"]
        4 NAMECALL                         R1 R0 K2 ["_getWidth"]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["GetTextBoundsAsync"]
        4 CALL                             R0 2 1
        5 GETTABLEKS                       R0 R0 K1 ["X"]
        7 RETURN                           R0 1

PROTO_9:
        0 GETIMPORT                        R2 K2 [Instance.new]
        2 LOADK                            R3 K3 ["GetTextBoundsParams"]
        3 CALL                             R2 1 1
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R4 R0 K4 ["props"]
        7 GETTABLEKS                       R4 R4 K5 ["fontStyle"]
        9 CALL                             R3 1 1
       10 SETTABLEKS                       R3 R2 K6 ["Font"]
       12 GETTABLEKS                       R3 R0 K4 ["props"]
       14 GETTABLEKS                       R3 R3 K5 ["fontStyle"]
       16 GETTABLEKS                       R3 R3 K7 ["FontSize"]
       18 SETTABLEKS                       R3 R2 K8 ["Size"]
       20 SETTABLEKS                       R1 R2 K9 ["Text"]
       22 GETTABLEKS                       R3 R0 K10 ["hasRichText"]
       24 JUMPIFNOT                        R3 ; [+24]
       25 GETTABLEKS                       R4 R0 K4 ["props"]
       27 GETTABLEKS                       R4 R4 K11 ["EngineTags"]
       29 GETUPVAL                         R5 1
       30 GETTABLEKS                       R5 R5 K12 ["escapeRichFormatting"]
       32 MOVE                             R6 R1
       33 CALL                             R5 1 1
       34 GETUPVAL                         R6 2
       35 GETTABLEKS                       R6 R6 K13 ["reduce"]
       37 MOVE                             R7 R4
       38 DUPCLOSURE                       R8 K14 [PROTO_2]
       39 CAPTURE                          UPVAL U2
       40 MOVE                             R9 R5
       41 CALL                             R6 3 1
       42 MOVE                             R5 R6
       43 MOVE                             R3 R5
       44 SETTABLEKS                       R3 R2 K9 ["Text"]
       46 LOADB                            R3 1
       47 SETTABLEKS                       R3 R2 K15 ["RichText"]
       49 GETIMPORT                        R3 K17 [pcall]
       51 NEWCLOSURE                       R4 P1
       52 CAPTURE                          UPVAL U3
       53 CAPTURE                          VAL R2
       54 CALL                             R3 1 2
       55 JUMPIFNOT                        R3 ; [+1]
       56 RETURN                           R4 1
       57 GETUPVAL                         R6 4
       58 GETTABLEKS                       R7 R2 K9 ["Text"]
       60 GETTABLE                         R5 R6 R7
       61 JUMPIF                           R5 ; [+15]
       62 GETUPVAL                         R5 4
       63 GETTABLEKS                       R6 R2 K9 ["Text"]
       65 LOADB                            R7 1
       66 SETTABLE                         R7 R5 R6
       67 GETIMPORT                        R5 K19 [warn]
       69 LOADK                            R7 K20 ["Failed to get width for the %* in BaseTextElement"]
       70 GETTABLEKS                       R9 R2 K9 ["Text"]
       72 NAMECALL                         R7 R7 K21 ["format"]
       74 CALL                             R7 2 1
       75 MOVE                             R6 R7
       76 CALL                             R5 1 0
       77 LOADB                            R5 0
       78 SETTABLEKS                       R5 R2 K15 ["RichText"]
       80 GETUPVAL                         R5 3
       81 MOVE                             R7 R2
       82 NAMECALL                         R5 R5 K22 ["GetTextBoundsAsync"]
       84 CALL                             R5 2 1
       85 GETTABLEKS                       R5 R5 K23 ["X"]
       87 RETURN                           R5 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["_getWidth"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_11:
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

PROTO_12:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R3 K1 ["Text"]
        4 GETTABLEKS                       R4 R0 K2 ["hasRichText"]
        6 JUMPIFNOT                        R4 ; [+33]
        7 GETTABLEKS                       R4 R0 K0 ["props"]
        9 GETTABLEKS                       R4 R4 K1 ["Text"]
       11 JUMPIFNOT                        R4 ; [+28]
       12 GETTABLEKS                       R4 R0 K0 ["props"]
       14 GETTABLEKS                       R4 R4 K3 ["EngineTags"]
       16 JUMPIFNOT                        R4 ; [+23]
       17 GETTABLEKS                       R4 R0 K0 ["props"]
       19 GETTABLEKS                       R4 R4 K1 ["Text"]
       21 GETTABLEKS                       R5 R0 K0 ["props"]
       23 GETTABLEKS                       R5 R5 K3 ["EngineTags"]
       25 GETUPVAL                         R6 0
       26 GETTABLEKS                       R6 R6 K4 ["escapeRichFormatting"]
       28 MOVE                             R7 R4
       29 CALL                             R6 1 1
       30 GETUPVAL                         R7 1
       31 GETTABLEKS                       R7 R7 K5 ["reduce"]
       33 MOVE                             R8 R5
       34 DUPCLOSURE                       R9 K6 [PROTO_2]
       35 CAPTURE                          UPVAL U1
       36 MOVE                             R10 R6
       37 CALL                             R7 3 1
       38 MOVE                             R6 R7
       39 MOVE                             R3 R6
       40 GETUPVAL                         R4 2
       41 GETTABLEKS                       R4 R4 K7 ["createElement"]
       43 GETTABLEKS                       R5 R0 K8 ["Element"]
       45 GETTABLEKS                       R6 R0 K9 ["mapProps"]
       47 GETUPVAL                         R7 3
       48 GETTABLEKS                       R8 R0 K0 ["props"]
       50 DUPTABLE                         R9 K15 [{"id", "Text", "RichText", "AutomaticSize", "LayoutOrder", "key", "EngineTags"}]
       51 SETTABLEKS                       R1 R9 K10 ["id"]
       53 SETTABLEKS                       R3 R9 K1 ["Text"]
       55 GETTABLEKS                       R10 R0 K2 ["hasRichText"]
       57 SETTABLEKS                       R10 R9 K11 ["RichText"]
       59 GETIMPORT                        R10 K18 [Enum.AutomaticSize.XY]
       61 SETTABLEKS                       R10 R9 K12 ["AutomaticSize"]
       63 SETTABLEKS                       R2 R9 K13 ["LayoutOrder"]
       65 FASTCALL1                        TOSTRING R2 ; [+3]
       66 MOVE                             R11 R2
       67 GETIMPORT                        R10 K20 [tostring]
       69 CALL                             R10 1 1
       70 SETTABLEKS                       R10 R9 K14 ["key"]
       72 GETUPVAL                         R10 1
       73 GETTABLEKS                       R10 R10 K21 ["None"]
       75 SETTABLEKS                       R10 R9 K3 ["EngineTags"]
       77 CALL                             R7 2 -1
       78 CALL                             R6 -1 -1
       79 CALL                             R4 -1 -1
       80 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Components"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETTABLEKS                       R1 R0 K4 ["Parent"]
       11 GETIMPORT                        R2 K6 [require]
       13 GETTABLEKS                       R3 R1 K7 ["React"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R1 K8 ["Dash"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R1 K9 ["MarkdownCore"]
       25 CALL                             R4 1 1
       26 GETTABLEKS                       R4 R4 K10 ["Utils"]
       28 GETTABLEKS                       R4 R4 K11 ["isCli"]
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R0 K12 ["Enums"]
       34 GETTABLEKS                       R6 R6 K13 ["TextSplitBy"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R7 R0 K10 ["Utils"]
       41 GETTABLEKS                       R7 R7 K14 ["SplitText"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETTABLEKS                       R8 R0 K15 ["Types"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R1 K9 ["MarkdownCore"]
       53 CALL                             R8 1 1
       54 GETTABLEKS                       R8 R8 K10 ["Utils"]
       56 GETTABLEKS                       R8 R8 K16 ["Escape"]
       58 GETIMPORT                        R9 K6 [require]
       60 GETTABLEKS                       R10 R0 K10 ["Utils"]
       62 GETTABLEKS                       R10 R10 K17 ["InlineElementType"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K6 [require]
       67 GETTABLEKS                       R11 R0 K10 ["Utils"]
       69 GETTABLEKS                       R11 R11 K18 ["getFontFace"]
       71 CALL                             R10 1 1
       72 GETTABLEKS                       R11 R3 K19 ["join"]
       74 NEWTABLE                         R12 0 0
       76 DUPCLOSURE                       R13 K20 [PROTO_1]
       77 CAPTURE                          VAL R3
       78 DUPCLOSURE                       R14 K21 [PROTO_3]
       79 CAPTURE                          VAL R8
       80 CAPTURE                          VAL R3
       81 NEWTABLE                         R15 8 0
       83 SETTABLEKS                       R15 R15 K22 ["__index"]
       85 SETTABLEKS                       R9 R15 K23 ["__type"]
       87 DUPCLOSURE                       R16 K24 [PROTO_4]
       88 CAPTURE                          VAL R15
       89 CAPTURE                          VAL R3
       90 CAPTURE                          VAL R5
       91 CAPTURE                          VAL R8
       92 SETTABLEKS                       R16 R15 K25 ["new"]
       94 DUPCLOSURE                       R16 K26 [PROTO_5]
       95 CAPTURE                          VAL R15
       96 SETTABLEKS                       R16 R15 K27 ["_clone"]
       98 GETIMPORT                        R16 K29 [game]
      100 LOADK                            R18 K30 ["TextService"]
      101 NAMECALL                         R16 R16 K31 ["GetService"]
      103 CALL                             R16 2 1
      104 MOVE                             R17 R4
      105 CALL                             R17 0 1
      106 JUMPIFNOT                        R17 ; [+16]
      107 NEWTABLE                         R17 2 0
      109 SETTABLEKS                       R17 R17 K22 ["__index"]
      111 NEWTABLE                         R19 0 0
      113 FASTCALL2                        SETMETATABLE R19 R17 ; [+4]
      115 MOVE                             R20 R17
      116 GETIMPORT                        R18 K33 [setmetatable]
      118 CALL                             R18 2 1
      119 MOVE                             R16 R18
      120 DUPCLOSURE                       R18 K34 [PROTO_6]
      121 SETTABLEKS                       R18 R17 K35 ["GetTextBoundsAsync"]
      123 DUPCLOSURE                       R17 K36 [PROTO_7]
      124 SETTABLEKS                       R17 R15 K37 ["getWidth"]
      126 NEWCLOSURE                       R17 P6
      127 CAPTURE                          VAL R10
      128 CAPTURE                          VAL R8
      129 CAPTURE                          VAL R3
      130 CAPTURE                          REF R16
      131 CAPTURE                          VAL R12
      132 SETTABLEKS                       R17 R15 K38 ["_getWidth"]
      134 DUPCLOSURE                       R17 K39 [PROTO_11]
      135 CAPTURE                          VAL R6
      136 CAPTURE                          VAL R5
      137 CAPTURE                          VAL R11
      138 SETTABLEKS                       R17 R15 K40 ["split"]
      140 DUPCLOSURE                       R17 K41 [PROTO_12]
      141 CAPTURE                          VAL R8
      142 CAPTURE                          VAL R3
      143 CAPTURE                          VAL R2
      144 CAPTURE                          VAL R11
      145 SETTABLEKS                       R17 R15 K42 ["render"]
      147 CLOSEUPVALS                      R16
      148 RETURN                           R15 1
