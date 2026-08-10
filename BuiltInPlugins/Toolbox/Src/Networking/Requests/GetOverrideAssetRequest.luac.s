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
       38 JUMPIFNOT                        R1 ; [+94]
       39 GETTABLEKS                       R1 R0 K12 ["responseBody"]
       41 GETUPVAL                         R2 4
       42 GETTABLEKS                       R3 R1 K13 ["items"]
       44 CALL                             R2 1 1
       45 GETTABLEKS                       R3 R1 K14 ["nextPageToken"]
       47 GETUPVAL                         R4 2
       48 JUMPIFNOTEQKN                    R4 K15 [1] ; [+23]
       50 GETIMPORT                        R4 K18 [table.sort]
       52 MOVE                             R5 R2
       53 DUPCLOSURE                       R6 K19 [PROTO_2]
       54 CALL                             R4 2 0
       55 GETUPVAL                         R4 1
       56 GETUPVAL                         R6 5
       57 MOVE                             R7 R2
       58 CALL                             R6 1 -1
       59 NAMECALL                         R4 R4 K20 ["dispatch"]
       61 CALL                             R4 -1 0
       62 GETUPVAL                         R4 1
       63 GETUPVAL                         R6 6
       64 DUPTABLE                         R7 K22 [{"nextPageCursor"}]
       65 SETTABLEKS                       R3 R7 K21 ["nextPageCursor"]
       67 CALL                             R6 1 -1
       68 NAMECALL                         R4 R4 K20 ["dispatch"]
       70 CALL                             R4 -1 0
       71 JUMP                             ; [+53]
       72 GETUPVAL                         R4 1
       73 NAMECALL                         R4 R4 K7 ["getState"]
       75 CALL                             R4 1 1
       76 GETTABLEKS                       R4 R4 K23 ["resultsArray"]
       78 JUMPIF                           R4 ; [+2]
       79 NEWTABLE                         R4 0 0
       81 GETUPVAL                         R5 7
       82 GETTABLEKS                       R5 R5 K24 ["List"]
       84 GETTABLEKS                       R5 R5 K25 ["join"]
       86 MOVE                             R6 R4
       87 MOVE                             R7 R2
       88 CALL                             R5 2 1
       89 GETIMPORT                        R6 K18 [table.sort]
       91 MOVE                             R7 R5
       92 DUPCLOSURE                       R8 K19 [PROTO_2]
       93 CALL                             R6 2 0
       94 JUMPIFNOTEQKNIL                  R3 ; [+2]
       96 LOADB                            R6 0 +1
       97 LOADB                            R6 1
       98 NOT                              R7 R6
       99 GETUPVAL                         R8 1
      100 GETUPVAL                         R10 5
      101 MOVE                             R11 R5
      102 CALL                             R10 1 -1
      103 NAMECALL                         R8 R8 K20 ["dispatch"]
      105 CALL                             R8 -1 0
      106 GETUPVAL                         R8 1
      107 GETUPVAL                         R10 8
      108 DUPTABLE                         R11 K27 [{"fetchedAll"}]
      109 SETTABLEKS                       R7 R11 K26 ["fetchedAll"]
      111 CALL                             R10 1 -1
      112 NAMECALL                         R8 R8 K20 ["dispatch"]
      114 CALL                             R8 -1 0
      115 JUMPIFNOT                        R6 ; [+9]
      116 GETUPVAL                         R8 1
      117 GETUPVAL                         R10 6
      118 DUPTABLE                         R11 K22 [{"nextPageCursor"}]
      119 SETTABLEKS                       R3 R11 K21 ["nextPageCursor"]
      121 CALL                             R10 1 -1
      122 NAMECALL                         R8 R8 K20 ["dispatch"]
      124 CALL                             R8 -1 0
      125 GETUPVAL                         R4 1
      126 GETUPVAL                         R6 9
      127 GETUPVAL                         R7 2
      128 CALL                             R6 1 -1
      129 NAMECALL                         R4 R4 K20 ["dispatch"]
      131 CALL                             R4 -1 0
      132 JUMP                             ; [+73]
      133 GETTABLEKS                       R1 R0 K12 ["responseBody"]
      135 GETUPVAL                         R2 10
      136 GETTABLEKS                       R3 R1 K28 ["data"]
      138 CALL                             R2 1 1
      139 GETTABLEKS                       R3 R1 K21 ["nextPageCursor"]
      141 GETUPVAL                         R4 2
      142 JUMPIFNOTEQKN                    R4 K15 [1] ; [+25]
      144 GETUPVAL                         R4 1
      145 GETUPVAL                         R6 5
      146 MOVE                             R7 R2
      147 CALL                             R6 1 -1
      148 NAMECALL                         R4 R4 K20 ["dispatch"]
      150 CALL                             R4 -1 0
      151 GETUPVAL                         R4 1
      152 GETUPVAL                         R6 6
      153 DUPTABLE                         R7 K22 [{"nextPageCursor"}]
      154 SETTABLEKS                       R3 R7 K21 ["nextPageCursor"]
      156 CALL                             R6 1 -1
      157 NAMECALL                         R4 R4 K20 ["dispatch"]
      159 CALL                             R4 -1 0
      160 GETUPVAL                         R4 1
      161 GETUPVAL                         R6 9
      162 LOADN                            R7 1
      163 CALL                             R6 1 -1
      164 NAMECALL                         R4 R4 K20 ["dispatch"]
      166 CALL                             R4 -1 0
      167 JUMP                             ; [+38]
      168 GETUPVAL                         R4 1
      169 NAMECALL                         R4 R4 K7 ["getState"]
      171 CALL                             R4 1 1
      172 GETTABLEKS                       R4 R4 K29 ["overrideCursor"]
      174 JUMPIFNOTEQKNIL                  R3 ; [+2]
      176 LOADB                            R5 0 +1
      177 LOADB                            R5 1
      178 NOT                              R6 R5
      179 JUMPIFNOT                        R5 ; [+4]
      180 DUPTABLE                         R7 K22 [{"nextPageCursor"}]
      181 SETTABLEKS                       R3 R7 K21 ["nextPageCursor"]
      183 MOVE                             R4 R7
      184 GETUPVAL                         R7 1
      185 GETUPVAL                         R9 11
      186 MOVE                             R10 R2
      187 MOVE                             R11 R6
      188 CALL                             R9 2 -1
      189 NAMECALL                         R7 R7 K20 ["dispatch"]
      191 CALL                             R7 -1 0
      192 GETUPVAL                         R7 1
      193 GETUPVAL                         R9 6
      194 MOVE                             R10 R4
      195 CALL                             R9 1 -1
      196 NAMECALL                         R7 R7 K20 ["dispatch"]
      198 CALL                             R7 -1 0
      199 GETUPVAL                         R7 1
      200 GETUPVAL                         R9 9
      201 GETUPVAL                         R10 2
      202 CALL                             R9 1 -1
      203 NAMECALL                         R7 R7 K20 ["dispatch"]
      205 CALL                             R7 -1 0
      206 GETUPVAL                         R1 1
      207 GETUPVAL                         R3 12
      208 LOADN                            R4 0
      209 CALL                             R3 1 -1
      210 NAMECALL                         R1 R1 K20 ["dispatch"]
      212 CALL                             R1 -1 0
      213 RETURN                           R0 0

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
      120 CAPTURE                          UPVAL U6
      121 JUMPIFNOT                        R2 ; [+50]
      122 NAMECALL                         R6 R0 K1 ["getState"]
      124 CALL                             R6 1 1
      125 GETTABLEKS                       R6 R6 K19 ["overrideCursor"]
      127 LOADK                            R7 K20 [""]
      128 GETTABLEKS                       R8 R6 K21 ["nextPageCursor"]
      130 JUMPIFNOT                        R8 ; [+2]
      131 GETTABLEKS                       R7 R6 K21 ["nextPageCursor"]
      133 MOVE                             R5 R7
      134 GETUPVAL                         R6 16
      135 DUPTABLE                         R8 K31 [{["query"] = "", ["assetType"], ["scopeParams"], ["maxPageSize"], ["pageToken"], ["includeFolders"] = False, ["sources"] = "created"}]
      136 GETUPVAL                         R10 17
      137 JUMPIFNOTEQKS                    R10 K32 ["AnimationGraph"] ; [+3]
      139 LOADK                            R9 K32 ["AnimationGraph"]
      140 JUMP                             ; [+3]
      141 GETUPVAL                         R9 3
      142 GETTABLEKS                       R9 R9 K33 ["Name"]
      144 SETTABLEKS                       R9 R8 K23 ["assetType"]
      146 DUPTABLE                         R9 K36 [{"Id", "Type"}]
      147 GETUPVAL                         R10 18
      148 SETTABLEKS                       R10 R9 K34 ["Id"]
      150 GETUPVAL                         R10 19
      151 SETTABLEKS                       R10 R9 K35 ["Type"]
      153 SETTABLEKS                       R9 R8 K24 ["scopeParams"]
      155 GETUPVAL                         R9 20
      156 GETTABLEKS                       R9 R9 K37 ["CREATOR_INVENTORY_MAX_PAGE_SIZE"]
      158 SETTABLEKS                       R9 R8 K25 ["maxPageSize"]
      160 SETTABLEKS                       R5 R8 K26 ["pageToken"]
      162 NAMECALL                         R6 R6 K38 ["requestCreatorInventoryAssets"]
      164 CALL                             R6 2 1
      165 MOVE                             R8 R4
      166 MOVE                             R9 R3
      167 NAMECALL                         R6 R6 K39 ["andThen"]
      169 CALL                             R6 3 -1
      170 CLOSEUPVALS                      R2
      171 RETURN                           R6 -1
      172 LOADNIL                          R5
      173 GETUPVAL                         R6 19
      174 JUMPIFNOTEQKS                    R6 K40 ["Group"] ; [+2]
      176 GETUPVAL                         R5 18
      177 GETUPVAL                         R6 19
      178 JUMPIFNOTEQKS                    R6 K40 ["Group"] ; [+27]
      180 NAMECALL                         R7 R0 K1 ["getState"]
      182 CALL                             R7 1 1
      183 GETTABLEKS                       R7 R7 K19 ["overrideCursor"]
      185 LOADK                            R8 K20 [""]
      186 GETTABLEKS                       R9 R7 K21 ["nextPageCursor"]
      188 JUMPIFNOT                        R9 ; [+2]
      189 GETTABLEKS                       R8 R7 K21 ["nextPageCursor"]
      191 MOVE                             R6 R8
      192 GETUPVAL                         R7 16
      193 LOADNIL                          R9
      194 MOVE                             R10 R6
      195 GETUPVAL                         R11 3
      196 MOVE                             R12 R5
      197 NAMECALL                         R7 R7 K41 ["getAssetGroupCreations"]
      199 CALL                             R7 5 1
      200 MOVE                             R9 R4
      201 MOVE                             R10 R3
      202 NAMECALL                         R7 R7 K39 ["andThen"]
      204 CALL                             R7 3 0
      205 JUMP                             ; [+26]
      206 NAMECALL                         R7 R0 K1 ["getState"]
      208 CALL                             R7 1 1
      209 GETTABLEKS                       R7 R7 K19 ["overrideCursor"]
      211 LOADK                            R8 K20 [""]
      212 GETTABLEKS                       R9 R7 K21 ["nextPageCursor"]
      214 JUMPIFNOT                        R9 ; [+2]
      215 GETTABLEKS                       R8 R7 K21 ["nextPageCursor"]
      217 MOVE                             R6 R8
      218 GETUPVAL                         R7 16
      219 LOADNIL                          R9
      220 MOVE                             R10 R6
      221 GETUPVAL                         R11 3
      222 NAMECALL                         R7 R7 K42 ["getAssetCreations"]
      224 CALL                             R7 4 1
      225 MOVE                             R9 R4
      226 MOVE                             R10 R3
      227 NAMECALL                         R7 R7 K39 ["andThen"]
      229 CALL                             R7 3 -1
      230 CLOSEUPVALS                      R2
      231 RETURN                           R7 -1
      232 CLOSEUPVALS                      R2
      233 RETURN                           R0 0

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
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R2
       19 CAPTURE                          VAL R4
       20 CAPTURE                          VAL R3
       21 CAPTURE                          UPVAL U14
       22 RETURN                           R6 1

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
       55 GETTABLEKS                       R9 R0 K7 ["Src"]
       57 GETTABLEKS                       R9 R9 K15 ["Actions"]
       59 GETIMPORT                        R10 K5 [require]
       61 GETTABLEKS                       R11 R9 K16 ["NetworkError"]
       63 CALL                             R10 1 1
       64 GETIMPORT                        R11 K5 [require]
       66 GETTABLEKS                       R12 R9 K17 ["SetOverrideAssets"]
       68 CALL                             R11 1 1
       69 GETIMPORT                        R12 K5 [require]
       71 GETTABLEKS                       R13 R9 K18 ["SetLoadingPage"]
       73 CALL                             R12 1 1
       74 GETIMPORT                        R13 K5 [require]
       76 GETTABLEKS                       R14 R9 K19 ["UpdateOverrideAssetData"]
       78 CALL                             R13 1 1
       79 GETIMPORT                        R14 K5 [require]
       81 GETTABLEKS                       R15 R9 K20 ["UpdateAssetConfigStore"]
       83 CALL                             R14 1 1
       84 GETIMPORT                        R15 K5 [require]
       86 GETTABLEKS                       R16 R9 K21 ["SetCurrentPage"]
       88 CALL                             R15 1 1
       89 GETIMPORT                        R16 K5 [require]
       91 GETTABLEKS                       R17 R9 K22 ["SetOverrideCursor"]
       93 CALL                             R16 1 1
       94 DUPCLOSURE                       R17 K23 [PROTO_0]
       95 DUPCLOSURE                       R18 K24 [PROTO_1]
       96 DUPCLOSURE                       R19 K25 [PROTO_3]
       97 DUPCLOSURE                       R20 K26 [PROTO_4]
       98 DUPCLOSURE                       R21 K27 [PROTO_8]
       99 CAPTURE                          VAL R7
      100 CAPTURE                          VAL R8
      101 CAPTURE                          VAL R6
      102 CAPTURE                          VAL R4
      103 CAPTURE                          VAL R12
      104 CAPTURE                          VAL R10
      105 CAPTURE                          VAL R18
      106 CAPTURE                          VAL R11
      107 CAPTURE                          VAL R16
      108 CAPTURE                          VAL R2
      109 CAPTURE                          VAL R14
      110 CAPTURE                          VAL R15
      111 CAPTURE                          VAL R17
      112 CAPTURE                          VAL R13
      113 CAPTURE                          VAL R5
      114 RETURN                           R21 1
