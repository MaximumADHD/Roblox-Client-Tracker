PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["joinDeep"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_1:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R3 K2 ["[Default link callback]: URL [%*] is clicked"]
        3 MOVE                             R5 R0
        4 NAMECALL                         R3 R3 K3 ["format"]
        6 CALL                             R3 2 1
        7 MOVE                             R2 R3
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["joinDeep"]
        3 GETTABLEKS                       R2 R0 K1 ["textStyles"]
        5 GETTABLEKS                       R3 R0 K2 ["codeStyles"]
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_3:
        0 LOADK                            R3 K0 ["%s*[\r\n]%s*"]
        1 LOADK                            R4 K1 [" "]
        2 NAMECALL                         R1 R0 K2 ["gsub"]
        4 CALL                             R1 3 1
        5 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        4 LOADK                            R4 K0 ["getFontFace is disabled"]
        5 GETIMPORT                        R2 K2 [assert]
        7 CALL                             R2 2 0
        8 GETTABLEKS                       R2 R0 K3 ["fontFace"]
       10 JUMPIFNOT                        R2 ; [+3]
       11 GETTABLEKS                       R2 R0 K3 ["fontFace"]
       13 RETURN                           R2 1
       14 GETTABLEKS                       R2 R0 K4 ["font"]
       16 JUMPIFNOT                        R2 ; [+6]
       17 GETIMPORT                        R2 K7 [Font.fromEnum]
       19 GETTABLEKS                       R3 R0 K4 ["font"]
       21 CALL                             R2 1 -1
       22 RETURN                           R2 -1
       23 GETIMPORT                        R2 K7 [Font.fromEnum]
       25 MOVE                             R3 R1
       26 CALL                             R2 1 -1
       27 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["shouldUseTopPadding is disabled"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETTABLEKS                       R2 R0 K3 ["offset"]
       10 JUMPIFNOTEQKN                    R2 K4 [0] ; [+2]
       12 LOADB                            R1 0 +1
       13 LOADB                            R1 1
       14 RETURN                           R1 1

PROTO_6:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 DUPTABLE                         R1 K5 [{"Bold", "Italic", "Strike", "Color", "FontFace"}]
        4 GETTABLEKS                       R2 R0 K6 ["bold"]
        6 SETTABLEKS                       R2 R1 K0 ["Bold"]
        8 GETTABLEKS                       R2 R0 K7 ["italic"]
       10 SETTABLEKS                       R2 R1 K1 ["Italic"]
       12 GETTABLEKS                       R2 R0 K8 ["strike"]
       14 SETTABLEKS                       R2 R1 K2 ["Strike"]
       16 GETTABLEKS                       R2 R0 K9 ["color"]
       18 SETTABLEKS                       R2 R1 K3 ["Color"]
       20 GETTABLEKS                       R2 R0 K10 ["fontFace"]
       22 SETTABLEKS                       R2 R1 K4 ["FontFace"]
       24 RETURN                           R1 1

PROTO_7:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R2
        2 RETURN                           R2 1
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K0 ["renderers"]
        6 GETTABLEKS                       R4 R0 K1 ["name"]
        8 GETTABLE                         R2 R3 R4
        9 JUMPIF                           R2 ; [+12]
       10 GETIMPORT                        R3 K3 [warn]
       12 LOADK                            R5 K4 ["No renderer found for node: $%*"]
       13 GETTABLEKS                       R7 R0 K1 ["name"]
       15 NAMECALL                         R5 R5 K5 ["format"]
       17 CALL                             R5 2 1
       18 MOVE                             R4 R5
       19 CALL                             R3 1 0
       20 LOADNIL                          R3
       21 RETURN                           R3 1
       22 MOVE                             R3 R2
       23 MOVE                             R4 R0
       24 MOVE                             R5 R1
       25 CALL                             R3 2 -1
       26 RETURN                           R3 -1

PROTO_8:
        0 JUMPIF                           R0 ; [+3]
        1 NEWTABLE                         R2 0 0
        3 RETURN                           R2 1
        4 NEWTABLE                         R2 0 0
        6 MOVE                             R3 R0
        7 LOADNIL                          R4
        8 LOADNIL                          R5
        9 FORGPREP                         R3
       10 JUMPIF                           R7 ; [+2]
       11 LOADNIL                          R8
       12 JUMP                             ; [+24]
       13 GETUPVAL                         R10 0
       14 GETTABLEKS                       R10 R10 K0 ["renderers"]
       16 GETTABLEKS                       R11 R7 K1 ["name"]
       18 GETTABLE                         R9 R10 R11
       19 JUMPIF                           R9 ; [+12]
       20 GETIMPORT                        R10 K3 [warn]
       22 LOADK                            R12 K4 ["No renderer found for node: $%*"]
       23 GETTABLEKS                       R14 R7 K1 ["name"]
       25 NAMECALL                         R12 R12 K5 ["format"]
       27 CALL                             R12 2 1
       28 MOVE                             R11 R12
       29 CALL                             R10 1 0
       30 LOADNIL                          R8
       31 JUMP                             ; [+5]
       32 MOVE                             R10 R9
       33 MOVE                             R11 R7
       34 MOVE                             R12 R1
       35 CALL                             R10 2 1
       36 MOVE                             R8 R10
       37 JUMPIFNOT                        R8 ; [+25]
       38 LENGTH                           R9 R8
       39 LOADN                            R10 0
       40 JUMPIFNOTLT                      R10 R9 ; [+15]
       42 MOVE                             R9 R8
       43 LOADNIL                          R10
       44 LOADNIL                          R11
       45 FORGPREP                         R9
       46 FASTCALL2                        TABLE_INSERT R2 R13 ; [+5]
       48 MOVE                             R15 R2
       49 MOVE                             R16 R13
       50 GETIMPORT                        R14 K8 [table.insert]
       52 CALL                             R14 2 0
       53 FORGLOOP                         R9 2 ; [-8]
       55 JUMP                             ; [+7]
       56 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       58 MOVE                             R10 R2
       59 MOVE                             R11 R8
       60 GETIMPORT                        R9 K8 [table.insert]
       62 CALL                             R9 2 0
       63 FORGLOOP                         R3 2 ; [-54]
       65 RETURN                           R2 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K2 [{"Elements"}]
        5 GETUPVAL                         R5 2
        6 GETTABLEKS                       R5 R5 K3 ["filter"]
        8 GETTABLEKS                       R6 R1 K4 ["processChildren"]
       10 MOVE                             R7 R0
       11 GETUPVAL                         R8 3
       12 MOVE                             R9 R1
       13 DUPTABLE                         R10 K6 [{"isInline"}]
       14 LOADB                            R11 1
       15 SETTABLEKS                       R11 R10 K5 ["isInline"]
       17 CALL                             R8 2 -1
       18 CALL                             R6 -1 1
       19 GETUPVAL                         R7 4
       20 CALL                             R5 2 1
       21 SETTABLEKS                       R5 R4 K1 ["Elements"]
       23 CALL                             R2 2 -1
       24 RETURN                           R2 -1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K4 [{"tag", "BorderSizePixel", "backgroundStyle"}]
        5 LOADK                            R5 K5 ["size-full-0 auto-y col"]
        6 SETTABLEKS                       R5 R4 K1 ["tag"]
        8 LOADN                            R5 0
        9 SETTABLEKS                       R5 R4 K2 ["BorderSizePixel"]
       11 DUPTABLE                         R5 K7 [{"Transparency"}]
       12 LOADN                            R6 1
       13 SETTABLEKS                       R6 R5 K6 ["Transparency"]
       15 SETTABLEKS                       R5 R4 K3 ["backgroundStyle"]
       17 GETTABLEKS                       R5 R1 K8 ["processChildren"]
       19 GETTABLEKS                       R6 R0 K9 ["children"]
       21 MOVE                             R7 R1
       22 CALL                             R5 2 1
       23 CALL                             R2 3 -1
       24 RETURN                           R2 -1

PROTO_11:
        0 GETTABLEKS                       R4 R0 K0 ["attributes"]
        2 JUMPIFNOT                        R4 ; [+15]
        3 GETTABLEKS                       R5 R0 K0 ["attributes"]
        5 GETTABLEKS                       R5 R5 K1 ["depth"]
        7 FASTCALL1                        TYPE R5 ; [+2]
        8 GETIMPORT                        R4 K3 [type]
       10 CALL                             R4 1 1
       11 JUMPIFNOTEQKS                    R4 K4 ["number"] ; [+6]
       13 GETTABLEKS                       R3 R0 K0 ["attributes"]
       15 GETTABLEKS                       R3 R3 K1 ["depth"]
       17 JUMP                             ; [+1]
       18 LOADN                            R3 1
       19 LOADN                            R4 1
       20 GETTABLEKS                       R6 R1 K5 ["headerStyles"]
       22 LENGTH                           R5 R6
       23 FASTCALL                         MATH_CLAMP ; [+2]
       24 GETIMPORT                        R2 K8 [math.clamp]
       26 CALL                             R2 3 1
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R3 R3 K9 ["createElement"]
       30 GETUPVAL                         R4 1
       31 DUPTABLE                         R5 K13 [{"key", "LayoutOrder", "tag"}]
       32 GETTABLEKS                       R7 R0 K14 ["index"]
       34 FASTCALL1                        TOSTRING R7 ; [+2]
       35 GETIMPORT                        R6 K16 [tostring]
       37 CALL                             R6 1 1
       38 SETTABLEKS                       R6 R5 K10 ["key"]
       40 GETTABLEKS                       R6 R0 K14 ["index"]
       42 SETTABLEKS                       R6 R5 K11 ["LayoutOrder"]
       44 LOADK                            R6 K17 ["size-full-0 auto-y"]
       45 SETTABLEKS                       R6 R5 K12 ["tag"]
       47 DUPTABLE                         R6 K20 [{"UIPadding", "InlineLayout"}]
       48 GETUPVAL                         R8 2
       49 CALL                             R8 0 1
       50 JUMPIFNOT                        R8 ; [+15]
       51 GETUPVAL                         R9 2
       52 CALL                             R9 0 1
       53 FASTCALL2K                       ASSERT R9 K21 ; [+4]
       55 LOADK                            R10 K21 ["shouldUseTopPadding is disabled"]
       56 GETIMPORT                        R8 K23 [assert]
       58 CALL                             R8 2 0
       59 GETTABLEKS                       R8 R0 K24 ["offset"]
       61 JUMPIFNOTEQKN                    R8 K25 [0] ; [+2]
       63 LOADB                            R7 0 +1
       64 LOADB                            R7 1
       65 JUMPIFNOT                        R7 ; [+13]
       66 GETUPVAL                         R7 0
       67 GETTABLEKS                       R7 R7 K9 ["createElement"]
       69 LOADK                            R8 K18 ["UIPadding"]
       70 DUPTABLE                         R9 K27 [{"PaddingTop"}]
       71 GETIMPORT                        R10 K30 [UDim.new]
       73 LOADN                            R11 0
       74 LOADN                            R12 20
       75 CALL                             R10 2 1
       76 SETTABLEKS                       R10 R9 K26 ["PaddingTop"]
       78 CALL                             R7 2 1
       79 SETTABLEKS                       R7 R6 K18 ["UIPadding"]
       81 GETUPVAL                         R7 3
       82 GETTABLEKS                       R8 R0 K31 ["children"]
       84 GETUPVAL                         R9 4
       85 MOVE                             R10 R1
       86 DUPTABLE                         R11 K33 [{"textStyles"}]
       87 GETTABLEKS                       R13 R1 K5 ["headerStyles"]
       89 GETTABLE                         R12 R13 R2
       90 SETTABLEKS                       R12 R11 K32 ["textStyles"]
       92 CALL                             R9 2 -1
       93 CALL                             R7 -1 1
       94 SETTABLEKS                       R7 R6 K19 ["InlineLayout"]
       96 CALL                             R3 3 -1
       97 RETURN                           R3 -1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K4 [{"key", "LayoutOrder", "tag"}]
        5 GETTABLEKS                       R6 R0 K5 ["index"]
        7 FASTCALL1                        TOSTRING R6 ; [+2]
        8 GETIMPORT                        R5 K7 [tostring]
       10 CALL                             R5 1 1
       11 SETTABLEKS                       R5 R4 K1 ["key"]
       13 GETTABLEKS                       R5 R0 K5 ["index"]
       15 SETTABLEKS                       R5 R4 K2 ["LayoutOrder"]
       17 LOADK                            R5 K8 ["size-full-0 auto-y"]
       18 SETTABLEKS                       R5 R4 K3 ["tag"]
       20 DUPTABLE                         R5 K11 [{"UIPadding", "InlineLayout"}]
       21 GETUPVAL                         R7 2
       22 CALL                             R7 0 1
       23 JUMPIFNOT                        R7 ; [+15]
       24 GETUPVAL                         R8 2
       25 CALL                             R8 0 1
       26 FASTCALL2K                       ASSERT R8 K12 ; [+4]
       28 LOADK                            R9 K12 ["shouldUseTopPadding is disabled"]
       29 GETIMPORT                        R7 K14 [assert]
       31 CALL                             R7 2 0
       32 GETTABLEKS                       R7 R0 K15 ["offset"]
       34 JUMPIFNOTEQKN                    R7 K16 [0] ; [+2]
       36 LOADB                            R6 0 +1
       37 LOADB                            R6 1
       38 JUMPIFNOT                        R6 ; [+13]
       39 GETUPVAL                         R6 0
       40 GETTABLEKS                       R6 R6 K0 ["createElement"]
       42 LOADK                            R7 K9 ["UIPadding"]
       43 DUPTABLE                         R8 K18 [{"PaddingTop"}]
       44 GETIMPORT                        R9 K21 [UDim.new]
       46 LOADN                            R10 0
       47 LOADN                            R11 10
       48 CALL                             R9 2 1
       49 SETTABLEKS                       R9 R8 K17 ["PaddingTop"]
       51 CALL                             R6 2 1
       52 SETTABLEKS                       R6 R5 K9 ["UIPadding"]
       54 GETUPVAL                         R6 3
       55 GETTABLEKS                       R7 R0 K22 ["children"]
       57 MOVE                             R8 R1
       58 CALL                             R6 2 1
       59 SETTABLEKS                       R6 R5 K10 ["InlineLayout"]
       61 CALL                             R2 3 -1
       62 RETURN                           R2 -1

PROTO_13:
        0 LENGTH                           R1 R0
        1 NEWTABLE                         R2 0 0
        3 LOADN                            R3 1
        4 LOADN                            R4 0
        5 JUMPIFNOTLE                      R4 R1 ; [+18]
        7 GETIMPORT                        R5 K2 [string.find]
        9 MOVE                             R6 R0
       10 LOADK                            R7 K3 ["\n"]
       11 MOVE                             R8 R4
       12 LOADB                            R9 1
       13 CALL                             R5 4 1
       14 JUMPIFNOT                        R5 ; [+9]
       15 FASTCALL1                        TOSTRING R3 ; [+3]
       16 MOVE                             R7 R3
       17 GETIMPORT                        R6 K5 [tostring]
       19 CALL                             R6 1 1
       20 SETTABLE                         R6 R2 R3
       21 ADDK                             R3 R3 K6 [1]
       22 ADDK                             R4 R5 K6 [1]
       23 JUMPBACK                         ; [-19]
       24 FASTCALL1                        TOSTRING R3 ; [+3]
       25 MOVE                             R6 R3
       26 GETIMPORT                        R5 K5 [tostring]
       28 CALL                             R5 1 1
       29 SETTABLE                         R5 R2 R3
       30 GETIMPORT                        R5 K9 [table.concat]
       32 MOVE                             R6 R2
       33 LOADK                            R7 K3 ["\n"]
       34 CALL                             R5 2 -1
       35 RETURN                           R5 -1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["ExternalContentSharing"]
        2 LOADK                            R3 K1 ["setClipboardText"]
        3 NAMECALL                         R0 R0 K2 ["GetMessageId"]
        5 CALL                             R0 3 1
        6 GETUPVAL                         R1 0
        7 MOVE                             R3 R0
        8 DUPTABLE                         R4 K4 [{"text"}]
        9 GETUPVAL                         R5 1
       10 SETTABLEKS                       R5 R4 K3 ["text"]
       12 NAMECALL                         R1 R1 K5 ["Publish"]
       14 CALL                             R1 3 -1
       15 RETURN                           R1 -1

PROTO_15:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K1 [pcall]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_17:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 RETURN                           R1 1

PROTO_18:
        0 GETTABLEKS                       R3 R0 K0 ["attributes"]
        2 JUMPIFNOT                        R3 ; [+5]
        3 GETTABLEKS                       R2 R0 K0 ["attributes"]
        5 GETTABLEKS                       R2 R2 K1 ["language"]
        7 JUMP                             ; [+1]
        8 LOADNIL                          R2
        9 GETTABLEKS                       R3 R0 K2 ["text"]
       11 MOVE                             R4 R3
       12 JUMPIFNOTEQKS                    R2 K3 ["lua"] ; [+9]
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K4 ["highlight"]
       17 MOVE                             R6 R3
       18 GETTABLEKS                       R7 R1 K5 ["colorScheme"]
       20 CALL                             R5 2 1
       21 MOVE                             R4 R5
       22 LOADNIL                          R5
       23 GETUPVAL                         R6 1
       24 GETTABLEKS                       R6 R6 K6 ["joinDeep"]
       26 GETTABLEKS                       R7 R1 K7 ["textStyles"]
       28 GETTABLEKS                       R8 R1 K8 ["codeStyles"]
       30 CALL                             R6 2 1
       31 DUPTABLE                         R7 K13 [{"TextWrapped", "fontStyle", "TextXAlignment", "tag"}]
       32 LOADB                            R8 0
       33 SETTABLEKS                       R8 R7 K9 ["TextWrapped"]
       35 DUPTABLE                         R8 K17 [{"FontSize", "Font", "LineHeight"}]
       36 GETTABLEKS                       R9 R6 K18 ["textSize"]
       38 SETTABLEKS                       R9 R8 K14 ["FontSize"]
       40 GETUPVAL                         R10 2
       41 CALL                             R10 0 1
       42 JUMPIFNOT                        R10 ; [+31]
       43 GETUPVAL                         R10 3
       44 GETUPVAL                         R12 2
       45 CALL                             R12 0 1
       46 FASTCALL2K                       ASSERT R12 K19 ; [+4]
       48 LOADK                            R13 K19 ["getFontFace is disabled"]
       49 GETIMPORT                        R11 K21 [assert]
       51 CALL                             R11 2 0
       52 GETTABLEKS                       R11 R6 K22 ["fontFace"]
       54 JUMPIFNOT                        R11 ; [+3]
       55 GETTABLEKS                       R9 R6 K22 ["fontFace"]
       57 JUMP                             ; [+18]
       58 GETTABLEKS                       R11 R6 K23 ["font"]
       60 JUMPIFNOT                        R11 ; [+7]
       61 GETIMPORT                        R11 K25 [Font.fromEnum]
       63 GETTABLEKS                       R12 R6 K23 ["font"]
       65 CALL                             R11 1 1
       66 MOVE                             R9 R11
       67 JUMP                             ; [+8]
       68 GETIMPORT                        R11 K25 [Font.fromEnum]
       70 MOVE                             R12 R10
       71 CALL                             R11 1 1
       72 MOVE                             R9 R11
       73 JUMP                             ; [+2]
       74 GETTABLEKS                       R9 R6 K23 ["font"]
       76 SETTABLEKS                       R9 R8 K15 ["Font"]
       78 GETTABLEKS                       R9 R6 K26 ["lineHeight"]
       80 SETTABLEKS                       R9 R8 K16 ["LineHeight"]
       82 SETTABLEKS                       R8 R7 K10 ["fontStyle"]
       84 GETIMPORT                        R8 K29 [Enum.TextXAlignment.Left]
       86 SETTABLEKS                       R8 R7 K11 ["TextXAlignment"]
       88 LOADK                            R8 K30 ["auto-xy padding-small align-y-top"]
       89 SETTABLEKS                       R8 R7 K12 ["tag"]
       91 MOVE                             R5 R7
       92 DUPTABLE                         R7 K35 [{"Text", "textStyle", "RichText", "ZIndex"}]
       93 SETTABLEKS                       R4 R7 K31 ["Text"]
       95 DUPTABLE                         R8 K37 [{"Color3"}]
       96 GETUPVAL                         R9 0
       97 GETTABLEKS                       R9 R9 K38 ["getTokenColor"]
       99 LOADK                            R10 K39 ["iden"]
      100 CALL                             R9 1 1
      101 SETTABLEKS                       R9 R8 K36 ["Color3"]
      103 SETTABLEKS                       R8 R7 K32 ["textStyle"]
      105 LOADB                            R8 1
      106 SETTABLEKS                       R8 R7 K33 ["RichText"]
      108 LOADN                            R8 1
      109 SETTABLEKS                       R8 R7 K34 ["ZIndex"]
      111 DUPTABLE                         R8 K41 [{"Text", "textStyle", "ZIndex", "TextSelectable"}]
      112 SETTABLEKS                       R3 R8 K31 ["Text"]
      114 DUPTABLE                         R9 K43 [{"Color3", "Transparency"}]
      115 GETUPVAL                         R10 0
      116 GETTABLEKS                       R10 R10 K38 ["getTokenColor"]
      118 LOADK                            R11 K39 ["iden"]
      119 CALL                             R10 1 1
      120 SETTABLEKS                       R10 R9 K36 ["Color3"]
      122 LOADK                            R10 K44 [0.4]
      123 SETTABLEKS                       R10 R9 K42 ["Transparency"]
      125 SETTABLEKS                       R9 R8 K32 ["textStyle"]
      127 LOADN                            R9 0
      128 SETTABLEKS                       R9 R8 K34 ["ZIndex"]
      130 LOADB                            R9 1
      131 SETTABLEKS                       R9 R8 K40 ["TextSelectable"]
      133 GETTABLEKS                       R9 R1 K45 ["codeBackgroundStyles"]
      135 JUMPIF                           R9 ; [+2]
      136 NEWTABLE                         R9 0 0
      138 GETTABLEKS                       R10 R9 K46 ["backgroundColor3"]
      140 JUMPIF                           R10 ; [+5]
      141 GETUPVAL                         R10 0
      142 GETTABLEKS                       R10 R10 K38 ["getTokenColor"]
      144 LOADK                            R11 K47 ["background"]
      145 CALL                             R10 1 1
      146 GETTABLEKS                       R12 R9 K49 ["backgroundTransparency"]
      148 ORK                              R11 R12 K48 [0]
      149 LOADNIL                          R12
      150 GETUPVAL                         R13 4
      151 JUMPIFNOT                        R13 ; [+7]
      152 GETTABLEKS                       R13 R1 K50 ["codeSettings"]
      154 JUMPIFNOT                        R13 ; [+4]
      155 GETTABLEKS                       R13 R1 K50 ["codeSettings"]
      157 GETTABLEKS                       R13 R13 K51 ["showLineNumbers"]
      159 JUMPIFNOT                        R13 ; [+4]
      160 GETUPVAL                         R14 5
      161 MOVE                             R15 R3
      162 CALL                             R14 1 1
      163 MOVE                             R12 R14
      164 GETUPVAL                         R14 4
      165 JUMPIFNOT                        R14 ; [+7]
      166 GETTABLEKS                       R14 R1 K50 ["codeSettings"]
      168 JUMPIFNOT                        R14 ; [+4]
      169 GETTABLEKS                       R14 R1 K50 ["codeSettings"]
      171 GETTABLEKS                       R14 R14 K52 ["showCopyButton"]
      173 GETUPVAL                         R15 6
      174 GETTABLEKS                       R15 R15 K53 ["createElement"]
      176 GETUPVAL                         R16 7
      177 DUPTABLE                         R17 K58 [{"key", "LayoutOrder", "tag", "backgroundStyle", "BorderSizePixel"}]
      178 GETTABLEKS                       R19 R0 K59 ["index"]
      180 FASTCALL1                        TOSTRING R19 ; [+2]
      181 GETIMPORT                        R18 K61 [tostring]
      183 CALL                             R18 1 1
      184 SETTABLEKS                       R18 R17 K54 ["key"]
      186 GETTABLEKS                       R18 R0 K59 ["index"]
      188 SETTABLEKS                       R18 R17 K55 ["LayoutOrder"]
      190 LOADK                            R18 K62 ["size-full-0 auto-y col"]
      191 SETTABLEKS                       R18 R17 K12 ["tag"]
      193 DUPTABLE                         R18 K63 [{"Transparency"}]
      194 LOADN                            R19 1
      195 SETTABLEKS                       R19 R18 K42 ["Transparency"]
      197 SETTABLEKS                       R18 R17 K56 ["backgroundStyle"]
      199 LOADN                            R18 0
      200 SETTABLEKS                       R18 R17 K57 ["BorderSizePixel"]
      202 DUPTABLE                         R18 K67 [{"UIPadding", "TitleBar", "CodeWrapper"}]
      203 GETUPVAL                         R19 6
      204 GETTABLEKS                       R19 R19 K53 ["createElement"]
      206 LOADK                            R20 K64 ["UIPadding"]
      207 DUPTABLE                         R21 K70 [{"PaddingTop", "PaddingBottom"}]
      208 GETUPVAL                         R23 2
      209 CALL                             R23 0 1
      210 JUMPIFNOT                        R23 ; [+15]
      211 GETUPVAL                         R25 2
      212 CALL                             R25 0 1
      213 FASTCALL2K                       ASSERT R25 K71 ; [+4]
      215 LOADK                            R26 K71 ["shouldUseTopPadding is disabled"]
      216 GETIMPORT                        R24 K21 [assert]
      218 CALL                             R24 2 0
      219 GETTABLEKS                       R24 R0 K72 ["offset"]
      221 JUMPIFNOTEQKN                    R24 K48 [0] ; [+2]
      223 LOADB                            R23 0 +1
      224 LOADB                            R23 1
      225 JUMPIFNOT                        R23 ; [+6]
      226 GETIMPORT                        R22 K75 [UDim.new]
      228 LOADN                            R23 0
      229 LOADN                            R24 10
      230 CALL                             R22 2 1
      231 JUMP                             ; [+1]
      232 LOADNIL                          R22
      233 SETTABLEKS                       R22 R21 K68 ["PaddingTop"]
      235 GETIMPORT                        R22 K75 [UDim.new]
      237 LOADN                            R23 0
      238 LOADN                            R24 10
      239 CALL                             R22 2 1
      240 SETTABLEKS                       R22 R21 K69 ["PaddingBottom"]
      242 CALL                             R19 2 1
      243 SETTABLEKS                       R19 R18 K64 ["UIPadding"]
      245 JUMPIFNOT                        R14 ; [+52]
      246 GETUPVAL                         R19 6
      247 GETTABLEKS                       R19 R19 K53 ["createElement"]
      249 GETUPVAL                         R20 8
      250 GETTABLEKS                       R20 R20 K76 ["View"]
      252 DUPTABLE                         R21 K77 [{"tag", "LayoutOrder"}]
      253 LOADK                            R22 K78 ["size-full-0 auto-y row align-x-right bg-shift-300 radius-small"]
      254 SETTABLEKS                       R22 R21 K12 ["tag"]
      256 LOADN                            R22 1
      257 SETTABLEKS                       R22 R21 K55 ["LayoutOrder"]
      259 DUPTABLE                         R22 K80 [{"CopyToClipboardButton"}]
      260 GETUPVAL                         R23 6
      261 GETTABLEKS                       R23 R23 K53 ["createElement"]
      263 GETUPVAL                         R24 8
      264 GETTABLEKS                       R24 R24 K81 ["IconButton"]
      266 DUPTABLE                         R25 K85 [{"size", "icon", "onActivated"}]
      267 GETUPVAL                         R26 8
      268 GETTABLEKS                       R26 R26 K86 ["Enums"]
      270 GETTABLEKS                       R26 R26 K87 ["InputSize"]
      272 GETTABLEKS                       R26 R26 K88 ["Small"]
      274 SETTABLEKS                       R26 R25 K82 ["size"]
      276 DUPTABLE                         R26 K90 [{"name"}]
      277 GETUPVAL                         R27 8
      278 GETTABLEKS                       R27 R27 K86 ["Enums"]
      280 GETTABLEKS                       R27 R27 K91 ["IconName"]
      282 GETTABLEKS                       R27 R27 K92 ["TwoStackedSquares"]
      284 SETTABLEKS                       R27 R26 K89 ["name"]
      286 SETTABLEKS                       R26 R25 K83 ["icon"]
      288 GETUPVAL                         R26 9
      289 MOVE                             R27 R3
      290 CALL                             R26 1 1
      291 SETTABLEKS                       R26 R25 K84 ["onActivated"]
      293 CALL                             R23 2 1
      294 SETTABLEKS                       R23 R22 K79 ["CopyToClipboardButton"]
      296 CALL                             R19 3 1
      297 JUMP                             ; [+1]
      298 LOADNIL                          R19
      299 SETTABLEKS                       R19 R18 K65 ["TitleBar"]
      301 GETUPVAL                         R19 6
      302 GETTABLEKS                       R19 R19 K53 ["createElement"]
      304 GETUPVAL                         R20 8
      305 GETTABLEKS                       R20 R20 K76 ["View"]
      307 DUPTABLE                         R21 K93 [{"LayoutOrder", "tag"}]
      308 LOADN                            R22 2
      309 SETTABLEKS                       R22 R21 K55 ["LayoutOrder"]
      311 NEWTABLE                         R22 2 0
      313 LOADB                            R23 1
      314 SETTABLEKS                       R23 R22 K94 ["size-full-0 auto-y"]
      316 SETTABLEKS                       R13 R22 K95 ["row align-y-center"]
      318 SETTABLEKS                       R22 R21 K12 ["tag"]
      320 DUPTABLE                         R22 K98 [{"LineNumbers", "ScrollFrameWrapper"}]
      321 JUMPIFNOT                        R13 ; [+21]
      322 GETUPVAL                         R23 6
      323 GETTABLEKS                       R23 R23 K53 ["createElement"]
      325 GETUPVAL                         R24 8
      326 GETTABLEKS                       R24 R24 K31 ["Text"]
      328 DUPTABLE                         R25 K99 [{"Text", "fontStyle", "LayoutOrder", "tag"}]
      329 SETTABLEKS                       R12 R25 K31 ["Text"]
      331 GETTABLEKS                       R26 R5 K10 ["fontStyle"]
      333 SETTABLEKS                       R26 R25 K10 ["fontStyle"]
      335 LOADN                            R26 1
      336 SETTABLEKS                       R26 R25 K55 ["LayoutOrder"]
      338 LOADK                            R26 K100 ["size-0-0 auto-xy text-align-x-right text-align-y-center padding-small bg-shift-100 content-emphasis"]
      339 SETTABLEKS                       R26 R25 K12 ["tag"]
      341 CALL                             R23 2 1
      342 JUMP                             ; [+1]
      343 LOADNIL                          R23
      344 SETTABLEKS                       R23 R22 K96 ["LineNumbers"]
      346 GETUPVAL                         R23 6
      347 GETTABLEKS                       R23 R23 K53 ["createElement"]
      349 GETUPVAL                         R24 8
      350 GETTABLEKS                       R24 R24 K76 ["View"]
      352 DUPTABLE                         R25 K102 [{"tag", "Size", "LayoutOrder"}]
      353 LOADK                            R26 K103 ["size-full-0 auto-y fill"]
      354 SETTABLEKS                       R26 R25 K12 ["tag"]
      356 GETIMPORT                        R26 K106 [UDim2.fromScale]
      358 LOADN                            R27 1
      359 LOADN                            R28 0
      360 CALL                             R26 2 1
      361 SETTABLEKS                       R26 R25 K101 ["Size"]
      363 LOADN                            R26 2
      364 SETTABLEKS                       R26 R25 K55 ["LayoutOrder"]
      366 DUPTABLE                         R26 K108 [{"ScrollFrame"}]
      367 GETUPVAL                         R27 6
      368 GETTABLEKS                       R27 R27 K53 ["createElement"]
      370 LOADK                            R28 K109 ["ScrollingFrame"]
      371 DUPTABLE                         R29 K115 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "ScrollingDirection", "Size", "AutomaticSize", "AutomaticCanvasSize"}]
      372 SETTABLEKS                       R10 R29 K110 ["BackgroundColor3"]
      374 SETTABLEKS                       R11 R29 K111 ["BackgroundTransparency"]
      376 LOADN                            R30 0
      377 SETTABLEKS                       R30 R29 K57 ["BorderSizePixel"]
      379 GETIMPORT                        R30 K117 [Enum.ScrollingDirection.X]
      381 SETTABLEKS                       R30 R29 K112 ["ScrollingDirection"]
      383 GETIMPORT                        R30 K106 [UDim2.fromScale]
      385 LOADN                            R31 1
      386 LOADN                            R32 0
      387 CALL                             R30 2 1
      388 SETTABLEKS                       R30 R29 K101 ["Size"]
      390 GETIMPORT                        R30 K119 [Enum.AutomaticSize.Y]
      392 SETTABLEKS                       R30 R29 K113 ["AutomaticSize"]
      394 GETIMPORT                        R30 K120 [Enum.AutomaticSize.X]
      396 SETTABLEKS                       R30 R29 K114 ["AutomaticCanvasSize"]
      398 DUPTABLE                         R30 K123 [{"HighlightedCode", "SelectableCodeWrapper"}]
      399 GETUPVAL                         R31 6
      400 GETTABLEKS                       R31 R31 K53 ["createElement"]
      402 GETUPVAL                         R32 10
      403 GETUPVAL                         R33 1
      404 GETTABLEKS                       R33 R33 K124 ["join"]
      406 MOVE                             R34 R5
      407 MOVE                             R35 R7
      408 CALL                             R33 2 -1
      409 CALL                             R31 -1 1
      410 SETTABLEKS                       R31 R30 K121 ["HighlightedCode"]
      412 GETUPVAL                         R32 4
      413 JUMPIFNOT                        R32 ; [+102]
      414 GETUPVAL                         R31 6
      415 GETTABLEKS                       R31 R31 K53 ["createElement"]
      417 GETUPVAL                         R32 8
      418 GETTABLEKS                       R32 R32 K76 ["View"]
      420 DUPTABLE                         R33 K125 [{"tag"}]
      421 GETTABLEKS                       R34 R5 K12 ["tag"]
      423 SETTABLEKS                       R34 R33 K12 ["tag"]
      425 DUPTABLE                         R34 K127 [{"SelectableCode"}]
      426 GETUPVAL                         R35 6
      427 GETTABLEKS                       R35 R35 K53 ["createElement"]
      429 LOADK                            R36 K128 ["TextBox"]
      430 DUPTABLE                         R37 K136 [{"Text", "FontFace", "TextSize", "TextColor3", "TextTransparency", "BackgroundTransparency", "TextXAlignment", "TextYAlignment", "TextEditable", "ZIndex", "Size", "AutomaticSize", "TextWrapped", "ClearTextOnFocus", "LineHeight"}]
      431 GETTABLEKS                       R38 R8 K31 ["Text"]
      433 SETTABLEKS                       R38 R37 K31 ["Text"]
      435 GETUPVAL                         R39 2
      436 CALL                             R39 0 1
      437 JUMPIFNOT                        R39 ; [+5]
      438 GETTABLEKS                       R38 R5 K10 ["fontStyle"]
      440 GETTABLEKS                       R38 R38 K15 ["Font"]
      442 JUMP                             ; [+7]
      443 GETIMPORT                        R38 K25 [Font.fromEnum]
      445 GETTABLEKS                       R39 R5 K10 ["fontStyle"]
      447 GETTABLEKS                       R39 R39 K15 ["Font"]
      449 CALL                             R38 1 1
      450 SETTABLEKS                       R38 R37 K129 ["FontFace"]
      452 GETTABLEKS                       R38 R5 K10 ["fontStyle"]
      454 GETTABLEKS                       R38 R38 K14 ["FontSize"]
      456 SETTABLEKS                       R38 R37 K130 ["TextSize"]
      458 GETTABLEKS                       R38 R8 K32 ["textStyle"]
      460 GETTABLEKS                       R38 R38 K36 ["Color3"]
      462 SETTABLEKS                       R38 R37 K131 ["TextColor3"]
      464 GETTABLEKS                       R38 R8 K32 ["textStyle"]
      466 GETTABLEKS                       R38 R38 K42 ["Transparency"]
      468 SETTABLEKS                       R38 R37 K132 ["TextTransparency"]
      470 LOADN                            R38 1
      471 SETTABLEKS                       R38 R37 K111 ["BackgroundTransparency"]
      473 GETIMPORT                        R38 K29 [Enum.TextXAlignment.Left]
      475 SETTABLEKS                       R38 R37 K11 ["TextXAlignment"]
      477 GETIMPORT                        R38 K138 [Enum.TextYAlignment.Center]
      479 SETTABLEKS                       R38 R37 K133 ["TextYAlignment"]
      481 LOADB                            R38 0
      482 SETTABLEKS                       R38 R37 K134 ["TextEditable"]
      484 GETTABLEKS                       R38 R8 K34 ["ZIndex"]
      486 SETTABLEKS                       R38 R37 K34 ["ZIndex"]
      488 GETIMPORT                        R38 K106 [UDim2.fromScale]
      490 LOADN                            R39 0
      491 LOADN                            R40 0
      492 CALL                             R38 2 1
      493 SETTABLEKS                       R38 R37 K101 ["Size"]
      495 GETIMPORT                        R38 K140 [Enum.AutomaticSize.XY]
      497 SETTABLEKS                       R38 R37 K113 ["AutomaticSize"]
      499 LOADB                            R38 0
      500 SETTABLEKS                       R38 R37 K9 ["TextWrapped"]
      502 LOADB                            R38 0
      503 SETTABLEKS                       R38 R37 K135 ["ClearTextOnFocus"]
      505 GETTABLEKS                       R38 R1 K8 ["codeStyles"]
      507 GETTABLEKS                       R38 R38 K26 ["lineHeight"]
      509 SETTABLEKS                       R38 R37 K16 ["LineHeight"]
      511 CALL                             R35 2 1
      512 SETTABLEKS                       R35 R34 K126 ["SelectableCode"]
      514 CALL                             R31 3 1
      515 JUMP                             ; [+11]
      516 GETUPVAL                         R31 6
      517 GETTABLEKS                       R31 R31 K53 ["createElement"]
      519 GETUPVAL                         R32 10
      520 GETUPVAL                         R33 1
      521 GETTABLEKS                       R33 R33 K124 ["join"]
      523 MOVE                             R34 R5
      524 MOVE                             R35 R8
      525 CALL                             R33 2 -1
      526 CALL                             R31 -1 1
      527 SETTABLEKS                       R31 R30 K122 ["SelectableCodeWrapper"]
      529 CALL                             R27 3 1
      530 SETTABLEKS                       R27 R26 K107 ["ScrollFrame"]
      532 CALL                             R23 3 1
      533 SETTABLEKS                       R23 R22 K97 ["ScrollFrameWrapper"]
      535 CALL                             R19 3 1
      536 SETTABLEKS                       R19 R18 K66 ["CodeWrapper"]
      538 CALL                             R15 3 -1
      539 RETURN                           R15 -1

PROTO_19:
        0 NEWTABLE                         R2 0 0
        2 LOADNIL                          R3
        3 GETTABLEKS                       R7 R0 K0 ["children"]
        5 LENGTH                           R6 R7
        6 LOADN                            R4 1
        7 LOADN                            R5 255
        8 FORNPREP                         R4
        9 GETTABLEKS                       R8 R0 K0 ["children"]
       11 GETTABLE                         R7 R8 R6
       12 GETTABLEKS                       R8 R7 K1 ["name"]
       14 JUMPIFNOTEQKS                    R8 K2 ["LIST"] ; [+3]
       16 MOVE                             R3 R7
       17 JUMP                             ; [+203]
       18 JUMPIFNOT                        R3 ; [+123]
       19 GETUPVAL                         R8 0
       20 GETTABLEKS                       R8 R8 K3 ["createElement"]
       22 GETUPVAL                         R9 1
       23 DUPTABLE                         R10 K7 [{"tag", "BorderSizePixel", "backgroundStyle"}]
       24 LOADK                            R11 K8 ["size-full-0 auto-y col"]
       25 SETTABLEKS                       R11 R10 K4 ["tag"]
       27 LOADN                            R11 0
       28 SETTABLEKS                       R11 R10 K5 ["BorderSizePixel"]
       30 DUPTABLE                         R11 K10 [{"Transparency"}]
       31 LOADN                            R12 1
       32 SETTABLEKS                       R12 R11 K9 ["Transparency"]
       34 SETTABLEKS                       R11 R10 K6 ["backgroundStyle"]
       36 DUPTABLE                         R11 K13 [{"Item", "List"}]
       37 GETUPVAL                         R13 2
       38 GETTABLEKS                       R13 R13 K14 ["join"]
       40 MOVE                             R14 R7
       41 DUPTABLE                         R15 K16 [{"index"}]
       42 LOADN                            R16 1
       43 SETTABLEKS                       R16 R15 K15 ["index"]
       45 CALL                             R13 2 1
       46 JUMPIF                           R13 ; [+2]
       47 LOADNIL                          R12
       48 JUMP                             ; [+24]
       49 GETUPVAL                         R15 3
       50 GETTABLEKS                       R15 R15 K17 ["renderers"]
       52 GETTABLEKS                       R16 R13 K1 ["name"]
       54 GETTABLE                         R14 R15 R16
       55 JUMPIF                           R14 ; [+12]
       56 GETIMPORT                        R15 K19 [warn]
       58 LOADK                            R17 K20 ["No renderer found for node: $%*"]
       59 GETTABLEKS                       R19 R13 K1 ["name"]
       61 NAMECALL                         R17 R17 K21 ["format"]
       63 CALL                             R17 2 1
       64 MOVE                             R16 R17
       65 CALL                             R15 1 0
       66 LOADNIL                          R12
       67 JUMP                             ; [+5]
       68 MOVE                             R15 R14
       69 MOVE                             R16 R13
       70 MOVE                             R17 R1
       71 CALL                             R15 2 1
       72 MOVE                             R12 R15
       73 SETTABLEKS                       R12 R11 K11 ["Item"]
       75 GETUPVAL                         R13 2
       76 GETTABLEKS                       R13 R13 K14 ["join"]
       78 MOVE                             R14 R3
       79 DUPTABLE                         R15 K16 [{"index"}]
       80 LOADN                            R16 2
       81 SETTABLEKS                       R16 R15 K15 ["index"]
       83 CALL                             R13 2 1
       84 JUMPIF                           R13 ; [+2]
       85 LOADNIL                          R12
       86 JUMP                             ; [+24]
       87 GETUPVAL                         R15 3
       88 GETTABLEKS                       R15 R15 K17 ["renderers"]
       90 GETTABLEKS                       R16 R13 K1 ["name"]
       92 GETTABLE                         R14 R15 R16
       93 JUMPIF                           R14 ; [+12]
       94 GETIMPORT                        R15 K19 [warn]
       96 LOADK                            R17 K20 ["No renderer found for node: $%*"]
       97 GETTABLEKS                       R19 R13 K1 ["name"]
       99 NAMECALL                         R17 R17 K21 ["format"]
      101 CALL                             R17 2 1
      102 MOVE                             R16 R17
      103 CALL                             R15 1 0
      104 LOADNIL                          R12
      105 JUMP                             ; [+5]
      106 MOVE                             R15 R14
      107 MOVE                             R16 R13
      108 MOVE                             R17 R1
      109 CALL                             R15 2 1
      110 MOVE                             R12 R15
      111 SETTABLEKS                       R12 R11 K12 ["List"]
      113 CALL                             R8 3 1
      114 LOADN                            R11 1
      115 GETUPVAL                         R13 4
      116 CALL                             R13 0 1
      117 JUMPIFNOT                        R13 ; [+15]
      118 DUPTABLE                         R12 K23 [{"Prefix", "Item"}]
      119 GETTABLEKS                       R14 R7 K24 ["attributes"]
      121 JUMPIFNOT                        R14 ; [+5]
      122 GETTABLEKS                       R13 R7 K24 ["attributes"]
      124 GETTABLEKS                       R13 R13 K25 ["prefix"]
      126 JUMP                             ; [+1]
      127 LOADNIL                          R13
      128 SETTABLEKS                       R13 R12 K22 ["Prefix"]
      130 SETTABLEKS                       R8 R12 K11 ["Item"]
      132 JUMP                             ; [+1]
      133 MOVE                             R12 R8
      134 FASTCALL3                        TABLE_INSERT R2 R11 R12
      136 MOVE                             R10 R2
      137 GETIMPORT                        R9 K28 [table.insert]
      139 CALL                             R9 3 0
      140 LOADNIL                          R3
      141 JUMP                             ; [+79]
      142 LOADN                            R10 1
      143 GETUPVAL                         R12 4
      144 CALL                             R12 0 1
      145 JUMPIFNOT                        R12 ; [+42]
      146 DUPTABLE                         R11 K23 [{"Prefix", "Item"}]
      147 GETTABLEKS                       R13 R7 K24 ["attributes"]
      149 JUMPIFNOT                        R13 ; [+5]
      150 GETTABLEKS                       R12 R7 K24 ["attributes"]
      152 GETTABLEKS                       R12 R12 K25 ["prefix"]
      154 JUMP                             ; [+1]
      155 LOADNIL                          R12
      156 SETTABLEKS                       R12 R11 K22 ["Prefix"]
      158 JUMPIF                           R7 ; [+2]
      159 LOADNIL                          R12
      160 JUMP                             ; [+24]
      161 GETUPVAL                         R14 3
      162 GETTABLEKS                       R14 R14 K17 ["renderers"]
      164 GETTABLEKS                       R15 R7 K1 ["name"]
      166 GETTABLE                         R13 R14 R15
      167 JUMPIF                           R13 ; [+12]
      168 GETIMPORT                        R14 K19 [warn]
      170 LOADK                            R16 K20 ["No renderer found for node: $%*"]
      171 GETTABLEKS                       R18 R7 K1 ["name"]
      173 NAMECALL                         R16 R16 K21 ["format"]
      175 CALL                             R16 2 1
      176 MOVE                             R15 R16
      177 CALL                             R14 1 0
      178 LOADNIL                          R12
      179 JUMP                             ; [+5]
      180 MOVE                             R14 R13
      181 MOVE                             R15 R7
      182 MOVE                             R16 R1
      183 CALL                             R14 2 1
      184 MOVE                             R12 R14
      185 SETTABLEKS                       R12 R11 K11 ["Item"]
      187 JUMP                             ; [+27]
      188 JUMPIF                           R7 ; [+2]
      189 LOADNIL                          R11
      190 JUMP                             ; [+24]
      191 GETUPVAL                         R13 3
      192 GETTABLEKS                       R13 R13 K17 ["renderers"]
      194 GETTABLEKS                       R14 R7 K1 ["name"]
      196 GETTABLE                         R12 R13 R14
      197 JUMPIF                           R12 ; [+12]
      198 GETIMPORT                        R13 K19 [warn]
      200 LOADK                            R15 K20 ["No renderer found for node: $%*"]
      201 GETTABLEKS                       R17 R7 K1 ["name"]
      203 NAMECALL                         R15 R15 K21 ["format"]
      205 CALL                             R15 2 1
      206 MOVE                             R14 R15
      207 CALL                             R13 1 0
      208 LOADNIL                          R11
      209 JUMP                             ; [+5]
      210 MOVE                             R13 R12
      211 MOVE                             R14 R7
      212 MOVE                             R15 R1
      213 CALL                             R13 2 1
      214 MOVE                             R11 R13
      215 FASTCALL3                        TABLE_INSERT R2 R10 R11
      217 MOVE                             R9 R2
      218 GETIMPORT                        R8 K28 [table.insert]
      220 CALL                             R8 3 0
      221 FORNLOOP                         R4
      222 GETUPVAL                         R4 0
      223 GETTABLEKS                       R4 R4 K3 ["createElement"]
      225 GETUPVAL                         R5 5
      226 DUPTABLE                         R6 K34 [{"key", "LayoutOrder", "Items", "TextWrapped", "ListStyle", "tag"}]
      227 GETTABLEKS                       R8 R0 K15 ["index"]
      229 FASTCALL1                        TOSTRING R8 ; [+2]
      230 GETIMPORT                        R7 K36 [tostring]
      232 CALL                             R7 1 1
      233 SETTABLEKS                       R7 R6 K29 ["key"]
      235 GETTABLEKS                       R7 R0 K15 ["index"]
      237 SETTABLEKS                       R7 R6 K30 ["LayoutOrder"]
      239 SETTABLEKS                       R2 R6 K31 ["Items"]
      241 LOADB                            R7 1
      242 SETTABLEKS                       R7 R6 K32 ["TextWrapped"]
      244 GETUPVAL                         R8 4
      245 CALL                             R8 0 1
      246 JUMPIFNOT                        R8 ; [+55]
      247 DUPTABLE                         R7 K41 [{"Font", "TextColor", "TextSize", "LineHeight"}]
      248 GETTABLEKS                       R9 R1 K42 ["textStyles"]
      250 GETUPVAL                         R10 6
      251 GETUPVAL                         R12 4
      252 CALL                             R12 0 1
      253 FASTCALL2K                       ASSERT R12 K43 ; [+4]
      255 LOADK                            R13 K43 ["getFontFace is disabled"]
      256 GETIMPORT                        R11 K45 [assert]
      258 CALL                             R11 2 0
      259 GETTABLEKS                       R11 R9 K46 ["fontFace"]
      261 JUMPIFNOT                        R11 ; [+3]
      262 GETTABLEKS                       R8 R9 K46 ["fontFace"]
      264 JUMP                             ; [+15]
      265 GETTABLEKS                       R11 R9 K47 ["font"]
      267 JUMPIFNOT                        R11 ; [+7]
      268 GETIMPORT                        R11 K49 [Font.fromEnum]
      270 GETTABLEKS                       R12 R9 K47 ["font"]
      272 CALL                             R11 1 1
      273 MOVE                             R8 R11
      274 JUMP                             ; [+5]
      275 GETIMPORT                        R11 K49 [Font.fromEnum]
      277 MOVE                             R12 R10
      278 CALL                             R11 1 1
      279 MOVE                             R8 R11
      280 SETTABLEKS                       R8 R7 K37 ["Font"]
      282 GETUPVAL                         R8 7
      283 GETTABLEKS                       R8 R8 K50 ["getTokenColor"]
      285 LOADK                            R9 K51 ["iden"]
      286 CALL                             R8 1 1
      287 SETTABLEKS                       R8 R7 K38 ["TextColor"]
      289 GETTABLEKS                       R8 R1 K42 ["textStyles"]
      291 GETTABLEKS                       R8 R8 K52 ["textSize"]
      293 SETTABLEKS                       R8 R7 K39 ["TextSize"]
      295 GETTABLEKS                       R8 R1 K42 ["textStyles"]
      297 GETTABLEKS                       R8 R8 K52 ["textSize"]
      299 SETTABLEKS                       R8 R7 K40 ["LineHeight"]
      301 JUMP                             ; [+1]
      302 LOADNIL                          R7
      303 SETTABLEKS                       R7 R6 K33 ["ListStyle"]
      305 LOADK                            R7 K53 ["size-full-0 auto-y"]
      306 SETTABLEKS                       R7 R6 K4 ["tag"]
      308 DUPTABLE                         R7 K55 [{"UIPadding"}]
      309 GETUPVAL                         R9 4
      310 CALL                             R9 0 1
      311 JUMPIFNOT                        R9 ; [+15]
      312 GETUPVAL                         R10 4
      313 CALL                             R10 0 1
      314 FASTCALL2K                       ASSERT R10 K56 ; [+4]
      316 LOADK                            R11 K56 ["shouldUseTopPadding is disabled"]
      317 GETIMPORT                        R9 K45 [assert]
      319 CALL                             R9 2 0
      320 GETTABLEKS                       R9 R0 K57 ["offset"]
      322 JUMPIFNOTEQKN                    R9 K58 [0] ; [+2]
      324 LOADB                            R8 0 +1
      325 LOADB                            R8 1
      326 JUMPIFNOT                        R8 ; [+18]
      327 GETUPVAL                         R8 0
      328 GETTABLEKS                       R8 R8 K3 ["createElement"]
      330 LOADK                            R9 K54 ["UIPadding"]
      331 DUPTABLE                         R10 K60 [{"PaddingTop"}]
      332 GETIMPORT                        R11 K63 [UDim.new]
      334 LOADN                            R12 0
      335 GETUPVAL                         R14 4
      336 CALL                             R14 0 1
      337 JUMPIFNOT                        R14 ; [+2]
      338 LOADN                            R13 10
      339 JUMP                             ; [+1]
      340 LOADN                            R13 30
      341 CALL                             R11 2 1
      342 SETTABLEKS                       R11 R10 K59 ["PaddingTop"]
      344 CALL                             R8 2 1
      345 SETTABLEKS                       R8 R7 K54 ["UIPadding"]
      347 CALL                             R4 3 -1
      348 RETURN                           R4 -1

PROTO_20:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K4 [{"key", "LayoutOrder", "tag"}]
        5 GETTABLEKS                       R6 R0 K5 ["index"]
        7 FASTCALL1                        TOSTRING R6 ; [+2]
        8 GETIMPORT                        R5 K7 [tostring]
       10 CALL                             R5 1 1
       11 SETTABLEKS                       R5 R4 K1 ["key"]
       13 GETTABLEKS                       R5 R0 K5 ["index"]
       15 SETTABLEKS                       R5 R4 K2 ["LayoutOrder"]
       17 LOADK                            R5 K8 ["size-full-0 auto-y"]
       18 SETTABLEKS                       R5 R4 K3 ["tag"]
       20 DUPTABLE                         R5 K10 [{"InlineLayout"}]
       21 GETUPVAL                         R6 2
       22 GETTABLEKS                       R7 R0 K11 ["children"]
       24 MOVE                             R8 R1
       25 CALL                             R6 2 1
       26 SETTABLEKS                       R6 R5 K9 ["InlineLayout"]
       28 CALL                             R2 3 -1
       29 RETURN                           R2 -1

PROTO_21:
        0 GETTABLEKS                       R3 R0 K0 ["attributes"]
        2 JUMPIFNOT                        R3 ; [+10]
        3 GETTABLEKS                       R3 R0 K0 ["attributes"]
        5 GETTABLEKS                       R3 R3 K1 ["style"]
        7 JUMPIFNOT                        R3 ; [+5]
        8 GETTABLEKS                       R2 R0 K0 ["attributes"]
       10 GETTABLEKS                       R2 R2 K1 ["style"]
       12 JUMP                             ; [+1]
       13 LOADNIL                          R2
       14 NEWTABLE                         R3 4 0
       16 JUMPIFEQKS                       R2 K2 ["BOLD"] ; [+3]
       18 JUMPIFNOTEQKS                    R2 K3 ["BOLD_2"] ; [+5]
       20 LOADB                            R4 1
       21 SETTABLEKS                       R4 R3 K4 ["bold"]
       23 JUMP                             ; [+43]
       24 JUMPIFEQKS                       R2 K5 ["ITALIC"] ; [+3]
       26 JUMPIFNOTEQKS                    R2 K6 ["ITALIC_2"] ; [+5]
       28 LOADB                            R4 1
       29 SETTABLEKS                       R4 R3 K7 ["italic"]
       31 JUMP                             ; [+35]
       32 JUMPIFNOTEQKS                    R2 K8 ["STRIKE"] ; [+5]
       34 LOADB                            R4 1
       35 SETTABLEKS                       R4 R3 K9 ["strike"]
       37 JUMP                             ; [+29]
       38 JUMPIFNOTEQKS                    R2 K10 ["INLINE_CODE"] ; [+28]
       40 GETTABLEKS                       R3 R1 K11 ["codeStyles"]
       42 GETUPVAL                         R4 0
       43 JUMPIFNOT                        R4 ; [+10]
       44 GETUPVAL                         R4 1
       45 GETTABLEKS                       R4 R4 K12 ["joinDeep"]
       47 MOVE                             R5 R3
       48 DUPTABLE                         R6 K14 [{"selectable"}]
       49 LOADB                            R7 1
       50 SETTABLEKS                       R7 R6 K13 ["selectable"]
       52 CALL                             R4 2 1
       53 MOVE                             R3 R4
       54 GETUPVAL                         R4 2
       55 CALL                             R4 0 1
       56 JUMPIFNOT                        R4 ; [+10]
       57 GETUPVAL                         R4 1
       58 GETTABLEKS                       R4 R4 K12 ["joinDeep"]
       60 MOVE                             R5 R3
       61 DUPTABLE                         R6 K16 [{"viewTags"}]
       62 LOADK                            R7 K17 ["bg-shift-300 radius-small"]
       63 SETTABLEKS                       R7 R6 K15 ["viewTags"]
       65 CALL                             R4 2 1
       66 MOVE                             R3 R4
       67 GETTABLEKS                       R4 R1 K18 ["processChildren"]
       69 GETTABLEKS                       R5 R0 K19 ["children"]
       71 GETUPVAL                         R6 3
       72 MOVE                             R7 R1
       73 DUPTABLE                         R8 K21 [{"textStyles"}]
       74 SETTABLEKS                       R3 R8 K20 ["textStyles"]
       76 CALL                             R6 2 -1
       77 CALL                             R4 -1 -1
       78 RETURN                           R4 -1

PROTO_22:
        0 DUPTABLE                         R2 K6 [{"LayoutOrder", "Text", "TextVariant", "fontStyle", "textStyle", "viewTags"}]
        1 GETTABLEKS                       R3 R0 K7 ["index"]
        3 SETTABLEKS                       R3 R2 K0 ["LayoutOrder"]
        5 GETGLOBAL                        R3 K8 ["processSoftBreaks"]
        7 GETTABLEKS                       R4 R0 K9 ["text"]
        9 CALL                             R3 1 1
       10 SETTABLEKS                       R3 R2 K1 ["Text"]
       12 GETTABLEKS                       R4 R1 K10 ["textStyles"]
       14 JUMPIF                           R4 ; [+2]
       15 LOADNIL                          R3
       16 JUMP                             ; [+21]
       17 DUPTABLE                         R3 K16 [{"Bold", "Italic", "Strike", "Color", "FontFace"}]
       18 GETTABLEKS                       R5 R4 K17 ["bold"]
       20 SETTABLEKS                       R5 R3 K11 ["Bold"]
       22 GETTABLEKS                       R5 R4 K18 ["italic"]
       24 SETTABLEKS                       R5 R3 K12 ["Italic"]
       26 GETTABLEKS                       R5 R4 K19 ["strike"]
       28 SETTABLEKS                       R5 R3 K13 ["Strike"]
       30 GETTABLEKS                       R5 R4 K20 ["color"]
       32 SETTABLEKS                       R5 R3 K14 ["Color"]
       34 GETTABLEKS                       R5 R4 K21 ["fontFace"]
       36 SETTABLEKS                       R5 R3 K15 ["FontFace"]
       38 SETTABLEKS                       R3 R2 K2 ["TextVariant"]
       40 DUPTABLE                         R3 K24 [{"Font", "FontSize"}]
       41 GETUPVAL                         R5 0
       42 CALL                             R5 0 1
       43 JUMPIFNOT                        R5 ; [+33]
       44 GETTABLEKS                       R5 R1 K10 ["textStyles"]
       46 GETUPVAL                         R6 1
       47 GETUPVAL                         R8 0
       48 CALL                             R8 0 1
       49 FASTCALL2K                       ASSERT R8 K25 ; [+4]
       51 LOADK                            R9 K25 ["getFontFace is disabled"]
       52 GETIMPORT                        R7 K27 [assert]
       54 CALL                             R7 2 0
       55 GETTABLEKS                       R7 R5 K21 ["fontFace"]
       57 JUMPIFNOT                        R7 ; [+3]
       58 GETTABLEKS                       R4 R5 K21 ["fontFace"]
       60 JUMP                             ; [+20]
       61 GETTABLEKS                       R7 R5 K28 ["font"]
       63 JUMPIFNOT                        R7 ; [+7]
       64 GETIMPORT                        R7 K30 [Font.fromEnum]
       66 GETTABLEKS                       R8 R5 K28 ["font"]
       68 CALL                             R7 1 1
       69 MOVE                             R4 R7
       70 JUMP                             ; [+10]
       71 GETIMPORT                        R7 K30 [Font.fromEnum]
       73 MOVE                             R8 R6
       74 CALL                             R7 1 1
       75 MOVE                             R4 R7
       76 JUMP                             ; [+4]
       77 GETTABLEKS                       R4 R1 K10 ["textStyles"]
       79 GETTABLEKS                       R4 R4 K28 ["font"]
       81 SETTABLEKS                       R4 R3 K22 ["Font"]
       83 GETTABLEKS                       R4 R1 K10 ["textStyles"]
       85 GETTABLEKS                       R4 R4 K31 ["textSize"]
       87 SETTABLEKS                       R4 R3 K23 ["FontSize"]
       89 SETTABLEKS                       R3 R2 K3 ["fontStyle"]
       91 DUPTABLE                         R3 K34 [{"Color3", "Transparency"}]
       92 GETUPVAL                         R5 0
       93 CALL                             R5 0 1
       94 JUMPIFNOT                        R5 ; [+5]
       95 GETTABLEKS                       R4 R1 K10 ["textStyles"]
       97 GETTABLEKS                       R4 R4 K20 ["color"]
       99 JUMP                             ; [+1]
      100 LOADNIL                          R4
      101 SETTABLEKS                       R4 R3 K32 ["Color3"]
      103 GETTABLEKS                       R4 R1 K10 ["textStyles"]
      105 GETTABLEKS                       R4 R4 K35 ["transparency"]
      107 SETTABLEKS                       R4 R3 K33 ["Transparency"]
      109 SETTABLEKS                       R3 R2 K4 ["textStyle"]
      111 GETUPVAL                         R4 0
      112 CALL                             R4 0 1
      113 JUMPIFNOT                        R4 ; [+5]
      114 GETTABLEKS                       R3 R1 K10 ["textStyles"]
      116 GETTABLEKS                       R3 R3 K5 ["viewTags"]
      118 JUMP                             ; [+1]
      119 LOADNIL                          R3
      120 SETTABLEKS                       R3 R2 K5 ["viewTags"]
      122 GETUPVAL                         R3 2
      123 JUMPIFNOT                        R3 ; [+11]
      124 GETTABLEKS                       R3 R1 K10 ["textStyles"]
      126 GETTABLEKS                       R3 R3 K36 ["selectable"]
      128 JUMPIFNOT                        R3 ; [+6]
      129 GETUPVAL                         R3 3
      130 GETTABLEKS                       R3 R3 K37 ["new"]
      132 MOVE                             R4 R2
      133 CALL                             R3 1 -1
      134 RETURN                           R3 -1
      135 GETUPVAL                         R3 4
      136 GETTABLEKS                       R3 R3 K37 ["new"]
      138 MOVE                             R4 R2
      139 CALL                             R3 1 -1
      140 RETURN                           R3 -1

PROTO_23:
        0 GETTABLEKS                       R2 R1 K0 ["codeStyles"]
        2 GETUPVAL                         R3 0
        3 JUMPIFNOT                        R3 ; [+10]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["joinDeep"]
        7 MOVE                             R4 R2
        8 DUPTABLE                         R5 K3 [{"selectable"}]
        9 LOADB                            R6 1
       10 SETTABLEKS                       R6 R5 K2 ["selectable"]
       12 CALL                             R3 2 1
       13 MOVE                             R2 R3
       14 GETUPVAL                         R3 2
       15 MOVE                             R4 R0
       16 GETUPVAL                         R5 3
       17 MOVE                             R6 R1
       18 DUPTABLE                         R7 K5 [{"textStyles"}]
       19 SETTABLEKS                       R2 R7 K4 ["textStyles"]
       21 CALL                             R5 2 -1
       22 CALL                             R3 -1 -1
       23 RETURN                           R3 -1

PROTO_24:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_25:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["linkCallback"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_26:
        0 GETTABLEKS                       R3 R0 K0 ["attributes"]
        2 JUMPIFNOT                        R3 ; [+5]
        3 GETTABLEKS                       R2 R0 K0 ["attributes"]
        5 GETTABLEKS                       R2 R2 K1 ["url"]
        7 JUMPIF                           R2 ; [+4]
        8 GETTABLEKS                       R2 R0 K1 ["url"]
       10 JUMPIF                           R2 ; [+1]
       11 LOADK                            R2 K2 [""]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K3 ["new"]
       15 DUPTABLE                         R4 K11 [{"LayoutOrder", "Text", "TextVariant", "TextSize", "fontStyle", "textStyle", "onActivated"}]
       16 GETTABLEKS                       R5 R0 K12 ["index"]
       18 SETTABLEKS                       R5 R4 K4 ["LayoutOrder"]
       20 GETGLOBAL                        R5 K13 ["processSoftBreaks"]
       22 GETTABLEKS                       R6 R0 K14 ["text"]
       24 CALL                             R5 1 1
       25 SETTABLEKS                       R5 R4 K5 ["Text"]
       27 GETTABLEKS                       R6 R1 K15 ["textStyles"]
       29 JUMPIF                           R6 ; [+2]
       30 LOADNIL                          R5
       31 JUMP                             ; [+21]
       32 DUPTABLE                         R5 K21 [{"Bold", "Italic", "Strike", "Color", "FontFace"}]
       33 GETTABLEKS                       R7 R6 K22 ["bold"]
       35 SETTABLEKS                       R7 R5 K16 ["Bold"]
       37 GETTABLEKS                       R7 R6 K23 ["italic"]
       39 SETTABLEKS                       R7 R5 K17 ["Italic"]
       41 GETTABLEKS                       R7 R6 K24 ["strike"]
       43 SETTABLEKS                       R7 R5 K18 ["Strike"]
       45 GETTABLEKS                       R7 R6 K25 ["color"]
       47 SETTABLEKS                       R7 R5 K19 ["Color"]
       49 GETTABLEKS                       R7 R6 K26 ["fontFace"]
       51 SETTABLEKS                       R7 R5 K20 ["FontFace"]
       53 SETTABLEKS                       R5 R4 K6 ["TextVariant"]
       55 GETTABLEKS                       R5 R1 K15 ["textStyles"]
       57 GETTABLEKS                       R5 R5 K27 ["textSize"]
       59 SETTABLEKS                       R5 R4 K7 ["TextSize"]
       61 DUPTABLE                         R5 K30 [{"Font", "FontSize"}]
       62 GETTABLEKS                       R6 R1 K15 ["textStyles"]
       64 GETTABLEKS                       R6 R6 K31 ["font"]
       66 SETTABLEKS                       R6 R5 K28 ["Font"]
       68 GETTABLEKS                       R6 R1 K15 ["textStyles"]
       70 GETTABLEKS                       R6 R6 K27 ["textSize"]
       72 SETTABLEKS                       R6 R5 K29 ["FontSize"]
       74 SETTABLEKS                       R5 R4 K8 ["fontStyle"]
       76 DUPTABLE                         R5 K33 [{"Transparency"}]
       77 GETTABLEKS                       R6 R1 K15 ["textStyles"]
       79 GETTABLEKS                       R6 R6 K34 ["transparency"]
       81 SETTABLEKS                       R6 R5 K32 ["Transparency"]
       83 SETTABLEKS                       R5 R4 K9 ["textStyle"]
       85 NEWCLOSURE                       R5 P0
       86 CAPTURE                          VAL R1
       87 CAPTURE                          VAL R2
       88 SETTABLEKS                       R5 R4 K10 ["onActivated"]
       90 CALL                             R3 1 -1
       91 RETURN                           R3 -1

PROTO_27:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+63]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["createElement"]
        6 GETUPVAL                         R2 2
        7 DUPTABLE                         R3 K4 [{"key", "tag", "LayoutOrder"}]
        8 GETTABLEKS                       R5 R0 K5 ["index"]
       10 FASTCALL1                        TOSTRING R5 ; [+2]
       11 GETIMPORT                        R4 K7 [tostring]
       13 CALL                             R4 1 1
       14 SETTABLEKS                       R4 R3 K1 ["key"]
       16 LOADK                            R4 K8 ["size-full-0 auto-y"]
       17 SETTABLEKS                       R4 R3 K2 ["tag"]
       19 GETTABLEKS                       R4 R0 K5 ["index"]
       21 SETTABLEKS                       R4 R3 K3 ["LayoutOrder"]
       23 DUPTABLE                         R4 K11 [{"UIPadding", "Divider"}]
       24 GETUPVAL                         R6 0
       25 CALL                             R6 0 1
       26 JUMPIFNOT                        R6 ; [+15]
       27 GETUPVAL                         R7 0
       28 CALL                             R7 0 1
       29 FASTCALL2K                       ASSERT R7 K12 ; [+4]
       31 LOADK                            R8 K12 ["shouldUseTopPadding is disabled"]
       32 GETIMPORT                        R6 K14 [assert]
       34 CALL                             R6 2 0
       35 GETTABLEKS                       R6 R0 K15 ["offset"]
       37 JUMPIFNOTEQKN                    R6 K16 [0] ; [+2]
       39 LOADB                            R5 0 +1
       40 LOADB                            R5 1
       41 JUMPIFNOT                        R5 ; [+13]
       42 GETUPVAL                         R5 1
       43 GETTABLEKS                       R5 R5 K0 ["createElement"]
       45 LOADK                            R6 K9 ["UIPadding"]
       46 DUPTABLE                         R7 K18 [{"PaddingTop"}]
       47 GETIMPORT                        R8 K21 [UDim.new]
       49 LOADN                            R9 0
       50 LOADN                            R10 10
       51 CALL                             R8 2 1
       52 SETTABLEKS                       R8 R7 K17 ["PaddingTop"]
       54 CALL                             R5 2 1
       55 SETTABLEKS                       R5 R4 K9 ["UIPadding"]
       57 GETUPVAL                         R5 1
       58 GETTABLEKS                       R5 R5 K0 ["createElement"]
       60 GETUPVAL                         R6 3
       61 CALL                             R5 1 1
       62 SETTABLEKS                       R5 R4 K10 ["Divider"]
       64 CALL                             R1 3 -1
       65 RETURN                           R1 -1
       66 GETUPVAL                         R1 1
       67 GETTABLEKS                       R1 R1 K0 ["createElement"]
       69 GETUPVAL                         R2 3
       70 DUPTABLE                         R3 K22 [{"key", "LayoutOrder"}]
       71 GETTABLEKS                       R5 R0 K5 ["index"]
       73 FASTCALL1                        TOSTRING R5 ; [+2]
       74 GETIMPORT                        R4 K7 [tostring]
       76 CALL                             R4 1 1
       77 SETTABLEKS                       R4 R3 K1 ["key"]
       79 GETTABLEKS                       R4 R0 K5 ["index"]
       81 SETTABLEKS                       R4 R3 K3 ["LayoutOrder"]
       83 CALL                             R1 2 -1
       84 RETURN                           R1 -1

PROTO_28:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K5 [{"key", "LayoutOrder", "tag", "backgroundStyle"}]
        5 GETTABLEKS                       R6 R0 K6 ["index"]
        7 FASTCALL1                        TOSTRING R6 ; [+2]
        8 GETIMPORT                        R5 K8 [tostring]
       10 CALL                             R5 1 1
       11 SETTABLEKS                       R5 R4 K1 ["key"]
       13 GETTABLEKS                       R5 R0 K6 ["index"]
       15 SETTABLEKS                       R5 R4 K2 ["LayoutOrder"]
       17 LOADK                            R5 K9 ["size-full-0 auto-y padding-small"]
       18 SETTABLEKS                       R5 R4 K3 ["tag"]
       20 DUPTABLE                         R5 K11 [{"Transparency"}]
       21 LOADN                            R6 1
       22 SETTABLEKS                       R6 R5 K10 ["Transparency"]
       24 SETTABLEKS                       R5 R4 K4 ["backgroundStyle"]
       26 DUPTABLE                         R5 K13 [{"InlineLayoutWrapper"}]
       27 GETUPVAL                         R6 0
       28 GETTABLEKS                       R6 R6 K0 ["createElement"]
       30 GETUPVAL                         R7 1
       31 DUPTABLE                         R8 K14 [{"backgroundStyle", "tag"}]
       32 DUPTABLE                         R9 K16 [{"Transparency", "Color3"}]
       33 LOADK                            R10 K17 [0.9]
       34 SETTABLEKS                       R10 R9 K10 ["Transparency"]
       36 GETIMPORT                        R10 K19 [Color3.fromRGB]
       38 LOADN                            R11 163
       39 LOADN                            R12 162
       40 LOADN                            R13 165
       41 CALL                             R10 3 1
       42 SETTABLEKS                       R10 R9 K15 ["Color3"]
       44 SETTABLEKS                       R9 R8 K4 ["backgroundStyle"]
       46 LOADK                            R9 K20 ["size-full-0 auto-y"]
       47 SETTABLEKS                       R9 R8 K3 ["tag"]
       49 DUPTABLE                         R9 K22 [{"InlineLayout"}]
       50 GETUPVAL                         R10 2
       51 GETTABLEKS                       R11 R0 K23 ["children"]
       53 GETUPVAL                         R12 3
       54 MOVE                             R13 R1
       55 DUPTABLE                         R14 K25 [{"textStyles"}]
       56 DUPTABLE                         R15 K28 [{"italic", "transparency"}]
       57 LOADB                            R16 1
       58 SETTABLEKS                       R16 R15 K26 ["italic"]
       60 LOADK                            R16 K29 [0.5]
       61 SETTABLEKS                       R16 R15 K27 ["transparency"]
       63 SETTABLEKS                       R15 R14 K24 ["textStyles"]
       65 CALL                             R12 2 -1
       66 CALL                             R10 -1 1
       67 SETTABLEKS                       R10 R9 K21 ["InlineLayout"]
       69 CALL                             R6 3 1
       70 SETTABLEKS                       R6 R5 K12 ["InlineLayoutWrapper"]
       72 CALL                             R2 3 -1
       73 RETURN                           R2 -1

PROTO_29:
        0 GETTABLEKS                       R3 R0 K0 ["attributes"]
        2 JUMPIFNOT                        R3 ; [+5]
        3 GETTABLEKS                       R2 R0 K0 ["attributes"]
        5 GETTABLEKS                       R2 R2 K1 ["url"]
        7 JUMPIF                           R2 ; [+4]
        8 GETTABLEKS                       R2 R0 K1 ["url"]
       10 JUMPIF                           R2 ; [+1]
       11 LOADNIL                          R2
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K2 ["new"]
       15 DUPTABLE                         R4 K11 [{"LayoutOrder", "Image", "Size", "backgroundStyle", "imageStyle", "ScaleType", "ResampleMode", "tag"}]
       16 GETTABLEKS                       R5 R0 K12 ["index"]
       18 SETTABLEKS                       R5 R4 K3 ["LayoutOrder"]
       20 SETTABLEKS                       R2 R4 K4 ["Image"]
       22 GETTABLEKS                       R5 R1 K13 ["imageStyles"]
       24 GETTABLEKS                       R5 R5 K14 ["size"]
       26 SETTABLEKS                       R5 R4 K5 ["Size"]
       28 DUPTABLE                         R5 K17 [{"Transparency", "Color3"}]
       29 GETTABLEKS                       R6 R1 K13 ["imageStyles"]
       31 GETTABLEKS                       R6 R6 K18 ["backgroundTransparency"]
       33 SETTABLEKS                       R6 R5 K15 ["Transparency"]
       35 GETTABLEKS                       R6 R1 K13 ["imageStyles"]
       37 GETTABLEKS                       R6 R6 K19 ["backgroundColor3"]
       39 SETTABLEKS                       R6 R5 K16 ["Color3"]
       41 SETTABLEKS                       R5 R4 K6 ["backgroundStyle"]
       43 DUPTABLE                         R5 K20 [{"Transparency"}]
       44 GETTABLEKS                       R6 R1 K13 ["imageStyles"]
       46 GETTABLEKS                       R6 R6 K21 ["transparency"]
       48 SETTABLEKS                       R6 R5 K15 ["Transparency"]
       50 SETTABLEKS                       R5 R4 K7 ["imageStyle"]
       52 GETTABLEKS                       R5 R1 K13 ["imageStyles"]
       54 GETTABLEKS                       R5 R5 K22 ["scaleType"]
       56 SETTABLEKS                       R5 R4 K8 ["ScaleType"]
       58 GETTABLEKS                       R5 R1 K13 ["imageStyles"]
       60 GETTABLEKS                       R5 R5 K23 ["resampleMode"]
       62 SETTABLEKS                       R5 R4 K9 ["ResampleMode"]
       64 GETTABLEKS                       R5 R1 K13 ["imageStyles"]
       66 GETTABLEKS                       R5 R5 K24 ["tags"]
       68 SETTABLEKS                       R5 R4 K10 ["tag"]
       70 CALL                             R3 1 -1
       71 RETURN                           R3 -1

PROTO_30:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["linkCallback"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["attributes"]
        6 GETTABLEKS                       R1 R1 K2 ["url"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_31:
        0 GETTABLEKS                       R2 R0 K0 ["text"]
        2 JUMPIFNOTEQKS                    R2 K1 ["img"] ; [+201]
        4 GETTABLEKS                       R2 R1 K2 ["imageStyles"]
        6 GETTABLEKS                       R2 R2 K3 ["size"]
        8 GETTABLEKS                       R4 R0 K4 ["attributes"]
       10 JUMPIFNOT                        R4 ; [+10]
       11 GETTABLEKS                       R4 R0 K4 ["attributes"]
       13 GETTABLEKS                       R4 R4 K5 ["width"]
       15 JUMPIFNOT                        R4 ; [+5]
       16 GETTABLEKS                       R3 R0 K4 ["attributes"]
       18 GETTABLEKS                       R3 R3 K5 ["width"]
       20 JUMP                             ; [+4]
       21 GETTABLEKS                       R3 R2 K6 ["Width"]
       23 GETTABLEKS                       R3 R3 K7 ["Offset"]
       25 GETTABLEKS                       R5 R0 K4 ["attributes"]
       27 JUMPIFNOT                        R5 ; [+10]
       28 GETTABLEKS                       R5 R0 K4 ["attributes"]
       30 GETTABLEKS                       R5 R5 K8 ["height"]
       32 JUMPIFNOT                        R5 ; [+5]
       33 GETTABLEKS                       R4 R0 K4 ["attributes"]
       35 GETTABLEKS                       R4 R4 K8 ["height"]
       37 JUMP                             ; [+4]
       38 GETTABLEKS                       R4 R2 K9 ["Height"]
       40 GETTABLEKS                       R4 R4 K7 ["Offset"]
       42 GETTABLEKS                       R5 R1 K10 ["isInline"]
       44 JUMPIFNOT                        R5 ; [+75]
       45 GETUPVAL                         R5 0
       46 GETTABLEKS                       R5 R5 K11 ["new"]
       48 DUPTABLE                         R6 K20 [{"LayoutOrder", "Image", "Size", "backgroundStyle", "imageStyle", "ScaleType", "ResampleMode", "tag"}]
       49 GETTABLEKS                       R7 R0 K21 ["index"]
       51 SETTABLEKS                       R7 R6 K12 ["LayoutOrder"]
       53 GETTABLEKS                       R8 R0 K4 ["attributes"]
       55 JUMPIFNOT                        R8 ; [+10]
       56 GETTABLEKS                       R8 R0 K4 ["attributes"]
       58 GETTABLEKS                       R8 R8 K22 ["src"]
       60 JUMPIFNOT                        R8 ; [+5]
       61 GETTABLEKS                       R7 R0 K4 ["attributes"]
       63 GETTABLEKS                       R7 R7 K22 ["src"]
       65 JUMP                             ; [+1]
       66 LOADK                            R7 K23 [""]
       67 SETTABLEKS                       R7 R6 K13 ["Image"]
       69 GETIMPORT                        R7 K26 [UDim2.fromOffset]
       71 MOVE                             R8 R3
       72 MOVE                             R9 R4
       73 CALL                             R7 2 1
       74 SETTABLEKS                       R7 R6 K14 ["Size"]
       76 DUPTABLE                         R7 K29 [{"Transparency", "Color3"}]
       77 GETTABLEKS                       R8 R1 K2 ["imageStyles"]
       79 GETTABLEKS                       R8 R8 K30 ["backgroundTransparency"]
       81 SETTABLEKS                       R8 R7 K27 ["Transparency"]
       83 GETTABLEKS                       R8 R1 K2 ["imageStyles"]
       85 GETTABLEKS                       R8 R8 K31 ["backgroundColor3"]
       87 SETTABLEKS                       R8 R7 K28 ["Color3"]
       89 SETTABLEKS                       R7 R6 K15 ["backgroundStyle"]
       91 DUPTABLE                         R7 K32 [{"Transparency"}]
       92 GETTABLEKS                       R8 R1 K2 ["imageStyles"]
       94 GETTABLEKS                       R8 R8 K33 ["transparency"]
       96 SETTABLEKS                       R8 R7 K27 ["Transparency"]
       98 SETTABLEKS                       R7 R6 K16 ["imageStyle"]
      100 GETTABLEKS                       R7 R1 K2 ["imageStyles"]
      102 GETTABLEKS                       R7 R7 K34 ["scaleType"]
      104 SETTABLEKS                       R7 R6 K17 ["ScaleType"]
      106 GETTABLEKS                       R7 R1 K2 ["imageStyles"]
      108 GETTABLEKS                       R7 R7 K35 ["resampleMode"]
      110 SETTABLEKS                       R7 R6 K18 ["ResampleMode"]
      112 GETTABLEKS                       R7 R1 K2 ["imageStyles"]
      114 GETTABLEKS                       R7 R7 K36 ["tags"]
      116 SETTABLEKS                       R7 R6 K19 ["tag"]
      118 CALL                             R5 1 -1
      119 RETURN                           R5 -1
      120 GETUPVAL                         R5 1
      121 GETTABLEKS                       R5 R5 K37 ["createElement"]
      123 LOADK                            R6 K38 ["ImageLabel"]
      124 NEWTABLE                         R7 16 0
      126 GETTABLEKS                       R9 R0 K21 ["index"]
      128 FASTCALL1                        TOSTRING R9 ; [+2]
      129 GETIMPORT                        R8 K40 [tostring]
      131 CALL                             R8 1 1
      132 SETTABLEKS                       R8 R7 K41 ["key"]
      134 GETTABLEKS                       R8 R0 K21 ["index"]
      136 SETTABLEKS                       R8 R7 K12 ["LayoutOrder"]
      138 GETTABLEKS                       R9 R0 K4 ["attributes"]
      140 JUMPIFNOT                        R9 ; [+10]
      141 GETTABLEKS                       R9 R0 K4 ["attributes"]
      143 GETTABLEKS                       R9 R9 K22 ["src"]
      145 JUMPIFNOT                        R9 ; [+5]
      146 GETTABLEKS                       R8 R0 K4 ["attributes"]
      148 GETTABLEKS                       R8 R8 K22 ["src"]
      150 JUMP                             ; [+1]
      151 LOADK                            R8 K23 [""]
      152 SETTABLEKS                       R8 R7 K13 ["Image"]
      154 GETIMPORT                        R8 K26 [UDim2.fromOffset]
      156 MOVE                             R9 R3
      157 MOVE                             R10 R4
      158 CALL                             R8 2 1
      159 SETTABLEKS                       R8 R7 K14 ["Size"]
      161 GETTABLEKS                       R8 R1 K2 ["imageStyles"]
      163 GETTABLEKS                       R8 R8 K31 ["backgroundColor3"]
      165 SETTABLEKS                       R8 R7 K42 ["BackgroundColor3"]
      167 GETTABLEKS                       R8 R1 K2 ["imageStyles"]
      169 GETTABLEKS                       R8 R8 K30 ["backgroundTransparency"]
      171 SETTABLEKS                       R8 R7 K43 ["BackgroundTransparency"]
      173 GETTABLEKS                       R8 R1 K2 ["imageStyles"]
      175 GETTABLEKS                       R8 R8 K33 ["transparency"]
      177 SETTABLEKS                       R8 R7 K44 ["ImageTransparency"]
      179 GETTABLEKS                       R8 R1 K2 ["imageStyles"]
      181 GETTABLEKS                       R8 R8 K34 ["scaleType"]
      183 SETTABLEKS                       R8 R7 K17 ["ScaleType"]
      185 GETTABLEKS                       R8 R1 K2 ["imageStyles"]
      187 GETTABLEKS                       R8 R8 K35 ["resampleMode"]
      189 SETTABLEKS                       R8 R7 K18 ["ResampleMode"]
      191 GETUPVAL                         R8 1
      192 GETTABLEKS                       R8 R8 K45 ["Tag"]
      194 GETUPVAL                         R9 2
      195 LOADK                            R10 K46 ["X-PadS X-Middle"]
      196 GETTABLEKS                       R11 R1 K2 ["imageStyles"]
      198 GETTABLEKS                       R11 R11 K36 ["tags"]
      200 CALL                             R9 2 1
      201 SETTABLE                         R9 R7 R8
      202 CALL                             R5 2 -1
      203 RETURN                           R5 -1
      204 GETTABLEKS                       R2 R0 K0 ["text"]
      206 JUMPIFNOTEQKS                    R2 K47 ["Button"] ; [+59]
      208 GETTABLEKS                       R2 R0 K4 ["attributes"]
      210 JUMPIFNOT                        R2 ; [+10]
      211 GETTABLEKS                       R2 R0 K4 ["attributes"]
      213 GETTABLEKS                       R2 R2 K0 ["text"]
      215 JUMPIFNOT                        R2 ; [+5]
      216 GETTABLEKS                       R2 R0 K4 ["attributes"]
      218 GETTABLEKS                       R2 R2 K48 ["url"]
      220 JUMPIF                           R2 ; [+6]
      221 GETIMPORT                        R2 K50 [warn]
      223 LOADK                            R3 K51 ["Button tag misses required text and url attributes"]
      224 CALL                             R2 1 0
      225 LOADNIL                          R2
      226 RETURN                           R2 1
      227 GETUPVAL                         R2 1
      228 GETTABLEKS                       R2 R2 K37 ["createElement"]
      230 GETUPVAL                         R3 3
      231 DUPTABLE                         R4 K54 [{"key", "LayoutOrder", "text", "icon", "onActivated", "tag"}]
      232 GETTABLEKS                       R6 R0 K21 ["index"]
      234 FASTCALL1                        TOSTRING R6 ; [+2]
      235 GETIMPORT                        R5 K40 [tostring]
      237 CALL                             R5 1 1
      238 SETTABLEKS                       R5 R4 K41 ["key"]
      240 GETTABLEKS                       R5 R0 K21 ["index"]
      242 SETTABLEKS                       R5 R4 K12 ["LayoutOrder"]
      244 GETTABLEKS                       R5 R0 K4 ["attributes"]
      246 GETTABLEKS                       R5 R5 K0 ["text"]
      248 SETTABLEKS                       R5 R4 K0 ["text"]
      250 GETTABLEKS                       R5 R0 K4 ["attributes"]
      252 GETTABLEKS                       R5 R5 K52 ["icon"]
      254 SETTABLEKS                       R5 R4 K52 ["icon"]
      256 NEWCLOSURE                       R5 P0
      257 CAPTURE                          VAL R1
      258 CAPTURE                          VAL R0
      259 SETTABLEKS                       R5 R4 K53 ["onActivated"]
      261 LOADK                            R5 K55 ["auto-xy"]
      262 SETTABLEKS                       R5 R4 K19 ["tag"]
      264 CALL                             R2 2 -1
      265 RETURN                           R2 -1
      266 GETTABLEKS                       R2 R0 K0 ["text"]
      268 JUMPIFNOTEQKS                    R2 K56 ["font"] ; [+30]
      270 GETTABLEKS                       R3 R0 K4 ["attributes"]
      272 JUMPIFNOT                        R3 ; [+10]
      273 GETTABLEKS                       R3 R0 K4 ["attributes"]
      275 GETTABLEKS                       R3 R3 K57 ["color"]
      277 JUMPIFNOT                        R3 ; [+5]
      278 GETTABLEKS                       R2 R0 K4 ["attributes"]
      280 GETTABLEKS                       R2 R2 K57 ["color"]
      282 JUMP                             ; [+1]
      283 LOADNIL                          R2
      284 GETTABLEKS                       R3 R1 K58 ["processChildren"]
      286 GETTABLEKS                       R4 R0 K59 ["children"]
      288 GETUPVAL                         R5 4
      289 MOVE                             R6 R1
      290 DUPTABLE                         R7 K61 [{"textStyles"}]
      291 DUPTABLE                         R8 K62 [{"color"}]
      292 SETTABLEKS                       R2 R8 K57 ["color"]
      294 SETTABLEKS                       R8 R7 K60 ["textStyles"]
      296 CALL                             R5 2 -1
      297 CALL                             R3 -1 -1
      298 RETURN                           R3 -1
      299 LOADNIL                          R2
      300 RETURN                           R2 1

PROTO_32:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R1 K0 ["userRenderers"]
        3 SETTABLEKS                       R3 R2 K1 ["renderers"]
        5 GETIMPORT                        R2 K4 [table.clone]
        7 GETTABLEKS                       R3 R1 K5 ["markdownRendererProps"]
        9 JUMPIF                           R3 ; [+2]
       10 NEWTABLE                         R3 0 0
       12 CALL                             R2 1 1
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K6 ["joinDeep"]
       16 DUPTABLE                         R4 K15 [{"textStyles", "codeStyles", "headerStyles", "imageStyles", "isInline", "linkCallback", "colorScheme", "processChildren"}]
       17 DUPTABLE                         R5 K18 [{"textSize", "font"}]
       18 LOADN                            R6 18
       19 SETTABLEKS                       R6 R5 K16 ["textSize"]
       21 GETUPVAL                         R6 2
       22 SETTABLEKS                       R6 R5 K17 ["font"]
       24 SETTABLEKS                       R5 R4 K7 ["textStyles"]
       26 DUPTABLE                         R5 K20 [{"textSize", "font", "lineHeight"}]
       27 LOADN                            R6 18
       28 SETTABLEKS                       R6 R5 K16 ["textSize"]
       30 GETUPVAL                         R6 3
       31 SETTABLEKS                       R6 R5 K17 ["font"]
       33 LOADK                            R6 K21 [1.111]
       34 SETTABLEKS                       R6 R5 K19 ["lineHeight"]
       36 SETTABLEKS                       R5 R4 K8 ["codeStyles"]
       38 NEWTABLE                         R5 0 4
       40 DUPTABLE                         R6 K18 [{"textSize", "font"}]
       41 LOADN                            R7 54
       42 SETTABLEKS                       R7 R6 K16 ["textSize"]
       44 GETUPVAL                         R7 2
       45 SETTABLEKS                       R7 R6 K17 ["font"]
       47 SETTABLEN                        R6 R5 1
       48 DUPTABLE                         R6 K18 [{"textSize", "font"}]
       49 LOADN                            R7 45
       50 SETTABLEKS                       R7 R6 K16 ["textSize"]
       52 GETUPVAL                         R7 2
       53 SETTABLEKS                       R7 R6 K17 ["font"]
       55 SETTABLEN                        R6 R5 2
       56 DUPTABLE                         R6 K18 [{"textSize", "font"}]
       57 LOADN                            R7 36
       58 SETTABLEKS                       R7 R6 K16 ["textSize"]
       60 GETUPVAL                         R7 2
       61 SETTABLEKS                       R7 R6 K17 ["font"]
       63 SETTABLEN                        R6 R5 3
       64 DUPTABLE                         R6 K18 [{"textSize", "font"}]
       65 LOADN                            R7 27
       66 SETTABLEKS                       R7 R6 K16 ["textSize"]
       68 GETUPVAL                         R7 2
       69 SETTABLEKS                       R7 R6 K17 ["font"]
       71 SETTABLEN                        R6 R5 4
       72 SETTABLEKS                       R5 R4 K9 ["headerStyles"]
       74 DUPTABLE                         R5 K23 [{"size"}]
       75 GETUPVAL                         R6 4
       76 SETTABLEKS                       R6 R5 K22 ["size"]
       78 SETTABLEKS                       R5 R4 K10 ["imageStyles"]
       80 LOADB                            R5 0
       81 SETTABLEKS                       R5 R4 K11 ["isInline"]
       83 GETTABLEKS                       R5 R1 K12 ["linkCallback"]
       85 JUMPIF                           R5 ; [+1]
       86 GETUPVAL                         R5 5
       87 SETTABLEKS                       R5 R4 K12 ["linkCallback"]
       89 GETTABLEKS                       R5 R1 K13 ["colorScheme"]
       91 SETTABLEKS                       R5 R4 K13 ["colorScheme"]
       93 GETUPVAL                         R5 6
       94 SETTABLEKS                       R5 R4 K14 ["processChildren"]
       96 MOVE                             R5 R2
       97 CALL                             R3 2 1
       98 GETIMPORT                        R4 K25 [table.freeze]
      100 MOVE                             R5 R3
      101 CALL                             R4 1 0
      102 JUMPIF                           R0 ; [+2]
      103 LOADNIL                          R4
      104 RETURN                           R4 1
      105 GETUPVAL                         R6 0
      106 GETTABLEKS                       R6 R6 K1 ["renderers"]
      108 GETTABLEKS                       R7 R0 K26 ["name"]
      110 GETTABLE                         R5 R6 R7
      111 JUMPIF                           R5 ; [+12]
      112 GETIMPORT                        R6 K28 [warn]
      114 LOADK                            R8 K29 ["No renderer found for node: $%*"]
      115 GETTABLEKS                       R10 R0 K26 ["name"]
      117 NAMECALL                         R8 R8 K30 ["format"]
      119 CALL                             R8 2 1
      120 MOVE                             R7 R8
      121 CALL                             R6 1 0
      122 LOADNIL                          R4
      123 RETURN                           R4 1
      124 MOVE                             R6 R5
      125 MOVE                             R7 R0
      126 MOVE                             R8 R3
      127 CALL                             R6 2 1
      128 MOVE                             R4 R6
      129 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["MessageBusService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["Components"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R1 R1 K8 ["Parent"]
       15 GETIMPORT                        R2 K5 [script]
       17 LOADK                            R4 K9 ["Packages"]
       18 NAMECALL                         R2 R2 K7 ["FindFirstAncestor"]
       20 CALL                             R2 2 1
       21 GETIMPORT                        R3 K11 [require]
       23 GETTABLEKS                       R4 R2 K12 ["React"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K11 [require]
       28 GETTABLEKS                       R5 R2 K13 ["Dash"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K11 [require]
       33 GETTABLEKS                       R6 R2 K14 ["Foundation"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K11 [require]
       38 GETTABLEKS                       R7 R1 K15 ["Utils"]
       40 GETTABLEKS                       R7 R7 K16 ["JoinTags"]
       42 CALL                             R6 1 1
       43 GETTABLEKS                       R7 R5 K17 ["View"]
       45 GETTABLEKS                       R8 R5 K18 ["Text"]
       47 GETTABLEKS                       R9 R5 K19 ["Button"]
       49 GETTABLEKS                       R10 R5 K20 ["Divider"]
       51 GETTABLEKS                       R11 R1 K6 ["Components"]
       53 GETTABLEKS                       R12 R1 K15 ["Utils"]
       55 GETIMPORT                        R13 K11 [require]
       57 GETTABLEKS                       R14 R11 K21 ["InlineLayout"]
       59 CALL                             R13 1 1
       60 GETIMPORT                        R14 K11 [require]
       62 GETTABLEKS                       R15 R11 K21 ["InlineLayout"]
       64 GETTABLEKS                       R15 R15 K22 ["InlineLayoutElements"]
       66 GETTABLEKS                       R15 R15 K23 ["BaseTextElement"]
       68 CALL                             R14 1 1
       69 GETIMPORT                        R15 K11 [require]
       71 GETTABLEKS                       R16 R11 K21 ["InlineLayout"]
       73 GETTABLEKS                       R16 R16 K24 ["TextElement"]
       75 CALL                             R15 1 1
       76 GETIMPORT                        R16 K11 [require]
       78 GETTABLEKS                       R17 R11 K21 ["InlineLayout"]
       80 GETTABLEKS                       R17 R17 K25 ["SelectableTextElement"]
       82 CALL                             R16 1 1
       83 GETIMPORT                        R17 K11 [require]
       85 GETTABLEKS                       R18 R11 K21 ["InlineLayout"]
       87 GETTABLEKS                       R18 R18 K26 ["LinkElement"]
       89 CALL                             R17 1 1
       90 GETIMPORT                        R18 K11 [require]
       92 GETTABLEKS                       R19 R11 K21 ["InlineLayout"]
       94 GETTABLEKS                       R19 R19 K27 ["ImageElement"]
       96 CALL                             R18 1 1
       97 GETIMPORT                        R19 K11 [require]
       99 GETTABLEKS                       R20 R11 K21 ["InlineLayout"]
      101 GETTABLEKS                       R20 R20 K28 ["HardBreakElement"]
      103 CALL                             R19 1 1
      104 GETIMPORT                        R20 K11 [require]
      106 GETTABLEKS                       R21 R12 K29 ["IsInlineElement"]
      108 CALL                             R20 1 1
      109 GETIMPORT                        R21 K11 [require]
      111 GETTABLEKS                       R22 R11 K30 ["BulletList"]
      113 CALL                             R21 1 1
      114 GETIMPORT                        R22 K11 [require]
      116 GETTABLEKS                       R23 R1 K31 ["Types"]
      118 CALL                             R22 1 1
      119 GETIMPORT                        R23 K11 [require]
      121 GETTABLEKS                       R24 R1 K15 ["Utils"]
      123 GETTABLEKS                       R24 R24 K32 ["Highlighter"]
      125 CALL                             R23 1 1
      126 GETIMPORT                        R24 K11 [require]
      128 GETTABLEKS                       R25 R1 K33 ["Flags"]
      130 GETTABLEKS                       R25 R25 K34 ["FFlagMarkdownCodeImprovements"]
      132 CALL                             R24 1 1
      133 GETIMPORT                        R25 K11 [require]
      135 GETTABLEKS                       R26 R1 K33 ["Flags"]
      137 GETTABLEKS                       R26 R26 K35 ["FFlagMarkdownCommonMarkCompliance"]
      139 CALL                             R25 1 1
      140 GETIMPORT                        R26 K11 [require]
      142 GETTABLEKS                       R27 R1 K33 ["Flags"]
      144 GETTABLEKS                       R27 R27 K36 ["FFlagMarkdownStudioThemeColors"]
      146 CALL                             R26 1 1
      147 GETIMPORT                        R27 K40 [Enum.Font.BuilderSans]
      149 GETIMPORT                        R28 K43 [UDim2.new]
      151 LOADN                            R29 0
      152 LOADN                            R30 16
      153 LOADN                            R31 0
      154 LOADN                            R32 16
      155 CALL                             R28 4 1
      156 GETIMPORT                        R29 K45 [Enum.Font.Code]
      158 DUPCLOSURE                       R30 K46 [PROTO_0]
      159 CAPTURE                          VAL R4
      160 DUPCLOSURE                       R31 K47 [PROTO_1]
      161 DUPCLOSURE                       R32 K48 [PROTO_2]
      162 CAPTURE                          VAL R4
      163 DUPCLOSURE                       R33 K49 [PROTO_3]
      164 SETGLOBAL                        R33 K50 ["processSoftBreaks"]
      166 DUPTABLE                         R33 K52 [{"renderers"}]
      167 NEWTABLE                         R34 0 0
      169 SETTABLEKS                       R34 R33 K51 ["renderers"]
      171 DUPCLOSURE                       R34 K53 [PROTO_4]
      172 CAPTURE                          VAL R26
      173 DUPCLOSURE                       R35 K54 [PROTO_5]
      174 CAPTURE                          VAL R26
      175 DUPCLOSURE                       R36 K55 [PROTO_6]
      176 DUPCLOSURE                       R37 K56 [PROTO_7]
      177 CAPTURE                          VAL R33
      178 DUPCLOSURE                       R38 K57 [PROTO_8]
      179 CAPTURE                          VAL R33
      180 DUPCLOSURE                       R39 K58 [PROTO_9]
      181 CAPTURE                          VAL R3
      182 CAPTURE                          VAL R13
      183 CAPTURE                          VAL R4
      184 CAPTURE                          VAL R30
      185 CAPTURE                          VAL R20
      186 DUPCLOSURE                       R40 K59 [PROTO_10]
      187 CAPTURE                          VAL R3
      188 CAPTURE                          VAL R7
      189 DUPCLOSURE                       R41 K60 [PROTO_11]
      190 CAPTURE                          VAL R3
      191 CAPTURE                          VAL R7
      192 CAPTURE                          VAL R26
      193 CAPTURE                          VAL R39
      194 CAPTURE                          VAL R30
      195 DUPCLOSURE                       R42 K61 [PROTO_12]
      196 CAPTURE                          VAL R3
      197 CAPTURE                          VAL R7
      198 CAPTURE                          VAL R26
      199 CAPTURE                          VAL R39
      200 DUPCLOSURE                       R43 K62 [PROTO_13]
      201 DUPCLOSURE                       R44 K63 [PROTO_15]
      202 CAPTURE                          VAL R0
      203 GETTABLEKS                       R45 R4 K64 ["memoize"]
      205 DUPCLOSURE                       R46 K65 [PROTO_17]
      206 CAPTURE                          VAL R0
      207 CALL                             R45 1 1
      208 DUPCLOSURE                       R46 K66 [PROTO_18]
      209 CAPTURE                          VAL R23
      210 CAPTURE                          VAL R4
      211 CAPTURE                          VAL R26
      212 CAPTURE                          VAL R29
      213 CAPTURE                          VAL R24
      214 CAPTURE                          VAL R43
      215 CAPTURE                          VAL R3
      216 CAPTURE                          VAL R7
      217 CAPTURE                          VAL R5
      218 CAPTURE                          VAL R45
      219 CAPTURE                          VAL R8
      220 DUPCLOSURE                       R47 K67 [PROTO_19]
      221 CAPTURE                          VAL R3
      222 CAPTURE                          VAL R7
      223 CAPTURE                          VAL R4
      224 CAPTURE                          VAL R33
      225 CAPTURE                          VAL R26
      226 CAPTURE                          VAL R21
      227 CAPTURE                          VAL R27
      228 CAPTURE                          VAL R23
      229 DUPCLOSURE                       R48 K68 [PROTO_20]
      230 CAPTURE                          VAL R3
      231 CAPTURE                          VAL R7
      232 CAPTURE                          VAL R39
      233 DUPCLOSURE                       R49 K69 [PROTO_21]
      234 CAPTURE                          VAL R24
      235 CAPTURE                          VAL R4
      236 CAPTURE                          VAL R26
      237 CAPTURE                          VAL R30
      238 DUPCLOSURE                       R50 K70 [PROTO_22]
      239 CAPTURE                          VAL R26
      240 CAPTURE                          VAL R27
      241 CAPTURE                          VAL R24
      242 CAPTURE                          VAL R16
      243 CAPTURE                          VAL R15
      244 DUPCLOSURE                       R51 K71 [PROTO_23]
      245 CAPTURE                          VAL R24
      246 CAPTURE                          VAL R4
      247 CAPTURE                          VAL R50
      248 CAPTURE                          VAL R30
      249 DUPCLOSURE                       R52 K72 [PROTO_24]
      250 CAPTURE                          VAL R19
      251 DUPCLOSURE                       R53 K73 [PROTO_26]
      252 CAPTURE                          VAL R17
      253 DUPCLOSURE                       R54 K74 [PROTO_27]
      254 CAPTURE                          VAL R26
      255 CAPTURE                          VAL R3
      256 CAPTURE                          VAL R7
      257 CAPTURE                          VAL R10
      258 DUPCLOSURE                       R55 K75 [PROTO_28]
      259 CAPTURE                          VAL R3
      260 CAPTURE                          VAL R7
      261 CAPTURE                          VAL R39
      262 CAPTURE                          VAL R30
      263 DUPCLOSURE                       R56 K76 [PROTO_29]
      264 CAPTURE                          VAL R18
      265 DUPCLOSURE                       R57 K77 [PROTO_31]
      266 CAPTURE                          VAL R18
      267 CAPTURE                          VAL R3
      268 CAPTURE                          VAL R6
      269 CAPTURE                          VAL R9
      270 CAPTURE                          VAL R30
      271 NEWTABLE                         R58 32 0
      273 SETTABLEKS                       R40 R58 K78 ["ROOT"]
      275 SETTABLEKS                       R41 R58 K79 ["HEADING"]
      277 SETTABLEKS                       R42 R58 K80 ["PARAGRAPH"]
      279 SETTABLEKS                       R46 R58 K81 ["CODE_BLOCK"]
      281 SETTABLEKS                       R49 R58 K82 ["STYLED_TEXT"]
      283 SETTABLEKS                       R50 R58 K83 ["TEXT"]
      285 JUMPIFNOT                        R25 ; [+2]
      286 LOADNIL                          R59
      287 JUMP                             ; [+1]
      288 MOVE                             R59 R51
      289 SETTABLEKS                       R59 R58 K84 ["INLINE_CODE"]
      291 SETTABLEKS                       R53 R58 K85 ["LINK"]
      293 SETTABLEKS                       R47 R58 K86 ["LIST"]
      295 SETTABLEKS                       R48 R58 K87 ["LIST_ITEM"]
      297 SETTABLEKS                       R54 R58 K88 ["DIVIDER"]
      299 JUMPIFNOT                        R25 ; [+2]
      300 LOADNIL                          R59
      301 JUMP                             ; [+1]
      302 MOVE                             R59 R54
      303 SETTABLEKS                       R59 R58 K89 ["DIVIDER_2"]
      305 SETTABLEKS                       R55 R58 K90 ["QUOTE"]
      307 SETTABLEKS                       R56 R58 K91 ["IMAGE"]
      309 SETTABLEKS                       R57 R58 K92 ["TAG"]
      311 SETTABLEKS                       R52 R58 K93 ["BREAK"]
      313 SETTABLEKS                       R52 R58 K94 ["LINE_BREAK"]
      315 SETTABLEKS                       R58 R33 K95 ["defaultRenderers"]
      317 DUPCLOSURE                       R58 K96 [PROTO_32]
      318 CAPTURE                          VAL R33
      319 CAPTURE                          VAL R4
      320 CAPTURE                          VAL R27
      321 CAPTURE                          VAL R29
      322 CAPTURE                          VAL R28
      323 CAPTURE                          VAL R31
      324 CAPTURE                          VAL R38
      325 SETTABLEKS                       R58 R33 K97 ["render"]
      327 RETURN                           R33 1
