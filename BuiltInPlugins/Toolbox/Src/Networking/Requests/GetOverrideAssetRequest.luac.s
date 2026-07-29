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
       38 CALL                             R1 0 1
       39 JUMPIFNOT                        R1 ; [+94]
       40 GETTABLEKS                       R1 R0 K12 ["responseBody"]
       42 GETUPVAL                         R2 4
       43 GETTABLEKS                       R3 R1 K13 ["items"]
       45 CALL                             R2 1 1
       46 GETTABLEKS                       R3 R1 K14 ["nextPageToken"]
       48 GETUPVAL                         R4 2
       49 JUMPIFNOTEQKN                    R4 K15 [1] ; [+23]
       51 GETIMPORT                        R4 K18 [table.sort]
       53 MOVE                             R5 R2
       54 DUPCLOSURE                       R6 K19 [PROTO_2]
       55 CALL                             R4 2 0
       56 GETUPVAL                         R4 1
       57 GETUPVAL                         R6 5
       58 MOVE                             R7 R2
       59 CALL                             R6 1 -1
       60 NAMECALL                         R4 R4 K20 ["dispatch"]
       62 CALL                             R4 -1 0
       63 GETUPVAL                         R4 1
       64 GETUPVAL                         R6 6
       65 DUPTABLE                         R7 K22 [{"nextPageCursor"}]
       66 SETTABLEKS                       R3 R7 K21 ["nextPageCursor"]
       68 CALL                             R6 1 -1
       69 NAMECALL                         R4 R4 K20 ["dispatch"]
       71 CALL                             R4 -1 0
       72 JUMP                             ; [+53]
       73 GETUPVAL                         R4 1
       74 NAMECALL                         R4 R4 K7 ["getState"]
       76 CALL                             R4 1 1
       77 GETTABLEKS                       R4 R4 K23 ["resultsArray"]
       79 JUMPIF                           R4 ; [+2]
       80 NEWTABLE                         R4 0 0
       82 GETUPVAL                         R5 7
       83 GETTABLEKS                       R5 R5 K24 ["List"]
       85 GETTABLEKS                       R5 R5 K25 ["join"]
       87 MOVE                             R6 R4
       88 MOVE                             R7 R2
       89 CALL                             R5 2 1
       90 GETIMPORT                        R6 K18 [table.sort]
       92 MOVE                             R7 R5
       93 DUPCLOSURE                       R8 K19 [PROTO_2]
       94 CALL                             R6 2 0
       95 JUMPIFNOTEQKNIL                  R3 ; [+2]
       97 LOADB                            R6 0 +1
       98 LOADB                            R6 1
       99 NOT                              R7 R6
      100 GETUPVAL                         R8 1
      101 GETUPVAL                         R10 5
      102 MOVE                             R11 R5
      103 CALL                             R10 1 -1
      104 NAMECALL                         R8 R8 K20 ["dispatch"]
      106 CALL                             R8 -1 0
      107 GETUPVAL                         R8 1
      108 GETUPVAL                         R10 8
      109 DUPTABLE                         R11 K27 [{"fetchedAll"}]
      110 SETTABLEKS                       R7 R11 K26 ["fetchedAll"]
      112 CALL                             R10 1 -1
      113 NAMECALL                         R8 R8 K20 ["dispatch"]
      115 CALL                             R8 -1 0
      116 JUMPIFNOT                        R6 ; [+9]
      117 GETUPVAL                         R8 1
      118 GETUPVAL                         R10 6
      119 DUPTABLE                         R11 K22 [{"nextPageCursor"}]
      120 SETTABLEKS                       R3 R11 K21 ["nextPageCursor"]
      122 CALL                             R10 1 -1
      123 NAMECALL                         R8 R8 K20 ["dispatch"]
      125 CALL                             R8 -1 0
      126 GETUPVAL                         R4 1
      127 GETUPVAL                         R6 9
      128 GETUPVAL                         R7 2
      129 CALL                             R6 1 -1
      130 NAMECALL                         R4 R4 K20 ["dispatch"]
      132 CALL                             R4 -1 0
      133 JUMP                             ; [+73]
      134 GETTABLEKS                       R1 R0 K12 ["responseBody"]
      136 GETUPVAL                         R2 10
      137 GETTABLEKS                       R3 R1 K28 ["data"]
      139 CALL                             R2 1 1
      140 GETTABLEKS                       R3 R1 K21 ["nextPageCursor"]
      142 GETUPVAL                         R4 2
      143 JUMPIFNOTEQKN                    R4 K15 [1] ; [+25]
      145 GETUPVAL                         R4 1
      146 GETUPVAL                         R6 5
      147 MOVE                             R7 R2
      148 CALL                             R6 1 -1
      149 NAMECALL                         R4 R4 K20 ["dispatch"]
      151 CALL                             R4 -1 0
      152 GETUPVAL                         R4 1
      153 GETUPVAL                         R6 6
      154 DUPTABLE                         R7 K22 [{"nextPageCursor"}]
      155 SETTABLEKS                       R3 R7 K21 ["nextPageCursor"]
      157 CALL                             R6 1 -1
      158 NAMECALL                         R4 R4 K20 ["dispatch"]
      160 CALL                             R4 -1 0
      161 GETUPVAL                         R4 1
      162 GETUPVAL                         R6 9
      163 LOADN                            R7 1
      164 CALL                             R6 1 -1
      165 NAMECALL                         R4 R4 K20 ["dispatch"]
      167 CALL                             R4 -1 0
      168 JUMP                             ; [+38]
      169 GETUPVAL                         R4 1
      170 NAMECALL                         R4 R4 K7 ["getState"]
      172 CALL                             R4 1 1
      173 GETTABLEKS                       R4 R4 K29 ["overrideCursor"]
      175 JUMPIFNOTEQKNIL                  R3 ; [+2]
      177 LOADB                            R5 0 +1
      178 LOADB                            R5 1
      179 NOT                              R6 R5
      180 JUMPIFNOT                        R5 ; [+4]
      181 DUPTABLE                         R7 K22 [{"nextPageCursor"}]
      182 SETTABLEKS                       R3 R7 K21 ["nextPageCursor"]
      184 MOVE                             R4 R7
      185 GETUPVAL                         R7 1
      186 GETUPVAL                         R9 11
      187 MOVE                             R10 R2
      188 MOVE                             R11 R6
      189 CALL                             R9 2 -1
      190 NAMECALL                         R7 R7 K20 ["dispatch"]
      192 CALL                             R7 -1 0
      193 GETUPVAL                         R7 1
      194 GETUPVAL                         R9 6
      195 MOVE                             R10 R4
      196 CALL                             R9 1 -1
      197 NAMECALL                         R7 R7 K20 ["dispatch"]
      199 CALL                             R7 -1 0
      200 GETUPVAL                         R7 1
      201 GETUPVAL                         R9 9
      202 GETUPVAL                         R10 2
      203 CALL                             R9 1 -1
      204 NAMECALL                         R7 R7 K20 ["dispatch"]
      206 CALL                             R7 -1 0
      207 GETUPVAL                         R1 1
      208 GETUPVAL                         R3 12
      209 LOADN                            R4 0
      210 CALL                             R3 1 -1
      211 NAMECALL                         R1 R1 K20 ["dispatch"]
      213 CALL                             R1 -1 0
      214 RETURN                           R0 0

PROTO_7:
        0 NAMECALL                         R2 R0 K1 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R2 R2 K2 ["loadingPage"]
        5 ORK                              R1 R2 K0 [0]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K3 ["shouldDebugOverrideAssetLoading"]
        9 CALL                             R2 0 1
       10 JUMPIFNOT                        R2 ; [+30]
       11 GETIMPORT                        R2 K5 [print]
       13 GETIMPORT                        R3 K8 [string.format]
       15 LOADK                            R4 K9 ["GetOverrideAssetRequest: curr=%s, loading=%s, target=%s"]
       16 NAMECALL                         R6 R0 K1 ["getState"]
       18 CALL                             R6 1 1
       19 GETTABLEKS                       R6 R6 K10 ["currentPage"]
       21 FASTCALL1                        TOSTRING R6 ; [+2]
       22 GETIMPORT                        R5 K12 [tostring]
       24 CALL                             R5 1 1
       25 NAMECALL                         R7 R0 K1 ["getState"]
       27 CALL                             R7 1 1
       28 GETTABLEKS                       R7 R7 K2 ["loadingPage"]
       30 FASTCALL1                        TOSTRING R7 ; [+2]
       31 GETIMPORT                        R6 K12 [tostring]
       33 CALL                             R6 1 1
       34 GETUPVAL                         R8 1
       35 FASTCALL1                        TOSTRING R8 ; [+2]
       36 GETIMPORT                        R7 K12 [tostring]
       38 CALL                             R7 1 1
       39 CALL                             R3 4 -1
       40 CALL                             R2 -1 0
       41 GETUPVAL                         R2 1
       42 LOADN                            R3 1
       43 JUMPIFNOTLT                      R3 R2 ; [+30]
       45 NAMECALL                         R2 R0 K1 ["getState"]
       47 CALL                             R2 1 1
       48 GETTABLEKS                       R2 R2 K13 ["fetchedAll"]
       50 JUMPIFNOT                        R2 ; [+10]
       51 GETUPVAL                         R2 0
       52 GETTABLEKS                       R2 R2 K3 ["shouldDebugOverrideAssetLoading"]
       54 CALL                             R2 0 1
       55 JUMPIFNOT                        R2 ; [+4]
       56 GETIMPORT                        R2 K5 [print]
       58 LOADK                            R3 K14 ["GetOverrideAssetRequest: fetchedAll, stopping"]
       59 CALL                             R2 1 0
       60 RETURN                           R0 0
       61 GETUPVAL                         R2 1
       62 JUMPIFNOTLE                      R2 R1 ; [+11]
       64 GETUPVAL                         R2 0
       65 GETTABLEKS                       R2 R2 K3 ["shouldDebugOverrideAssetLoading"]
       67 CALL                             R2 0 1
       68 JUMPIFNOT                        R2 ; [+4]
       69 GETIMPORT                        R2 K5 [print]
       71 LOADK                            R3 K15 ["GetOverrideAssetRequest: loadingPage >= targetPage, stopping"]
       72 CALL                             R2 1 0
       73 RETURN                           R0 0
       74 GETUPVAL                         R2 0
       75 GETTABLEKS                       R2 R2 K3 ["shouldDebugOverrideAssetLoading"]
       77 CALL                             R2 0 1
       78 JUMPIFNOT                        R2 ; [+4]
       79 GETIMPORT                        R2 K5 [print]
       81 LOADK                            R3 K16 ["GetOverrideAssetRequest: continuing to run request"]
       82 CALL                             R2 1 0
       83 GETUPVAL                         R4 2
       84 GETUPVAL                         R5 1
       85 CALL                             R4 1 -1
       86 NAMECALL                         R2 R0 K17 ["dispatch"]
       88 CALL                             R2 -1 0
       89 NEWCLOSURE                       R2 P0
       90 CAPTURE                          VAL R0
       91 CAPTURE                          UPVAL U3
       92 CAPTURE                          UPVAL U2
       93 NEWCLOSURE                       R3 P1
       94 CAPTURE                          UPVAL U0
       95 CAPTURE                          VAL R0
       96 CAPTURE                          UPVAL U1
       97 CAPTURE                          UPVAL U4
       98 CAPTURE                          UPVAL U5
       99 CAPTURE                          UPVAL U6
      100 CAPTURE                          UPVAL U7
      101 CAPTURE                          UPVAL U8
      102 CAPTURE                          UPVAL U9
      103 CAPTURE                          UPVAL U10
      104 CAPTURE                          UPVAL U11
      105 CAPTURE                          UPVAL U12
      106 CAPTURE                          UPVAL U2
      107 GETUPVAL                         R4 4
      108 CALL                             R4 0 1
      109 JUMPIFNOT                        R4 ; [+49]
      110 NAMECALL                         R5 R0 K1 ["getState"]
      112 CALL                             R5 1 1
      113 GETTABLEKS                       R5 R5 K18 ["overrideCursor"]
      115 LOADK                            R6 K19 [""]
      116 GETTABLEKS                       R7 R5 K20 ["nextPageCursor"]
      118 JUMPIFNOT                        R7 ; [+2]
      119 GETTABLEKS                       R6 R5 K20 ["nextPageCursor"]
      121 MOVE                             R4 R6
      122 GETUPVAL                         R5 13
      123 DUPTABLE                         R7 K30 [{["query"] = "", ["assetType"], ["scopeParams"], ["maxPageSize"], ["pageToken"], ["includeFolders"] = False, ["sources"] = "created"}]
      124 GETUPVAL                         R9 14
      125 JUMPIFNOTEQKS                    R9 K31 ["AnimationGraph"] ; [+3]
      127 LOADK                            R8 K31 ["AnimationGraph"]
      128 JUMP                             ; [+3]
      129 GETUPVAL                         R8 15
      130 GETTABLEKS                       R8 R8 K32 ["Name"]
      132 SETTABLEKS                       R8 R7 K22 ["assetType"]
      134 DUPTABLE                         R8 K35 [{"Id", "Type"}]
      135 GETUPVAL                         R9 16
      136 SETTABLEKS                       R9 R8 K33 ["Id"]
      138 GETUPVAL                         R9 17
      139 SETTABLEKS                       R9 R8 K34 ["Type"]
      141 SETTABLEKS                       R8 R7 K23 ["scopeParams"]
      143 GETUPVAL                         R8 18
      144 GETTABLEKS                       R8 R8 K36 ["CREATOR_INVENTORY_MAX_PAGE_SIZE"]
      146 SETTABLEKS                       R8 R7 K24 ["maxPageSize"]
      148 SETTABLEKS                       R4 R7 K25 ["pageToken"]
      150 NAMECALL                         R5 R5 K37 ["requestCreatorInventoryAssets"]
      152 CALL                             R5 2 1
      153 MOVE                             R7 R3
      154 MOVE                             R8 R2
      155 NAMECALL                         R5 R5 K38 ["andThen"]
      157 CALL                             R5 3 -1
      158 RETURN                           R5 -1
      159 LOADNIL                          R4
      160 GETUPVAL                         R5 17
      161 JUMPIFNOTEQKS                    R5 K39 ["Group"] ; [+2]
      163 GETUPVAL                         R4 16
      164 GETUPVAL                         R5 17
      165 JUMPIFNOTEQKS                    R5 K39 ["Group"] ; [+27]
      167 NAMECALL                         R6 R0 K1 ["getState"]
      169 CALL                             R6 1 1
      170 GETTABLEKS                       R6 R6 K18 ["overrideCursor"]
      172 LOADK                            R7 K19 [""]
      173 GETTABLEKS                       R8 R6 K20 ["nextPageCursor"]
      175 JUMPIFNOT                        R8 ; [+2]
      176 GETTABLEKS                       R7 R6 K20 ["nextPageCursor"]
      178 MOVE                             R5 R7
      179 GETUPVAL                         R6 13
      180 LOADNIL                          R8
      181 MOVE                             R9 R5
      182 GETUPVAL                         R10 15
      183 MOVE                             R11 R4
      184 NAMECALL                         R6 R6 K40 ["getAssetGroupCreations"]
      186 CALL                             R6 5 1
      187 MOVE                             R8 R3
      188 MOVE                             R9 R2
      189 NAMECALL                         R6 R6 K38 ["andThen"]
      191 CALL                             R6 3 0
      192 RETURN                           R0 0
      193 NAMECALL                         R6 R0 K1 ["getState"]
      195 CALL                             R6 1 1
      196 GETTABLEKS                       R6 R6 K18 ["overrideCursor"]
      198 LOADK                            R7 K19 [""]
      199 GETTABLEKS                       R8 R6 K20 ["nextPageCursor"]
      201 JUMPIFNOT                        R8 ; [+2]
      202 GETTABLEKS                       R7 R6 K20 ["nextPageCursor"]
      204 MOVE                             R5 R7
      205 GETUPVAL                         R6 13
      206 LOADNIL                          R8
      207 MOVE                             R9 R5
      208 GETUPVAL                         R10 15
      209 NAMECALL                         R6 R6 K41 ["getAssetCreations"]
      211 CALL                             R6 4 1
      212 MOVE                             R8 R3
      213 MOVE                             R9 R2
      214 NAMECALL                         R6 R6 K38 ["andThen"]
      216 CALL                             R6 3 -1
      217 RETURN                           R6 -1
      218 RETURN                           R0 0

PROTO_8:
        0 NEWCLOSURE                       R6 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R5
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          UPVAL U6
        9 CAPTURE                          UPVAL U7
       10 CAPTURE                          UPVAL U8
       11 CAPTURE                          UPVAL U9
       12 CAPTURE                          UPVAL U10
       13 CAPTURE                          UPVAL U11
       14 CAPTURE                          VAL R0
       15 CAPTURE                          VAL R2
       16 CAPTURE                          VAL R1
       17 CAPTURE                          VAL R4
       18 CAPTURE                          VAL R3
       19 CAPTURE                          UPVAL U12
       20 RETURN                           R6 1

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
       34 GETTABLEKS                       R7 R0 K7 ["Src"]
       36 GETTABLEKS                       R7 R7 K11 ["Flags"]
       38 GETTABLEKS                       R7 R7 K12 ["getEngineFeatureToolboxPassThroughAssetType"]
       40 CALL                             R6 1 1
       41 GETTABLEKS                       R7 R0 K7 ["Src"]
       43 GETTABLEKS                       R7 R7 K13 ["Actions"]
       45 GETIMPORT                        R8 K5 [require]
       47 GETTABLEKS                       R9 R7 K14 ["NetworkError"]
       49 CALL                             R8 1 1
       50 GETIMPORT                        R9 K5 [require]
       52 GETTABLEKS                       R10 R7 K15 ["SetOverrideAssets"]
       54 CALL                             R9 1 1
       55 GETIMPORT                        R10 K5 [require]
       57 GETTABLEKS                       R11 R7 K16 ["SetLoadingPage"]
       59 CALL                             R10 1 1
       60 GETIMPORT                        R11 K5 [require]
       62 GETTABLEKS                       R12 R7 K17 ["UpdateOverrideAssetData"]
       64 CALL                             R11 1 1
       65 GETIMPORT                        R12 K5 [require]
       67 GETTABLEKS                       R13 R7 K18 ["UpdateAssetConfigStore"]
       69 CALL                             R12 1 1
       70 GETIMPORT                        R13 K5 [require]
       72 GETTABLEKS                       R14 R7 K19 ["SetCurrentPage"]
       74 CALL                             R13 1 1
       75 GETIMPORT                        R14 K5 [require]
       77 GETTABLEKS                       R15 R7 K20 ["SetOverrideCursor"]
       79 CALL                             R14 1 1
       80 DUPCLOSURE                       R15 K21 [PROTO_0]
       81 DUPCLOSURE                       R16 K22 [PROTO_1]
       82 DUPCLOSURE                       R17 K23 [PROTO_3]
       83 DUPCLOSURE                       R18 K24 [PROTO_4]
       84 DUPCLOSURE                       R19 K25 [PROTO_8]
       85 CAPTURE                          VAL R4
       86 CAPTURE                          VAL R10
       87 CAPTURE                          VAL R8
       88 CAPTURE                          VAL R6
       89 CAPTURE                          VAL R16
       90 CAPTURE                          VAL R9
       91 CAPTURE                          VAL R14
       92 CAPTURE                          VAL R2
       93 CAPTURE                          VAL R12
       94 CAPTURE                          VAL R13
       95 CAPTURE                          VAL R15
       96 CAPTURE                          VAL R11
       97 CAPTURE                          VAL R5
       98 RETURN                           R19 1
