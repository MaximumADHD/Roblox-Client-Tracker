PROTO_0:
        0 LENGTH                           R1 R0
        1 LOADN                            R2 0
        2 JUMPIFNOTLT                      R2 R1 ; [+43]
        4 LOADN                            R1 1
        5 GETIMPORT                        R2 K2 [string.lower]
        7 GETUPVAL                         R3 0
        8 CALL                             R2 1 1
        9 GETIMPORT                        R3 K4 [ipairs]
       11 MOVE                             R4 R0
       12 CALL                             R3 1 3
       13 FORGPREP_INEXT                   R3
       14 GETIMPORT                        R8 K2 [string.lower]
       16 GETTABLEKS                       R9 R7 K5 ["Name"]
       18 CALL                             R8 1 1
       19 JUMPIFNOTEQ                      R8 R2 ; [+3]
       21 MOVE                             R1 R6
       22 JUMP                             ; [+2]
       23 FORGLOOP                         R3 2 [inext] ; [-10]
       25 GETTABLE                         R3 R0 R1
       26 DUPTABLE                         R4 K8 [{"Name", "Id", "Type"}]
       27 GETTABLEKS                       R5 R3 K5 ["Name"]
       29 SETTABLEKS                       R5 R4 K5 ["Name"]
       31 GETTABLEKS                       R5 R3 K9 ["UserId"]
       33 SETTABLEKS                       R5 R4 K6 ["Id"]
       35 GETUPVAL                         R5 1
       36 GETTABLEKS                       R5 R5 K10 ["clientToBackend"]
       38 GETIMPORT                        R6 K14 [Enum.CreatorType.User]
       40 GETTABLEKS                       R6 R6 K15 ["Value"]
       42 CALL                             R5 1 1
       43 SETTABLEKS                       R5 R4 K7 ["Type"]
       45 RETURN                           R4 1
       46 DUPTABLE                         R1 K17 [{["Name"], ["Id"] = -1, ["Type"]}]
       47 GETUPVAL                         R2 0
       48 SETTABLEKS                       R2 R1 K5 ["Name"]
       50 GETUPVAL                         R2 1
       51 GETTABLEKS                       R2 R2 K10 ["clientToBackend"]
       53 GETIMPORT                        R3 K14 [Enum.CreatorType.User]
       55 GETTABLEKS                       R3 R3 K15 ["Value"]
       57 CALL                             R2 1 1
       58 SETTABLEKS                       R2 R1 K7 ["Type"]
       60 RETURN                           R1 1

PROTO_1:
        0 MOVE                             R5 R1
        1 LOADN                            R6 3
        2 NAMECALL                         R3 R0 K0 ["getUsers"]
        4 CALL                             R3 3 1
        5 NEWCLOSURE                       R5 P0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          UPVAL U0
        8 NAMECALL                         R3 R3 K1 ["andThen"]
       10 CALL                             R3 2 -1
       11 RETURN                           R3 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 LOADB                            R4 0
        3 CALL                             R3 1 -1
        4 NAMECALL                         R1 R1 K0 ["dispatch"]
        6 CALL                             R1 -1 0
        7 GETUPVAL                         R1 0
        8 GETUPVAL                         R3 2
        9 GETUPVAL                         R4 3
       10 GETUPVAL                         R5 4
       11 DUPTABLE                         R6 K15 [{["audioSearchInfo"], ["additionalAudioSearchInfo"], ["includeUnverifiedCreators"], ["targetPage"] = 1, ["currentPage"] = 0, ["creator"], ["excludeGroupCreations"], ["searchTerm"], ["sortIndex"], ["requestReason"], ["uiSortIntent"], ["sortDirection"]}]
       12 GETUPVAL                         R7 5
       13 SETTABLEKS                       R7 R6 K1 ["audioSearchInfo"]
       15 GETUPVAL                         R7 6
       16 SETTABLEKS                       R7 R6 K2 ["additionalAudioSearchInfo"]
       18 GETUPVAL                         R7 7
       19 SETTABLEKS                       R7 R6 K3 ["includeUnverifiedCreators"]
       21 SETTABLEKS                       R0 R6 K8 ["creator"]
       23 GETUPVAL                         R8 8
       24 CALL                             R8 0 1
       25 JUMPIFNOT                        R8 ; [+4]
       26 GETUPVAL                         R7 9
       27 GETTABLEKS                       R7 R7 K9 ["excludeGroupCreations"]
       29 JUMP                             ; [+1]
       30 LOADNIL                          R7
       31 SETTABLEKS                       R7 R6 K9 ["excludeGroupCreations"]
       33 GETUPVAL                         R7 9
       34 GETTABLEKS                       R7 R7 K10 ["searchTerm"]
       36 SETTABLEKS                       R7 R6 K10 ["searchTerm"]
       38 GETUPVAL                         R8 9
       39 GETTABLEKS                       R8 R8 K16 ["SortIndex"]
       41 ORK                              R7 R8 K5 [1]
       42 SETTABLEKS                       R7 R6 K11 ["sortIndex"]
       44 GETUPVAL                         R7 10
       45 GETTABLEKS                       R7 R7 K17 ["StartSearch"]
       47 SETTABLEKS                       R7 R6 K12 ["requestReason"]
       49 GETUPVAL                         R8 11
       50 CALL                             R8 0 1
       51 JUMPIFNOT                        R8 ; [+4]
       52 GETUPVAL                         R7 9
       53 GETTABLEKS                       R7 R7 K13 ["uiSortIntent"]
       55 JUMP                             ; [+1]
       56 LOADNIL                          R7
       57 SETTABLEKS                       R7 R6 K13 ["uiSortIntent"]
       59 GETUPVAL                         R7 9
       60 GETTABLEKS                       R7 R7 K14 ["sortDirection"]
       62 SETTABLEKS                       R7 R6 K14 ["sortDirection"]
       64 CALL                             R3 3 -1
       65 NAMECALL                         R1 R1 K0 ["dispatch"]
       67 CALL                             R1 -1 0
       68 GETUPVAL                         R1 12
       69 GETTABLEKS                       R1 R1 K18 ["onCreatorSearched"]
       71 GETTABLEKS                       R2 R0 K19 ["Name"]
       73 GETTABLEKS                       R3 R0 K20 ["Id"]
       75 CALL                             R1 2 0
       76 RETURN                           R0 0

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 LOADB                            R4 1
        2 CALL                             R3 1 -1
        3 NAMECALL                         R1 R0 K0 ["dispatch"]
        5 CALL                             R1 -1 0
        6 GETUPVAL                         R3 1
        7 CALL                             R3 0 -1
        8 NAMECALL                         R1 R0 K0 ["dispatch"]
       10 CALL                             R1 -1 0
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R1 R1 K1 ["AudioSearch"]
       14 JUMPIF                           R1 ; [+3]
       15 GETUPVAL                         R1 3
       16 GETTABLEKS                       R1 R1 K2 ["None"]
       18 GETUPVAL                         R2 2
       19 GETTABLEKS                       R2 R2 K3 ["AdditionalAudioSearch"]
       21 JUMPIF                           R2 ; [+3]
       22 GETUPVAL                         R2 3
       23 GETTABLEKS                       R2 R2 K2 ["None"]
       25 GETUPVAL                         R3 2
       26 GETTABLEKS                       R3 R3 K4 ["includeUnverifiedCreators"]
       28 NAMECALL                         R4 R0 K5 ["getState"]
       30 CALL                             R4 1 1
       31 GETTABLEKS                       R4 R4 K6 ["sound"]
       33 JUMPIFEQKNIL                     R4 ; [+9]
       35 GETTABLEKS                       R5 R4 K7 ["isPlaying"]
       37 JUMPIFNOT                        R5 ; [+5]
       38 GETUPVAL                         R7 4
       39 CALL                             R7 0 -1
       40 NAMECALL                         R5 R0 K0 ["dispatch"]
       42 CALL                             R5 -1 0
       43 GETUPVAL                         R5 2
       44 GETTABLEKS                       R5 R5 K8 ["Creator"]
       46 JUMPIFNOT                        R5 ; [+88]
       47 GETUPVAL                         R5 2
       48 GETTABLEKS                       R5 R5 K8 ["Creator"]
       50 JUMPIFEQKS                       R5 K9 [""] ; [+84]
       52 NEWCLOSURE                       R5 P0
       53 CAPTURE                          VAL R0
       54 CAPTURE                          UPVAL U0
       55 CAPTURE                          UPVAL U5
       56 CAPTURE                          UPVAL U6
       57 CAPTURE                          UPVAL U7
       58 CAPTURE                          VAL R1
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R3
       61 CAPTURE                          UPVAL U8
       62 CAPTURE                          UPVAL U2
       63 CAPTURE                          UPVAL U9
       64 CAPTURE                          UPVAL U10
       65 CAPTURE                          UPVAL U11
       66 GETUPVAL                         R7 2
       67 GETTABLEKS                       R7 R7 K8 ["Creator"]
       69 FASTCALL1                        TYPE R7 ; [+2]
       70 GETIMPORT                        R6 K11 [type]
       72 CALL                             R6 1 1
       73 JUMPIFNOTEQKS                    R6 K12 ["string"] ; [+23]
       75 GETUPVAL                         R7 6
       76 GETUPVAL                         R8 2
       77 GETTABLEKS                       R8 R8 K8 ["Creator"]
       79 MOVE                             R11 R8
       80 LOADN                            R12 3
       81 NAMECALL                         R9 R7 K13 ["getUsers"]
       83 CALL                             R9 3 1
       84 NEWCLOSURE                       R11 P1
       85 CAPTURE                          VAL R8
       86 CAPTURE                          UPVAL U12
       87 NAMECALL                         R9 R9 K14 ["andThen"]
       89 CALL                             R9 2 1
       90 MOVE                             R6 R9
       91 MOVE                             R8 R5
       92 DUPCLOSURE                       R9 K15 [PROTO_3]
       93 NAMECALL                         R6 R6 K14 ["andThen"]
       95 CALL                             R6 3 0
       96 RETURN                           R0 0
       97 GETUPVAL                         R7 2
       98 GETTABLEKS                       R7 R7 K8 ["Creator"]
      100 FASTCALL1                        TYPE R7 ; [+2]
      101 GETIMPORT                        R6 K11 [type]
      103 CALL                             R6 1 1
      104 JUMPIFNOTEQKS                    R6 K16 ["table"] ; [+223]
      106 DUPTABLE                         R6 K20 [{"Name", "Id", "Type"}]
      107 GETUPVAL                         R7 2
      108 GETTABLEKS                       R7 R7 K8 ["Creator"]
      110 GETTABLEKS                       R7 R7 K17 ["Name"]
      112 SETTABLEKS                       R7 R6 K17 ["Name"]
      114 GETUPVAL                         R7 2
      115 GETTABLEKS                       R7 R7 K8 ["Creator"]
      117 GETTABLEKS                       R7 R7 K18 ["Id"]
      119 SETTABLEKS                       R7 R6 K18 ["Id"]
      121 GETUPVAL                         R7 12
      122 GETTABLEKS                       R7 R7 K21 ["clientToBackend"]
      124 GETIMPORT                        R8 K25 [Enum.CreatorType.User]
      126 GETTABLEKS                       R8 R8 K26 ["Value"]
      128 CALL                             R7 1 1
      129 SETTABLEKS                       R7 R6 K19 ["Type"]
      131 MOVE                             R7 R5
      132 MOVE                             R8 R6
      133 CALL                             R7 1 0
      134 RETURN                           R0 0
      135 GETUPVAL                         R5 3
      136 GETTABLEKS                       R5 R5 K2 ["None"]
      138 LOADNIL                          R6
      139 LOADNIL                          R7
      140 GETUPVAL                         R8 13
      141 CALL                             R8 0 1
      142 JUMPIFNOT                        R8 ; [+36]
      143 GETUPVAL                         R8 14
      144 GETTABLEKS                       R8 R8 K27 ["getCurrentTab"]
      146 NAMECALL                         R9 R0 K5 ["getState"]
      148 CALL                             R9 1 1
      149 GETTABLEKS                       R9 R9 K28 ["pageInfo"]
      151 CALL                             R8 1 1
      152 GETUPVAL                         R9 15
      153 GETTABLEKS                       R9 R9 K29 ["MARKETPLACE_KEY"]
      155 JUMPIFNOTEQ                      R8 R9 ; [+5]
      157 GETUPVAL                         R9 15
      158 GETTABLEKS                       R5 R9 K30 ["CREATOR_ROBLOX"]
      160 JUMP                             ; [+27]
      161 GETUPVAL                         R9 10
      162 CALL                             R9 0 1
      163 JUMPIFNOT                        R9 ; [+24]
      164 GETUPVAL                         R9 15
      165 GETTABLEKS                       R9 R9 K31 ["INVENTORY_KEY"]
      167 JUMPIFNOTEQ                      R8 R9 ; [+20]
      169 GETUPVAL                         R9 15
      170 GETTABLEKS                       R5 R9 K30 ["CREATOR_ROBLOX"]
      172 GETUPVAL                         R9 2
      173 GETTABLEKS                       R6 R9 K32 ["creatorTargetIds"]
      175 GETUPVAL                         R9 2
      176 GETTABLEKS                       R7 R9 K33 ["groupTargetIds"]
      178 JUMP                             ; [+9]
      179 GETUPVAL                         R8 10
      180 CALL                             R8 0 1
      181 JUMPIFNOT                        R8 ; [+6]
      182 GETUPVAL                         R8 2
      183 GETTABLEKS                       R6 R8 K32 ["creatorTargetIds"]
      185 GETUPVAL                         R8 2
      186 GETTABLEKS                       R7 R8 K33 ["groupTargetIds"]
      188 GETUPVAL                         R8 10
      189 CALL                             R8 0 1
      190 JUMPIFNOT                        R8 ; [+50]
      191 JUMPIFNOT                        R6 ; [+24]
      192 MOVE                             R8 R6
      193 LOADNIL                          R9
      194 LOADNIL                          R10
      195 FORGPREP                         R8
      196 GETTABLEKS                       R14 R12 K19 ["Type"]
      198 JUMPIFNOT                        R14 ; [+5]
      199 GETTABLEKS                       R13 R12 K19 ["Type"]
      201 GETTABLEKS                       R13 R13 K17 ["Name"]
      203 JUMP                             ; [+1]
      204 LOADNIL                          R13
      205 GETUPVAL                         R14 11
      206 GETTABLEKS                       R14 R14 K34 ["onCreatorSearched"]
      208 GETTABLEKS                       R15 R12 K17 ["Name"]
      210 GETTABLEKS                       R16 R12 K18 ["Id"]
      212 MOVE                             R17 R13
      213 CALL                             R14 3 0
      214 FORGLOOP                         R8 2 ; [-19]
      216 JUMPIFNOT                        R7 ; [+24]
      217 MOVE                             R8 R7
      218 LOADNIL                          R9
      219 LOADNIL                          R10
      220 FORGPREP                         R8
      221 GETTABLEKS                       R14 R12 K19 ["Type"]
      223 JUMPIFNOT                        R14 ; [+5]
      224 GETTABLEKS                       R13 R12 K19 ["Type"]
      226 GETTABLEKS                       R13 R13 K17 ["Name"]
      228 JUMP                             ; [+1]
      229 LOADNIL                          R13
      230 GETUPVAL                         R14 11
      231 GETTABLEKS                       R14 R14 K34 ["onCreatorSearched"]
      233 GETTABLEKS                       R15 R12 K17 ["Name"]
      235 GETTABLEKS                       R16 R12 K18 ["Id"]
      237 MOVE                             R17 R13
      238 CALL                             R14 3 0
      239 FORGLOOP                         R8 2 ; [-19]
      241 GETUPVAL                         R10 0
      242 LOADB                            R11 0
      243 CALL                             R10 1 -1
      244 NAMECALL                         R8 R0 K0 ["dispatch"]
      246 CALL                             R8 -1 0
      247 GETUPVAL                         R10 16
      248 LOADK                            R11 K9 [""]
      249 NEWTABLE                         R12 0 0
      251 CALL                             R10 2 -1
      252 NAMECALL                         R8 R0 K0 ["dispatch"]
      254 CALL                             R8 -1 0
      255 GETUPVAL                         R10 5
      256 GETUPVAL                         R11 6
      257 GETUPVAL                         R12 7
      258 DUPTABLE                         R13 K48 [{["audioSearchInfo"], ["additionalAudioSearchInfo"], ["includeUnverifiedCreators"], ["targetPage"] = 1, ["currentPage"] = 0, ["sortIndex"], ["creator"], ["creatorTargetIds"], ["excludeGroupCreations"], ["groupTargetIds"], ["requestReason"], ["searchTerm"], ["uiSortIntent"], ["sortDirection"]}]
      259 SETTABLEKS                       R1 R13 K35 ["audioSearchInfo"]
      261 SETTABLEKS                       R2 R13 K36 ["additionalAudioSearchInfo"]
      263 SETTABLEKS                       R3 R13 K4 ["includeUnverifiedCreators"]
      265 GETUPVAL                         R15 2
      266 GETTABLEKS                       R15 R15 K49 ["SortIndex"]
      268 ORK                              R14 R15 K38 [1]
      269 SETTABLEKS                       R14 R13 K41 ["sortIndex"]
      271 SETTABLEKS                       R5 R13 K42 ["creator"]
      273 GETUPVAL                         R15 10
      274 CALL                             R15 0 1
      275 JUMPIFNOT                        R15 ; [+2]
      276 MOVE                             R14 R6
      277 JUMP                             ; [+1]
      278 LOADNIL                          R14
      279 SETTABLEKS                       R14 R13 K32 ["creatorTargetIds"]
      281 GETUPVAL                         R15 8
      282 CALL                             R15 0 1
      283 JUMPIFNOT                        R15 ; [+4]
      284 GETUPVAL                         R14 2
      285 GETTABLEKS                       R14 R14 K43 ["excludeGroupCreations"]
      287 JUMP                             ; [+1]
      288 LOADNIL                          R14
      289 SETTABLEKS                       R14 R13 K43 ["excludeGroupCreations"]
      291 GETUPVAL                         R15 10
      292 CALL                             R15 0 1
      293 JUMPIFNOT                        R15 ; [+2]
      294 MOVE                             R14 R7
      295 JUMP                             ; [+1]
      296 LOADNIL                          R14
      297 SETTABLEKS                       R14 R13 K33 ["groupTargetIds"]
      299 GETUPVAL                         R14 9
      300 GETTABLEKS                       R14 R14 K50 ["StartSearch"]
      302 SETTABLEKS                       R14 R13 K44 ["requestReason"]
      304 GETUPVAL                         R14 2
      305 GETTABLEKS                       R14 R14 K45 ["searchTerm"]
      307 SETTABLEKS                       R14 R13 K45 ["searchTerm"]
      309 GETUPVAL                         R15 10
      310 CALL                             R15 0 1
      311 JUMPIFNOT                        R15 ; [+4]
      312 GETUPVAL                         R14 2
      313 GETTABLEKS                       R14 R14 K46 ["uiSortIntent"]
      315 JUMP                             ; [+1]
      316 LOADNIL                          R14
      317 SETTABLEKS                       R14 R13 K46 ["uiSortIntent"]
      319 GETUPVAL                         R14 2
      320 GETTABLEKS                       R14 R14 K47 ["sortDirection"]
      322 SETTABLEKS                       R14 R13 K47 ["sortDirection"]
      324 CALL                             R10 3 -1
      325 NAMECALL                         R8 R0 K0 ["dispatch"]
      327 CALL                             R8 -1 0
      328 RETURN                           R0 0

PROTO_5:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R2
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          VAL R0
        8 CAPTURE                          VAL R1
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          UPVAL U6
       11 CAPTURE                          UPVAL U7
       12 CAPTURE                          UPVAL U8
       13 CAPTURE                          UPVAL U9
       14 CAPTURE                          UPVAL U10
       15 CAPTURE                          UPVAL U11
       16 CAPTURE                          UPVAL U12
       17 CAPTURE                          UPVAL U13
       18 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Cryo"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R0 K7 ["Src"]
       22 GETTABLEKS                       R4 R4 K8 ["Types"]
       24 GETTABLEKS                       R4 R4 K9 ["Category"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R5 R0 K7 ["Src"]
       31 GETTABLEKS                       R5 R5 K8 ["Types"]
       33 GETTABLEKS                       R5 R5 K10 ["RequestReason"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K5 [require]
       38 GETTABLEKS                       R6 R0 K7 ["Src"]
       40 GETTABLEKS                       R6 R6 K11 ["Util"]
       42 GETTABLEKS                       R6 R6 K12 ["PageInfoHelper"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K5 [require]
       47 GETTABLEKS                       R7 R0 K7 ["Src"]
       49 GETTABLEKS                       R7 R7 K13 ["Networking"]
       51 GETTABLEKS                       R7 R7 K14 ["Requests"]
       53 GETTABLEKS                       R7 R7 K15 ["UpdatePageInfoAndSendRequest"]
       55 CALL                             R6 1 1
       56 GETIMPORT                        R7 K5 [require]
       58 GETTABLEKS                       R8 R0 K7 ["Src"]
       60 GETTABLEKS                       R8 R8 K16 ["Actions"]
       62 GETTABLEKS                       R8 R8 K17 ["ClearAssets"]
       64 CALL                             R7 1 1
       65 GETIMPORT                        R8 K5 [require]
       67 GETTABLEKS                       R9 R0 K7 ["Src"]
       69 GETTABLEKS                       R9 R9 K16 ["Actions"]
       71 GETTABLEKS                       R9 R9 K18 ["SetLiveSearch"]
       73 CALL                             R8 1 1
       74 GETIMPORT                        R9 K5 [require]
       76 GETTABLEKS                       R10 R0 K7 ["Src"]
       78 GETTABLEKS                       R10 R10 K16 ["Actions"]
       80 GETTABLEKS                       R10 R10 K19 ["SetLoading"]
       82 CALL                             R9 1 1
       83 GETIMPORT                        R10 K5 [require]
       85 GETTABLEKS                       R11 R0 K7 ["Src"]
       87 GETTABLEKS                       R11 R11 K16 ["Actions"]
       89 GETTABLEKS                       R11 R11 K20 ["StopPreviewSound"]
       91 CALL                             R10 1 1
       92 GETIMPORT                        R11 K5 [require]
       94 GETTABLEKS                       R12 R0 K7 ["Src"]
       96 GETTABLEKS                       R12 R12 K11 ["Util"]
       98 GETTABLEKS                       R12 R12 K21 ["Analytics"]
      100 GETTABLEKS                       R12 R12 K21 ["Analytics"]
      102 CALL                             R11 1 1
      103 GETIMPORT                        R12 K5 [require]
      105 GETTABLEKS                       R13 R0 K7 ["Src"]
      107 GETTABLEKS                       R13 R13 K11 ["Util"]
      109 GETTABLEKS                       R13 R13 K22 ["CreatorInfoHelper"]
      111 CALL                             R12 1 1
      112 GETIMPORT                        R13 K5 [require]
      114 GETTABLEKS                       R14 R0 K7 ["Src"]
      116 GETTABLEKS                       R14 R14 K11 ["Util"]
      118 GETTABLEKS                       R14 R14 K23 ["ToolboxUtilities"]
      120 CALL                             R13 1 1
      121 GETTABLEKS                       R13 R13 K24 ["showRobloxCreatedAssets"]
      123 GETIMPORT                        R14 K5 [require]
      125 GETTABLEKS                       R15 R0 K7 ["Src"]
      127 GETTABLEKS                       R15 R15 K11 ["Util"]
      129 GETTABLEKS                       R15 R15 K25 ["SharedFlags"]
      131 GETTABLEKS                       R15 R15 K26 ["getFFlagToolboxEnableSearchOptionsRefactor"]
      133 CALL                             R14 1 1
      134 GETIMPORT                        R15 K5 [require]
      136 GETTABLEKS                       R16 R0 K7 ["Src"]
      138 GETTABLEKS                       R16 R16 K11 ["Util"]
      140 GETTABLEKS                       R16 R16 K25 ["SharedFlags"]
      142 GETTABLEKS                       R16 R16 K27 ["getFFlagToolboxAddCreationsFilterToListView"]
      144 CALL                             R15 1 1
      145 DUPCLOSURE                       R16 K28 [PROTO_1]
      146 CAPTURE                          VAL R12
      147 DUPCLOSURE                       R17 K29 [PROTO_5]
      148 CAPTURE                          VAL R9
      149 CAPTURE                          VAL R7
      150 CAPTURE                          VAL R2
      151 CAPTURE                          VAL R10
      152 CAPTURE                          VAL R6
      153 CAPTURE                          VAL R15
      154 CAPTURE                          VAL R4
      155 CAPTURE                          VAL R14
      156 CAPTURE                          VAL R11
      157 CAPTURE                          VAL R12
      158 CAPTURE                          VAL R13
      159 CAPTURE                          VAL R5
      160 CAPTURE                          VAL R3
      161 CAPTURE                          VAL R8
      162 RETURN                           R17 1
