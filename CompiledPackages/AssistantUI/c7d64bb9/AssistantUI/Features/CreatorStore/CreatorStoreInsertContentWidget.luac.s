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
       44 GETTABLEKS                       R5 R5 K1 ["Generating"]
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
       90 GETTABLEKS                       R12 R12 K19 ["AssetVariation"]
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
      108 JUMP                             ; [+22]
      109 GETTABLEKS                       R17 R0 K0 ["mode"]
      111 GETUPVAL                         R18 0
      112 GETTABLEKS                       R18 R18 K1 ["Generating"]
      114 JUMPIFNOTEQ                      R17 R18 ; [+4]
      116 GETTABLEKS                       R16 R2 K1 ["Generating"]
      118 JUMP                             ; [+12]
      119 GETTABLEKS                       R17 R0 K0 ["mode"]
      121 GETUPVAL                         R18 0
      122 GETTABLEKS                       R18 R18 K7 ["Preparing"]
      124 JUMPIFNOTEQ                      R17 R18 ; [+4]
      126 GETTABLEKS                       R16 R2 K7 ["Preparing"]
      128 JUMP                             ; [+2]
      129 GETTABLEKS                       R16 R2 K27 ["UnknownError"]
      131 SETTABLEKS                       R16 R15 K21 ["Text"]
      133 MOVE                             R16 R4
      134 CALL                             R16 0 1
      135 SETTABLEKS                       R16 R15 K9 ["LayoutOrder"]
      137 DUPTABLE                         R16 K29 [{"Shimmer"}]
      138 MOVE                             R17 R3
      139 JUMPIFNOT                        R17 ; [+3]
      140 GETUPVAL                         R17 5
      141 GETUPVAL                         R18 9
      142 CALL                             R17 1 1
      143 SETTABLEKS                       R17 R16 K28 ["Shimmer"]
      145 CALL                             R13 3 1
      146 SETTABLEKS                       R13 R12 K21 ["Text"]
      148 CALL                             R9 3 1
      149 SETTABLEKS                       R9 R8 K14 ["Header"]
      151 CALL                             R5 3 -1
      152 RETURN                           R5 -1

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
      104 DUPTABLE                         R17 K35 [{"tag", "Text", "LayoutOrder"}]
      105 LOADK                            R18 K36 ["size-0-full auto-x text-label-small content-default text-truncate-end text-align-y-center"]
      106 SETTABLEKS                       R18 R17 K34 ["tag"]
      108 GETTABLEKS                       R18 R5 K37 ["Generated"]
      110 SETTABLEKS                       R18 R17 K31 ["Text"]
      112 MOVE                             R18 R6
      113 CALL                             R18 0 1
      114 SETTABLEKS                       R18 R17 K19 ["LayoutOrder"]
      116 CALL                             R15 2 1
      117 SETTABLEKS                       R15 R14 K31 ["Text"]
      119 GETTABLEKS                       R15 R0 K17 ["shouldShowChip"]
      121 JUMPIFNOT                        R15 ; [+32]
      122 GETUPVAL                         R15 5
      123 GETUPVAL                         R16 9
      124 DUPTABLE                         R17 K42 [{"text", "leading", "onActivated", "isChecked", "size", "LayoutOrder"}]
      125 GETTABLEKS                       R18 R0 K16 ["displayName"]
      127 SETTABLEKS                       R18 R17 K38 ["text"]
      129 GETTABLEKS                       R18 R4 K43 ["Image"]
      131 SETTABLEKS                       R18 R17 K39 ["leading"]
      133 GETTABLEKS                       R18 R0 K44 ["onChipClicked"]
      135 SETTABLEKS                       R18 R17 K8 ["onActivated"]
      137 LOADB                            R18 0
      138 SETTABLEKS                       R18 R17 K40 ["isChecked"]
      140 GETUPVAL                         R18 0
      141 GETTABLEKS                       R18 R18 K45 ["Enums"]
      143 GETTABLEKS                       R18 R18 K46 ["ChipSize"]
      145 GETTABLEKS                       R18 R18 K47 ["Small"]
      147 SETTABLEKS                       R18 R17 K41 ["size"]
      149 MOVE                             R18 R6
      150 CALL                             R18 0 1
      151 SETTABLEKS                       R18 R17 K19 ["LayoutOrder"]
      153 CALL                             R15 2 1
      154 SETTABLEKS                       R15 R14 K32 ["AssetLink"]
      156 CALL                             R11 3 1
      157 SETTABLEKS                       R11 R10 K24 ["Header"]
      159 GETUPVAL                         R11 5
      160 GETUPVAL                         R12 6
      161 GETTABLEKS                       R12 R12 K25 ["Content"]
      163 DUPTABLE                         R13 K48 [{"tag", "LayoutOrder"}]
      164 LOADK                            R14 K49 ["col size-0-0 fill auto-y gap-small"]
      165 SETTABLEKS                       R14 R13 K34 ["tag"]
      167 MOVE                             R14 R6
      168 CALL                             R14 0 1
      169 SETTABLEKS                       R14 R13 K19 ["LayoutOrder"]
      171 DUPTABLE                         R14 K51 [{"Text", "Carousel"}]
      172 GETUPVAL                         R15 5
      173 GETUPVAL                         R16 8
      174 DUPTABLE                         R17 K35 [{"tag", "Text", "LayoutOrder"}]
      175 LOADK                            R18 K52 ["size-0-0 auto-xy text-body-small content-default text-truncate-end"]
      176 SETTABLEKS                       R18 R17 K34 ["tag"]
      178 GETTABLEKS                       R18 R5 K53 ["AssetVariationsDescription"]
      180 SETTABLEKS                       R18 R17 K31 ["Text"]
      182 MOVE                             R18 R6
      183 CALL                             R18 0 1
      184 SETTABLEKS                       R18 R17 K19 ["LayoutOrder"]
      186 CALL                             R15 2 1
      187 SETTABLEKS                       R15 R14 K31 ["Text"]
      189 GETUPVAL                         R15 5
      190 GETUPVAL                         R16 10
      191 DUPTABLE                         R17 K58 [{"height", "imagePadding", "canSelect", "items", "LayoutOrder"}]
      192 LOADN                            R18 70
      193 SETTABLEKS                       R18 R17 K54 ["height"]
      195 SETTABLEKS                       R2 R17 K55 ["imagePadding"]
      197 LOADB                            R18 1
      198 SETTABLEKS                       R18 R17 K56 ["canSelect"]
      200 SETTABLEKS                       R3 R17 K57 ["items"]
      202 MOVE                             R18 R6
      203 CALL                             R18 0 1
      204 SETTABLEKS                       R18 R17 K19 ["LayoutOrder"]
      206 CALL                             R15 2 1
      207 SETTABLEKS                       R15 R14 K50 ["Carousel"]
      209 CALL                             R11 3 1
      210 SETTABLEKS                       R11 R10 K25 ["Content"]
      212 CALL                             R7 3 -1
      213 RETURN                           R7 -1

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
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAssistantMultipleChatPersistence is not enabled!"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETTABLEKS                       R1 R0 K3 ["mode"]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K4 ["Generated"]
       13 JUMPIFEQ                         R1 R2 ; [+8]
       15 DUPTABLE                         R1 K5 [{"mode"}]
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R2 R2 K6 ["Preparing"]
       19 SETTABLEKS                       R2 R1 K3 ["mode"]
       21 RETURN                           R1 1
       22 DUPTABLE                         R1 K10 [{"mode", "name", "tag", "assetIds"}]
       23 GETTABLEKS                       R2 R0 K3 ["mode"]
       25 SETTABLEKS                       R2 R1 K3 ["mode"]
       27 GETTABLEKS                       R2 R0 K7 ["name"]
       29 SETTABLEKS                       R2 R1 K7 ["name"]
       31 GETTABLEKS                       R2 R0 K8 ["tag"]
       33 SETTABLEKS                       R2 R1 K8 ["tag"]
       35 GETTABLEKS                       R2 R0 K9 ["assetIds"]
       37 SETTABLEKS                       R2 R1 K9 ["assetIds"]
       39 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        4 LOADK                            R4 K0 ["FFlagAssistantMultipleChatPersistence is not enabled!"]
        5 GETIMPORT                        R2 K2 [assert]
        7 CALL                             R2 2 0
        8 GETTABLEKS                       R2 R0 K3 ["mode"]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K4 ["Generated"]
       13 JUMPIFEQ                         R2 R3 ; [+14]
       15 DUPTABLE                         R2 K7 [{"type", "mode", "isError"}]
       16 LOADK                            R3 K8 ["CreatorStoreInsert"]
       17 SETTABLEKS                       R3 R2 K5 ["type"]
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R3 R3 K9 ["Preparing"]
       22 SETTABLEKS                       R3 R2 K3 ["mode"]
       24 LOADB                            R3 1
       25 SETTABLEKS                       R3 R2 K6 ["isError"]
       27 RETURN                           R2 1
       28 DUPTABLE                         R2 K19 [{"type", "mode", "name", "displayName", "tag", "className", "assetIds", "expanded", "shouldShowChip", "onSelectionChange", "onChipClicked"}]
       29 LOADK                            R3 K8 ["CreatorStoreInsert"]
       30 SETTABLEKS                       R3 R2 K5 ["type"]
       32 GETTABLEKS                       R3 R0 K3 ["mode"]
       34 SETTABLEKS                       R3 R2 K3 ["mode"]
       36 GETTABLEKS                       R3 R0 K10 ["name"]
       38 SETTABLEKS                       R3 R2 K10 ["name"]
       40 GETTABLEKS                       R3 R0 K10 ["name"]
       42 SETTABLEKS                       R3 R2 K11 ["displayName"]
       44 GETTABLEKS                       R3 R0 K12 ["tag"]
       46 SETTABLEKS                       R3 R2 K12 ["tag"]
       48 LOADNIL                          R3
       49 SETTABLEKS                       R3 R2 K13 ["className"]
       51 GETTABLEKS                       R3 R0 K14 ["assetIds"]
       53 SETTABLEKS                       R3 R2 K14 ["assetIds"]
       55 LOADB                            R3 0
       56 SETTABLEKS                       R3 R2 K15 ["expanded"]
       58 LOADB                            R3 0
       59 SETTABLEKS                       R3 R2 K16 ["shouldShowChip"]
       61 GETUPVAL                         R3 2
       62 GETTABLEKS                       R3 R3 K20 ["createUnimplemented"]
       64 LOADK                            R4 K17 ["onSelectionChange"]
       65 CALL                             R3 1 1
       66 SETTABLEKS                       R3 R2 K17 ["onSelectionChange"]
       68 GETUPVAL                         R3 2
       69 GETTABLEKS                       R3 R3 K20 ["createUnimplemented"]
       71 LOADK                            R4 K18 ["onChipClicked"]
       72 CALL                             R3 1 1
       73 SETTABLEKS                       R3 R2 K18 ["onChipClicked"]
       75 RETURN                           R2 1

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
       93 GETIMPORT                        R13 K5 [require]
       95 GETTABLEKS                       R14 R0 K25 ["Flags"]
       97 GETTABLEKS                       R14 R14 K26 ["FFlagAssistantMultipleChatPersistence"]
       99 CALL                             R13 1 1
      100 GETTABLEKS                       R14 R4 K27 ["Chip"]
      102 GETTABLEKS                       R15 R4 K28 ["Text"]
      104 GETTABLEKS                       R16 R6 K29 ["createNextOrder"]
      106 GETTABLEKS                       R17 R5 K30 ["createElement"]
      108 DUPTABLE                         R18 K34 [{"Preparing", "Generating", "Generated"}]
      109 LOADK                            R19 K31 ["Preparing"]
      110 SETTABLEKS                       R19 R18 K31 ["Preparing"]
      112 LOADK                            R19 K32 ["Generating"]
      113 SETTABLEKS                       R19 R18 K32 ["Generating"]
      115 LOADK                            R19 K33 ["Generated"]
      116 SETTABLEKS                       R19 R18 K33 ["Generated"]
      118 DUPCLOSURE                       R19 K35 [PROTO_1]
      119 CAPTURE                          VAL R18
      120 CAPTURE                          VAL R5
      121 CAPTURE                          VAL R10
      122 CAPTURE                          VAL R13
      123 CAPTURE                          VAL R16
      124 CAPTURE                          VAL R17
      125 CAPTURE                          VAL R1
      126 CAPTURE                          VAL R9
      127 CAPTURE                          VAL R15
      128 CAPTURE                          VAL R8
      129 DUPCLOSURE                       R20 K36 [PROTO_4]
      130 CAPTURE                          VAL R4
      131 CAPTURE                          VAL R12
      132 CAPTURE                          VAL R5
      133 CAPTURE                          VAL R10
      134 CAPTURE                          VAL R16
      135 CAPTURE                          VAL R17
      136 CAPTURE                          VAL R1
      137 CAPTURE                          VAL R9
      138 CAPTURE                          VAL R15
      139 CAPTURE                          VAL R14
      140 CAPTURE                          VAL R2
      141 DUPCLOSURE                       R21 K37 [PROTO_5]
      142 CAPTURE                          VAL R18
      143 CAPTURE                          VAL R17
      144 CAPTURE                          VAL R20
      145 CAPTURE                          VAL R19
      146 CAPTURE                          VAL R3
      147 DUPTABLE                         R22 K40 [{"toMeta", "fromMeta"}]
      148 DUPCLOSURE                       R23 K41 [PROTO_6]
      149 CAPTURE                          VAL R13
      150 CAPTURE                          VAL R18
      151 SETTABLEKS                       R23 R22 K38 ["toMeta"]
      153 DUPCLOSURE                       R23 K42 [PROTO_7]
      154 CAPTURE                          VAL R13
      155 CAPTURE                          VAL R18
      156 CAPTURE                          VAL R6
      157 SETTABLEKS                       R23 R22 K39 ["fromMeta"]
      159 DUPTABLE                         R23 K47 [{"Type", "ContentWidget", "Serialization", "Modes"}]
      160 LOADK                            R24 K48 ["CreatorStoreInsert"]
      161 SETTABLEKS                       R24 R23 K43 ["Type"]
      163 GETTABLEKS                       R24 R5 K49 ["memo"]
      165 MOVE                             R25 R21
      166 CALL                             R24 1 1
      167 SETTABLEKS                       R24 R23 K44 ["ContentWidget"]
      169 SETTABLEKS                       R22 R23 K45 ["Serialization"]
      171 SETTABLEKS                       R18 R23 K46 ["Modes"]
      173 RETURN                           R23 1
