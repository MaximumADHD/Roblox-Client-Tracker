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
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["Generating"]
        5 JUMPIFNOTEQ                      R2 R3 ; [+4]
        7 GETTABLEKS                       R1 R0 K2 ["displayName"]
        9 JUMP                             ; [+1]
       10 LOADK                            R1 K3 [""]
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R2 R3 K4 ["useMemo"]
       14 NEWCLOSURE                       R3 P0
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          VAL R1
       17 NEWTABLE                         R4 0 2
       19 GETUPVAL                         R6 2
       20 GETTABLEKS                       R5 R6 K5 ["locale"]
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
       36 GETUPVAL                         R6 0
       37 GETTABLEKS                       R5 R6 K7 ["Preparing"]
       39 JUMPIFEQ                         R4 R5 ; [+14]
       41 GETTABLEKS                       R4 R0 K0 ["mode"]
       43 GETUPVAL                         R6 0
       44 GETTABLEKS                       R5 R6 K1 ["Generating"]
       46 JUMPIFEQ                         R4 R5 ; [+2]
       48 LOADB                            R3 0 +1
       49 LOADB                            R3 1
       50 JUMP                             ; [+3]
       51 GETTABLEKS                       R4 R0 K6 ["isError"]
       53 NOT                              R3 R4
       54 GETUPVAL                         R4 4
       55 CALL                             R4 0 1
       56 GETUPVAL                         R5 5
       57 GETUPVAL                         R7 6
       58 GETTABLEKS                       R6 R7 K8 ["Root"]
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
       78 GETUPVAL                         R11 6
       79 GETTABLEKS                       R10 R11 K14 ["Header"]
       81 DUPTABLE                         R11 K18 [{"IsDisabled", "LayoutOrder", "testId"}]
       82 LOADB                            R12 1
       83 SETTABLEKS                       R12 R11 K16 ["IsDisabled"]
       85 MOVE                             R12 R4
       86 CALL                             R12 0 1
       87 SETTABLEKS                       R12 R11 K9 ["LayoutOrder"]
       89 GETUPVAL                         R14 7
       90 GETTABLEKS                       R13 R14 K19 ["AssetVariation"]
       92 GETTABLEKS                       R12 R13 K20 ["Expand"]
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
      111 GETUPVAL                         R19 0
      112 GETTABLEKS                       R18 R19 K1 ["Generating"]
      114 JUMPIFNOTEQ                      R17 R18 ; [+4]
      116 GETTABLEKS                       R16 R2 K1 ["Generating"]
      118 JUMP                             ; [+12]
      119 GETTABLEKS                       R17 R0 K0 ["mode"]
      121 GETUPVAL                         R19 0
      122 GETTABLEKS                       R18 R19 K7 ["Preparing"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onSelectionChange"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["onSelectionChange"]
        7 GETUPVAL                         R1 1
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AssetVariation"]
        2 LOADK                            R3 K1 ["Generated"]
        3 DUPTABLE                         R4 K3 [{"name"}]
        4 GETUPVAL                         R7 1
        5 GETTABLEKS                       R6 R7 K4 ["shouldShowChip"]
        7 JUMPIFNOT                        R6 ; [+2]
        8 LOADK                            R5 K5 ["{CHIP}"]
        9 JUMP                             ; [+3]
       10 GETUPVAL                         R6 1
       11 GETTABLEKS                       R5 R6 K6 ["displayName"]
       13 SETTABLEKS                       R5 R4 K2 ["name"]
       15 NAMECALL                         R0 R0 K7 ["getText"]
       17 CALL                             R0 4 1
       18 GETUPVAL                         R2 1
       19 GETTABLEKS                       R1 R2 K4 ["shouldShowChip"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R2 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R3 R1 K2 ["Padding"]
        8 GETTABLEKS                       R2 R3 K3 ["XXSmall"]
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
       43 GETUPVAL                         R6 2
       44 GETTABLEKS                       R5 R6 K14 ["useMemo"]
       46 NEWCLOSURE                       R6 P1
       47 CAPTURE                          UPVAL U3
       48 CAPTURE                          VAL R0
       49 NEWTABLE                         R7 0 3
       51 GETUPVAL                         R9 3
       52 GETTABLEKS                       R8 R9 K15 ["locale"]
       54 GETTABLEKS                       R9 R0 K16 ["displayName"]
       56 GETTABLEKS                       R10 R0 K17 ["shouldShowChip"]
       58 SETLIST                          R7 R8 3 [1]
       60 CALL                             R5 2 1
       61 GETUPVAL                         R6 4
       62 CALL                             R6 0 1
       63 GETUPVAL                         R7 5
       64 GETUPVAL                         R9 6
       65 GETTABLEKS                       R8 R9 K18 ["Root"]
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
       86 GETUPVAL                         R13 6
       87 GETTABLEKS                       R12 R13 K24 ["Header"]
       89 DUPTABLE                         R13 K28 [{"LayoutOrder", "testId"}]
       90 MOVE                             R14 R6
       91 CALL                             R14 0 1
       92 SETTABLEKS                       R14 R13 K19 ["LayoutOrder"]
       94 GETUPVAL                         R16 7
       95 GETTABLEKS                       R15 R16 K29 ["AssetVariation"]
       97 GETTABLEKS                       R14 R15 K30 ["Expand"]
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
      140 GETUPVAL                         R21 0
      141 GETTABLEKS                       R20 R21 K45 ["Enums"]
      143 GETTABLEKS                       R19 R20 K46 ["ChipSize"]
      145 GETTABLEKS                       R18 R19 K47 ["Small"]
      147 SETTABLEKS                       R18 R17 K41 ["size"]
      149 MOVE                             R18 R6
      150 CALL                             R18 0 1
      151 SETTABLEKS                       R18 R17 K19 ["LayoutOrder"]
      153 CALL                             R15 2 1
      154 SETTABLEKS                       R15 R14 K32 ["AssetLink"]
      156 CALL                             R11 3 1
      157 SETTABLEKS                       R11 R10 K24 ["Header"]
      159 GETUPVAL                         R11 5
      160 GETUPVAL                         R13 6
      161 GETTABLEKS                       R12 R13 K25 ["Content"]
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
        3 GETTABLEKS                       R2 R0 K0 ["toolResult"]
        5 GETTABLEKS                       R1 R2 K1 ["isError"]
        7 GETTABLEKS                       R2 R0 K2 ["mode"]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R3 R4 K3 ["Generated"]
       12 JUMPIFNOTEQ                      R2 R3 ; [+7]
       14 JUMPIF                           R1 ; [+5]
       15 GETUPVAL                         R2 1
       16 GETUPVAL                         R3 2
       17 MOVE                             R4 R0
       18 CALL                             R2 2 -1
       19 RETURN                           R2 -1
       20 GETUPVAL                         R2 1
       21 GETUPVAL                         R3 3
       22 GETUPVAL                         R6 4
       23 GETTABLEKS                       R5 R6 K4 ["Dictionary"]
       25 GETTABLEKS                       R4 R5 K5 ["join"]
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
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R2 R3 K4 ["Generated"]
       13 JUMPIFEQ                         R1 R2 ; [+12]
       15 DUPTABLE                         R1 K6 [{"type", "mode"}]
       16 GETTABLEKS                       R2 R0 K5 ["type"]
       18 SETTABLEKS                       R2 R1 K5 ["type"]
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R2 R3 K7 ["Preparing"]
       23 SETTABLEKS                       R2 R1 K3 ["mode"]
       25 RETURN                           R1 1
       26 DUPTABLE                         R1 K11 [{"type", "mode", "name", "tag", "assetIds"}]
       27 GETTABLEKS                       R2 R0 K5 ["type"]
       29 SETTABLEKS                       R2 R1 K5 ["type"]
       31 GETTABLEKS                       R2 R0 K3 ["mode"]
       33 SETTABLEKS                       R2 R1 K3 ["mode"]
       35 GETTABLEKS                       R2 R0 K8 ["name"]
       37 SETTABLEKS                       R2 R1 K8 ["name"]
       39 GETTABLEKS                       R2 R0 K9 ["tag"]
       41 SETTABLEKS                       R2 R1 K9 ["tag"]
       43 GETTABLEKS                       R2 R0 K10 ["assetIds"]
       45 SETTABLEKS                       R2 R1 K10 ["assetIds"]
       47 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAssistantMultipleChatPersistence is not enabled!"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETTABLEKS                       R1 R0 K3 ["mode"]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R2 R3 K4 ["Generated"]
       13 JUMPIFEQ                         R1 R2 ; [+15]
       15 DUPTABLE                         R1 K7 [{"type", "mode", "isError"}]
       16 GETTABLEKS                       R2 R0 K5 ["type"]
       18 SETTABLEKS                       R2 R1 K5 ["type"]
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R2 R3 K8 ["Preparing"]
       23 SETTABLEKS                       R2 R1 K3 ["mode"]
       25 LOADB                            R2 1
       26 SETTABLEKS                       R2 R1 K6 ["isError"]
       28 RETURN                           R1 1
       29 DUPTABLE                         R1 K18 [{"type", "mode", "name", "displayName", "tag", "className", "assetIds", "expanded", "shouldShowChip", "onSelectionChange", "onChipClicked"}]
       30 GETTABLEKS                       R2 R0 K5 ["type"]
       32 SETTABLEKS                       R2 R1 K5 ["type"]
       34 GETTABLEKS                       R2 R0 K3 ["mode"]
       36 SETTABLEKS                       R2 R1 K3 ["mode"]
       38 GETTABLEKS                       R2 R0 K9 ["name"]
       40 SETTABLEKS                       R2 R1 K9 ["name"]
       42 GETTABLEKS                       R2 R0 K9 ["name"]
       44 SETTABLEKS                       R2 R1 K10 ["displayName"]
       46 GETTABLEKS                       R2 R0 K11 ["tag"]
       48 SETTABLEKS                       R2 R1 K11 ["tag"]
       50 LOADNIL                          R2
       51 SETTABLEKS                       R2 R1 K12 ["className"]
       53 GETTABLEKS                       R2 R0 K13 ["assetIds"]
       55 SETTABLEKS                       R2 R1 K13 ["assetIds"]
       57 LOADB                            R2 0
       58 SETTABLEKS                       R2 R1 K14 ["expanded"]
       60 LOADB                            R2 0
       61 SETTABLEKS                       R2 R1 K15 ["shouldShowChip"]
       63 GETUPVAL                         R3 2
       64 GETTABLEKS                       R2 R3 K19 ["createUnimplemented"]
       66 LOADK                            R3 K16 ["onSelectionChange"]
       67 CALL                             R2 1 1
       68 SETTABLEKS                       R2 R1 K16 ["onSelectionChange"]
       70 GETUPVAL                         R3 2
       71 GETTABLEKS                       R2 R3 K19 ["createUnimplemented"]
       73 LOADK                            R3 K17 ["onChipClicked"]
       74 CALL                             R2 1 1
       75 SETTABLEKS                       R2 R1 K17 ["onChipClicked"]
       77 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R3 K7 ["Accordion"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Components"]
       18 GETTABLEKS                       R3 R4 K8 ["Carousel"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K9 ["Parent"]
       25 GETTABLEKS                       R4 R5 K10 ["Cryo"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K9 ["Parent"]
       32 GETTABLEKS                       R5 R6 K11 ["Foundation"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K9 ["Parent"]
       39 GETTABLEKS                       R6 R7 K12 ["React"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R8 R0 K9 ["Parent"]
       46 GETTABLEKS                       R7 R8 K13 ["ReactUtils"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R9 R0 K6 ["Components"]
       53 GETTABLEKS                       R8 R9 K14 ["ShimmerGradient"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R10 R0 K15 ["Util"]
       60 GETTABLEKS                       R9 R10 K16 ["TestIds"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R12 R0 K17 ["Resources"]
       67 GETTABLEKS                       R11 R12 K18 ["Localization"]
       69 GETTABLEKS                       R10 R11 K19 ["Translator"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K20 ["Types"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R13 R0 K21 ["Hooks"]
       81 GETTABLEKS                       R12 R13 K22 ["useClassIcon"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETTABLEKS                       R14 R0 K23 ["Flags"]
       88 GETTABLEKS                       R13 R14 K24 ["FFlagAssistantMultipleChatPersistence"]
       90 CALL                             R12 1 1
       91 GETTABLEKS                       R13 R4 K25 ["Chip"]
       93 GETTABLEKS                       R14 R4 K26 ["Text"]
       95 GETTABLEKS                       R15 R6 K27 ["createNextOrder"]
       97 GETTABLEKS                       R16 R5 K28 ["createElement"]
       99 DUPTABLE                         R17 K32 [{"Preparing", "Generating", "Generated"}]
      100 LOADK                            R18 K29 ["Preparing"]
      101 SETTABLEKS                       R18 R17 K29 ["Preparing"]
      103 LOADK                            R18 K30 ["Generating"]
      104 SETTABLEKS                       R18 R17 K30 ["Generating"]
      106 LOADK                            R18 K31 ["Generated"]
      107 SETTABLEKS                       R18 R17 K31 ["Generated"]
      109 DUPCLOSURE                       R18 K33 [PROTO_1]
      110 CAPTURE                          VAL R17
      111 CAPTURE                          VAL R5
      112 CAPTURE                          VAL R9
      113 CAPTURE                          VAL R12
      114 CAPTURE                          VAL R15
      115 CAPTURE                          VAL R16
      116 CAPTURE                          VAL R1
      117 CAPTURE                          VAL R8
      118 CAPTURE                          VAL R14
      119 CAPTURE                          VAL R7
      120 DUPCLOSURE                       R19 K34 [PROTO_4]
      121 CAPTURE                          VAL R4
      122 CAPTURE                          VAL R11
      123 CAPTURE                          VAL R5
      124 CAPTURE                          VAL R9
      125 CAPTURE                          VAL R15
      126 CAPTURE                          VAL R16
      127 CAPTURE                          VAL R1
      128 CAPTURE                          VAL R8
      129 CAPTURE                          VAL R14
      130 CAPTURE                          VAL R13
      131 CAPTURE                          VAL R2
      132 DUPCLOSURE                       R20 K35 [PROTO_5]
      133 CAPTURE                          VAL R17
      134 CAPTURE                          VAL R16
      135 CAPTURE                          VAL R19
      136 CAPTURE                          VAL R18
      137 CAPTURE                          VAL R3
      138 DUPCLOSURE                       R21 K36 [PROTO_6]
      139 CAPTURE                          VAL R12
      140 CAPTURE                          VAL R17
      141 DUPCLOSURE                       R22 K37 [PROTO_7]
      142 CAPTURE                          VAL R12
      143 CAPTURE                          VAL R17
      144 CAPTURE                          VAL R6
      145 DUPTABLE                         R23 K42 [{"Type", "ContentWidget", "Serialization", "Modes"}]
      146 LOADK                            R24 K43 ["CreatorStoreInsert"]
      147 SETTABLEKS                       R24 R23 K38 ["Type"]
      149 GETTABLEKS                       R24 R5 K44 ["memo"]
      151 MOVE                             R25 R20
      152 CALL                             R24 1 1
      153 SETTABLEKS                       R24 R23 K39 ["ContentWidget"]
      155 DUPTABLE                         R24 K47 [{"serialize", "deserialize"}]
      156 SETTABLEKS                       R21 R24 K45 ["serialize"]
      158 SETTABLEKS                       R22 R24 K46 ["deserialize"]
      160 SETTABLEKS                       R24 R23 K40 ["Serialization"]
      162 SETTABLEKS                       R17 R23 K41 ["Modes"]
      164 RETURN                           R23 1
