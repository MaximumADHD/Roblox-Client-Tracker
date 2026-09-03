PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 JUMPIFNOT                        R0 ; [+26]
        3 GETIMPORT                        R2 K1 [pairs]
        5 MOVE                             R3 R0
        6 CALL                             R2 1 3
        7 FORGPREP_NEXT                    R2
        8 DUPTABLE                         R7 K3 [{"Asset"}]
        9 DUPTABLE                         R8 K6 [{"Id", "Name"}]
       10 GETTABLEKS                       R9 R6 K7 ["id"]
       12 JUMPIF                           R9 ; [+2]
       13 GETTABLEKS                       R9 R6 K8 ["assetId"]
       15 SETTABLEKS                       R9 R8 K4 ["Id"]
       17 GETTABLEKS                       R10 R6 K10 ["name"]
       19 ORK                              R9 R10 K9 [""]
       20 SETTABLEKS                       R9 R8 K5 ["Name"]
       22 SETTABLEKS                       R8 R7 K2 ["Asset"]
       24 LENGTH                           R9 R1
       25 ADDK                             R8 R9 K11 [1]
       26 SETTABLE                         R7 R1 R8
       27 FORGLOOP                         R2 2 ; [-20]
       29 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 JUMPIFNOT                        R0 ; [+39]
        3 GETIMPORT                        R2 K1 [pairs]
        5 MOVE                             R3 R0
        6 CALL                             R2 1 3
        7 FORGPREP_NEXT                    R2
        8 LENGTH                           R8 R1
        9 ADDK                             R7 R8 K2 [1]
       10 DUPTABLE                         R8 K4 [{"Asset"}]
       11 DUPTABLE                         R9 K8 [{"Id", "Name", "UpdateTime"}]
       12 GETTABLEKS                       R10 R6 K9 ["assetItem"]
       14 GETTABLEKS                       R10 R10 K10 ["asset"]
       16 GETTABLEKS                       R10 R10 K11 ["assetId"]
       18 SETTABLEKS                       R10 R9 K5 ["Id"]
       20 GETTABLEKS                       R11 R6 K9 ["assetItem"]
       22 GETTABLEKS                       R11 R11 K10 ["asset"]
       24 GETTABLEKS                       R11 R11 K13 ["displayName"]
       26 ORK                              R10 R11 K12 [""]
       27 SETTABLEKS                       R10 R9 K6 ["Name"]
       29 GETTABLEKS                       R10 R6 K9 ["assetItem"]
       31 GETTABLEKS                       R10 R10 K10 ["asset"]
       33 GETTABLEKS                       R10 R10 K14 ["updateTime"]
       35 SETTABLEKS                       R10 R9 K7 ["UpdateTime"]
       37 SETTABLEKS                       R9 R8 K3 ["Asset"]
       39 SETTABLE                         R8 R1 R7
       40 FORGLOOP                         R2 2 ; [-33]
       42 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R3 R0 K1 ["Asset"]
        2 GETTABLEKS                       R3 R3 K2 ["UpdateTime"]
        4 ORK                              R2 R3 K0 [""]
        5 GETTABLEKS                       R4 R1 K1 ["Asset"]
        7 GETTABLEKS                       R4 R4 K2 ["UpdateTime"]
        9 ORK                              R3 R4 K0 [""]
       10 JUMPIFEQ                         R2 R3 ; [+6]
       12 JUMPIFLT                         R3 R2 ; [+2]
       14 LOADB                            R4 0 +1
       15 LOADB                            R4 1
       16 RETURN                           R4 1
       17 GETTABLEKS                       R5 R0 K1 ["Asset"]
       19 GETTABLEKS                       R5 R5 K3 ["Name"]
       21 ORK                              R4 R5 K0 [""]
       22 GETTABLEKS                       R6 R1 K1 ["Asset"]
       24 GETTABLEKS                       R6 R6 K3 ["Name"]
       26 ORK                              R5 R6 K0 [""]
       27 JUMPIFEQ                         R4 R5 ; [+6]
       29 JUMPIFLT                         R4 R5 ; [+2]
       31 LOADB                            R6 0 +1
       32 LOADB                            R6 1
       33 RETURN                           R6 1
       34 GETTABLEKS                       R7 R0 K1 ["Asset"]
       36 GETTABLEKS                       R7 R7 K4 ["Id"]
       38 GETTABLEKS                       R8 R1 K1 ["Asset"]
       40 GETTABLEKS                       R8 R8 K4 ["Id"]
       42 JUMPIFLT                         R7 R8 ; [+2]
       44 LOADB                            R6 0 +1
       45 LOADB                            R6 1
       46 RETURN                           R6 1

PROTO_3:
        0 GETIMPORT                        R1 K2 [table.sort]
        2 MOVE                             R2 R0
        3 DUPCLOSURE                       R3 K3 [PROTO_2]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R1 R1 K1 ["overrideCursor"]
        5 LOADK                            R2 K2 [""]
        6 GETTABLEKS                       R3 R1 K3 ["nextPageCursor"]
        8 JUMPIFNOT                        R3 ; [+2]
        9 GETTABLEKS                       R2 R1 K3 ["nextPageCursor"]
       11 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 CALL                             R3 1 -1
        4 NAMECALL                         R1 R1 K0 ["dispatch"]
        6 CALL                             R1 -1 0
        7 GETUPVAL                         R1 0
        8 GETUPVAL                         R3 2
        9 LOADN                            R4 0
       10 CALL                             R3 1 -1
       11 NAMECALL                         R1 R1 K0 ["dispatch"]
       13 CALL                             R1 -1 0
       14 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["shouldDebugOverrideAssetLoading"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+32]
        5 GETIMPORT                        R1 K2 [print]
        7 GETIMPORT                        R2 K5 [string.format]
        9 LOADK                            R3 K6 ["handleGetCreationOverrideSuccess: curr=%s, loading=%s, target=%s"]
       10 GETUPVAL                         R5 1
       11 NAMECALL                         R5 R5 K7 ["getState"]
       13 CALL                             R5 1 1
       14 GETTABLEKS                       R5 R5 K8 ["currentPage"]
       16 FASTCALL1                        TOSTRING R5 ; [+2]
       17 GETIMPORT                        R4 K10 [tostring]
       19 CALL                             R4 1 1
       20 GETUPVAL                         R6 1
       21 NAMECALL                         R6 R6 K7 ["getState"]
       23 CALL                             R6 1 1
       24 GETTABLEKS                       R6 R6 K11 ["loadingPage"]
       26 FASTCALL1                        TOSTRING R6 ; [+2]
       27 GETIMPORT                        R5 K10 [tostring]
       29 CALL                             R5 1 1
       30 GETUPVAL                         R7 2
       31 FASTCALL1                        TOSTRING R7 ; [+2]
       32 GETIMPORT                        R6 K10 [tostring]
       34 CALL                             R6 1 1
       35 CALL                             R2 4 -1
       36 CALL                             R1 -1 0
       37 GETUPVAL                         R1 3
       38 JUMPIFNOT                        R1 ; [+100]
       39 GETTABLEKS                       R1 R0 K12 ["responseBody"]
       41 GETUPVAL                         R2 4
       42 GETTABLEKS                       R3 R1 K13 ["items"]
       44 CALL                             R2 1 1
       45 GETTABLEKS                       R3 R1 K14 ["nextPageToken"]
       47 GETUPVAL                         R4 2
       48 JUMPIFNOTEQKN                    R4 K15 [1] ; [+26]
       50 GETUPVAL                         R4 5
       51 CALL                             R4 0 1
       52 JUMPIF                           R4 ; [+5]
       53 GETIMPORT                        R4 K18 [table.sort]
       55 MOVE                             R5 R2
       56 DUPCLOSURE                       R6 K19 [PROTO_2]
       57 CALL                             R4 2 0
       58 GETUPVAL                         R4 1
       59 GETUPVAL                         R6 6
       60 MOVE                             R7 R2
       61 CALL                             R6 1 -1
       62 NAMECALL                         R4 R4 K20 ["dispatch"]
       64 CALL                             R4 -1 0
       65 GETUPVAL                         R4 1
       66 GETUPVAL                         R6 7
       67 DUPTABLE                         R7 K22 [{"nextPageCursor"}]
       68 SETTABLEKS                       R3 R7 K21 ["nextPageCursor"]
       70 CALL                             R6 1 -1
       71 NAMECALL                         R4 R4 K20 ["dispatch"]
       73 CALL                             R4 -1 0
       74 JUMP                             ; [+56]
       75 GETUPVAL                         R4 1
       76 NAMECALL                         R4 R4 K7 ["getState"]
       78 CALL                             R4 1 1
       79 GETTABLEKS                       R4 R4 K23 ["resultsArray"]
       81 JUMPIF                           R4 ; [+2]
       82 NEWTABLE                         R4 0 0
       84 GETUPVAL                         R5 8
       85 GETTABLEKS                       R5 R5 K24 ["List"]
       87 GETTABLEKS                       R5 R5 K25 ["join"]
       89 MOVE                             R6 R4
       90 MOVE                             R7 R2
       91 CALL                             R5 2 1
       92 GETUPVAL                         R6 5
       93 CALL                             R6 0 1
       94 JUMPIF                           R6 ; [+5]
       95 GETIMPORT                        R6 K18 [table.sort]
       97 MOVE                             R7 R5
       98 DUPCLOSURE                       R8 K19 [PROTO_2]
       99 CALL                             R6 2 0
      100 JUMPIFNOTEQKNIL                  R3 ; [+2]
      102 LOADB                            R6 0 +1
      103 LOADB                            R6 1
      104 NOT                              R7 R6
      105 GETUPVAL                         R8 1
      106 GETUPVAL                         R10 6
      107 MOVE                             R11 R5
      108 CALL                             R10 1 -1
      109 NAMECALL                         R8 R8 K20 ["dispatch"]
      111 CALL                             R8 -1 0
      112 GETUPVAL                         R8 1
      113 GETUPVAL                         R10 9
      114 DUPTABLE                         R11 K27 [{"fetchedAll"}]
      115 SETTABLEKS                       R7 R11 K26 ["fetchedAll"]
      117 CALL                             R10 1 -1
      118 NAMECALL                         R8 R8 K20 ["dispatch"]
      120 CALL                             R8 -1 0
      121 JUMPIFNOT                        R6 ; [+9]
      122 GETUPVAL                         R8 1
      123 GETUPVAL                         R10 7
      124 DUPTABLE                         R11 K22 [{"nextPageCursor"}]
      125 SETTABLEKS                       R3 R11 K21 ["nextPageCursor"]
      127 CALL                             R10 1 -1
      128 NAMECALL                         R8 R8 K20 ["dispatch"]
      130 CALL                             R8 -1 0
      131 GETUPVAL                         R4 1
      132 GETUPVAL                         R6 10
      133 GETUPVAL                         R7 2
      134 CALL                             R6 1 -1
      135 NAMECALL                         R4 R4 K20 ["dispatch"]
      137 CALL                             R4 -1 0
      138 JUMP                             ; [+73]
      139 GETTABLEKS                       R1 R0 K12 ["responseBody"]
      141 GETUPVAL                         R2 11
      142 GETTABLEKS                       R3 R1 K28 ["data"]
      144 CALL                             R2 1 1
      145 GETTABLEKS                       R3 R1 K21 ["nextPageCursor"]
      147 GETUPVAL                         R4 2
      148 JUMPIFNOTEQKN                    R4 K15 [1] ; [+25]
      150 GETUPVAL                         R4 1
      151 GETUPVAL                         R6 6
      152 MOVE                             R7 R2
      153 CALL                             R6 1 -1
      154 NAMECALL                         R4 R4 K20 ["dispatch"]
      156 CALL                             R4 -1 0
      157 GETUPVAL                         R4 1
      158 GETUPVAL                         R6 7
      159 DUPTABLE                         R7 K22 [{"nextPageCursor"}]
      160 SETTABLEKS                       R3 R7 K21 ["nextPageCursor"]
      162 CALL                             R6 1 -1
      163 NAMECALL                         R4 R4 K20 ["dispatch"]
      165 CALL                             R4 -1 0
      166 GETUPVAL                         R4 1
      167 GETUPVAL                         R6 10
      168 LOADN                            R7 1
      169 CALL                             R6 1 -1
      170 NAMECALL                         R4 R4 K20 ["dispatch"]
      172 CALL                             R4 -1 0
      173 JUMP                             ; [+38]
      174 GETUPVAL                         R4 1
      175 NAMECALL                         R4 R4 K7 ["getState"]
      177 CALL                             R4 1 1
      178 GETTABLEKS                       R4 R4 K29 ["overrideCursor"]
      180 JUMPIFNOTEQKNIL                  R3 ; [+2]
      182 LOADB                            R5 0 +1
      183 LOADB                            R5 1
      184 NOT                              R6 R5
      185 JUMPIFNOT                        R5 ; [+4]
      186 DUPTABLE                         R7 K22 [{"nextPageCursor"}]
      187 SETTABLEKS                       R3 R7 K21 ["nextPageCursor"]
      189 MOVE                             R4 R7
      190 GETUPVAL                         R7 1
      191 GETUPVAL                         R9 12
      192 MOVE                             R10 R2
      193 MOVE                             R11 R6
      194 CALL                             R9 2 -1
      195 NAMECALL                         R7 R7 K20 ["dispatch"]
      197 CALL                             R7 -1 0
      198 GETUPVAL                         R7 1
      199 GETUPVAL                         R9 7
      200 MOVE                             R10 R4
      201 CALL                             R9 1 -1
      202 NAMECALL                         R7 R7 K20 ["dispatch"]
      204 CALL                             R7 -1 0
      205 GETUPVAL                         R7 1
      206 GETUPVAL                         R9 10
      207 GETUPVAL                         R10 2
      208 CALL                             R9 1 -1
      209 NAMECALL                         R7 R7 K20 ["dispatch"]
      211 CALL                             R7 -1 0
      212 GETUPVAL                         R1 1
      213 GETUPVAL                         R3 13
      214 LOADN                            R4 0
      215 CALL                             R3 1 -1
      216 NAMECALL                         R1 R1 K20 ["dispatch"]
      218 CALL                             R1 -1 0
      219 RETURN                           R0 0

PROTO_7:
        0 NAMECALL                         R2 R0 K1 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R2 R2 K2 ["loadingPage"]
        5 ORK                              R1 R2 K0 [0]
        6 GETUPVAL                         R2 0
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 1
        9 CALL                             R3 0 1
       10 JUMPIFNOT                        R3 ; [+7]
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K3 ["isCatalogAsset"]
       14 GETUPVAL                         R4 3
       15 CALL                             R3 1 1
       16 JUMPIFNOT                        R3 ; [+1]
       17 LOADB                            R2 0
       18 GETUPVAL                         R3 4
       19 GETTABLEKS                       R3 R3 K4 ["shouldDebugOverrideAssetLoading"]
       21 CALL                             R3 0 1
       22 JUMPIFNOT                        R3 ; [+30]
       23 GETIMPORT                        R3 K6 [print]
       25 GETIMPORT                        R4 K9 [string.format]
       27 LOADK                            R5 K10 ["GetOverrideAssetRequest: curr=%s, loading=%s, target=%s"]
       28 NAMECALL                         R7 R0 K1 ["getState"]
       30 CALL                             R7 1 1
       31 GETTABLEKS                       R7 R7 K11 ["currentPage"]
       33 FASTCALL1                        TOSTRING R7 ; [+2]
       34 GETIMPORT                        R6 K13 [tostring]
       36 CALL                             R6 1 1
       37 NAMECALL                         R8 R0 K1 ["getState"]
       39 CALL                             R8 1 1
       40 GETTABLEKS                       R8 R8 K2 ["loadingPage"]
       42 FASTCALL1                        TOSTRING R8 ; [+2]
       43 GETIMPORT                        R7 K13 [tostring]
       45 CALL                             R7 1 1
       46 GETUPVAL                         R9 5
       47 FASTCALL1                        TOSTRING R9 ; [+2]
       48 GETIMPORT                        R8 K13 [tostring]
       50 CALL                             R8 1 1
       51 CALL                             R4 4 -1
       52 CALL                             R3 -1 0
       53 GETUPVAL                         R3 5
       54 LOADN                            R4 1
       55 JUMPIFNOTLT                      R4 R3 ; [+32]
       57 NAMECALL                         R3 R0 K1 ["getState"]
       59 CALL                             R3 1 1
       60 GETTABLEKS                       R3 R3 K14 ["fetchedAll"]
       62 JUMPIFNOT                        R3 ; [+11]
       63 GETUPVAL                         R3 4
       64 GETTABLEKS                       R3 R3 K4 ["shouldDebugOverrideAssetLoading"]
       66 CALL                             R3 0 1
       67 JUMPIFNOT                        R3 ; [+4]
       68 GETIMPORT                        R3 K6 [print]
       70 LOADK                            R4 K15 ["GetOverrideAssetRequest: fetchedAll, stopping"]
       71 CALL                             R3 1 0
       72 CLOSEUPVALS                      R2
       73 RETURN                           R0 0
       74 GETUPVAL                         R3 5
       75 JUMPIFNOTLE                      R3 R1 ; [+12]
       77 GETUPVAL                         R3 4
       78 GETTABLEKS                       R3 R3 K4 ["shouldDebugOverrideAssetLoading"]
       80 CALL                             R3 0 1
       81 JUMPIFNOT                        R3 ; [+4]
       82 GETIMPORT                        R3 K6 [print]
       84 LOADK                            R4 K16 ["GetOverrideAssetRequest: loadingPage >= targetPage, stopping"]
       85 CALL                             R3 1 0
       86 CLOSEUPVALS                      R2
       87 RETURN                           R0 0
       88 GETUPVAL                         R3 4
       89 GETTABLEKS                       R3 R3 K4 ["shouldDebugOverrideAssetLoading"]
       91 CALL                             R3 0 1
       92 JUMPIFNOT                        R3 ; [+4]
       93 GETIMPORT                        R3 K6 [print]
       95 LOADK                            R4 K17 ["GetOverrideAssetRequest: continuing to run request"]
       96 CALL                             R3 1 0
       97 GETUPVAL                         R5 6
       98 GETUPVAL                         R6 5
       99 CALL                             R5 1 -1
      100 NAMECALL                         R3 R0 K18 ["dispatch"]
      102 CALL                             R3 -1 0
      103 NEWCLOSURE                       R3 P0
      104 CAPTURE                          VAL R0
      105 CAPTURE                          UPVAL U7
      106 CAPTURE                          UPVAL U6
      107 NEWCLOSURE                       R4 P1
      108 CAPTURE                          UPVAL U4
      109 CAPTURE                          VAL R0
      110 CAPTURE                          UPVAL U5
      111 CAPTURE                          REF R2
      112 CAPTURE                          UPVAL U8
      113 CAPTURE                          UPVAL U9
      114 CAPTURE                          UPVAL U10
      115 CAPTURE                          UPVAL U11
      116 CAPTURE                          UPVAL U12
      117 CAPTURE                          UPVAL U13
      118 CAPTURE                          UPVAL U14
      119 CAPTURE                          UPVAL U15
      120 CAPTURE                          UPVAL U16
      121 CAPTURE                          UPVAL U6
      122 JUMPIFNOT                        R2 ; [+50]
      123 NAMECALL                         R6 R0 K1 ["getState"]
      125 CALL                             R6 1 1
      126 GETTABLEKS                       R6 R6 K19 ["overrideCursor"]
      128 LOADK                            R7 K20 [""]
      129 GETTABLEKS                       R8 R6 K21 ["nextPageCursor"]
      131 JUMPIFNOT                        R8 ; [+2]
      132 GETTABLEKS                       R7 R6 K21 ["nextPageCursor"]
      134 MOVE                             R5 R7
      135 GETUPVAL                         R6 17
      136 DUPTABLE                         R8 K31 [{["query"] = "", ["assetType"], ["scopeParams"], ["maxPageSize"], ["pageToken"], ["includeFolders"] = False, ["sources"] = "created"}]
      137 GETUPVAL                         R10 18
      138 JUMPIFNOTEQKS                    R10 K32 ["AnimationGraph"] ; [+3]
      140 LOADK                            R9 K32 ["AnimationGraph"]
      141 JUMP                             ; [+3]
      142 GETUPVAL                         R9 3
      143 GETTABLEKS                       R9 R9 K33 ["Name"]
      145 SETTABLEKS                       R9 R8 K23 ["assetType"]
      147 DUPTABLE                         R9 K36 [{"Id", "Type"}]
      148 GETUPVAL                         R10 19
      149 SETTABLEKS                       R10 R9 K34 ["Id"]
      151 GETUPVAL                         R10 20
      152 SETTABLEKS                       R10 R9 K35 ["Type"]
      154 SETTABLEKS                       R9 R8 K24 ["scopeParams"]
      156 GETUPVAL                         R9 21
      157 GETTABLEKS                       R9 R9 K37 ["CREATOR_INVENTORY_MAX_PAGE_SIZE"]
      159 SETTABLEKS                       R9 R8 K25 ["maxPageSize"]
      161 SETTABLEKS                       R5 R8 K26 ["pageToken"]
      163 NAMECALL                         R6 R6 K38 ["requestCreatorInventoryAssets"]
      165 CALL                             R6 2 1
      166 MOVE                             R8 R4
      167 MOVE                             R9 R3
      168 NAMECALL                         R6 R6 K39 ["andThen"]
      170 CALL                             R6 3 -1
      171 CLOSEUPVALS                      R2
      172 RETURN                           R6 -1
      173 LOADNIL                          R5
      174 GETUPVAL                         R6 20
      175 JUMPIFNOTEQKS                    R6 K40 ["Group"] ; [+2]
      177 GETUPVAL                         R5 19
      178 GETUPVAL                         R6 20
      179 JUMPIFNOTEQKS                    R6 K40 ["Group"] ; [+27]
      181 NAMECALL                         R7 R0 K1 ["getState"]
      183 CALL                             R7 1 1
      184 GETTABLEKS                       R7 R7 K19 ["overrideCursor"]
      186 LOADK                            R8 K20 [""]
      187 GETTABLEKS                       R9 R7 K21 ["nextPageCursor"]
      189 JUMPIFNOT                        R9 ; [+2]
      190 GETTABLEKS                       R8 R7 K21 ["nextPageCursor"]
      192 MOVE                             R6 R8
      193 GETUPVAL                         R7 17
      194 LOADNIL                          R9
      195 MOVE                             R10 R6
      196 GETUPVAL                         R11 3
      197 MOVE                             R12 R5
      198 NAMECALL                         R7 R7 K41 ["getAssetGroupCreations"]
      200 CALL                             R7 5 1
      201 MOVE                             R9 R4
      202 MOVE                             R10 R3
      203 NAMECALL                         R7 R7 K39 ["andThen"]
      205 CALL                             R7 3 0
      206 JUMP                             ; [+26]
      207 NAMECALL                         R7 R0 K1 ["getState"]
      209 CALL                             R7 1 1
      210 GETTABLEKS                       R7 R7 K19 ["overrideCursor"]
      212 LOADK                            R8 K20 [""]
      213 GETTABLEKS                       R9 R7 K21 ["nextPageCursor"]
      215 JUMPIFNOT                        R9 ; [+2]
      216 GETTABLEKS                       R8 R7 K21 ["nextPageCursor"]
      218 MOVE                             R6 R8
      219 GETUPVAL                         R7 17
      220 LOADNIL                          R9
      221 MOVE                             R10 R6
      222 GETUPVAL                         R11 3
      223 NAMECALL                         R7 R7 K42 ["getAssetCreations"]
      225 CALL                             R7 4 1
      226 MOVE                             R9 R4
      227 MOVE                             R10 R3
      228 NAMECALL                         R7 R7 K39 ["andThen"]
      230 CALL                             R7 3 -1
      231 CLOSEUPVALS                      R2
      232 RETURN                           R7 -1
      233 CLOSEUPVALS                      R2
      234 RETURN                           R0 0

PROTO_8:
        0 NEWCLOSURE                       R6 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          VAL R5
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CAPTURE                          UPVAL U7
       11 CAPTURE                          UPVAL U8
       12 CAPTURE                          UPVAL U9
       13 CAPTURE                          UPVAL U10
       14 CAPTURE                          UPVAL U11
       15 CAPTURE                          UPVAL U12
       16 CAPTURE                          UPVAL U13
       17 CAPTURE                          UPVAL U14
       18 CAPTURE                          VAL R0
       19 CAPTURE                          VAL R2
       20 CAPTURE                          VAL R4
       21 CAPTURE                          VAL R3
       22 CAPTURE                          UPVAL U15
       23 RETURN                           R6 1

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
       18 GETTABLEKS                       R3 R0 K7 ["Src"]
       20 GETTABLEKS                       R3 R3 K8 ["Util"]
       22 GETIMPORT                        R4 K5 [require]
       24 GETTABLEKS                       R5 R3 K9 ["DebugFlags"]
       26 CALL                             R4 1 1
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R6 R3 K10 ["Constants"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R3 K11 ["AssetConfigUtil"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K5 [require]
       39 GETTABLEKS                       R8 R0 K7 ["Src"]
       41 GETTABLEKS                       R8 R8 K12 ["Flags"]
       43 GETTABLEKS                       R8 R8 K13 ["getEngineFeatureToolboxPassThroughAssetType"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K5 [require]
       48 GETTABLEKS                       R9 R0 K7 ["Src"]
       50 GETTABLEKS                       R9 R9 K12 ["Flags"]
       52 GETTABLEKS                       R9 R9 K14 ["getFFlagEnableUpdateAvatarItem"]
       54 CALL                             R8 1 1
       55 GETIMPORT                        R9 K5 [require]
       57 GETTABLEKS                       R10 R0 K7 ["Src"]
       59 GETTABLEKS                       R10 R10 K12 ["Flags"]
       61 GETTABLEKS                       R10 R10 K15 ["getFFlagToolboxCreatorInventoryRemoveClientSort"]
       63 CALL                             R9 1 1
       64 GETTABLEKS                       R10 R0 K7 ["Src"]
       66 GETTABLEKS                       R10 R10 K16 ["Actions"]
       68 GETIMPORT                        R11 K5 [require]
       70 GETTABLEKS                       R12 R10 K17 ["NetworkError"]
       72 CALL                             R11 1 1
       73 GETIMPORT                        R12 K5 [require]
       75 GETTABLEKS                       R13 R10 K18 ["SetOverrideAssets"]
       77 CALL                             R12 1 1
       78 GETIMPORT                        R13 K5 [require]
       80 GETTABLEKS                       R14 R10 K19 ["SetLoadingPage"]
       82 CALL                             R13 1 1
       83 GETIMPORT                        R14 K5 [require]
       85 GETTABLEKS                       R15 R10 K20 ["UpdateOverrideAssetData"]
       87 CALL                             R14 1 1
       88 GETIMPORT                        R15 K5 [require]
       90 GETTABLEKS                       R16 R10 K21 ["UpdateAssetConfigStore"]
       92 CALL                             R15 1 1
       93 GETIMPORT                        R16 K5 [require]
       95 GETTABLEKS                       R17 R10 K22 ["SetCurrentPage"]
       97 CALL                             R16 1 1
       98 GETIMPORT                        R17 K5 [require]
      100 GETTABLEKS                       R18 R10 K23 ["SetOverrideCursor"]
      102 CALL                             R17 1 1
      103 DUPCLOSURE                       R18 K24 [PROTO_0]
      104 DUPCLOSURE                       R19 K25 [PROTO_1]
      105 DUPCLOSURE                       R20 K26 [PROTO_3]
      106 DUPCLOSURE                       R21 K27 [PROTO_4]
      107 DUPCLOSURE                       R22 K28 [PROTO_8]
      108 CAPTURE                          VAL R7
      109 CAPTURE                          VAL R8
      110 CAPTURE                          VAL R6
      111 CAPTURE                          VAL R4
      112 CAPTURE                          VAL R13
      113 CAPTURE                          VAL R11
      114 CAPTURE                          VAL R19
      115 CAPTURE                          VAL R9
      116 CAPTURE                          VAL R12
      117 CAPTURE                          VAL R17
      118 CAPTURE                          VAL R2
      119 CAPTURE                          VAL R15
      120 CAPTURE                          VAL R16
      121 CAPTURE                          VAL R18
      122 CAPTURE                          VAL R14
      123 CAPTURE                          VAL R5
      124 RETURN                           R22 1
