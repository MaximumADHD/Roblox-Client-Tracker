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
       13 DUPTABLE                         R10 K7 [{["isInline"] = True}]
       14 CALL                             R8 2 -1
       15 CALL                             R6 -1 1
       16 GETUPVAL                         R7 4
       17 CALL                             R5 2 1
       18 SETTABLEKS                       R5 R4 K1 ["Elements"]
       20 CALL                             R2 2 -1
       21 RETURN                           R2 -1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K6 [{["tag"] = "size-full-0 auto-y col", ["BorderSizePixel"] = 0, ["backgroundStyle"]}]
        5 DUPTABLE                         R5 K9 [{["Transparency"] = 1}]
        6 SETTABLEKS                       R5 R4 K5 ["backgroundStyle"]
        8 GETTABLEKS                       R5 R1 K10 ["processChildren"]
       10 GETTABLEKS                       R6 R0 K11 ["children"]
       12 MOVE                             R7 R1
       13 CALL                             R5 2 1
       14 CALL                             R2 3 -1
       15 RETURN                           R2 -1

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
       31 DUPTABLE                         R5 K14 [{["key"], ["LayoutOrder"], ["tag"] = "size-full-0 auto-y"}]
       32 GETTABLEKS                       R7 R0 K15 ["index"]
       34 FASTCALL1                        TOSTRING R7 ; [+2]
       35 GETIMPORT                        R6 K17 [tostring]
       37 CALL                             R6 1 1
       38 SETTABLEKS                       R6 R5 K10 ["key"]
       40 GETTABLEKS                       R6 R0 K15 ["index"]
       42 SETTABLEKS                       R6 R5 K11 ["LayoutOrder"]
       44 DUPTABLE                         R6 K20 [{"UIPadding", "InlineLayout"}]
       45 GETUPVAL                         R8 2
       46 CALL                             R8 0 1
       47 JUMPIFNOT                        R8 ; [+15]
       48 GETUPVAL                         R9 2
       49 CALL                             R9 0 1
       50 FASTCALL2K                       ASSERT R9 K21 ; [+4]
       52 LOADK                            R10 K21 ["shouldUseTopPadding is disabled"]
       53 GETIMPORT                        R8 K23 [assert]
       55 CALL                             R8 2 0
       56 GETTABLEKS                       R8 R0 K24 ["offset"]
       58 JUMPIFNOTEQKN                    R8 K25 [0] ; [+2]
       60 LOADB                            R7 0 +1
       61 LOADB                            R7 1
       62 JUMPIFNOT                        R7 ; [+13]
       63 GETUPVAL                         R7 0
       64 GETTABLEKS                       R7 R7 K9 ["createElement"]
       66 LOADK                            R8 K18 ["UIPadding"]
       67 DUPTABLE                         R9 K27 [{"PaddingTop"}]
       68 GETIMPORT                        R10 K30 [UDim.new]
       70 LOADN                            R11 0
       71 LOADN                            R12 20
       72 CALL                             R10 2 1
       73 SETTABLEKS                       R10 R9 K26 ["PaddingTop"]
       75 CALL                             R7 2 1
       76 SETTABLEKS                       R7 R6 K18 ["UIPadding"]
       78 GETUPVAL                         R7 3
       79 GETTABLEKS                       R8 R0 K31 ["children"]
       81 GETUPVAL                         R9 4
       82 MOVE                             R10 R1
       83 DUPTABLE                         R11 K33 [{"textStyles"}]
       84 GETTABLEKS                       R13 R1 K5 ["headerStyles"]
       86 GETTABLE                         R12 R13 R2
       87 SETTABLEKS                       R12 R11 K32 ["textStyles"]
       89 CALL                             R9 2 -1
       90 CALL                             R7 -1 1
       91 SETTABLEKS                       R7 R6 K19 ["InlineLayout"]
       93 CALL                             R3 3 -1
       94 RETURN                           R3 -1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K5 [{["key"], ["LayoutOrder"], ["tag"] = "size-full-0 auto-y"}]
        5 GETTABLEKS                       R6 R0 K6 ["index"]
        7 FASTCALL1                        TOSTRING R6 ; [+2]
        8 GETIMPORT                        R5 K8 [tostring]
       10 CALL                             R5 1 1
       11 SETTABLEKS                       R5 R4 K1 ["key"]
       13 GETTABLEKS                       R5 R0 K6 ["index"]
       15 SETTABLEKS                       R5 R4 K2 ["LayoutOrder"]
       17 DUPTABLE                         R5 K11 [{"UIPadding", "InlineLayout"}]
       18 GETUPVAL                         R7 2
       19 CALL                             R7 0 1
       20 JUMPIFNOT                        R7 ; [+15]
       21 GETUPVAL                         R8 2
       22 CALL                             R8 0 1
       23 FASTCALL2K                       ASSERT R8 K12 ; [+4]
       25 LOADK                            R9 K12 ["shouldUseTopPadding is disabled"]
       26 GETIMPORT                        R7 K14 [assert]
       28 CALL                             R7 2 0
       29 GETTABLEKS                       R7 R0 K15 ["offset"]
       31 JUMPIFNOTEQKN                    R7 K16 [0] ; [+2]
       33 LOADB                            R6 0 +1
       34 LOADB                            R6 1
       35 JUMPIFNOT                        R6 ; [+13]
       36 GETUPVAL                         R6 0
       37 GETTABLEKS                       R6 R6 K0 ["createElement"]
       39 LOADK                            R7 K9 ["UIPadding"]
       40 DUPTABLE                         R8 K18 [{"PaddingTop"}]
       41 GETIMPORT                        R9 K21 [UDim.new]
       43 LOADN                            R10 0
       44 LOADN                            R11 10
       45 CALL                             R9 2 1
       46 SETTABLEKS                       R9 R8 K17 ["PaddingTop"]
       48 CALL                             R6 2 1
       49 SETTABLEKS                       R6 R5 K9 ["UIPadding"]
       51 GETUPVAL                         R6 3
       52 GETTABLEKS                       R7 R0 K22 ["children"]
       54 MOVE                             R8 R1
       55 CALL                             R6 2 1
       56 SETTABLEKS                       R6 R5 K10 ["InlineLayout"]
       58 CALL                             R2 3 -1
       59 RETURN                           R2 -1

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
       31 DUPTABLE                         R7 K15 [{["TextWrapped"] = False, ["fontStyle"], ["TextXAlignment"], ["tag"] = "auto-xy padding-small align-y-top"}]
       32 DUPTABLE                         R8 K19 [{"FontSize", "Font", "LineHeight"}]
       33 GETTABLEKS                       R9 R6 K20 ["textSize"]
       35 SETTABLEKS                       R9 R8 K16 ["FontSize"]
       37 GETUPVAL                         R10 2
       38 CALL                             R10 0 1
       39 JUMPIFNOT                        R10 ; [+31]
       40 GETUPVAL                         R10 3
       41 GETUPVAL                         R12 2
       42 CALL                             R12 0 1
       43 FASTCALL2K                       ASSERT R12 K21 ; [+4]
       45 LOADK                            R13 K21 ["getFontFace is disabled"]
       46 GETIMPORT                        R11 K23 [assert]
       48 CALL                             R11 2 0
       49 GETTABLEKS                       R11 R6 K24 ["fontFace"]
       51 JUMPIFNOT                        R11 ; [+3]
       52 GETTABLEKS                       R9 R6 K24 ["fontFace"]
       54 JUMP                             ; [+18]
       55 GETTABLEKS                       R11 R6 K25 ["font"]
       57 JUMPIFNOT                        R11 ; [+7]
       58 GETIMPORT                        R11 K27 [Font.fromEnum]
       60 GETTABLEKS                       R12 R6 K25 ["font"]
       62 CALL                             R11 1 1
       63 MOVE                             R9 R11
       64 JUMP                             ; [+8]
       65 GETIMPORT                        R11 K27 [Font.fromEnum]
       67 MOVE                             R12 R10
       68 CALL                             R11 1 1
       69 MOVE                             R9 R11
       70 JUMP                             ; [+2]
       71 GETTABLEKS                       R9 R6 K25 ["font"]
       73 SETTABLEKS                       R9 R8 K17 ["Font"]
       75 GETTABLEKS                       R9 R6 K28 ["lineHeight"]
       77 SETTABLEKS                       R9 R8 K18 ["LineHeight"]
       79 SETTABLEKS                       R8 R7 K11 ["fontStyle"]
       81 GETIMPORT                        R8 K31 [Enum.TextXAlignment.Left]
       83 SETTABLEKS                       R8 R7 K12 ["TextXAlignment"]
       85 MOVE                             R5 R7
       86 DUPTABLE                         R7 K38 [{["Text"], ["textStyle"], ["RichText"] = True, ["ZIndex"] = 1}]
       87 SETTABLEKS                       R4 R7 K32 ["Text"]
       89 DUPTABLE                         R8 K40 [{"Color3"}]
       90 GETUPVAL                         R9 0
       91 GETTABLEKS                       R9 R9 K41 ["getTokenColor"]
       93 LOADK                            R10 K42 ["iden"]
       94 CALL                             R9 1 1
       95 SETTABLEKS                       R9 R8 K39 ["Color3"]
       97 SETTABLEKS                       R8 R7 K33 ["textStyle"]
       99 DUPTABLE                         R8 K45 [{["Text"], ["textStyle"], ["ZIndex"] = 0, ["TextSelectable"] = True}]
      100 SETTABLEKS                       R3 R8 K32 ["Text"]
      102 DUPTABLE                         R9 K48 [{["Color3"], ["Transparency"] = 0.4}]
      103 GETUPVAL                         R10 0
      104 GETTABLEKS                       R10 R10 K41 ["getTokenColor"]
      106 LOADK                            R11 K42 ["iden"]
      107 CALL                             R10 1 1
      108 SETTABLEKS                       R10 R9 K39 ["Color3"]
      110 SETTABLEKS                       R9 R8 K33 ["textStyle"]
      112 GETTABLEKS                       R9 R1 K49 ["codeBackgroundStyles"]
      114 JUMPIF                           R9 ; [+2]
      115 NEWTABLE                         R9 0 0
      117 GETTABLEKS                       R10 R9 K50 ["backgroundColor3"]
      119 JUMPIF                           R10 ; [+5]
      120 GETUPVAL                         R10 0
      121 GETTABLEKS                       R10 R10 K41 ["getTokenColor"]
      123 LOADK                            R11 K51 ["background"]
      124 CALL                             R10 1 1
      125 GETTABLEKS                       R12 R9 K52 ["backgroundTransparency"]
      127 ORK                              R11 R12 K43 [0]
      128 LOADNIL                          R12
      129 GETUPVAL                         R13 4
      130 JUMPIFNOT                        R13 ; [+7]
      131 GETTABLEKS                       R13 R1 K53 ["codeSettings"]
      133 JUMPIFNOT                        R13 ; [+4]
      134 GETTABLEKS                       R13 R1 K53 ["codeSettings"]
      136 GETTABLEKS                       R13 R13 K54 ["showLineNumbers"]
      138 JUMPIFNOT                        R13 ; [+4]
      139 GETUPVAL                         R14 5
      140 MOVE                             R15 R3
      141 CALL                             R14 1 1
      142 MOVE                             R12 R14
      143 GETUPVAL                         R14 4
      144 JUMPIFNOT                        R14 ; [+7]
      145 GETTABLEKS                       R14 R1 K53 ["codeSettings"]
      147 JUMPIFNOT                        R14 ; [+4]
      148 GETTABLEKS                       R14 R1 K53 ["codeSettings"]
      150 GETTABLEKS                       R14 R14 K55 ["showCopyButton"]
      152 GETUPVAL                         R15 6
      153 GETTABLEKS                       R15 R15 K56 ["createElement"]
      155 GETUPVAL                         R16 7
      156 DUPTABLE                         R17 K62 [{["key"], ["LayoutOrder"], ["tag"] = "size-full-0 auto-y col", ["backgroundStyle"], ["BorderSizePixel"] = 0}]
      157 GETTABLEKS                       R19 R0 K63 ["index"]
      159 FASTCALL1                        TOSTRING R19 ; [+2]
      160 GETIMPORT                        R18 K65 [tostring]
      162 CALL                             R18 1 1
      163 SETTABLEKS                       R18 R17 K57 ["key"]
      165 GETTABLEKS                       R18 R0 K63 ["index"]
      167 SETTABLEKS                       R18 R17 K58 ["LayoutOrder"]
      169 DUPTABLE                         R18 K66 [{["Transparency"] = 1}]
      170 SETTABLEKS                       R18 R17 K60 ["backgroundStyle"]
      172 DUPTABLE                         R18 K70 [{"UIPadding", "TitleBar", "CodeWrapper"}]
      173 GETUPVAL                         R19 6
      174 GETTABLEKS                       R19 R19 K56 ["createElement"]
      176 LOADK                            R20 K67 ["UIPadding"]
      177 DUPTABLE                         R21 K73 [{"PaddingTop", "PaddingBottom"}]
      178 GETUPVAL                         R23 2
      179 CALL                             R23 0 1
      180 JUMPIFNOT                        R23 ; [+15]
      181 GETUPVAL                         R25 2
      182 CALL                             R25 0 1
      183 FASTCALL2K                       ASSERT R25 K74 ; [+4]
      185 LOADK                            R26 K74 ["shouldUseTopPadding is disabled"]
      186 GETIMPORT                        R24 K23 [assert]
      188 CALL                             R24 2 0
      189 GETTABLEKS                       R24 R0 K75 ["offset"]
      191 JUMPIFNOTEQKN                    R24 K43 [0] ; [+2]
      193 LOADB                            R23 0 +1
      194 LOADB                            R23 1
      195 JUMPIFNOT                        R23 ; [+6]
      196 GETIMPORT                        R22 K78 [UDim.new]
      198 LOADN                            R23 0
      199 LOADN                            R24 10
      200 CALL                             R22 2 1
      201 JUMP                             ; [+1]
      202 LOADNIL                          R22
      203 SETTABLEKS                       R22 R21 K71 ["PaddingTop"]
      205 GETIMPORT                        R22 K78 [UDim.new]
      207 LOADN                            R23 0
      208 LOADN                            R24 10
      209 CALL                             R22 2 1
      210 SETTABLEKS                       R22 R21 K72 ["PaddingBottom"]
      212 CALL                             R19 2 1
      213 SETTABLEKS                       R19 R18 K67 ["UIPadding"]
      215 JUMPIFNOT                        R14 ; [+46]
      216 GETUPVAL                         R19 6
      217 GETTABLEKS                       R19 R19 K56 ["createElement"]
      219 GETUPVAL                         R20 8
      220 GETTABLEKS                       R20 R20 K79 ["View"]
      222 DUPTABLE                         R21 K81 [{["tag"] = "size-full-0 auto-y row align-x-right bg-shift-300 radius-small", ["LayoutOrder"] = 1}]
      223 DUPTABLE                         R22 K83 [{"CopyToClipboardButton"}]
      224 GETUPVAL                         R23 6
      225 GETTABLEKS                       R23 R23 K56 ["createElement"]
      227 GETUPVAL                         R24 8
      228 GETTABLEKS                       R24 R24 K84 ["IconButton"]
      230 DUPTABLE                         R25 K88 [{"size", "icon", "onActivated"}]
      231 GETUPVAL                         R26 8
      232 GETTABLEKS                       R26 R26 K89 ["Enums"]
      234 GETTABLEKS                       R26 R26 K90 ["InputSize"]
      236 GETTABLEKS                       R26 R26 K91 ["Small"]
      238 SETTABLEKS                       R26 R25 K85 ["size"]
      240 DUPTABLE                         R26 K93 [{"name"}]
      241 GETUPVAL                         R27 8
      242 GETTABLEKS                       R27 R27 K89 ["Enums"]
      244 GETTABLEKS                       R27 R27 K94 ["IconName"]
      246 GETTABLEKS                       R27 R27 K95 ["TwoStackedSquares"]
      248 SETTABLEKS                       R27 R26 K92 ["name"]
      250 SETTABLEKS                       R26 R25 K86 ["icon"]
      252 GETUPVAL                         R26 9
      253 MOVE                             R27 R3
      254 CALL                             R26 1 1
      255 SETTABLEKS                       R26 R25 K87 ["onActivated"]
      257 CALL                             R23 2 1
      258 SETTABLEKS                       R23 R22 K82 ["CopyToClipboardButton"]
      260 CALL                             R19 3 1
      261 JUMP                             ; [+1]
      262 LOADNIL                          R19
      263 SETTABLEKS                       R19 R18 K68 ["TitleBar"]
      265 GETUPVAL                         R19 6
      266 GETTABLEKS                       R19 R19 K56 ["createElement"]
      268 GETUPVAL                         R20 8
      269 GETTABLEKS                       R20 R20 K79 ["View"]
      271 DUPTABLE                         R21 K97 [{["LayoutOrder"] = 2, ["tag"]}]
      272 NEWTABLE                         R22 2 0
      274 LOADB                            R23 1
      275 SETTABLEKS                       R23 R22 K98 ["size-full-0 auto-y"]
      277 SETTABLEKS                       R13 R22 K99 ["row align-y-center"]
      279 SETTABLEKS                       R22 R21 K13 ["tag"]
      281 DUPTABLE                         R22 K102 [{"LineNumbers", "ScrollFrameWrapper"}]
      282 JUMPIFNOT                        R13 ; [+15]
      283 GETUPVAL                         R23 6
      284 GETTABLEKS                       R23 R23 K56 ["createElement"]
      286 GETUPVAL                         R24 8
      287 GETTABLEKS                       R24 R24 K32 ["Text"]
      289 DUPTABLE                         R25 K104 [{["Text"], ["fontStyle"], ["LayoutOrder"] = 1, ["tag"] = "size-0-0 auto-xy text-align-x-right text-align-y-center padding-small bg-shift-100 content-emphasis"}]
      290 SETTABLEKS                       R12 R25 K32 ["Text"]
      292 GETTABLEKS                       R26 R5 K11 ["fontStyle"]
      294 SETTABLEKS                       R26 R25 K11 ["fontStyle"]
      296 CALL                             R23 2 1
      297 JUMP                             ; [+1]
      298 LOADNIL                          R23
      299 SETTABLEKS                       R23 R22 K100 ["LineNumbers"]
      301 GETUPVAL                         R23 6
      302 GETTABLEKS                       R23 R23 K56 ["createElement"]
      304 GETUPVAL                         R24 8
      305 GETTABLEKS                       R24 R24 K79 ["View"]
      307 DUPTABLE                         R25 K107 [{["tag"] = "size-full-0 auto-y fill", ["Size"], ["LayoutOrder"] = 2}]
      308 GETIMPORT                        R26 K110 [UDim2.fromScale]
      310 LOADN                            R27 1
      311 LOADN                            R28 0
      312 CALL                             R26 2 1
      313 SETTABLEKS                       R26 R25 K106 ["Size"]
      315 DUPTABLE                         R26 K112 [{"ScrollFrame"}]
      316 GETUPVAL                         R27 6
      317 GETTABLEKS                       R27 R27 K56 ["createElement"]
      319 LOADK                            R28 K113 ["ScrollingFrame"]
      320 DUPTABLE                         R29 K119 [{["BackgroundColor3"], ["BackgroundTransparency"], ["BorderSizePixel"] = 0, ["ScrollingDirection"], ["Size"], ["AutomaticSize"], ["AutomaticCanvasSize"]}]
      321 SETTABLEKS                       R10 R29 K114 ["BackgroundColor3"]
      323 SETTABLEKS                       R11 R29 K115 ["BackgroundTransparency"]
      325 GETIMPORT                        R30 K121 [Enum.ScrollingDirection.X]
      327 SETTABLEKS                       R30 R29 K116 ["ScrollingDirection"]
      329 GETIMPORT                        R30 K110 [UDim2.fromScale]
      331 LOADN                            R31 1
      332 LOADN                            R32 0
      333 CALL                             R30 2 1
      334 SETTABLEKS                       R30 R29 K106 ["Size"]
      336 GETIMPORT                        R30 K123 [Enum.AutomaticSize.Y]
      338 SETTABLEKS                       R30 R29 K117 ["AutomaticSize"]
      340 GETIMPORT                        R30 K124 [Enum.AutomaticSize.X]
      342 SETTABLEKS                       R30 R29 K118 ["AutomaticCanvasSize"]
      344 DUPTABLE                         R30 K127 [{"HighlightedCode", "SelectableCodeWrapper"}]
      345 GETUPVAL                         R31 6
      346 GETTABLEKS                       R31 R31 K56 ["createElement"]
      348 GETUPVAL                         R32 10
      349 GETUPVAL                         R33 1
      350 GETTABLEKS                       R33 R33 K128 ["join"]
      352 MOVE                             R34 R5
      353 MOVE                             R35 R7
      354 CALL                             R33 2 -1
      355 CALL                             R31 -1 1
      356 SETTABLEKS                       R31 R30 K125 ["HighlightedCode"]
      358 GETUPVAL                         R32 4
      359 JUMPIFNOT                        R32 ; [+90]
      360 GETUPVAL                         R31 6
      361 GETTABLEKS                       R31 R31 K56 ["createElement"]
      363 GETUPVAL                         R32 8
      364 GETTABLEKS                       R32 R32 K79 ["View"]
      366 DUPTABLE                         R33 K129 [{"tag"}]
      367 GETTABLEKS                       R34 R5 K13 ["tag"]
      369 SETTABLEKS                       R34 R33 K13 ["tag"]
      371 DUPTABLE                         R34 K131 [{"SelectableCode"}]
      372 GETUPVAL                         R35 6
      373 GETTABLEKS                       R35 R35 K56 ["createElement"]
      375 LOADK                            R36 K132 ["TextBox"]
      376 DUPTABLE                         R37 K140 [{["Text"], ["FontFace"], ["TextSize"], ["TextColor3"], ["TextTransparency"], ["BackgroundTransparency"] = 1, ["TextXAlignment"], ["TextYAlignment"], ["TextEditable"] = False, ["ZIndex"], ["Size"], ["AutomaticSize"], ["TextWrapped"] = False, ["ClearTextOnFocus"] = False, ["LineHeight"]}]
      377 GETTABLEKS                       R38 R8 K32 ["Text"]
      379 SETTABLEKS                       R38 R37 K32 ["Text"]
      381 GETUPVAL                         R39 2
      382 CALL                             R39 0 1
      383 JUMPIFNOT                        R39 ; [+5]
      384 GETTABLEKS                       R38 R5 K11 ["fontStyle"]
      386 GETTABLEKS                       R38 R38 K17 ["Font"]
      388 JUMP                             ; [+7]
      389 GETIMPORT                        R38 K27 [Font.fromEnum]
      391 GETTABLEKS                       R39 R5 K11 ["fontStyle"]
      393 GETTABLEKS                       R39 R39 K17 ["Font"]
      395 CALL                             R38 1 1
      396 SETTABLEKS                       R38 R37 K133 ["FontFace"]
      398 GETTABLEKS                       R38 R5 K11 ["fontStyle"]
      400 GETTABLEKS                       R38 R38 K16 ["FontSize"]
      402 SETTABLEKS                       R38 R37 K134 ["TextSize"]
      404 GETTABLEKS                       R38 R8 K33 ["textStyle"]
      406 GETTABLEKS                       R38 R38 K39 ["Color3"]
      408 SETTABLEKS                       R38 R37 K135 ["TextColor3"]
      410 GETTABLEKS                       R38 R8 K33 ["textStyle"]
      412 GETTABLEKS                       R38 R38 K46 ["Transparency"]
      414 SETTABLEKS                       R38 R37 K136 ["TextTransparency"]
      416 GETIMPORT                        R38 K31 [Enum.TextXAlignment.Left]
      418 SETTABLEKS                       R38 R37 K12 ["TextXAlignment"]
      420 GETIMPORT                        R38 K142 [Enum.TextYAlignment.Center]
      422 SETTABLEKS                       R38 R37 K137 ["TextYAlignment"]
      424 GETTABLEKS                       R38 R8 K36 ["ZIndex"]
      426 SETTABLEKS                       R38 R37 K36 ["ZIndex"]
      428 GETIMPORT                        R38 K110 [UDim2.fromScale]
      430 LOADN                            R39 0
      431 LOADN                            R40 0
      432 CALL                             R38 2 1
      433 SETTABLEKS                       R38 R37 K106 ["Size"]
      435 GETIMPORT                        R38 K144 [Enum.AutomaticSize.XY]
      437 SETTABLEKS                       R38 R37 K117 ["AutomaticSize"]
      439 GETTABLEKS                       R38 R1 K8 ["codeStyles"]
      441 GETTABLEKS                       R38 R38 K28 ["lineHeight"]
      443 SETTABLEKS                       R38 R37 K18 ["LineHeight"]
      445 CALL                             R35 2 1
      446 SETTABLEKS                       R35 R34 K130 ["SelectableCode"]
      448 CALL                             R31 3 1
      449 JUMP                             ; [+11]
      450 GETUPVAL                         R31 6
      451 GETTABLEKS                       R31 R31 K56 ["createElement"]
      453 GETUPVAL                         R32 10
      454 GETUPVAL                         R33 1
      455 GETTABLEKS                       R33 R33 K128 ["join"]
      457 MOVE                             R34 R5
      458 MOVE                             R35 R8
      459 CALL                             R33 2 -1
      460 CALL                             R31 -1 1
      461 SETTABLEKS                       R31 R30 K126 ["SelectableCodeWrapper"]
      463 CALL                             R27 3 1
      464 SETTABLEKS                       R27 R26 K111 ["ScrollFrame"]
      466 CALL                             R23 3 1
      467 SETTABLEKS                       R23 R22 K101 ["ScrollFrameWrapper"]
      469 CALL                             R19 3 1
      470 SETTABLEKS                       R19 R18 K69 ["CodeWrapper"]
      472 CALL                             R15 3 -1
      473 RETURN                           R15 -1

PROTO_19:
        0 NEWTABLE                         R2 0 0
        2 LOADNIL                          R3
        3 GETTABLEKS                       R7 R0 K0 ["children"]
        5 LENGTH                           R6 R7
        6 LOADN                            R4 1
        7 LOADN                            R5 -1
        8 FORNPREP                         R4
        9 GETTABLEKS                       R8 R0 K0 ["children"]
       11 GETTABLE                         R7 R8 R6
       12 GETTABLEKS                       R8 R7 K1 ["name"]
       14 JUMPIFNOTEQKS                    R8 K2 ["LIST"] ; [+3]
       16 MOVE                             R3 R7
       17 JUMP                             ; [+188]
       18 JUMPIFNOT                        R3 ; [+108]
       19 GETUPVAL                         R8 0
       20 GETTABLEKS                       R8 R8 K3 ["createElement"]
       22 GETUPVAL                         R9 1
       23 DUPTABLE                         R10 K9 [{["tag"] = "size-full-0 auto-y col", ["BorderSizePixel"] = 0, ["backgroundStyle"]}]
       24 DUPTABLE                         R11 K12 [{["Transparency"] = 1}]
       25 SETTABLEKS                       R11 R10 K8 ["backgroundStyle"]
       27 DUPTABLE                         R11 K15 [{"Item", "List"}]
       28 GETUPVAL                         R13 2
       29 GETTABLEKS                       R13 R13 K16 ["join"]
       31 MOVE                             R14 R7
       32 DUPTABLE                         R15 K18 [{["index"] = 1}]
       33 CALL                             R13 2 1
       34 JUMPIF                           R13 ; [+2]
       35 LOADNIL                          R12
       36 JUMP                             ; [+24]
       37 GETUPVAL                         R15 3
       38 GETTABLEKS                       R15 R15 K19 ["renderers"]
       40 GETTABLEKS                       R16 R13 K1 ["name"]
       42 GETTABLE                         R14 R15 R16
       43 JUMPIF                           R14 ; [+12]
       44 GETIMPORT                        R15 K21 [warn]
       46 LOADK                            R17 K22 ["No renderer found for node: $%*"]
       47 GETTABLEKS                       R19 R13 K1 ["name"]
       49 NAMECALL                         R17 R17 K23 ["format"]
       51 CALL                             R17 2 1
       52 MOVE                             R16 R17
       53 CALL                             R15 1 0
       54 LOADNIL                          R12
       55 JUMP                             ; [+5]
       56 MOVE                             R15 R14
       57 MOVE                             R16 R13
       58 MOVE                             R17 R1
       59 CALL                             R15 2 1
       60 MOVE                             R12 R15
       61 SETTABLEKS                       R12 R11 K13 ["Item"]
       63 GETUPVAL                         R13 2
       64 GETTABLEKS                       R13 R13 K16 ["join"]
       66 MOVE                             R14 R3
       67 DUPTABLE                         R15 K25 [{["index"] = 2}]
       68 CALL                             R13 2 1
       69 JUMPIF                           R13 ; [+2]
       70 LOADNIL                          R12
       71 JUMP                             ; [+24]
       72 GETUPVAL                         R15 3
       73 GETTABLEKS                       R15 R15 K19 ["renderers"]
       75 GETTABLEKS                       R16 R13 K1 ["name"]
       77 GETTABLE                         R14 R15 R16
       78 JUMPIF                           R14 ; [+12]
       79 GETIMPORT                        R15 K21 [warn]
       81 LOADK                            R17 K22 ["No renderer found for node: $%*"]
       82 GETTABLEKS                       R19 R13 K1 ["name"]
       84 NAMECALL                         R17 R17 K23 ["format"]
       86 CALL                             R17 2 1
       87 MOVE                             R16 R17
       88 CALL                             R15 1 0
       89 LOADNIL                          R12
       90 JUMP                             ; [+5]
       91 MOVE                             R15 R14
       92 MOVE                             R16 R13
       93 MOVE                             R17 R1
       94 CALL                             R15 2 1
       95 MOVE                             R12 R15
       96 SETTABLEKS                       R12 R11 K14 ["List"]
       98 CALL                             R8 3 1
       99 LOADN                            R11 1
      100 GETUPVAL                         R13 4
      101 CALL                             R13 0 1
      102 JUMPIFNOT                        R13 ; [+15]
      103 DUPTABLE                         R12 K27 [{"Prefix", "Item"}]
      104 GETTABLEKS                       R14 R7 K28 ["attributes"]
      106 JUMPIFNOT                        R14 ; [+5]
      107 GETTABLEKS                       R13 R7 K28 ["attributes"]
      109 GETTABLEKS                       R13 R13 K29 ["prefix"]
      111 JUMP                             ; [+1]
      112 LOADNIL                          R13
      113 SETTABLEKS                       R13 R12 K26 ["Prefix"]
      115 SETTABLEKS                       R8 R12 K13 ["Item"]
      117 JUMP                             ; [+1]
      118 MOVE                             R12 R8
      119 FASTCALL3                        TABLE_INSERT R2 R11 R12
      121 MOVE                             R10 R2
      122 GETIMPORT                        R9 K32 [table.insert]
      124 CALL                             R9 3 0
      125 LOADNIL                          R3
      126 JUMP                             ; [+79]
      127 LOADN                            R10 1
      128 GETUPVAL                         R12 4
      129 CALL                             R12 0 1
      130 JUMPIFNOT                        R12 ; [+42]
      131 DUPTABLE                         R11 K27 [{"Prefix", "Item"}]
      132 GETTABLEKS                       R13 R7 K28 ["attributes"]
      134 JUMPIFNOT                        R13 ; [+5]
      135 GETTABLEKS                       R12 R7 K28 ["attributes"]
      137 GETTABLEKS                       R12 R12 K29 ["prefix"]
      139 JUMP                             ; [+1]
      140 LOADNIL                          R12
      141 SETTABLEKS                       R12 R11 K26 ["Prefix"]
      143 JUMPIF                           R7 ; [+2]
      144 LOADNIL                          R12
      145 JUMP                             ; [+24]
      146 GETUPVAL                         R14 3
      147 GETTABLEKS                       R14 R14 K19 ["renderers"]
      149 GETTABLEKS                       R15 R7 K1 ["name"]
      151 GETTABLE                         R13 R14 R15
      152 JUMPIF                           R13 ; [+12]
      153 GETIMPORT                        R14 K21 [warn]
      155 LOADK                            R16 K22 ["No renderer found for node: $%*"]
      156 GETTABLEKS                       R18 R7 K1 ["name"]
      158 NAMECALL                         R16 R16 K23 ["format"]
      160 CALL                             R16 2 1
      161 MOVE                             R15 R16
      162 CALL                             R14 1 0
      163 LOADNIL                          R12
      164 JUMP                             ; [+5]
      165 MOVE                             R14 R13
      166 MOVE                             R15 R7
      167 MOVE                             R16 R1
      168 CALL                             R14 2 1
      169 MOVE                             R12 R14
      170 SETTABLEKS                       R12 R11 K13 ["Item"]
      172 JUMP                             ; [+27]
      173 JUMPIF                           R7 ; [+2]
      174 LOADNIL                          R11
      175 JUMP                             ; [+24]
      176 GETUPVAL                         R13 3
      177 GETTABLEKS                       R13 R13 K19 ["renderers"]
      179 GETTABLEKS                       R14 R7 K1 ["name"]
      181 GETTABLE                         R12 R13 R14
      182 JUMPIF                           R12 ; [+12]
      183 GETIMPORT                        R13 K21 [warn]
      185 LOADK                            R15 K22 ["No renderer found for node: $%*"]
      186 GETTABLEKS                       R17 R7 K1 ["name"]
      188 NAMECALL                         R15 R15 K23 ["format"]
      190 CALL                             R15 2 1
      191 MOVE                             R14 R15
      192 CALL                             R13 1 0
      193 LOADNIL                          R11
      194 JUMP                             ; [+5]
      195 MOVE                             R13 R12
      196 MOVE                             R14 R7
      197 MOVE                             R15 R1
      198 CALL                             R13 2 1
      199 MOVE                             R11 R13
      200 FASTCALL3                        TABLE_INSERT R2 R10 R11
      202 MOVE                             R9 R2
      203 GETIMPORT                        R8 K32 [table.insert]
      205 CALL                             R8 3 0
      206 FORNLOOP                         R4
      207 GETUPVAL                         R4 0
      208 GETTABLEKS                       R4 R4 K3 ["createElement"]
      210 GETUPVAL                         R5 5
      211 DUPTABLE                         R6 K40 [{["key"], ["LayoutOrder"], ["Items"], ["TextWrapped"] = True, ["ListStyle"], ["tag"] = "size-full-0 auto-y"}]
      212 GETTABLEKS                       R8 R0 K17 ["index"]
      214 FASTCALL1                        TOSTRING R8 ; [+2]
      215 GETIMPORT                        R7 K42 [tostring]
      217 CALL                             R7 1 1
      218 SETTABLEKS                       R7 R6 K33 ["key"]
      220 GETTABLEKS                       R7 R0 K17 ["index"]
      222 SETTABLEKS                       R7 R6 K34 ["LayoutOrder"]
      224 SETTABLEKS                       R2 R6 K35 ["Items"]
      226 GETUPVAL                         R8 4
      227 CALL                             R8 0 1
      228 JUMPIFNOT                        R8 ; [+55]
      229 DUPTABLE                         R7 K47 [{"Font", "TextColor", "TextSize", "LineHeight"}]
      230 GETTABLEKS                       R9 R1 K48 ["textStyles"]
      232 GETUPVAL                         R10 6
      233 GETUPVAL                         R12 4
      234 CALL                             R12 0 1
      235 FASTCALL2K                       ASSERT R12 K49 ; [+4]
      237 LOADK                            R13 K49 ["getFontFace is disabled"]
      238 GETIMPORT                        R11 K51 [assert]
      240 CALL                             R11 2 0
      241 GETTABLEKS                       R11 R9 K52 ["fontFace"]
      243 JUMPIFNOT                        R11 ; [+3]
      244 GETTABLEKS                       R8 R9 K52 ["fontFace"]
      246 JUMP                             ; [+15]
      247 GETTABLEKS                       R11 R9 K53 ["font"]
      249 JUMPIFNOT                        R11 ; [+7]
      250 GETIMPORT                        R11 K55 [Font.fromEnum]
      252 GETTABLEKS                       R12 R9 K53 ["font"]
      254 CALL                             R11 1 1
      255 MOVE                             R8 R11
      256 JUMP                             ; [+5]
      257 GETIMPORT                        R11 K55 [Font.fromEnum]
      259 MOVE                             R12 R10
      260 CALL                             R11 1 1
      261 MOVE                             R8 R11
      262 SETTABLEKS                       R8 R7 K43 ["Font"]
      264 GETUPVAL                         R8 7
      265 GETTABLEKS                       R8 R8 K56 ["getTokenColor"]
      267 LOADK                            R9 K57 ["iden"]
      268 CALL                             R8 1 1
      269 SETTABLEKS                       R8 R7 K44 ["TextColor"]
      271 GETTABLEKS                       R8 R1 K48 ["textStyles"]
      273 GETTABLEKS                       R8 R8 K58 ["textSize"]
      275 SETTABLEKS                       R8 R7 K45 ["TextSize"]
      277 GETTABLEKS                       R8 R1 K48 ["textStyles"]
      279 GETTABLEKS                       R8 R8 K58 ["textSize"]
      281 SETTABLEKS                       R8 R7 K46 ["LineHeight"]
      283 JUMP                             ; [+1]
      284 LOADNIL                          R7
      285 SETTABLEKS                       R7 R6 K38 ["ListStyle"]
      287 DUPTABLE                         R7 K60 [{"UIPadding"}]
      288 GETUPVAL                         R9 4
      289 CALL                             R9 0 1
      290 JUMPIFNOT                        R9 ; [+15]
      291 GETUPVAL                         R10 4
      292 CALL                             R10 0 1
      293 FASTCALL2K                       ASSERT R10 K61 ; [+4]
      295 LOADK                            R11 K61 ["shouldUseTopPadding is disabled"]
      296 GETIMPORT                        R9 K51 [assert]
      298 CALL                             R9 2 0
      299 GETTABLEKS                       R9 R0 K62 ["offset"]
      301 JUMPIFNOTEQKN                    R9 K7 [0] ; [+2]
      303 LOADB                            R8 0 +1
      304 LOADB                            R8 1
      305 JUMPIFNOT                        R8 ; [+18]
      306 GETUPVAL                         R8 0
      307 GETTABLEKS                       R8 R8 K3 ["createElement"]
      309 LOADK                            R9 K59 ["UIPadding"]
      310 DUPTABLE                         R10 K64 [{"PaddingTop"}]
      311 GETIMPORT                        R11 K67 [UDim.new]
      313 LOADN                            R12 0
      314 GETUPVAL                         R14 4
      315 CALL                             R14 0 1
      316 JUMPIFNOT                        R14 ; [+2]
      317 LOADN                            R13 10
      318 JUMP                             ; [+1]
      319 LOADN                            R13 30
      320 CALL                             R11 2 1
      321 SETTABLEKS                       R11 R10 K63 ["PaddingTop"]
      323 CALL                             R8 2 1
      324 SETTABLEKS                       R8 R7 K59 ["UIPadding"]
      326 CALL                             R4 3 -1
      327 RETURN                           R4 -1

PROTO_20:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K5 [{["key"], ["LayoutOrder"], ["tag"] = "size-full-0 auto-y"}]
        5 GETTABLEKS                       R6 R0 K6 ["index"]
        7 FASTCALL1                        TOSTRING R6 ; [+2]
        8 GETIMPORT                        R5 K8 [tostring]
       10 CALL                             R5 1 1
       11 SETTABLEKS                       R5 R4 K1 ["key"]
       13 GETTABLEKS                       R5 R0 K6 ["index"]
       15 SETTABLEKS                       R5 R4 K2 ["LayoutOrder"]
       17 DUPTABLE                         R5 K10 [{"InlineLayout"}]
       18 GETUPVAL                         R6 2
       19 GETTABLEKS                       R7 R0 K11 ["children"]
       21 MOVE                             R8 R1
       22 CALL                             R6 2 1
       23 SETTABLEKS                       R6 R5 K9 ["InlineLayout"]
       25 CALL                             R2 3 -1
       26 RETURN                           R2 -1

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
       23 JUMP                             ; [+37]
       24 JUMPIFEQKS                       R2 K5 ["ITALIC"] ; [+3]
       26 JUMPIFNOTEQKS                    R2 K6 ["ITALIC_2"] ; [+5]
       28 LOADB                            R4 1
       29 SETTABLEKS                       R4 R3 K7 ["italic"]
       31 JUMP                             ; [+29]
       32 JUMPIFNOTEQKS                    R2 K8 ["STRIKE"] ; [+5]
       34 LOADB                            R4 1
       35 SETTABLEKS                       R4 R3 K9 ["strike"]
       37 JUMP                             ; [+23]
       38 JUMPIFNOTEQKS                    R2 K10 ["INLINE_CODE"] ; [+22]
       40 GETTABLEKS                       R3 R1 K11 ["codeStyles"]
       42 GETUPVAL                         R4 0
       43 JUMPIFNOT                        R4 ; [+7]
       44 GETUPVAL                         R4 1
       45 GETTABLEKS                       R4 R4 K12 ["joinDeep"]
       47 MOVE                             R5 R3
       48 DUPTABLE                         R6 K15 [{["selectable"] = True}]
       49 CALL                             R4 2 1
       50 MOVE                             R3 R4
       51 GETUPVAL                         R4 2
       52 CALL                             R4 0 1
       53 JUMPIFNOT                        R4 ; [+7]
       54 GETUPVAL                         R4 1
       55 GETTABLEKS                       R4 R4 K12 ["joinDeep"]
       57 MOVE                             R5 R3
       58 DUPTABLE                         R6 K18 [{["viewTags"] = "bg-shift-300 radius-small"}]
       59 CALL                             R4 2 1
       60 MOVE                             R3 R4
       61 GETTABLEKS                       R4 R1 K19 ["processChildren"]
       63 GETTABLEKS                       R5 R0 K20 ["children"]
       65 GETUPVAL                         R6 3
       66 MOVE                             R7 R1
       67 DUPTABLE                         R8 K22 [{"textStyles"}]
       68 SETTABLEKS                       R3 R8 K21 ["textStyles"]
       70 CALL                             R6 2 -1
       71 CALL                             R4 -1 -1
       72 RETURN                           R4 -1

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
        3 JUMPIFNOT                        R3 ; [+7]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["joinDeep"]
        7 MOVE                             R4 R2
        8 DUPTABLE                         R5 K4 [{["selectable"] = True}]
        9 CALL                             R3 2 1
       10 MOVE                             R2 R3
       11 GETUPVAL                         R3 2
       12 MOVE                             R4 R0
       13 GETUPVAL                         R5 3
       14 MOVE                             R6 R1
       15 DUPTABLE                         R7 K6 [{"textStyles"}]
       16 SETTABLEKS                       R2 R7 K5 ["textStyles"]
       18 CALL                             R5 2 -1
       19 CALL                             R3 -1 -1
       20 RETURN                           R3 -1

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
        2 JUMPIFNOT                        R1 ; [+60]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["createElement"]
        6 GETUPVAL                         R2 2
        7 DUPTABLE                         R3 K5 [{["key"], ["tag"] = "size-full-0 auto-y", ["LayoutOrder"]}]
        8 GETTABLEKS                       R5 R0 K6 ["index"]
       10 FASTCALL1                        TOSTRING R5 ; [+2]
       11 GETIMPORT                        R4 K8 [tostring]
       13 CALL                             R4 1 1
       14 SETTABLEKS                       R4 R3 K1 ["key"]
       16 GETTABLEKS                       R4 R0 K6 ["index"]
       18 SETTABLEKS                       R4 R3 K4 ["LayoutOrder"]
       20 DUPTABLE                         R4 K11 [{"UIPadding", "Divider"}]
       21 GETUPVAL                         R6 0
       22 CALL                             R6 0 1
       23 JUMPIFNOT                        R6 ; [+15]
       24 GETUPVAL                         R7 0
       25 CALL                             R7 0 1
       26 FASTCALL2K                       ASSERT R7 K12 ; [+4]
       28 LOADK                            R8 K12 ["shouldUseTopPadding is disabled"]
       29 GETIMPORT                        R6 K14 [assert]
       31 CALL                             R6 2 0
       32 GETTABLEKS                       R6 R0 K15 ["offset"]
       34 JUMPIFNOTEQKN                    R6 K16 [0] ; [+2]
       36 LOADB                            R5 0 +1
       37 LOADB                            R5 1
       38 JUMPIFNOT                        R5 ; [+13]
       39 GETUPVAL                         R5 1
       40 GETTABLEKS                       R5 R5 K0 ["createElement"]
       42 LOADK                            R6 K9 ["UIPadding"]
       43 DUPTABLE                         R7 K18 [{"PaddingTop"}]
       44 GETIMPORT                        R8 K21 [UDim.new]
       46 LOADN                            R9 0
       47 LOADN                            R10 10
       48 CALL                             R8 2 1
       49 SETTABLEKS                       R8 R7 K17 ["PaddingTop"]
       51 CALL                             R5 2 1
       52 SETTABLEKS                       R5 R4 K9 ["UIPadding"]
       54 GETUPVAL                         R5 1
       55 GETTABLEKS                       R5 R5 K0 ["createElement"]
       57 GETUPVAL                         R6 3
       58 CALL                             R5 1 1
       59 SETTABLEKS                       R5 R4 K10 ["Divider"]
       61 CALL                             R1 3 -1
       62 RETURN                           R1 -1
       63 GETUPVAL                         R1 1
       64 GETTABLEKS                       R1 R1 K0 ["createElement"]
       66 GETUPVAL                         R2 3
       67 DUPTABLE                         R3 K22 [{"key", "LayoutOrder"}]
       68 GETTABLEKS                       R5 R0 K6 ["index"]
       70 FASTCALL1                        TOSTRING R5 ; [+2]
       71 GETIMPORT                        R4 K8 [tostring]
       73 CALL                             R4 1 1
       74 SETTABLEKS                       R4 R3 K1 ["key"]
       76 GETTABLEKS                       R4 R0 K6 ["index"]
       78 SETTABLEKS                       R4 R3 K4 ["LayoutOrder"]
       80 CALL                             R1 2 -1
       81 RETURN                           R1 -1

PROTO_28:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K6 [{["key"], ["LayoutOrder"], ["tag"] = "size-full-0 auto-y padding-small", ["backgroundStyle"]}]
        5 GETTABLEKS                       R6 R0 K7 ["index"]
        7 FASTCALL1                        TOSTRING R6 ; [+2]
        8 GETIMPORT                        R5 K9 [tostring]
       10 CALL                             R5 1 1
       11 SETTABLEKS                       R5 R4 K1 ["key"]
       13 GETTABLEKS                       R5 R0 K7 ["index"]
       15 SETTABLEKS                       R5 R4 K2 ["LayoutOrder"]
       17 DUPTABLE                         R5 K12 [{["Transparency"] = 1}]
       18 SETTABLEKS                       R5 R4 K5 ["backgroundStyle"]
       20 DUPTABLE                         R5 K14 [{"InlineLayoutWrapper"}]
       21 GETUPVAL                         R6 0
       22 GETTABLEKS                       R6 R6 K0 ["createElement"]
       24 GETUPVAL                         R7 1
       25 DUPTABLE                         R8 K16 [{["backgroundStyle"], ["tag"] = "size-full-0 auto-y"}]
       26 DUPTABLE                         R9 K19 [{["Transparency"] = 0.9, ["Color3"]}]
       27 GETIMPORT                        R10 K21 [Color3.fromRGB]
       29 LOADN                            R11 163
       30 LOADN                            R12 162
       31 LOADN                            R13 165
       32 CALL                             R10 3 1
       33 SETTABLEKS                       R10 R9 K18 ["Color3"]
       35 SETTABLEKS                       R9 R8 K5 ["backgroundStyle"]
       37 DUPTABLE                         R9 K23 [{"InlineLayout"}]
       38 GETUPVAL                         R10 2
       39 GETTABLEKS                       R11 R0 K24 ["children"]
       41 GETUPVAL                         R12 3
       42 MOVE                             R13 R1
       43 DUPTABLE                         R14 K26 [{"textStyles"}]
       44 DUPTABLE                         R15 K31 [{["italic"] = True, ["transparency"] = 0.5}]
       45 SETTABLEKS                       R15 R14 K25 ["textStyles"]
       47 CALL                             R12 2 -1
       48 CALL                             R10 -1 1
       49 SETTABLEKS                       R10 R9 K22 ["InlineLayout"]
       51 CALL                             R6 3 1
       52 SETTABLEKS                       R6 R5 K13 ["InlineLayoutWrapper"]
       54 CALL                             R2 3 -1
       55 RETURN                           R2 -1

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
      206 JUMPIFNOTEQKS                    R2 K47 ["Button"] ; [+56]
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
      231 DUPTABLE                         R4 K55 [{["key"], ["LayoutOrder"], [3], ["icon"], ["onActivated"], ["tag"] = "auto-xy"}]
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
      261 CALL                             R2 2 -1
      262 RETURN                           R2 -1
      263 GETTABLEKS                       R2 R0 K0 ["text"]
      265 JUMPIFNOTEQKS                    R2 K56 ["font"] ; [+30]
      267 GETTABLEKS                       R3 R0 K4 ["attributes"]
      269 JUMPIFNOT                        R3 ; [+10]
      270 GETTABLEKS                       R3 R0 K4 ["attributes"]
      272 GETTABLEKS                       R3 R3 K57 ["color"]
      274 JUMPIFNOT                        R3 ; [+5]
      275 GETTABLEKS                       R2 R0 K4 ["attributes"]
      277 GETTABLEKS                       R2 R2 K57 ["color"]
      279 JUMP                             ; [+1]
      280 LOADNIL                          R2
      281 GETTABLEKS                       R3 R1 K58 ["processChildren"]
      283 GETTABLEKS                       R4 R0 K59 ["children"]
      285 GETUPVAL                         R5 4
      286 MOVE                             R6 R1
      287 DUPTABLE                         R7 K61 [{"textStyles"}]
      288 DUPTABLE                         R8 K62 [{"color"}]
      289 SETTABLEKS                       R2 R8 K57 ["color"]
      291 SETTABLEKS                       R8 R7 K60 ["textStyles"]
      293 CALL                             R5 2 -1
      294 CALL                             R3 -1 -1
      295 RETURN                           R3 -1
      296 LOADNIL                          R2
      297 RETURN                           R2 1

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
       16 DUPTABLE                         R4 K16 [{["textStyles"], ["codeStyles"], ["headerStyles"], ["imageStyles"], ["isInline"] = False, ["linkCallback"], ["colorScheme"], ["processChildren"]}]
       17 DUPTABLE                         R5 K20 [{["textSize"] = 18, ["font"]}]
       18 GETUPVAL                         R6 2
       19 SETTABLEKS                       R6 R5 K19 ["font"]
       21 SETTABLEKS                       R5 R4 K7 ["textStyles"]
       23 DUPTABLE                         R5 K23 [{["textSize"] = 18, ["font"], ["lineHeight"] = 1.111}]
       24 GETUPVAL                         R6 3
       25 SETTABLEKS                       R6 R5 K19 ["font"]
       27 SETTABLEKS                       R5 R4 K8 ["codeStyles"]
       29 NEWTABLE                         R5 0 4
       31 DUPTABLE                         R6 K25 [{["textSize"] = 54, ["font"]}]
       32 GETUPVAL                         R7 2
       33 SETTABLEKS                       R7 R6 K19 ["font"]
       35 SETTABLEN                        R6 R5 1
       36 DUPTABLE                         R6 K27 [{["textSize"] = 45, ["font"]}]
       37 GETUPVAL                         R7 2
       38 SETTABLEKS                       R7 R6 K19 ["font"]
       40 SETTABLEN                        R6 R5 2
       41 DUPTABLE                         R6 K29 [{["textSize"] = 36, ["font"]}]
       42 GETUPVAL                         R7 2
       43 SETTABLEKS                       R7 R6 K19 ["font"]
       45 SETTABLEN                        R6 R5 3
       46 DUPTABLE                         R6 K31 [{["textSize"] = 27, ["font"]}]
       47 GETUPVAL                         R7 2
       48 SETTABLEKS                       R7 R6 K19 ["font"]
       50 SETTABLEN                        R6 R5 4
       51 SETTABLEKS                       R5 R4 K9 ["headerStyles"]
       53 DUPTABLE                         R5 K33 [{"size"}]
       54 GETUPVAL                         R6 4
       55 SETTABLEKS                       R6 R5 K32 ["size"]
       57 SETTABLEKS                       R5 R4 K10 ["imageStyles"]
       59 GETTABLEKS                       R5 R1 K13 ["linkCallback"]
       61 JUMPIF                           R5 ; [+1]
       62 GETUPVAL                         R5 5
       63 SETTABLEKS                       R5 R4 K13 ["linkCallback"]
       65 GETTABLEKS                       R5 R1 K14 ["colorScheme"]
       67 SETTABLEKS                       R5 R4 K14 ["colorScheme"]
       69 GETUPVAL                         R5 6
       70 SETTABLEKS                       R5 R4 K15 ["processChildren"]
       72 MOVE                             R5 R2
       73 CALL                             R3 2 1
       74 GETIMPORT                        R4 K35 [table.freeze]
       76 MOVE                             R5 R3
       77 CALL                             R4 1 0
       78 JUMPIF                           R0 ; [+2]
       79 LOADNIL                          R4
       80 RETURN                           R4 1
       81 GETUPVAL                         R6 0
       82 GETTABLEKS                       R6 R6 K1 ["renderers"]
       84 GETTABLEKS                       R7 R0 K36 ["name"]
       86 GETTABLE                         R5 R6 R7
       87 JUMPIF                           R5 ; [+12]
       88 GETIMPORT                        R6 K38 [warn]
       90 LOADK                            R8 K39 ["No renderer found for node: $%*"]
       91 GETTABLEKS                       R10 R0 K36 ["name"]
       93 NAMECALL                         R8 R8 K40 ["format"]
       95 CALL                             R8 2 1
       96 MOVE                             R7 R8
       97 CALL                             R6 1 0
       98 LOADNIL                          R4
       99 RETURN                           R4 1
      100 MOVE                             R6 R5
      101 MOVE                             R7 R0
      102 MOVE                             R8 R3
      103 CALL                             R6 2 1
      104 MOVE                             R4 R6
      105 RETURN                           R4 1

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
