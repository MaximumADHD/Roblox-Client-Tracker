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
        2 JUMPIFNOT                        R0 ; [+31]
        3 GETIMPORT                        R2 K1 [pairs]
        5 MOVE                             R3 R0
        6 CALL                             R2 1 3
        7 FORGPREP_NEXT                    R2
        8 LENGTH                           R8 R1
        9 ADDK                             R7 R8 K2 [1]
       10 DUPTABLE                         R8 K4 [{"Asset"}]
       11 DUPTABLE                         R9 K7 [{"Id", "Name"}]
       12 GETTABLEKS                       R10 R6 K8 ["assetItem"]
       14 GETTABLEKS                       R10 R10 K9 ["asset"]
       16 GETTABLEKS                       R10 R10 K10 ["assetId"]
       18 SETTABLEKS                       R10 R9 K5 ["Id"]
       20 GETTABLEKS                       R11 R6 K8 ["assetItem"]
       22 GETTABLEKS                       R11 R11 K9 ["asset"]
       24 GETTABLEKS                       R11 R11 K12 ["displayName"]
       26 ORK                              R10 R11 K11 [""]
       27 SETTABLEKS                       R10 R9 K6 ["Name"]
       29 SETTABLEKS                       R9 R8 K3 ["Asset"]
       31 SETTABLE                         R8 R1 R7
       32 FORGLOOP                         R2 2 ; [-25]
       34 RETURN                           R1 1

PROTO_2:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R1 R1 K1 ["overrideCursor"]
        5 LOADK                            R2 K2 [""]
        6 GETTABLEKS                       R3 R1 K3 ["nextPageCursor"]
        8 JUMPIFNOT                        R3 ; [+2]
        9 GETTABLEKS                       R2 R1 K3 ["nextPageCursor"]
       11 RETURN                           R2 1

PROTO_3:
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

PROTO_4:
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
       37 LOADNIL                          R1
       38 LOADNIL                          R2
       39 GETUPVAL                         R3 3
       40 CALL                             R3 0 1
       41 JUMPIFNOT                        R3 ; [+10]
       42 GETTABLEKS                       R3 R0 K12 ["responseBody"]
       44 GETUPVAL                         R4 4
       45 GETTABLEKS                       R5 R3 K13 ["items"]
       47 CALL                             R4 1 1
       48 MOVE                             R1 R4
       49 GETTABLEKS                       R2 R3 K14 ["nextPageToken"]
       51 JUMP                             ; [+9]
       52 GETTABLEKS                       R3 R0 K12 ["responseBody"]
       54 GETUPVAL                         R4 5
       55 GETTABLEKS                       R5 R3 K15 ["data"]
       57 CALL                             R4 1 1
       58 MOVE                             R1 R4
       59 GETTABLEKS                       R2 R3 K16 ["nextPageCursor"]
       61 GETUPVAL                         R3 2
       62 JUMPIFNOTEQKN                    R3 K17 [1] ; [+25]
       64 GETUPVAL                         R3 1
       65 GETUPVAL                         R5 6
       66 MOVE                             R6 R1
       67 CALL                             R5 1 -1
       68 NAMECALL                         R3 R3 K18 ["dispatch"]
       70 CALL                             R3 -1 0
       71 GETUPVAL                         R3 1
       72 GETUPVAL                         R5 7
       73 DUPTABLE                         R6 K19 [{"nextPageCursor"}]
       74 SETTABLEKS                       R2 R6 K16 ["nextPageCursor"]
       76 CALL                             R5 1 -1
       77 NAMECALL                         R3 R3 K18 ["dispatch"]
       79 CALL                             R3 -1 0
       80 GETUPVAL                         R3 1
       81 GETUPVAL                         R5 8
       82 LOADN                            R6 1
       83 CALL                             R5 1 -1
       84 NAMECALL                         R3 R3 K18 ["dispatch"]
       86 CALL                             R3 -1 0
       87 JUMP                             ; [+38]
       88 GETUPVAL                         R3 1
       89 NAMECALL                         R3 R3 K7 ["getState"]
       91 CALL                             R3 1 1
       92 GETTABLEKS                       R3 R3 K20 ["overrideCursor"]
       94 JUMPIFNOTEQKNIL                  R2 ; [+2]
       96 LOADB                            R4 0 +1
       97 LOADB                            R4 1
       98 NOT                              R5 R4
       99 JUMPIFNOT                        R4 ; [+4]
      100 DUPTABLE                         R6 K19 [{"nextPageCursor"}]
      101 SETTABLEKS                       R2 R6 K16 ["nextPageCursor"]
      103 MOVE                             R3 R6
      104 GETUPVAL                         R6 1
      105 GETUPVAL                         R8 9
      106 MOVE                             R9 R1
      107 MOVE                             R10 R5
      108 CALL                             R8 2 -1
      109 NAMECALL                         R6 R6 K18 ["dispatch"]
      111 CALL                             R6 -1 0
      112 GETUPVAL                         R6 1
      113 GETUPVAL                         R8 7
      114 MOVE                             R9 R3
      115 CALL                             R8 1 -1
      116 NAMECALL                         R6 R6 K18 ["dispatch"]
      118 CALL                             R6 -1 0
      119 GETUPVAL                         R6 1
      120 GETUPVAL                         R8 8
      121 GETUPVAL                         R9 2
      122 CALL                             R8 1 -1
      123 NAMECALL                         R6 R6 K18 ["dispatch"]
      125 CALL                             R6 -1 0
      126 GETUPVAL                         R3 1
      127 GETUPVAL                         R5 10
      128 LOADN                            R6 0
      129 CALL                             R5 1 -1
      130 NAMECALL                         R3 R3 K18 ["dispatch"]
      132 CALL                             R3 -1 0
      133 RETURN                           R0 0

PROTO_5:
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
      104 CAPTURE                          UPVAL U2
      105 GETUPVAL                         R4 4
      106 CALL                             R4 0 1
      107 JUMPIFNOT                        R4 ; [+52]
      108 NAMECALL                         R5 R0 K1 ["getState"]
      110 CALL                             R5 1 1
      111 GETTABLEKS                       R5 R5 K18 ["overrideCursor"]
      113 LOADK                            R6 K19 [""]
      114 GETTABLEKS                       R7 R5 K20 ["nextPageCursor"]
      116 JUMPIFNOT                        R7 ; [+2]
      117 GETTABLEKS                       R6 R5 K20 ["nextPageCursor"]
      119 MOVE                             R4 R6
      120 GETUPVAL                         R5 11
      121 DUPTABLE                         R7 K26 [{"query", "assetType", "scopeParams", "maxPageSize", "pageToken"}]
      122 LOADK                            R8 K19 [""]
      123 SETTABLEKS                       R8 R7 K21 ["query"]
      125 GETUPVAL                         R9 12
      126 JUMPIFNOTEQKS                    R9 K27 ["AnimationGraph"] ; [+3]
      128 LOADK                            R8 K27 ["AnimationGraph"]
      129 JUMP                             ; [+3]
      130 GETUPVAL                         R8 13
      131 GETTABLEKS                       R8 R8 K28 ["Name"]
      133 SETTABLEKS                       R8 R7 K22 ["assetType"]
      135 DUPTABLE                         R8 K31 [{"Id", "Type"}]
      136 GETUPVAL                         R9 14
      137 SETTABLEKS                       R9 R8 K29 ["Id"]
      139 GETUPVAL                         R9 15
      140 SETTABLEKS                       R9 R8 K30 ["Type"]
      142 SETTABLEKS                       R8 R7 K23 ["scopeParams"]
      144 GETUPVAL                         R8 16
      145 GETTABLEKS                       R8 R8 K32 ["GET_ITEMS_DETAILS_PAGE_SIZE_LIMIT"]
      147 SETTABLEKS                       R8 R7 K24 ["maxPageSize"]
      149 SETTABLEKS                       R4 R7 K25 ["pageToken"]
      151 NAMECALL                         R5 R5 K33 ["requestCreatorInventoryAssets"]
      153 CALL                             R5 2 1
      154 MOVE                             R7 R3
      155 MOVE                             R8 R2
      156 NAMECALL                         R5 R5 K34 ["andThen"]
      158 CALL                             R5 3 -1
      159 RETURN                           R5 -1
      160 LOADNIL                          R4
      161 GETUPVAL                         R5 15
      162 JUMPIFNOTEQKS                    R5 K35 ["Group"] ; [+2]
      164 GETUPVAL                         R4 14
      165 GETUPVAL                         R5 15
      166 JUMPIFNOTEQKS                    R5 K35 ["Group"] ; [+27]
      168 NAMECALL                         R6 R0 K1 ["getState"]
      170 CALL                             R6 1 1
      171 GETTABLEKS                       R6 R6 K18 ["overrideCursor"]
      173 LOADK                            R7 K19 [""]
      174 GETTABLEKS                       R8 R6 K20 ["nextPageCursor"]
      176 JUMPIFNOT                        R8 ; [+2]
      177 GETTABLEKS                       R7 R6 K20 ["nextPageCursor"]
      179 MOVE                             R5 R7
      180 GETUPVAL                         R6 11
      181 LOADNIL                          R8
      182 MOVE                             R9 R5
      183 GETUPVAL                         R10 13
      184 MOVE                             R11 R4
      185 NAMECALL                         R6 R6 K36 ["getAssetGroupCreations"]
      187 CALL                             R6 5 1
      188 MOVE                             R8 R3
      189 MOVE                             R9 R2
      190 NAMECALL                         R6 R6 K34 ["andThen"]
      192 CALL                             R6 3 0
      193 RETURN                           R0 0
      194 NAMECALL                         R6 R0 K1 ["getState"]
      196 CALL                             R6 1 1
      197 GETTABLEKS                       R6 R6 K18 ["overrideCursor"]
      199 LOADK                            R7 K19 [""]
      200 GETTABLEKS                       R8 R6 K20 ["nextPageCursor"]
      202 JUMPIFNOT                        R8 ; [+2]
      203 GETTABLEKS                       R7 R6 K20 ["nextPageCursor"]
      205 MOVE                             R5 R7
      206 GETUPVAL                         R6 11
      207 LOADNIL                          R8
      208 MOVE                             R9 R5
      209 GETUPVAL                         R10 13
      210 NAMECALL                         R6 R6 K37 ["getAssetCreations"]
      212 CALL                             R6 4 1
      213 MOVE                             R8 R3
      214 MOVE                             R9 R2
      215 NAMECALL                         R6 R6 K34 ["andThen"]
      217 CALL                             R6 3 -1
      218 RETURN                           R6 -1
      219 RETURN                           R0 0

PROTO_6:
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
       12 CAPTURE                          VAL R0
       13 CAPTURE                          VAL R2
       14 CAPTURE                          VAL R1
       15 CAPTURE                          VAL R4
       16 CAPTURE                          VAL R3
       17 CAPTURE                          UPVAL U10
       18 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Src"]
       13 GETTABLEKS                       R1 R1 K4 ["Util"]
       15 GETIMPORT                        R2 K6 [require]
       17 GETTABLEKS                       R3 R1 K7 ["DebugFlags"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K6 [require]
       22 GETTABLEKS                       R4 R1 K8 ["Constants"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R0 K3 ["Src"]
       29 GETTABLEKS                       R5 R5 K9 ["Flags"]
       31 GETTABLEKS                       R5 R5 K10 ["getEngineFeatureToolboxPassThroughAssetType"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R5 R0 K3 ["Src"]
       36 GETTABLEKS                       R5 R5 K11 ["Actions"]
       38 GETIMPORT                        R6 K6 [require]
       40 GETTABLEKS                       R7 R5 K12 ["NetworkError"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K6 [require]
       45 GETTABLEKS                       R8 R5 K13 ["SetOverrideAssets"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K6 [require]
       50 GETTABLEKS                       R9 R5 K14 ["SetLoadingPage"]
       52 CALL                             R8 1 1
       53 GETIMPORT                        R9 K6 [require]
       55 GETTABLEKS                       R10 R5 K15 ["UpdateOverrideAssetData"]
       57 CALL                             R9 1 1
       58 GETIMPORT                        R10 K6 [require]
       60 GETTABLEKS                       R11 R5 K16 ["SetCurrentPage"]
       62 CALL                             R10 1 1
       63 GETIMPORT                        R11 K6 [require]
       65 GETTABLEKS                       R12 R5 K17 ["SetOverrideCursor"]
       67 CALL                             R11 1 1
       68 DUPCLOSURE                       R12 K18 [PROTO_0]
       69 DUPCLOSURE                       R13 K19 [PROTO_1]
       70 DUPCLOSURE                       R14 K20 [PROTO_2]
       71 DUPCLOSURE                       R15 K21 [PROTO_6]
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R8
       74 CAPTURE                          VAL R6
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R13
       77 CAPTURE                          VAL R12
       78 CAPTURE                          VAL R7
       79 CAPTURE                          VAL R11
       80 CAPTURE                          VAL R10
       81 CAPTURE                          VAL R9
       82 CAPTURE                          VAL R3
       83 RETURN                           R15 1
