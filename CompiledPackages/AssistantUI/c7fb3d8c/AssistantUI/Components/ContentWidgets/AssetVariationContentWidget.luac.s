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
        0 DUPTABLE                         R0 K2 [{"AssetAdded", "AssetVariationsDescription"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K3 ["AssetVariation"]
        3 LOADK                            R4 K4 ["Added"]
        4 NAMECALL                         R1 R1 K5 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["AssetAdded"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K3 ["AssetVariation"]
       11 LOADK                            R4 K1 ["AssetVariationsDescription"]
       12 NAMECALL                         R1 R1 K5 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["AssetVariationsDescription"]
       17 RETURN                           R0 1

PROTO_6:
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
       64 LOADNIL                          R7
       65 GETUPVAL                         R8 4
       66 CALL                             R8 0 1
       67 JUMPIFNOT                        R8 ; [+20]
       68 GETUPVAL                         R9 2
       69 GETTABLEKS                       R8 R9 K17 ["useMemo"]
       71 NEWCLOSURE                       R9 P2
       72 CAPTURE                          UPVAL U5
       73 CAPTURE                          VAL R0
       74 NEWTABLE                         R10 0 3
       76 GETUPVAL                         R12 5
       77 GETTABLEKS                       R11 R12 K19 ["locale"]
       79 GETTABLEKS                       R12 R0 K20 ["displayName"]
       81 GETTABLEKS                       R13 R0 K21 ["shouldShowChip"]
       83 SETLIST                          R10 R11 3 [1]
       85 CALL                             R8 2 1
       86 MOVE                             R7 R8
       87 JUMP                             ; [+14]
       88 GETUPVAL                         R9 2
       89 GETTABLEKS                       R8 R9 K17 ["useMemo"]
       91 DUPCLOSURE                       R9 K22 [PROTO_5]
       92 CAPTURE                          UPVAL U5
       93 NEWTABLE                         R10 0 1
       95 GETUPVAL                         R12 5
       96 GETTABLEKS                       R11 R12 K19 ["locale"]
       98 SETLIST                          R10 R11 1 [1]
      100 CALL                             R8 2 1
      101 MOVE                             R7 R8
      102 LOADNIL                          R8
      103 GETUPVAL                         R9 4
      104 CALL                             R9 0 1
      105 JUMPIF                           R9 ; [+10]
      106 GETTABLEKS                       R8 R7 K23 ["AssetAdded"]
      108 GETTABLEKS                       R9 R0 K21 ["shouldShowChip"]
      110 JUMPIF                           R9 ; [+5]
      111 MOVE                             R9 R8
      112 LOADK                            R10 K24 [" "]
      113 GETTABLEKS                       R11 R0 K20 ["displayName"]
      115 CONCAT                           R8 R9 R11
      116 GETUPVAL                         R9 6
      117 CALL                             R9 0 1
      118 GETUPVAL                         R10 7
      119 GETUPVAL                         R12 8
      120 GETTABLEKS                       R11 R12 K25 ["Root"]
      122 DUPTABLE                         R12 K30 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
      123 GETTABLEKS                       R13 R0 K26 ["LayoutOrder"]
      125 SETTABLEKS                       R13 R12 K26 ["LayoutOrder"]
      127 GETTABLEKS                       R13 R0 K27 ["expanded"]
      129 SETTABLEKS                       R13 R12 K27 ["expanded"]
      131 GETTABLEKS                       R13 R0 K28 ["contentId"]
      133 SETTABLEKS                       R13 R12 K28 ["contentId"]
      135 GETTABLEKS                       R13 R0 K29 ["editThisContent"]
      137 SETTABLEKS                       R13 R12 K29 ["editThisContent"]
      139 DUPTABLE                         R13 K33 [{"Header", "Content"}]
      140 GETUPVAL                         R14 7
      141 GETUPVAL                         R16 8
      142 GETTABLEKS                       R15 R16 K31 ["Header"]
      144 DUPTABLE                         R16 K35 [{"LayoutOrder", "testId"}]
      145 MOVE                             R17 R9
      146 CALL                             R17 0 1
      147 SETTABLEKS                       R17 R16 K26 ["LayoutOrder"]
      149 GETUPVAL                         R19 9
      150 GETTABLEKS                       R18 R19 K36 ["AssetVariation"]
      152 GETTABLEKS                       R17 R18 K37 ["Expand"]
      154 SETTABLEKS                       R17 R16 K34 ["testId"]
      156 DUPTABLE                         R17 K40 [{"Text", "AssetLink"}]
      157 GETUPVAL                         R19 4
      158 CALL                             R19 0 1
      159 JUMPIFNOT                        R19 ; [+16]
      160 GETUPVAL                         R18 7
      161 GETUPVAL                         R19 10
      162 DUPTABLE                         R20 K42 [{"tag", "Text", "LayoutOrder"}]
      163 LOADK                            R21 K43 ["size-0-full auto-x text-label-small content-default text-truncate-end text-align-y-center"]
      164 SETTABLEKS                       R21 R20 K41 ["tag"]
      166 GETTABLEKS                       R21 R7 K44 ["Generated"]
      168 SETTABLEKS                       R21 R20 K38 ["Text"]
      170 MOVE                             R21 R9
      171 CALL                             R21 0 1
      172 SETTABLEKS                       R21 R20 K26 ["LayoutOrder"]
      174 CALL                             R18 2 1
      175 JUMP                             ; [+13]
      176 GETUPVAL                         R18 7
      177 GETUPVAL                         R19 10
      178 DUPTABLE                         R20 K42 [{"tag", "Text", "LayoutOrder"}]
      179 LOADK                            R21 K45 ["size-0-0 auto-xy text-label-small content-default text-truncate-end"]
      180 SETTABLEKS                       R21 R20 K41 ["tag"]
      182 SETTABLEKS                       R8 R20 K38 ["Text"]
      184 MOVE                             R21 R9
      185 CALL                             R21 0 1
      186 SETTABLEKS                       R21 R20 K26 ["LayoutOrder"]
      188 CALL                             R18 2 1
      189 SETTABLEKS                       R18 R17 K38 ["Text"]
      191 GETTABLEKS                       R18 R0 K21 ["shouldShowChip"]
      193 JUMPIFNOT                        R18 ; [+32]
      194 GETUPVAL                         R18 7
      195 GETUPVAL                         R19 11
      196 DUPTABLE                         R20 K50 [{"text", "leading", "onActivated", "isChecked", "size", "LayoutOrder"}]
      197 GETTABLEKS                       R21 R0 K20 ["displayName"]
      199 SETTABLEKS                       R21 R20 K46 ["text"]
      201 GETTABLEKS                       R21 R6 K51 ["Image"]
      203 SETTABLEKS                       R21 R20 K47 ["leading"]
      205 GETTABLEKS                       R21 R0 K52 ["onChipClicked"]
      207 SETTABLEKS                       R21 R20 K12 ["onActivated"]
      209 LOADB                            R21 0
      210 SETTABLEKS                       R21 R20 K48 ["isChecked"]
      212 GETUPVAL                         R24 0
      213 GETTABLEKS                       R23 R24 K53 ["Enums"]
      215 GETTABLEKS                       R22 R23 K54 ["ChipSize"]
      217 GETTABLEKS                       R21 R22 K55 ["Small"]
      219 SETTABLEKS                       R21 R20 K49 ["size"]
      221 MOVE                             R21 R9
      222 CALL                             R21 0 1
      223 SETTABLEKS                       R21 R20 K26 ["LayoutOrder"]
      225 CALL                             R18 2 1
      226 SETTABLEKS                       R18 R17 K39 ["AssetLink"]
      228 CALL                             R14 3 1
      229 SETTABLEKS                       R14 R13 K31 ["Header"]
      231 GETUPVAL                         R14 7
      232 GETUPVAL                         R16 8
      233 GETTABLEKS                       R15 R16 K32 ["Content"]
      235 DUPTABLE                         R16 K56 [{"tag", "LayoutOrder"}]
      236 LOADK                            R17 K57 ["col size-0-0 fill auto-y gap-small"]
      237 SETTABLEKS                       R17 R16 K41 ["tag"]
      239 MOVE                             R17 R9
      240 CALL                             R17 0 1
      241 SETTABLEKS                       R17 R16 K26 ["LayoutOrder"]
      243 DUPTABLE                         R17 K59 [{"Text", "Carousel"}]
      244 GETUPVAL                         R18 7
      245 GETUPVAL                         R19 10
      246 DUPTABLE                         R20 K42 [{"tag", "Text", "LayoutOrder"}]
      247 LOADK                            R21 K60 ["size-0-0 auto-xy text-body-small content-default text-truncate-end"]
      248 SETTABLEKS                       R21 R20 K41 ["tag"]
      250 GETTABLEKS                       R21 R7 K61 ["AssetVariationsDescription"]
      252 SETTABLEKS                       R21 R20 K38 ["Text"]
      254 MOVE                             R21 R9
      255 CALL                             R21 0 1
      256 SETTABLEKS                       R21 R20 K26 ["LayoutOrder"]
      258 CALL                             R18 2 1
      259 SETTABLEKS                       R18 R17 K38 ["Text"]
      261 GETUPVAL                         R18 7
      262 GETUPVAL                         R19 12
      263 DUPTABLE                         R20 K66 [{"height", "imagePadding", "canSelect", "items", "LayoutOrder"}]
      264 LOADN                            R21 70
      265 SETTABLEKS                       R21 R20 K62 ["height"]
      267 SETTABLEKS                       R2 R20 K63 ["imagePadding"]
      269 LOADB                            R21 1
      270 SETTABLEKS                       R21 R20 K64 ["canSelect"]
      272 SETTABLEKS                       R5 R20 K65 ["items"]
      274 MOVE                             R21 R9
      275 CALL                             R21 0 1
      276 SETTABLEKS                       R21 R20 K26 ["LayoutOrder"]
      278 CALL                             R18 2 1
      279 SETTABLEKS                       R18 R17 K58 ["Carousel"]
      281 CALL                             R14 3 1
      282 SETTABLEKS                       R14 R13 K32 ["Content"]
      284 CALL                             R10 3 -1
      285 RETURN                           R10 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+34]
        3 GETTABLEKS                       R1 R0 K0 ["toolResult"]
        5 JUMPIFNOT                        R1 ; [+4]
        6 GETTABLEKS                       R2 R0 K0 ["toolResult"]
        8 GETTABLEKS                       R1 R2 K1 ["isError"]
       10 GETTABLEKS                       R2 R0 K2 ["mode"]
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R3 R4 K3 ["Generated"]
       15 JUMPIFNOTEQ                      R2 R3 ; [+7]
       17 JUMPIF                           R1 ; [+5]
       18 GETUPVAL                         R2 2
       19 GETUPVAL                         R3 3
       20 MOVE                             R4 R0
       21 CALL                             R2 2 -1
       22 RETURN                           R2 -1
       23 GETUPVAL                         R2 2
       24 GETUPVAL                         R3 4
       25 GETUPVAL                         R6 5
       26 GETTABLEKS                       R5 R6 K4 ["Dictionary"]
       28 GETTABLEKS                       R4 R5 K5 ["join"]
       30 MOVE                             R5 R0
       31 DUPTABLE                         R6 K6 [{"isError"}]
       32 SETTABLEKS                       R1 R6 K1 ["isError"]
       34 CALL                             R4 2 1
       35 CALL                             R2 2 -1
       36 RETURN                           R2 -1
       37 GETUPVAL                         R1 3
       38 MOVE                             R2 R0
       39 CALL                             R1 1 -1
       40 RETURN                           R1 -1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAssistantPersistConversations is not enabled!"]
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
       26 DUPTABLE                         R1 K12 [{"type", "mode", "name", "tag", "className", "assetIds"}]
       27 GETTABLEKS                       R2 R0 K5 ["type"]
       29 SETTABLEKS                       R2 R1 K5 ["type"]
       31 GETTABLEKS                       R2 R0 K3 ["mode"]
       33 SETTABLEKS                       R2 R1 K3 ["mode"]
       35 GETTABLEKS                       R2 R0 K8 ["name"]
       37 SETTABLEKS                       R2 R1 K8 ["name"]
       39 GETTABLEKS                       R2 R0 K9 ["tag"]
       41 SETTABLEKS                       R2 R1 K9 ["tag"]
       43 GETTABLEKS                       R2 R0 K10 ["className"]
       45 SETTABLEKS                       R2 R1 K10 ["className"]
       47 GETTABLEKS                       R2 R0 K11 ["assetIds"]
       49 SETTABLEKS                       R2 R1 K11 ["assetIds"]
       51 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAssistantPersistConversations is not enabled!"]
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
       50 GETTABLEKS                       R2 R0 K12 ["className"]
       52 SETTABLEKS                       R2 R1 K12 ["className"]
       54 GETTABLEKS                       R2 R0 K13 ["assetIds"]
       56 SETTABLEKS                       R2 R1 K13 ["assetIds"]
       58 LOADB                            R2 0
       59 SETTABLEKS                       R2 R1 K14 ["expanded"]
       61 LOADB                            R2 0
       62 SETTABLEKS                       R2 R1 K15 ["shouldShowChip"]
       64 GETUPVAL                         R3 2
       65 GETTABLEKS                       R2 R3 K19 ["createUnimplemented"]
       67 LOADK                            R3 K16 ["onSelectionChange"]
       68 CALL                             R2 1 1
       69 SETTABLEKS                       R2 R1 K16 ["onSelectionChange"]
       71 GETUPVAL                         R3 2
       72 GETTABLEKS                       R2 R3 K19 ["createUnimplemented"]
       74 LOADK                            R3 K17 ["onChipClicked"]
       75 CALL                             R2 1 1
       76 SETTABLEKS                       R2 R1 K17 ["onChipClicked"]
       78 RETURN                           R1 1

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
       23 GETTABLEKS                       R5 R0 K9 ["Util"]
       25 GETTABLEKS                       R4 R5 K10 ["ContentWidgetRegistry"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K11 ["Parent"]
       32 GETTABLEKS                       R5 R6 K12 ["Cryo"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K13 ["Guest"]
       39 GETTABLEKS                       R6 R7 K14 ["Environment"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R8 R0 K11 ["Parent"]
       46 GETTABLEKS                       R7 R8 K15 ["Foundation"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R9 R0 K11 ["Parent"]
       53 GETTABLEKS                       R8 R9 K16 ["React"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R10 R0 K11 ["Parent"]
       60 GETTABLEKS                       R9 R10 K17 ["ReactUtils"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R11 R0 K6 ["Components"]
       67 GETTABLEKS                       R10 R11 K18 ["ShimmerGradient"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R12 R0 K9 ["Util"]
       74 GETTABLEKS                       R11 R12 K19 ["TestIds"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R14 R0 K20 ["Resources"]
       81 GETTABLEKS                       R13 R14 K21 ["Localization"]
       83 GETTABLEKS                       R12 R13 K22 ["Translator"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K5 [require]
       88 GETTABLEKS                       R13 R0 K23 ["Types"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K5 [require]
       93 GETTABLEKS                       R15 R0 K24 ["Flags"]
       95 GETTABLEKS                       R14 R15 K25 ["FFlagAssistantPersistConversations"]
       97 CALL                             R13 1 1
       98 GETIMPORT                        R14 K5 [require]
      100 GETTABLEKS                       R16 R0 K24 ["Flags"]
      102 GETTABLEKS                       R15 R16 K26 ["FFlagAssistantRegisterWidgetsThroughTools"]
      104 CALL                             R14 1 1
      105 GETIMPORT                        R15 K5 [require]
      107 GETTABLEKS                       R17 R0 K24 ["Flags"]
      109 GETTABLEKS                       R16 R17 K27 ["FFlagMCPAssistantLongRunningToolCalls"]
      111 CALL                             R15 1 1
      112 GETTABLEKS                       R16 R6 K28 ["Chip"]
      114 GETTABLEKS                       R17 R6 K29 ["Text"]
      116 GETTABLEKS                       R18 R8 K30 ["createNextOrder"]
      118 GETTABLEKS                       R19 R7 K31 ["createElement"]
      120 DUPTABLE                         R20 K35 [{"Image", "ImageRectOffset", "ImageRectSize"}]
      121 LOADK                            R21 K36 [""]
      122 SETTABLEKS                       R21 R20 K32 ["Image"]
      124 GETIMPORT                        R21 K39 [Vector2.new]
      126 LOADN                            R22 0
      127 LOADN                            R23 0
      128 CALL                             R21 2 1
      129 SETTABLEKS                       R21 R20 K33 ["ImageRectOffset"]
      131 GETIMPORT                        R21 K39 [Vector2.new]
      133 LOADN                            R22 0
      134 LOADN                            R23 0
      135 CALL                             R21 2 1
      136 SETTABLEKS                       R21 R20 K34 ["ImageRectSize"]
      138 DUPTABLE                         R21 K43 [{"Preparing", "Generating", "Generated"}]
      139 LOADK                            R22 K40 ["Preparing"]
      140 SETTABLEKS                       R22 R21 K40 ["Preparing"]
      142 LOADK                            R22 K41 ["Generating"]
      143 SETTABLEKS                       R22 R21 K41 ["Generating"]
      145 LOADK                            R22 K42 ["Generated"]
      146 SETTABLEKS                       R22 R21 K42 ["Generated"]
      148 DUPCLOSURE                       R22 K44 [PROTO_1]
      149 CAPTURE                          VAL R21
      150 CAPTURE                          VAL R7
      151 CAPTURE                          VAL R11
      152 CAPTURE                          VAL R13
      153 CAPTURE                          VAL R18
      154 CAPTURE                          VAL R19
      155 CAPTURE                          VAL R1
      156 CAPTURE                          VAL R10
      157 CAPTURE                          VAL R17
      158 CAPTURE                          VAL R9
      159 DUPCLOSURE                       R23 K45 [PROTO_6]
      160 CAPTURE                          VAL R6
      161 CAPTURE                          VAL R5
      162 CAPTURE                          VAL R7
      163 CAPTURE                          VAL R20
      164 CAPTURE                          VAL R15
      165 CAPTURE                          VAL R11
      166 CAPTURE                          VAL R18
      167 CAPTURE                          VAL R19
      168 CAPTURE                          VAL R1
      169 CAPTURE                          VAL R10
      170 CAPTURE                          VAL R17
      171 CAPTURE                          VAL R16
      172 CAPTURE                          VAL R2
      173 DUPCLOSURE                       R24 K46 [PROTO_7]
      174 CAPTURE                          VAL R15
      175 CAPTURE                          VAL R21
      176 CAPTURE                          VAL R19
      177 CAPTURE                          VAL R23
      178 CAPTURE                          VAL R22
      179 CAPTURE                          VAL R4
      180 DUPCLOSURE                       R25 K47 [PROTO_8]
      181 CAPTURE                          VAL R13
      182 CAPTURE                          VAL R21
      183 DUPCLOSURE                       R26 K48 [PROTO_9]
      184 CAPTURE                          VAL R13
      185 CAPTURE                          VAL R21
      186 CAPTURE                          VAL R8
      187 DUPTABLE                         R27 K53 [{"Type", "ContentWidget", "Serialization", "Modes"}]
      188 LOADK                            R28 K54 ["AssetVariation"]
      189 SETTABLEKS                       R28 R27 K49 ["Type"]
      191 MOVE                             R29 R14
      192 CALL                             R29 0 1
      193 JUMPIFNOT                        R29 ; [+5]
      194 GETTABLEKS                       R28 R7 K55 ["memo"]
      196 MOVE                             R29 R24
      197 CALL                             R28 1 1
      198 JUMP                             ; [+1]
      199 MOVE                             R28 R24
      200 SETTABLEKS                       R28 R27 K50 ["ContentWidget"]
      202 DUPTABLE                         R28 K58 [{"serialize", "deserialize"}]
      203 SETTABLEKS                       R25 R28 K56 ["serialize"]
      205 SETTABLEKS                       R26 R28 K57 ["deserialize"]
      207 SETTABLEKS                       R28 R27 K51 ["Serialization"]
      209 SETTABLEKS                       R21 R27 K52 ["Modes"]
      211 MOVE                             R28 R14
      212 CALL                             R28 0 1
      213 JUMPIF                           R28 ; [+7]
      214 GETTABLEKS                       R28 R3 K59 ["registerWidget_DEPRECATED"]
      216 GETTABLEKS                       R29 R27 K49 ["Type"]
      218 GETTABLEKS                       R30 R27 K50 ["ContentWidget"]
      220 CALL                             R28 2 0
      221 RETURN                           R27 1
