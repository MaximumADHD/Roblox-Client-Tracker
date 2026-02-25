PROTO_0:
        0 GETTABLEKS                       R4 R1 K0 ["scope"]
        2 JUMPIFNOTEQKNIL                  R4 ; [+2]
        4 LOADB                            R3 0 +1
        5 LOADB                            R3 1
        6 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        8 LOADK                            R4 K1 ["Trying to load assets without a loaded scope"]
        9 GETIMPORT                        R2 K3 [assert]
       11 CALL                             R2 2 0
       12 LOADB                            R2 1
       13 GETTABLEKS                       R3 R0 K0 ["scope"]
       15 JUMPIFEQKNIL                     R3 ; [+13]
       17 GETTABLEKS                       R4 R0 K0 ["scope"]
       19 GETTABLEKS                       R3 R4 K4 ["id"]
       21 GETTABLEKS                       R5 R1 K0 ["scope"]
       23 GETTABLEKS                       R4 R5 K4 ["id"]
       25 JUMPIFNOTEQ                      R3 R4 ; [+2]
       27 LOADB                            R2 0 +1
       28 LOADB                            R2 1
       29 GETTABLEKS                       R4 R0 K5 ["search"]
       31 GETTABLEKS                       R5 R1 K5 ["search"]
       33 JUMPIFNOTEQ                      R4 R5 ; [+2]
       35 LOADB                            R3 0 +1
       36 LOADB                            R3 1
       37 GETTABLEKS                       R5 R0 K6 ["sort"]
       39 GETTABLEKS                       R6 R1 K6 ["sort"]
       41 JUMPIFNOTEQ                      R5 R6 ; [+2]
       43 LOADB                            R4 0 +1
       44 LOADB                            R4 1
       45 DUPTABLE                         R5 K11 [{"Scroll", "Scope", "Search", "Sort"}]
       46 LOADB                            R6 0
       47 SETTABLEKS                       R6 R5 K7 ["Scroll"]
       49 SETTABLEKS                       R2 R5 K8 ["Scope"]
       51 SETTABLEKS                       R3 R5 K9 ["Search"]
       53 SETTABLEKS                       R4 R5 K10 ["Sort"]
       55 RETURN                           R5 1

PROTO_1:
        0 DUPTABLE                         R0 K4 [{"assetType", "scope", "search", "sort"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K0 ["assetType"]
        4 SETTABLEKS                       R1 R0 K0 ["assetType"]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K1 ["scope"]
        9 SETTABLEKS                       R1 R0 K1 ["scope"]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R1 R2 K2 ["search"]
       14 SETTABLEKS                       R1 R0 K2 ["search"]
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R1 R2 K3 ["sort"]
       19 SETTABLEKS                       R1 R0 K3 ["sort"]
       21 RETURN                           R0 1

PROTO_2:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R3 0
        5 JUMPIFEQKS                       R3 K3 [""] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 JUMPIFNOT                        R2 ; [+10]
       10 GETUPVAL                         R3 1
       11 GETUPVAL                         R4 2
       12 GETUPVAL                         R6 3
       13 GETTABLEKS                       R5 R6 K4 ["sort"]
       15 CALL                             R3 2 0
       16 GETUPVAL                         R3 2
       17 SETTABLEKS                       R3 R1 K5 ["loadedAssets"]
       19 JUMP                             ; [+25]
       20 GETTABLEKS                       R5 R0 K5 ["loadedAssets"]
       22 JUMPIFNOTEQKNIL                  R5 ; [+2]
       24 LOADB                            R4 0 +1
       25 LOADB                            R4 1
       26 FASTCALL2K                       ASSERT R4 K6 ; [+4]
       28 LOADK                            R5 K6 ["Trying to append the next page with no initial page loaded"]
       29 GETIMPORT                        R3 K8 [assert]
       31 CALL                             R3 2 0
       32 GETUPVAL                         R3 4
       33 GETTABLEKS                       R4 R0 K5 ["loadedAssets"]
       35 GETUPVAL                         R5 2
       36 CALL                             R3 2 1
       37 GETUPVAL                         R4 1
       38 MOVE                             R5 R3
       39 GETUPVAL                         R7 3
       40 GETTABLEKS                       R6 R7 K4 ["sort"]
       42 CALL                             R4 2 0
       43 SETTABLEKS                       R3 R1 K5 ["loadedAssets"]
       45 GETUPVAL                         R3 5
       46 SETTABLEKS                       R3 R1 K9 ["loadingStates"]
       48 RETURN                           R1 1

PROTO_3:
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
       42 NEWCLOSURE                       R3 P0
       43 CAPTURE                          UPVAL U2
       44 CAPTURE                          UPVAL U6
       45 CAPTURE                          VAL R0
       46 CAPTURE                          UPVAL U1
       47 CAPTURE                          UPVAL U7
       48 CAPTURE                          UPVAL U8
       49 CALL                             R2 1 0
       50 GETUPVAL                         R2 9
       51 DUPTABLE                         R3 K14 [{"nextPageToken", "isPageLoading"}]
       52 SETTABLEKS                       R1 R3 K12 ["nextPageToken"]
       54 LOADB                            R4 0
       55 SETTABLEKS                       R4 R3 K13 ["isPageLoading"]
       57 SETTABLEKS                       R3 R2 K11 ["current"]
       59 RETURN                           R0 0

PROTO_4:
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
       36 CAPTURE                          UPVAL U4
       37 CAPTURE                          UPVAL U5
       38 CAPTURE                          UPVAL U6
       39 CAPTURE                          UPVAL U7
       40 CAPTURE                          UPVAL U2
       41 CALL                             R2 1 0
       42 RETURN                           R0 0

PROTO_5:
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

PROTO_6:
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
       18 DUPCLOSURE                       R2 K3 [PROTO_5]
       19 CALL                             R1 1 0
       20 GETUPVAL                         R1 2
       21 CALL                             R1 0 0
       22 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["loadedAssets"]
        2 JUMPIFNOTEQKNIL                  R1 ; [+2]
        4 RETURN                           R0 1
        5 GETIMPORT                        R1 K3 [table.clone]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 1
        9 GETIMPORT                        R2 K3 [table.clone]
       11 GETTABLEKS                       R3 R0 K0 ["loadedAssets"]
       13 CALL                             R2 1 1
       14 SETTABLEKS                       R2 R1 K0 ["loadedAssets"]
       16 GETTABLEKS                       R3 R1 K0 ["loadedAssets"]
       18 FASTCALL2K                       ASSERT R3 K4 ; [+4]
       20 LOADK                            R4 K4 ["Somehow, loadedAssets became nil after cloning"]
       21 GETIMPORT                        R2 K6 [assert]
       23 CALL                             R2 2 0
       24 GETUPVAL                         R2 0
       25 GETTABLEKS                       R3 R1 K0 ["loadedAssets"]
       27 GETUPVAL                         R4 1
       28 CALL                             R2 2 0
       29 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 SETTABLEKS                       R2 R1 K3 ["queryKey"]
        7 GETUPVAL                         R2 1
        8 SETTABLEKS                       R2 R1 K4 ["loadingStates"]
       10 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["scope"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R0 1
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R1 R2 K1 ["queryKey"]
       10 GETUPVAL                         R2 0
       11 CALL                             R0 2 1
       12 GETUPVAL                         R1 3
       13 NEWCLOSURE                       R2 P0
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          VAL R0
       16 CALL                             R1 1 0
       17 GETTABLEKS                       R1 R0 K2 ["Sort"]
       19 JUMPIFNOT                        R1 ; [+12]
       20 GETTABLEKS                       R1 R0 K3 ["Scope"]
       22 JUMPIF                           R1 ; [+9]
       23 GETTABLEKS                       R1 R0 K4 ["Search"]
       25 JUMPIF                           R1 ; [+6]
       26 GETUPVAL                         R1 4
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R2 R3 K5 ["sort"]
       30 CALL                             R1 1 0
       31 RETURN                           R0 0
       32 GETUPVAL                         R1 5
       33 DUPTABLE                         R2 K8 [{"nextPageToken", "isPageLoading"}]
       34 LOADK                            R3 K9 [""]
       35 SETTABLEKS                       R3 R2 K6 ["nextPageToken"]
       37 LOADB                            R3 1
       38 SETTABLEKS                       R3 R2 K7 ["isPageLoading"]
       40 SETTABLEKS                       R2 R1 K10 ["current"]
       42 GETUPVAL                         R1 6
       43 CALL                             R1 0 0
       44 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K2 ["useMemo"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R1
       13 NEWTABLE                         R4 0 4
       15 GETTABLEKS                       R5 R0 K3 ["assetType"]
       17 GETTABLEKS                       R6 R0 K4 ["scope"]
       19 GETTABLEKS                       R7 R0 K5 ["search"]
       21 GETTABLEKS                       R8 R1 K6 ["sort"]
       23 SETLIST                          R4 R5 4 [1]
       25 CALL                             R2 2 1
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R3 R4 K7 ["useState"]
       29 DUPTABLE                         R4 K11 [{"loadedAssets", "queryKey", "loadingStates"}]
       30 LOADNIL                          R5
       31 SETTABLEKS                       R5 R4 K8 ["loadedAssets"]
       33 SETTABLEKS                       R2 R4 K9 ["queryKey"]
       35 GETUPVAL                         R5 2
       36 SETTABLEKS                       R5 R4 K10 ["loadingStates"]
       38 CALL                             R3 1 2
       39 GETUPVAL                         R6 0
       40 GETTABLEKS                       R5 R6 K12 ["useRef"]
       42 LOADN                            R6 0
       43 CALL                             R5 1 1
       44 GETUPVAL                         R7 0
       45 GETTABLEKS                       R6 R7 K12 ["useRef"]
       47 DUPTABLE                         R7 K15 [{"nextPageToken", "isPageLoading"}]
       48 LOADK                            R8 K16 [""]
       49 SETTABLEKS                       R8 R7 K13 ["nextPageToken"]
       51 LOADB                            R8 0
       52 SETTABLEKS                       R8 R7 K14 ["isPageLoading"]
       54 CALL                             R6 1 1
       55 GETUPVAL                         R8 0
       56 GETTABLEKS                       R7 R8 K17 ["useCallback"]
       58 NEWCLOSURE                       R8 P1
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R6
       62 CAPTURE                          VAL R0
       63 CAPTURE                          VAL R4
       64 CAPTURE                          UPVAL U3
       65 CAPTURE                          UPVAL U4
       66 CAPTURE                          UPVAL U2
       67 NEWTABLE                         R9 0 2
       69 MOVE                             R10 R2
       70 GETTABLEKS                       R12 R0 K18 ["networking"]
       72 GETTABLEKS                       R11 R12 K19 ["fetchAssetsByScopeAsync"]
       74 SETLIST                          R9 R10 2 [1]
       76 CALL                             R7 2 1
       77 GETUPVAL                         R9 0
       78 GETTABLEKS                       R8 R9 K17 ["useCallback"]
       80 NEWCLOSURE                       R9 P2
       81 CAPTURE                          VAL R6
       82 CAPTURE                          VAL R4
       83 CAPTURE                          VAL R7
       84 NEWTABLE                         R10 0 1
       86 MOVE                             R11 R7
       87 SETLIST                          R10 R11 1 [1]
       89 CALL                             R8 2 1
       90 GETUPVAL                         R10 0
       91 GETTABLEKS                       R9 R10 K17 ["useCallback"]
       93 NEWCLOSURE                       R10 P3
       94 CAPTURE                          VAL R4
       95 CAPTURE                          UPVAL U3
       96 NEWTABLE                         R11 0 0
       98 CALL                             R9 2 1
       99 GETUPVAL                         R11 0
      100 GETTABLEKS                       R10 R11 K20 ["useEffect"]
      102 NEWCLOSURE                       R11 P4
      103 CAPTURE                          VAL R2
      104 CAPTURE                          UPVAL U5
      105 CAPTURE                          VAL R3
      106 CAPTURE                          VAL R4
      107 CAPTURE                          VAL R9
      108 CAPTURE                          VAL R6
      109 CAPTURE                          VAL R7
      110 NEWTABLE                         R12 0 2
      112 MOVE                             R13 R2
      113 GETUPVAL                         R14 5
      114 SETLIST                          R12 R13 2 [1]
      116 CALL                             R10 2 0
      117 DUPTABLE                         R10 K22 [{"loadedAssets", "loadingStates", "scrollMoreAssets"}]
      118 GETTABLEKS                       R11 R3 K8 ["loadedAssets"]
      120 SETTABLEKS                       R11 R10 K8 ["loadedAssets"]
      122 GETTABLEKS                       R11 R3 K10 ["loadingStates"]
      124 SETTABLEKS                       R11 R10 K10 ["loadingStates"]
      126 SETTABLEKS                       R8 R10 K21 ["scrollMoreAssets"]
      128 RETURN                           R10 1

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
       27 GETTABLEKS                       R7 R1 K10 ["Contexts"]
       29 GETTABLEKS                       R6 R7 K11 ["ViewContext"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K7 [require]
       34 GETTABLEKS                       R8 R1 K12 ["Util"]
       36 GETTABLEKS                       R7 R8 K13 ["mergedList"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K7 [require]
       41 GETTABLEKS                       R9 R1 K12 ["Util"]
       43 GETTABLEKS                       R8 R9 K14 ["sortAssets"]
       45 CALL                             R7 1 1
       46 DUPTABLE                         R8 K19 [{"Scroll", "Scope", "Search", "Sort"}]
       47 LOADB                            R9 0
       48 SETTABLEKS                       R9 R8 K15 ["Scroll"]
       50 LOADB                            R9 0
       51 SETTABLEKS                       R9 R8 K16 ["Scope"]
       53 LOADB                            R9 0
       54 SETTABLEKS                       R9 R8 K17 ["Search"]
       56 LOADB                            R9 0
       57 SETTABLEKS                       R9 R8 K18 ["Sort"]
       59 DUPCLOSURE                       R9 K20 [PROTO_0]
       60 DUPCLOSURE                       R10 K21 [PROTO_11]
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R7
       65 CAPTURE                          VAL R6
       66 CAPTURE                          VAL R9
       67 RETURN                           R10 1
