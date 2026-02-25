PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["SoundId"]
        2 JUMPIFEQKS                       R1 K1 [""] ; [+5]
        4 JUMPIFEQKS                       R1 K2 ["0"] ; [+3]
        6 JUMPIFNOTEQKS                    R1 K3 [" "] ; [+3]
        8 LOADNIL                          R2
        9 RETURN                           R2 1
       10 GETUPVAL                         R2 0
       11 MOVE                             R3 R1
       12 CALL                             R2 1 1
       13 JUMPIFNOT                        R2 ; [+6]
       14 NEWTABLE                         R3 0 1
       16 MOVE                             R4 R2
       17 SETLIST                          R3 R4 1 [1]
       19 RETURN                           R3 1
       20 LOADNIL                          R3
       21 RETURN                           R3 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["AudioContent"]
        2 GETTABLEKS                       R2 R1 K1 ["SourceType"]
        4 GETIMPORT                        R3 K5 [Enum.ContentSourceType.Uri]
        6 JUMPIFNOTEQ                      R2 R3 ; [+12]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R3 R1 K4 ["Uri"]
       11 CALL                             R2 1 1
       12 JUMPIFNOT                        R2 ; [+6]
       13 NEWTABLE                         R3 0 1
       15 MOVE                             R4 R2
       16 SETLIST                          R3 R4 1 [1]
       18 RETURN                           R3 1
       19 LOADNIL                          R2
       20 RETURN                           R2 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["Parent"]
        2 GETTABLEKS                       R1 R2 K1 ["Name"]
        4 NAMECALL                         R1 R1 K2 ["lower"]
        6 CALL                             R1 1 1
        7 JUMPIFNOTEQKS                    R1 K3 ["boombox"] ; [+3]
        9 LOADNIL                          R1
       10 RETURN                           R1 1
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R2 R0 K4 ["Source"]
       14 CALL                             R1 1 -1
       15 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Value"]
        3 CALL                             R1 1 1
        4 JUMPIFNOT                        R1 ; [+10]
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R1
        7 CALL                             R2 1 1
        8 JUMPIFNOT                        R2 ; [+6]
        9 NEWTABLE                         R2 0 1
       11 MOVE                             R3 R1
       12 SETLIST                          R2 R3 1 [1]
       14 RETURN                           R2 1
       15 LOADNIL                          R2
       16 RETURN                           R2 1

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["Value"]
        2 FASTCALL1                        TOSTRING R2 ; [+2]
        3 GETIMPORT                        R1 K2 [tostring]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 0
        7 MOVE                             R3 R1
        8 CALL                             R2 1 1
        9 JUMPIFNOT                        R2 ; [+6]
       10 NEWTABLE                         R2 0 1
       12 MOVE                             R3 R1
       13 SETLIST                          R2 R3 1 [1]
       15 RETURN                           R2 1
       16 LOADNIL                          R2
       17 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["ClassName"]
        3 GETTABLE                         R1 R2 R3
        4 JUMPIF                           R1 ; [+19]
        5 GETIMPORT                        R2 K2 [pairs]
        7 GETUPVAL                         R3 1
        8 CALL                             R2 1 3
        9 FORGPREP_NEXT                    R2
       10 MOVE                             R9 R5
       11 NAMECALL                         R7 R0 K3 ["IsA"]
       13 CALL                             R7 2 1
       14 JUMPIFNOT                        R7 ; [+1]
       15 MOVE                             R1 R5
       16 FORGLOOP                         R2 2 ; [-7]
       18 JUMPIF                           R1 ; [+1]
       19 LOADK                            R1 K4 ["Instance"]
       20 GETUPVAL                         R2 0
       21 GETTABLEKS                       R3 R0 K0 ["ClassName"]
       23 SETTABLE                         R1 R2 R3
       24 GETUPVAL                         R3 1
       25 GETTABLE                         R2 R3 R1
       26 RETURN                           R2 1

PROTO_6:
        0 NEWTABLE                         R0 0 0
        2 LOADN                            R1 0
        3 GETIMPORT                        R2 K1 [ipairs]
        5 GETUPVAL                         R3 0
        6 CALL                             R2 1 3
        7 FORGPREP_INEXT                   R2
        8 GETIMPORT                        R7 K1 [ipairs]
       10 NAMECALL                         R8 R6 K2 ["GetDescendants"]
       12 CALL                             R8 1 -1
       13 CALL                             R7 -1 3
       14 FORGPREP_INEXT                   R7
       15 GETUPVAL                         R12 1
       16 MOVE                             R13 R11
       17 CALL                             R12 1 1
       18 JUMPIFNOT                        R12 ; [+28]
       19 MOVE                             R13 R12
       20 MOVE                             R14 R11
       21 CALL                             R13 1 1
       22 JUMPIFNOT                        R13 ; [+24]
       23 GETIMPORT                        R14 K1 [ipairs]
       25 MOVE                             R15 R13
       26 CALL                             R14 1 3
       27 FORGPREP_INEXT                   R14
       28 GETTABLE                         R19 R0 R18
       29 JUMPIFNOT                        R19 ; [+8]
       30 FASTCALL2                        TABLE_INSERT R19 R11 ; [+5]
       32 MOVE                             R21 R19
       33 MOVE                             R22 R11
       34 GETIMPORT                        R20 K5 [table.insert]
       36 CALL                             R20 2 0
       37 JUMP                             ; [+7]
       38 NEWTABLE                         R20 0 1
       40 MOVE                             R21 R11
       41 SETLIST                          R20 R21 1 [1]
       43 SETTABLE                         R20 R0 R18
       44 ADDK                             R1 R1 K6 [1]
       45 FORGLOOP                         R14 2 [inext] ; [-18]
       47 FORGLOOP                         R7 2 [inext] ; [-33]
       49 FORGLOOP                         R2 2 [inext] ; [-42]
       51 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["isAssetIdLike"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R4 K3 [script]
       14 GETTABLEKS                       R3 R4 K4 ["Parent"]
       16 GETTABLEKS                       R2 R3 K6 ["normalizeAssetId"]
       18 CALL                             R1 1 1
       19 GETIMPORT                        R2 K1 [require]
       21 GETIMPORT                        R5 K3 [script]
       23 GETTABLEKS                       R4 R5 K4 ["Parent"]
       25 GETTABLEKS                       R3 R4 K7 ["findAssetIdsInSource"]
       27 CALL                             R2 1 1
       28 GETIMPORT                        R3 K9 [game]
       30 LOADK                            R5 K10 ["AudioDiscoveryHandleAudioPlayer"]
       31 LOADB                            R6 0
       32 NAMECALL                         R3 R3 K11 ["DefineFastFlag"]
       34 CALL                             R3 3 1
       35 NEWTABLE                         R4 0 11
       37 GETIMPORT                        R5 K9 [game]
       39 LOADK                            R7 K12 ["Workspace"]
       40 NAMECALL                         R5 R5 K13 ["GetService"]
       42 CALL                             R5 2 1
       43 GETIMPORT                        R6 K9 [game]
       45 LOADK                            R8 K14 ["ReplicatedFirst"]
       46 NAMECALL                         R6 R6 K13 ["GetService"]
       48 CALL                             R6 2 1
       49 GETIMPORT                        R7 K9 [game]
       51 LOADK                            R9 K15 ["ReplicatedStorage"]
       52 NAMECALL                         R7 R7 K13 ["GetService"]
       54 CALL                             R7 2 1
       55 GETIMPORT                        R8 K9 [game]
       57 LOADK                            R10 K16 ["ServerStorage"]
       58 NAMECALL                         R8 R8 K13 ["GetService"]
       60 CALL                             R8 2 1
       61 GETIMPORT                        R9 K9 [game]
       63 LOADK                            R11 K17 ["ServerScriptService"]
       64 NAMECALL                         R9 R9 K13 ["GetService"]
       66 CALL                             R9 2 1
       67 GETIMPORT                        R10 K9 [game]
       69 LOADK                            R12 K18 ["Lighting"]
       70 NAMECALL                         R10 R10 K13 ["GetService"]
       72 CALL                             R10 2 1
       73 GETIMPORT                        R11 K9 [game]
       75 LOADK                            R13 K19 ["StarterGui"]
       76 NAMECALL                         R11 R11 K13 ["GetService"]
       78 CALL                             R11 2 1
       79 GETIMPORT                        R12 K9 [game]
       81 LOADK                            R14 K20 ["StarterPack"]
       82 NAMECALL                         R12 R12 K13 ["GetService"]
       84 CALL                             R12 2 1
       85 GETIMPORT                        R13 K9 [game]
       87 LOADK                            R15 K21 ["StarterPlayer"]
       88 NAMECALL                         R13 R13 K13 ["GetService"]
       90 CALL                             R13 2 1
       91 GETIMPORT                        R14 K9 [game]
       93 LOADK                            R16 K22 ["SoundService"]
       94 NAMECALL                         R14 R14 K13 ["GetService"]
       96 CALL                             R14 2 1
       97 GETIMPORT                        R15 K9 [game]
       99 LOADK                            R17 K23 ["Teams"]
      100 NAMECALL                         R15 R15 K13 ["GetService"]
      102 CALL                             R15 2 -1
      103 SETLIST                          R4 R5 -1 [1]
      105 GETIMPORT                        R5 K1 [require]
      107 GETIMPORT                        R9 K3 [script]
      109 GETTABLEKS                       R8 R9 K4 ["Parent"]
      111 GETTABLEKS                       R7 R8 K4 ["Parent"]
      113 GETTABLEKS                       R6 R7 K24 ["Types"]
      115 CALL                             R5 1 1
      116 NEWTABLE                         R6 0 0
      118 DUPCLOSURE                       R7 K25 [PROTO_0]
      119 CAPTURE                          VAL R1
      120 SETTABLEKS                       R7 R6 K26 ["Sound"]
      122 JUMPIFNOT                        R3 ; [+4]
      123 DUPCLOSURE                       R7 K27 [PROTO_1]
      124 CAPTURE                          VAL R1
      125 SETTABLEKS                       R7 R6 K28 ["AudioPlayer"]
      127 DUPCLOSURE                       R7 K29 [PROTO_2]
      128 CAPTURE                          VAL R2
      129 SETTABLEKS                       R7 R6 K30 ["LuaSourceContainer"]
      131 DUPCLOSURE                       R7 K31 [PROTO_3]
      132 CAPTURE                          VAL R1
      133 CAPTURE                          VAL R0
      134 SETTABLEKS                       R7 R6 K32 ["StringValue"]
      136 DUPCLOSURE                       R7 K33 [PROTO_4]
      137 CAPTURE                          VAL R0
      138 SETTABLEKS                       R7 R6 K34 ["IntValue"]
      140 NEWTABLE                         R7 0 0
      142 DUPCLOSURE                       R8 K35 [PROTO_5]
      143 CAPTURE                          VAL R7
      144 CAPTURE                          VAL R6
      145 DUPCLOSURE                       R9 K36 [PROTO_6]
      146 CAPTURE                          VAL R4
      147 CAPTURE                          VAL R8
      148 RETURN                           R9 1
