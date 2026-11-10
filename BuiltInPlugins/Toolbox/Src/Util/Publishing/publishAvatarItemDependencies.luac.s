PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["shouldDebugWarnings"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+4]
        5 GETIMPORT                        R1 K2 [print]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R2 0 0
        2 LOADN                            R5 1
        3 LENGTH                           R3 R0
        4 MOVE                             R4 R1
        5 FORNPREP                         R3
        6 MOVE                             R7 R2
        7 GETIMPORT                        R8 K2 [table.move]
        9 MOVE                             R9 R0
       10 MOVE                             R10 R5
       11 ADD                              R13 R5 R1
       12 SUBK                             R12 R13 K3 [1]
       13 LENGTH                           R13 R0
       14 FASTCALL2                        MATH_MIN R12 R13 ; [+3]
       16 GETIMPORT                        R11 K6 [math.min]
       18 CALL                             R11 2 1
       19 LOADN                            R12 1
       20 NEWTABLE                         R13 0 0
       22 CALL                             R8 5 -1
       23 FASTCALL                         TABLE_INSERT ; [+2]
       24 GETIMPORT                        R6 K8 [table.insert]
       26 CALL                             R6 -1 0
       27 FORNLOOP                         R3
       28 RETURN                           R2 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["Resolution"]
        2 JUMPIFEQKS                       R1 K1 ["Resolved"] ; [+20]
        4 GETTABLEKS                       R1 R0 K2 ["Reason"]
        6 JUMPIFEQKS                       R1 K3 ["NotPermitted"] ; [+5]
        8 GETTABLEKS                       R1 R0 K2 ["Reason"]
       10 JUMPIFNOTEQKS                    R1 K4 ["NotFound"] ; [+4]
       12 LOADK                            R1 K5 ["Skipped"]
       13 LOADNIL                          R2
       14 RETURN                           R1 2
       15 LOADK                            R1 K6 ["Blocked"]
       16 LOADK                            R2 K7 ["its publish state could not be read (%*)"]
       17 GETTABLEKS                       R4 R0 K2 ["Reason"]
       19 NAMECALL                         R2 R2 K8 ["format"]
       21 CALL                             R2 2 1
       22 RETURN                           R1 2
       23 GETTABLEKS                       R1 R0 K9 ["LatestVersionState"]
       25 JUMPIFNOTEQKS                    R1 K10 ["Published"] ; [+4]
       27 LOADK                            R1 K10 ["Published"]
       28 LOADNIL                          R2
       29 RETURN                           R1 2
       30 GETTABLEKS                       R1 R0 K9 ["LatestVersionState"]
       32 JUMPIFNOTEQKS                    R1 K11 ["Draft"] ; [+18]
       34 GETTABLEKS                       R1 R0 K12 ["LatestModerationState"]
       36 JUMPIFNOTEQKS                    R1 K13 ["Reviewing"] ; [+4]
       38 LOADK                            R1 K6 ["Blocked"]
       39 LOADK                            R2 K14 ["it is still under review"]
       40 RETURN                           R1 2
       41 GETTABLEKS                       R1 R0 K12 ["LatestModerationState"]
       43 JUMPIFNOTEQKS                    R1 K15 ["Rejected"] ; [+4]
       45 LOADK                            R1 K6 ["Blocked"]
       46 LOADK                            R2 K16 ["it was rejected by moderation"]
       47 RETURN                           R1 2
       48 LOADK                            R1 K11 ["Draft"]
       49 LOADNIL                          R2
       50 RETURN                           R1 2
       51 LOADK                            R1 K6 ["Blocked"]
       52 LOADK                            R2 K17 ["it has no version that can be published (%*)"]
       53 GETTABLEKS                       R4 R0 K9 ["LatestVersionState"]
       55 NAMECALL                         R2 R2 K8 ["format"]
       57 CALL                             R2 2 1
       58 RETURN                           R1 2

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["GetAssetPublishStatesAsync"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_4:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R3 0
        3 MOVE                             R4 R1
        4 LOADN                            R5 50
        5 CALL                             R3 2 3
        6 FORGPREP                         R3
        7 GETIMPORT                        R8 K1 [pcall]
        9 NEWCLOSURE                       R9 P0
       10 CAPTURE                          VAL R0
       11 CAPTURE                          VAL R7
       12 CALL                             R8 1 2
       13 JUMPIF                           R8 ; [+11]
       14 GETUPVAL                         R10 1
       15 MOVE                             R11 R9
       16 CALL                             R10 1 1
       17 JUMPIFNOT                        R10 ; [+2]
       18 LOADNIL                          R10
       19 RETURN                           R10 1
       20 GETIMPORT                        R10 K3 [error]
       22 MOVE                             R11 R9
       23 LOADN                            R12 0
       24 CALL                             R10 2 0
       25 GETIMPORT                        R10 K6 [table.move]
       27 MOVE                             R11 R9
       28 LOADN                            R12 1
       29 LENGTH                           R13 R9
       30 LENGTH                           R15 R2
       31 ADDK                             R14 R15 K7 [1]
       32 MOVE                             R15 R2
       33 CALL                             R10 5 0
       34 FORGLOOP                         R3 2 ; [-28]
       36 RETURN                           R2 1

PROTO_5:
        0 DUPTABLE                         R2 K2 [{"drafts", "blockedAssetIds"}]
        1 NEWTABLE                         R3 0 0
        3 SETTABLEKS                       R3 R2 K0 ["drafts"]
        5 NEWTABLE                         R3 0 0
        7 SETTABLEKS                       R3 R2 K1 ["blockedAssetIds"]
        9 JUMPIFNOT                        R0 ; [+3]
       10 LENGTH                           R3 R1
       11 JUMPIFNOTEQKN                    R3 K3 [0] ; [+11]
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K4 ["shouldDebugWarnings"]
       16 CALL                             R3 0 1
       17 JUMPIFNOT                        R3 ; [+4]
       18 GETIMPORT                        R3 K6 [print]
       20 LOADK                            R4 K7 ["avatar item dependencies: skipped, no AssetAccessController or no asset ids"]
       21 CALL                             R3 1 0
       22 RETURN                           R2 1
       23 GETUPVAL                         R3 1
       24 MOVE                             R4 R0
       25 MOVE                             R5 R1
       26 CALL                             R3 2 1
       27 JUMPIFNOTEQKNIL                  R3 ; [+11]
       29 GETUPVAL                         R4 0
       30 GETTABLEKS                       R4 R4 K4 ["shouldDebugWarnings"]
       32 CALL                             R4 0 1
       33 JUMPIFNOT                        R4 ; [+4]
       34 GETIMPORT                        R4 K6 [print]
       36 LOADK                            R5 K8 ["avatar item dependencies: skipped, GetAssetPublishStatesAsync is not registered on this Studio"]
       37 CALL                             R4 1 0
       38 RETURN                           R2 1
       39 MOVE                             R4 R3
       40 LOADNIL                          R5
       41 LOADNIL                          R6
       42 FORGPREP                         R4
       43 GETUPVAL                         R9 2
       44 MOVE                             R10 R8
       45 CALL                             R9 1 2
       46 LOADK                            R11 K9 ["avatar item dependency %*: %*, version %*, moderation %*, resolution %* %*"]
       47 GETTABLEKS                       R13 R8 K10 ["AssetId"]
       49 MOVE                             R14 R9
       50 GETTABLEKS                       R15 R8 K11 ["LatestVersionState"]
       52 GETTABLEKS                       R16 R8 K12 ["LatestModerationState"]
       54 GETTABLEKS                       R17 R8 K13 ["Resolution"]
       56 GETTABLEKS                       R19 R8 K15 ["Reason"]
       58 ORK                              R18 R19 K14 [""]
       59 NAMECALL                         R11 R11 K16 ["format"]
       61 CALL                             R11 7 1
       62 GETUPVAL                         R12 0
       63 GETTABLEKS                       R12 R12 K4 ["shouldDebugWarnings"]
       65 CALL                             R12 0 1
       66 JUMPIFNOT                        R12 ; [+4]
       67 GETIMPORT                        R12 K6 [print]
       69 MOVE                             R13 R11
       70 CALL                             R12 1 0
       71 JUMPIFNOTEQKS                    R9 K17 ["Draft"] ; [+18]
       73 GETTABLEKS                       R12 R2 K0 ["drafts"]
       75 DUPTABLE                         R13 K19 [{"AssetId", "VersionNumber"}]
       76 GETTABLEKS                       R14 R8 K10 ["AssetId"]
       78 SETTABLEKS                       R14 R13 K10 ["AssetId"]
       80 GETTABLEKS                       R14 R8 K20 ["LatestVersionNumber"]
       82 SETTABLEKS                       R14 R13 K18 ["VersionNumber"]
       84 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
       86 GETIMPORT                        R11 K23 [table.insert]
       88 CALL                             R11 2 0
       89 JUMP                             ; [+21]
       90 JUMPIFNOTEQKS                    R9 K24 ["Blocked"] ; [+20]
       92 GETIMPORT                        R11 K26 [warn]
       94 LOADK                            R12 K27 ["Asset %* cannot be used in an avatar item yet: %*."]
       95 GETTABLEKS                       R14 R8 K10 ["AssetId"]
       97 MOVE                             R15 R10
       98 NAMECALL                         R12 R12 K16 ["format"]
      100 CALL                             R12 3 1
      101 CALL                             R11 1 0
      102 GETTABLEKS                       R12 R2 K1 ["blockedAssetIds"]
      104 GETTABLEKS                       R13 R8 K10 ["AssetId"]
      106 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      108 GETIMPORT                        R11 K23 [table.insert]
      110 CALL                             R11 2 0
      111 FORGLOOP                         R4 2 ; [-69]
      113 LOADK                            R4 K28 ["avatar item dependencies: %* checked, %* draft(s), %* blocked"]
      114 LENGTH                           R6 R1
      115 GETTABLEKS                       R8 R2 K0 ["drafts"]
      117 LENGTH                           R7 R8
      118 GETTABLEKS                       R9 R2 K1 ["blockedAssetIds"]
      120 LENGTH                           R8 R9
      121 NAMECALL                         R4 R4 K16 ["format"]
      123 CALL                             R4 4 1
      124 GETUPVAL                         R5 0
      125 GETTABLEKS                       R5 R5 K4 ["shouldDebugWarnings"]
      127 CALL                             R5 0 1
      128 JUMPIFNOT                        R5 ; [+4]
      129 GETIMPORT                        R5 K6 [print]
      131 MOVE                             R6 R4
      132 CALL                             R5 1 0
      133 RETURN                           R2 1

PROTO_6:
        0 NEWTABLE                         R3 0 0
        2 LENGTH                           R4 R1
        3 JUMPIFNOTEQKN                    R4 K0 [0] ; [+2]
        5 RETURN                           R3 1
        6 NEWTABLE                         R4 0 0
        8 GETUPVAL                         R5 0
        9 MOVE                             R6 R1
       10 LOADN                            R7 50
       11 CALL                             R5 2 3
       12 FORGPREP                         R5
       13 JUMPIFNOT                        R2 ; [+20]
       14 MOVE                             R10 R2
       15 CALL                             R10 0 1
       16 JUMPIF                           R10 ; [+17]
       17 NEWTABLE                         R10 0 0
       19 MOVE                             R11 R1
       20 LOADNIL                          R12
       21 LOADNIL                          R13
       22 FORGPREP                         R11
       23 GETTABLEKS                       R18 R15 K1 ["AssetId"]
       25 FASTCALL2                        TABLE_INSERT R10 R18 ; [+4]
       27 MOVE                             R17 R10
       28 GETIMPORT                        R16 K4 [table.insert]
       30 CALL                             R16 2 0
       31 FORGLOOP                         R11 2 ; [-9]
       33 RETURN                           R10 1
       34 MOVE                             R12 R9
       35 NAMECALL                         R10 R0 K5 ["PublishAssetVersionsAndWaitAsync"]
       37 CALL                             R10 2 1
       38 MOVE                             R11 R10
       39 LOADNIL                          R12
       40 LOADNIL                          R13
       41 FORGPREP                         R11
       42 LOADB                            R16 1
       43 SETTABLE                         R16 R4 R15
       44 FORGLOOP                         R11 2 ; [-3]
       46 FORGLOOP                         R5 2 ; [-34]
       48 NEWTABLE                         R5 0 0
       50 MOVE                             R6 R1
       51 LOADNIL                          R7
       52 LOADNIL                          R8
       53 FORGPREP                         R6
       54 GETTABLEKS                       R12 R10 K1 ["AssetId"]
       56 GETTABLE                         R11 R4 R12
       57 JUMPIFNOT                        R11 ; [+18]
       58 GETIMPORT                        R11 K7 [warn]
       60 LOADK                            R12 K8 ["Asset %* could not be published. The Studio log has the reason."]
       61 GETTABLEKS                       R14 R10 K1 ["AssetId"]
       63 NAMECALL                         R12 R12 K9 ["format"]
       65 CALL                             R12 2 1
       66 CALL                             R11 1 0
       67 GETTABLEKS                       R13 R10 K1 ["AssetId"]
       69 FASTCALL2                        TABLE_INSERT R3 R13 ; [+4]
       71 MOVE                             R12 R3
       72 GETIMPORT                        R11 K4 [table.insert]
       74 CALL                             R11 2 0
       75 JUMP                             ; [+8]
       76 GETTABLEKS                       R13 R10 K1 ["AssetId"]
       78 FASTCALL2                        TABLE_INSERT R5 R13 ; [+4]
       80 MOVE                             R12 R5
       81 GETIMPORT                        R11 K4 [table.insert]
       83 CALL                             R11 2 0
       84 FORGLOOP                         R6 2 ; [-31]
       86 LOADN                            R8 1
       87 LOADN                            R6 5
       88 LOADN                            R7 1
       89 FORNPREP                         R6
       90 LENGTH                           R9 R5
       91 JUMPIFEQKN                       R9 K0 [0] ; [+63]
       93 LOADN                            R9 1
       94 JUMPIFNOTLT                      R9 R8 ; [+5]
       96 GETIMPORT                        R9 K12 [task.wait]
       98 LOADN                            R10 1
       99 CALL                             R9 1 0
      100 GETUPVAL                         R9 1
      101 MOVE                             R10 R0
      102 MOVE                             R11 R5
      103 CALL                             R9 2 1
      104 JUMPIFNOTEQKNIL                  R9 ; [+6]
      106 GETIMPORT                        R10 K14 [error]
      108 LOADK                            R11 K15 ["GetAssetPublishStatesAsync is not registered on this Studio"]
      109 LOADN                            R12 0
      110 CALL                             R10 2 0
      111 NEWTABLE                         R10 0 0
      113 MOVE                             R11 R9
      114 LOADNIL                          R12
      115 LOADNIL                          R13
      116 FORGPREP                         R11
      117 GETUPVAL                         R16 2
      118 MOVE                             R17 R15
      119 CALL                             R16 1 2
      120 JUMPIFNOTEQKS                    R16 K16 ["Draft"] ; [+10]
      122 GETTABLEKS                       R20 R15 K1 ["AssetId"]
      124 FASTCALL2                        TABLE_INSERT R10 R20 ; [+4]
      126 MOVE                             R19 R10
      127 GETIMPORT                        R18 K4 [table.insert]
      129 CALL                             R18 2 0
      130 JUMP                             ; [+20]
      131 JUMPIFNOTEQKS                    R16 K17 ["Blocked"] ; [+19]
      133 GETIMPORT                        R18 K7 [warn]
      135 LOADK                            R19 K18 ["Asset %* could not be published: %*."]
      136 GETTABLEKS                       R21 R15 K1 ["AssetId"]
      138 MOVE                             R22 R17
      139 NAMECALL                         R19 R19 K9 ["format"]
      141 CALL                             R19 3 1
      142 CALL                             R18 1 0
      143 GETTABLEKS                       R20 R15 K1 ["AssetId"]
      145 FASTCALL2                        TABLE_INSERT R3 R20 ; [+4]
      147 MOVE                             R19 R3
      148 GETIMPORT                        R18 K4 [table.insert]
      150 CALL                             R18 2 0
      151 FORGLOOP                         R11 2 ; [-35]
      153 MOVE                             R5 R10
      154 FORNLOOP                         R6
      155 MOVE                             R6 R5
      156 LOADNIL                          R7
      157 LOADNIL                          R8
      158 FORGPREP                         R6
      159 GETIMPORT                        R11 K7 [warn]
      161 LOADK                            R12 K19 ["Asset %* is still publishing. Try again in a moment."]
      162 MOVE                             R14 R10
      163 NAMECALL                         R12 R12 K9 ["format"]
      165 CALL                             R12 2 1
      166 CALL                             R11 1 0
      167 FASTCALL2                        TABLE_INSERT R3 R10 ; [+5]
      169 MOVE                             R12 R3
      170 MOVE                             R13 R10
      171 GETIMPORT                        R11 K4 [table.insert]
      173 CALL                             R11 2 0
      174 FORGLOOP                         R6 2 ; [-16]
      176 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["DebugFlags"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["Util"]
       22 GETTABLEKS                       R3 R3 K9 ["Publishing"]
       24 GETTABLEKS                       R3 R3 K10 ["isCommandUnavailable"]
       26 CALL                             R2 1 1
       27 DUPCLOSURE                       R3 K11 [PROTO_0]
       28 CAPTURE                          VAL R1
       29 DUPCLOSURE                       R4 K12 [PROTO_1]
       30 DUPCLOSURE                       R5 K13 [PROTO_2]
       31 DUPCLOSURE                       R6 K14 [PROTO_4]
       32 CAPTURE                          VAL R4
       33 CAPTURE                          VAL R2
       34 NEWTABLE                         R7 2 0
       36 DUPCLOSURE                       R8 K15 [PROTO_5]
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R6
       39 CAPTURE                          VAL R5
       40 SETTABLEKS                       R8 R7 K16 ["check"]
       42 DUPCLOSURE                       R8 K17 [PROTO_6]
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R6
       45 CAPTURE                          VAL R5
       46 SETTABLEKS                       R8 R7 K18 ["publish"]
       48 RETURN                           R7 1
