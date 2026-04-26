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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["className"]
        3 JUMPIF                           R0 ; [+2]
        4 GETUPVAL                         R0 1
        5 RETURN                           R0 1
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R0 R1 K1 ["getClassIcon"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R1 R2 K0 ["className"]
       12 CALL                             R0 1 -1
       13 RETURN                           R0 -1

PROTO_4:
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

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R2 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R3 R1 K2 ["Padding"]
        8 GETTABLEKS                       R2 R3 K3 ["XXSmall"]
       10 GETTABLEKS                       R5 R1 K4 ["Config"]
       12 GETTABLEKS                       R4 R5 K5 ["ColorMode"]
       14 GETTABLEKS                       R3 R4 K6 ["Name"]
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R4 R5 K7 ["get"]
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
       49 GETUPVAL                         R7 2
       50 GETTABLEKS                       R6 R7 K17 ["useMemo"]
       52 NEWCLOSURE                       R7 P1
       53 CAPTURE                          VAL R0
       54 CAPTURE                          UPVAL U3
       55 CAPTURE                          VAL R4
       56 NEWTABLE                         R8 0 2
       58 MOVE                             R9 R3
       59 GETTABLEKS                       R10 R0 K18 ["className"]
       61 SETLIST                          R8 R9 2 [1]
       63 CALL                             R6 2 1
       64 GETUPVAL                         R8 2
       65 GETTABLEKS                       R7 R8 K17 ["useMemo"]
       67 NEWCLOSURE                       R8 P2
       68 CAPTURE                          UPVAL U4
       69 CAPTURE                          VAL R0
       70 NEWTABLE                         R9 0 3
       72 GETUPVAL                         R11 4
       73 GETTABLEKS                       R10 R11 K19 ["locale"]
       75 GETTABLEKS                       R11 R0 K20 ["displayName"]
       77 GETTABLEKS                       R12 R0 K21 ["shouldShowChip"]
       79 SETLIST                          R9 R10 3 [1]
       81 CALL                             R7 2 1
       82 GETUPVAL                         R8 5
       83 CALL                             R8 0 1
       84 GETUPVAL                         R9 6
       85 GETUPVAL                         R11 7
       86 GETTABLEKS                       R10 R11 K22 ["Root"]
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
      107 GETUPVAL                         R15 7
      108 GETTABLEKS                       R14 R15 K28 ["Header"]
      110 DUPTABLE                         R15 K32 [{"LayoutOrder", "testId"}]
      111 MOVE                             R16 R8
      112 CALL                             R16 0 1
      113 SETTABLEKS                       R16 R15 K23 ["LayoutOrder"]
      115 GETUPVAL                         R18 8
      116 GETTABLEKS                       R17 R18 K33 ["AssetVariation"]
      118 GETTABLEKS                       R16 R17 K34 ["Expand"]
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
      161 GETUPVAL                         R23 0
      162 GETTABLEKS                       R22 R23 K49 ["Enums"]
      164 GETTABLEKS                       R21 R22 K50 ["ChipSize"]
      166 GETTABLEKS                       R20 R21 K51 ["Small"]
      168 SETTABLEKS                       R20 R19 K45 ["size"]
      170 MOVE                             R20 R8
      171 CALL                             R20 0 1
      172 SETTABLEKS                       R20 R19 K23 ["LayoutOrder"]
      174 CALL                             R17 2 1
      175 SETTABLEKS                       R17 R16 K36 ["AssetLink"]
      177 CALL                             R13 3 1
      178 SETTABLEKS                       R13 R12 K28 ["Header"]
      180 GETUPVAL                         R13 6
      181 GETUPVAL                         R15 7
      182 GETTABLEKS                       R14 R15 K29 ["Content"]
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

PROTO_8:
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
       30 GETTABLEKS                       R6 R0 K11 ["Guest"]
       32 GETTABLEKS                       R5 R6 K12 ["Environment"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K9 ["Parent"]
       39 GETTABLEKS                       R6 R7 K13 ["Foundation"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R8 R0 K9 ["Parent"]
       46 GETTABLEKS                       R7 R8 K14 ["React"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R9 R0 K9 ["Parent"]
       53 GETTABLEKS                       R8 R9 K15 ["ReactUtils"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R10 R0 K6 ["Components"]
       60 GETTABLEKS                       R9 R10 K16 ["ShimmerGradient"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R11 R0 K17 ["Util"]
       67 GETTABLEKS                       R10 R11 K18 ["TestIds"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R13 R0 K19 ["Resources"]
       74 GETTABLEKS                       R12 R13 K20 ["Localization"]
       76 GETTABLEKS                       R11 R12 K21 ["Translator"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R12 R0 K22 ["Types"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETTABLEKS                       R14 R0 K23 ["Flags"]
       88 GETTABLEKS                       R13 R14 K24 ["FFlagAssistantMultipleChatPersistence"]
       90 CALL                             R12 1 1
       91 GETTABLEKS                       R13 R5 K25 ["Chip"]
       93 GETTABLEKS                       R14 R5 K26 ["Text"]
       95 GETTABLEKS                       R15 R7 K27 ["createNextOrder"]
       97 GETTABLEKS                       R16 R6 K28 ["createElement"]
       99 DUPTABLE                         R17 K32 [{"Image", "ImageRectOffset", "ImageRectSize"}]
      100 LOADK                            R18 K33 [""]
      101 SETTABLEKS                       R18 R17 K29 ["Image"]
      103 GETIMPORT                        R18 K36 [Vector2.new]
      105 LOADN                            R19 0
      106 LOADN                            R20 0
      107 CALL                             R18 2 1
      108 SETTABLEKS                       R18 R17 K30 ["ImageRectOffset"]
      110 GETIMPORT                        R18 K36 [Vector2.new]
      112 LOADN                            R19 0
      113 LOADN                            R20 0
      114 CALL                             R18 2 1
      115 SETTABLEKS                       R18 R17 K31 ["ImageRectSize"]
      117 DUPTABLE                         R18 K40 [{"Preparing", "Generating", "Generated"}]
      118 LOADK                            R19 K37 ["Preparing"]
      119 SETTABLEKS                       R19 R18 K37 ["Preparing"]
      121 LOADK                            R19 K38 ["Generating"]
      122 SETTABLEKS                       R19 R18 K38 ["Generating"]
      124 LOADK                            R19 K39 ["Generated"]
      125 SETTABLEKS                       R19 R18 K39 ["Generated"]
      127 DUPCLOSURE                       R19 K41 [PROTO_1]
      128 CAPTURE                          VAL R18
      129 CAPTURE                          VAL R6
      130 CAPTURE                          VAL R10
      131 CAPTURE                          VAL R12
      132 CAPTURE                          VAL R15
      133 CAPTURE                          VAL R16
      134 CAPTURE                          VAL R1
      135 CAPTURE                          VAL R9
      136 CAPTURE                          VAL R14
      137 CAPTURE                          VAL R8
      138 DUPCLOSURE                       R20 K42 [PROTO_5]
      139 CAPTURE                          VAL R5
      140 CAPTURE                          VAL R4
      141 CAPTURE                          VAL R6
      142 CAPTURE                          VAL R17
      143 CAPTURE                          VAL R10
      144 CAPTURE                          VAL R15
      145 CAPTURE                          VAL R16
      146 CAPTURE                          VAL R1
      147 CAPTURE                          VAL R9
      148 CAPTURE                          VAL R14
      149 CAPTURE                          VAL R13
      150 CAPTURE                          VAL R2
      151 DUPCLOSURE                       R21 K43 [PROTO_6]
      152 CAPTURE                          VAL R18
      153 CAPTURE                          VAL R16
      154 CAPTURE                          VAL R20
      155 CAPTURE                          VAL R19
      156 CAPTURE                          VAL R3
      157 DUPCLOSURE                       R22 K44 [PROTO_7]
      158 CAPTURE                          VAL R12
      159 CAPTURE                          VAL R18
      160 DUPCLOSURE                       R23 K45 [PROTO_8]
      161 CAPTURE                          VAL R12
      162 CAPTURE                          VAL R18
      163 CAPTURE                          VAL R7
      164 DUPTABLE                         R24 K50 [{"Type", "ContentWidget", "Serialization", "Modes"}]
      165 LOADK                            R25 K51 ["AssetVariation"]
      166 SETTABLEKS                       R25 R24 K46 ["Type"]
      168 GETTABLEKS                       R25 R6 K52 ["memo"]
      170 MOVE                             R26 R21
      171 CALL                             R25 1 1
      172 SETTABLEKS                       R25 R24 K47 ["ContentWidget"]
      174 DUPTABLE                         R25 K55 [{"serialize", "deserialize"}]
      175 SETTABLEKS                       R22 R25 K53 ["serialize"]
      177 SETTABLEKS                       R23 R25 K54 ["deserialize"]
      179 SETTABLEKS                       R25 R24 K48 ["Serialization"]
      181 SETTABLEKS                       R18 R24 K49 ["Modes"]
      183 RETURN                           R24 1
