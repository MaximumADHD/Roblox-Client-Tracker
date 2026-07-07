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
       26 GETTABLEKS                       R4 R0 K6 ["isError"]
       28 NOT                              R3 R4
       29 JUMPIFNOT                        R3 ; [+17]
       30 LOADB                            R3 1
       31 GETTABLEKS                       R4 R0 K0 ["mode"]
       33 GETUPVAL                         R5 0
       34 GETTABLEKS                       R5 R5 K7 ["Preparing"]
       36 JUMPIFEQ                         R4 R5 ; [+10]
       38 GETTABLEKS                       R4 R0 K0 ["mode"]
       40 GETUPVAL                         R5 0
       41 GETTABLEKS                       R5 R5 K1 ["Inserting"]
       43 JUMPIFEQ                         R4 R5 ; [+2]
       45 LOADB                            R3 0 +1
       46 LOADB                            R3 1
       47 GETUPVAL                         R4 3
       48 CALL                             R4 0 1
       49 GETUPVAL                         R5 4
       50 GETUPVAL                         R6 5
       51 GETTABLEKS                       R6 R6 K8 ["Root"]
       53 DUPTABLE                         R7 K14 [{["LayoutOrder"], ["expanded"] = False, ["contentId"], ["editThisContent"]}]
       54 GETTABLEKS                       R8 R0 K9 ["LayoutOrder"]
       56 SETTABLEKS                       R8 R7 K9 ["LayoutOrder"]
       58 GETTABLEKS                       R8 R0 K12 ["contentId"]
       60 SETTABLEKS                       R8 R7 K12 ["contentId"]
       62 GETTABLEKS                       R8 R0 K13 ["editThisContent"]
       64 SETTABLEKS                       R8 R7 K13 ["editThisContent"]
       66 DUPTABLE                         R8 K16 [{"Header"}]
       67 GETUPVAL                         R9 4
       68 GETUPVAL                         R10 5
       69 GETTABLEKS                       R10 R10 K15 ["Header"]
       71 DUPTABLE                         R11 K20 [{["IsDisabled"] = True, ["LayoutOrder"], ["testId"]}]
       72 MOVE                             R12 R4
       73 CALL                             R12 0 1
       74 SETTABLEKS                       R12 R11 K9 ["LayoutOrder"]
       76 GETUPVAL                         R12 6
       77 GETTABLEKS                       R12 R12 K21 ["AssetInsert"]
       79 GETTABLEKS                       R12 R12 K22 ["Expand"]
       81 SETTABLEKS                       R12 R11 K19 ["testId"]
       83 DUPTABLE                         R12 K24 [{"Text"}]
       84 GETUPVAL                         R13 4
       85 GETUPVAL                         R14 7
       86 DUPTABLE                         R15 K27 [{["tag"] = "size-0-full auto-x text-label-small text-align-y-center text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
       87 GETTABLEKS                       R17 R0 K6 ["isError"]
       89 JUMPIFNOT                        R17 ; [+3]
       90 GETTABLEKS                       R16 R2 K28 ["FailedToGenerate"]
       92 JUMP                             ; [+12]
       93 GETTABLEKS                       R17 R0 K0 ["mode"]
       95 GETUPVAL                         R18 0
       96 GETTABLEKS                       R18 R18 K1 ["Inserting"]
       98 JUMPIFNOTEQ                      R17 R18 ; [+4]
      100 GETTABLEKS                       R16 R2 K1 ["Inserting"]
      102 JUMP                             ; [+2]
      103 GETTABLEKS                       R16 R2 K7 ["Preparing"]
      105 SETTABLEKS                       R16 R15 K23 ["Text"]
      107 MOVE                             R16 R4
      108 CALL                             R16 0 1
      109 SETTABLEKS                       R16 R15 K9 ["LayoutOrder"]
      111 DUPTABLE                         R16 K30 [{"Shimmer"}]
      112 MOVE                             R17 R3
      113 JUMPIFNOT                        R17 ; [+3]
      114 GETUPVAL                         R17 4
      115 GETUPVAL                         R18 8
      116 CALL                             R17 1 1
      117 SETTABLEKS                       R17 R16 K29 ["Shimmer"]
      119 CALL                             R13 3 1
      120 SETTABLEKS                       R13 R12 K23 ["Text"]
      122 CALL                             R9 3 1
      123 SETTABLEKS                       R9 R8 K15 ["Header"]
      125 CALL                             R5 3 -1
      126 RETURN                           R5 -1

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
       28 DUPTABLE                         R6 K11 [{["LayoutOrder"], ["expanded"] = False, ["contentId"], ["editThisContent"]}]
       29 GETTABLEKS                       R7 R0 K6 ["LayoutOrder"]
       31 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
       33 GETTABLEKS                       R7 R0 K9 ["contentId"]
       35 SETTABLEKS                       R7 R6 K9 ["contentId"]
       37 GETTABLEKS                       R7 R0 K10 ["editThisContent"]
       39 SETTABLEKS                       R7 R6 K10 ["editThisContent"]
       41 DUPTABLE                         R7 K13 [{"Header"}]
       42 GETUPVAL                         R8 4
       43 GETUPVAL                         R9 5
       44 GETTABLEKS                       R9 R9 K12 ["Header"]
       46 DUPTABLE                         R10 K17 [{["IsDisabled"] = True, ["LayoutOrder"], ["testId"]}]
       47 MOVE                             R11 R3
       48 CALL                             R11 0 1
       49 SETTABLEKS                       R11 R10 K6 ["LayoutOrder"]
       51 GETUPVAL                         R11 6
       52 GETTABLEKS                       R11 R11 K18 ["AssetInsert"]
       54 GETTABLEKS                       R11 R11 K19 ["Expand"]
       56 SETTABLEKS                       R11 R10 K16 ["testId"]
       58 DUPTABLE                         R11 K22 [{"Text", "AssetLink"}]
       59 GETUPVAL                         R12 4
       60 GETUPVAL                         R13 7
       61 DUPTABLE                         R14 K25 [{["tag"] = "size-0-full auto-x text-label-small text-align-y-center text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
       62 GETTABLEKS                       R15 R2 K26 ["Inserted"]
       64 SETTABLEKS                       R15 R14 K20 ["Text"]
       66 MOVE                             R15 R3
       67 CALL                             R15 0 1
       68 SETTABLEKS                       R15 R14 K6 ["LayoutOrder"]
       70 CALL                             R12 2 1
       71 SETTABLEKS                       R12 R11 K20 ["Text"]
       73 GETTABLEKS                       R12 R0 K4 ["shouldShowChip"]
       75 JUMPIFNOT                        R12 ; [+29]
       76 GETUPVAL                         R12 4
       77 GETUPVAL                         R13 8
       78 DUPTABLE                         R14 K32 [{["text"], ["leading"], ["onActivated"], ["isChecked"] = False, ["size"], ["LayoutOrder"]}]
       79 GETTABLEKS                       R15 R0 K3 ["displayName"]
       81 SETTABLEKS                       R15 R14 K27 ["text"]
       83 GETTABLEKS                       R15 R1 K33 ["Image"]
       85 SETTABLEKS                       R15 R14 K28 ["leading"]
       87 GETTABLEKS                       R15 R0 K34 ["onChipClicked"]
       89 SETTABLEKS                       R15 R14 K29 ["onActivated"]
       91 GETUPVAL                         R15 9
       92 GETTABLEKS                       R15 R15 K35 ["Enums"]
       94 GETTABLEKS                       R15 R15 K36 ["ChipSize"]
       96 GETTABLEKS                       R15 R15 K37 ["Small"]
       98 SETTABLEKS                       R15 R14 K31 ["size"]
      100 MOVE                             R15 R3
      101 CALL                             R15 0 1
      102 SETTABLEKS                       R15 R14 K6 ["LayoutOrder"]
      104 CALL                             R12 2 1
      105 SETTABLEKS                       R12 R11 K21 ["AssetLink"]
      107 CALL                             R8 3 1
      108 SETTABLEKS                       R8 R7 K12 ["Header"]
      110 CALL                             R4 3 -1
      111 RETURN                           R4 -1

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
        0 GETTABLEKS                       R1 R0 K0 ["mode"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["Inserted"]
        5 JUMPIFNOTEQ                      R1 R2 ; [+19]
        7 DUPTABLE                         R1 K5 [{"type", "mode", "name", "tag"}]
        8 GETTABLEKS                       R2 R0 K2 ["type"]
       10 SETTABLEKS                       R2 R1 K2 ["type"]
       12 GETTABLEKS                       R2 R0 K0 ["mode"]
       14 SETTABLEKS                       R2 R1 K0 ["mode"]
       16 GETTABLEKS                       R2 R0 K3 ["name"]
       18 SETTABLEKS                       R2 R1 K3 ["name"]
       20 GETTABLEKS                       R2 R0 K4 ["tag"]
       22 SETTABLEKS                       R2 R1 K4 ["tag"]
       24 RETURN                           R1 1
       25 DUPTABLE                         R1 K6 [{"type", "mode"}]
       26 GETTABLEKS                       R2 R0 K2 ["type"]
       28 SETTABLEKS                       R2 R1 K2 ["type"]
       30 GETUPVAL                         R2 0
       31 GETTABLEKS                       R2 R2 K7 ["Preparing"]
       33 SETTABLEKS                       R2 R1 K0 ["mode"]
       35 RETURN                           R1 1

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["mode"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["Inserted"]
        5 JUMPIFNOTEQ                      R2 R3 ; [+30]
        7 DUPTABLE                         R2 K11 [{["type"], [2], ["name"], ["displayName"], ["tag"], ["className"] = , ["shouldShowChip"] = False, ["onChipClicked"]}]
        8 GETTABLEKS                       R3 R0 K2 ["type"]
       10 SETTABLEKS                       R3 R2 K2 ["type"]
       12 GETTABLEKS                       R3 R0 K0 ["mode"]
       14 SETTABLEKS                       R3 R2 K0 ["mode"]
       16 GETTABLEKS                       R3 R0 K3 ["name"]
       18 SETTABLEKS                       R3 R2 K3 ["name"]
       20 GETTABLEKS                       R3 R0 K3 ["name"]
       22 SETTABLEKS                       R3 R2 K4 ["displayName"]
       24 GETTABLEKS                       R3 R0 K5 ["tag"]
       26 SETTABLEKS                       R3 R2 K5 ["tag"]
       28 GETUPVAL                         R3 1
       29 GETTABLEKS                       R3 R3 K12 ["createUnimplemented"]
       31 LOADK                            R4 K10 ["onChipClicked"]
       32 CALL                             R3 1 1
       33 SETTABLEKS                       R3 R2 K10 ["onChipClicked"]
       35 RETURN                           R2 1
       36 DUPTABLE                         R2 K15 [{["type"], [2], ["isError"] = True}]
       37 GETTABLEKS                       R3 R0 K2 ["type"]
       39 SETTABLEKS                       R3 R2 K2 ["type"]
       41 GETUPVAL                         R3 0
       42 GETTABLEKS                       R3 R3 K16 ["Preparing"]
       44 SETTABLEKS                       R3 R2 K0 ["mode"]
       46 RETURN                           R2 1

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
       86 GETTABLEKS                       R12 R3 K24 ["Chip"]
       88 GETTABLEKS                       R13 R3 K25 ["Text"]
       90 GETTABLEKS                       R14 R5 K26 ["createNextOrder"]
       92 GETTABLEKS                       R15 R4 K27 ["createElement"]
       94 DUPTABLE                         R16 K31 [{["Preparing"] = "Preparing", ["Inserting"] = "Inserting", ["Inserted"] = "Inserted"}]
       95 DUPCLOSURE                       R17 K32 [PROTO_1]
       96 CAPTURE                          VAL R16
       97 CAPTURE                          VAL R4
       98 CAPTURE                          VAL R9
       99 CAPTURE                          VAL R14
      100 CAPTURE                          VAL R15
      101 CAPTURE                          VAL R1
      102 CAPTURE                          VAL R8
      103 CAPTURE                          VAL R13
      104 CAPTURE                          VAL R7
      105 DUPCLOSURE                       R18 K33 [PROTO_3]
      106 CAPTURE                          VAL R11
      107 CAPTURE                          VAL R4
      108 CAPTURE                          VAL R9
      109 CAPTURE                          VAL R14
      110 CAPTURE                          VAL R15
      111 CAPTURE                          VAL R1
      112 CAPTURE                          VAL R8
      113 CAPTURE                          VAL R13
      114 CAPTURE                          VAL R12
      115 CAPTURE                          VAL R3
      116 DUPCLOSURE                       R19 K34 [PROTO_4]
      117 CAPTURE                          VAL R16
      118 CAPTURE                          VAL R15
      119 CAPTURE                          VAL R18
      120 CAPTURE                          VAL R17
      121 CAPTURE                          VAL R2
      122 DUPTABLE                         R20 K37 [{"toMeta", "fromMeta"}]
      123 DUPCLOSURE                       R21 K38 [PROTO_5]
      124 CAPTURE                          VAL R16
      125 SETTABLEKS                       R21 R20 K35 ["toMeta"]
      127 DUPCLOSURE                       R21 K39 [PROTO_6]
      128 CAPTURE                          VAL R16
      129 CAPTURE                          VAL R5
      130 SETTABLEKS                       R21 R20 K36 ["fromMeta"]
      132 DUPTABLE                         R21 K45 [{["Type"] = "AssetInsert", ["ContentWidget"], ["Serialization"], ["Modes"]}]
      133 GETTABLEKS                       R22 R4 K46 ["memo"]
      135 MOVE                             R23 R19
      136 CALL                             R22 1 1
      137 SETTABLEKS                       R22 R21 K42 ["ContentWidget"]
      139 SETTABLEKS                       R20 R21 K43 ["Serialization"]
      141 SETTABLEKS                       R16 R21 K44 ["Modes"]
      143 RETURN                           R21 1
