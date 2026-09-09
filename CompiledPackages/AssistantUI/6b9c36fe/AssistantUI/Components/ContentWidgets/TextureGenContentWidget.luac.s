PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONDecode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 FASTCALL1                        TYPEOF R1 ; [+2]
        2 GETIMPORT                        R0 K1 [typeof]
        4 CALL                             R0 1 1
        5 JUMPIFEQKS                       R0 K2 ["string"] ; [+3]
        7 LOADNIL                          R0
        8 RETURN                           R0 1
        9 GETIMPORT                        R0 K4 [pcall]
       11 NEWCLOSURE                       R1 P0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U0
       14 CALL                             R0 1 2
       15 JUMPIFNOT                        R0 ; [+13]
       16 FASTCALL1                        TYPEOF R1 ; [+3]
       17 MOVE                             R3 R1
       18 GETIMPORT                        R2 K1 [typeof]
       20 CALL                             R2 1 1
       21 JUMPIFNOTEQKS                    R2 K5 ["table"] ; [+7]
       23 GETUPVAL                         R2 2
       24 GETTABLEKS                       R2 R2 K6 ["hasPreviewFrame"]
       26 MOVE                             R3 R1
       27 CALL                             R2 1 1
       28 JUMPIF                           R2 ; [+2]
       29 LOADNIL                          R2
       30 RETURN                           R2 1
       31 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useChannel"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Scope"]
        6 MOVE                             R3 R0
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K2 ["Field"]
       10 GETTABLEKS                       R4 R4 K3 ["Images"]
       12 CALL                             R1 3 1
       13 GETUPVAL                         R2 2
       14 GETTABLEKS                       R2 R2 K4 ["useMemo"]
       16 NEWCLOSURE                       R3 P0
       17 CAPTURE                          VAL R1
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          UPVAL U4
       20 NEWTABLE                         R4 0 1
       22 MOVE                             R5 R1
       23 SETLIST                          R4 R5 1 [1]
       25 CALL                             R2 2 1
       26 GETUPVAL                         R3 5
       27 GETTABLEKS                       R3 R3 K5 ["useCarouselPreviewImage"]
       29 MOVE                             R4 R2
       30 CALL                             R3 1 -1
       31 RETURN                           R3 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["usePreviewAutoplay"]
        3 GETTABLEKS                       R2 R0 K1 ["previewImage"]
        5 LOADN                            R3 24
        6 CALL                             R1 2 2
        7 GETUPVAL                         R3 1
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K2 ["PreviewCarousel"]
       11 DUPTABLE                         R5 K9 [{["previewImage"], ["previewHeight"] = 225, ["testId"], ["LayoutOrder"], ["onPrevious"], ["onNext"]}]
       12 GETTABLEKS                       R6 R0 K1 ["previewImage"]
       14 SETTABLEKS                       R6 R5 K1 ["previewImage"]
       16 GETUPVAL                         R6 2
       17 GETTABLEKS                       R6 R6 K10 ["TextureGen"]
       19 GETTABLEKS                       R6 R6 K11 ["PreviewImage"]
       21 SETTABLEKS                       R6 R5 K5 ["testId"]
       23 GETTABLEKS                       R6 R0 K6 ["LayoutOrder"]
       25 SETTABLEKS                       R6 R5 K6 ["LayoutOrder"]
       27 SETTABLEKS                       R1 R5 K7 ["onPrevious"]
       29 SETTABLEKS                       R2 R5 K8 ["onNext"]
       31 CALL                             R3 2 -1
       32 RETURN                           R3 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETUPVAL                         R3 2
        4 GETTABLEKS                       R3 R3 K0 ["Root"]
        6 DUPTABLE                         R4 K5 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
        7 GETTABLEKS                       R5 R0 K1 ["LayoutOrder"]
        9 SETTABLEKS                       R5 R4 K1 ["LayoutOrder"]
       11 GETTABLEKS                       R5 R0 K2 ["expanded"]
       13 SETTABLEKS                       R5 R4 K2 ["expanded"]
       15 GETTABLEKS                       R5 R0 K3 ["contentId"]
       17 SETTABLEKS                       R5 R4 K3 ["contentId"]
       19 GETTABLEKS                       R5 R0 K4 ["editThisContent"]
       21 SETTABLEKS                       R5 R4 K4 ["editThisContent"]
       23 DUPTABLE                         R5 K9 [{"Header", "Persist", "Content"}]
       24 GETUPVAL                         R6 1
       25 GETUPVAL                         R7 2
       26 GETTABLEKS                       R7 R7 K6 ["Header"]
       28 DUPTABLE                         R8 K11 [{"LayoutOrder", "testId"}]
       29 MOVE                             R9 R1
       30 CALL                             R9 0 1
       31 SETTABLEKS                       R9 R8 K1 ["LayoutOrder"]
       33 GETUPVAL                         R9 3
       34 GETTABLEKS                       R9 R9 K12 ["TextureGen"]
       36 GETTABLEKS                       R9 R9 K13 ["Expand"]
       38 SETTABLEKS                       R9 R8 K10 ["testId"]
       40 DUPTABLE                         R9 K15 [{"Text"}]
       41 GETUPVAL                         R10 1
       42 GETUPVAL                         R11 4
       43 DUPTABLE                         R12 K18 [{["tag"] = "size-0-0 auto-xy text-label-small text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
       44 GETTABLEKS                       R13 R0 K19 ["headerText"]
       46 SETTABLEKS                       R13 R12 K14 ["Text"]
       48 MOVE                             R13 R1
       49 CALL                             R13 0 1
       50 SETTABLEKS                       R13 R12 K1 ["LayoutOrder"]
       52 DUPTABLE                         R13 K21 [{"Shimmer"}]
       53 GETTABLEKS                       R15 R0 K22 ["isWorking"]
       55 JUMPIFNOT                        R15 ; [+4]
       56 GETUPVAL                         R14 1
       57 GETUPVAL                         R15 5
       58 CALL                             R14 1 1
       59 JUMP                             ; [+1]
       60 LOADNIL                          R14
       61 SETTABLEKS                       R14 R13 K20 ["Shimmer"]
       63 CALL                             R10 3 1
       64 SETTABLEKS                       R10 R9 K14 ["Text"]
       66 CALL                             R6 3 1
       67 SETTABLEKS                       R6 R5 K6 ["Header"]
       69 GETUPVAL                         R6 6
       70 GETTABLEKS                       R6 R6 K23 ["buildPersistFrames"]
       72 GETTABLEKS                       R7 R0 K24 ["previewImage"]
       74 CALL                             R6 1 1
       75 SETTABLEKS                       R6 R5 K7 ["Persist"]
       77 GETUPVAL                         R6 1
       78 GETUPVAL                         R7 2
       79 GETTABLEKS                       R7 R7 K8 ["Content"]
       81 DUPTABLE                         R8 K26 [{["tag"] = "col fill gap-small size-0-0 auto-y", ["LayoutOrder"]}]
       82 MOVE                             R9 R1
       83 CALL                             R9 0 1
       84 SETTABLEKS                       R9 R8 K1 ["LayoutOrder"]
       86 DUPTABLE                         R9 K29 [{"Preview", "Footer"}]
       87 GETUPVAL                         R10 1
       88 GETUPVAL                         R11 7
       89 DUPTABLE                         R12 K30 [{"previewImage", "LayoutOrder"}]
       90 GETTABLEKS                       R13 R0 K24 ["previewImage"]
       92 SETTABLEKS                       R13 R12 K24 ["previewImage"]
       94 MOVE                             R13 R1
       95 CALL                             R13 0 1
       96 SETTABLEKS                       R13 R12 K1 ["LayoutOrder"]
       98 CALL                             R10 2 1
       99 SETTABLEKS                       R10 R9 K27 ["Preview"]
      101 GETTABLEKS                       R11 R0 K31 ["footer"]
      103 JUMPIFNOT                        R11 ; [+11]
      104 GETUPVAL                         R10 1
      105 GETUPVAL                         R11 8
      106 DUPTABLE                         R12 K33 [{["tag"] = "flex-x-right row gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      107 MOVE                             R13 R1
      108 CALL                             R13 0 1
      109 SETTABLEKS                       R13 R12 K1 ["LayoutOrder"]
      111 GETTABLEKS                       R13 R0 K31 ["footer"]
      113 CALL                             R10 3 1
      114 JUMP                             ; [+1]
      115 LOADNIL                          R10
      116 SETTABLEKS                       R10 R9 K28 ["Footer"]
      118 CALL                             R6 3 1
      119 SETTABLEKS                       R6 R5 K8 ["Content"]
      121 CALL                             R2 3 -1
      122 RETURN                           R2 -1

PROTO_5:
        0 DUPTABLE                         R0 K4 [{"Preparing", "Working", "Failed", "ToolRejected"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K5 ["Common"]
        3 LOADK                            R4 K0 ["Preparing"]
        4 NAMECALL                         R1 R1 K6 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Preparing"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K5 ["Common"]
       11 LOADK                            R4 K1 ["Working"]
       12 NAMECALL                         R1 R1 K6 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["Working"]
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K5 ["Common"]
       19 LOADK                            R4 K2 ["Failed"]
       20 NAMECALL                         R1 R1 K6 ["getText"]
       22 CALL                             R1 3 1
       23 SETTABLEKS                       R1 R0 K2 ["Failed"]
       25 GETUPVAL                         R1 0
       26 LOADK                            R3 K7 ["ToolConfirmation"]
       27 LOADK                            R4 K8 ["ToolCallRejected"]
       28 DUPTABLE                         R5 K10 [{"toolName"}]
       29 GETUPVAL                         R6 1
       30 SETTABLEKS                       R6 R5 K9 ["toolName"]
       32 NAMECALL                         R1 R1 K6 ["getText"]
       34 CALL                             R1 4 1
       35 SETTABLEKS                       R1 R0 K3 ["ToolRejected"]
       37 RETURN                           R0 1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["toolUse"]
        2 GETTABLEKS                       R2 R0 K1 ["toolResult"]
        4 JUMPIFNOT                        R1 ; [+3]
        5 GETTABLEKS                       R3 R1 K2 ["name"]
        7 JUMPIF                           R3 ; [+1]
        8 LOADK                            R3 K3 [""]
        9 JUMPIFNOT                        R2 ; [+3]
       10 GETTABLEKS                       R4 R2 K4 ["structuredContent"]
       12 JUMPIF                           R4 ; [+1]
       13 LOADNIL                          R4
       14 JUMPIFNOT                        R4 ; [+3]
       15 GETTABLEKS                       R5 R4 K5 ["errorMessage"]
       17 JUMPIF                           R5 ; [+1]
       18 LOADNIL                          R5
       19 GETUPVAL                         R6 0
       20 GETTABLEKS                       R6 R6 K6 ["useMemo"]
       22 NEWCLOSURE                       R7 P0
       23 CAPTURE                          UPVAL U1
       24 CAPTURE                          VAL R3
       25 NEWTABLE                         R8 0 2
       27 GETUPVAL                         R9 1
       28 GETTABLEKS                       R9 R9 K7 ["locale"]
       30 MOVE                             R10 R3
       31 SETLIST                          R8 R9 2 [1]
       33 CALL                             R6 2 1
       34 GETUPVAL                         R7 2
       35 GETTABLEKS                       R7 R7 K8 ["deriveToolStatus"]
       37 MOVE                             R8 R1
       38 MOVE                             R9 R2
       39 CALL                             R7 2 1
       40 LOADB                            R8 1
       41 GETUPVAL                         R9 3
       42 GETTABLEKS                       R9 R9 K9 ["Preparing"]
       44 JUMPIFEQ                         R7 R9 ; [+8]
       46 GETUPVAL                         R9 3
       47 GETTABLEKS                       R9 R9 K10 ["Running"]
       49 JUMPIFEQ                         R7 R9 ; [+2]
       51 LOADB                            R8 0 +1
       52 LOADB                            R8 1
       53 LOADB                            R9 1
       54 GETUPVAL                         R10 3
       55 GETTABLEKS                       R10 R10 K11 ["Failed"]
       57 JUMPIFEQ                         R7 R10 ; [+8]
       59 GETUPVAL                         R10 3
       60 GETTABLEKS                       R10 R10 K12 ["Completed"]
       62 JUMPIFEQ                         R7 R10 ; [+2]
       64 LOADB                            R9 0 +1
       65 LOADB                            R9 1
       66 LOADNIL                          R10
       67 GETUPVAL                         R11 3
       68 GETTABLEKS                       R11 R11 K13 ["Rejected"]
       70 JUMPIFNOTEQ                      R7 R11 ; [+4]
       72 GETTABLEKS                       R10 R6 K14 ["ToolRejected"]
       74 JUMP                             ; [+14]
       75 JUMPIFNOT                        R9 ; [+3]
       76 GETTABLEKS                       R10 R6 K11 ["Failed"]
       78 JUMP                             ; [+10]
       79 GETUPVAL                         R11 3
       80 GETTABLEKS                       R11 R11 K10 ["Running"]
       82 JUMPIFNOTEQ                      R7 R11 ; [+4]
       84 GETTABLEKS                       R10 R6 K15 ["Working"]
       86 JUMP                             ; [+2]
       87 GETTABLEKS                       R10 R6 K9 ["Preparing"]
       89 MOVE                             R11 R9
       90 JUMPIFNOT                        R11 ; [+4]
       91 JUMPIFNOTEQKNIL                  R5 ; [+2]
       93 LOADB                            R11 0 +1
       94 LOADB                            R11 1
       95 GETUPVAL                         R12 4
       96 CALL                             R12 0 1
       97 GETUPVAL                         R13 5
       98 GETUPVAL                         R14 6
       99 GETTABLEKS                       R14 R14 K16 ["Root"]
      101 DUPTABLE                         R15 K21 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
      102 GETTABLEKS                       R16 R0 K17 ["LayoutOrder"]
      104 SETTABLEKS                       R16 R15 K17 ["LayoutOrder"]
      106 SETTABLEKS                       R11 R15 K18 ["expanded"]
      108 GETTABLEKS                       R16 R0 K19 ["contentId"]
      110 SETTABLEKS                       R16 R15 K19 ["contentId"]
      112 GETTABLEKS                       R16 R0 K20 ["editThisContent"]
      114 SETTABLEKS                       R16 R15 K20 ["editThisContent"]
      116 DUPTABLE                         R16 K24 [{"Header", "Content"}]
      117 GETUPVAL                         R17 5
      118 GETUPVAL                         R18 6
      119 GETTABLEKS                       R18 R18 K22 ["Header"]
      121 DUPTABLE                         R19 K27 [{"IsDisabled", "LayoutOrder", "testId"}]
      122 NOT                              R20 R11
      123 SETTABLEKS                       R20 R19 K25 ["IsDisabled"]
      125 MOVE                             R20 R12
      126 CALL                             R20 0 1
      127 SETTABLEKS                       R20 R19 K17 ["LayoutOrder"]
      129 GETUPVAL                         R20 7
      130 GETTABLEKS                       R20 R20 K28 ["TextureGen"]
      132 GETTABLEKS                       R20 R20 K29 ["Expand"]
      134 SETTABLEKS                       R20 R19 K26 ["testId"]
      136 DUPTABLE                         R20 K31 [{"Text"}]
      137 GETUPVAL                         R21 5
      138 GETUPVAL                         R22 8
      139 DUPTABLE                         R23 K34 [{["tag"] = "size-0-full auto-x text-label-small text-align-y-center text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
      140 SETTABLEKS                       R10 R23 K30 ["Text"]
      142 MOVE                             R24 R12
      143 CALL                             R24 0 1
      144 SETTABLEKS                       R24 R23 K17 ["LayoutOrder"]
      146 DUPTABLE                         R24 K36 [{"Shimmer"}]
      147 JUMPIFNOT                        R8 ; [+4]
      148 GETUPVAL                         R25 5
      149 GETUPVAL                         R26 9
      150 CALL                             R25 1 1
      151 JUMP                             ; [+1]
      152 LOADNIL                          R25
      153 SETTABLEKS                       R25 R24 K35 ["Shimmer"]
      155 CALL                             R21 3 1
      156 SETTABLEKS                       R21 R20 K30 ["Text"]
      158 CALL                             R17 3 1
      159 SETTABLEKS                       R17 R16 K22 ["Header"]
      161 JUMPIFNOT                        R11 ; [+43]
      162 GETUPVAL                         R17 5
      163 GETUPVAL                         R18 6
      164 GETTABLEKS                       R18 R18 K23 ["Content"]
      166 DUPTABLE                         R19 K38 [{["tag"] = "col fill gap-small size-0-0 auto-y", ["LayoutOrder"]}]
      167 MOVE                             R20 R12
      168 CALL                             R20 0 1
      169 SETTABLEKS                       R20 R19 K17 ["LayoutOrder"]
      171 DUPTABLE                         R20 K40 [{"ErrorDetail"}]
      172 GETUPVAL                         R21 5
      173 GETUPVAL                         R22 10
      174 DUPTABLE                         R23 K42 [{["tag"] = "size-full-0 auto-y padding-small radius-small bg-shift-200", ["LayoutOrder"]}]
      175 MOVE                             R24 R12
      176 CALL                             R24 0 1
      177 SETTABLEKS                       R24 R23 K17 ["LayoutOrder"]
      179 DUPTABLE                         R24 K44 [{"ErrorText"}]
      180 GETUPVAL                         R25 5
      181 GETUPVAL                         R26 8
      182 DUPTABLE                         R27 K47 [{["Text"], ["fontStyle"], ["tag"] = "size-full-0 auto-y text-wrap text-align-x-left content-muted", ["LayoutOrder"]}]
      183 SETTABLEKS                       R5 R27 K30 ["Text"]
      185 DUPTABLE                         R28 K51 [{["Font"], ["FontSize"] = 12}]
      186 GETUPVAL                         R29 11
      187 GETTABLEKS                       R29 R29 K52 ["CODE_FONT"]
      189 SETTABLEKS                       R29 R28 K48 ["Font"]
      191 SETTABLEKS                       R28 R27 K45 ["fontStyle"]
      193 MOVE                             R28 R12
      194 CALL                             R28 0 1
      195 SETTABLEKS                       R28 R27 K17 ["LayoutOrder"]
      197 CALL                             R25 2 1
      198 SETTABLEKS                       R25 R24 K43 ["ErrorText"]
      200 CALL                             R21 3 1
      201 SETTABLEKS                       R21 R20 K39 ["ErrorDetail"]
      203 CALL                             R17 3 1
      204 JUMP                             ; [+1]
      205 LOADNIL                          R17
      206 SETTABLEKS                       R17 R16 K23 ["Content"]
      208 CALL                             R13 3 -1
      209 RETURN                           R13 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K0 ["selectTaggedInstances"]
        8 DUPTABLE                         R1 K2 [{"tag"}]
        9 GETUPVAL                         R2 1
       10 SETTABLEKS                       R2 R1 K1 ["tag"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_8:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 LOADN                            R2 1
        3 JUMPIFNOTLT                      R2 R1 ; [+16]
        5 GETUPVAL                         R1 1
        6 LOADK                            R3 K0 ["InstanceChip"]
        7 LOADK                            R4 K1 ["Multiple"]
        8 DUPTABLE                         R5 K4 [{"name", "count"}]
        9 GETUPVAL                         R6 2
       10 SETTABLEKS                       R6 R5 K2 ["name"]
       12 GETUPVAL                         R6 0
       13 SETTABLEKS                       R6 R5 K3 ["count"]
       15 NAMECALL                         R1 R1 K5 ["getText"]
       17 CALL                             R1 4 1
       18 MOVE                             R0 R1
       19 JUMP                             ; [+16]
       20 GETUPVAL                         R1 0
       21 JUMPIFNOTEQKN                    R1 K6 [0] ; [+13]
       23 GETUPVAL                         R1 1
       24 LOADK                            R3 K0 ["InstanceChip"]
       25 LOADK                            R4 K7 ["Deleted"]
       26 DUPTABLE                         R5 K8 [{"name"}]
       27 GETUPVAL                         R6 2
       28 SETTABLEKS                       R6 R5 K2 ["name"]
       30 NAMECALL                         R1 R1 K5 ["getText"]
       32 CALL                             R1 4 1
       33 MOVE                             R0 R1
       34 JUMP                             ; [+1]
       35 GETUPVAL                         R0 2
       36 GETUPVAL                         R1 1
       37 LOADK                            R3 K9 ["Common"]
       38 LOADK                            R4 K10 ["Inserted"]
       39 NAMECALL                         R1 R1 K5 ["getText"]
       41 CALL                             R1 3 1
       42 GETUPVAL                         R2 3
       43 JUMPIF                           R2 ; [+7]
       44 LOADK                            R2 K11 ["%* %*"]
       45 MOVE                             R4 R1
       46 MOVE                             R5 R0
       47 NAMECALL                         R2 R2 K12 ["format"]
       49 CALL                             R2 3 1
       50 MOVE                             R1 R2
       51 DUPTABLE                         R2 K15 [{"DisplayName", "Generated"}]
       52 SETTABLEKS                       R0 R2 K13 ["DisplayName"]
       54 SETTABLEKS                       R1 R2 K14 ["Generated"]
       56 RETURN                           R2 1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["toolUse"]
        2 GETTABLEKS                       R2 R0 K1 ["toolResult"]
        4 JUMPIFNOT                        R1 ; [+3]
        5 GETTABLEKS                       R3 R1 K2 ["input"]
        7 JUMPIF                           R3 ; [+1]
        8 GETUPVAL                         R3 0
        9 JUMPIFNOT                        R2 ; [+3]
       10 GETTABLEKS                       R4 R2 K3 ["structuredContent"]
       12 JUMPIF                           R4 ; [+1]
       13 LOADNIL                          R4
       14 JUMPIFNOT                        R4 ; [+3]
       15 GETTABLEKS                       R5 R4 K4 ["tag"]
       17 JUMPIF                           R5 ; [+1]
       18 LOADNIL                          R5
       19 JUMPIFNOT                        R4 ; [+3]
       20 GETTABLEKS                       R6 R4 K5 ["generationName"]
       22 JUMPIF                           R6 ; [+4]
       23 GETTABLEKS                       R6 R3 K6 ["textPrompt"]
       25 JUMPIF                           R6 ; [+1]
       26 LOADK                            R6 K7 [""]
       27 GETUPVAL                         R7 1
       28 GETTABLEKS                       R7 R7 K8 ["useTag"]
       30 MOVE                             R8 R5
       31 DUPTABLE                         R9 K12 [{["includeCount"] = True, ["includeClassName"] = True}]
       32 CALL                             R7 2 1
       33 JUMPIFNOT                        R7 ; [+3]
       34 GETTABLEKS                       R8 R7 K13 ["count"]
       36 JUMPIF                           R8 ; [+1]
       37 LOADN                            R8 0
       38 JUMPIFNOT                        R7 ; [+3]
       39 GETTABLEKS                       R9 R7 K14 ["className"]
       41 JUMPIF                           R9 ; [+1]
       42 LOADNIL                          R9
       43 LOADN                            R11 0
       44 JUMPIFLT                         R11 R8 ; [+2]
       46 LOADB                            R10 0 +1
       47 LOADB                            R10 1
       48 GETUPVAL                         R11 2
       49 GETTABLEKS                       R11 R11 K15 ["useContext"]
       51 GETUPVAL                         R12 1
       52 GETTABLEKS                       R12 R12 K16 ["Context"]
       54 CALL                             R11 1 1
       55 GETUPVAL                         R12 2
       56 GETTABLEKS                       R12 R12 K17 ["useCallback"]
       58 NEWCLOSURE                       R13 P0
       59 CAPTURE                          VAL R11
       60 CAPTURE                          VAL R5
       61 NEWTABLE                         R14 0 2
       63 MOVE                             R15 R11
       64 MOVE                             R16 R5
       65 SETLIST                          R14 R15 2 [1]
       67 CALL                             R12 2 1
       68 GETUPVAL                         R13 2
       69 GETTABLEKS                       R13 R13 K18 ["useMemo"]
       71 NEWCLOSURE                       R14 P1
       72 CAPTURE                          VAL R8
       73 CAPTURE                          UPVAL U3
       74 CAPTURE                          VAL R6
       75 CAPTURE                          VAL R10
       76 NEWTABLE                         R15 0 4
       78 GETUPVAL                         R16 3
       79 GETTABLEKS                       R16 R16 K19 ["locale"]
       81 MOVE                             R17 R6
       82 MOVE                             R18 R8
       83 MOVE                             R19 R10
       84 SETLIST                          R15 R16 4 [1]
       86 CALL                             R13 2 1
       87 GETUPVAL                         R14 4
       88 MOVE                             R15 R9
       89 CALL                             R14 1 1
       90 GETUPVAL                         R15 5
       91 CALL                             R15 0 1
       92 GETUPVAL                         R16 6
       93 GETUPVAL                         R17 7
       94 GETTABLEKS                       R17 R17 K20 ["Root"]
       96 DUPTABLE                         R18 K25 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
       97 GETTABLEKS                       R19 R0 K21 ["LayoutOrder"]
       99 SETTABLEKS                       R19 R18 K21 ["LayoutOrder"]
      101 GETTABLEKS                       R19 R0 K22 ["expanded"]
      103 SETTABLEKS                       R19 R18 K22 ["expanded"]
      105 GETTABLEKS                       R19 R0 K23 ["contentId"]
      107 SETTABLEKS                       R19 R18 K23 ["contentId"]
      109 GETTABLEKS                       R19 R0 K24 ["editThisContent"]
      111 SETTABLEKS                       R19 R18 K24 ["editThisContent"]
      113 DUPTABLE                         R19 K27 [{"Header"}]
      114 GETUPVAL                         R20 6
      115 GETUPVAL                         R21 7
      116 GETTABLEKS                       R21 R21 K26 ["Header"]
      118 DUPTABLE                         R22 K30 [{["IsDisabled"] = True, ["LayoutOrder"], ["testId"]}]
      119 MOVE                             R23 R15
      120 CALL                             R23 0 1
      121 SETTABLEKS                       R23 R22 K21 ["LayoutOrder"]
      123 GETUPVAL                         R23 8
      124 GETTABLEKS                       R23 R23 K31 ["TextureGen"]
      126 GETTABLEKS                       R23 R23 K32 ["Expand"]
      128 SETTABLEKS                       R23 R22 K29 ["testId"]
      130 DUPTABLE                         R23 K35 [{"Text", "ChipArea"}]
      131 GETUPVAL                         R24 6
      132 GETUPVAL                         R25 9
      133 DUPTABLE                         R26 K37 [{["tag"] = "size-0-0 auto-xy text-label-small text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
      134 GETTABLEKS                       R27 R13 K38 ["Generated"]
      136 SETTABLEKS                       R27 R26 K33 ["Text"]
      138 MOVE                             R27 R15
      139 CALL                             R27 0 1
      140 SETTABLEKS                       R27 R26 K21 ["LayoutOrder"]
      142 CALL                             R24 2 1
      143 SETTABLEKS                       R24 R23 K33 ["Text"]
      145 MOVE                             R24 R10
      146 JUMPIFNOT                        R24 ; [+38]
      147 GETUPVAL                         R24 6
      148 GETUPVAL                         R25 10
      149 DUPTABLE                         R26 K40 [{["tag"] = "align-x-left align-y-center fill", ["LayoutOrder"]}]
      150 MOVE                             R27 R15
      151 CALL                             R27 0 1
      152 SETTABLEKS                       R27 R26 K21 ["LayoutOrder"]
      154 DUPTABLE                         R27 K42 [{"AssetLink"}]
      155 GETUPVAL                         R28 6
      156 GETUPVAL                         R29 11
      157 DUPTABLE                         R30 K49 [{["text"], ["leading"], ["onActivated"], ["isChecked"] = False, ["size"], ["LayoutOrder"]}]
      158 GETTABLEKS                       R31 R13 K50 ["DisplayName"]
      160 SETTABLEKS                       R31 R30 K43 ["text"]
      162 GETTABLEKS                       R31 R14 K51 ["Image"]
      164 SETTABLEKS                       R31 R30 K44 ["leading"]
      166 SETTABLEKS                       R12 R30 K45 ["onActivated"]
      168 GETUPVAL                         R31 12
      169 GETTABLEKS                       R31 R31 K52 ["Enums"]
      171 GETTABLEKS                       R31 R31 K53 ["ChipSize"]
      173 GETTABLEKS                       R31 R31 K54 ["Small"]
      175 SETTABLEKS                       R31 R30 K48 ["size"]
      177 MOVE                             R31 R15
      178 CALL                             R31 0 1
      179 SETTABLEKS                       R31 R30 K21 ["LayoutOrder"]
      181 CALL                             R28 2 1
      182 SETTABLEKS                       R28 R27 K41 ["AssetLink"]
      184 CALL                             R24 3 1
      185 SETTABLEKS                       R24 R23 K34 ["ChipArea"]
      187 CALL                             R20 3 1
      188 SETTABLEKS                       R20 R19 K26 ["Header"]
      190 CALL                             R16 3 -1
      191 RETURN                           R16 -1

PROTO_10:
        0 DUPTABLE                         R0 K5 [{"HeaderReady", "HeaderInserting", "HeaderFailed", "ButtonInsert", "TryAgain"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K6 ["TextureGen"]
        3 LOADK                            R4 K0 ["HeaderReady"]
        4 DUPTABLE                         R5 K8 [{"displayName"}]
        5 GETUPVAL                         R6 1
        6 SETTABLEKS                       R6 R5 K7 ["displayName"]
        8 NAMECALL                         R1 R1 K9 ["getText"]
       10 CALL                             R1 4 1
       11 SETTABLEKS                       R1 R0 K0 ["HeaderReady"]
       13 GETUPVAL                         R1 0
       14 LOADK                            R3 K6 ["TextureGen"]
       15 LOADK                            R4 K1 ["HeaderInserting"]
       16 DUPTABLE                         R5 K8 [{"displayName"}]
       17 GETUPVAL                         R6 1
       18 SETTABLEKS                       R6 R5 K7 ["displayName"]
       20 NAMECALL                         R1 R1 K9 ["getText"]
       22 CALL                             R1 4 1
       23 SETTABLEKS                       R1 R0 K1 ["HeaderInserting"]
       25 GETUPVAL                         R1 0
       26 LOADK                            R3 K6 ["TextureGen"]
       27 LOADK                            R4 K2 ["HeaderFailed"]
       28 NAMECALL                         R1 R1 K9 ["getText"]
       30 CALL                             R1 3 1
       31 SETTABLEKS                       R1 R0 K2 ["HeaderFailed"]
       33 GETUPVAL                         R1 0
       34 LOADK                            R3 K6 ["TextureGen"]
       35 LOADK                            R4 K3 ["ButtonInsert"]
       36 NAMECALL                         R1 R1 K9 ["getText"]
       38 CALL                             R1 3 1
       39 SETTABLEKS                       R1 R0 K3 ["ButtonInsert"]
       41 GETUPVAL                         R1 0
       42 LOADK                            R3 K10 ["Common"]
       43 LOADK                            R4 K4 ["TryAgain"]
       44 NAMECALL                         R1 R1 K9 ["getText"]
       46 CALL                             R1 3 1
       47 SETTABLEKS                       R1 R0 K4 ["TryAgain"]
       49 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["insertTexturedModelAsync"]
        3 DUPTABLE                         R1 K2 [{"requestId"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["requestId"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 2
        6 LOADK                            R1 K0 ["Inserting"]
        7 CALL                             R0 1 0
        8 GETIMPORT                        R0 K2 [pcall]
       10 NEWCLOSURE                       R1 P0
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          UPVAL U1
       13 CALL                             R0 1 1
       14 JUMPIFNOT                        R0 ; [+4]
       15 GETUPVAL                         R1 2
       16 LOADK                            R2 K3 ["Inserted"]
       17 CALL                             R1 1 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R1 2
       20 LOADK                            R2 K4 ["InsertFailed"]
       21 CALL                             R1 1 0
       22 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["toolResult"]
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETTABLEKS                       R2 R1 K1 ["structuredContent"]
        5 JUMPIF                           R2 ; [+1]
        6 LOADNIL                          R2
        7 JUMPIFNOT                        R2 ; [+3]
        8 GETTABLEKS                       R3 R2 K2 ["requestId"]
       10 JUMPIF                           R3 ; [+1]
       11 LOADNIL                          R3
       12 JUMPIFNOT                        R2 ; [+3]
       13 GETTABLEKS                       R4 R2 K3 ["tag"]
       15 JUMPIF                           R4 ; [+1]
       16 LOADNIL                          R4
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R5 R5 K4 ["useContext"]
       20 GETUPVAL                         R6 1
       21 GETTABLEKS                       R6 R6 K5 ["Context"]
       23 CALL                             R5 1 1
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R6 R6 K6 ["useState"]
       27 LOADK                            R7 K7 ["AwaitingConfirm"]
       28 CALL                             R6 1 2
       29 GETUPVAL                         R8 2
       30 GETTABLEKS                       R8 R8 K8 ["useTag"]
       32 MOVE                             R9 R4
       33 DUPTABLE                         R10 K11 [{["includeCount"] = True}]
       34 CALL                             R8 2 1
       35 JUMPIFNOT                        R8 ; [+3]
       36 GETTABLEKS                       R10 R8 K12 ["count"]
       38 JUMPIF                           R10 ; [+1]
       39 LOADN                            R10 0
       40 LOADN                            R11 0
       41 JUMPIFLT                         R11 R10 ; [+2]
       43 LOADB                            R9 0 +1
       44 LOADB                            R9 1
       45 GETUPVAL                         R10 3
       46 MOVE                             R11 R3
       47 CALL                             R10 1 1
       48 JUMPIFEQKS                       R6 K13 ["Inserting"] ; [+2]
       50 LOADB                            R11 0 +1
       51 LOADB                            R11 1
       52 JUMPIFEQKS                       R6 K14 ["InsertFailed"] ; [+2]
       54 LOADB                            R12 0 +1
       55 LOADB                            R12 1
       56 JUMPIFNOT                        R2 ; [+3]
       57 GETTABLEKS                       R13 R2 K15 ["generationName"]
       59 JUMPIF                           R13 ; [+1]
       60 LOADK                            R13 K16 [""]
       61 GETUPVAL                         R14 0
       62 GETTABLEKS                       R14 R14 K17 ["useMemo"]
       64 NEWCLOSURE                       R15 P0
       65 CAPTURE                          UPVAL U4
       66 CAPTURE                          VAL R13
       67 NEWTABLE                         R16 0 2
       69 GETUPVAL                         R17 4
       70 GETTABLEKS                       R17 R17 K18 ["locale"]
       72 MOVE                             R18 R13
       73 SETLIST                          R16 R17 2 [1]
       75 CALL                             R14 2 1
       76 GETUPVAL                         R15 0
       77 GETTABLEKS                       R15 R15 K19 ["useCallback"]
       79 NEWCLOSURE                       R16 P1
       80 CAPTURE                          VAL R5
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R7
       83 NEWTABLE                         R17 0 2
       85 MOVE                             R18 R5
       86 MOVE                             R19 R3
       87 SETLIST                          R17 R18 2 [1]
       89 CALL                             R15 2 1
       90 JUMPIFEQKS                       R6 K20 ["Inserted"] ; [+2]
       92 JUMPIFNOT                        R9 ; [+5]
       93 GETUPVAL                         R16 5
       94 GETUPVAL                         R17 6
       95 MOVE                             R18 R0
       96 CALL                             R16 2 -1
       97 RETURN                           R16 -1
       98 LOADNIL                          R16
       99 JUMPIFNOT                        R12 ; [+3]
      100 GETTABLEKS                       R16 R14 K21 ["HeaderFailed"]
      102 JUMP                             ; [+6]
      103 JUMPIFNOT                        R11 ; [+3]
      104 GETTABLEKS                       R16 R14 K22 ["HeaderInserting"]
      106 JUMP                             ; [+2]
      107 GETTABLEKS                       R16 R14 K23 ["HeaderReady"]
      109 DUPTABLE                         R17 K25 [{"AddToPlaceButton"}]
      110 GETUPVAL                         R18 5
      111 GETUPVAL                         R19 7
      112 DUPTABLE                         R20 K31 [{"text", "size", "variant", "isLoading", "onActivated"}]
      113 JUMPIFNOT                        R12 ; [+3]
      114 GETTABLEKS                       R21 R14 K32 ["TryAgain"]
      116 JUMP                             ; [+2]
      117 GETTABLEKS                       R21 R14 K33 ["ButtonInsert"]
      119 SETTABLEKS                       R21 R20 K26 ["text"]
      121 GETUPVAL                         R21 8
      122 GETTABLEKS                       R21 R21 K34 ["Enums"]
      124 GETTABLEKS                       R21 R21 K35 ["InputSize"]
      126 GETTABLEKS                       R21 R21 K36 ["Small"]
      128 SETTABLEKS                       R21 R20 K27 ["size"]
      130 GETUPVAL                         R21 8
      131 GETTABLEKS                       R21 R21 K34 ["Enums"]
      133 GETTABLEKS                       R21 R21 K37 ["ButtonVariant"]
      135 GETTABLEKS                       R21 R21 K38 ["Emphasis"]
      137 SETTABLEKS                       R21 R20 K28 ["variant"]
      139 SETTABLEKS                       R11 R20 K29 ["isLoading"]
      141 SETTABLEKS                       R15 R20 K30 ["onActivated"]
      143 CALL                             R18 2 1
      144 SETTABLEKS                       R18 R17 K24 ["AddToPlaceButton"]
      146 GETUPVAL                         R18 5
      147 GETUPVAL                         R19 9
      148 DUPTABLE                         R20 K47 [{"LayoutOrder", "expanded", "contentId", "editThisContent", "headerText", "isWorking", "previewImage", "footer"}]
      149 GETTABLEKS                       R21 R0 K39 ["LayoutOrder"]
      151 SETTABLEKS                       R21 R20 K39 ["LayoutOrder"]
      153 GETTABLEKS                       R21 R0 K40 ["expanded"]
      155 SETTABLEKS                       R21 R20 K40 ["expanded"]
      157 GETTABLEKS                       R21 R0 K41 ["contentId"]
      159 SETTABLEKS                       R21 R20 K41 ["contentId"]
      161 GETTABLEKS                       R21 R0 K42 ["editThisContent"]
      163 SETTABLEKS                       R21 R20 K42 ["editThisContent"]
      165 SETTABLEKS                       R16 R20 K43 ["headerText"]
      167 SETTABLEKS                       R11 R20 K44 ["isWorking"]
      169 SETTABLEKS                       R10 R20 K45 ["previewImage"]
      171 SETTABLEKS                       R17 R20 K46 ["footer"]
      173 CALL                             R18 2 -1
      174 RETURN                           R18 -1

PROTO_14:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["expanded"]
        3 DUPTABLE                         R1 K3 [{["rawTransformValues"] = True}]
        4 RETURN                           R1 1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETUPVAL                         R1 0
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K0 ["current"]
        7 JUMPIF                           R0 ; [+2]
        8 GETUPVAL                         R1 1
        9 JUMPIF                           R1 ; [+1]
       10 RETURN                           R0 0
       11 GETUPVAL                         R1 2
       12 GETUPVAL                         R2 3
       13 DUPCLOSURE                       R3 K1 [PROTO_14]
       14 CALL                             R1 2 0
       15 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["deriveToolStatus"]
        3 GETTABLEKS                       R2 R0 K1 ["toolUse"]
        5 GETTABLEKS                       R3 R0 K2 ["toolResult"]
        7 CALL                             R1 2 1
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K3 ["Completed"]
       11 JUMPIFEQ                         R1 R3 ; [+2]
       13 LOADB                            R2 0 +1
       14 LOADB                            R2 1
       15 GETTABLEKS                       R3 R0 K4 ["editThisContent"]
       17 GETTABLEKS                       R4 R0 K5 ["contentId"]
       19 GETUPVAL                         R5 2
       20 GETTABLEKS                       R5 R5 K6 ["useRef"]
       22 MOVE                             R6 R2
       23 CALL                             R5 1 1
       24 GETUPVAL                         R6 2
       25 GETTABLEKS                       R6 R6 K7 ["useEffect"]
       27 NEWCLOSURE                       R7 P0
       28 CAPTURE                          VAL R5
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R3
       31 CAPTURE                          VAL R4
       32 NEWTABLE                         R8 0 3
       34 MOVE                             R9 R2
       35 MOVE                             R10 R4
       36 MOVE                             R11 R3
       37 SETLIST                          R8 R9 3 [1]
       39 CALL                             R6 2 0
       40 JUMPIFNOT                        R2 ; [+25]
       41 GETTABLEKS                       R6 R0 K1 ["toolUse"]
       43 JUMPIFNOT                        R6 ; [+11]
       44 GETTABLEKS                       R6 R0 K1 ["toolUse"]
       46 GETTABLEKS                       R6 R6 K8 ["input"]
       48 JUMPIFNOT                        R6 ; [+6]
       49 GETTABLEKS                       R6 R0 K1 ["toolUse"]
       51 GETTABLEKS                       R6 R6 K8 ["input"]
       53 GETTABLEKS                       R6 R6 K9 ["isManualRun"]
       55 JUMPIFNOT                        R6 ; [+5]
       56 GETUPVAL                         R7 3
       57 GETUPVAL                         R8 4
       58 MOVE                             R9 R0
       59 CALL                             R7 2 -1
       60 RETURN                           R7 -1
       61 GETUPVAL                         R7 3
       62 GETUPVAL                         R8 5
       63 MOVE                             R9 R0
       64 CALL                             R7 2 -1
       65 RETURN                           R7 -1
       66 GETUPVAL                         R6 3
       67 GETUPVAL                         R7 6
       68 MOVE                             R8 R0
       69 CALL                             R6 2 -1
       70 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Components"]
       17 GETTABLEKS                       R3 R3 K11 ["Accordion"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K10 ["Components"]
       24 GETTABLEKS                       R4 R4 K12 ["Contexts"]
       26 GETTABLEKS                       R4 R4 K13 ["Actions"]
       28 GETTABLEKS                       R4 R4 K14 ["ChannelActionsContext"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K9 [require]
       33 GETTABLEKS                       R5 R0 K15 ["Parent"]
       35 GETTABLEKS                       R5 R5 K16 ["Foundation"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K9 [require]
       40 GETTABLEKS                       R6 R0 K10 ["Components"]
       42 GETTABLEKS                       R6 R6 K12 ["Contexts"]
       44 GETTABLEKS                       R6 R6 K13 ["Actions"]
       46 GETTABLEKS                       R6 R6 K17 ["InstanceActionsContext"]
       48 CALL                             R5 1 1
       49 GETIMPORT                        R6 K9 [require]
       51 GETTABLEKS                       R7 R0 K15 ["Parent"]
       53 GETTABLEKS                       R7 R7 K18 ["React"]
       55 CALL                             R6 1 1
       56 GETIMPORT                        R7 K9 [require]
       58 GETTABLEKS                       R8 R0 K15 ["Parent"]
       60 GETTABLEKS                       R8 R8 K19 ["ReactUtils"]
       62 CALL                             R7 1 1
       63 GETIMPORT                        R8 K9 [require]
       65 GETTABLEKS                       R9 R0 K10 ["Components"]
       67 GETTABLEKS                       R9 R9 K20 ["ShimmerGradient"]
       69 CALL                             R8 1 1
       70 GETIMPORT                        R9 K9 [require]
       72 GETTABLEKS                       R10 R0 K21 ["Util"]
       74 GETTABLEKS                       R10 R10 K22 ["TestIds"]
       76 CALL                             R9 1 1
       77 GETIMPORT                        R10 K9 [require]
       79 GETTABLEKS                       R11 R0 K23 ["Resources"]
       81 GETTABLEKS                       R11 R11 K24 ["Localization"]
       83 GETTABLEKS                       R11 R11 K25 ["Translator"]
       85 CALL                             R10 1 1
       86 GETIMPORT                        R11 K9 [require]
       88 GETTABLEKS                       R12 R0 K26 ["Types"]
       90 CALL                             R11 1 1
       91 GETIMPORT                        R12 K9 [require]
       93 GETTABLEKS                       R13 R0 K21 ["Util"]
       95 GETTABLEKS                       R13 R13 K27 ["WidgetUtils"]
       97 CALL                             R12 1 1
       98 GETIMPORT                        R13 K9 [require]
      100 GETTABLEKS                       R14 R0 K28 ["Hooks"]
      102 GETTABLEKS                       R14 R14 K29 ["useClassIcon"]
      104 CALL                             R13 1 1
      105 GETIMPORT                        R14 K9 [require]
      107 GETTABLEKS                       R15 R0 K21 ["Util"]
      109 GETTABLEKS                       R15 R15 K30 ["Gen3dUtils"]
      111 GETTABLEKS                       R15 R15 K31 ["PreviewCarouselWidget"]
      113 CALL                             R14 1 1
      114 GETIMPORT                        R15 K9 [require]
      116 GETTABLEKS                       R16 R0 K10 ["Components"]
      118 GETTABLEKS                       R16 R16 K12 ["Contexts"]
      120 GETTABLEKS                       R16 R16 K13 ["Actions"]
      122 GETTABLEKS                       R16 R16 K32 ["TextureGenActionsContext"]
      124 CALL                             R15 1 1
      125 GETIMPORT                        R16 K9 [require]
      127 GETTABLEKS                       R17 R0 K21 ["Util"]
      129 GETTABLEKS                       R17 R17 K33 ["TextureGen"]
      131 GETTABLEKS                       R17 R17 K34 ["TextureGenChannel"]
      133 CALL                             R16 1 1
      134 GETIMPORT                        R17 K9 [require]
      136 GETTABLEKS                       R18 R0 K21 ["Util"]
      138 GETTABLEKS                       R18 R18 K30 ["Gen3dUtils"]
      140 GETTABLEKS                       R18 R18 K35 ["ViewportPreviewUtils"]
      142 CALL                             R17 1 1
      143 GETTABLEKS                       R18 R4 K36 ["Button"]
      145 GETTABLEKS                       R19 R4 K37 ["Chip"]
      147 GETTABLEKS                       R20 R4 K38 ["Text"]
      149 GETTABLEKS                       R21 R4 K39 ["View"]
      151 GETTABLEKS                       R22 R12 K40 ["ToolStatus"]
      153 GETTABLEKS                       R23 R7 K41 ["createNextOrder"]
      155 GETTABLEKS                       R24 R6 K42 ["createElement"]
      157 DUPTABLE                         R25 K47 [{["AwaitingConfirm"] = "AwaitingConfirm", ["Inserting"] = "Inserting", ["InsertFailed"] = "InsertFailed", ["Inserted"] = "Inserted"}]
      158 NEWTABLE                         R26 0 0
      160 DUPCLOSURE                       R27 K48 [PROTO_2]
      161 CAPTURE                          VAL R3
      162 CAPTURE                          VAL R16
      163 CAPTURE                          VAL R6
      164 CAPTURE                          VAL R1
      165 CAPTURE                          VAL R14
      166 CAPTURE                          VAL R17
      167 DUPCLOSURE                       R28 K49 [PROTO_3]
      168 CAPTURE                          VAL R14
      169 CAPTURE                          VAL R24
      170 CAPTURE                          VAL R9
      171 DUPCLOSURE                       R29 K50 [PROTO_4]
      172 CAPTURE                          VAL R23
      173 CAPTURE                          VAL R24
      174 CAPTURE                          VAL R2
      175 CAPTURE                          VAL R9
      176 CAPTURE                          VAL R20
      177 CAPTURE                          VAL R8
      178 CAPTURE                          VAL R14
      179 CAPTURE                          VAL R28
      180 CAPTURE                          VAL R21
      181 DUPCLOSURE                       R30 K51 [PROTO_6]
      182 CAPTURE                          VAL R6
      183 CAPTURE                          VAL R10
      184 CAPTURE                          VAL R12
      185 CAPTURE                          VAL R22
      186 CAPTURE                          VAL R23
      187 CAPTURE                          VAL R24
      188 CAPTURE                          VAL R2
      189 CAPTURE                          VAL R9
      190 CAPTURE                          VAL R20
      191 CAPTURE                          VAL R8
      192 CAPTURE                          VAL R21
      193 CAPTURE                          VAL R11
      194 DUPCLOSURE                       R31 K52 [PROTO_9]
      195 CAPTURE                          VAL R26
      196 CAPTURE                          VAL R5
      197 CAPTURE                          VAL R6
      198 CAPTURE                          VAL R10
      199 CAPTURE                          VAL R13
      200 CAPTURE                          VAL R23
      201 CAPTURE                          VAL R24
      202 CAPTURE                          VAL R2
      203 CAPTURE                          VAL R9
      204 CAPTURE                          VAL R20
      205 CAPTURE                          VAL R21
      206 CAPTURE                          VAL R19
      207 CAPTURE                          VAL R4
      208 DUPCLOSURE                       R32 K53 [PROTO_13]
      209 CAPTURE                          VAL R6
      210 CAPTURE                          VAL R15
      211 CAPTURE                          VAL R5
      212 CAPTURE                          VAL R27
      213 CAPTURE                          VAL R10
      214 CAPTURE                          VAL R24
      215 CAPTURE                          VAL R31
      216 CAPTURE                          VAL R18
      217 CAPTURE                          VAL R4
      218 CAPTURE                          VAL R29
      219 DUPCLOSURE                       R33 K54 [PROTO_16]
      220 CAPTURE                          VAL R12
      221 CAPTURE                          VAL R22
      222 CAPTURE                          VAL R6
      223 CAPTURE                          VAL R24
      224 CAPTURE                          VAL R32
      225 CAPTURE                          VAL R31
      226 CAPTURE                          VAL R30
      227 DUPTABLE                         R34 K57 [{["Type"] = "TextureGen", ["ContentWidget"]}]
      228 GETTABLEKS                       R35 R6 K58 ["memo"]
      230 MOVE                             R36 R33
      231 CALL                             R35 1 1
      232 SETTABLEKS                       R35 R34 K56 ["ContentWidget"]
      234 RETURN                           R34 1
