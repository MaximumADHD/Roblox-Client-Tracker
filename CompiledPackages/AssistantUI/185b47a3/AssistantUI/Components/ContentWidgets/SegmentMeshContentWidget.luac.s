PROTO_0:
        0 DUPTABLE                         R0 K4 [{"Preparing", "Working", "FailedToSegment", "ToolRejected"}]
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
       19 LOADK                            R4 K7 ["Failed"]
       20 NAMECALL                         R1 R1 K6 ["getText"]
       22 CALL                             R1 3 1
       23 SETTABLEKS                       R1 R0 K2 ["FailedToSegment"]
       25 GETUPVAL                         R1 0
       26 LOADK                            R3 K8 ["ToolConfirmation"]
       27 LOADK                            R4 K9 ["ToolCallRejected"]
       28 DUPTABLE                         R5 K11 [{"toolName"}]
       29 GETUPVAL                         R6 1
       30 SETTABLEKS                       R6 R5 K10 ["toolName"]
       32 NAMECALL                         R1 R1 K6 ["getText"]
       34 CALL                             R1 4 1
       35 SETTABLEKS                       R1 R0 K3 ["ToolRejected"]
       37 RETURN                           R0 1

PROTO_1:
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
       76 GETTABLEKS                       R10 R6 K15 ["FailedToSegment"]
       78 JUMP                             ; [+10]
       79 GETUPVAL                         R11 3
       80 GETTABLEKS                       R11 R11 K10 ["Running"]
       82 JUMPIFNOTEQ                      R7 R11 ; [+4]
       84 GETTABLEKS                       R10 R6 K16 ["Working"]
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
       99 GETTABLEKS                       R14 R14 K17 ["Root"]
      101 DUPTABLE                         R15 K22 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
      102 GETTABLEKS                       R16 R0 K18 ["LayoutOrder"]
      104 SETTABLEKS                       R16 R15 K18 ["LayoutOrder"]
      106 SETTABLEKS                       R11 R15 K19 ["expanded"]
      108 GETTABLEKS                       R16 R0 K20 ["contentId"]
      110 SETTABLEKS                       R16 R15 K20 ["contentId"]
      112 GETTABLEKS                       R16 R0 K21 ["editThisContent"]
      114 SETTABLEKS                       R16 R15 K21 ["editThisContent"]
      116 DUPTABLE                         R16 K25 [{"Header", "Content"}]
      117 GETUPVAL                         R17 5
      118 GETUPVAL                         R18 6
      119 GETTABLEKS                       R18 R18 K23 ["Header"]
      121 DUPTABLE                         R19 K28 [{"IsDisabled", "LayoutOrder", "testId"}]
      122 NOT                              R20 R11
      123 SETTABLEKS                       R20 R19 K26 ["IsDisabled"]
      125 MOVE                             R20 R12
      126 CALL                             R20 0 1
      127 SETTABLEKS                       R20 R19 K18 ["LayoutOrder"]
      129 GETUPVAL                         R20 7
      130 GETTABLEKS                       R20 R20 K29 ["SegmentMesh"]
      132 GETTABLEKS                       R20 R20 K30 ["Expand"]
      134 SETTABLEKS                       R20 R19 K27 ["testId"]
      136 DUPTABLE                         R20 K32 [{"Text"}]
      137 GETUPVAL                         R21 5
      138 GETUPVAL                         R22 8
      139 DUPTABLE                         R23 K35 [{["tag"] = "size-0-full auto-x text-label-small text-align-y-center text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
      140 SETTABLEKS                       R10 R23 K31 ["Text"]
      142 MOVE                             R24 R12
      143 CALL                             R24 0 1
      144 SETTABLEKS                       R24 R23 K18 ["LayoutOrder"]
      146 DUPTABLE                         R24 K37 [{"Shimmer"}]
      147 JUMPIFNOT                        R8 ; [+4]
      148 GETUPVAL                         R25 5
      149 GETUPVAL                         R26 9
      150 CALL                             R25 1 1
      151 JUMP                             ; [+1]
      152 LOADNIL                          R25
      153 SETTABLEKS                       R25 R24 K36 ["Shimmer"]
      155 CALL                             R21 3 1
      156 SETTABLEKS                       R21 R20 K31 ["Text"]
      158 CALL                             R17 3 1
      159 SETTABLEKS                       R17 R16 K23 ["Header"]
      161 JUMPIFNOT                        R11 ; [+43]
      162 GETUPVAL                         R17 5
      163 GETUPVAL                         R18 6
      164 GETTABLEKS                       R18 R18 K24 ["Content"]
      166 DUPTABLE                         R19 K39 [{["tag"] = "col fill gap-small size-0-0 auto-y", ["LayoutOrder"]}]
      167 MOVE                             R20 R12
      168 CALL                             R20 0 1
      169 SETTABLEKS                       R20 R19 K18 ["LayoutOrder"]
      171 DUPTABLE                         R20 K41 [{"ErrorDetail"}]
      172 GETUPVAL                         R21 5
      173 GETUPVAL                         R22 10
      174 DUPTABLE                         R23 K43 [{["tag"] = "size-full-0 auto-y padding-small radius-small bg-shift-200", ["LayoutOrder"]}]
      175 MOVE                             R24 R12
      176 CALL                             R24 0 1
      177 SETTABLEKS                       R24 R23 K18 ["LayoutOrder"]
      179 DUPTABLE                         R24 K45 [{"ErrorText"}]
      180 GETUPVAL                         R25 5
      181 GETUPVAL                         R26 8
      182 DUPTABLE                         R27 K48 [{["Text"], ["fontStyle"], ["tag"] = "size-full-0 auto-y text-wrap text-align-x-left content-muted", ["LayoutOrder"]}]
      183 SETTABLEKS                       R5 R27 K31 ["Text"]
      185 DUPTABLE                         R28 K52 [{["Font"], ["FontSize"] = 12}]
      186 GETUPVAL                         R29 11
      187 GETTABLEKS                       R29 R29 K53 ["CODE_FONT"]
      189 SETTABLEKS                       R29 R28 K49 ["Font"]
      191 SETTABLEKS                       R28 R27 K46 ["fontStyle"]
      193 MOVE                             R28 R12
      194 CALL                             R28 0 1
      195 SETTABLEKS                       R28 R27 K18 ["LayoutOrder"]
      197 CALL                             R25 2 1
      198 SETTABLEKS                       R25 R24 K44 ["ErrorText"]
      200 CALL                             R21 3 1
      201 SETTABLEKS                       R21 R20 K40 ["ErrorDetail"]
      203 CALL                             R17 3 1
      204 JUMP                             ; [+1]
      205 LOADNIL                          R17
      206 SETTABLEKS                       R17 R16 K24 ["Content"]
      208 CALL                             R13 3 -1
      209 RETURN                           R13 -1

PROTO_2:
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

PROTO_3:
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

PROTO_4:
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
       23 GETTABLEKS                       R6 R3 K6 ["parts"]
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
      124 GETTABLEKS                       R23 R23 K31 ["SegmentMesh"]
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

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["deriveToolStatus"]
        3 GETTABLEKS                       R2 R0 K1 ["toolUse"]
        5 GETTABLEKS                       R3 R0 K2 ["toolResult"]
        7 CALL                             R1 2 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["Completed"]
       11 JUMPIFNOTEQ                      R1 R2 ; [+6]
       13 GETUPVAL                         R2 2
       14 GETUPVAL                         R3 3
       15 MOVE                             R4 R0
       16 CALL                             R2 2 -1
       17 RETURN                           R2 -1
       18 GETUPVAL                         R2 2
       19 GETUPVAL                         R3 4
       20 MOVE                             R4 R0
       21 CALL                             R2 2 -1
       22 RETURN                           R2 -1

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
       25 GETTABLEKS                       R4 R4 K10 ["Contexts"]
       27 GETTABLEKS                       R4 R4 K11 ["Actions"]
       29 GETTABLEKS                       R4 R4 K12 ["InstanceActionsContext"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Parent"]
       36 GETTABLEKS                       R5 R5 K13 ["React"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K8 ["Parent"]
       43 GETTABLEKS                       R6 R6 K14 ["ReactUtils"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K6 ["Components"]
       50 GETTABLEKS                       R7 R7 K15 ["ShimmerGradient"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K16 ["Util"]
       57 GETTABLEKS                       R8 R8 K17 ["TestIds"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K18 ["Resources"]
       64 GETTABLEKS                       R9 R9 K19 ["Localization"]
       66 GETTABLEKS                       R9 R9 K20 ["Translator"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R10 R0 K21 ["Types"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R11 R0 K16 ["Util"]
       78 GETTABLEKS                       R11 R11 K22 ["WidgetUtils"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R12 R0 K23 ["Hooks"]
       85 GETTABLEKS                       R12 R12 K24 ["useClassIcon"]
       87 CALL                             R11 1 1
       88 GETTABLEKS                       R12 R2 K25 ["Chip"]
       90 GETTABLEKS                       R13 R2 K26 ["Text"]
       92 GETTABLEKS                       R14 R2 K27 ["View"]
       94 GETTABLEKS                       R15 R10 K28 ["ToolStatus"]
       96 GETTABLEKS                       R16 R5 K29 ["createNextOrder"]
       98 GETTABLEKS                       R17 R4 K30 ["createElement"]
      100 NEWTABLE                         R18 0 0
      102 DUPCLOSURE                       R19 K31 [PROTO_1]
      103 CAPTURE                          VAL R4
      104 CAPTURE                          VAL R8
      105 CAPTURE                          VAL R10
      106 CAPTURE                          VAL R15
      107 CAPTURE                          VAL R16
      108 CAPTURE                          VAL R17
      109 CAPTURE                          VAL R1
      110 CAPTURE                          VAL R7
      111 CAPTURE                          VAL R13
      112 CAPTURE                          VAL R6
      113 CAPTURE                          VAL R14
      114 CAPTURE                          VAL R9
      115 DUPCLOSURE                       R20 K32 [PROTO_4]
      116 CAPTURE                          VAL R18
      117 CAPTURE                          VAL R3
      118 CAPTURE                          VAL R4
      119 CAPTURE                          VAL R8
      120 CAPTURE                          VAL R11
      121 CAPTURE                          VAL R16
      122 CAPTURE                          VAL R17
      123 CAPTURE                          VAL R1
      124 CAPTURE                          VAL R7
      125 CAPTURE                          VAL R13
      126 CAPTURE                          VAL R14
      127 CAPTURE                          VAL R12
      128 CAPTURE                          VAL R2
      129 DUPCLOSURE                       R21 K33 [PROTO_5]
      130 CAPTURE                          VAL R10
      131 CAPTURE                          VAL R15
      132 CAPTURE                          VAL R17
      133 CAPTURE                          VAL R20
      134 CAPTURE                          VAL R19
      135 DUPTABLE                         R22 K39 [{["Type"] = "SegmentMesh", ["ContentWidget"], ["Serialization"] = }]
      136 GETTABLEKS                       R23 R4 K40 ["memo"]
      138 MOVE                             R24 R21
      139 CALL                             R23 1 1
      140 SETTABLEKS                       R23 R22 K36 ["ContentWidget"]
      142 RETURN                           R22 1
