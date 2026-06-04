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
       11 DUPTABLE                         R5 K5 [{"BackgroundTransparency", "Size"}]
       12 LOADN                            R6 1
       13 SETTABLEKS                       R6 R5 K3 ["BackgroundTransparency"]
       15 GETIMPORT                        R6 K8 [UDim2.fromOffset]
       17 LOADN                            R7 16
       18 LOADN                            R8 16
       19 CALL                             R6 2 1
       20 SETTABLEKS                       R6 R5 K4 ["Size"]
       22 DUPTABLE                         R6 K11 [{"Progress", "Watch"}]
       23 GETUPVAL                         R7 3
       24 LOADK                            R8 K2 ["Frame"]
       25 NEWTABLE                         R9 4 0
       27 LOADN                            R10 1
       28 SETTABLEKS                       R10 R9 K3 ["BackgroundTransparency"]
       30 GETIMPORT                        R10 K13 [UDim2.fromScale]
       32 LOADN                            R11 1
       33 LOADN                            R12 1
       34 CALL                             R10 2 1
       35 SETTABLEKS                       R10 R9 K4 ["Size"]
       37 GETTABLEKS                       R10 R0 K14 ["valueBinding"]
       39 DUPCLOSURE                       R12 K15 [PROTO_0]
       40 NAMECALL                         R10 R10 K16 ["map"]
       42 CALL                             R10 2 1
       43 SETTABLEKS                       R10 R9 K17 ["Visible"]
       45 GETUPVAL                         R10 1
       46 GETTABLEKS                       R10 R10 K18 ["Tag"]
       48 LOADK                            R11 K19 ["data-testid=ReimportStatusFrame"]
       49 SETTABLE                         R11 R9 R10
       50 DUPTABLE                         R10 K22 [{"Shadow", "Spinner"}]
       51 GETUPVAL                         R11 3
       52 LOADK                            R12 K23 ["ImageLabel"]
       53 NEWTABLE                         R13 8 0
       55 MOVE                             R14 R1
       56 CALL                             R14 0 1
       57 SETTABLEKS                       R14 R13 K24 ["ZIndex"]
       59 GETUPVAL                         R14 4
       60 GETTABLEKS                       R14 R14 K25 ["circleOutline"]
       62 GETTABLEKS                       R15 R2 K26 ["theme"]
       64 CALL                             R14 1 1
       65 SETTABLEKS                       R14 R13 K27 ["Image"]
       67 LOADN                            R14 1
       68 SETTABLEKS                       R14 R13 K3 ["BackgroundTransparency"]
       70 GETIMPORT                        R14 K13 [UDim2.fromScale]
       72 LOADN                            R15 1
       73 LOADN                            R16 1
       74 CALL                             R14 2 1
       75 SETTABLEKS                       R14 R13 K4 ["Size"]
       77 GETIMPORT                        R14 K13 [UDim2.fromScale]
       79 LOADN                            R15 0
       80 LOADN                            R16 0
       81 CALL                             R14 2 1
       82 SETTABLEKS                       R14 R13 K28 ["Position"]
       84 GETUPVAL                         R14 1
       85 GETTABLEKS                       R14 R14 K18 ["Tag"]
       87 LOADK                            R15 K29 ["Explorer-Content-Disabled"]
       88 SETTABLE                         R15 R13 R14
       89 CALL                             R11 2 1
       90 SETTABLEKS                       R11 R10 K20 ["Shadow"]
       92 GETUPVAL                         R11 3
       93 GETUPVAL                         R12 5
       94 DUPTABLE                         R13 K32 [{"ZIndex", "Size", "imageTags", "progress"}]
       95 MOVE                             R14 R1
       96 CALL                             R14 0 1
       97 SETTABLEKS                       R14 R13 K24 ["ZIndex"]
       99 GETIMPORT                        R14 K13 [UDim2.fromScale]
      101 LOADN                            R15 1
      102 LOADN                            R16 1
      103 CALL                             R14 2 1
      104 SETTABLEKS                       R14 R13 K4 ["Size"]
      106 LOADK                            R14 K33 ["Explorer-Content-Emphasis"]
      107 SETTABLEKS                       R14 R13 K30 ["imageTags"]
      109 GETTABLEKS                       R14 R0 K14 ["valueBinding"]
      111 DUPCLOSURE                       R16 K34 [PROTO_1]
      112 NAMECALL                         R14 R14 K16 ["map"]
      114 CALL                             R14 2 1
      115 SETTABLEKS                       R14 R13 K31 ["progress"]
      117 CALL                             R11 2 1
      118 SETTABLEKS                       R11 R10 K21 ["Spinner"]
      120 CALL                             R7 3 1
      121 SETTABLEKS                       R7 R6 K9 ["Progress"]
      123 GETUPVAL                         R7 3
      124 LOADK                            R8 K23 ["ImageLabel"]
      125 NEWTABLE                         R9 8 0
      127 GETIMPORT                        R10 K8 [UDim2.fromOffset]
      129 LOADN                            R11 16
      130 LOADN                            R12 16
      131 CALL                             R10 2 1
      132 SETTABLEKS                       R10 R9 K4 ["Size"]
      134 LOADN                            R10 1
      135 SETTABLEKS                       R10 R9 K3 ["BackgroundTransparency"]
      137 GETUPVAL                         R10 4
      138 GETTABLEKS                       R10 R10 K35 ["reimportFileWatch"]
      140 GETTABLEKS                       R11 R2 K26 ["theme"]
      142 CALL                             R10 1 1
      143 SETTABLEKS                       R10 R9 K27 ["Image"]
      145 GETTABLEKS                       R10 R0 K14 ["valueBinding"]
      147 DUPCLOSURE                       R12 K36 [PROTO_2]
      148 NAMECALL                         R10 R10 K16 ["map"]
      150 CALL                             R10 2 1
      151 SETTABLEKS                       R10 R9 K17 ["Visible"]
      153 GETUPVAL                         R10 1
      154 GETTABLEKS                       R10 R10 K18 ["Tag"]
      156 LOADK                            R11 K37 ["data-testid=ReimportFileWatch"]
      157 SETTABLE                         R11 R9 R10
      158 CALL                             R7 2 1
      159 SETTABLEKS                       R7 R6 K10 ["Watch"]
      161 CALL                             R3 3 -1
      162 RETURN                           R3 -1

PROTO_4:
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

PROTO_5:
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

PROTO_6:
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

PROTO_7:
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

PROTO_8:
        0 LOADNIL                          R2
        1 GETUPVAL                         R3 0
        2 CALL                             R3 0 1
        3 JUMPIFNOT                        R3 ; [+41]
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R5 2
        6 GETTABLEKS                       R5 R5 K0 ["REIMPORT"]
        8 GETTABLEKS                       R5 R5 K1 ["CPC_CALLBACKS"]
       10 GETTABLEKS                       R5 R5 K2 ["GET_PROGRESS"]
       12 MOVE                             R6 R0
       13 NAMECALL                         R3 R3 K3 ["Invoke"]
       15 CALL                             R3 3 1
       16 GETUPVAL                         R4 1
       17 GETUPVAL                         R6 2
       18 GETTABLEKS                       R6 R6 K0 ["REIMPORT"]
       20 GETTABLEKS                       R6 R6 K1 ["CPC_CALLBACKS"]
       22 GETTABLEKS                       R6 R6 K4 ["GET_WATCH_STATUS"]
       24 MOVE                             R7 R0
       25 NAMECALL                         R4 R4 K3 ["Invoke"]
       27 CALL                             R4 3 1
       28 DUPTABLE                         R5 K8 [{"isReimporting", "progress", "isWatched"}]
       29 GETTABLEKS                       R7 R3 K5 ["isReimporting"]
       31 ORK                              R6 R7 K9 [False]
       32 SETTABLEKS                       R6 R5 K5 ["isReimporting"]
       34 GETTABLEKS                       R7 R3 K6 ["progress"]
       36 ORK                              R6 R7 K10 [0]
       37 SETTABLEKS                       R6 R5 K6 ["progress"]
       39 GETTABLEKS                       R7 R4 K7 ["isWatched"]
       41 ORK                              R6 R7 K9 [False]
       42 SETTABLEKS                       R6 R5 K7 ["isWatched"]
       44 MOVE                             R2 R5
       45 NEWCLOSURE                       R3 P0
       46 CAPTURE                          VAL R1
       47 CAPTURE                          REF R2
       48 GETUPVAL                         R4 1
       49 GETUPVAL                         R6 2
       50 GETTABLEKS                       R6 R6 K0 ["REIMPORT"]
       52 GETTABLEKS                       R6 R6 K11 ["CPC_EVENTS"]
       54 GETTABLEKS                       R6 R6 K12 ["PROGRESS_CHANGED"]
       56 NEWCLOSURE                       R7 P1
       57 CAPTURE                          VAL R0
       58 CAPTURE                          UPVAL U0
       59 CAPTURE                          REF R2
       60 CAPTURE                          VAL R1
       61 NAMECALL                         R4 R4 K13 ["Connect"]
       63 CALL                             R4 3 1
       64 LOADNIL                          R5
       65 GETUPVAL                         R6 0
       66 CALL                             R6 0 1
       67 JUMPIFNOT                        R6 ; [+16]
       68 GETUPVAL                         R6 1
       69 GETUPVAL                         R8 2
       70 GETTABLEKS                       R8 R8 K0 ["REIMPORT"]
       72 GETTABLEKS                       R8 R8 K11 ["CPC_EVENTS"]
       74 GETTABLEKS                       R8 R8 K14 ["WATCH_STATUS_CHANGED"]
       76 NEWCLOSURE                       R9 P2
       77 CAPTURE                          VAL R0
       78 CAPTURE                          REF R2
       79 CAPTURE                          VAL R1
       80 NAMECALL                         R6 R6 K13 ["Connect"]
       82 CALL                             R6 3 1
       83 MOVE                             R5 R6
       84 GETUPVAL                         R7 0
       85 CALL                             R7 0 1
       86 JUMPIFNOT                        R7 ; [+10]
       87 GETTABLEKS                       R7 R2 K5 ["isReimporting"]
       89 JUMPIF                           R7 ; [+3]
       90 GETTABLEKS                       R7 R2 K7 ["isWatched"]
       92 JUMPIFNOT                        R7 ; [+2]
       93 MOVE                             R6 R2
       94 JUMP                             ; [+3]
       95 LOADNIL                          R6
       96 JUMP                             ; [+1]
       97 LOADNIL                          R6
       98 NEWCLOSURE                       R7 P3
       99 CAPTURE                          VAL R4
      100 CAPTURE                          UPVAL U0
      101 CAPTURE                          REF R5
      102 CLOSEUPVALS                      R2
      103 RETURN                           R6 2

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K1 [{"valueBinding"}]
        3 SETTABLEKS                       R0 R3 K0 ["valueBinding"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_10:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["CircularProgress"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Fields"]
       18 GETTABLEKS                       R3 R3 K9 ["FieldTypes"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Parent"]
       25 GETTABLEKS                       R4 R4 K11 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K12 ["Util"]
       32 GETTABLEKS                       R5 R5 K13 ["ImageUrl"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K10 ["Parent"]
       39 GETTABLEKS                       R6 R6 K14 ["React"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K10 ["Parent"]
       46 GETTABLEKS                       R7 R7 K15 ["SharedPluginConstants"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K6 ["Components"]
       53 GETTABLEKS                       R8 R8 K16 ["Contexts"]
       55 GETTABLEKS                       R8 R8 K17 ["ThemeContext"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K12 ["Util"]
       62 GETTABLEKS                       R9 R9 K18 ["createNextOrder"]
       64 CALL                             R8 1 1
       65 GETTABLEKS                       R9 R6 K19 ["REIMPORT"]
       67 GETTABLEKS                       R9 R9 K20 ["getFFlagReimportFileWatchIcon"]
       69 GETTABLEKS                       R10 R3 K12 ["Util"]
       71 GETTABLEKS                       R10 R10 K21 ["CrossPluginCommunication"]
       73 GETTABLEKS                       R11 R10 K22 ["new"]
       75 GETTABLEKS                       R12 R6 K19 ["REIMPORT"]
       77 GETTABLEKS                       R12 R12 K23 ["CPC_ID"]
       79 CALL                             R11 1 1
       80 GETTABLEKS                       R12 R5 K24 ["createElement"]
       82 DUPCLOSURE                       R13 K25 [PROTO_3]
       83 CAPTURE                          VAL R8
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R7
       86 CAPTURE                          VAL R12
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R1
       89 DUPTABLE                         R14 K32 [{"key", "icon", "watch", "render", "validateArgs", "permanent"}]
       90 LOADK                            R15 K33 ["reimportStatus"]
       91 SETTABLEKS                       R15 R14 K26 ["key"]
       93 LOADK                            R15 K34 [""]
       94 SETTABLEKS                       R15 R14 K27 ["icon"]
       96 DUPCLOSURE                       R15 K35 [PROTO_8]
       97 CAPTURE                          VAL R9
       98 CAPTURE                          VAL R11
       99 CAPTURE                          VAL R6
      100 SETTABLEKS                       R15 R14 K28 ["watch"]
      102 DUPCLOSURE                       R15 K36 [PROTO_9]
      103 CAPTURE                          VAL R12
      104 CAPTURE                          VAL R13
      105 SETTABLEKS                       R15 R14 K29 ["render"]
      107 DUPCLOSURE                       R15 K37 [PROTO_10]
      108 SETTABLEKS                       R15 R14 K30 ["validateArgs"]
      110 LOADB                            R15 1
      111 SETTABLEKS                       R15 R14 K31 ["permanent"]
      113 RETURN                           R14 1
