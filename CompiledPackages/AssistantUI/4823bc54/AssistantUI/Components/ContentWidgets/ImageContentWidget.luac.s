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
       26 LOADK                            R12 K3 ["Image_%*"]
       27 MOVE                             R14 R9
       28 NAMECALL                         R12 R12 K4 ["format"]
       30 CALL                             R12 2 1
       31 MOVE                             R11 R12
       32 GETUPVAL                         R12 3
       33 GETUPVAL                         R13 4
       34 DUPTABLE                         R14 K9 [{["imageContent"], ["style"] = "attachment", ["LayoutOrder"]}]
       35 SETTABLEKS                       R10 R14 K5 ["imageContent"]
       37 SETTABLEKS                       R9 R14 K8 ["LayoutOrder"]
       39 CALL                             R12 2 1
       40 SETTABLE                         R12 R5 R11
       41 FORGLOOP                         R6 2 ; [-16]
       43 GETUPVAL                         R6 3
       44 LOADK                            R7 K10 ["UIListLayout"]
       45 DUPTABLE                         R8 K14 [{"FillDirection", "SortOrder", "Padding"}]
       46 GETIMPORT                        R9 K17 [Enum.FillDirection.Horizontal]
       48 SETTABLEKS                       R9 R8 K11 ["FillDirection"]
       50 GETIMPORT                        R9 K18 [Enum.SortOrder.LayoutOrder]
       52 SETTABLEKS                       R9 R8 K12 ["SortOrder"]
       54 GETIMPORT                        R9 K21 [UDim.new]
       56 LOADN                            R10 0
       57 LOADN                            R11 8
       58 CALL                             R9 2 1
       59 SETTABLEKS                       R9 R8 K13 ["Padding"]
       61 CALL                             R6 2 1
       62 SETTABLEKS                       R6 R5 K10 ["UIListLayout"]
       64 GETUPVAL                         R6 3
       65 GETUPVAL                         R7 5
       66 GETTABLEKS                       R7 R7 K22 ["Root"]
       68 DUPTABLE                         R8 K28 [{["tag"] = "col gap-small size-0-0 auto-xy", ["LayoutOrder"], ["expanded"], ["contentId"], ["editThisContent"]}]
       69 GETTABLEKS                       R9 R0 K8 ["LayoutOrder"]
       71 SETTABLEKS                       R9 R8 K8 ["LayoutOrder"]
       73 GETTABLEKS                       R9 R0 K25 ["expanded"]
       75 SETTABLEKS                       R9 R8 K25 ["expanded"]
       77 GETTABLEKS                       R9 R0 K26 ["contentId"]
       79 SETTABLEKS                       R9 R8 K26 ["contentId"]
       81 GETTABLEKS                       R9 R0 K27 ["editThisContent"]
       83 SETTABLEKS                       R9 R8 K27 ["editThisContent"]
       85 DUPTABLE                         R9 K31 [{"Header", "Content"}]
       86 GETUPVAL                         R10 3
       87 GETUPVAL                         R11 5
       88 GETTABLEKS                       R11 R11 K29 ["Header"]
       90 DUPTABLE                         R12 K33 [{"LayoutOrder", "testId"}]
       91 MOVE                             R13 R4
       92 CALL                             R13 0 1
       93 SETTABLEKS                       R13 R12 K8 ["LayoutOrder"]
       95 GETUPVAL                         R13 6
       96 GETTABLEKS                       R13 R13 K34 ["ImageContent"]
       98 GETTABLEKS                       R13 R13 K35 ["Expand"]
      100 SETTABLEKS                       R13 R12 K32 ["testId"]
      102 DUPTABLE                         R13 K37 [{"Text"}]
      103 GETUPVAL                         R14 3
      104 GETUPVAL                         R15 7
      105 DUPTABLE                         R16 K39 [{["tag"] = "size-0-full auto-x padding-right-xsmall text-label-small content-default", ["Text"], ["LayoutOrder"]}]
      106 GETTABLEKS                       R17 R3 K40 ["AttachmentTitle"]
      108 SETTABLEKS                       R17 R16 K36 ["Text"]
      110 MOVE                             R17 R4
      111 CALL                             R17 0 1
      112 SETTABLEKS                       R17 R16 K8 ["LayoutOrder"]
      114 CALL                             R14 2 1
      115 SETTABLEKS                       R14 R13 K36 ["Text"]
      117 CALL                             R10 3 1
      118 SETTABLEKS                       R10 R9 K29 ["Header"]
      120 GETUPVAL                         R10 3
      121 GETUPVAL                         R11 5
      122 GETTABLEKS                       R11 R11 K30 ["Content"]
      124 DUPTABLE                         R12 K44 [{["tag"] = "size-0-0 auto-xy", ["LayoutOrder"], ["UseVisible"] = True}]
      125 MOVE                             R13 R4
      126 CALL                             R13 0 1
      127 SETTABLEKS                       R13 R12 K8 ["LayoutOrder"]
      129 DUPTABLE                         R13 K46 [{"Images"}]
      130 GETUPVAL                         R14 3
      131 GETUPVAL                         R15 8
      132 DUPTABLE                         R16 K47 [{["tag"] = "size-0-0 auto-xy"}]
      133 MOVE                             R17 R5
      134 CALL                             R14 3 1
      135 SETTABLEKS                       R14 R13 K45 ["Images"]
      137 CALL                             R10 3 1
      138 SETTABLEKS                       R10 R9 K30 ["Content"]
      140 CALL                             R6 3 -1
      141 RETURN                           R6 -1

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
