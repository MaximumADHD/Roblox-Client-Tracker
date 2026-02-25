PROTO_0:
        0 DUPTABLE                         R0 K3 [{"assetType", "scope", "search"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K0 ["assetType"]
        4 SETTABLEKS                       R1 R0 K0 ["assetType"]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K1 ["scope"]
        9 SETTABLEKS                       R1 R0 K1 ["scope"]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R1 R2 K2 ["search"]
       14 SETTABLEKS                       R1 R0 K2 ["search"]
       16 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R3 0
        5 JUMPIFEQKS                       R3 K3 [""] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 JUMPIFNOT                        R2 ; [+4]
       10 GETUPVAL                         R3 1
       11 SETTABLEKS                       R3 R1 K4 ["loadedAssets"]
       13 JUMP                             ; [+19]
       14 GETTABLEKS                       R5 R0 K4 ["loadedAssets"]
       16 JUMPIFNOTEQKNIL                  R5 ; [+2]
       18 LOADB                            R4 0 +1
       19 LOADB                            R4 1
       20 FASTCALL2K                       ASSERT R4 K5 ; [+4]
       22 LOADK                            R5 K5 ["Trying to append the next page with no initial page loaded"]
       23 GETIMPORT                        R3 K7 [assert]
       25 CALL                             R3 2 0
       26 GETUPVAL                         R3 2
       27 GETTABLEKS                       R4 R0 K4 ["loadedAssets"]
       29 GETUPVAL                         R5 1
       30 CALL                             R3 2 1
       31 SETTABLEKS                       R3 R1 K4 ["loadedAssets"]
       33 NEWTABLE                         R3 4 0
       35 LOADB                            R4 0
       36 SETTABLEKS                       R4 R3 K8 ["Scroll"]
       38 LOADB                            R4 0
       39 SETTABLEKS                       R4 R3 K9 ["Scope"]
       41 LOADB                            R4 0
       42 SETTABLEKS                       R4 R3 K10 ["Search"]
       44 SETTABLEKS                       R3 R1 K11 ["loadingStates"]
       46 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["networking"]
        3 GETTABLEKS                       R0 R1 K1 ["fetchAssetsByScopeAsync"]
        5 DUPTABLE                         R1 K7 [{"assetType", "scopeId", "scopeType", "search", "pageToken"}]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K2 ["assetType"]
        9 SETTABLEKS                       R2 R1 K2 ["assetType"]
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R3 R4 K8 ["scope"]
       14 GETTABLEKS                       R2 R3 K9 ["id"]
       16 SETTABLEKS                       R2 R1 K3 ["scopeId"]
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R3 R4 K8 ["scope"]
       21 GETTABLEKS                       R2 R3 K10 ["type"]
       23 SETTABLEKS                       R2 R1 K4 ["scopeType"]
       25 GETUPVAL                         R3 1
       26 GETTABLEKS                       R2 R3 K5 ["search"]
       28 SETTABLEKS                       R2 R1 K5 ["search"]
       30 GETUPVAL                         R2 2
       31 SETTABLEKS                       R2 R1 K6 ["pageToken"]
       33 CALL                             R0 1 2
       34 GETUPVAL                         R2 3
       35 GETUPVAL                         R4 4
       36 GETTABLEKS                       R3 R4 K11 ["current"]
       38 JUMPIFEQ                         R2 R3 ; [+2]
       40 RETURN                           R0 0
       41 GETUPVAL                         R2 5
       42 DUPTABLE                         R3 K14 [{"nextPageToken", "isPageLoading"}]
       43 SETTABLEKS                       R1 R3 K12 ["nextPageToken"]
       45 LOADB                            R4 0
       46 SETTABLEKS                       R4 R3 K13 ["isPageLoading"]
       48 SETTABLEKS                       R3 R2 K11 ["current"]
       50 GETUPVAL                         R2 6
       51 NEWCLOSURE                       R3 P0
       52 CAPTURE                          UPVAL U2
       53 CAPTURE                          VAL R0
       54 CAPTURE                          UPVAL U7
       55 CALL                             R2 1 0
       56 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["scope"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R1 R2 K2 ["current"]
        9 ADDK                             R0 R1 K1 [1]
       10 GETUPVAL                         R1 1
       11 SETTABLEKS                       R0 R1 K2 ["current"]
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R2 R3 K2 ["current"]
       16 GETTABLEKS                       R1 R2 K3 ["nextPageToken"]
       18 JUMPIFNOTEQKNIL                  R1 ; [+2]
       20 LOADB                            R3 0 +1
       21 LOADB                            R3 1
       22 FASTCALL2K                       ASSERT R3 K4 ; [+4]
       24 LOADK                            R4 K4 ["Trying to fetch assets without a page token"]
       25 GETIMPORT                        R2 K6 [assert]
       27 CALL                             R2 2 0
       28 GETIMPORT                        R2 K9 [task.spawn]
       30 NEWCLOSURE                       R3 P0
       31 CAPTURE                          UPVAL U3
       32 CAPTURE                          UPVAL U0
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R0
       35 CAPTURE                          UPVAL U1
       36 CAPTURE                          UPVAL U2
       37 CAPTURE                          UPVAL U4
       38 CAPTURE                          UPVAL U5
       39 CALL                             R2 1 0
       40 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETIMPORT                        R2 K2 [table.clone]
        6 GETTABLEKS                       R3 R0 K3 ["loadingStates"]
        8 CALL                             R2 1 1
        9 SETTABLEKS                       R2 R1 K3 ["loadingStates"]
       11 GETTABLEKS                       R2 R1 K3 ["loadingStates"]
       13 LOADB                            R3 1
       14 SETTABLEKS                       R3 R2 K4 ["Scroll"]
       16 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["current"]
        3 GETTABLEKS                       R1 R2 K1 ["nextPageToken"]
        5 JUMPIFNOTEQKNIL                  R1 ; [+2]
        7 LOADB                            R0 0 +1
        8 LOADB                            R0 1
        9 JUMPIFNOT                        R0 ; [+6]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R2 R3 K0 ["current"]
       13 GETTABLEKS                       R1 R2 K2 ["isPageLoading"]
       15 JUMPIFNOT                        R1 ; [+1]
       16 RETURN                           R0 0
       17 GETUPVAL                         R1 1
       18 DUPCLOSURE                       R2 K3 [PROTO_4]
       19 CALL                             R1 1 0
       20 GETUPVAL                         R1 2
       21 CALL                             R1 0 0
       22 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["scope"]
        3 JUMPIFNOTEQKNIL                  R3 ; [+2]
        5 LOADB                            R2 0 +1
        6 LOADB                            R2 1
        7 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        9 LOADK                            R3 K1 ["Trying to load assets without a loaded scope"]
       10 GETIMPORT                        R1 K3 [assert]
       12 CALL                             R1 2 0
       13 LOADB                            R1 1
       14 GETTABLEKS                       R2 R0 K0 ["scope"]
       16 JUMPIFEQKNIL                     R2 ; [+14]
       18 GETTABLEKS                       R3 R0 K0 ["scope"]
       20 GETTABLEKS                       R2 R3 K4 ["id"]
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R4 R5 K0 ["scope"]
       25 GETTABLEKS                       R3 R4 K4 ["id"]
       27 JUMPIFNOTEQ                      R2 R3 ; [+2]
       29 LOADB                            R1 0 +1
       30 LOADB                            R1 1
       31 GETTABLEKS                       R3 R0 K5 ["search"]
       33 GETUPVAL                         R5 0
       34 GETTABLEKS                       R4 R5 K5 ["search"]
       36 JUMPIFNOTEQ                      R3 R4 ; [+2]
       38 LOADB                            R2 0 +1
       39 LOADB                            R2 1
       40 NEWTABLE                         R3 0 0
       42 LOADB                            R4 0
       43 SETTABLEKS                       R4 R3 K6 ["Scroll"]
       45 SETTABLEKS                       R1 R3 K7 ["Scope"]
       47 SETTABLEKS                       R2 R3 K8 ["Search"]
       49 RETURN                           R3 1

PROTO_7:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 SETTABLEKS                       R2 R1 K3 ["queryKey"]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R3 R0 K3 ["queryKey"]
       10 CALL                             R2 1 1
       11 SETTABLEKS                       R2 R1 K4 ["loadingStates"]
       13 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["scope"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R0 1
        7 DUPTABLE                         R1 K3 [{"nextPageToken", "isPageLoading"}]
        8 LOADK                            R2 K4 [""]
        9 SETTABLEKS                       R2 R1 K1 ["nextPageToken"]
       11 LOADB                            R2 1
       12 SETTABLEKS                       R2 R1 K2 ["isPageLoading"]
       14 SETTABLEKS                       R1 R0 K5 ["current"]
       16 GETUPVAL                         R0 2
       17 NEWCLOSURE                       R1 P0
       18 CAPTURE                          UPVAL U0
       19 CAPTURE                          UPVAL U3
       20 CALL                             R0 1 0
       21 GETUPVAL                         R0 4
       22 CALL                             R0 0 0
       23 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 NEWTABLE                         R3 0 3
        7 GETTABLEKS                       R4 R0 K1 ["assetType"]
        9 GETTABLEKS                       R5 R0 K2 ["scope"]
       11 GETTABLEKS                       R6 R0 K3 ["search"]
       13 SETLIST                          R3 R4 3 [1]
       15 CALL                             R1 2 1
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R2 R3 K4 ["useState"]
       19 DUPTABLE                         R3 K8 [{"loadedAssets", "queryKey", "loadingStates"}]
       20 LOADNIL                          R4
       21 SETTABLEKS                       R4 R3 K5 ["loadedAssets"]
       23 SETTABLEKS                       R1 R3 K6 ["queryKey"]
       25 NEWTABLE                         R4 4 0
       27 LOADB                            R5 0
       28 SETTABLEKS                       R5 R4 K9 ["Scroll"]
       30 LOADB                            R5 0
       31 SETTABLEKS                       R5 R4 K10 ["Scope"]
       33 LOADB                            R5 0
       34 SETTABLEKS                       R5 R4 K11 ["Search"]
       36 SETTABLEKS                       R4 R3 K7 ["loadingStates"]
       38 CALL                             R2 1 2
       39 GETUPVAL                         R5 0
       40 GETTABLEKS                       R4 R5 K12 ["useRef"]
       42 LOADN                            R5 0
       43 CALL                             R4 1 1
       44 GETUPVAL                         R6 0
       45 GETTABLEKS                       R5 R6 K12 ["useRef"]
       47 DUPTABLE                         R6 K15 [{"nextPageToken", "isPageLoading"}]
       48 LOADK                            R7 K16 [""]
       49 SETTABLEKS                       R7 R6 K13 ["nextPageToken"]
       51 LOADB                            R7 0
       52 SETTABLEKS                       R7 R6 K14 ["isPageLoading"]
       54 CALL                             R5 1 1
       55 GETUPVAL                         R7 0
       56 GETTABLEKS                       R6 R7 K17 ["useCallback"]
       58 NEWCLOSURE                       R7 P1
       59 CAPTURE                          VAL R1
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R0
       63 CAPTURE                          VAL R3
       64 CAPTURE                          UPVAL U1
       65 NEWTABLE                         R8 0 2
       67 MOVE                             R9 R1
       68 GETTABLEKS                       R11 R0 K18 ["networking"]
       70 GETTABLEKS                       R10 R11 K19 ["fetchAssetsByScopeAsync"]
       72 SETLIST                          R8 R9 2 [1]
       74 CALL                             R6 2 1
       75 GETUPVAL                         R8 0
       76 GETTABLEKS                       R7 R8 K17 ["useCallback"]
       78 NEWCLOSURE                       R8 P2
       79 CAPTURE                          VAL R5
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R6
       82 NEWTABLE                         R9 0 1
       84 MOVE                             R10 R6
       85 SETLIST                          R9 R10 1 [1]
       87 CALL                             R7 2 1
       88 GETUPVAL                         R9 0
       89 GETTABLEKS                       R8 R9 K17 ["useCallback"]
       91 NEWCLOSURE                       R9 P3
       92 CAPTURE                          VAL R1
       93 NEWTABLE                         R10 0 1
       95 MOVE                             R11 R1
       96 SETLIST                          R10 R11 1 [1]
       98 CALL                             R8 2 1
       99 GETUPVAL                         R10 0
      100 GETTABLEKS                       R9 R10 K20 ["useEffect"]
      102 NEWCLOSURE                       R10 P4
      103 CAPTURE                          VAL R1
      104 CAPTURE                          VAL R5
      105 CAPTURE                          VAL R3
      106 CAPTURE                          VAL R8
      107 CAPTURE                          VAL R6
      108 NEWTABLE                         R11 0 2
      110 MOVE                             R12 R1
      111 MOVE                             R13 R8
      112 SETLIST                          R11 R12 2 [1]
      114 CALL                             R9 2 0
      115 DUPTABLE                         R9 K22 [{"loadedAssets", "loadingStates", "scrollMoreAssets"}]
      116 GETTABLEKS                       R10 R2 K5 ["loadedAssets"]
      118 SETTABLEKS                       R10 R9 K5 ["loadedAssets"]
      120 GETTABLEKS                       R10 R2 K7 ["loadingStates"]
      122 SETTABLEKS                       R10 R9 K7 ["loadingStates"]
      124 SETTABLEKS                       R7 R9 K21 ["scrollMoreAssets"]
      126 RETURN                           R9 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [script]
        9 LOADK                            R3 K4 ["AssetPicker"]
       10 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R2 R0 K5 ["Parent"]
       15 GETIMPORT                        R3 K7 [require]
       17 GETTABLEKS                       R4 R2 K8 ["React"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K7 [require]
       22 GETTABLEKS                       R5 R1 K9 ["Types"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K7 [require]
       27 GETTABLEKS                       R7 R1 K10 ["Util"]
       29 GETTABLEKS                       R6 R7 K11 ["mergedList"]
       31 CALL                             R5 1 1
       32 DUPCLOSURE                       R6 K12 [PROTO_9]
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R5
       35 RETURN                           R6 1
