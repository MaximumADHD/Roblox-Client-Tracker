PROTO_0:
        0 LOADB                            R1 0
        1 JUMPIFEQKNIL                     R0 ; [+7]
        3 GETTABLEKS                       R2 R0 K0 ["isReimporting"]
        5 JUMPIFEQKB                       R2 TRUE ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_1:
        0 JUMPIFNOT                        R0 ; [+3]
        1 GETTABLEKS                       R1 R0 K0 ["progress"]
        3 JUMPIF                           R1 ; [+1]
        4 LOADN                            R1 0
        5 RETURN                           R1 1

PROTO_2:
        0 LOADB                            R1 0
        1 JUMPIFEQKNIL                     R0 ; [+9]
        3 LOADB                            R1 0
        4 GETTABLEKS                       R2 R0 K0 ["isWatched"]
        6 JUMPIFNOTEQKB                    R2 TRUE ; [+4]
        8 GETTABLEKS                       R2 R0 K1 ["isReimporting"]
       10 NOT                              R1 R2
       11 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useContext"]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K1 ["Context"]
        8 CALL                             R2 1 1
        9 GETUPVAL                         R3 3
       10 LOADK                            R4 K2 ["Frame"]
       11 DUPTABLE                         R5 K6 [{["BackgroundTransparency"] = 1, ["Size"]}]
       12 GETIMPORT                        R6 K9 [UDim2.fromOffset]
       14 LOADN                            R7 16
       15 LOADN                            R8 16
       16 CALL                             R6 2 1
       17 SETTABLEKS                       R6 R5 K5 ["Size"]
       19 DUPTABLE                         R6 K12 [{"Progress", "Watch"}]
       20 GETUPVAL                         R7 3
       21 LOADK                            R8 K2 ["Frame"]
       22 NEWTABLE                         R9 4 0
       24 LOADN                            R10 1
       25 SETTABLEKS                       R10 R9 K3 ["BackgroundTransparency"]
       27 GETIMPORT                        R10 K14 [UDim2.fromScale]
       29 LOADN                            R11 1
       30 LOADN                            R12 1
       31 CALL                             R10 2 1
       32 SETTABLEKS                       R10 R9 K5 ["Size"]
       34 GETTABLEKS                       R10 R0 K15 ["valueBinding"]
       36 DUPCLOSURE                       R12 K16 [PROTO_0]
       37 NAMECALL                         R10 R10 K17 ["map"]
       39 CALL                             R10 2 1
       40 SETTABLEKS                       R10 R9 K18 ["Visible"]
       42 GETUPVAL                         R10 1
       43 GETTABLEKS                       R10 R10 K19 ["Tag"]
       45 LOADK                            R11 K20 ["data-testid=ReimportStatusFrame"]
       46 SETTABLE                         R11 R9 R10
       47 DUPTABLE                         R10 K23 [{"Shadow", "Spinner"}]
       48 GETUPVAL                         R11 3
       49 LOADK                            R12 K24 ["ImageLabel"]
       50 NEWTABLE                         R13 8 0
       52 MOVE                             R14 R1
       53 CALL                             R14 0 1
       54 SETTABLEKS                       R14 R13 K25 ["ZIndex"]
       56 GETUPVAL                         R14 4
       57 GETTABLEKS                       R14 R14 K26 ["circleOutline"]
       59 GETTABLEKS                       R15 R2 K27 ["theme"]
       61 CALL                             R14 1 1
       62 SETTABLEKS                       R14 R13 K28 ["Image"]
       64 LOADN                            R14 1
       65 SETTABLEKS                       R14 R13 K3 ["BackgroundTransparency"]
       67 GETIMPORT                        R14 K14 [UDim2.fromScale]
       69 LOADN                            R15 1
       70 LOADN                            R16 1
       71 CALL                             R14 2 1
       72 SETTABLEKS                       R14 R13 K5 ["Size"]
       74 GETIMPORT                        R14 K14 [UDim2.fromScale]
       76 LOADN                            R15 0
       77 LOADN                            R16 0
       78 CALL                             R14 2 1
       79 SETTABLEKS                       R14 R13 K29 ["Position"]
       81 GETUPVAL                         R14 1
       82 GETTABLEKS                       R14 R14 K19 ["Tag"]
       84 LOADK                            R15 K30 ["Explorer-Content-Disabled"]
       85 SETTABLE                         R15 R13 R14
       86 CALL                             R11 2 1
       87 SETTABLEKS                       R11 R10 K21 ["Shadow"]
       89 GETUPVAL                         R11 3
       90 GETUPVAL                         R12 5
       91 DUPTABLE                         R13 K34 [{["ZIndex"], ["Size"], ["imageTags"] = "Explorer-Content-Emphasis", ["progress"]}]
       92 MOVE                             R14 R1
       93 CALL                             R14 0 1
       94 SETTABLEKS                       R14 R13 K25 ["ZIndex"]
       96 GETIMPORT                        R14 K14 [UDim2.fromScale]
       98 LOADN                            R15 1
       99 LOADN                            R16 1
      100 CALL                             R14 2 1
      101 SETTABLEKS                       R14 R13 K5 ["Size"]
      103 GETTABLEKS                       R14 R0 K15 ["valueBinding"]
      105 DUPCLOSURE                       R16 K35 [PROTO_1]
      106 NAMECALL                         R14 R14 K17 ["map"]
      108 CALL                             R14 2 1
      109 SETTABLEKS                       R14 R13 K33 ["progress"]
      111 CALL                             R11 2 1
      112 SETTABLEKS                       R11 R10 K22 ["Spinner"]
      114 CALL                             R7 3 1
      115 SETTABLEKS                       R7 R6 K10 ["Progress"]
      117 GETUPVAL                         R7 3
      118 LOADK                            R8 K24 ["ImageLabel"]
      119 NEWTABLE                         R9 8 0
      121 GETIMPORT                        R10 K9 [UDim2.fromOffset]
      123 LOADN                            R11 16
      124 LOADN                            R12 16
      125 CALL                             R10 2 1
      126 SETTABLEKS                       R10 R9 K5 ["Size"]
      128 LOADN                            R10 1
      129 SETTABLEKS                       R10 R9 K3 ["BackgroundTransparency"]
      131 GETUPVAL                         R10 4
      132 GETTABLEKS                       R10 R10 K36 ["reimportFileWatch"]
      134 GETTABLEKS                       R11 R2 K27 ["theme"]
      136 CALL                             R10 1 1
      137 SETTABLEKS                       R10 R9 K28 ["Image"]
      139 GETTABLEKS                       R10 R0 K15 ["valueBinding"]
      141 DUPCLOSURE                       R12 K37 [PROTO_2]
      142 NAMECALL                         R10 R10 K17 ["map"]
      144 CALL                             R10 2 1
      145 SETTABLEKS                       R10 R9 K18 ["Visible"]
      147 GETUPVAL                         R10 1
      148 GETTABLEKS                       R10 R10 K19 ["Tag"]
      150 LOADK                            R11 K38 ["data-testid=ReimportFileWatch"]
      151 SETTABLE                         R11 R9 R10
      152 CALL                             R7 2 1
      153 SETTABLEKS                       R7 R6 K11 ["Watch"]
      155 CALL                             R3 3 -1
      156 RETURN                           R3 -1

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["isReimporting"]
        4 JUMPIF                           R2 ; [+4]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["isWatched"]
        8 JUMPIFNOT                        R2 ; [+2]
        9 GETUPVAL                         R1 1
       10 JUMP                             ; [+1]
       11 LOADNIL                          R1
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQ                         R2 R0 ; [+2]
        3 RETURN                           R0 0
        4 JUMPIFEQKNIL                     R1 ; [+5]
        6 GETTABLEKS                       R2 R1 K0 ["isReimporting"]
        8 JUMPIFNOTEQKNIL                  R2 ; [+2]
       10 RETURN                           R0 0
       11 GETUPVAL                         R2 1
       12 CALL                             R2 0 1
       13 JUMPIFNOT                        R2 ; [+30]
       14 GETIMPORT                        R2 K3 [table.clone]
       16 GETUPVAL                         R3 2
       17 CALL                             R2 1 1
       18 SETUPVAL                         R2 2
       19 GETUPVAL                         R2 2
       20 GETTABLEKS                       R3 R1 K0 ["isReimporting"]
       22 SETTABLEKS                       R3 R2 K0 ["isReimporting"]
       24 GETUPVAL                         R2 2
       25 GETTABLEKS                       R4 R1 K5 ["progress"]
       27 ORK                              R3 R4 K4 [0]
       28 SETTABLEKS                       R3 R2 K5 ["progress"]
       30 GETUPVAL                         R2 3
       31 GETUPVAL                         R4 2
       32 GETTABLEKS                       R4 R4 K0 ["isReimporting"]
       34 JUMPIF                           R4 ; [+4]
       35 GETUPVAL                         R4 2
       36 GETTABLEKS                       R4 R4 K6 ["isWatched"]
       38 JUMPIFNOT                        R4 ; [+2]
       39 GETUPVAL                         R3 2
       40 JUMP                             ; [+1]
       41 LOADNIL                          R3
       42 CALL                             R2 1 0
       43 RETURN                           R0 0
       44 GETUPVAL                         R2 3
       45 DUPTABLE                         R3 K7 [{"isReimporting", "progress"}]
       46 GETTABLEKS                       R4 R1 K0 ["isReimporting"]
       48 SETTABLEKS                       R4 R3 K0 ["isReimporting"]
       50 GETTABLEKS                       R5 R1 K5 ["progress"]
       52 ORK                              R4 R5 K4 [0]
       53 SETTABLEKS                       R4 R3 K5 ["progress"]
       55 CALL                             R2 1 0
       56 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQ                         R2 R0 ; [+2]
        3 RETURN                           R0 0
        4 JUMPIFEQKNIL                     R1 ; [+5]
        6 GETTABLEKS                       R2 R1 K0 ["isWatched"]
        8 JUMPIFNOTEQKNIL                  R2 ; [+2]
       10 RETURN                           R0 0
       11 GETIMPORT                        R2 K3 [table.clone]
       13 GETUPVAL                         R3 1
       14 CALL                             R2 1 1
       15 SETUPVAL                         R2 1
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R3 R1 K0 ["isWatched"]
       19 SETTABLEKS                       R3 R2 K0 ["isWatched"]
       21 GETUPVAL                         R2 2
       22 GETUPVAL                         R4 1
       23 GETTABLEKS                       R4 R4 K4 ["isReimporting"]
       25 JUMPIF                           R4 ; [+4]
       26 GETUPVAL                         R4 1
       27 GETTABLEKS                       R4 R4 K0 ["isWatched"]
       29 JUMPIFNOT                        R4 ; [+2]
       30 GETUPVAL                         R3 1
       31 JUMP                             ; [+1]
       32 LOADNIL                          R3
       33 CALL                             R2 1 0
       34 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 1
        6 JUMPIFNOT                        R0 ; [+4]
        7 GETUPVAL                         R0 2
        8 NAMECALL                         R0 R0 K0 ["Disconnect"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+8]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R2 R2 K0 ["IsEdit"]
        6 CALL                             R2 1 1
        7 JUMPIF                           R2 ; [+3]
        8 LOADNIL                          R3
        9 DUPCLOSURE                       R4 K1 [PROTO_4]
       10 RETURN                           R3 2
       11 LOADNIL                          R2
       12 GETUPVAL                         R3 0
       13 CALL                             R3 0 1
       14 JUMPIFNOT                        R3 ; [+41]
       15 GETUPVAL                         R3 2
       16 GETUPVAL                         R5 3
       17 GETTABLEKS                       R5 R5 K2 ["REIMPORT"]
       19 GETTABLEKS                       R5 R5 K3 ["CPC_CALLBACKS"]
       21 GETTABLEKS                       R5 R5 K4 ["GET_PROGRESS"]
       23 MOVE                             R6 R0
       24 NAMECALL                         R3 R3 K5 ["Invoke"]
       26 CALL                             R3 3 1
       27 GETUPVAL                         R4 2
       28 GETUPVAL                         R6 3
       29 GETTABLEKS                       R6 R6 K2 ["REIMPORT"]
       31 GETTABLEKS                       R6 R6 K3 ["CPC_CALLBACKS"]
       33 GETTABLEKS                       R6 R6 K6 ["GET_WATCH_STATUS"]
       35 MOVE                             R7 R0
       36 NAMECALL                         R4 R4 K5 ["Invoke"]
       38 CALL                             R4 3 1
       39 DUPTABLE                         R5 K10 [{"isReimporting", "progress", "isWatched"}]
       40 GETTABLEKS                       R7 R3 K7 ["isReimporting"]
       42 ORK                              R6 R7 K11 [False]
       43 SETTABLEKS                       R6 R5 K7 ["isReimporting"]
       45 GETTABLEKS                       R7 R3 K8 ["progress"]
       47 ORK                              R6 R7 K12 [0]
       48 SETTABLEKS                       R6 R5 K8 ["progress"]
       50 GETTABLEKS                       R7 R4 K9 ["isWatched"]
       52 ORK                              R6 R7 K11 [False]
       53 SETTABLEKS                       R6 R5 K9 ["isWatched"]
       55 MOVE                             R2 R5
       56 NEWCLOSURE                       R3 P1
       57 CAPTURE                          VAL R1
       58 CAPTURE                          REF R2
       59 GETUPVAL                         R4 2
       60 GETUPVAL                         R6 3
       61 GETTABLEKS                       R6 R6 K2 ["REIMPORT"]
       63 GETTABLEKS                       R6 R6 K13 ["CPC_EVENTS"]
       65 GETTABLEKS                       R6 R6 K14 ["PROGRESS_CHANGED"]
       67 NEWCLOSURE                       R7 P2
       68 CAPTURE                          VAL R0
       69 CAPTURE                          UPVAL U0
       70 CAPTURE                          REF R2
       71 CAPTURE                          VAL R1
       72 NAMECALL                         R4 R4 K15 ["Connect"]
       74 CALL                             R4 3 1
       75 LOADNIL                          R5
       76 GETUPVAL                         R6 0
       77 CALL                             R6 0 1
       78 JUMPIFNOT                        R6 ; [+16]
       79 GETUPVAL                         R6 2
       80 GETUPVAL                         R8 3
       81 GETTABLEKS                       R8 R8 K2 ["REIMPORT"]
       83 GETTABLEKS                       R8 R8 K13 ["CPC_EVENTS"]
       85 GETTABLEKS                       R8 R8 K16 ["WATCH_STATUS_CHANGED"]
       87 NEWCLOSURE                       R9 P3
       88 CAPTURE                          VAL R0
       89 CAPTURE                          REF R2
       90 CAPTURE                          VAL R1
       91 NAMECALL                         R6 R6 K15 ["Connect"]
       93 CALL                             R6 3 1
       94 MOVE                             R5 R6
       95 GETUPVAL                         R7 0
       96 CALL                             R7 0 1
       97 JUMPIFNOT                        R7 ; [+10]
       98 GETTABLEKS                       R7 R2 K7 ["isReimporting"]
      100 JUMPIF                           R7 ; [+3]
      101 GETTABLEKS                       R7 R2 K9 ["isWatched"]
      103 JUMPIFNOT                        R7 ; [+2]
      104 MOVE                             R6 R2
      105 JUMP                             ; [+3]
      106 LOADNIL                          R6
      107 JUMP                             ; [+1]
      108 LOADNIL                          R6
      109 NEWCLOSURE                       R7 P4
      110 CAPTURE                          VAL R4
      111 CAPTURE                          UPVAL U0
      112 CAPTURE                          REF R5
      113 CLOSEUPVALS                      R2
      114 RETURN                           R6 2

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K1 [{"valueBinding"}]
        3 SETTABLEKS                       R0 R3 K0 ["valueBinding"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_11:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["Explorer"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Components"]
       17 GETTABLEKS                       R3 R3 K11 ["CircularProgress"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K12 ["Fields"]
       24 GETTABLEKS                       R4 R4 K13 ["FieldTypes"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K14 ["Parent"]
       31 GETTABLEKS                       R5 R5 K15 ["Framework"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R1 K16 ["Util"]
       38 GETTABLEKS                       R6 R6 K17 ["ImageUrl"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R7 R1 K14 ["Parent"]
       45 GETTABLEKS                       R7 R7 K18 ["React"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K9 [require]
       50 GETTABLEKS                       R8 R1 K14 ["Parent"]
       52 GETTABLEKS                       R8 R8 K19 ["SharedPluginConstants"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K9 [require]
       57 GETTABLEKS                       R9 R1 K10 ["Components"]
       59 GETTABLEKS                       R9 R9 K20 ["Contexts"]
       61 GETTABLEKS                       R9 R9 K21 ["ThemeContext"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K9 [require]
       66 GETTABLEKS                       R10 R1 K16 ["Util"]
       68 GETTABLEKS                       R10 R10 K22 ["createNextOrder"]
       70 CALL                             R9 1 1
       71 GETTABLEKS                       R10 R7 K23 ["REIMPORT"]
       73 GETTABLEKS                       R10 R10 K24 ["getFFlagReimportFileWatchIcon"]
       75 GETTABLEKS                       R11 R4 K16 ["Util"]
       77 GETTABLEKS                       R11 R11 K25 ["CrossPluginCommunication"]
       79 GETTABLEKS                       R12 R11 K26 ["new"]
       81 GETTABLEKS                       R13 R7 K23 ["REIMPORT"]
       83 GETTABLEKS                       R13 R13 K27 ["CPC_ID"]
       85 CALL                             R12 1 1
       86 GETTABLEKS                       R13 R6 K28 ["createElement"]
       88 DUPCLOSURE                       R14 K29 [PROTO_3]
       89 CAPTURE                          VAL R9
       90 CAPTURE                          VAL R6
       91 CAPTURE                          VAL R8
       92 CAPTURE                          VAL R13
       93 CAPTURE                          VAL R5
       94 CAPTURE                          VAL R2
       95 DUPTABLE                         R15 K39 [{["key"] = "reimportStatus", ["icon"] = "", ["watch"], ["render"], ["validateArgs"], ["permanent"] = True}]
       96 DUPCLOSURE                       R16 K40 [PROTO_9]
       97 CAPTURE                          VAL R10
       98 CAPTURE                          VAL R0
       99 CAPTURE                          VAL R12
      100 CAPTURE                          VAL R7
      101 SETTABLEKS                       R16 R15 K34 ["watch"]
      103 DUPCLOSURE                       R16 K41 [PROTO_10]
      104 CAPTURE                          VAL R13
      105 CAPTURE                          VAL R14
      106 SETTABLEKS                       R16 R15 K35 ["render"]
      108 DUPCLOSURE                       R16 K42 [PROTO_11]
      109 SETTABLEKS                       R16 R15 K36 ["validateArgs"]
      111 RETURN                           R15 1
