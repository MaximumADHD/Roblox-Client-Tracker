PROTO_0:
        0 LOADB                            R2 0
        1 JUMPIFNOTEQKS                    R1 K0 [""] ; [+7]
        3 GETTABLEKS                       R3 R0 K1 ["search"]
        5 JUMPIFEQKS                       R3 K0 [""] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 RETURN                           R2 1

PROTO_1:
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
       37 DUPTABLE                         R4 K9 [{"Scroll", "Scope", "Search"}]
       38 LOADB                            R5 0
       39 SETTABLEKS                       R5 R4 K6 ["Scroll"]
       41 SETTABLEKS                       R2 R4 K7 ["Scope"]
       43 SETTABLEKS                       R3 R4 K8 ["Search"]
       45 RETURN                           R4 1

PROTO_2:
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

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["scope"]
        3 JUMPIFNOT                        R1 ; [+21]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R3 R2 K1 ["search"]
        7 JUMPIFEQKS                       R3 K2 [""] ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 JUMPIFNOT                        R1 ; [+13]
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R0 R1 K3 ["getAssets"]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R2 R3 K0 ["scope"]
       18 GETTABLEKS                       R1 R2 K4 ["uniqueId"]
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R2 R3 K5 ["assetType"]
       23 CALL                             R0 2 1
       24 JUMP                             ; [+1]
       25 LOADNIL                          R0
       26 JUMPIFNOTEQKNIL                  R0 ; [+12]
       28 DUPTABLE                         R1 K9 [{"loadedAssets", "queryKey", "loadingStates"}]
       29 LOADNIL                          R2
       30 SETTABLEKS                       R2 R1 K6 ["loadedAssets"]
       32 GETUPVAL                         R2 0
       33 SETTABLEKS                       R2 R1 K7 ["queryKey"]
       35 GETUPVAL                         R2 2
       36 SETTABLEKS                       R2 R1 K8 ["loadingStates"]
       38 RETURN                           R1 1
       39 GETIMPORT                        R1 K12 [table.clone]
       41 MOVE                             R2 R0
       42 CALL                             R1 1 1
       43 GETUPVAL                         R2 3
       44 MOVE                             R3 R1
       45 GETUPVAL                         R5 4
       46 GETTABLEKS                       R4 R5 K13 ["sort"]
       48 CALL                             R2 2 0
       49 DUPTABLE                         R2 K9 [{"loadedAssets", "queryKey", "loadingStates"}]
       50 SETTABLEKS                       R1 R2 K6 ["loadedAssets"]
       52 GETUPVAL                         R3 0
       53 SETTABLEKS                       R3 R2 K7 ["queryKey"]
       55 GETUPVAL                         R3 2
       56 SETTABLEKS                       R3 R2 K8 ["loadingStates"]
       58 RETURN                           R2 1

PROTO_4:
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

PROTO_5:
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
       41 GETUPVAL                         R3 1
       42 GETUPVAL                         R4 2
       43 LOADB                            R2 0
       44 JUMPIFNOTEQKS                    R4 K12 [""] ; [+7]
       46 GETTABLEKS                       R5 R3 K5 ["search"]
       48 JUMPIFEQKS                       R5 K12 [""] ; [+2]
       50 LOADB                            R2 0 +1
       51 LOADB                            R2 1
       52 JUMPIFNOT                        R2 ; [+13]
       53 GETUPVAL                         R3 5
       54 GETTABLEKS                       R2 R3 K13 ["setAssets"]
       56 GETUPVAL                         R5 1
       57 GETTABLEKS                       R4 R5 K8 ["scope"]
       59 GETTABLEKS                       R3 R4 K14 ["uniqueId"]
       61 GETUPVAL                         R5 1
       62 GETTABLEKS                       R4 R5 K2 ["assetType"]
       64 MOVE                             R5 R0
       65 CALL                             R2 3 0
       66 GETUPVAL                         R2 6
       67 SETTABLEKS                       R1 R2 K11 ["current"]
       69 GETUPVAL                         R2 7
       70 NEWCLOSURE                       R3 P0
       71 CAPTURE                          UPVAL U2
       72 CAPTURE                          UPVAL U8
       73 CAPTURE                          VAL R0
       74 CAPTURE                          UPVAL U9
       75 CAPTURE                          UPVAL U10
       76 CAPTURE                          UPVAL U11
       77 CALL                             R2 1 0
       78 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["scope"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R1 R2 K2 ["current"]
        9 ADDK                             R0 R1 K1 [1]
       10 GETUPVAL                         R1 1
       11 SETTABLEKS                       R0 R1 K2 ["current"]
       13 GETUPVAL                         R2 2
       14 GETTABLEKS                       R1 R2 K2 ["current"]
       16 JUMPIFNOTEQKNIL                  R1 ; [+2]
       18 LOADB                            R3 0 +1
       19 LOADB                            R3 1
       20 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       22 LOADK                            R4 K3 ["Trying to fetch assets without a page token"]
       23 GETIMPORT                        R2 K5 [assert]
       25 CALL                             R2 2 0
       26 GETIMPORT                        R2 K8 [task.spawn]
       28 NEWCLOSURE                       R3 P0
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          UPVAL U0
       31 CAPTURE                          VAL R1
       32 CAPTURE                          VAL R0
       33 CAPTURE                          UPVAL U1
       34 CAPTURE                          UPVAL U4
       35 CAPTURE                          UPVAL U2
       36 CAPTURE                          UPVAL U5
       37 CAPTURE                          UPVAL U6
       38 CAPTURE                          UPVAL U7
       39 CAPTURE                          UPVAL U8
       40 CAPTURE                          UPVAL U9
       41 CALL                             R2 1 0
       42 RETURN                           R0 0

PROTO_7:
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

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R1 ; [+2]
        5 LOADB                            R0 0 +1
        6 LOADB                            R0 1
        7 JUMPIF                           R0 ; [+1]
        8 RETURN                           R0 0
        9 GETUPVAL                         R1 1
       10 DUPCLOSURE                       R2 K1 [PROTO_7]
       11 CALL                             R1 1 0
       12 GETUPVAL                         R1 2
       13 CALL                             R1 0 0
       14 RETURN                           R0 0

PROTO_9:
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
       27 GETUPVAL                         R5 1
       28 GETTABLEKS                       R4 R5 K7 ["sort"]
       30 CALL                             R2 2 0
       31 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_11:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 SETTABLEKS                       R2 R1 K3 ["queryKey"]
        7 GETUPVAL                         R2 1
        8 JUMPIFEQKNIL                     R2 ; [+14]
       10 GETIMPORT                        R2 K2 [table.clone]
       12 GETUPVAL                         R3 1
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 2
       15 MOVE                             R4 R2
       16 GETUPVAL                         R6 3
       17 GETTABLEKS                       R5 R6 K4 ["sort"]
       19 CALL                             R3 2 0
       20 SETTABLEKS                       R2 R1 K5 ["loadedAssets"]
       22 RETURN                           R1 1
       23 GETUPVAL                         R2 4
       24 SETTABLEKS                       R2 R1 K6 ["loadingStates"]
       26 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["scope"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R0 1
        7 LOADK                            R1 K1 [""]
        8 SETTABLEKS                       R1 R0 K2 ["current"]
       10 GETUPVAL                         R2 0
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R3 R4 K2 ["current"]
       14 LOADB                            R1 0
       15 JUMPIFNOTEQKS                    R3 K1 [""] ; [+7]
       17 GETTABLEKS                       R4 R2 K3 ["search"]
       19 JUMPIFEQKS                       R4 K1 [""] ; [+2]
       21 LOADB                            R1 0 +1
       22 LOADB                            R1 1
       23 JUMPIFNOT                        R1 ; [+13]
       24 GETUPVAL                         R1 2
       25 GETTABLEKS                       R0 R1 K4 ["getAssets"]
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R2 R3 K0 ["scope"]
       30 GETTABLEKS                       R1 R2 K5 ["uniqueId"]
       32 GETUPVAL                         R3 0
       33 GETTABLEKS                       R2 R3 K6 ["assetType"]
       35 CALL                             R0 2 1
       36 JUMP                             ; [+1]
       37 LOADNIL                          R0
       38 GETUPVAL                         R1 3
       39 GETUPVAL                         R3 4
       40 GETTABLEKS                       R2 R3 K7 ["queryKey"]
       42 GETUPVAL                         R3 0
       43 CALL                             R1 2 1
       44 GETUPVAL                         R2 5
       45 NEWCLOSURE                       R3 P0
       46 CAPTURE                          UPVAL U0
       47 CAPTURE                          VAL R0
       48 CAPTURE                          UPVAL U6
       49 CAPTURE                          UPVAL U7
       50 CAPTURE                          VAL R1
       51 CALL                             R2 1 0
       52 GETUPVAL                         R2 8
       53 CALL                             R2 0 0
       54 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K0 ["useContext"]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R3 R4 K1 ["Context"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R3 R4 K2 ["useRef"]
       17 LOADK                            R4 K3 [""]
       18 CALL                             R3 1 1
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R4 R5 K2 ["useRef"]
       22 LOADN                            R5 0
       23 CALL                             R4 1 1
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R5 R6 K4 ["useMemo"]
       27 NEWCLOSURE                       R6 P0
       28 CAPTURE                          VAL R0
       29 NEWTABLE                         R7 0 3
       31 GETTABLEKS                       R8 R0 K5 ["assetType"]
       33 GETTABLEKS                       R9 R0 K6 ["scope"]
       35 JUMPIFNOT                        R9 ; [+4]
       36 GETTABLEKS                       R10 R0 K6 ["scope"]
       38 GETTABLEKS                       R9 R10 K7 ["uniqueId"]
       40 GETTABLEKS                       R10 R0 K8 ["search"]
       42 SETLIST                          R7 R8 3 [1]
       44 CALL                             R5 2 1
       45 GETUPVAL                         R7 0
       46 GETTABLEKS                       R6 R7 K9 ["useState"]
       48 NEWCLOSURE                       R7 P1
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R1
       51 CAPTURE                          UPVAL U3
       52 CAPTURE                          UPVAL U4
       53 CAPTURE                          VAL R2
       54 CALL                             R6 1 2
       55 GETUPVAL                         R9 0
       56 GETTABLEKS                       R8 R9 K10 ["useCallback"]
       58 NEWCLOSURE                       R9 P2
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R0
       63 CAPTURE                          VAL R1
       64 CAPTURE                          VAL R7
       65 CAPTURE                          UPVAL U4
       66 CAPTURE                          VAL R2
       67 CAPTURE                          UPVAL U5
       68 CAPTURE                          UPVAL U3
       69 NEWTABLE                         R10 0 2
       71 MOVE                             R11 R5
       72 GETTABLEKS                       R12 R2 K11 ["sort"]
       74 SETLIST                          R10 R11 2 [1]
       76 CALL                             R8 2 1
       77 GETUPVAL                         R10 0
       78 GETTABLEKS                       R9 R10 K10 ["useCallback"]
       80 NEWCLOSURE                       R10 P3
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R7
       83 CAPTURE                          VAL R8
       84 NEWTABLE                         R11 0 1
       86 MOVE                             R12 R8
       87 SETLIST                          R11 R12 1 [1]
       89 CALL                             R9 2 1
       90 GETUPVAL                         R11 0
       91 GETTABLEKS                       R10 R11 K12 ["useEffect"]
       93 NEWCLOSURE                       R11 P4
       94 CAPTURE                          VAL R7
       95 CAPTURE                          UPVAL U4
       96 CAPTURE                          VAL R2
       97 NEWTABLE                         R12 0 1
       99 GETTABLEKS                       R13 R2 K11 ["sort"]
      101 SETLIST                          R12 R13 1 [1]
      103 CALL                             R10 2 0
      104 GETUPVAL                         R11 0
      105 GETTABLEKS                       R10 R11 K12 ["useEffect"]
      107 NEWCLOSURE                       R11 P5
      108 CAPTURE                          VAL R5
      109 CAPTURE                          VAL R3
      110 CAPTURE                          VAL R1
      111 CAPTURE                          UPVAL U6
      112 CAPTURE                          VAL R6
      113 CAPTURE                          VAL R7
      114 CAPTURE                          UPVAL U4
      115 CAPTURE                          VAL R2
      116 CAPTURE                          VAL R8
      117 NEWTABLE                         R12 0 1
      119 MOVE                             R13 R5
      120 SETLIST                          R12 R13 1 [1]
      122 CALL                             R10 2 0
      123 DUPTABLE                         R10 K16 [{"loadedAssets", "loadingStates", "scrollMoreAssets"}]
      124 GETTABLEKS                       R11 R6 K13 ["loadedAssets"]
      126 SETTABLEKS                       R11 R10 K13 ["loadedAssets"]
      128 GETTABLEKS                       R11 R6 K14 ["loadingStates"]
      130 SETTABLEKS                       R11 R10 K14 ["loadingStates"]
      132 SETTABLEKS                       R9 R10 K15 ["scrollMoreAssets"]
      134 RETURN                           R10 1

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
       17 GETTABLEKS                       R5 R1 K8 ["Contexts"]
       19 GETTABLEKS                       R4 R5 K9 ["AssetCacheContext"]
       21 CALL                             R3 1 1
       22 GETIMPORT                        R4 K7 [require]
       24 GETTABLEKS                       R5 R2 K10 ["React"]
       26 CALL                             R4 1 1
       27 GETIMPORT                        R5 K7 [require]
       29 GETTABLEKS                       R7 R1 K8 ["Contexts"]
       31 GETTABLEKS                       R6 R7 K11 ["SortContext"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K7 [require]
       36 GETTABLEKS                       R7 R1 K12 ["Types"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K7 [require]
       41 GETTABLEKS                       R9 R1 K13 ["Util"]
       43 GETTABLEKS                       R8 R9 K14 ["mergedList"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K7 [require]
       48 GETTABLEKS                       R10 R1 K13 ["Util"]
       50 GETTABLEKS                       R9 R10 K15 ["sortAssets"]
       52 CALL                             R8 1 1
       53 DUPTABLE                         R9 K19 [{"Scroll", "Scope", "Search"}]
       54 LOADB                            R10 0
       55 SETTABLEKS                       R10 R9 K16 ["Scroll"]
       57 LOADB                            R10 0
       58 SETTABLEKS                       R10 R9 K17 ["Scope"]
       60 LOADB                            R10 0
       61 SETTABLEKS                       R10 R9 K18 ["Search"]
       63 DUPCLOSURE                       R10 K20 [PROTO_0]
       64 DUPCLOSURE                       R11 K21 [PROTO_1]
       65 DUPCLOSURE                       R12 K22 [PROTO_13]
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R5
       69 CAPTURE                          VAL R9
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R11
       73 RETURN                           R12 1
