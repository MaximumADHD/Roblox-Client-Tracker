PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["TextDocumentAssetEditor.PlayDataModelChanged"]
        2 LOADK                            R3 K1 ["started %*"]
        3 GETUPVAL                         R5 1
        4 NAMECALL                         R3 R3 K2 ["format"]
        6 CALL                             R3 2 1
        7 NAMECALL                         R0 R0 K3 ["Fire"]
        9 CALL                             R0 3 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 LOADK                            R2 K1 ["TextDocumentAssetEditor.PlayDataModelChanged"]
        6 LOADK                            R3 K2 ["ended %*"]
        7 GETUPVAL                         R5 2
        8 NAMECALL                         R3 R3 K3 ["format"]
       10 CALL                             R3 2 1
       11 NAMECALL                         R0 R0 K4 ["Fire"]
       13 CALL                             R0 3 0
       14 RETURN                           R0 0

PROTO_2:
        0 LOADK                            R3 K0 ["TextDocument"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+2]
        5 LOADB                            R1 0
        6 RETURN                           R1 1
        7 GETTABLEKS                       R1 R0 K2 ["TextContent"]
        9 GETTABLEKS                       R1 R1 K3 ["SourceType"]
       11 LOADB                            R2 0
       12 GETIMPORT                        R3 K7 [Enum.ContentSourceType.None]
       14 JUMPIFEQ                         R1 R3 ; [+7]
       16 GETIMPORT                        R3 K9 [Enum.ContentSourceType.Uri]
       18 JUMPIFNOTEQ                      R1 R3 ; [+2]
       20 LOADB                            R2 0 +1
       21 LOADB                            R2 1
       22 RETURN                           R2 1

PROTO_3:
        0 GETIMPORT                        R0 K1 [next]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 1
        4 JUMPIFEQKNIL                     R0 ; [+3]
        6 LOADNIL                          R0
        7 RETURN                           R0 1
        8 GETUPVAL                         R0 1
        9 NAMECALL                         R0 R0 K2 ["Get"]
       11 CALL                             R0 1 1
       12 LENGTH                           R1 R0
       13 JUMPIFNOTEQKN                    R1 K3 [1] ; [+27]
       15 GETTABLEN                        R2 R0 1
       16 LOADK                            R5 K4 ["TextDocument"]
       17 NAMECALL                         R3 R2 K5 ["IsA"]
       19 CALL                             R3 2 1
       20 JUMPIF                           R3 ; [+2]
       21 LOADB                            R1 0
       22 JUMP                             ; [+15]
       23 GETTABLEKS                       R3 R2 K6 ["TextContent"]
       25 GETTABLEKS                       R3 R3 K7 ["SourceType"]
       27 LOADB                            R1 0
       28 GETIMPORT                        R4 K11 [Enum.ContentSourceType.None]
       30 JUMPIFEQ                         R3 R4 ; [+7]
       32 GETIMPORT                        R4 K13 [Enum.ContentSourceType.Uri]
       34 JUMPIFNOTEQ                      R3 R4 ; [+2]
       36 LOADB                            R1 0 +1
       37 LOADB                            R1 1
       38 JUMPIFNOT                        R1 ; [+2]
       39 GETTABLEN                        R1 R0 1
       40 RETURN                           R1 1
       41 LOADNIL                          R1
       42 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{"Uri", "Enabled"}]
        2 GETUPVAL                         R3 1
        3 SETTABLEKS                       R3 R2 K0 ["Uri"]
        5 GETUPVAL                         R3 2
        6 SETTABLEKS                       R3 R2 K1 ["Enabled"]
        8 NAMECALL                         R0 R0 K3 ["UpdateAsync"]
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 JUMPIFEQ                         R0 R1 ; [+32]
        4 GETUPVAL                         R0 2
        5 JUMPIF                           R0 ; [+29]
        6 GETUPVAL                         R0 1
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          VAL R0
       11 FASTPCALL                        pcall 1 ; [+2]
       12 GETIMPORT                        R1 K1 [pcall]
       14 CALL                             R1 1 2
       15 JUMPIF                           R1 ; [+17]
       16 GETUPVAL                         R3 5
       17 JUMPIF                           R3 ; [+17]
       18 LOADB                            R3 1
       19 SETUPVAL                         R3 5
       20 GETIMPORT                        R3 K3 [warn]
       22 LOADK                            R4 K4 ["[TextDocumentAssetEditor] Could not update the Upload to Asset action: %*"]
       23 FASTCALL1                        TOSTRING R2 ; [+3]
       24 MOVE                             R7 R2
       25 GETIMPORT                        R6 K6 [tostring]
       27 CALL                             R6 1 1
       28 NAMECALL                         R4 R4 K7 ["format"]
       30 CALL                             R4 2 1
       31 CALL                             R3 1 0
       32 JUMP                             ; [+2]
       33 SETUPVAL                         R0 0
       34 JUMPBACK                         ; [-35]
       35 LOADB                            R0 0
       36 SETUPVAL                         R0 6
       37 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R2 K1 [next]
        2 GETUPVAL                         R3 1
        3 CALL                             R2 1 1
        4 JUMPIFEQKNIL                     R2 ; [+3]
        6 LOADNIL                          R1
        7 JUMP                             ; [+34]
        8 GETUPVAL                         R2 2
        9 NAMECALL                         R2 R2 K2 ["Get"]
       11 CALL                             R2 1 1
       12 LENGTH                           R3 R2
       13 JUMPIFNOTEQKN                    R3 K3 [1] ; [+27]
       15 GETTABLEN                        R4 R2 1
       16 LOADK                            R7 K4 ["TextDocument"]
       17 NAMECALL                         R5 R4 K5 ["IsA"]
       19 CALL                             R5 2 1
       20 JUMPIF                           R5 ; [+2]
       21 LOADB                            R3 0
       22 JUMP                             ; [+15]
       23 GETTABLEKS                       R5 R4 K6 ["TextContent"]
       25 GETTABLEKS                       R5 R5 K7 ["SourceType"]
       27 LOADB                            R3 0
       28 GETIMPORT                        R6 K11 [Enum.ContentSourceType.None]
       30 JUMPIFEQ                         R5 R6 ; [+7]
       32 GETIMPORT                        R6 K13 [Enum.ContentSourceType.Uri]
       34 JUMPIFNOTEQ                      R5 R6 ; [+2]
       36 LOADB                            R3 0 +1
       37 LOADB                            R3 1
       38 JUMPIFNOT                        R3 ; [+2]
       39 GETTABLEN                        R1 R2 1
       40 JUMP                             ; [+1]
       41 LOADNIL                          R1
       42 JUMPIFNOTEQKNIL                  R1 ; [+2]
       44 LOADB                            R0 0 +1
       45 LOADB                            R0 1
       46 SETUPVAL                         R0 0
       47 GETUPVAL                         R0 3
       48 JUMPIF                           R0 ; [+4]
       49 GETUPVAL                         R0 4
       50 GETUPVAL                         R1 0
       51 JUMPIFNOTEQ                      R0 R1 ; [+2]
       53 RETURN                           R0 0
       54 LOADB                            R0 1
       55 SETUPVAL                         R0 3
       56 GETIMPORT                        R0 K16 [task.spawn]
       58 GETUPVAL                         R1 5
       59 CALL                             R0 1 0
       60 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+7]
        3 GETUPVAL                         R0 0
        4 NAMECALL                         R0 R0 K0 ["Disconnect"]
        6 CALL                             R0 1 0
        7 LOADNIL                          R0
        8 SETUPVAL                         R0 0
        9 GETUPVAL                         R0 1
       10 NAMECALL                         R0 R0 K1 ["Get"]
       12 CALL                             R0 1 1
       13 LENGTH                           R1 R0
       14 JUMPIFNOTEQKN                    R1 K2 [1] ; [+17]
       16 GETTABLEN                        R1 R0 1
       17 LOADK                            R3 K3 ["TextDocument"]
       18 NAMECALL                         R1 R1 K4 ["IsA"]
       20 CALL                             R1 2 1
       21 JUMPIFNOT                        R1 ; [+10]
       22 GETTABLEN                        R1 R0 1
       23 LOADK                            R3 K5 ["TextContent"]
       24 NAMECALL                         R1 R1 K6 ["GetPropertyChangedSignal"]
       26 CALL                             R1 2 1
       27 GETUPVAL                         R3 2
       28 NAMECALL                         R1 R1 K7 ["Connect"]
       30 CALL                             R1 2 1
       31 SETUPVAL                         R1 0
       32 GETIMPORT                        R3 K9 [next]
       34 GETUPVAL                         R4 4
       35 CALL                             R3 1 1
       36 JUMPIFEQKNIL                     R3 ; [+3]
       38 LOADNIL                          R2
       39 JUMP                             ; [+34]
       40 GETUPVAL                         R3 1
       41 NAMECALL                         R3 R3 K1 ["Get"]
       43 CALL                             R3 1 1
       44 LENGTH                           R4 R3
       45 JUMPIFNOTEQKN                    R4 K2 [1] ; [+27]
       47 GETTABLEN                        R5 R3 1
       48 LOADK                            R8 K3 ["TextDocument"]
       49 NAMECALL                         R6 R5 K4 ["IsA"]
       51 CALL                             R6 2 1
       52 JUMPIF                           R6 ; [+2]
       53 LOADB                            R4 0
       54 JUMP                             ; [+15]
       55 GETTABLEKS                       R6 R5 K5 ["TextContent"]
       57 GETTABLEKS                       R6 R6 K10 ["SourceType"]
       59 LOADB                            R4 0
       60 GETIMPORT                        R7 K14 [Enum.ContentSourceType.None]
       62 JUMPIFEQ                         R6 R7 ; [+7]
       64 GETIMPORT                        R7 K16 [Enum.ContentSourceType.Uri]
       66 JUMPIFNOTEQ                      R6 R7 ; [+2]
       68 LOADB                            R4 0 +1
       69 LOADB                            R4 1
       70 JUMPIFNOT                        R4 ; [+2]
       71 GETTABLEN                        R2 R3 1
       72 JUMP                             ; [+1]
       73 LOADNIL                          R2
       74 JUMPIFNOTEQKNIL                  R2 ; [+2]
       76 LOADB                            R1 0 +1
       77 LOADB                            R1 1
       78 SETUPVAL                         R1 3
       79 GETUPVAL                         R1 5
       80 JUMPIF                           R1 ; [+11]
       81 GETUPVAL                         R1 6
       82 GETUPVAL                         R2 3
       83 JUMPIFNOTEQ                      R1 R2 ; [+2]
       85 RETURN                           R0 0
       86 LOADB                            R1 1
       87 SETUPVAL                         R1 5
       88 GETIMPORT                        R1 K19 [task.spawn]
       90 GETUPVAL                         R2 7
       91 CALL                             R1 1 0
       92 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETIMPORT                        R3 K3 [Enum.AssetType.TextDocument]
        4 GETUPVAL                         R4 2
        5 NAMECALL                         R0 R0 K4 ["PromptSaveInstanceToRobloxAsync"]
        7 CALL                             R0 4 -1
        8 RETURN                           R0 -1

PROTO_9:
        0 GETIMPORT                        R2 K1 [game]
        2 GETTABLEKS                       R2 R2 K2 ["CreatorType"]
        4 GETIMPORT                        R3 K5 [Enum.CreatorType.Group]
        6 JUMPIFNOTEQ                      R2 R3 ; [+6]
        8 GETIMPORT                        R1 K1 [game]
       10 GETTABLEKS                       R1 R1 K6 ["CreatorId"]
       12 JUMP                             ; [+1]
       13 LOADNIL                          R1
       14 NEWCLOSURE                       R3 P0
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          VAL R0
       17 CAPTURE                          VAL R1
       18 FASTPCALL                        pcall 1 ; [+2]
       19 GETIMPORT                        R2 K8 [pcall]
       21 CALL                             R2 1 2
       22 GETUPVAL                         R4 1
       23 JUMPIFNOT                        R4 ; [+2]
       24 LOADNIL                          R4
       25 RETURN                           R4 1
       26 JUMPIF                           R2 ; [+19]
       27 JUMPIFEQKS                       R3 K9 ["User cancelled"] ; [+16]
       29 GETIMPORT                        R4 K11 [warn]
       31 LOADK                            R5 K12 ["[TextDocumentAssetEditor] Could not upload %*: %*"]
       32 NAMECALL                         R7 R0 K13 ["GetFullName"]
       34 CALL                             R7 1 1
       35 FASTCALL1                        TOSTRING R3 ; [+3]
       36 MOVE                             R9 R3
       37 GETIMPORT                        R8 K15 [tostring]
       39 CALL                             R8 1 1
       40 NAMECALL                         R5 R5 K16 ["format"]
       42 CALL                             R5 3 1
       43 CALL                             R4 1 0
       44 LOADNIL                          R4
       45 RETURN                           R4 1
       46 FASTCALL1                        TYPEOF R3 ; [+3]
       47 MOVE                             R5 R3
       48 GETIMPORT                        R4 K18 [typeof]
       50 CALL                             R4 1 1
       51 JUMPIFEQKS                       R4 K19 ["number"] ; [+13]
       53 GETIMPORT                        R4 K11 [warn]
       55 LOADK                            R5 K20 ["[TextDocumentAssetEditor] Upload of %* returned no asset id"]
       56 NAMECALL                         R7 R0 K13 ["GetFullName"]
       58 CALL                             R7 1 1
       59 NAMECALL                         R5 R5 K16 ["format"]
       61 CALL                             R5 2 1
       62 CALL                             R4 1 0
       63 LOADNIL                          R4
       64 RETURN                           R4 1
       65 RETURN                           R3 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AssetAccessController"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 1
        5 JUMPIFNOTEQKNIL                  R0 ; [+6]
        7 GETIMPORT                        R1 K3 [error]
        9 LOADK                            R2 K4 ["AssetAccessController is unavailable"]
       10 LOADN                            R3 0
       11 CALL                             R1 2 0
       12 NEWTABLE                         R3 0 1
       14 GETUPVAL                         R4 1
       15 SETLIST                          R3 R4 1 [1]
       17 NAMECALL                         R1 R0 K5 ["ShareAccessToAssetsAsync"]
       19 CALL                             R1 2 1
       20 GETIMPORT                        R2 K8 [table.find]
       22 MOVE                             R3 R1
       23 GETUPVAL                         R4 1
       24 CALL                             R2 2 1
       25 JUMPIFNOT                        R2 ; [+5]
       26 GETIMPORT                        R2 K3 [error]
       28 LOADK                            R3 K9 ["the share was refused"]
       29 LOADN                            R4 0
       30 CALL                             R2 2 0
       31 RETURN                           R0 0

PROTO_11:
        0 GETIMPORT                        R2 K1 [game]
        2 GETTABLEKS                       R2 R2 K2 ["GameId"]
        4 JUMPIFNOTEQKN                    R2 K3 [0] ; [+2]
        6 RETURN                           R0 0
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          VAL R1
       10 FASTPCALL                        pcall 1 ; [+2]
       11 GETIMPORT                        R2 K5 [pcall]
       13 CALL                             R2 1 2
       14 JUMPIF                           R2 ; [+21]
       15 GETIMPORT                        R4 K7 [warn]
       17 LOADK                            R6 K8 ["[TextDocumentAssetEditor] Could not grant this experience access to asset %*, uploaded from "]
       18 MOVE                             R8 R1
       19 NAMECALL                         R6 R6 K9 ["format"]
       21 CALL                             R6 2 1
       22 LOADK                            R7 K10 ["%*, so it may not load: %*"]
       23 NAMECALL                         R9 R0 K11 ["GetFullName"]
       25 CALL                             R9 1 1
       26 FASTCALL1                        TOSTRING R3 ; [+3]
       27 MOVE                             R11 R3
       28 GETIMPORT                        R10 K13 [tostring]
       30 CALL                             R10 1 1
       31 NAMECALL                         R7 R7 K9 ["format"]
       33 CALL                             R7 3 1
       34 CONCAT                           R5 R6 R7
       35 CALL                             R4 1 0
       36 RETURN                           R0 0

PROTO_12:
        0 LOADB                            R2 1
        1 SETUPVAL                         R2 0
        2 SETUPVAL                         R0 1
        3 SETUPVAL                         R1 2
        4 GETUPVAL                         R2 3
        5 JUMPIFEQKNIL                     R2 ; [+5]
        7 GETIMPORT                        R2 K2 [task.spawn]
        9 GETUPVAL                         R3 3
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K5 [{[1], ["Method"] = "POST", ["Headers"], ["Body"]}]
        2 GETUPVAL                         R3 1
        3 SETTABLEKS                       R3 R2 K0 ["Url"]
        5 NEWTABLE                         R3 1 0
        7 LOADK                            R4 K6 ["application/json"]
        8 SETTABLEKS                       R4 R3 K7 ["Content-Type"]
       10 SETTABLEKS                       R3 R2 K3 ["Headers"]
       12 GETUPVAL                         R3 0
       13 DUPTABLE                         R5 K11 [{["assetIds"], ["versionStatus"] = "Any"}]
       14 NEWTABLE                         R6 0 1
       16 GETUPVAL                         R7 2
       17 SETLIST                          R6 R7 1 [1]
       19 SETTABLEKS                       R6 R5 K8 ["assetIds"]
       21 NAMECALL                         R3 R3 K12 ["JSONEncode"]
       23 CALL                             R3 2 1
       24 SETTABLEKS                       R3 R2 K4 ["Body"]
       26 NAMECALL                         R0 R0 K13 ["RequestInternal"]
       28 CALL                             R0 2 1
       29 LOADB                            R1 0
       30 LOADB                            R2 0
       31 LOADNIL                          R3
       32 LOADNIL                          R4
       33 NEWCLOSURE                       R7 P0
       34 CAPTURE                          REF R1
       35 CAPTURE                          REF R2
       36 CAPTURE                          REF R3
       37 CAPTURE                          REF R4
       38 NAMECALL                         R5 R0 K14 ["Start"]
       40 CALL                             R5 2 0
       41 JUMPIF                           R1 ; [+7]
       42 GETIMPORT                        R5 K17 [coroutine.running]
       44 CALL                             R5 0 1
       45 MOVE                             R4 R5
       46 GETIMPORT                        R5 K19 [coroutine.yield]
       48 CALL                             R5 0 0
       49 JUMPIFNOT                        R2 ; [+7]
       50 FASTCALL1                        TYPE R3 ; [+3]
       51 MOVE                             R6 R3
       52 GETIMPORT                        R5 K21 [type]
       54 CALL                             R5 1 1
       55 JUMPIFEQKS                       R5 K22 ["table"] ; [+7]
       57 GETIMPORT                        R5 K24 [error]
       59 LOADK                            R6 K25 ["the request failed"]
       60 LOADN                            R7 0
       61 CALL                             R5 2 0
       62 JUMP                             ; [+14]
       63 GETTABLEKS                       R5 R3 K26 ["StatusCode"]
       65 JUMPIFEQKN                       R5 K27 [200] ; [+11]
       67 GETIMPORT                        R5 K24 [error]
       69 LOADK                            R6 K28 ["HTTP %*"]
       70 GETTABLEKS                       R8 R3 K26 ["StatusCode"]
       72 NAMECALL                         R6 R6 K29 ["format"]
       74 CALL                             R6 2 1
       75 LOADN                            R7 0
       76 CALL                             R5 2 0
       77 GETUPVAL                         R5 0
       78 GETTABLEKS                       R7 R3 K4 ["Body"]
       80 NAMECALL                         R5 R5 K30 ["JSONDecode"]
       82 CALL                             R5 2 1
       83 GETTABLEKS                       R8 R5 K31 ["data"]
       85 FASTCALL1                        TYPE R8 ; [+2]
       86 GETIMPORT                        R7 K21 [type]
       88 CALL                             R7 1 1
       89 JUMPIFNOTEQKS                    R7 K22 ["table"] ; [+4]
       91 GETTABLEKS                       R6 R5 K31 ["data"]
       93 JUMP                             ; [+12]
       94 GETTABLEKS                       R8 R5 K32 ["results"]
       96 FASTCALL1                        TYPE R8 ; [+2]
       97 GETIMPORT                        R7 K21 [type]
       99 CALL                             R7 1 1
      100 JUMPIFNOTEQKS                    R7 K22 ["table"] ; [+4]
      102 GETTABLEKS                       R6 R5 K32 ["results"]
      104 JUMP                             ; [+1]
      105 MOVE                             R6 R5
      106 MOVE                             R7 R6
      107 LOADNIL                          R8
      108 LOADNIL                          R9
      109 FORGPREP                         R7
      110 FASTCALL1                        TYPE R11 ; [+3]
      111 MOVE                             R13 R11
      112 GETIMPORT                        R12 K21 [type]
      114 CALL                             R12 1 1
      115 JUMPIFNOTEQKS                    R12 K22 ["table"] ; [+18]
      117 GETTABLEKS                       R12 R11 K33 ["assetId"]
      119 GETUPVAL                         R13 2
      120 JUMPIFNOTEQ                      R12 R13 ; [+13]
      122 GETTABLEKS                       R13 R11 K34 ["versionNumber"]
      124 FASTCALL1                        TYPE R13 ; [+2]
      125 GETIMPORT                        R12 K21 [type]
      127 CALL                             R12 1 1
      128 JUMPIFNOTEQKS                    R12 K35 ["number"] ; [+5]
      130 GETTABLEKS                       R12 R11 K34 ["versionNumber"]
      132 CLOSEUPVALS                      R1
      133 RETURN                           R12 1
      134 FORGLOOP                         R7 2 ; [-25]
      136 GETIMPORT                        R7 K24 [error]
      138 LOADK                            R8 K36 ["the response has no version for it"]
      139 LOADN                            R9 0
      140 CALL                             R7 2 0
      141 CLOSEUPVALS                      R1
      142 RETURN                           R0 0

PROTO_14:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R1
        4 FASTPCALL                        pcall 1 ; [+2]
        5 GETIMPORT                        R2 K1 [pcall]
        7 CALL                             R2 1 2
        8 GETUPVAL                         R4 2
        9 JUMPIFNOT                        R4 ; [+2]
       10 LOADNIL                          R4
       11 RETURN                           R4 1
       12 JUMPIF                           R2 ; [+23]
       13 GETIMPORT                        R4 K3 [warn]
       15 LOADK                            R6 K4 ["[TextDocumentAssetEditor] Could not read the version of asset %*, uploaded from "]
       16 MOVE                             R8 R1
       17 NAMECALL                         R6 R6 K5 ["format"]
       19 CALL                             R6 2 1
       20 LOADK                            R7 K6 ["%*, so it is bound unpinned: %*"]
       21 NAMECALL                         R9 R0 K7 ["GetFullName"]
       23 CALL                             R9 1 1
       24 FASTCALL1                        TOSTRING R3 ; [+3]
       25 MOVE                             R11 R3
       26 GETIMPORT                        R10 K9 [tostring]
       28 CALL                             R10 1 1
       29 NAMECALL                         R7 R7 K5 ["format"]
       31 CALL                             R7 3 1
       32 CONCAT                           R5 R6 R7
       33 CALL                             R4 1 0
       34 LOADNIL                          R4
       35 RETURN                           R4 1
       36 RETURN                           R3 1

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 0
        5 LOADB                            R2 1
        6 SETTABLE                         R2 R1 R0
        7 GETTABLEKS                       R1 R0 K0 ["TextContent"]
        9 GETUPVAL                         R2 1
       10 MOVE                             R3 R0
       11 CALL                             R2 1 1
       12 LOADNIL                          R3
       13 JUMPIFEQKNIL                     R2 ; [+14]
       15 GETUPVAL                         R4 2
       16 JUMPIF                           R4 ; [+11]
       17 GETUPVAL                         R4 3
       18 MOVE                             R5 R0
       19 MOVE                             R6 R2
       20 CALL                             R4 2 0
       21 GETUPVAL                         R4 2
       22 JUMPIF                           R4 ; [+5]
       23 GETUPVAL                         R4 4
       24 MOVE                             R5 R0
       25 MOVE                             R6 R2
       26 CALL                             R4 2 1
       27 MOVE                             R3 R4
       28 GETUPVAL                         R4 0
       29 LOADNIL                          R5
       30 SETTABLE                         R5 R4 R0
       31 JUMPIFEQKNIL                     R2 ; [+3]
       33 GETUPVAL                         R4 2
       34 JUMPIFNOT                        R4 ; [+1]
       35 RETURN                           R0 0
       36 GETTABLEKS                       R4 R0 K0 ["TextContent"]
       38 JUMPIFEQ                         R4 R1 ; [+18]
       40 GETIMPORT                        R4 K2 [warn]
       42 LOADK                            R6 K3 ["[TextDocumentAssetEditor] %* changed while it was being uploaded, so it was left "]
       43 NAMECALL                         R8 R0 K4 ["GetFullName"]
       45 CALL                             R8 1 1
       46 NAMECALL                         R6 R6 K5 ["format"]
       48 CALL                             R6 2 1
       49 LOADK                            R7 K6 ["unbound. The upload is asset %*."]
       50 MOVE                             R9 R2
       51 NAMECALL                         R7 R7 K5 ["format"]
       53 CALL                             R7 2 1
       54 CONCAT                           R5 R6 R7
       55 CALL                             R4 1 0
       56 RETURN                           R0 0
       57 GETUPVAL                         R4 5
       58 LOADK                            R6 K7 ["UploadToAsset"]
       59 LOADK                            R7 K8 ["Upload to Asset"]
       60 NAMECALL                         R4 R4 K9 ["TryBeginRecording"]
       62 CALL                             R4 3 1
       63 JUMPIFEQKNIL                     R3 ; [+11]
       65 GETIMPORT                        R5 K12 [Content.fromUri]
       67 LOADK                            R6 K13 ["rbxassetid://%*&version=%*"]
       68 MOVE                             R8 R2
       69 MOVE                             R9 R3
       70 NAMECALL                         R6 R6 K5 ["format"]
       72 CALL                             R6 3 1
       73 CALL                             R5 1 1
       74 JUMP                             ; [+4]
       75 GETIMPORT                        R5 K15 [Content.fromAssetId]
       77 MOVE                             R6 R2
       78 CALL                             R5 1 1
       79 SETTABLEKS                       R5 R0 K0 ["TextContent"]
       81 JUMPIFEQKNIL                     R4 ; [+8]
       83 GETUPVAL                         R5 5
       84 MOVE                             R7 R4
       85 GETIMPORT                        R8 K19 [Enum.FinishRecordingOperation.Commit]
       87 NAMECALL                         R5 R5 K20 ["FinishRecording"]
       89 CALL                             R5 3 0
       90 RETURN                           R0 0

PROTO_16:
        0 GETIMPORT                        R1 K1 [next]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 1
        4 JUMPIFEQKNIL                     R1 ; [+3]
        6 LOADNIL                          R0
        7 JUMP                             ; [+34]
        8 GETUPVAL                         R1 1
        9 NAMECALL                         R1 R1 K2 ["Get"]
       11 CALL                             R1 1 1
       12 LENGTH                           R2 R1
       13 JUMPIFNOTEQKN                    R2 K3 [1] ; [+27]
       15 GETTABLEN                        R3 R1 1
       16 LOADK                            R6 K4 ["TextDocument"]
       17 NAMECALL                         R4 R3 K5 ["IsA"]
       19 CALL                             R4 2 1
       20 JUMPIF                           R4 ; [+2]
       21 LOADB                            R2 0
       22 JUMP                             ; [+15]
       23 GETTABLEKS                       R4 R3 K6 ["TextContent"]
       25 GETTABLEKS                       R4 R4 K7 ["SourceType"]
       27 LOADB                            R2 0
       28 GETIMPORT                        R5 K11 [Enum.ContentSourceType.None]
       30 JUMPIFEQ                         R4 R5 ; [+7]
       32 GETIMPORT                        R5 K13 [Enum.ContentSourceType.Uri]
       34 JUMPIFNOTEQ                      R4 R5 ; [+2]
       36 LOADB                            R2 0 +1
       37 LOADB                            R2 1
       38 JUMPIFNOT                        R2 ; [+2]
       39 GETTABLEN                        R0 R1 1
       40 JUMP                             ; [+1]
       41 LOADNIL                          R0
       42 JUMPIFEQKNIL                     R0 ; [+6]
       44 GETUPVAL                         R1 2
       45 JUMPIF                           R1 ; [+3]
       46 GETUPVAL                         R1 3
       47 MOVE                             R2 R0
       48 CALL                             R1 1 0
       49 RETURN                           R0 0

PROTO_17:
        0 GETIMPORT                        R1 K2 [string.match]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["^(%a+) (.+)$"]
        4 CALL                             R1 2 2
        5 JUMPIFNOTEQKNIL                  R2 ; [+2]
        7 RETURN                           R0 0
        8 JUMPIFNOTEQKS                    R1 K4 ["started"] ; [+5]
       10 GETUPVAL                         R3 0
       11 LOADB                            R4 1
       12 SETTABLE                         R4 R3 R2
       13 JUMP                             ; [+7]
       14 JUMPIFNOTEQKS                    R1 K5 ["ended"] ; [+5]
       16 GETUPVAL                         R3 0
       17 LOADNIL                          R4
       18 SETTABLE                         R4 R3 R2
       19 JUMP                             ; [+1]
       20 RETURN                           R0 0
       21 GETIMPORT                        R5 K7 [next]
       23 GETUPVAL                         R6 0
       24 CALL                             R5 1 1
       25 JUMPIFEQKNIL                     R5 ; [+3]
       27 LOADNIL                          R4
       28 JUMP                             ; [+34]
       29 GETUPVAL                         R5 2
       30 NAMECALL                         R5 R5 K8 ["Get"]
       32 CALL                             R5 1 1
       33 LENGTH                           R6 R5
       34 JUMPIFNOTEQKN                    R6 K9 [1] ; [+27]
       36 GETTABLEN                        R7 R5 1
       37 LOADK                            R10 K10 ["TextDocument"]
       38 NAMECALL                         R8 R7 K11 ["IsA"]
       40 CALL                             R8 2 1
       41 JUMPIF                           R8 ; [+2]
       42 LOADB                            R6 0
       43 JUMP                             ; [+15]
       44 GETTABLEKS                       R8 R7 K12 ["TextContent"]
       46 GETTABLEKS                       R8 R8 K13 ["SourceType"]
       48 LOADB                            R6 0
       49 GETIMPORT                        R9 K17 [Enum.ContentSourceType.None]
       51 JUMPIFEQ                         R8 R9 ; [+7]
       53 GETIMPORT                        R9 K19 [Enum.ContentSourceType.Uri]
       55 JUMPIFNOTEQ                      R8 R9 ; [+2]
       57 LOADB                            R6 0 +1
       58 LOADB                            R6 1
       59 JUMPIFNOT                        R6 ; [+2]
       60 GETTABLEN                        R4 R5 1
       61 JUMP                             ; [+1]
       62 LOADNIL                          R4
       63 JUMPIFNOTEQKNIL                  R4 ; [+2]
       65 LOADB                            R3 0 +1
       66 LOADB                            R3 1
       67 SETUPVAL                         R3 1
       68 GETUPVAL                         R3 3
       69 JUMPIF                           R3 ; [+11]
       70 GETUPVAL                         R3 4
       71 GETUPVAL                         R4 1
       72 JUMPIFNOTEQ                      R3 R4 ; [+2]
       74 RETURN                           R0 0
       75 LOADB                            R3 1
       76 SETUPVAL                         R3 3
       77 GETIMPORT                        R3 K22 [task.spawn]
       79 GETUPVAL                         R4 5
       80 CALL                             R3 1 0
       81 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["BindToActivatedAsync"]
        4 CALL                             R0 2 1
        5 GETUPVAL                         R2 2
        6 NAMECALL                         R0 R0 K1 ["Connect"]
        8 CALL                             R0 2 -1
        9 RETURN                           R0 -1

PROTO_19:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 FASTPCALL                        pcall 1 ; [+2]
        5 GETIMPORT                        R0 K1 [pcall]
        7 CALL                             R0 1 2
        8 JUMPIF                           R0 ; [+13]
        9 GETIMPORT                        R2 K3 [warn]
       11 LOADK                            R3 K4 ["[TextDocumentAssetEditor] Could not bind the Upload to Asset action: %*"]
       12 FASTCALL1                        TOSTRING R1 ; [+3]
       13 MOVE                             R6 R1
       14 GETIMPORT                        R5 K6 [tostring]
       16 CALL                             R5 1 1
       17 NAMECALL                         R3 R3 K7 ["format"]
       19 CALL                             R3 2 1
       20 CALL                             R2 1 0
       21 RETURN                           R0 0
       22 GETUPVAL                         R2 3
       23 JUMPIFNOT                        R2 ; [+4]
       24 NAMECALL                         R2 R1 K8 ["Disconnect"]
       26 CALL                             R2 1 0
       27 RETURN                           R0 0
       28 SETUPVAL                         R1 4
       29 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K3 [{[1], ["Enabled"] = False}]
        2 GETUPVAL                         R3 1
        3 SETTABLEKS                       R3 R2 K0 ["Uri"]
        5 NAMECALL                         R0 R0 K4 ["UpdateAsync"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_21:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 FASTPCALL                        pcall 1 ; [+2]
        4 GETIMPORT                        R0 K1 [pcall]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_22:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 2
        7 NAMECALL                         R0 R0 K0 ["Disconnect"]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 3
       11 JUMPIFEQKNIL                     R0 ; [+5]
       13 GETUPVAL                         R0 3
       14 NAMECALL                         R0 R0 K0 ["Disconnect"]
       16 CALL                             R0 1 0
       17 GETUPVAL                         R0 4
       18 JUMPIFEQKNIL                     R0 ; [+5]
       20 GETUPVAL                         R0 4
       21 NAMECALL                         R0 R0 K0 ["Disconnect"]
       23 CALL                             R0 1 0
       24 GETIMPORT                        R0 K3 [task.spawn]
       26 NEWCLOSURE                       R1 P0
       27 CAPTURE                          UPVAL U5
       28 CAPTURE                          UPVAL U6
       29 CALL                             R0 1 0
       30 RETURN                           R0 0

PROTO_23:
        0 GETIMPORT                        R1 K1 [game]
        2 LOADK                            R3 K2 ["HttpService"]
        3 NAMECALL                         R1 R1 K3 ["GetService"]
        5 CALL                             R1 2 1
        6 GETIMPORT                        R2 K1 [game]
        8 LOADK                            R4 K4 ["MemStorageService"]
        9 NAMECALL                         R2 R2 K3 ["GetService"]
       11 CALL                             R2 2 1
       12 GETIMPORT                        R3 K1 [game]
       14 LOADK                            R5 K5 ["RunService"]
       15 NAMECALL                         R3 R3 K3 ["GetService"]
       17 CALL                             R3 2 1
       18 NAMECALL                         R3 R3 K6 ["IsEdit"]
       20 CALL                             R3 1 1
       21 JUMPIF                           R3 ; [+31]
       22 LOADB                            R5 0
       23 NAMECALL                         R3 R1 K7 ["GenerateGUID"]
       25 CALL                             R3 2 1
       26 NEWCLOSURE                       R4 P0
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R3
       29 LOADK                            R7 K8 ["TextDocumentAssetEditor.PlayDataModelsRequested"]
       30 MOVE                             R8 R4
       31 NAMECALL                         R5 R2 K9 ["Bind"]
       33 CALL                             R5 3 1
       34 LOADK                            R8 K10 ["TextDocumentAssetEditor.PlayDataModelChanged"]
       35 LOADK                            R9 K11 ["started %*"]
       36 MOVE                             R11 R3
       37 NAMECALL                         R9 R9 K12 ["format"]
       39 CALL                             R9 2 1
       40 NAMECALL                         R6 R2 K13 ["Fire"]
       42 CALL                             R6 3 0
       43 GETTABLEKS                       R6 R0 K14 ["Unloading"]
       45 NEWCLOSURE                       R8 P1
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R3
       49 NAMECALL                         R6 R6 K15 ["Connect"]
       51 CALL                             R6 2 0
       52 RETURN                           R0 0
       53 GETIMPORT                        R3 K1 [game]
       55 LOADK                            R5 K16 ["ChangeHistoryService"]
       56 NAMECALL                         R3 R3 K3 ["GetService"]
       58 CALL                             R3 2 1
       59 GETIMPORT                        R4 K1 [game]
       61 LOADK                            R6 K17 ["ContentProvider"]
       62 NAMECALL                         R4 R4 K3 ["GetService"]
       64 CALL                             R4 2 1
       65 GETIMPORT                        R5 K1 [game]
       67 LOADK                            R7 K18 ["Selection"]
       68 NAMECALL                         R5 R5 K3 ["GetService"]
       70 CALL                             R5 2 1
       71 GETIMPORT                        R6 K1 [game]
       73 LOADK                            R8 K19 ["StudioAssetService"]
       74 NAMECALL                         R6 R6 K3 ["GetService"]
       76 CALL                             R6 2 1
       77 GETIMPORT                        R7 K21 [require]
       79 GETUPVAL                         R8 0
       80 GETTABLEKS                       R8 R8 K22 ["Packages"]
       82 GETTABLEKS                       R8 R8 K23 ["Framework"]
       84 CALL                             R7 1 1
       85 GETIMPORT                        R8 K21 [require]
       87 GETUPVAL                         R9 0
       88 GETTABLEKS                       R9 R9 K22 ["Packages"]
       90 GETTABLEKS                       R9 R9 K24 ["SharedPluginConstants"]
       92 CALL                             R8 1 1
       93 GETTABLEKS                       R9 R8 K25 ["TEXT_DOCUMENT_ASSET_EDITOR"]
       95 DUPTABLE                         R10 K32 [{["DataModel"] = "Standalone", ["PluginId"], ["Category"] = "Actions", ["ItemId"]}]
       96 GETTABLEKS                       R11 R9 K33 ["ACTION_ID"]
       98 SETTABLEKS                       R11 R10 K28 ["PluginId"]
      100 GETTABLEKS                       R11 R9 K34 ["ACTION_EVENTS"]
      102 GETTABLEKS                       R11 R11 K35 ["UPLOAD_TO_ASSET"]
      104 SETTABLEKS                       R11 R10 K31 ["ItemId"]
      106 GETTABLEKS                       R12 R7 K36 ["RobloxAPI"]
      108 GETTABLEKS                       R12 R12 K37 ["Url"]
      110 GETTABLEKS                       R12 R12 K38 ["new"]
      112 GETTABLEKS                       R13 R4 K39 ["BaseUrl"]
      114 CALL                             R12 1 1
      115 GETTABLEKS                       R12 R12 K40 ["DEVELOP_URL"]
      117 LOADK                            R13 K41 ["v1/assets/latest-versions"]
      118 CONCAT                           R11 R12 R13
      119 LOADK                            R14 K30 ["Actions"]
      120 NAMECALL                         R12 R0 K42 ["GetPluginComponent"]
      122 CALL                             R12 2 1
      123 LOADB                            R13 0
      124 NEWTABLE                         R14 0 0
      126 DUPCLOSURE                       R15 K43 [PROTO_2]
      127 NEWCLOSURE                       R16 P3
      128 CAPTURE                          VAL R14
      129 CAPTURE                          VAL R5
      130 LOADB                            R17 0
      131 LOADNIL                          R18
      132 LOADB                            R19 0
      133 LOADB                            R20 0
      134 NEWCLOSURE                       R21 P4
      135 CAPTURE                          REF R18
      136 CAPTURE                          REF R17
      137 CAPTURE                          REF R13
      138 CAPTURE                          VAL R12
      139 CAPTURE                          VAL R10
      140 CAPTURE                          REF R20
      141 CAPTURE                          REF R19
      142 NEWCLOSURE                       R22 P5
      143 CAPTURE                          REF R17
      144 CAPTURE                          VAL R14
      145 CAPTURE                          VAL R5
      146 CAPTURE                          REF R19
      147 CAPTURE                          REF R18
      148 CAPTURE                          VAL R21
      149 LOADNIL                          R23
      150 NEWCLOSURE                       R24 P6
      151 CAPTURE                          REF R23
      152 CAPTURE                          VAL R5
      153 CAPTURE                          VAL R22
      154 CAPTURE                          REF R17
      155 CAPTURE                          VAL R14
      156 CAPTURE                          REF R19
      157 CAPTURE                          REF R18
      158 CAPTURE                          VAL R21
      159 NEWTABLE                         R25 0 0
      161 NEWCLOSURE                       R26 P7
      162 CAPTURE                          VAL R6
      163 CAPTURE                          REF R13
      164 NEWCLOSURE                       R27 P8
      165 CAPTURE                          VAL R0
      166 NEWCLOSURE                       R28 P9
      167 CAPTURE                          VAL R1
      168 CAPTURE                          VAL R11
      169 CAPTURE                          REF R13
      170 NEWCLOSURE                       R29 P10
      171 CAPTURE                          VAL R25
      172 CAPTURE                          VAL R26
      173 CAPTURE                          REF R13
      174 CAPTURE                          VAL R27
      175 CAPTURE                          VAL R28
      176 CAPTURE                          VAL R3
      177 NEWCLOSURE                       R30 P11
      178 CAPTURE                          VAL R14
      179 CAPTURE                          VAL R5
      180 CAPTURE                          REF R13
      181 CAPTURE                          VAL R29
      182 LOADK                            R33 K10 ["TextDocumentAssetEditor.PlayDataModelChanged"]
      183 NEWCLOSURE                       R34 P12
      184 CAPTURE                          VAL R14
      185 CAPTURE                          REF R17
      186 CAPTURE                          VAL R5
      187 CAPTURE                          REF R19
      188 CAPTURE                          REF R18
      189 CAPTURE                          VAL R21
      190 NAMECALL                         R31 R2 K9 ["Bind"]
      192 CALL                             R31 3 1
      193 LOADK                            R34 K8 ["TextDocumentAssetEditor.PlayDataModelsRequested"]
      194 LOADK                            R35 K44 [""]
      195 NAMECALL                         R32 R2 K13 ["Fire"]
      197 CALL                             R32 3 0
      198 GETTABLEKS                       R32 R5 K45 ["SelectionChanged"]
      200 MOVE                             R34 R24
      201 NAMECALL                         R32 R32 K15 ["Connect"]
      203 CALL                             R32 2 1
      204 MOVE                             R33 R24
      205 CALL                             R33 0 0
      206 LOADNIL                          R33
      207 GETIMPORT                        R34 K48 [task.spawn]
      209 NEWCLOSURE                       R35 P13
      210 CAPTURE                          VAL R12
      211 CAPTURE                          VAL R10
      212 CAPTURE                          VAL R30
      213 CAPTURE                          REF R13
      214 CAPTURE                          REF R33
      215 CALL                             R34 1 0
      216 GETTABLEKS                       R34 R0 K14 ["Unloading"]
      218 NEWCLOSURE                       R36 P14
      219 CAPTURE                          REF R13
      220 CAPTURE                          VAL R31
      221 CAPTURE                          VAL R32
      222 CAPTURE                          REF R23
      223 CAPTURE                          REF R33
      224 CAPTURE                          VAL R12
      225 CAPTURE                          VAL R10
      226 NAMECALL                         R34 R34 K15 ["Connect"]
      228 CALL                             R34 2 0
      229 CLOSEUPVALS                      R13
      230 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TextDocumentAssetEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_23]
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1
