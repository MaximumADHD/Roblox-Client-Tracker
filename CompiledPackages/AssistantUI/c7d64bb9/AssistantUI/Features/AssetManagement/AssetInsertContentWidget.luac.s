PROTO_0:
        0 DUPTABLE                         R0 K3 [{"FailedToGenerate", "Preparing", "Inserting"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K4 ["AssetInsert"]
        3 LOADK                            R4 K5 ["FailedToInsert"]
        4 NAMECALL                         R1 R1 K6 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["FailedToGenerate"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K4 ["AssetInsert"]
       11 LOADK                            R4 K1 ["Preparing"]
       12 NAMECALL                         R1 R1 K6 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["Preparing"]
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K4 ["AssetInsert"]
       19 LOADK                            R4 K2 ["Inserting"]
       20 DUPTABLE                         R5 K8 [{"query"}]
       21 GETUPVAL                         R6 1
       22 SETTABLEKS                       R6 R5 K7 ["query"]
       24 NAMECALL                         R1 R1 K6 ["getText"]
       26 CALL                             R1 4 1
       27 SETTABLEKS                       R1 R0 K2 ["Inserting"]
       29 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["mode"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["Inserting"]
        5 JUMPIFNOTEQ                      R2 R3 ; [+4]
        7 GETTABLEKS                       R1 R0 K2 ["displayName"]
        9 JUMP                             ; [+1]
       10 LOADK                            R1 K3 [""]
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K4 ["useMemo"]
       14 NEWCLOSURE                       R3 P0
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          VAL R1
       17 NEWTABLE                         R4 0 2
       19 GETUPVAL                         R5 2
       20 GETTABLEKS                       R5 R5 K5 ["locale"]
       22 MOVE                             R6 R1
       23 SETLIST                          R4 R5 2 [1]
       25 CALL                             R2 2 1
       26 GETUPVAL                         R4 3
       27 CALL                             R4 0 1
       28 JUMPIFNOT                        R4 ; [+22]
       29 GETTABLEKS                       R4 R0 K6 ["isError"]
       31 NOT                              R3 R4
       32 JUMPIFNOT                        R3 ; [+21]
       33 LOADB                            R3 1
       34 GETTABLEKS                       R4 R0 K0 ["mode"]
       36 GETUPVAL                         R5 0
       37 GETTABLEKS                       R5 R5 K7 ["Preparing"]
       39 JUMPIFEQ                         R4 R5 ; [+14]
       41 GETTABLEKS                       R4 R0 K0 ["mode"]
       43 GETUPVAL                         R5 0
       44 GETTABLEKS                       R5 R5 K1 ["Inserting"]
       46 JUMPIFEQ                         R4 R5 ; [+2]
       48 LOADB                            R3 0 +1
       49 LOADB                            R3 1
       50 JUMP                             ; [+3]
       51 GETTABLEKS                       R4 R0 K6 ["isError"]
       53 NOT                              R3 R4
       54 GETUPVAL                         R4 4
       55 CALL                             R4 0 1
       56 GETUPVAL                         R5 5
       57 GETUPVAL                         R6 6
       58 GETTABLEKS                       R6 R6 K8 ["Root"]
       60 DUPTABLE                         R7 K13 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
       61 GETTABLEKS                       R8 R0 K9 ["LayoutOrder"]
       63 SETTABLEKS                       R8 R7 K9 ["LayoutOrder"]
       65 LOADB                            R8 0
       66 SETTABLEKS                       R8 R7 K10 ["expanded"]
       68 GETTABLEKS                       R8 R0 K11 ["contentId"]
       70 SETTABLEKS                       R8 R7 K11 ["contentId"]
       72 GETTABLEKS                       R8 R0 K12 ["editThisContent"]
       74 SETTABLEKS                       R8 R7 K12 ["editThisContent"]
       76 DUPTABLE                         R8 K15 [{"Header"}]
       77 GETUPVAL                         R9 5
       78 GETUPVAL                         R10 6
       79 GETTABLEKS                       R10 R10 K14 ["Header"]
       81 DUPTABLE                         R11 K18 [{"IsDisabled", "LayoutOrder", "testId"}]
       82 LOADB                            R12 1
       83 SETTABLEKS                       R12 R11 K16 ["IsDisabled"]
       85 MOVE                             R12 R4
       86 CALL                             R12 0 1
       87 SETTABLEKS                       R12 R11 K9 ["LayoutOrder"]
       89 GETUPVAL                         R12 7
       90 GETTABLEKS                       R12 R12 K19 ["AssetInsert"]
       92 GETTABLEKS                       R12 R12 K20 ["Expand"]
       94 SETTABLEKS                       R12 R11 K17 ["testId"]
       96 DUPTABLE                         R12 K22 [{"Text"}]
       97 GETUPVAL                         R13 5
       98 GETUPVAL                         R14 8
       99 DUPTABLE                         R15 K24 [{"tag", "Text", "LayoutOrder"}]
      100 LOADK                            R16 K25 ["size-0-full auto-x text-label-small content-default text-truncate-end text-align-y-center"]
      101 SETTABLEKS                       R16 R15 K23 ["tag"]
      103 GETTABLEKS                       R17 R0 K6 ["isError"]
      105 JUMPIFNOT                        R17 ; [+3]
      106 GETTABLEKS                       R16 R2 K26 ["FailedToGenerate"]
      108 JUMP                             ; [+12]
      109 GETTABLEKS                       R17 R0 K0 ["mode"]
      111 GETUPVAL                         R18 0
      112 GETTABLEKS                       R18 R18 K1 ["Inserting"]
      114 JUMPIFNOTEQ                      R17 R18 ; [+4]
      116 GETTABLEKS                       R16 R2 K1 ["Inserting"]
      118 JUMP                             ; [+2]
      119 GETTABLEKS                       R16 R2 K7 ["Preparing"]
      121 SETTABLEKS                       R16 R15 K21 ["Text"]
      123 MOVE                             R16 R4
      124 CALL                             R16 0 1
      125 SETTABLEKS                       R16 R15 K9 ["LayoutOrder"]
      127 DUPTABLE                         R16 K28 [{"Shimmer"}]
      128 MOVE                             R17 R3
      129 JUMPIFNOT                        R17 ; [+3]
      130 GETUPVAL                         R17 5
      131 GETUPVAL                         R18 9
      132 CALL                             R17 1 1
      133 SETTABLEKS                       R17 R16 K27 ["Shimmer"]
      135 CALL                             R13 3 1
      136 SETTABLEKS                       R13 R12 K21 ["Text"]
      138 CALL                             R9 3 1
      139 SETTABLEKS                       R9 R8 K14 ["Header"]
      141 CALL                             R5 3 -1
      142 RETURN                           R5 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AssetInsert"]
        2 LOADK                            R3 K1 ["Inserted"]
        3 DUPTABLE                         R4 K3 [{"name"}]
        4 GETUPVAL                         R6 1
        5 GETTABLEKS                       R6 R6 K4 ["shouldShowChip"]
        7 JUMPIFNOT                        R6 ; [+2]
        8 LOADK                            R5 K5 ["{CHIP}"]
        9 JUMP                             ; [+3]
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R5 R5 K6 ["displayName"]
       13 SETTABLEKS                       R5 R4 K2 ["name"]
       15 NAMECALL                         R0 R0 K7 ["getText"]
       17 CALL                             R0 4 1
       18 GETUPVAL                         R1 1
       19 GETTABLEKS                       R1 R1 K4 ["shouldShowChip"]
       21 JUMPIFNOT                        R1 ; [+16]
       22 LOADK                            R3 K8 ["[ ]*{CHIP}[ ]*"]
       23 LOADK                            R4 K9 [" "]
       24 NAMECALL                         R1 R0 K10 ["gsub"]
       26 CALL                             R1 3 1
       27 LOADK                            R3 K11 ["^%s+"]
       28 LOADK                            R4 K12 [""]
       29 NAMECALL                         R1 R1 K10 ["gsub"]
       31 CALL                             R1 3 1
       32 LOADK                            R3 K13 ["%s+$"]
       33 LOADK                            R4 K12 [""]
       34 NAMECALL                         R1 R1 K10 ["gsub"]
       36 CALL                             R1 3 1
       37 MOVE                             R0 R1
       38 DUPTABLE                         R1 K14 [{"Inserted"}]
       39 SETTABLEKS                       R0 R1 K1 ["Inserted"]
       41 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["className"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["useMemo"]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          VAL R0
       10 NEWTABLE                         R4 0 3
       12 GETUPVAL                         R5 2
       13 GETTABLEKS                       R5 R5 K2 ["locale"]
       15 GETTABLEKS                       R6 R0 K3 ["displayName"]
       17 GETTABLEKS                       R7 R0 K4 ["shouldShowChip"]
       19 SETLIST                          R4 R5 3 [1]
       21 CALL                             R2 2 1
       22 GETUPVAL                         R3 3
       23 CALL                             R3 0 1
       24 GETUPVAL                         R4 4
       25 GETUPVAL                         R5 5
       26 GETTABLEKS                       R5 R5 K5 ["Root"]
       28 DUPTABLE                         R6 K10 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
       29 GETTABLEKS                       R7 R0 K6 ["LayoutOrder"]
       31 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
       33 LOADB                            R7 0
       34 SETTABLEKS                       R7 R6 K7 ["expanded"]
       36 GETTABLEKS                       R7 R0 K8 ["contentId"]
       38 SETTABLEKS                       R7 R6 K8 ["contentId"]
       40 GETTABLEKS                       R7 R0 K9 ["editThisContent"]
       42 SETTABLEKS                       R7 R6 K9 ["editThisContent"]
       44 DUPTABLE                         R7 K12 [{"Header"}]
       45 GETUPVAL                         R8 4
       46 GETUPVAL                         R9 5
       47 GETTABLEKS                       R9 R9 K11 ["Header"]
       49 DUPTABLE                         R10 K15 [{"IsDisabled", "LayoutOrder", "testId"}]
       50 LOADB                            R11 1
       51 SETTABLEKS                       R11 R10 K13 ["IsDisabled"]
       53 MOVE                             R11 R3
       54 CALL                             R11 0 1
       55 SETTABLEKS                       R11 R10 K6 ["LayoutOrder"]
       57 GETUPVAL                         R11 6
       58 GETTABLEKS                       R11 R11 K16 ["AssetInsert"]
       60 GETTABLEKS                       R11 R11 K17 ["Expand"]
       62 SETTABLEKS                       R11 R10 K14 ["testId"]
       64 DUPTABLE                         R11 K20 [{"Text", "AssetLink"}]
       65 GETUPVAL                         R12 4
       66 GETUPVAL                         R13 7
       67 DUPTABLE                         R14 K22 [{"tag", "Text", "LayoutOrder"}]
       68 LOADK                            R15 K23 ["size-0-full auto-x text-label-small content-default text-truncate-end text-align-y-center"]
       69 SETTABLEKS                       R15 R14 K21 ["tag"]
       71 GETTABLEKS                       R15 R2 K24 ["Inserted"]
       73 SETTABLEKS                       R15 R14 K18 ["Text"]
       75 MOVE                             R15 R3
       76 CALL                             R15 0 1
       77 SETTABLEKS                       R15 R14 K6 ["LayoutOrder"]
       79 CALL                             R12 2 1
       80 SETTABLEKS                       R12 R11 K18 ["Text"]
       82 GETTABLEKS                       R12 R0 K4 ["shouldShowChip"]
       84 JUMPIFNOT                        R12 ; [+32]
       85 GETUPVAL                         R12 4
       86 GETUPVAL                         R13 8
       87 DUPTABLE                         R14 K30 [{"text", "leading", "onActivated", "isChecked", "size", "LayoutOrder"}]
       88 GETTABLEKS                       R15 R0 K3 ["displayName"]
       90 SETTABLEKS                       R15 R14 K25 ["text"]
       92 GETTABLEKS                       R15 R1 K31 ["Image"]
       94 SETTABLEKS                       R15 R14 K26 ["leading"]
       96 GETTABLEKS                       R15 R0 K32 ["onChipClicked"]
       98 SETTABLEKS                       R15 R14 K27 ["onActivated"]
      100 LOADB                            R15 0
      101 SETTABLEKS                       R15 R14 K28 ["isChecked"]
      103 GETUPVAL                         R15 9
      104 GETTABLEKS                       R15 R15 K33 ["Enums"]
      106 GETTABLEKS                       R15 R15 K34 ["ChipSize"]
      108 GETTABLEKS                       R15 R15 K35 ["Small"]
      110 SETTABLEKS                       R15 R14 K29 ["size"]
      112 MOVE                             R15 R3
      113 CALL                             R15 0 1
      114 SETTABLEKS                       R15 R14 K6 ["LayoutOrder"]
      116 CALL                             R12 2 1
      117 SETTABLEKS                       R12 R11 K19 ["AssetLink"]
      119 CALL                             R8 3 1
      120 SETTABLEKS                       R8 R7 K11 ["Header"]
      122 CALL                             R4 3 -1
      123 RETURN                           R4 -1

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["toolResult"]
        2 JUMPIFNOT                        R2 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["toolResult"]
        5 GETTABLEKS                       R1 R1 K1 ["isError"]
        7 JUMPIF                           R1 ; [+2]
        8 GETTABLEKS                       R1 R0 K1 ["isError"]
       10 GETTABLEKS                       R2 R0 K2 ["mode"]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K3 ["Inserted"]
       15 JUMPIFNOTEQ                      R2 R3 ; [+7]
       17 JUMPIF                           R1 ; [+5]
       18 GETUPVAL                         R2 1
       19 GETUPVAL                         R3 2
       20 MOVE                             R4 R0
       21 CALL                             R2 2 -1
       22 RETURN                           R2 -1
       23 GETUPVAL                         R2 1
       24 GETUPVAL                         R3 3
       25 GETUPVAL                         R4 4
       26 GETTABLEKS                       R4 R4 K4 ["Dictionary"]
       28 GETTABLEKS                       R4 R4 K5 ["join"]
       30 MOVE                             R5 R0
       31 DUPTABLE                         R6 K6 [{"isError"}]
       32 SETTABLEKS                       R1 R6 K1 ["isError"]
       34 CALL                             R4 2 1
       35 CALL                             R2 2 -1
       36 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAssistantMultipleChatPersistence is not enabled!"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETTABLEKS                       R1 R0 K3 ["mode"]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K4 ["Inserted"]
       13 JUMPIFNOTEQ                      R1 R2 ; [+19]
       15 DUPTABLE                         R1 K8 [{"type", "mode", "name", "tag"}]
       16 GETTABLEKS                       R2 R0 K5 ["type"]
       18 SETTABLEKS                       R2 R1 K5 ["type"]
       20 GETTABLEKS                       R2 R0 K3 ["mode"]
       22 SETTABLEKS                       R2 R1 K3 ["mode"]
       24 GETTABLEKS                       R2 R0 K6 ["name"]
       26 SETTABLEKS                       R2 R1 K6 ["name"]
       28 GETTABLEKS                       R2 R0 K7 ["tag"]
       30 SETTABLEKS                       R2 R1 K7 ["tag"]
       32 RETURN                           R1 1
       33 DUPTABLE                         R1 K9 [{"type", "mode"}]
       34 GETTABLEKS                       R2 R0 K5 ["type"]
       36 SETTABLEKS                       R2 R1 K5 ["type"]
       38 GETUPVAL                         R2 1
       39 GETTABLEKS                       R2 R2 K10 ["Preparing"]
       41 SETTABLEKS                       R2 R1 K3 ["mode"]
       43 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        4 LOADK                            R4 K0 ["FFlagAssistantMultipleChatPersistence is not enabled!"]
        5 GETIMPORT                        R2 K2 [assert]
        7 CALL                             R2 2 0
        8 GETTABLEKS                       R2 R0 K3 ["mode"]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K4 ["Inserted"]
       13 JUMPIFNOTEQ                      R2 R3 ; [+36]
       15 DUPTABLE                         R2 K12 [{"type", "mode", "name", "displayName", "tag", "className", "shouldShowChip", "onChipClicked"}]
       16 GETTABLEKS                       R3 R0 K5 ["type"]
       18 SETTABLEKS                       R3 R2 K5 ["type"]
       20 GETTABLEKS                       R3 R0 K3 ["mode"]
       22 SETTABLEKS                       R3 R2 K3 ["mode"]
       24 GETTABLEKS                       R3 R0 K6 ["name"]
       26 SETTABLEKS                       R3 R2 K6 ["name"]
       28 GETTABLEKS                       R3 R0 K6 ["name"]
       30 SETTABLEKS                       R3 R2 K7 ["displayName"]
       32 GETTABLEKS                       R3 R0 K8 ["tag"]
       34 SETTABLEKS                       R3 R2 K8 ["tag"]
       36 LOADNIL                          R3
       37 SETTABLEKS                       R3 R2 K9 ["className"]
       39 LOADB                            R3 0
       40 SETTABLEKS                       R3 R2 K10 ["shouldShowChip"]
       42 GETUPVAL                         R3 2
       43 GETTABLEKS                       R3 R3 K13 ["createUnimplemented"]
       45 LOADK                            R4 K11 ["onChipClicked"]
       46 CALL                             R3 1 1
       47 SETTABLEKS                       R3 R2 K11 ["onChipClicked"]
       49 RETURN                           R2 1
       50 DUPTABLE                         R2 K15 [{"type", "mode", "isError"}]
       51 GETTABLEKS                       R3 R0 K5 ["type"]
       53 SETTABLEKS                       R3 R2 K5 ["type"]
       55 GETUPVAL                         R3 1
       56 GETTABLEKS                       R3 R3 K16 ["Preparing"]
       58 SETTABLEKS                       R3 R2 K3 ["mode"]
       60 LOADB                            R3 1
       61 SETTABLEKS                       R3 R2 K14 ["isError"]
       63 RETURN                           R2 1

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
       18 GETTABLEKS                       R3 R3 K9 ["Cryo"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["Foundation"]
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
       53 GETTABLEKS                       R8 R0 K6 ["Components"]
       55 GETTABLEKS                       R8 R8 K16 ["ShimmerGradient"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K13 ["Util"]
       62 GETTABLEKS                       R9 R9 K17 ["TestIds"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K18 ["Resources"]
       69 GETTABLEKS                       R10 R10 K19 ["Localization"]
       71 GETTABLEKS                       R10 R10 K20 ["Translator"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R11 R0 K21 ["Types"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R12 R0 K22 ["Hooks"]
       83 GETTABLEKS                       R12 R12 K23 ["useClassIcon"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K5 [require]
       88 GETTABLEKS                       R13 R0 K24 ["Flags"]
       90 GETTABLEKS                       R13 R13 K25 ["FFlagAssistantMultipleChatPersistence"]
       92 CALL                             R12 1 1
       93 GETTABLEKS                       R13 R3 K26 ["Chip"]
       95 GETTABLEKS                       R14 R3 K27 ["Text"]
       97 GETTABLEKS                       R15 R5 K28 ["createNextOrder"]
       99 GETTABLEKS                       R16 R4 K29 ["createElement"]
      101 DUPTABLE                         R17 K33 [{"Preparing", "Inserting", "Inserted"}]
      102 LOADK                            R18 K30 ["Preparing"]
      103 SETTABLEKS                       R18 R17 K30 ["Preparing"]
      105 LOADK                            R18 K31 ["Inserting"]
      106 SETTABLEKS                       R18 R17 K31 ["Inserting"]
      108 LOADK                            R18 K32 ["Inserted"]
      109 SETTABLEKS                       R18 R17 K32 ["Inserted"]
      111 DUPCLOSURE                       R18 K34 [PROTO_1]
      112 CAPTURE                          VAL R17
      113 CAPTURE                          VAL R4
      114 CAPTURE                          VAL R9
      115 CAPTURE                          VAL R12
      116 CAPTURE                          VAL R15
      117 CAPTURE                          VAL R16
      118 CAPTURE                          VAL R1
      119 CAPTURE                          VAL R8
      120 CAPTURE                          VAL R14
      121 CAPTURE                          VAL R7
      122 DUPCLOSURE                       R19 K35 [PROTO_3]
      123 CAPTURE                          VAL R11
      124 CAPTURE                          VAL R4
      125 CAPTURE                          VAL R9
      126 CAPTURE                          VAL R15
      127 CAPTURE                          VAL R16
      128 CAPTURE                          VAL R1
      129 CAPTURE                          VAL R8
      130 CAPTURE                          VAL R14
      131 CAPTURE                          VAL R13
      132 CAPTURE                          VAL R3
      133 DUPCLOSURE                       R20 K36 [PROTO_4]
      134 CAPTURE                          VAL R17
      135 CAPTURE                          VAL R16
      136 CAPTURE                          VAL R19
      137 CAPTURE                          VAL R18
      138 CAPTURE                          VAL R2
      139 DUPTABLE                         R21 K39 [{"toMeta", "fromMeta"}]
      140 DUPCLOSURE                       R22 K40 [PROTO_5]
      141 CAPTURE                          VAL R12
      142 CAPTURE                          VAL R17
      143 SETTABLEKS                       R22 R21 K37 ["toMeta"]
      145 DUPCLOSURE                       R22 K41 [PROTO_6]
      146 CAPTURE                          VAL R12
      147 CAPTURE                          VAL R17
      148 CAPTURE                          VAL R5
      149 SETTABLEKS                       R22 R21 K38 ["fromMeta"]
      151 DUPTABLE                         R22 K46 [{"Type", "ContentWidget", "Serialization", "Modes"}]
      152 LOADK                            R23 K47 ["AssetInsert"]
      153 SETTABLEKS                       R23 R22 K42 ["Type"]
      155 GETTABLEKS                       R23 R4 K48 ["memo"]
      157 MOVE                             R24 R20
      158 CALL                             R23 1 1
      159 SETTABLEKS                       R23 R22 K43 ["ContentWidget"]
      161 SETTABLEKS                       R21 R22 K44 ["Serialization"]
      163 SETTABLEKS                       R17 R22 K45 ["Modes"]
      165 RETURN                           R22 1
