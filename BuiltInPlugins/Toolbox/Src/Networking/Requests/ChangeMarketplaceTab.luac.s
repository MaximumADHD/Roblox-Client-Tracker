PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getCategories"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R4 R0 K1 ["getState"]
        6 CALL                             R4 1 1
        7 GETTABLEKS                       R3 R4 K2 ["roles"]
        9 GETUPVAL                         R5 2
       10 CALL                             R5 0 1
       11 JUMPIFNOT                        R5 ; [+2]
       12 GETUPVAL                         R4 3
       13 JUMP                             ; [+1]
       14 LOADNIL                          R4
       15 CALL                             R1 3 1
       16 GETUPVAL                         R3 4
       17 GETTABLEKS                       R2 R3 K3 ["None"]
       19 GETUPVAL                         R3 5
       20 CALL                             R3 0 1
       21 JUMPIFNOT                        R3 ; [+8]
       22 GETUPVAL                         R4 6
       23 GETTABLEKS                       R3 R4 K4 ["creator"]
       25 JUMPIF                           R3 ; [+3]
       26 GETUPVAL                         R4 4
       27 GETTABLEKS                       R3 R4 K3 ["None"]
       29 MOVE                             R2 R3
       30 LOADNIL                          R3
       31 GETUPVAL                         R4 7
       32 CALL                             R4 0 1
       33 JUMPIFNOT                        R4 ; [+2]
       34 LOADB                            R3 1
       35 JUMP                             ; [+6]
       36 GETUPVAL                         R4 8
       37 CALL                             R4 0 1
       38 JUMPIFNOT                        R4 ; [+2]
       39 LOADB                            R3 0
       40 JUMP                             ; [+1]
       41 LOADNIL                          R3
       42 GETUPVAL                         R5 6
       43 GETTABLEKS                       R4 R5 K5 ["categoryName"]
       45 GETUPVAL                         R6 0
       46 GETTABLEKS                       R5 R6 K6 ["getTabKeyForCategoryName"]
       48 MOVE                             R6 R4
       49 CALL                             R5 1 1
       50 GETUPVAL                         R6 9
       51 JUMPIFNOT                        R6 ; [+32]
       52 GETUPVAL                         R7 0
       53 GETTABLEKS                       R6 R7 K7 ["MARKETPLACE_KEY"]
       55 JUMPIFNOTEQ                      R5 R6 ; [+19]
       57 GETUPVAL                         R6 10
       58 GETUPVAL                         R9 11
       59 GETTABLEKS                       R8 R9 K8 ["WebViewLoadingStatus"]
       61 GETTABLEKS                       R7 R8 K9 ["FAILED"]
       63 JUMPIFEQ                         R6 R7 ; [+11]
       65 GETUPVAL                         R7 12
       66 GETTABLEKS                       R6 R7 K10 ["setEventTarget"]
       68 GETUPVAL                         R9 13
       69 GETTABLEKS                       R8 R9 K11 ["ANALYTICS_TARGET"]
       71 GETTABLEKS                       R7 R8 K12 ["WebView"]
       73 CALL                             R6 1 0
       74 JUMP                             ; [+9]
       75 GETUPVAL                         R7 12
       76 GETTABLEKS                       R6 R7 K10 ["setEventTarget"]
       78 GETUPVAL                         R9 13
       79 GETTABLEKS                       R8 R9 K11 ["ANALYTICS_TARGET"]
       81 GETTABLEKS                       R7 R8 K13 ["Studio"]
       83 CALL                             R6 1 0
       84 GETUPVAL                         R8 14
       85 GETUPVAL                         R9 15
       86 GETUPVAL                         R10 16
       87 DUPTABLE                         R11 K32 [{"audioSearchInfo", "additionalAudioSearchInfo", "creator", "currentTab", "categories", "requestReason", "categoryName", "excludeGroupCreations", "searchTerm", "sortIndex", "groupIndex", "targetPage", "currentPage", "selectedBackgroundIndex", "includeUnverifiedCreators", "creatorTargetIds", "groupTargetIds", "uiSortIntent", "queryParams", "sortDirection"}]
       88 GETUPVAL                         R13 4
       89 GETTABLEKS                       R12 R13 K3 ["None"]
       91 SETTABLEKS                       R12 R11 K14 ["audioSearchInfo"]
       93 GETUPVAL                         R13 4
       94 GETTABLEKS                       R12 R13 K3 ["None"]
       96 SETTABLEKS                       R12 R11 K15 ["additionalAudioSearchInfo"]
       98 SETTABLEKS                       R2 R11 K4 ["creator"]
      100 GETUPVAL                         R12 1
      101 SETTABLEKS                       R12 R11 K16 ["currentTab"]
      103 SETTABLEKS                       R1 R11 K17 ["categories"]
      105 GETUPVAL                         R13 17
      106 GETTABLEKS                       R12 R13 K33 ["ChangeTabs"]
      108 SETTABLEKS                       R12 R11 K18 ["requestReason"]
      110 GETUPVAL                         R13 6
      111 GETTABLEKS                       R12 R13 K5 ["categoryName"]
      113 SETTABLEKS                       R12 R11 K5 ["categoryName"]
      115 SETTABLEKS                       R3 R11 K19 ["excludeGroupCreations"]
      117 GETUPVAL                         R13 6
      118 GETTABLEKS                       R12 R13 K20 ["searchTerm"]
      120 SETTABLEKS                       R12 R11 K20 ["searchTerm"]
      122 GETUPVAL                         R13 6
      123 GETTABLEKS                       R12 R13 K21 ["sortIndex"]
      125 SETTABLEKS                       R12 R11 K21 ["sortIndex"]
      127 GETUPVAL                         R13 6
      128 GETTABLEKS                       R12 R13 K22 ["groupIndex"]
      130 SETTABLEKS                       R12 R11 K22 ["groupIndex"]
      132 LOADN                            R12 1
      133 SETTABLEKS                       R12 R11 K23 ["targetPage"]
      135 LOADN                            R12 0
      136 SETTABLEKS                       R12 R11 K24 ["currentPage"]
      138 GETUPVAL                         R13 6
      139 GETTABLEKS                       R12 R13 K25 ["selectedBackgroundIndex"]
      141 SETTABLEKS                       R12 R11 K25 ["selectedBackgroundIndex"]
      143 GETUPVAL                         R13 18
      144 CALL                             R13 0 1
      145 JUMPIFNOT                        R13 ; [+2]
      146 LOADB                            R12 0
      147 JUMP                             ; [+1]
      148 LOADNIL                          R12
      149 SETTABLEKS                       R12 R11 K26 ["includeUnverifiedCreators"]
      151 GETUPVAL                         R13 18
      152 CALL                             R13 0 1
      153 JUMPIFNOT                        R13 ; [+4]
      154 GETUPVAL                         R13 4
      155 GETTABLEKS                       R12 R13 K3 ["None"]
      157 JUMP                             ; [+1]
      158 LOADNIL                          R12
      159 SETTABLEKS                       R12 R11 K27 ["creatorTargetIds"]
      161 GETUPVAL                         R13 18
      162 CALL                             R13 0 1
      163 JUMPIFNOT                        R13 ; [+4]
      164 GETUPVAL                         R13 4
      165 GETTABLEKS                       R12 R13 K3 ["None"]
      167 JUMP                             ; [+1]
      168 LOADNIL                          R12
      169 SETTABLEKS                       R12 R11 K28 ["groupTargetIds"]
      171 GETUPVAL                         R13 18
      172 CALL                             R13 0 1
      173 JUMPIFNOT                        R13 ; [+4]
      174 GETUPVAL                         R13 4
      175 GETTABLEKS                       R12 R13 K3 ["None"]
      177 JUMP                             ; [+1]
      178 LOADNIL                          R12
      179 SETTABLEKS                       R12 R11 K29 ["uiSortIntent"]
      181 GETUPVAL                         R13 4
      182 GETTABLEKS                       R12 R13 K3 ["None"]
      184 SETTABLEKS                       R12 R11 K30 ["queryParams"]
      186 GETUPVAL                         R13 4
      187 GETTABLEKS                       R12 R13 K3 ["None"]
      189 SETTABLEKS                       R12 R11 K31 ["sortDirection"]
      191 CALL                             R8 3 -1
      192 NAMECALL                         R6 R0 K34 ["dispatch"]
      194 CALL                             R6 -1 0
      195 LOADB                            R6 1
      196 GETUPVAL                         R7 1
      197 GETUPVAL                         R9 0
      198 GETTABLEKS                       R8 R9 K35 ["INVENTORY_KEY"]
      200 JUMPIFEQ                         R7 R8 ; [+9]
      202 GETUPVAL                         R7 1
      203 GETUPVAL                         R9 0
      204 GETTABLEKS                       R8 R9 K36 ["CREATIONS_KEY"]
      206 JUMPIFEQ                         R7 R8 ; [+2]
      208 LOADB                            R6 0 +1
      209 LOADB                            R6 1
      210 JUMPIFNOT                        R6 ; [+6]
      211 GETUPVAL                         R9 19
      212 GETUPVAL                         R10 15
      213 CALL                             R9 1 -1
      214 NAMECALL                         R7 R0 K34 ["dispatch"]
      216 CALL                             R7 -1 0
      217 GETUPVAL                         R9 20
      218 CALL                             R9 0 -1
      219 NAMECALL                         R7 R0 K34 ["dispatch"]
      221 CALL                             R7 -1 0
      222 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R8 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R5
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          VAL R4
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          VAL R6
       11 CAPTURE                          VAL R7
       12 CAPTURE                          UPVAL U6
       13 CAPTURE                          UPVAL U7
       14 CAPTURE                          UPVAL U8
       15 CAPTURE                          UPVAL U9
       16 CAPTURE                          VAL R0
       17 CAPTURE                          VAL R3
       18 CAPTURE                          UPVAL U10
       19 CAPTURE                          UPVAL U11
       20 CAPTURE                          UPVAL U12
       21 CAPTURE                          UPVAL U13
       22 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Cryo"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R7 R0 K7 ["Src"]
       22 GETTABLEKS                       R6 R7 K8 ["Components"]
       24 GETTABLEKS                       R5 R6 K9 ["WebView"]
       26 GETTABLEKS                       R4 R5 K10 ["WebViewTypes"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K5 [require]
       31 GETTABLEKS                       R7 R0 K7 ["Src"]
       33 GETTABLEKS                       R6 R7 K11 ["Types"]
       35 GETTABLEKS                       R5 R6 K12 ["RequestReason"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K5 [require]
       40 GETTABLEKS                       R9 R0 K7 ["Src"]
       42 GETTABLEKS                       R8 R9 K13 ["Util"]
       44 GETTABLEKS                       R7 R8 K14 ["Analytics"]
       46 GETTABLEKS                       R6 R7 K14 ["Analytics"]
       48 CALL                             R5 1 1
       49 GETIMPORT                        R6 K5 [require]
       51 GETTABLEKS                       R9 R0 K7 ["Src"]
       53 GETTABLEKS                       R8 R9 K13 ["Util"]
       55 GETTABLEKS                       R7 R8 K15 ["Constants"]
       57 CALL                             R6 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R11 R0 K7 ["Src"]
       62 GETTABLEKS                       R10 R11 K13 ["Util"]
       64 GETTABLEKS                       R9 R10 K16 ["ToolboxUtilities"]
       66 CALL                             R8 1 1
       67 GETTABLEKS                       R7 R8 K17 ["showRobloxCreatedAssets"]
       69 GETIMPORT                        R8 K5 [require]
       71 GETTABLEKS                       R12 R0 K7 ["Src"]
       73 GETTABLEKS                       R11 R12 K18 ["Networking"]
       75 GETTABLEKS                       R10 R11 K19 ["Requests"]
       77 GETTABLEKS                       R9 R10 K20 ["GetToolboxManageableGroupsRequest"]
       79 CALL                             R8 1 1
       80 GETIMPORT                        R9 K5 [require]
       82 GETTABLEKS                       R13 R0 K7 ["Src"]
       84 GETTABLEKS                       R12 R13 K18 ["Networking"]
       86 GETTABLEKS                       R11 R12 K19 ["Requests"]
       88 GETTABLEKS                       R10 R11 K21 ["UpdatePageInfoAndSendRequest"]
       90 CALL                             R9 1 1
       91 GETIMPORT                        R10 K5 [require]
       93 GETTABLEKS                       R14 R0 K7 ["Src"]
       95 GETTABLEKS                       R13 R14 K13 ["Util"]
       97 GETTABLEKS                       R12 R13 K22 ["SharedFlags"]
       99 GETTABLEKS                       R11 R12 K23 ["getFFlagToolboxContentManagementCombineTabs"]
      101 CALL                             R10 1 1
      102 GETIMPORT                        R11 K5 [require]
      104 GETTABLEKS                       R15 R0 K7 ["Src"]
      106 GETTABLEKS                       R14 R15 K13 ["Util"]
      108 GETTABLEKS                       R13 R14 K22 ["SharedFlags"]
      110 GETTABLEKS                       R12 R13 K24 ["getFFlagToolboxEnableSearchOptionsRefactor"]
      112 CALL                             R11 1 1
      113 GETIMPORT                        R12 K5 [require]
      115 GETTABLEKS                       R16 R0 K7 ["Src"]
      117 GETTABLEKS                       R15 R16 K13 ["Util"]
      119 GETTABLEKS                       R14 R15 K22 ["SharedFlags"]
      121 GETTABLEKS                       R13 R14 K25 ["getFFlagToolboxAddCreationsFilterToListView"]
      123 CALL                             R12 1 1
      124 GETIMPORT                        R13 K5 [require]
      126 GETTABLEKS                       R17 R0 K7 ["Src"]
      128 GETTABLEKS                       R16 R17 K13 ["Util"]
      130 GETTABLEKS                       R15 R16 K22 ["SharedFlags"]
      132 GETTABLEKS                       R14 R15 K26 ["getFFlagToolboxExcludeGroupCreations"]
      134 CALL                             R13 1 1
      135 GETIMPORT                        R14 K5 [require]
      137 GETTABLEKS                       R17 R0 K7 ["Src"]
      139 GETTABLEKS                       R16 R17 K11 ["Types"]
      141 GETTABLEKS                       R15 R16 K27 ["Category"]
      143 CALL                             R14 1 1
      144 GETIMPORT                        R15 K5 [require]
      146 GETTABLEKS                       R18 R0 K7 ["Src"]
      148 GETTABLEKS                       R17 R18 K28 ["Actions"]
      150 GETTABLEKS                       R16 R17 K29 ["StopAllSounds"]
      152 CALL                             R15 1 1
      153 DUPCLOSURE                       R16 K30 [PROTO_1]
      154 CAPTURE                          VAL R14
      155 CAPTURE                          VAL R10
      156 CAPTURE                          VAL R2
      157 CAPTURE                          VAL R7
      158 CAPTURE                          VAL R13
      159 CAPTURE                          VAL R12
      160 CAPTURE                          VAL R3
      161 CAPTURE                          VAL R5
      162 CAPTURE                          VAL R6
      163 CAPTURE                          VAL R9
      164 CAPTURE                          VAL R4
      165 CAPTURE                          VAL R11
      166 CAPTURE                          VAL R8
      167 CAPTURE                          VAL R15
      168 RETURN                           R16 1
