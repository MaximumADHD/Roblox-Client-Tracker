PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 GETIMPORT                        R3 K1 [pairs]
        4 MOVE                             R4 R0
        5 CALL                             R3 1 3
        6 FORGPREP_NEXT                    R3
        7 GETTABLEKS                       R9 R7 K2 ["Creator"]
        9 GETTABLEKS                       R8 R9 K3 ["Id"]
       11 JUMPIFNOTEQ                      R8 R1 ; [+8]
       13 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       15 MOVE                             R9 R2
       16 MOVE                             R10 R7
       17 GETIMPORT                        R8 K6 [table.insert]
       19 CALL                             R8 2 0
       20 FORGLOOP                         R3 2 ; [-14]
       22 RETURN                           R2 1

PROTO_1:
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

PROTO_2:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R1 R2 K1 ["overrideCursor"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["shouldDebugOverrideAssetLoading"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+32]
        5 GETIMPORT                        R1 K2 [print]
        7 GETIMPORT                        R2 K5 [string.format]
        9 LOADK                            R3 K6 ["handleGetCreationOverrideSuccess: curr=%s, loading=%s, target=%s"]
       10 GETUPVAL                         R6 1
       11 NAMECALL                         R6 R6 K7 ["getState"]
       13 CALL                             R6 1 1
       14 GETTABLEKS                       R5 R6 K8 ["currentPage"]
       16 FASTCALL1                        TOSTRING R5 ; [+2]
       17 GETIMPORT                        R4 K10 [tostring]
       19 CALL                             R4 1 1
       20 GETUPVAL                         R7 1
       21 NAMECALL                         R7 R7 K7 ["getState"]
       23 CALL                             R7 1 1
       24 GETTABLEKS                       R6 R7 K11 ["loadingPage"]
       26 FASTCALL1                        TOSTRING R6 ; [+2]
       27 GETIMPORT                        R5 K10 [tostring]
       29 CALL                             R5 1 1
       30 GETUPVAL                         R7 2
       31 FASTCALL1                        TOSTRING R7 ; [+2]
       32 GETIMPORT                        R6 K10 [tostring]
       34 CALL                             R6 1 1
       35 CALL                             R2 4 -1
       36 CALL                             R1 -1 0
       37 GETTABLEKS                       R1 R0 K12 ["responseBody"]
       39 GETUPVAL                         R2 3
       40 GETTABLEKS                       R3 R1 K13 ["data"]
       42 CALL                             R2 1 1
       43 GETUPVAL                         R3 2
       44 JUMPIFNOTEQKN                    R3 K14 [1] ; [+27]
       46 GETUPVAL                         R3 1
       47 GETUPVAL                         R5 4
       48 MOVE                             R6 R2
       49 CALL                             R5 1 -1
       50 NAMECALL                         R3 R3 K15 ["dispatch"]
       52 CALL                             R3 -1 0
       53 GETUPVAL                         R3 1
       54 GETUPVAL                         R5 5
       55 DUPTABLE                         R6 K17 [{"nextPageCursor"}]
       56 GETTABLEKS                       R7 R1 K16 ["nextPageCursor"]
       58 SETTABLEKS                       R7 R6 K16 ["nextPageCursor"]
       60 CALL                             R5 1 -1
       61 NAMECALL                         R3 R3 K15 ["dispatch"]
       63 CALL                             R3 -1 0
       64 GETUPVAL                         R3 1
       65 GETUPVAL                         R5 6
       66 LOADN                            R6 1
       67 CALL                             R5 1 -1
       68 NAMECALL                         R3 R3 K15 ["dispatch"]
       70 CALL                             R3 -1 0
       71 JUMP                             ; [+42]
       72 GETUPVAL                         R4 1
       73 NAMECALL                         R4 R4 K7 ["getState"]
       75 CALL                             R4 1 1
       76 GETTABLEKS                       R3 R4 K18 ["overrideCursor"]
       78 GETTABLEKS                       R5 R1 K16 ["nextPageCursor"]
       80 JUMPIFNOTEQKNIL                  R5 ; [+2]
       82 LOADB                            R4 0 +1
       83 LOADB                            R4 1
       84 NOT                              R5 R4
       85 JUMPIFNOT                        R4 ; [+6]
       86 DUPTABLE                         R6 K17 [{"nextPageCursor"}]
       87 GETTABLEKS                       R7 R1 K16 ["nextPageCursor"]
       89 SETTABLEKS                       R7 R6 K16 ["nextPageCursor"]
       91 MOVE                             R3 R6
       92 GETUPVAL                         R6 1
       93 GETUPVAL                         R8 7
       94 MOVE                             R9 R2
       95 MOVE                             R10 R5
       96 CALL                             R8 2 -1
       97 NAMECALL                         R6 R6 K15 ["dispatch"]
       99 CALL                             R6 -1 0
      100 GETUPVAL                         R6 1
      101 GETUPVAL                         R8 5
      102 MOVE                             R9 R3
      103 CALL                             R8 1 -1
      104 NAMECALL                         R6 R6 K15 ["dispatch"]
      106 CALL                             R6 -1 0
      107 GETUPVAL                         R6 1
      108 GETUPVAL                         R8 6
      109 GETUPVAL                         R9 2
      110 CALL                             R8 1 -1
      111 NAMECALL                         R6 R6 K15 ["dispatch"]
      113 CALL                             R6 -1 0
      114 GETUPVAL                         R3 1
      115 GETUPVAL                         R5 8
      116 LOADN                            R6 0
      117 CALL                             R5 1 -1
      118 NAMECALL                         R3 R3 K15 ["dispatch"]
      120 CALL                             R3 -1 0
      121 RETURN                           R0 0

PROTO_5:
        0 NAMECALL                         R3 R0 K1 ["getState"]
        2 CALL                             R3 1 1
        3 GETTABLEKS                       R2 R3 K2 ["loadingPage"]
        5 ORK                              R1 R2 K0 [0]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K3 ["shouldDebugOverrideAssetLoading"]
        9 CALL                             R2 0 1
       10 JUMPIFNOT                        R2 ; [+30]
       11 GETIMPORT                        R2 K5 [print]
       13 GETIMPORT                        R3 K8 [string.format]
       15 LOADK                            R4 K9 ["GetOverrideAssetRequest: curr=%s, loading=%s, target=%s"]
       16 NAMECALL                         R7 R0 K1 ["getState"]
       18 CALL                             R7 1 1
       19 GETTABLEKS                       R6 R7 K10 ["currentPage"]
       21 FASTCALL1                        TOSTRING R6 ; [+2]
       22 GETIMPORT                        R5 K12 [tostring]
       24 CALL                             R5 1 1
       25 NAMECALL                         R8 R0 K1 ["getState"]
       27 CALL                             R8 1 1
       28 GETTABLEKS                       R7 R8 K2 ["loadingPage"]
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
       45 NAMECALL                         R3 R0 K1 ["getState"]
       47 CALL                             R3 1 1
       48 GETTABLEKS                       R2 R3 K13 ["fetchedAll"]
       50 JUMPIFNOT                        R2 ; [+10]
       51 GETUPVAL                         R3 0
       52 GETTABLEKS                       R2 R3 K3 ["shouldDebugOverrideAssetLoading"]
       54 CALL                             R2 0 1
       55 JUMPIFNOT                        R2 ; [+4]
       56 GETIMPORT                        R2 K5 [print]
       58 LOADK                            R3 K14 ["GetOverrideAssetRequest: fetchedAll, stopping"]
       59 CALL                             R2 1 0
       60 RETURN                           R0 0
       61 GETUPVAL                         R2 1
       62 JUMPIFNOTLE                      R2 R1 ; [+11]
       64 GETUPVAL                         R3 0
       65 GETTABLEKS                       R2 R3 K3 ["shouldDebugOverrideAssetLoading"]
       67 CALL                             R2 0 1
       68 JUMPIFNOT                        R2 ; [+4]
       69 GETIMPORT                        R2 K5 [print]
       71 LOADK                            R3 K15 ["GetOverrideAssetRequest: loadingPage >= targetPage, stopping"]
       72 CALL                             R2 1 0
       73 RETURN                           R0 0
       74 GETUPVAL                         R3 0
       75 GETTABLEKS                       R2 R3 K3 ["shouldDebugOverrideAssetLoading"]
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
      102 CAPTURE                          UPVAL U2
      103 LOADNIL                          R4
      104 GETUPVAL                         R5 9
      105 JUMPIFNOTEQKS                    R5 K18 ["Group"] ; [+2]
      107 GETUPVAL                         R4 10
      108 GETUPVAL                         R5 9
      109 JUMPIFNOTEQKS                    R5 K18 ["Group"] ; [+27]
      111 NAMECALL                         R7 R0 K1 ["getState"]
      113 CALL                             R7 1 1
      114 GETTABLEKS                       R6 R7 K19 ["overrideCursor"]
      116 LOADK                            R7 K20 [""]
      117 GETTABLEKS                       R8 R6 K21 ["nextPageCursor"]
      119 JUMPIFNOT                        R8 ; [+2]
      120 GETTABLEKS                       R7 R6 K21 ["nextPageCursor"]
      122 MOVE                             R5 R7
      123 GETUPVAL                         R6 11
      124 LOADNIL                          R8
      125 MOVE                             R9 R5
      126 GETUPVAL                         R10 12
      127 MOVE                             R11 R4
      128 NAMECALL                         R6 R6 K22 ["getAssetGroupCreations"]
      130 CALL                             R6 5 1
      131 MOVE                             R8 R3
      132 MOVE                             R9 R2
      133 NAMECALL                         R6 R6 K23 ["andThen"]
      135 CALL                             R6 3 0
      136 RETURN                           R0 0
      137 NAMECALL                         R7 R0 K1 ["getState"]
      139 CALL                             R7 1 1
      140 GETTABLEKS                       R6 R7 K19 ["overrideCursor"]
      142 LOADK                            R7 K20 [""]
      143 GETTABLEKS                       R8 R6 K21 ["nextPageCursor"]
      145 JUMPIFNOT                        R8 ; [+2]
      146 GETTABLEKS                       R7 R6 K21 ["nextPageCursor"]
      148 MOVE                             R5 R7
      149 GETUPVAL                         R6 11
      150 LOADNIL                          R8
      151 MOVE                             R9 R5
      152 GETUPVAL                         R10 12
      153 NAMECALL                         R6 R6 K24 ["getAssetCreations"]
      155 CALL                             R6 4 1
      156 MOVE                             R8 R3
      157 MOVE                             R9 R2
      158 NAMECALL                         R6 R6 K23 ["andThen"]
      160 CALL                             R6 3 -1
      161 RETURN                           R6 -1
      162 RETURN                           R0 0

PROTO_6:
        0 NEWCLOSURE                       R5 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R4
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          UPVAL U6
        9 CAPTURE                          UPVAL U7
       10 CAPTURE                          VAL R2
       11 CAPTURE                          VAL R3
       12 CAPTURE                          VAL R0
       13 CAPTURE                          VAL R1
       14 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETTABLEKS                       R2 R0 K3 ["Src"]
       13 GETTABLEKS                       R1 R2 K4 ["Util"]
       15 GETIMPORT                        R2 K6 [require]
       17 GETTABLEKS                       R3 R1 K7 ["AssetConfigConstants"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K6 [require]
       22 GETTABLEKS                       R4 R1 K8 ["PagedRequestCursor"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R1 K9 ["DebugFlags"]
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R6 R0 K3 ["Src"]
       32 GETTABLEKS                       R5 R6 K10 ["Actions"]
       34 GETIMPORT                        R6 K6 [require]
       36 GETTABLEKS                       R7 R5 K11 ["NetworkError"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K6 [require]
       41 GETTABLEKS                       R8 R5 K12 ["SetOverrideAssets"]
       43 CALL                             R7 1 1
       44 GETIMPORT                        R8 K6 [require]
       46 GETTABLEKS                       R9 R5 K13 ["SetLoadingPage"]
       48 CALL                             R8 1 1
       49 GETIMPORT                        R9 K6 [require]
       51 GETTABLEKS                       R10 R5 K14 ["UpdateOverrideAssetData"]
       53 CALL                             R9 1 1
       54 GETIMPORT                        R10 K6 [require]
       56 GETTABLEKS                       R11 R5 K15 ["SetCurrentPage"]
       58 CALL                             R10 1 1
       59 GETIMPORT                        R11 K6 [require]
       61 GETTABLEKS                       R12 R5 K16 ["SetOverrideCursor"]
       63 CALL                             R11 1 1
       64 DUPCLOSURE                       R12 K17 [PROTO_0]
       65 DUPCLOSURE                       R13 K18 [PROTO_1]
       66 DUPCLOSURE                       R14 K19 [PROTO_2]
       67 DUPCLOSURE                       R15 K20 [PROTO_6]
       68 CAPTURE                          VAL R4
       69 CAPTURE                          VAL R8
       70 CAPTURE                          VAL R6
       71 CAPTURE                          VAL R13
       72 CAPTURE                          VAL R7
       73 CAPTURE                          VAL R11
       74 CAPTURE                          VAL R10
       75 CAPTURE                          VAL R9
       76 RETURN                           R15 1
