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
      138 JUMP                             ; [+81]
      139 GETTABLEKS                       R1 R0 K12 ["responseBody"]
      141 GETUPVAL                         R2 11
      142 GETTABLEKS                       R3 R1 K28 ["data"]
      144 CALL                             R2 1 1
      145 GETUPVAL                         R4 12
      146 JUMPIFNOT                        R4 ; [+6]
      147 GETUPVAL                         R4 13
      148 CALL                             R4 0 1
      149 JUMPIFNOT                        R4 ; [+3]
      150 GETTABLEKS                       R3 R1 K29 ["nextCursor"]
      152 JUMP                             ; [+2]
      153 GETTABLEKS                       R3 R1 K21 ["nextPageCursor"]
      155 GETUPVAL                         R4 2
      156 JUMPIFNOTEQKN                    R4 K15 [1] ; [+25]
      158 GETUPVAL                         R4 1
      159 GETUPVAL                         R6 6
      160 MOVE                             R7 R2
      161 CALL                             R6 1 -1
      162 NAMECALL                         R4 R4 K20 ["dispatch"]
      164 CALL                             R4 -1 0
      165 GETUPVAL                         R4 1
      166 GETUPVAL                         R6 7
      167 DUPTABLE                         R7 K22 [{"nextPageCursor"}]
      168 SETTABLEKS                       R3 R7 K21 ["nextPageCursor"]
      170 CALL                             R6 1 -1
      171 NAMECALL                         R4 R4 K20 ["dispatch"]
      173 CALL                             R4 -1 0
      174 GETUPVAL                         R4 1
      175 GETUPVAL                         R6 10
      176 LOADN                            R7 1
      177 CALL                             R6 1 -1
      178 NAMECALL                         R4 R4 K20 ["dispatch"]
      180 CALL                             R4 -1 0
      181 JUMP                             ; [+38]
      182 GETUPVAL                         R4 1
      183 NAMECALL                         R4 R4 K7 ["getState"]
      185 CALL                             R4 1 1
      186 GETTABLEKS                       R4 R4 K30 ["overrideCursor"]
      188 JUMPIFNOTEQKNIL                  R3 ; [+2]
      190 LOADB                            R5 0 +1
      191 LOADB                            R5 1
      192 NOT                              R6 R5
      193 JUMPIFNOT                        R5 ; [+4]
      194 DUPTABLE                         R7 K22 [{"nextPageCursor"}]
      195 SETTABLEKS                       R3 R7 K21 ["nextPageCursor"]
      197 MOVE                             R4 R7
      198 GETUPVAL                         R7 1
      199 GETUPVAL                         R9 14
      200 MOVE                             R10 R2
      201 MOVE                             R11 R6
      202 CALL                             R9 2 -1
      203 NAMECALL                         R7 R7 K20 ["dispatch"]
      205 CALL                             R7 -1 0
      206 GETUPVAL                         R7 1
      207 GETUPVAL                         R9 7
      208 MOVE                             R10 R4
      209 CALL                             R9 1 -1
      210 NAMECALL                         R7 R7 K20 ["dispatch"]
      212 CALL                             R7 -1 0
      213 GETUPVAL                         R7 1
      214 GETUPVAL                         R9 10
      215 GETUPVAL                         R10 2
      216 CALL                             R9 1 -1
      217 NAMECALL                         R7 R7 K20 ["dispatch"]
      219 CALL                             R7 -1 0
      220 GETUPVAL                         R1 1
      221 GETUPVAL                         R3 15
      222 LOADN                            R4 0
      223 CALL                             R3 1 -1
      224 NAMECALL                         R1 R1 K20 ["dispatch"]
      226 CALL                             R1 -1 0
      227 RETURN                           R0 0

PROTO_7:
        0 NAMECALL                         R2 R0 K1 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R2 R2 K2 ["loadingPage"]
        5 ORK                              R1 R2 K0 [0]
        6 GETUPVAL                         R2 0
        7 CALL                             R2 0 1
        8 JUMPIFNOT                        R2 ; [+5]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K3 ["isCatalogAsset"]
       12 GETUPVAL                         R3 2
       13 CALL                             R2 1 1
       14 NOT                              R3 R2
       15 GETUPVAL                         R4 3
       16 GETTABLEKS                       R4 R4 K4 ["shouldDebugOverrideAssetLoading"]
       18 CALL                             R4 0 1
       19 JUMPIFNOT                        R4 ; [+30]
       20 GETIMPORT                        R4 K6 [print]
       22 GETIMPORT                        R5 K9 [string.format]
       24 LOADK                            R6 K10 ["GetOverrideAssetRequest: curr=%s, loading=%s, target=%s"]
       25 NAMECALL                         R8 R0 K1 ["getState"]
       27 CALL                             R8 1 1
       28 GETTABLEKS                       R8 R8 K11 ["currentPage"]
       30 FASTCALL1                        TOSTRING R8 ; [+2]
       31 GETIMPORT                        R7 K13 [tostring]
       33 CALL                             R7 1 1
       34 NAMECALL                         R9 R0 K1 ["getState"]
       36 CALL                             R9 1 1
       37 GETTABLEKS                       R9 R9 K2 ["loadingPage"]
       39 FASTCALL1                        TOSTRING R9 ; [+2]
       40 GETIMPORT                        R8 K13 [tostring]
       42 CALL                             R8 1 1
       43 GETUPVAL                         R10 4
       44 FASTCALL1                        TOSTRING R10 ; [+2]
       45 GETIMPORT                        R9 K13 [tostring]
       47 CALL                             R9 1 1
       48 CALL                             R5 4 -1
       49 CALL                             R4 -1 0
       50 GETUPVAL                         R4 4
       51 LOADN                            R5 1
       52 JUMPIFNOTLT                      R5 R4 ; [+30]
       54 NAMECALL                         R4 R0 K1 ["getState"]
       56 CALL                             R4 1 1
       57 GETTABLEKS                       R4 R4 K14 ["fetchedAll"]
       59 JUMPIFNOT                        R4 ; [+10]
       60 GETUPVAL                         R4 3
       61 GETTABLEKS                       R4 R4 K4 ["shouldDebugOverrideAssetLoading"]
       63 CALL                             R4 0 1
       64 JUMPIFNOT                        R4 ; [+4]
       65 GETIMPORT                        R4 K6 [print]
       67 LOADK                            R5 K15 ["GetOverrideAssetRequest: fetchedAll, stopping"]
       68 CALL                             R4 1 0
       69 RETURN                           R0 0
       70 GETUPVAL                         R4 4
       71 JUMPIFNOTLE                      R4 R1 ; [+11]
       73 GETUPVAL                         R4 3
       74 GETTABLEKS                       R4 R4 K4 ["shouldDebugOverrideAssetLoading"]
       76 CALL                             R4 0 1
       77 JUMPIFNOT                        R4 ; [+4]
       78 GETIMPORT                        R4 K6 [print]
       80 LOADK                            R5 K16 ["GetOverrideAssetRequest: loadingPage >= targetPage, stopping"]
       81 CALL                             R4 1 0
       82 RETURN                           R0 0
       83 GETUPVAL                         R4 3
       84 GETTABLEKS                       R4 R4 K4 ["shouldDebugOverrideAssetLoading"]
       86 CALL                             R4 0 1
       87 JUMPIFNOT                        R4 ; [+4]
       88 GETIMPORT                        R4 K6 [print]
       90 LOADK                            R5 K17 ["GetOverrideAssetRequest: continuing to run request"]
       91 CALL                             R4 1 0
       92 GETUPVAL                         R6 5
       93 GETUPVAL                         R7 4
       94 CALL                             R6 1 -1
       95 NAMECALL                         R4 R0 K18 ["dispatch"]
       97 CALL                             R4 -1 0
       98 NEWCLOSURE                       R4 P0
       99 CAPTURE                          VAL R0
      100 CAPTURE                          UPVAL U6
      101 CAPTURE                          UPVAL U5
      102 NEWCLOSURE                       R5 P1
      103 CAPTURE                          UPVAL U3
      104 CAPTURE                          VAL R0
      105 CAPTURE                          UPVAL U4
      106 CAPTURE                          VAL R3
      107 CAPTURE                          UPVAL U7
      108 CAPTURE                          UPVAL U8
      109 CAPTURE                          UPVAL U9
      110 CAPTURE                          UPVAL U10
      111 CAPTURE                          UPVAL U11
      112 CAPTURE                          UPVAL U12
      113 CAPTURE                          UPVAL U13
      114 CAPTURE                          UPVAL U14
      115 CAPTURE                          VAL R2
      116 CAPTURE                          UPVAL U15
      117 CAPTURE                          UPVAL U16
      118 CAPTURE                          UPVAL U5
      119 JUMPIFNOT                        R3 ; [+48]
      120 NAMECALL                         R7 R0 K1 ["getState"]
      122 CALL                             R7 1 1
      123 GETTABLEKS                       R7 R7 K19 ["overrideCursor"]
      125 LOADK                            R6 K20 [""]
      126 GETTABLEKS                       R8 R7 K21 ["nextPageCursor"]
      128 JUMPIFNOT                        R8 ; [+2]
      129 GETTABLEKS                       R6 R7 K21 ["nextPageCursor"]
      131 GETUPVAL                         R7 17
      132 DUPTABLE                         R9 K31 [{["query"] = "", ["assetType"], ["scopeParams"], ["maxPageSize"], ["pageToken"], ["includeFolders"] = False, ["sources"] = "created"}]
      133 GETUPVAL                         R11 18
      134 JUMPIFNOTEQKS                    R11 K32 ["AnimationGraph"] ; [+3]
      136 LOADK                            R10 K32 ["AnimationGraph"]
      137 JUMP                             ; [+3]
      138 GETUPVAL                         R10 2
      139 GETTABLEKS                       R10 R10 K33 ["Name"]
      141 SETTABLEKS                       R10 R9 K23 ["assetType"]
      143 DUPTABLE                         R10 K36 [{"Id", "Type"}]
      144 GETUPVAL                         R11 19
      145 SETTABLEKS                       R11 R10 K34 ["Id"]
      147 GETUPVAL                         R11 20
      148 SETTABLEKS                       R11 R10 K35 ["Type"]
      150 SETTABLEKS                       R10 R9 K24 ["scopeParams"]
      152 GETUPVAL                         R10 21
      153 GETTABLEKS                       R10 R10 K37 ["CREATOR_INVENTORY_MAX_PAGE_SIZE"]
      155 SETTABLEKS                       R10 R9 K25 ["maxPageSize"]
      157 SETTABLEKS                       R6 R9 K26 ["pageToken"]
      159 NAMECALL                         R7 R7 K38 ["requestCreatorInventoryAssets"]
      161 CALL                             R7 2 1
      162 MOVE                             R9 R5
      163 MOVE                             R10 R4
      164 NAMECALL                         R7 R7 K39 ["andThen"]
      166 CALL                             R7 3 -1
      167 RETURN                           R7 -1
      168 LOADNIL                          R6
      169 GETUPVAL                         R7 20
      170 JUMPIFNOTEQKS                    R7 K40 ["Group"] ; [+2]
      172 GETUPVAL                         R6 19
      173 GETUPVAL                         R7 20
      174 JUMPIFNOTEQKS                    R7 K40 ["Group"] ; [+26]
      176 NAMECALL                         R8 R0 K1 ["getState"]
      178 CALL                             R8 1 1
      179 GETTABLEKS                       R8 R8 K19 ["overrideCursor"]
      181 LOADK                            R7 K20 [""]
      182 GETTABLEKS                       R9 R8 K21 ["nextPageCursor"]
      184 JUMPIFNOT                        R9 ; [+2]
      185 GETTABLEKS                       R7 R8 K21 ["nextPageCursor"]
      187 GETUPVAL                         R8 17
      188 LOADNIL                          R10
      189 MOVE                             R11 R7
      190 GETUPVAL                         R12 2
      191 MOVE                             R13 R6
      192 NAMECALL                         R8 R8 K41 ["getAssetGroupCreations"]
      194 CALL                             R8 5 1
      195 MOVE                             R10 R5
      196 MOVE                             R11 R4
      197 NAMECALL                         R8 R8 K39 ["andThen"]
      199 CALL                             R8 3 0
      200 RETURN                           R0 0
      201 NAMECALL                         R8 R0 K1 ["getState"]
      203 CALL                             R8 1 1
      204 GETTABLEKS                       R8 R8 K19 ["overrideCursor"]
      206 LOADK                            R7 K20 [""]
      207 GETTABLEKS                       R9 R8 K21 ["nextPageCursor"]
      209 JUMPIFNOT                        R9 ; [+2]
      210 GETTABLEKS                       R7 R8 K21 ["nextPageCursor"]
      212 GETUPVAL                         R8 17
      213 LOADNIL                          R10
      214 MOVE                             R11 R7
      215 GETUPVAL                         R12 2
      216 NAMECALL                         R8 R8 K42 ["getAssetCreations"]
      218 CALL                             R8 4 1
      219 MOVE                             R10 R5
      220 MOVE                             R11 R4
      221 NAMECALL                         R8 R8 K39 ["andThen"]
      223 CALL                             R8 3 -1
      224 RETURN                           R8 -1
      225 RETURN                           R0 0

PROTO_8:
        0 NEWCLOSURE                       R6 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          VAL R5
        6 CAPTURE                          UPVAL U3
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
       43 GETTABLEKS                       R8 R8 K13 ["getFFlagEnableUpdateAvatarItem"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K5 [require]
       48 GETTABLEKS                       R9 R0 K7 ["Src"]
       50 GETTABLEKS                       R9 R9 K12 ["Flags"]
       52 GETTABLEKS                       R9 R9 K14 ["getFFlagAvatarVersioningPagination"]
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
      109 CAPTURE                          VAL R6
      110 CAPTURE                          VAL R4
      111 CAPTURE                          VAL R13
      112 CAPTURE                          VAL R11
      113 CAPTURE                          VAL R19
      114 CAPTURE                          VAL R9
      115 CAPTURE                          VAL R12
      116 CAPTURE                          VAL R17
      117 CAPTURE                          VAL R2
      118 CAPTURE                          VAL R15
      119 CAPTURE                          VAL R16
      120 CAPTURE                          VAL R18
      121 CAPTURE                          VAL R8
      122 CAPTURE                          VAL R14
      123 CAPTURE                          VAL R5
      124 RETURN                           R22 1
