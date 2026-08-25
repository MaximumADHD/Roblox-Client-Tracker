PROTO_0:
        0 DUPTABLE                         R0 K4 [{"FailedToGenerate", "Preparing", "Generating", "UnknownError"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K5 ["AssetVariation"]
        3 LOADK                            R4 K0 ["FailedToGenerate"]
        4 NAMECALL                         R1 R1 K6 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["FailedToGenerate"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K5 ["AssetVariation"]
       11 LOADK                            R4 K1 ["Preparing"]
       12 NAMECALL                         R1 R1 K6 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["Preparing"]
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K5 ["AssetVariation"]
       19 LOADK                            R4 K2 ["Generating"]
       20 DUPTABLE                         R5 K8 [{"query"}]
       21 GETUPVAL                         R6 1
       22 SETTABLEKS                       R6 R5 K7 ["query"]
       24 NAMECALL                         R1 R1 K6 ["getText"]
       26 CALL                             R1 4 1
       27 SETTABLEKS                       R1 R0 K2 ["Generating"]
       29 GETUPVAL                         R1 0
       30 LOADK                            R3 K5 ["AssetVariation"]
       31 LOADK                            R4 K9 ["UnknownErrorHeader"]
       32 NAMECALL                         R1 R1 K6 ["getText"]
       34 CALL                             R1 3 1
       35 SETTABLEKS                       R1 R0 K3 ["UnknownError"]
       37 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["mode"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["Generating"]
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
       41 GETTABLEKS                       R5 R5 K1 ["Generating"]
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
       77 GETTABLEKS                       R12 R12 K21 ["AssetVariation"]
       79 GETTABLEKS                       R12 R12 K22 ["Expand"]
       81 SETTABLEKS                       R12 R11 K19 ["testId"]
       83 DUPTABLE                         R12 K24 [{"Text"}]
       84 GETUPVAL                         R13 4
       85 GETUPVAL                         R14 7
       86 DUPTABLE                         R15 K27 [{["tag"] = "size-0-full auto-x text-label-small text-align-y-center text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
       87 GETTABLEKS                       R17 R0 K6 ["isError"]
       89 JUMPIFNOT                        R17 ; [+3]
       90 GETTABLEKS                       R16 R2 K28 ["FailedToGenerate"]
       92 JUMP                             ; [+22]
       93 GETTABLEKS                       R17 R0 K0 ["mode"]
       95 GETUPVAL                         R18 0
       96 GETTABLEKS                       R18 R18 K1 ["Generating"]
       98 JUMPIFNOTEQ                      R17 R18 ; [+4]
      100 GETTABLEKS                       R16 R2 K1 ["Generating"]
      102 JUMP                             ; [+12]
      103 GETTABLEKS                       R17 R0 K0 ["mode"]
      105 GETUPVAL                         R18 0
      106 GETTABLEKS                       R18 R18 K7 ["Preparing"]
      108 JUMPIFNOTEQ                      R17 R18 ; [+4]
      110 GETTABLEKS                       R16 R2 K7 ["Preparing"]
      112 JUMP                             ; [+2]
      113 GETTABLEKS                       R16 R2 K29 ["UnknownError"]
      115 SETTABLEKS                       R16 R15 K23 ["Text"]
      117 MOVE                             R16 R4
      118 CALL                             R16 0 1
      119 SETTABLEKS                       R16 R15 K9 ["LayoutOrder"]
      121 DUPTABLE                         R16 K31 [{"Shimmer"}]
      122 MOVE                             R17 R3
      123 JUMPIFNOT                        R17 ; [+3]
      124 GETUPVAL                         R17 4
      125 GETUPVAL                         R18 8
      126 CALL                             R17 1 1
      127 SETTABLEKS                       R17 R16 K30 ["Shimmer"]
      129 CALL                             R13 3 1
      130 SETTABLEKS                       R13 R12 K23 ["Text"]
      132 CALL                             R9 3 1
      133 SETTABLEKS                       R9 R8 K15 ["Header"]
      135 CALL                             R5 3 -1
      136 RETURN                           R5 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onSelectionChange"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["onSelectionChange"]
        7 GETUPVAL                         R1 1
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AssetVariation"]
        2 LOADK                            R3 K1 ["Generated"]
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
       38 DUPTABLE                         R1 K15 [{"Generated", "AssetVariationsDescription"}]
       39 SETTABLEKS                       R0 R1 K1 ["Generated"]
       41 GETUPVAL                         R2 0
       42 LOADK                            R4 K0 ["AssetVariation"]
       43 LOADK                            R5 K14 ["AssetVariationsDescription"]
       44 NAMECALL                         R2 R2 K7 ["getText"]
       46 CALL                             R2 3 1
       47 SETTABLEKS                       R2 R1 K14 ["AssetVariationsDescription"]
       49 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R2 R1 K2 ["Padding"]
        8 GETTABLEKS                       R2 R2 K3 ["XXSmall"]
       10 NEWTABLE                         R3 0 0
       12 GETTABLEKS                       R4 R0 K4 ["assetIds"]
       14 LOADNIL                          R5
       15 LOADNIL                          R6
       16 FORGPREP                         R4
       17 LOADK                            R10 K5 ["rbxthumb://type=Asset&id=%*&w=150&h=150"]
       18 MOVE                             R12 R8
       19 NAMECALL                         R10 R10 K6 ["format"]
       21 CALL                             R10 2 1
       22 MOVE                             R9 R10
       23 DUPTABLE                         R12 K9 [{"uri", "onActivated"}]
       24 SETTABLEKS                       R9 R12 K7 ["uri"]
       26 NEWCLOSURE                       R13 P0
       27 CAPTURE                          VAL R0
       28 CAPTURE                          VAL R8
       29 SETTABLEKS                       R13 R12 K8 ["onActivated"]
       31 FASTCALL2                        TABLE_INSERT R3 R12 ; [+4]
       33 MOVE                             R11 R3
       34 GETIMPORT                        R10 K12 [table.insert]
       36 CALL                             R10 2 0
       37 FORGLOOP                         R4 2 ; [-21]
       39 GETUPVAL                         R4 1
       40 GETTABLEKS                       R5 R0 K13 ["className"]
       42 CALL                             R4 1 1
       43 GETUPVAL                         R5 2
       44 GETTABLEKS                       R5 R5 K14 ["useMemo"]
       46 NEWCLOSURE                       R6 P1
       47 CAPTURE                          UPVAL U3
       48 CAPTURE                          VAL R0
       49 NEWTABLE                         R7 0 3
       51 GETUPVAL                         R8 3
       52 GETTABLEKS                       R8 R8 K15 ["locale"]
       54 GETTABLEKS                       R9 R0 K16 ["displayName"]
       56 GETTABLEKS                       R10 R0 K17 ["shouldShowChip"]
       58 SETLIST                          R7 R8 3 [1]
       60 CALL                             R5 2 1
       61 GETUPVAL                         R6 4
       62 CALL                             R6 0 1
       63 GETUPVAL                         R7 5
       64 GETUPVAL                         R8 6
       65 GETTABLEKS                       R8 R8 K18 ["Root"]
       67 DUPTABLE                         R9 K23 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
       68 GETTABLEKS                       R10 R0 K19 ["LayoutOrder"]
       70 SETTABLEKS                       R10 R9 K19 ["LayoutOrder"]
       72 GETTABLEKS                       R10 R0 K20 ["expanded"]
       74 SETTABLEKS                       R10 R9 K20 ["expanded"]
       76 GETTABLEKS                       R10 R0 K21 ["contentId"]
       78 SETTABLEKS                       R10 R9 K21 ["contentId"]
       80 GETTABLEKS                       R10 R0 K22 ["editThisContent"]
       82 SETTABLEKS                       R10 R9 K22 ["editThisContent"]
       84 DUPTABLE                         R10 K26 [{"Header", "Content"}]
       85 GETUPVAL                         R11 5
       86 GETUPVAL                         R12 6
       87 GETTABLEKS                       R12 R12 K24 ["Header"]
       89 DUPTABLE                         R13 K28 [{"LayoutOrder", "testId"}]
       90 MOVE                             R14 R6
       91 CALL                             R14 0 1
       92 SETTABLEKS                       R14 R13 K19 ["LayoutOrder"]
       94 GETUPVAL                         R14 7
       95 GETTABLEKS                       R14 R14 K29 ["AssetVariation"]
       97 GETTABLEKS                       R14 R14 K30 ["Expand"]
       99 SETTABLEKS                       R14 R13 K27 ["testId"]
      101 DUPTABLE                         R14 K33 [{"Text", "AssetLink"}]
      102 GETUPVAL                         R15 5
      103 GETUPVAL                         R16 8
      104 DUPTABLE                         R17 K36 [{["tag"] = "size-0-full auto-x text-label-small text-align-y-center text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
      105 GETTABLEKS                       R18 R5 K37 ["Generated"]
      107 SETTABLEKS                       R18 R17 K31 ["Text"]
      109 MOVE                             R18 R6
      110 CALL                             R18 0 1
      111 SETTABLEKS                       R18 R17 K19 ["LayoutOrder"]
      113 CALL                             R15 2 1
      114 SETTABLEKS                       R15 R14 K31 ["Text"]
      116 GETTABLEKS                       R15 R0 K17 ["shouldShowChip"]
      118 JUMPIFNOT                        R15 ; [+29]
      119 GETUPVAL                         R15 5
      120 GETUPVAL                         R16 9
      121 DUPTABLE                         R17 K43 [{["text"], ["leading"], ["onActivated"], ["isChecked"] = False, ["size"], ["LayoutOrder"]}]
      122 GETTABLEKS                       R18 R0 K16 ["displayName"]
      124 SETTABLEKS                       R18 R17 K38 ["text"]
      126 GETTABLEKS                       R18 R4 K44 ["Image"]
      128 SETTABLEKS                       R18 R17 K39 ["leading"]
      130 GETTABLEKS                       R18 R0 K45 ["onChipClicked"]
      132 SETTABLEKS                       R18 R17 K8 ["onActivated"]
      134 GETUPVAL                         R18 0
      135 GETTABLEKS                       R18 R18 K46 ["Enums"]
      137 GETTABLEKS                       R18 R18 K47 ["ChipSize"]
      139 GETTABLEKS                       R18 R18 K48 ["Small"]
      141 SETTABLEKS                       R18 R17 K42 ["size"]
      143 MOVE                             R18 R6
      144 CALL                             R18 0 1
      145 SETTABLEKS                       R18 R17 K19 ["LayoutOrder"]
      147 CALL                             R15 2 1
      148 SETTABLEKS                       R15 R14 K32 ["AssetLink"]
      150 CALL                             R11 3 1
      151 SETTABLEKS                       R11 R10 K24 ["Header"]
      153 GETUPVAL                         R11 5
      154 GETUPVAL                         R12 6
      155 GETTABLEKS                       R12 R12 K25 ["Content"]
      157 DUPTABLE                         R13 K50 [{["tag"] = "col fill gap-small size-0-0 auto-y", ["LayoutOrder"]}]
      158 MOVE                             R14 R6
      159 CALL                             R14 0 1
      160 SETTABLEKS                       R14 R13 K19 ["LayoutOrder"]
      162 DUPTABLE                         R14 K52 [{"Text", "Carousel"}]
      163 GETUPVAL                         R15 5
      164 GETUPVAL                         R16 8
      165 DUPTABLE                         R17 K54 [{["tag"] = "size-0-0 auto-xy text-body-small text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
      166 GETTABLEKS                       R18 R5 K55 ["AssetVariationsDescription"]
      168 SETTABLEKS                       R18 R17 K31 ["Text"]
      170 MOVE                             R18 R6
      171 CALL                             R18 0 1
      172 SETTABLEKS                       R18 R17 K19 ["LayoutOrder"]
      174 CALL                             R15 2 1
      175 SETTABLEKS                       R15 R14 K31 ["Text"]
      177 GETUPVAL                         R15 5
      178 GETUPVAL                         R16 10
      179 DUPTABLE                         R17 K62 [{["height"] = 70, ["imagePadding"], ["canSelect"] = True, ["items"], ["LayoutOrder"]}]
      180 SETTABLEKS                       R2 R17 K58 ["imagePadding"]
      182 SETTABLEKS                       R3 R17 K61 ["items"]
      184 MOVE                             R18 R6
      185 CALL                             R18 0 1
      186 SETTABLEKS                       R18 R17 K19 ["LayoutOrder"]
      188 CALL                             R15 2 1
      189 SETTABLEKS                       R15 R14 K51 ["Carousel"]
      191 CALL                             R11 3 1
      192 SETTABLEKS                       R11 R10 K25 ["Content"]
      194 CALL                             R7 3 -1
      195 RETURN                           R7 -1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["toolResult"]
        2 JUMPIFNOT                        R1 ; [+4]
        3 GETTABLEKS                       R1 R0 K0 ["toolResult"]
        5 GETTABLEKS                       R1 R1 K1 ["isError"]
        7 GETTABLEKS                       R2 R0 K2 ["mode"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K3 ["Generated"]
       12 JUMPIFNOTEQ                      R2 R3 ; [+7]
       14 JUMPIF                           R1 ; [+5]
       15 GETUPVAL                         R2 1
       16 GETUPVAL                         R3 2
       17 MOVE                             R4 R0
       18 CALL                             R2 2 -1
       19 RETURN                           R2 -1
       20 GETUPVAL                         R2 1
       21 GETUPVAL                         R3 3
       22 GETUPVAL                         R4 4
       23 GETTABLEKS                       R4 R4 K4 ["Dictionary"]
       25 GETTABLEKS                       R4 R4 K5 ["join"]
       27 MOVE                             R5 R0
       28 DUPTABLE                         R6 K6 [{"isError"}]
       29 SETTABLEKS                       R1 R6 K1 ["isError"]
       31 CALL                             R4 2 1
       32 CALL                             R2 2 -1
       33 RETURN                           R2 -1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["mode"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["Generated"]
        5 JUMPIFEQ                         R1 R2 ; [+8]
        7 DUPTABLE                         R1 K2 [{"mode"}]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K3 ["Preparing"]
       11 SETTABLEKS                       R2 R1 K0 ["mode"]
       13 RETURN                           R1 1
       14 DUPTABLE                         R1 K7 [{"mode", "name", "tag", "assetIds"}]
       15 GETTABLEKS                       R2 R0 K0 ["mode"]
       17 SETTABLEKS                       R2 R1 K0 ["mode"]
       19 GETTABLEKS                       R2 R0 K4 ["name"]
       21 SETTABLEKS                       R2 R1 K4 ["name"]
       23 GETTABLEKS                       R2 R0 K5 ["tag"]
       25 SETTABLEKS                       R2 R1 K5 ["tag"]
       27 GETTABLEKS                       R2 R0 K6 ["assetIds"]
       29 SETTABLEKS                       R2 R1 K6 ["assetIds"]
       31 RETURN                           R1 1

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["mode"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["Generated"]
        5 JUMPIFEQ                         R2 R3 ; [+8]
        7 DUPTABLE                         R2 K6 [{["type"] = "CreatorStoreInsert", [2], ["isError"] = True}]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K7 ["Preparing"]
       11 SETTABLEKS                       R3 R2 K0 ["mode"]
       13 RETURN                           R2 1
       14 DUPTABLE                         R2 K19 [{["type"] = "CreatorStoreInsert", [2], ["name"], ["displayName"], ["tag"], ["className"] = , ["assetIds"], ["expanded"] = False, ["shouldShowChip"] = False, ["onSelectionChange"], ["onChipClicked"]}]
       15 GETTABLEKS                       R3 R0 K0 ["mode"]
       17 SETTABLEKS                       R3 R2 K0 ["mode"]
       19 GETTABLEKS                       R3 R0 K8 ["name"]
       21 SETTABLEKS                       R3 R2 K8 ["name"]
       23 GETTABLEKS                       R3 R0 K8 ["name"]
       25 SETTABLEKS                       R3 R2 K9 ["displayName"]
       27 GETTABLEKS                       R3 R0 K10 ["tag"]
       29 SETTABLEKS                       R3 R2 K10 ["tag"]
       31 GETTABLEKS                       R3 R0 K13 ["assetIds"]
       33 SETTABLEKS                       R3 R2 K13 ["assetIds"]
       35 GETUPVAL                         R3 1
       36 GETTABLEKS                       R3 R3 K20 ["createUnimplemented"]
       38 LOADK                            R4 K17 ["onSelectionChange"]
       39 CALL                             R3 1 1
       40 SETTABLEKS                       R3 R2 K17 ["onSelectionChange"]
       42 GETUPVAL                         R3 1
       43 GETTABLEKS                       R3 R3 K20 ["createUnimplemented"]
       45 LOADK                            R4 K18 ["onChipClicked"]
       46 CALL                             R3 1 1
       47 SETTABLEKS                       R3 R2 K18 ["onChipClicked"]
       49 RETURN                           R2 1

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
       16 GETTABLEKS                       R3 R0 K6 ["Components"]
       18 GETTABLEKS                       R3 R3 K8 ["Carousel"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["Cryo"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K9 ["Parent"]
       32 GETTABLEKS                       R5 R5 K11 ["Foundation"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K9 ["Parent"]
       39 GETTABLEKS                       R6 R6 K12 ["React"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K9 ["Parent"]
       46 GETTABLEKS                       R7 R7 K13 ["ReactUtils"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K14 ["Util"]
       53 GETTABLEKS                       R8 R8 K15 ["Serializer"]
       55 GETTABLEKS                       R8 R8 K16 ["SerializerTypes"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K6 ["Components"]
       62 GETTABLEKS                       R9 R9 K17 ["ShimmerGradient"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K14 ["Util"]
       69 GETTABLEKS                       R10 R10 K18 ["TestIds"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K19 ["Resources"]
       76 GETTABLEKS                       R11 R11 K20 ["Localization"]
       78 GETTABLEKS                       R11 R11 K21 ["Translator"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R12 R0 K22 ["Types"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K5 [require]
       88 GETTABLEKS                       R13 R0 K23 ["Hooks"]
       90 GETTABLEKS                       R13 R13 K24 ["useClassIcon"]
       92 CALL                             R12 1 1
       93 GETTABLEKS                       R13 R4 K25 ["Chip"]
       95 GETTABLEKS                       R14 R4 K26 ["Text"]
       97 GETTABLEKS                       R15 R6 K27 ["createNextOrder"]
       99 GETTABLEKS                       R16 R5 K28 ["createElement"]
      101 DUPTABLE                         R17 K32 [{["Preparing"] = "Preparing", ["Generating"] = "Generating", ["Generated"] = "Generated"}]
      102 DUPCLOSURE                       R18 K33 [PROTO_1]
      103 CAPTURE                          VAL R17
      104 CAPTURE                          VAL R5
      105 CAPTURE                          VAL R10
      106 CAPTURE                          VAL R15
      107 CAPTURE                          VAL R16
      108 CAPTURE                          VAL R1
      109 CAPTURE                          VAL R9
      110 CAPTURE                          VAL R14
      111 CAPTURE                          VAL R8
      112 DUPCLOSURE                       R19 K34 [PROTO_4]
      113 CAPTURE                          VAL R4
      114 CAPTURE                          VAL R12
      115 CAPTURE                          VAL R5
      116 CAPTURE                          VAL R10
      117 CAPTURE                          VAL R15
      118 CAPTURE                          VAL R16
      119 CAPTURE                          VAL R1
      120 CAPTURE                          VAL R9
      121 CAPTURE                          VAL R14
      122 CAPTURE                          VAL R13
      123 CAPTURE                          VAL R2
      124 DUPCLOSURE                       R20 K35 [PROTO_5]
      125 CAPTURE                          VAL R17
      126 CAPTURE                          VAL R16
      127 CAPTURE                          VAL R19
      128 CAPTURE                          VAL R18
      129 CAPTURE                          VAL R3
      130 DUPTABLE                         R21 K38 [{"toMeta", "fromMeta"}]
      131 DUPCLOSURE                       R22 K39 [PROTO_6]
      132 CAPTURE                          VAL R17
      133 SETTABLEKS                       R22 R21 K36 ["toMeta"]
      135 DUPCLOSURE                       R22 K40 [PROTO_7]
      136 CAPTURE                          VAL R17
      137 CAPTURE                          VAL R6
      138 SETTABLEKS                       R22 R21 K37 ["fromMeta"]
      140 DUPTABLE                         R22 K46 [{["Type"] = "CreatorStoreInsert", ["ContentWidget"], ["Serialization"], ["Modes"]}]
      141 GETTABLEKS                       R23 R5 K47 ["memo"]
      143 MOVE                             R24 R20
      144 CALL                             R23 1 1
      145 SETTABLEKS                       R23 R22 K43 ["ContentWidget"]
      147 SETTABLEKS                       R21 R22 K44 ["Serialization"]
      149 SETTABLEKS                       R17 R22 K45 ["Modes"]
      151 RETURN                           R22 1
