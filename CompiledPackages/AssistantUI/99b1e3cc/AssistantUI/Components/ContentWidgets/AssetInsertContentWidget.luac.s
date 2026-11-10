PROTO_0:
        0 DUPTABLE                         R0 K4 [{"FailedToInsert", "Preparing", "Inserting", "ToolCallRejected"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K5 ["AssetInsert"]
        3 LOADK                            R4 K0 ["FailedToInsert"]
        4 NAMECALL                         R1 R1 K6 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["FailedToInsert"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K5 ["AssetInsert"]
       11 LOADK                            R4 K1 ["Preparing"]
       12 NAMECALL                         R1 R1 K6 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["Preparing"]
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K5 ["AssetInsert"]
       19 LOADK                            R4 K2 ["Inserting"]
       20 DUPTABLE                         R5 K8 [{"query"}]
       21 GETUPVAL                         R6 1
       22 SETTABLEKS                       R6 R5 K7 ["query"]
       24 NAMECALL                         R1 R1 K6 ["getText"]
       26 CALL                             R1 4 1
       27 SETTABLEKS                       R1 R0 K2 ["Inserting"]
       29 GETUPVAL                         R1 0
       30 LOADK                            R3 K9 ["ToolConfirmation"]
       31 LOADK                            R4 K3 ["ToolCallRejected"]
       32 DUPTABLE                         R5 K11 [{"toolName"}]
       33 GETUPVAL                         R6 2
       34 SETTABLEKS                       R6 R5 K10 ["toolName"]
       36 NAMECALL                         R1 R1 K6 ["getText"]
       38 CALL                             R1 4 1
       39 SETTABLEKS                       R1 R0 K3 ["ToolCallRejected"]
       41 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["toolUse"]
        2 GETTABLEKS                       R2 R0 K1 ["toolResult"]
        4 JUMPIFNOT                        R1 ; [+3]
        5 GETTABLEKS                       R3 R1 K2 ["name"]
        7 JUMPIF                           R3 ; [+1]
        8 LOADK                            R3 K3 [""]
        9 JUMPIFNOT                        R1 ; [+3]
       10 GETTABLEKS                       R4 R1 K4 ["input"]
       12 JUMPIF                           R4 ; [+1]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R6 R4 K5 ["assetName"]
       16 ORK                              R5 R6 K3 [""]
       17 JUMPIFNOT                        R2 ; [+3]
       18 GETTABLEKS                       R6 R2 K6 ["structuredContent"]
       20 JUMPIF                           R6 ; [+1]
       21 LOADNIL                          R6
       22 GETUPVAL                         R7 1
       23 GETTABLEKS                       R7 R7 K7 ["useMemo"]
       25 NEWCLOSURE                       R8 P0
       26 CAPTURE                          UPVAL U2
       27 CAPTURE                          VAL R5
       28 CAPTURE                          VAL R3
       29 NEWTABLE                         R9 0 3
       31 GETUPVAL                         R10 2
       32 GETTABLEKS                       R10 R10 K8 ["locale"]
       34 MOVE                             R11 R5
       35 MOVE                             R12 R3
       36 SETLIST                          R9 R10 3 [1]
       38 CALL                             R7 2 1
       39 LOADB                            R8 1
       40 LOADNIL                          R9
       41 JUMPIFNOT                        R2 ; [+19]
       42 LOADB                            R8 0
       43 JUMPIFNOT                        R6 ; [+6]
       44 GETTABLEKS                       R10 R6 K9 ["rejected"]
       46 JUMPIFNOT                        R10 ; [+3]
       47 GETTABLEKS                       R9 R7 K10 ["ToolCallRejected"]
       49 JUMP                             ; [+17]
       50 JUMPIFNOT                        R6 ; [+7]
       51 GETTABLEKS                       R10 R6 K11 ["pending"]
       53 JUMPIFNOT                        R10 ; [+4]
       54 LOADB                            R8 1
       55 GETTABLEKS                       R9 R7 K12 ["Inserting"]
       57 JUMP                             ; [+9]
       58 GETTABLEKS                       R9 R7 K13 ["FailedToInsert"]
       60 JUMP                             ; [+6]
       61 JUMPIFNOT                        R1 ; [+3]
       62 GETTABLEKS                       R9 R7 K12 ["Inserting"]
       64 JUMP                             ; [+2]
       65 GETTABLEKS                       R9 R7 K14 ["Preparing"]
       67 GETUPVAL                         R10 3
       68 CALL                             R10 0 1
       69 GETUPVAL                         R11 4
       70 GETUPVAL                         R12 5
       71 GETTABLEKS                       R12 R12 K15 ["Root"]
       73 DUPTABLE                         R13 K21 [{["LayoutOrder"], ["expanded"] = False, ["contentId"], ["editThisContent"]}]
       74 GETTABLEKS                       R14 R0 K16 ["LayoutOrder"]
       76 SETTABLEKS                       R14 R13 K16 ["LayoutOrder"]
       78 GETTABLEKS                       R14 R0 K19 ["contentId"]
       80 SETTABLEKS                       R14 R13 K19 ["contentId"]
       82 GETTABLEKS                       R14 R0 K20 ["editThisContent"]
       84 SETTABLEKS                       R14 R13 K20 ["editThisContent"]
       86 DUPTABLE                         R14 K23 [{"Header"}]
       87 GETUPVAL                         R15 4
       88 GETUPVAL                         R16 5
       89 GETTABLEKS                       R16 R16 K22 ["Header"]
       91 DUPTABLE                         R17 K27 [{["IsDisabled"] = True, ["LayoutOrder"], ["testId"]}]
       92 MOVE                             R18 R10
       93 CALL                             R18 0 1
       94 SETTABLEKS                       R18 R17 K16 ["LayoutOrder"]
       96 GETUPVAL                         R18 6
       97 GETTABLEKS                       R18 R18 K28 ["AssetInsert"]
       99 GETTABLEKS                       R18 R18 K29 ["Expand"]
      101 SETTABLEKS                       R18 R17 K26 ["testId"]
      103 DUPTABLE                         R18 K31 [{"Text"}]
      104 GETUPVAL                         R19 4
      105 GETUPVAL                         R20 7
      106 DUPTABLE                         R21 K34 [{["tag"] = "size-0-full auto-x text-label-small text-align-y-center text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
      107 SETTABLEKS                       R9 R21 K30 ["Text"]
      109 MOVE                             R22 R10
      110 CALL                             R22 0 1
      111 SETTABLEKS                       R22 R21 K16 ["LayoutOrder"]
      113 DUPTABLE                         R22 K36 [{"Shimmer"}]
      114 JUMPIFNOT                        R8 ; [+4]
      115 GETUPVAL                         R23 4
      116 GETUPVAL                         R24 8
      117 CALL                             R23 1 1
      118 JUMP                             ; [+1]
      119 LOADNIL                          R23
      120 SETTABLEKS                       R23 R22 K35 ["Shimmer"]
      122 CALL                             R19 3 1
      123 SETTABLEKS                       R19 R18 K30 ["Text"]
      125 CALL                             R15 3 1
      126 SETTABLEKS                       R15 R14 K22 ["Header"]
      128 CALL                             R11 3 -1
      129 RETURN                           R11 -1

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
       37 LOADK                            R3 K9 ["AssetInsert"]
       38 LOADK                            R4 K10 ["Inserted"]
       39 DUPTABLE                         R5 K8 [{"name"}]
       40 GETUPVAL                         R7 3
       41 JUMPIFNOT                        R7 ; [+2]
       42 LOADK                            R6 K11 ["{CHIP}"]
       43 JUMP                             ; [+1]
       44 MOVE                             R6 R0
       45 SETTABLEKS                       R6 R5 K2 ["name"]
       47 NAMECALL                         R1 R1 K5 ["getText"]
       49 CALL                             R1 4 1
       50 GETUPVAL                         R2 3
       51 JUMPIFNOT                        R2 ; [+16]
       52 LOADK                            R4 K12 ["[ ]*{CHIP}[ ]*"]
       53 LOADK                            R5 K13 [" "]
       54 NAMECALL                         R2 R1 K14 ["gsub"]
       56 CALL                             R2 3 1
       57 LOADK                            R4 K15 ["^%s+"]
       58 LOADK                            R5 K16 [""]
       59 NAMECALL                         R2 R2 K14 ["gsub"]
       61 CALL                             R2 3 1
       62 LOADK                            R4 K17 ["%s+$"]
       63 LOADK                            R5 K16 [""]
       64 NAMECALL                         R2 R2 K14 ["gsub"]
       66 CALL                             R2 3 1
       67 MOVE                             R1 R2
       68 DUPTABLE                         R2 K19 [{"DisplayName", "Inserted"}]
       69 SETTABLEKS                       R0 R2 K18 ["DisplayName"]
       71 SETTABLEKS                       R1 R2 K10 ["Inserted"]
       73 RETURN                           R2 1

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
       20 GETTABLEKS                       R6 R4 K5 ["assetName"]
       22 JUMPIF                           R6 ; [+4]
       23 GETTABLEKS                       R6 R3 K5 ["assetName"]
       25 JUMPIF                           R6 ; [+1]
       26 LOADK                            R6 K6 [""]
       27 GETUPVAL                         R7 1
       28 GETTABLEKS                       R7 R7 K7 ["useContext"]
       30 GETUPVAL                         R8 2
       31 GETTABLEKS                       R8 R8 K8 ["Context"]
       33 CALL                             R7 1 1
       34 GETUPVAL                         R8 2
       35 GETTABLEKS                       R8 R8 K9 ["useTag"]
       37 MOVE                             R9 R5
       38 DUPTABLE                         R10 K13 [{["includeCount"] = True, ["includeClassName"] = True}]
       39 CALL                             R8 2 1
       40 JUMPIFNOT                        R8 ; [+3]
       41 GETTABLEKS                       R9 R8 K14 ["count"]
       43 JUMPIF                           R9 ; [+1]
       44 LOADN                            R9 0
       45 JUMPIFNOT                        R8 ; [+3]
       46 GETTABLEKS                       R10 R8 K15 ["className"]
       48 JUMPIF                           R10 ; [+1]
       49 LOADNIL                          R10
       50 LOADN                            R12 0
       51 JUMPIFLT                         R12 R9 ; [+2]
       53 LOADB                            R11 0 +1
       54 LOADB                            R11 1
       55 GETUPVAL                         R12 1
       56 GETTABLEKS                       R12 R12 K16 ["useCallback"]
       58 NEWCLOSURE                       R13 P0
       59 CAPTURE                          VAL R7
       60 CAPTURE                          VAL R5
       61 NEWTABLE                         R14 0 2
       63 MOVE                             R15 R7
       64 MOVE                             R16 R5
       65 SETLIST                          R14 R15 2 [1]
       67 CALL                             R12 2 1
       68 GETUPVAL                         R13 1
       69 GETTABLEKS                       R13 R13 K17 ["useMemo"]
       71 NEWCLOSURE                       R14 P1
       72 CAPTURE                          VAL R9
       73 CAPTURE                          UPVAL U3
       74 CAPTURE                          VAL R6
       75 CAPTURE                          VAL R11
       76 NEWTABLE                         R15 0 4
       78 GETUPVAL                         R16 3
       79 GETTABLEKS                       R16 R16 K18 ["locale"]
       81 MOVE                             R17 R6
       82 MOVE                             R18 R9
       83 MOVE                             R19 R11
       84 SETLIST                          R15 R16 4 [1]
       86 CALL                             R13 2 1
       87 GETUPVAL                         R14 4
       88 MOVE                             R15 R10
       89 CALL                             R14 1 1
       90 GETUPVAL                         R15 5
       91 CALL                             R15 0 1
       92 GETUPVAL                         R16 6
       93 GETUPVAL                         R17 7
       94 GETTABLEKS                       R17 R17 K19 ["Root"]
       96 DUPTABLE                         R18 K25 [{["LayoutOrder"], ["expanded"] = False, ["contentId"], ["editThisContent"]}]
       97 GETTABLEKS                       R19 R0 K20 ["LayoutOrder"]
       99 SETTABLEKS                       R19 R18 K20 ["LayoutOrder"]
      101 GETTABLEKS                       R19 R0 K23 ["contentId"]
      103 SETTABLEKS                       R19 R18 K23 ["contentId"]
      105 GETTABLEKS                       R19 R0 K24 ["editThisContent"]
      107 SETTABLEKS                       R19 R18 K24 ["editThisContent"]
      109 DUPTABLE                         R19 K27 [{"Header"}]
      110 GETUPVAL                         R20 6
      111 GETUPVAL                         R21 7
      112 GETTABLEKS                       R21 R21 K26 ["Header"]
      114 DUPTABLE                         R22 K30 [{["IsDisabled"] = True, ["LayoutOrder"], ["testId"]}]
      115 MOVE                             R23 R15
      116 CALL                             R23 0 1
      117 SETTABLEKS                       R23 R22 K20 ["LayoutOrder"]
      119 GETUPVAL                         R23 8
      120 GETTABLEKS                       R23 R23 K31 ["AssetInsert"]
      122 GETTABLEKS                       R23 R23 K32 ["Expand"]
      124 SETTABLEKS                       R23 R22 K29 ["testId"]
      126 DUPTABLE                         R23 K35 [{"Text", "AssetLink"}]
      127 GETUPVAL                         R24 6
      128 GETUPVAL                         R25 9
      129 DUPTABLE                         R26 K37 [{["tag"] = "size-0-full auto-x text-label-small text-align-y-center text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
      130 GETTABLEKS                       R27 R13 K38 ["Inserted"]
      132 SETTABLEKS                       R27 R26 K33 ["Text"]
      134 MOVE                             R27 R15
      135 CALL                             R27 0 1
      136 SETTABLEKS                       R27 R26 K20 ["LayoutOrder"]
      138 CALL                             R24 2 1
      139 SETTABLEKS                       R24 R23 K33 ["Text"]
      141 MOVE                             R24 R11
      142 JUMPIFNOT                        R24 ; [+27]
      143 GETUPVAL                         R24 6
      144 GETUPVAL                         R25 10
      145 DUPTABLE                         R26 K44 [{["text"], ["leading"], ["onActivated"], ["isChecked"] = False, ["size"], ["LayoutOrder"]}]
      146 GETTABLEKS                       R27 R13 K45 ["DisplayName"]
      148 SETTABLEKS                       R27 R26 K39 ["text"]
      150 GETTABLEKS                       R27 R14 K46 ["Image"]
      152 SETTABLEKS                       R27 R26 K40 ["leading"]
      154 SETTABLEKS                       R12 R26 K41 ["onActivated"]
      156 GETUPVAL                         R27 11
      157 GETTABLEKS                       R27 R27 K47 ["Enums"]
      159 GETTABLEKS                       R27 R27 K48 ["ChipSize"]
      161 GETTABLEKS                       R27 R27 K49 ["Small"]
      163 SETTABLEKS                       R27 R26 K43 ["size"]
      165 MOVE                             R27 R15
      166 CALL                             R27 0 1
      167 SETTABLEKS                       R27 R26 K20 ["LayoutOrder"]
      169 CALL                             R24 2 1
      170 SETTABLEKS                       R24 R23 K34 ["AssetLink"]
      172 CALL                             R20 3 1
      173 SETTABLEKS                       R20 R19 K26 ["Header"]
      175 CALL                             R16 3 -1
      176 RETURN                           R16 -1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["toolResult"]
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETTABLEKS                       R2 R1 K1 ["structuredContent"]
        5 JUMPIF                           R2 ; [+1]
        6 LOADNIL                          R2
        7 MOVE                             R3 R1
        8 JUMPIFNOT                        R3 ; [+15]
        9 GETTABLEKS                       R4 R1 K2 ["isError"]
       11 NOT                              R3 R4
       12 JUMPIFNOT                        R3 ; [+11]
       13 MOVE                             R4 R2
       14 JUMPIFNOT                        R4 ; [+2]
       15 GETTABLEKS                       R4 R2 K3 ["pending"]
       17 NOT                              R3 R4
       18 JUMPIFNOT                        R3 ; [+5]
       19 MOVE                             R4 R2
       20 JUMPIFNOT                        R4 ; [+2]
       21 GETTABLEKS                       R4 R2 K4 ["rejected"]
       23 NOT                              R3 R4
       24 JUMPIFNOT                        R3 ; [+5]
       25 GETUPVAL                         R4 0
       26 GETUPVAL                         R5 1
       27 MOVE                             R6 R0
       28 CALL                             R4 2 -1
       29 RETURN                           R4 -1
       30 GETUPVAL                         R4 0
       31 GETUPVAL                         R5 2
       32 MOVE                             R6 R0
       33 CALL                             R4 2 -1
       34 RETURN                           R4 -1

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
       76 GETTABLEKS                       R11 R0 K22 ["Hooks"]
       78 GETTABLEKS                       R11 R11 K23 ["useClassIcon"]
       80 CALL                             R10 1 1
       81 GETTABLEKS                       R11 R2 K24 ["Chip"]
       83 GETTABLEKS                       R12 R2 K25 ["Text"]
       85 GETTABLEKS                       R13 R5 K26 ["createNextOrder"]
       87 GETTABLEKS                       R14 R4 K27 ["createElement"]
       89 NEWTABLE                         R15 0 0
       91 DUPCLOSURE                       R16 K28 [PROTO_1]
       92 CAPTURE                          VAL R15
       93 CAPTURE                          VAL R4
       94 CAPTURE                          VAL R8
       95 CAPTURE                          VAL R13
       96 CAPTURE                          VAL R14
       97 CAPTURE                          VAL R1
       98 CAPTURE                          VAL R7
       99 CAPTURE                          VAL R12
      100 CAPTURE                          VAL R6
      101 DUPCLOSURE                       R17 K29 [PROTO_4]
      102 CAPTURE                          VAL R15
      103 CAPTURE                          VAL R4
      104 CAPTURE                          VAL R3
      105 CAPTURE                          VAL R8
      106 CAPTURE                          VAL R10
      107 CAPTURE                          VAL R13
      108 CAPTURE                          VAL R14
      109 CAPTURE                          VAL R1
      110 CAPTURE                          VAL R7
      111 CAPTURE                          VAL R12
      112 CAPTURE                          VAL R11
      113 CAPTURE                          VAL R2
      114 DUPCLOSURE                       R18 K30 [PROTO_5]
      115 CAPTURE                          VAL R14
      116 CAPTURE                          VAL R17
      117 CAPTURE                          VAL R16
      118 DUPTABLE                         R19 K34 [{["Type"] = "AssetInsert", ["ContentWidget"]}]
      119 GETTABLEKS                       R20 R4 K35 ["memo"]
      121 MOVE                             R21 R18
      122 CALL                             R20 1 1
      123 SETTABLEKS                       R20 R19 K33 ["ContentWidget"]
      125 RETURN                           R19 1
