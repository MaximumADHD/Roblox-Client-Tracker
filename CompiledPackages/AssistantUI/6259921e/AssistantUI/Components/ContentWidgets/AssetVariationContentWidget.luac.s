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
        1 GETTABLEKS                       R0 R0 K0 ["className"]
        3 JUMPIF                           R0 ; [+2]
        4 GETUPVAL                         R0 1
        5 RETURN                           R0 1
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K1 ["getClassIcon"]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K0 ["className"]
       12 CALL                             R0 1 -1
       13 RETURN                           R0 -1

PROTO_4:
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

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R2 R1 K2 ["Padding"]
        8 GETTABLEKS                       R2 R2 K3 ["XXSmall"]
       10 GETTABLEKS                       R3 R1 K4 ["Config"]
       12 GETTABLEKS                       R3 R3 K5 ["ColorMode"]
       14 GETTABLEKS                       R3 R3 K6 ["Name"]
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R4 R4 K7 ["get"]
       19 CALL                             R4 0 1
       20 NEWTABLE                         R5 0 0
       22 GETTABLEKS                       R6 R0 K8 ["assetIds"]
       24 LOADNIL                          R7
       25 LOADNIL                          R8
       26 FORGPREP                         R6
       27 LOADK                            R12 K9 ["rbxthumb://type=Asset&id=%*&w=150&h=150"]
       28 MOVE                             R14 R10
       29 NAMECALL                         R12 R12 K10 ["format"]
       31 CALL                             R12 2 1
       32 MOVE                             R11 R12
       33 DUPTABLE                         R14 K13 [{"uri", "onActivated"}]
       34 SETTABLEKS                       R11 R14 K11 ["uri"]
       36 NEWCLOSURE                       R15 P0
       37 CAPTURE                          VAL R0
       38 CAPTURE                          VAL R10
       39 SETTABLEKS                       R15 R14 K12 ["onActivated"]
       41 FASTCALL2                        TABLE_INSERT R5 R14 ; [+4]
       43 MOVE                             R13 R5
       44 GETIMPORT                        R12 K16 [table.insert]
       46 CALL                             R12 2 0
       47 FORGLOOP                         R6 2 ; [-21]
       49 GETUPVAL                         R6 2
       50 GETTABLEKS                       R6 R6 K17 ["useMemo"]
       52 NEWCLOSURE                       R7 P1
       53 CAPTURE                          VAL R0
       54 CAPTURE                          UPVAL U3
       55 CAPTURE                          VAL R4
       56 NEWTABLE                         R8 0 2
       58 MOVE                             R9 R3
       59 GETTABLEKS                       R10 R0 K18 ["className"]
       61 SETLIST                          R8 R9 2 [1]
       63 CALL                             R6 2 1
       64 GETUPVAL                         R7 2
       65 GETTABLEKS                       R7 R7 K17 ["useMemo"]
       67 NEWCLOSURE                       R8 P2
       68 CAPTURE                          UPVAL U4
       69 CAPTURE                          VAL R0
       70 NEWTABLE                         R9 0 3
       72 GETUPVAL                         R10 4
       73 GETTABLEKS                       R10 R10 K19 ["locale"]
       75 GETTABLEKS                       R11 R0 K20 ["displayName"]
       77 GETTABLEKS                       R12 R0 K21 ["shouldShowChip"]
       79 SETLIST                          R9 R10 3 [1]
       81 CALL                             R7 2 1
       82 GETUPVAL                         R8 5
       83 CALL                             R8 0 1
       84 GETUPVAL                         R9 6
       85 GETUPVAL                         R10 7
       86 GETTABLEKS                       R10 R10 K22 ["Root"]
       88 DUPTABLE                         R11 K27 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
       89 GETTABLEKS                       R12 R0 K23 ["LayoutOrder"]
       91 SETTABLEKS                       R12 R11 K23 ["LayoutOrder"]
       93 GETTABLEKS                       R12 R0 K24 ["expanded"]
       95 SETTABLEKS                       R12 R11 K24 ["expanded"]
       97 GETTABLEKS                       R12 R0 K25 ["contentId"]
       99 SETTABLEKS                       R12 R11 K25 ["contentId"]
      101 GETTABLEKS                       R12 R0 K26 ["editThisContent"]
      103 SETTABLEKS                       R12 R11 K26 ["editThisContent"]
      105 DUPTABLE                         R12 K30 [{"Header", "Content"}]
      106 GETUPVAL                         R13 6
      107 GETUPVAL                         R14 7
      108 GETTABLEKS                       R14 R14 K28 ["Header"]
      110 DUPTABLE                         R15 K32 [{"LayoutOrder", "testId"}]
      111 MOVE                             R16 R8
      112 CALL                             R16 0 1
      113 SETTABLEKS                       R16 R15 K23 ["LayoutOrder"]
      115 GETUPVAL                         R16 8
      116 GETTABLEKS                       R16 R16 K33 ["AssetVariation"]
      118 GETTABLEKS                       R16 R16 K34 ["Expand"]
      120 SETTABLEKS                       R16 R15 K31 ["testId"]
      122 DUPTABLE                         R16 K37 [{"Text", "AssetLink"}]
      123 GETUPVAL                         R17 6
      124 GETUPVAL                         R18 9
      125 DUPTABLE                         R19 K39 [{"tag", "Text", "LayoutOrder"}]
      126 LOADK                            R20 K40 ["size-0-full auto-x text-label-small content-default text-truncate-end text-align-y-center"]
      127 SETTABLEKS                       R20 R19 K38 ["tag"]
      129 GETTABLEKS                       R20 R7 K41 ["Generated"]
      131 SETTABLEKS                       R20 R19 K35 ["Text"]
      133 MOVE                             R20 R8
      134 CALL                             R20 0 1
      135 SETTABLEKS                       R20 R19 K23 ["LayoutOrder"]
      137 CALL                             R17 2 1
      138 SETTABLEKS                       R17 R16 K35 ["Text"]
      140 GETTABLEKS                       R17 R0 K21 ["shouldShowChip"]
      142 JUMPIFNOT                        R17 ; [+32]
      143 GETUPVAL                         R17 6
      144 GETUPVAL                         R18 10
      145 DUPTABLE                         R19 K46 [{"text", "leading", "onActivated", "isChecked", "size", "LayoutOrder"}]
      146 GETTABLEKS                       R20 R0 K20 ["displayName"]
      148 SETTABLEKS                       R20 R19 K42 ["text"]
      150 GETTABLEKS                       R20 R6 K47 ["Image"]
      152 SETTABLEKS                       R20 R19 K43 ["leading"]
      154 GETTABLEKS                       R20 R0 K48 ["onChipClicked"]
      156 SETTABLEKS                       R20 R19 K12 ["onActivated"]
      158 LOADB                            R20 0
      159 SETTABLEKS                       R20 R19 K44 ["isChecked"]
      161 GETUPVAL                         R20 0
      162 GETTABLEKS                       R20 R20 K49 ["Enums"]
      164 GETTABLEKS                       R20 R20 K50 ["ChipSize"]
      166 GETTABLEKS                       R20 R20 K51 ["Small"]
      168 SETTABLEKS                       R20 R19 K45 ["size"]
      170 MOVE                             R20 R8
      171 CALL                             R20 0 1
      172 SETTABLEKS                       R20 R19 K23 ["LayoutOrder"]
      174 CALL                             R17 2 1
      175 SETTABLEKS                       R17 R16 K36 ["AssetLink"]
      177 CALL                             R13 3 1
      178 SETTABLEKS                       R13 R12 K28 ["Header"]
      180 GETUPVAL                         R13 6
      181 GETUPVAL                         R14 7
      182 GETTABLEKS                       R14 R14 K29 ["Content"]
      184 DUPTABLE                         R15 K52 [{"tag", "LayoutOrder"}]
      185 LOADK                            R16 K53 ["col size-0-0 fill auto-y gap-small"]
      186 SETTABLEKS                       R16 R15 K38 ["tag"]
      188 MOVE                             R16 R8
      189 CALL                             R16 0 1
      190 SETTABLEKS                       R16 R15 K23 ["LayoutOrder"]
      192 DUPTABLE                         R16 K55 [{"Text", "Carousel"}]
      193 GETUPVAL                         R17 6
      194 GETUPVAL                         R18 9
      195 DUPTABLE                         R19 K39 [{"tag", "Text", "LayoutOrder"}]
      196 LOADK                            R20 K56 ["size-0-0 auto-xy text-body-small content-default text-truncate-end"]
      197 SETTABLEKS                       R20 R19 K38 ["tag"]
      199 GETTABLEKS                       R20 R7 K57 ["AssetVariationsDescription"]
      201 SETTABLEKS                       R20 R19 K35 ["Text"]
      203 MOVE                             R20 R8
      204 CALL                             R20 0 1
      205 SETTABLEKS                       R20 R19 K23 ["LayoutOrder"]
      207 CALL                             R17 2 1
      208 SETTABLEKS                       R17 R16 K35 ["Text"]
      210 GETUPVAL                         R17 6
      211 GETUPVAL                         R18 11
      212 DUPTABLE                         R19 K62 [{"height", "imagePadding", "canSelect", "items", "LayoutOrder"}]
      213 LOADN                            R20 70
      214 SETTABLEKS                       R20 R19 K58 ["height"]
      216 SETTABLEKS                       R2 R19 K59 ["imagePadding"]
      218 LOADB                            R20 1
      219 SETTABLEKS                       R20 R19 K60 ["canSelect"]
      221 SETTABLEKS                       R5 R19 K61 ["items"]
      223 MOVE                             R20 R8
      224 CALL                             R20 0 1
      225 SETTABLEKS                       R20 R19 K23 ["LayoutOrder"]
      227 CALL                             R17 2 1
      228 SETTABLEKS                       R17 R16 K54 ["Carousel"]
      230 CALL                             R13 3 1
      231 SETTABLEKS                       R13 R12 K29 ["Content"]
      233 CALL                             R9 3 -1
      234 RETURN                           R9 -1

PROTO_6:
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

PROTO_7:
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

PROTO_8:
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
       16 LOADK                            R3 K8 ["AssetVariation"]
       17 SETTABLEKS                       R3 R2 K5 ["type"]
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R3 R3 K9 ["Preparing"]
       22 SETTABLEKS                       R3 R2 K3 ["mode"]
       24 LOADB                            R3 1
       25 SETTABLEKS                       R3 R2 K6 ["isError"]
       27 RETURN                           R2 1
       28 GETTABLEKS                       R3 R0 K11 ["name"]
       30 ORK                              R2 R3 K10 ["UNKNOWN_NAME"]
       31 DUPTABLE                         R3 K20 [{"type", "mode", "name", "displayName", "tag", "className", "assetIds", "expanded", "shouldShowChip", "onSelectionChange", "onChipClicked"}]
       32 LOADK                            R4 K8 ["AssetVariation"]
       33 SETTABLEKS                       R4 R3 K5 ["type"]
       35 GETTABLEKS                       R4 R0 K3 ["mode"]
       37 SETTABLEKS                       R4 R3 K3 ["mode"]
       39 SETTABLEKS                       R2 R3 K11 ["name"]
       41 SETTABLEKS                       R2 R3 K12 ["displayName"]
       43 GETTABLEKS                       R5 R0 K13 ["tag"]
       45 ORK                              R4 R5 K21 ["UNKNOWN_TAG"]
       46 SETTABLEKS                       R4 R3 K13 ["tag"]
       48 LOADNIL                          R4
       49 SETTABLEKS                       R4 R3 K14 ["className"]
       51 GETTABLEKS                       R4 R0 K15 ["assetIds"]
       53 JUMPIF                           R4 ; [+2]
       54 NEWTABLE                         R4 0 0
       56 SETTABLEKS                       R4 R3 K15 ["assetIds"]
       58 LOADB                            R4 0
       59 SETTABLEKS                       R4 R3 K16 ["expanded"]
       61 LOADB                            R4 0
       62 SETTABLEKS                       R4 R3 K17 ["shouldShowChip"]
       64 GETUPVAL                         R4 2
       65 GETTABLEKS                       R4 R4 K22 ["createUnimplemented"]
       67 LOADK                            R5 K18 ["onSelectionChange"]
       68 CALL                             R4 1 1
       69 SETTABLEKS                       R4 R3 K18 ["onSelectionChange"]
       71 GETUPVAL                         R4 2
       72 GETTABLEKS                       R4 R4 K22 ["createUnimplemented"]
       74 LOADK                            R5 K19 ["onChipClicked"]
       75 CALL                             R4 1 1
       76 SETTABLEKS                       R4 R3 K19 ["onChipClicked"]
       78 RETURN                           R3 1

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
       30 GETTABLEKS                       R5 R0 K11 ["Guest"]
       32 GETTABLEKS                       R5 R5 K12 ["Environment"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K9 ["Parent"]
       39 GETTABLEKS                       R6 R6 K13 ["Foundation"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K9 ["Parent"]
       46 GETTABLEKS                       R7 R7 K14 ["React"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K9 ["Parent"]
       53 GETTABLEKS                       R8 R8 K15 ["ReactUtils"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K16 ["Util"]
       60 GETTABLEKS                       R9 R9 K17 ["Serializer"]
       62 GETTABLEKS                       R9 R9 K18 ["SerializerTypes"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K6 ["Components"]
       69 GETTABLEKS                       R10 R10 K19 ["ShimmerGradient"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K16 ["Util"]
       76 GETTABLEKS                       R11 R11 K20 ["TestIds"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R12 R0 K21 ["Resources"]
       83 GETTABLEKS                       R12 R12 K22 ["Localization"]
       85 GETTABLEKS                       R12 R12 K23 ["Translator"]
       87 CALL                             R11 1 1
       88 GETIMPORT                        R12 K5 [require]
       90 GETTABLEKS                       R13 R0 K24 ["Types"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K5 [require]
       95 GETTABLEKS                       R14 R0 K25 ["Flags"]
       97 GETTABLEKS                       R14 R14 K26 ["FFlagAssistantMultipleChatPersistence"]
       99 CALL                             R13 1 1
      100 GETTABLEKS                       R14 R5 K27 ["Chip"]
      102 GETTABLEKS                       R15 R5 K28 ["Text"]
      104 GETTABLEKS                       R16 R7 K29 ["createNextOrder"]
      106 GETTABLEKS                       R17 R6 K30 ["createElement"]
      108 DUPTABLE                         R18 K34 [{"Image", "ImageRectOffset", "ImageRectSize"}]
      109 LOADK                            R19 K35 [""]
      110 SETTABLEKS                       R19 R18 K31 ["Image"]
      112 GETIMPORT                        R19 K38 [Vector2.new]
      114 LOADN                            R20 0
      115 LOADN                            R21 0
      116 CALL                             R19 2 1
      117 SETTABLEKS                       R19 R18 K32 ["ImageRectOffset"]
      119 GETIMPORT                        R19 K38 [Vector2.new]
      121 LOADN                            R20 0
      122 LOADN                            R21 0
      123 CALL                             R19 2 1
      124 SETTABLEKS                       R19 R18 K33 ["ImageRectSize"]
      126 DUPTABLE                         R19 K42 [{"Preparing", "Generating", "Generated"}]
      127 LOADK                            R20 K39 ["Preparing"]
      128 SETTABLEKS                       R20 R19 K39 ["Preparing"]
      130 LOADK                            R20 K40 ["Generating"]
      131 SETTABLEKS                       R20 R19 K40 ["Generating"]
      133 LOADK                            R20 K41 ["Generated"]
      134 SETTABLEKS                       R20 R19 K41 ["Generated"]
      136 DUPCLOSURE                       R20 K43 [PROTO_1]
      137 CAPTURE                          VAL R19
      138 CAPTURE                          VAL R6
      139 CAPTURE                          VAL R11
      140 CAPTURE                          VAL R13
      141 CAPTURE                          VAL R16
      142 CAPTURE                          VAL R17
      143 CAPTURE                          VAL R1
      144 CAPTURE                          VAL R10
      145 CAPTURE                          VAL R15
      146 CAPTURE                          VAL R9
      147 DUPCLOSURE                       R21 K44 [PROTO_5]
      148 CAPTURE                          VAL R5
      149 CAPTURE                          VAL R4
      150 CAPTURE                          VAL R6
      151 CAPTURE                          VAL R18
      152 CAPTURE                          VAL R11
      153 CAPTURE                          VAL R16
      154 CAPTURE                          VAL R17
      155 CAPTURE                          VAL R1
      156 CAPTURE                          VAL R10
      157 CAPTURE                          VAL R15
      158 CAPTURE                          VAL R14
      159 CAPTURE                          VAL R2
      160 DUPCLOSURE                       R22 K45 [PROTO_6]
      161 CAPTURE                          VAL R19
      162 CAPTURE                          VAL R17
      163 CAPTURE                          VAL R21
      164 CAPTURE                          VAL R20
      165 CAPTURE                          VAL R3
      166 DUPTABLE                         R23 K48 [{"toMeta", "fromMeta"}]
      167 DUPCLOSURE                       R24 K49 [PROTO_7]
      168 CAPTURE                          VAL R13
      169 CAPTURE                          VAL R19
      170 SETTABLEKS                       R24 R23 K46 ["toMeta"]
      172 DUPCLOSURE                       R24 K50 [PROTO_8]
      173 CAPTURE                          VAL R13
      174 CAPTURE                          VAL R19
      175 CAPTURE                          VAL R7
      176 SETTABLEKS                       R24 R23 K47 ["fromMeta"]
      178 DUPTABLE                         R24 K55 [{"Type", "ContentWidget", "Serialization", "Modes"}]
      179 LOADK                            R25 K56 ["AssetVariation"]
      180 SETTABLEKS                       R25 R24 K51 ["Type"]
      182 GETTABLEKS                       R25 R6 K57 ["memo"]
      184 MOVE                             R26 R22
      185 CALL                             R25 1 1
      186 SETTABLEKS                       R25 R24 K52 ["ContentWidget"]
      188 SETTABLEKS                       R23 R24 K53 ["Serialization"]
      190 SETTABLEKS                       R19 R24 K54 ["Modes"]
      192 RETURN                           R24 1
