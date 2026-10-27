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
        8 GETUPVAL                         R3 1
        9 CALL                             R3 0 1
       10 JUMPIFNOT                        R3 ; [+5]
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K3 ["isCatalogAsset"]
       14 GETUPVAL                         R4 3
       15 CALL                             R3 1 1
       16 JUMPIFNOT                        R3 ; [+1]
       17 LOADB                            R2 0
       18 GETUPVAL                         R4 4
       19 GETTABLEKS                       R4 R4 K4 ["shouldDebugOverrideAssetLoading"]
       21 CALL                             R4 0 1
       22 JUMPIFNOT                        R4 ; [+30]
       23 GETIMPORT                        R4 K6 [print]
       25 GETIMPORT                        R5 K9 [string.format]
       27 LOADK                            R6 K10 ["GetOverrideAssetRequest: curr=%s, loading=%s, target=%s"]
       28 NAMECALL                         R8 R0 K1 ["getState"]
       30 CALL                             R8 1 1
       31 GETTABLEKS                       R8 R8 K11 ["currentPage"]
       33 FASTCALL1                        TOSTRING R8 ; [+2]
       34 GETIMPORT                        R7 K13 [tostring]
       36 CALL                             R7 1 1
       37 NAMECALL                         R9 R0 K1 ["getState"]
       39 CALL                             R9 1 1
       40 GETTABLEKS                       R9 R9 K2 ["loadingPage"]
       42 FASTCALL1                        TOSTRING R9 ; [+2]
       43 GETIMPORT                        R8 K13 [tostring]
       45 CALL                             R8 1 1
       46 GETUPVAL                         R10 5
       47 FASTCALL1                        TOSTRING R10 ; [+2]
       48 GETIMPORT                        R9 K13 [tostring]
       50 CALL                             R9 1 1
       51 CALL                             R5 4 -1
       52 CALL                             R4 -1 0
       53 GETUPVAL                         R4 5
       54 LOADN                            R5 1
       55 JUMPIFNOTLT                      R5 R4 ; [+32]
       57 NAMECALL                         R4 R0 K1 ["getState"]
       59 CALL                             R4 1 1
       60 GETTABLEKS                       R4 R4 K14 ["fetchedAll"]
       62 JUMPIFNOT                        R4 ; [+11]
       63 GETUPVAL                         R4 4
       64 GETTABLEKS                       R4 R4 K4 ["shouldDebugOverrideAssetLoading"]
       66 CALL                             R4 0 1
       67 JUMPIFNOT                        R4 ; [+4]
       68 GETIMPORT                        R4 K6 [print]
       70 LOADK                            R5 K15 ["GetOverrideAssetRequest: fetchedAll, stopping"]
       71 CALL                             R4 1 0
       72 CLOSEUPVALS                      R2
       73 RETURN                           R0 0
       74 GETUPVAL                         R4 5
       75 JUMPIFNOTLE                      R4 R1 ; [+12]
       77 GETUPVAL                         R4 4
       78 GETTABLEKS                       R4 R4 K4 ["shouldDebugOverrideAssetLoading"]
       80 CALL                             R4 0 1
       81 JUMPIFNOT                        R4 ; [+4]
       82 GETIMPORT                        R4 K6 [print]
       84 LOADK                            R5 K16 ["GetOverrideAssetRequest: loadingPage >= targetPage, stopping"]
       85 CALL                             R4 1 0
       86 CLOSEUPVALS                      R2
       87 RETURN                           R0 0
       88 GETUPVAL                         R4 4
       89 GETTABLEKS                       R4 R4 K4 ["shouldDebugOverrideAssetLoading"]
       91 CALL                             R4 0 1
       92 JUMPIFNOT                        R4 ; [+4]
       93 GETIMPORT                        R4 K6 [print]
       95 LOADK                            R5 K17 ["GetOverrideAssetRequest: continuing to run request"]
       96 CALL                             R4 1 0
       97 GETUPVAL                         R6 6
       98 GETUPVAL                         R7 5
       99 CALL                             R6 1 -1
      100 NAMECALL                         R4 R0 K18 ["dispatch"]
      102 CALL                             R4 -1 0
      103 NEWCLOSURE                       R4 P0
      104 CAPTURE                          VAL R0
      105 CAPTURE                          UPVAL U7
      106 CAPTURE                          UPVAL U6
      107 NEWCLOSURE                       R5 P1
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
      120 CAPTURE                          VAL R3
      121 CAPTURE                          UPVAL U16
      122 CAPTURE                          UPVAL U17
      123 CAPTURE                          UPVAL U6
      124 JUMPIFNOT                        R2 ; [+50]
      125 NAMECALL                         R7 R0 K1 ["getState"]
      127 CALL                             R7 1 1
      128 GETTABLEKS                       R7 R7 K19 ["overrideCursor"]
      130 LOADK                            R8 K20 [""]
      131 GETTABLEKS                       R9 R7 K21 ["nextPageCursor"]
      133 JUMPIFNOT                        R9 ; [+2]
      134 GETTABLEKS                       R8 R7 K21 ["nextPageCursor"]
      136 MOVE                             R6 R8
      137 GETUPVAL                         R7 18
      138 DUPTABLE                         R9 K31 [{["query"] = "", ["assetType"], ["scopeParams"], ["maxPageSize"], ["pageToken"], ["includeFolders"] = False, ["sources"] = "created"}]
      139 GETUPVAL                         R11 19
      140 JUMPIFNOTEQKS                    R11 K32 ["AnimationGraph"] ; [+3]
      142 LOADK                            R10 K32 ["AnimationGraph"]
      143 JUMP                             ; [+3]
      144 GETUPVAL                         R10 3
      145 GETTABLEKS                       R10 R10 K33 ["Name"]
      147 SETTABLEKS                       R10 R9 K23 ["assetType"]
      149 DUPTABLE                         R10 K36 [{"Id", "Type"}]
      150 GETUPVAL                         R11 20
      151 SETTABLEKS                       R11 R10 K34 ["Id"]
      153 GETUPVAL                         R11 21
      154 SETTABLEKS                       R11 R10 K35 ["Type"]
      156 SETTABLEKS                       R10 R9 K24 ["scopeParams"]
      158 GETUPVAL                         R10 22
      159 GETTABLEKS                       R10 R10 K37 ["CREATOR_INVENTORY_MAX_PAGE_SIZE"]
      161 SETTABLEKS                       R10 R9 K25 ["maxPageSize"]
      163 SETTABLEKS                       R6 R9 K26 ["pageToken"]
      165 NAMECALL                         R7 R7 K38 ["requestCreatorInventoryAssets"]
      167 CALL                             R7 2 1
      168 MOVE                             R9 R5
      169 MOVE                             R10 R4
      170 NAMECALL                         R7 R7 K39 ["andThen"]
      172 CALL                             R7 3 -1
      173 CLOSEUPVALS                      R2
      174 RETURN                           R7 -1
      175 LOADNIL                          R6
      176 GETUPVAL                         R7 21
      177 JUMPIFNOTEQKS                    R7 K40 ["Group"] ; [+2]
      179 GETUPVAL                         R6 20
      180 GETUPVAL                         R7 21
      181 JUMPIFNOTEQKS                    R7 K40 ["Group"] ; [+27]
      183 NAMECALL                         R8 R0 K1 ["getState"]
      185 CALL                             R8 1 1
      186 GETTABLEKS                       R8 R8 K19 ["overrideCursor"]
      188 LOADK                            R9 K20 [""]
      189 GETTABLEKS                       R10 R8 K21 ["nextPageCursor"]
      191 JUMPIFNOT                        R10 ; [+2]
      192 GETTABLEKS                       R9 R8 K21 ["nextPageCursor"]
      194 MOVE                             R7 R9
      195 GETUPVAL                         R8 18
      196 LOADNIL                          R10
      197 MOVE                             R11 R7
      198 GETUPVAL                         R12 3
      199 MOVE                             R13 R6
      200 NAMECALL                         R8 R8 K41 ["getAssetGroupCreations"]
      202 CALL                             R8 5 1
      203 MOVE                             R10 R5
      204 MOVE                             R11 R4
      205 NAMECALL                         R8 R8 K39 ["andThen"]
      207 CALL                             R8 3 0
      208 JUMP                             ; [+26]
      209 NAMECALL                         R8 R0 K1 ["getState"]
      211 CALL                             R8 1 1
      212 GETTABLEKS                       R8 R8 K19 ["overrideCursor"]
      214 LOADK                            R9 K20 [""]
      215 GETTABLEKS                       R10 R8 K21 ["nextPageCursor"]
      217 JUMPIFNOT                        R10 ; [+2]
      218 GETTABLEKS                       R9 R8 K21 ["nextPageCursor"]
      220 MOVE                             R7 R9
      221 GETUPVAL                         R8 18
      222 LOADNIL                          R10
      223 MOVE                             R11 R7
      224 GETUPVAL                         R12 3
      225 NAMECALL                         R8 R8 K42 ["getAssetCreations"]
      227 CALL                             R8 4 1
      228 MOVE                             R10 R5
      229 MOVE                             R11 R4
      230 NAMECALL                         R8 R8 K39 ["andThen"]
      232 CALL                             R8 3 -1
      233 CLOSEUPVALS                      R2
      234 RETURN                           R8 -1
      235 CLOSEUPVALS                      R2
      236 RETURN                           R0 0

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
       18 CAPTURE                          UPVAL U15
       19 CAPTURE                          VAL R0
       20 CAPTURE                          VAL R2
       21 CAPTURE                          VAL R4
       22 CAPTURE                          VAL R3
       23 CAPTURE                          UPVAL U16
       24 RETURN                           R6 1

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
       61 GETTABLEKS                       R10 R10 K15 ["getFFlagAvatarVersioningPagination"]
       63 CALL                             R9 1 1
       64 GETIMPORT                        R10 K5 [require]
       66 GETTABLEKS                       R11 R0 K7 ["Src"]
       68 GETTABLEKS                       R11 R11 K12 ["Flags"]
       70 GETTABLEKS                       R11 R11 K16 ["getFFlagToolboxCreatorInventoryRemoveClientSort"]
       72 CALL                             R10 1 1
       73 GETTABLEKS                       R11 R0 K7 ["Src"]
       75 GETTABLEKS                       R11 R11 K17 ["Actions"]
       77 GETIMPORT                        R12 K5 [require]
       79 GETTABLEKS                       R13 R11 K18 ["NetworkError"]
       81 CALL                             R12 1 1
       82 GETIMPORT                        R13 K5 [require]
       84 GETTABLEKS                       R14 R11 K19 ["SetOverrideAssets"]
       86 CALL                             R13 1 1
       87 GETIMPORT                        R14 K5 [require]
       89 GETTABLEKS                       R15 R11 K20 ["SetLoadingPage"]
       91 CALL                             R14 1 1
       92 GETIMPORT                        R15 K5 [require]
       94 GETTABLEKS                       R16 R11 K21 ["UpdateOverrideAssetData"]
       96 CALL                             R15 1 1
       97 GETIMPORT                        R16 K5 [require]
       99 GETTABLEKS                       R17 R11 K22 ["UpdateAssetConfigStore"]
      101 CALL                             R16 1 1
      102 GETIMPORT                        R17 K5 [require]
      104 GETTABLEKS                       R18 R11 K23 ["SetCurrentPage"]
      106 CALL                             R17 1 1
      107 GETIMPORT                        R18 K5 [require]
      109 GETTABLEKS                       R19 R11 K24 ["SetOverrideCursor"]
      111 CALL                             R18 1 1
      112 DUPCLOSURE                       R19 K25 [PROTO_0]
      113 DUPCLOSURE                       R20 K26 [PROTO_1]
      114 DUPCLOSURE                       R21 K27 [PROTO_3]
      115 DUPCLOSURE                       R22 K28 [PROTO_4]
      116 DUPCLOSURE                       R23 K29 [PROTO_8]
      117 CAPTURE                          VAL R7
      118 CAPTURE                          VAL R8
      119 CAPTURE                          VAL R6
      120 CAPTURE                          VAL R4
      121 CAPTURE                          VAL R14
      122 CAPTURE                          VAL R12
      123 CAPTURE                          VAL R20
      124 CAPTURE                          VAL R10
      125 CAPTURE                          VAL R13
      126 CAPTURE                          VAL R18
      127 CAPTURE                          VAL R2
      128 CAPTURE                          VAL R16
      129 CAPTURE                          VAL R17
      130 CAPTURE                          VAL R19
      131 CAPTURE                          VAL R9
      132 CAPTURE                          VAL R15
      133 CAPTURE                          VAL R5
      134 RETURN                           R23 1
