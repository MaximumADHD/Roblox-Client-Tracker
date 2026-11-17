PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKN                    R0 K0 [1] ; [+19]
        3 DUPTABLE                         R0 K2 [{"AttachmentTitle"}]
        4 GETUPVAL                         R1 1
        5 LOADK                            R3 K3 ["Image"]
        6 LOADK                            R4 K4 ["ViewImage"]
        7 DUPTABLE                         R5 K6 [{"count"}]
        8 GETUPVAL                         R7 0
        9 FASTCALL1                        TOSTRING R7 ; [+2]
       10 GETIMPORT                        R6 K8 [tostring]
       12 CALL                             R6 1 1
       13 SETTABLEKS                       R6 R5 K5 ["count"]
       15 NAMECALL                         R1 R1 K9 ["getText"]
       17 CALL                             R1 4 1
       18 SETTABLEKS                       R1 R0 K1 ["AttachmentTitle"]
       20 RETURN                           R0 1
       21 DUPTABLE                         R0 K2 [{"AttachmentTitle"}]
       22 GETUPVAL                         R1 1
       23 LOADK                            R3 K3 ["Image"]
       24 LOADK                            R4 K10 ["ViewImages"]
       25 DUPTABLE                         R5 K6 [{"count"}]
       26 GETUPVAL                         R7 0
       27 FASTCALL1                        TOSTRING R7 ; [+2]
       28 GETIMPORT                        R6 K8 [tostring]
       30 CALL                             R6 1 1
       31 SETTABLEKS                       R6 R5 K5 ["count"]
       33 NAMECALL                         R1 R1 K9 ["getText"]
       35 CALL                             R1 4 1
       36 SETTABLEKS                       R1 R0 K1 ["AttachmentTitle"]
       38 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["imageContents"]
        2 LENGTH                           R2 R1
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K1 ["useMemo"]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          VAL R2
        8 CAPTURE                          UPVAL U1
        9 NEWTABLE                         R5 0 2
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K2 ["locale"]
       14 MOVE                             R7 R2
       15 SETLIST                          R5 R6 2 [1]
       17 CALL                             R3 2 1
       18 GETUPVAL                         R4 2
       19 CALL                             R4 0 1
       20 NEWTABLE                         R5 0 0
       22 MOVE                             R6 R1
       23 LOADNIL                          R7
       24 LOADNIL                          R8
       25 FORGPREP                         R6
       26 LOADK                            R11 K3 ["Image_%*"]
       27 MOVE                             R13 R9
       28 NAMECALL                         R11 R11 K4 ["format"]
       30 CALL                             R11 2 1
       31 GETUPVAL                         R12 3
       32 GETUPVAL                         R13 4
       33 DUPTABLE                         R14 K9 [{["imageContent"], ["style"] = "attachment", ["LayoutOrder"]}]
       34 SETTABLEKS                       R10 R14 K5 ["imageContent"]
       36 SETTABLEKS                       R9 R14 K8 ["LayoutOrder"]
       38 CALL                             R12 2 1
       39 SETTABLE                         R12 R5 R11
       40 FORGLOOP                         R6 2 ; [-15]
       42 GETUPVAL                         R6 3
       43 LOADK                            R7 K10 ["UIListLayout"]
       44 DUPTABLE                         R8 K14 [{"FillDirection", "SortOrder", "Padding"}]
       45 GETIMPORT                        R9 K17 [Enum.FillDirection.Horizontal]
       47 SETTABLEKS                       R9 R8 K11 ["FillDirection"]
       49 GETIMPORT                        R9 K18 [Enum.SortOrder.LayoutOrder]
       51 SETTABLEKS                       R9 R8 K12 ["SortOrder"]
       53 GETIMPORT                        R9 K21 [UDim.new]
       55 LOADN                            R10 0
       56 LOADN                            R11 8
       57 CALL                             R9 2 1
       58 SETTABLEKS                       R9 R8 K13 ["Padding"]
       60 CALL                             R6 2 1
       61 SETTABLEKS                       R6 R5 K10 ["UIListLayout"]
       63 GETUPVAL                         R6 3
       64 GETUPVAL                         R7 5
       65 GETTABLEKS                       R7 R7 K22 ["Root"]
       67 DUPTABLE                         R8 K28 [{["tag"] = "col gap-small size-0-0 auto-xy", ["LayoutOrder"], ["expanded"], ["contentId"], ["editThisContent"]}]
       68 GETTABLEKS                       R9 R0 K8 ["LayoutOrder"]
       70 SETTABLEKS                       R9 R8 K8 ["LayoutOrder"]
       72 GETTABLEKS                       R9 R0 K25 ["expanded"]
       74 SETTABLEKS                       R9 R8 K25 ["expanded"]
       76 GETTABLEKS                       R9 R0 K26 ["contentId"]
       78 SETTABLEKS                       R9 R8 K26 ["contentId"]
       80 GETTABLEKS                       R9 R0 K27 ["editThisContent"]
       82 SETTABLEKS                       R9 R8 K27 ["editThisContent"]
       84 DUPTABLE                         R9 K31 [{"Header", "Content"}]
       85 GETUPVAL                         R10 3
       86 GETUPVAL                         R11 5
       87 GETTABLEKS                       R11 R11 K29 ["Header"]
       89 DUPTABLE                         R12 K33 [{"LayoutOrder", "testId"}]
       90 MOVE                             R13 R4
       91 CALL                             R13 0 1
       92 SETTABLEKS                       R13 R12 K8 ["LayoutOrder"]
       94 GETUPVAL                         R13 6
       95 GETTABLEKS                       R13 R13 K34 ["ImageContent"]
       97 GETTABLEKS                       R13 R13 K35 ["Expand"]
       99 SETTABLEKS                       R13 R12 K32 ["testId"]
      101 DUPTABLE                         R13 K37 [{"Text"}]
      102 GETUPVAL                         R14 3
      103 GETUPVAL                         R15 7
      104 DUPTABLE                         R16 K39 [{["tag"] = "size-0-full auto-x padding-right-xsmall text-label-small content-default", ["Text"], ["LayoutOrder"]}]
      105 GETTABLEKS                       R17 R3 K40 ["AttachmentTitle"]
      107 SETTABLEKS                       R17 R16 K36 ["Text"]
      109 MOVE                             R17 R4
      110 CALL                             R17 0 1
      111 SETTABLEKS                       R17 R16 K8 ["LayoutOrder"]
      113 CALL                             R14 2 1
      114 SETTABLEKS                       R14 R13 K36 ["Text"]
      116 CALL                             R10 3 1
      117 SETTABLEKS                       R10 R9 K29 ["Header"]
      119 GETUPVAL                         R10 3
      120 GETUPVAL                         R11 5
      121 GETTABLEKS                       R11 R11 K30 ["Content"]
      123 DUPTABLE                         R12 K44 [{["tag"] = "size-0-0 auto-xy", ["LayoutOrder"], ["UseVisible"] = True}]
      124 MOVE                             R13 R4
      125 CALL                             R13 0 1
      126 SETTABLEKS                       R13 R12 K8 ["LayoutOrder"]
      128 DUPTABLE                         R13 K46 [{"Images"}]
      129 GETUPVAL                         R14 3
      130 GETUPVAL                         R15 8
      131 DUPTABLE                         R16 K47 [{["tag"] = "size-0-0 auto-xy"}]
      132 MOVE                             R17 R5
      133 CALL                             R14 3 1
      134 SETTABLEKS                       R14 R13 K45 ["Images"]
      136 CALL                             R10 3 1
      137 SETTABLEKS                       R10 R9 K30 ["Content"]
      139 CALL                             R6 3 -1
      140 RETURN                           R6 -1

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 RETURN                           R1 1

PROTO_3:
        0 LOADNIL                          R2
        1 GETTABLEKS                       R3 R1 K0 ["imageContents"]
        3 JUMPIFNOT                        R3 ; [+34]
        4 GETIMPORT                        R3 K3 [table.create]
        6 GETTABLEKS                       R5 R1 K0 ["imageContents"]
        8 LENGTH                           R4 R5
        9 CALL                             R3 1 1
       10 MOVE                             R2 R3
       11 GETTABLEKS                       R3 R1 K0 ["imageContents"]
       13 LOADNIL                          R4
       14 LOADNIL                          R5
       15 FORGPREP                         R3
       16 DUPTABLE                         R10 K7 [{"type", "data", "mimeType"}]
       17 GETTABLEKS                       R11 R7 K4 ["type"]
       19 SETTABLEKS                       R11 R10 K4 ["type"]
       21 GETTABLEKS                       R11 R7 K5 ["data"]
       23 SETTABLEKS                       R11 R10 K5 ["data"]
       25 GETTABLEKS                       R11 R7 K6 ["mimeType"]
       27 SETTABLEKS                       R11 R10 K6 ["mimeType"]
       29 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       31 MOVE                             R9 R2
       32 GETIMPORT                        R8 K9 [table.insert]
       34 CALL                             R8 2 0
       35 FORGLOOP                         R3 2 ; [-20]
       37 JUMP                             ; [+2]
       38 NEWTABLE                         R2 0 0
       40 DUPTABLE                         R3 K13 [{["type"] = "Image", [2], ["expanded"] = False}]
       41 SETTABLEKS                       R2 R3 K0 ["imageContents"]
       43 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Accordion"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Components"]
       25 GETTABLEKS                       R4 R4 K10 ["ImageContent"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Parent"]
       32 GETTABLEKS                       R5 R5 K11 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K8 ["Parent"]
       39 GETTABLEKS                       R6 R6 K12 ["ReactUtils"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K13 ["Util"]
       46 GETTABLEKS                       R7 R7 K14 ["Serializer"]
       48 GETTABLEKS                       R7 R7 K15 ["SerializerTypes"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K13 ["Util"]
       55 GETTABLEKS                       R8 R8 K16 ["TestIds"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K17 ["Resources"]
       62 GETTABLEKS                       R9 R9 K18 ["Localization"]
       64 GETTABLEKS                       R9 R9 K19 ["Translator"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R10 R0 K20 ["Types"]
       71 CALL                             R9 1 1
       72 GETTABLEKS                       R10 R2 K21 ["Text"]
       74 GETTABLEKS                       R11 R2 K22 ["View"]
       76 GETTABLEKS                       R12 R5 K23 ["createNextOrder"]
       78 GETTABLEKS                       R13 R4 K24 ["createElement"]
       80 DUPCLOSURE                       R14 K25 [PROTO_1]
       81 CAPTURE                          VAL R4
       82 CAPTURE                          VAL R8
       83 CAPTURE                          VAL R12
       84 CAPTURE                          VAL R13
       85 CAPTURE                          VAL R3
       86 CAPTURE                          VAL R1
       87 CAPTURE                          VAL R7
       88 CAPTURE                          VAL R10
       89 CAPTURE                          VAL R11
       90 DUPTABLE                         R15 K28 [{"toMeta", "fromMeta"}]
       91 DUPCLOSURE                       R16 K29 [PROTO_2]
       92 SETTABLEKS                       R16 R15 K26 ["toMeta"]
       94 DUPCLOSURE                       R16 K30 [PROTO_3]
       95 SETTABLEKS                       R16 R15 K27 ["fromMeta"]
       97 DUPTABLE                         R16 K35 [{["Type"] = "Image", ["ContentWidget"], ["Serialization"]}]
       98 GETTABLEKS                       R17 R4 K36 ["memo"]
      100 MOVE                             R18 R14
      101 CALL                             R17 1 1
      102 SETTABLEKS                       R17 R16 K33 ["ContentWidget"]
      104 SETTABLEKS                       R15 R16 K34 ["Serialization"]
      106 RETURN                           R16 1
