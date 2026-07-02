PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 CALL                             R1 0 1
        4 LENGTH                           R2 R1
        5 JUMPIFNOTEQKN                    R2 K0 [0] ; [+2]
        7 RETURN                           R0 1
        8 GETIMPORT                        R2 K3 [string.gmatch]
       10 MOVE                             R3 R1
       11 LOADK                            R4 K4 ["([^,%s]+)"]
       12 CALL                             R2 2 3
       13 FORGPREP                         R2
       14 LOADB                            R7 1
       15 SETTABLE                         R7 R0 R5
       16 FORGLOOP                         R2 1 ; [-3]
       18 RETURN                           R0 1

PROTO_1:
        0 JUMPIFNOT                        R0 ; [+13]
        1 GETTABLEKS                       R2 R1 K0 ["StatusCode"]
        3 JUMPIFNOTEQKN                    R2 K1 [200] ; [+10]
        5 GETUPVAL                         R2 0
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R5 R1 K2 ["Body"]
        9 NAMECALL                         R3 R3 K3 ["JSONDecode"]
       11 CALL                             R3 2 -1
       12 CALL                             R2 -1 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R2 2
       15 CALL                             R2 0 0
       16 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R4 K3 [{"assetIds", "restrictedEntities", "universeId"}]
        2 GETUPVAL                         R5 1
        3 SETTABLEKS                       R5 R4 K0 ["assetIds"]
        5 GETUPVAL                         R5 2
        6 SETTABLEKS                       R5 R4 K1 ["restrictedEntities"]
        8 GETUPVAL                         R5 3
        9 SETTABLEKS                       R5 R4 K2 ["universeId"]
       11 NAMECALL                         R2 R2 K4 ["JSONEncode"]
       13 CALL                             R2 2 1
       14 GETUPVAL                         R3 0
       15 DUPTABLE                         R5 K10 [{["Url"], ["Method"] = "POST", ["Body"], ["Headers"]}]
       16 GETUPVAL                         R6 4
       17 SETTABLEKS                       R6 R5 K5 ["Url"]
       19 SETTABLEKS                       R2 R5 K8 ["Body"]
       21 NEWTABLE                         R6 2 0
       23 GETUPVAL                         R7 5
       24 GETTABLEKS                       R7 R7 K11 ["ExperienceAuthHeaderKey"]
       26 GETUPVAL                         R8 6
       27 SETTABLE                         R8 R6 R7
       28 GETUPVAL                         R7 5
       29 GETTABLEKS                       R7 R7 K12 ["ContentType"]
       31 GETUPVAL                         R8 5
       32 GETTABLEKS                       R8 R8 K13 ["ApplicationJson"]
       34 SETTABLE                         R8 R6 R7
       35 SETTABLEKS                       R6 R5 K9 ["Headers"]
       37 NAMECALL                         R3 R3 K14 ["RequestInternal"]
       39 CALL                             R3 2 1
       40 NEWCLOSURE                       R6 P0
       41 CAPTURE                          VAL R0
       42 CAPTURE                          UPVAL U0
       43 CAPTURE                          VAL R1
       44 NAMECALL                         R4 R3 K15 ["Start"]
       46 CALL                             R4 2 0
       47 RETURN                           R0 0

PROTO_3:
        0 LENGTH                           R5 R1
        1 JUMPIFNOTEQKN                    R5 K0 [0] ; [+6]
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R5 R5 K1 ["resolve"]
        6 CALL                             R5 0 -1
        7 RETURN                           R5 -1
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K2 ["new"]
       11 NEWCLOSURE                       R6 P0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          VAL R1
       14 CAPTURE                          VAL R2
       15 CAPTURE                          VAL R4
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          VAL R3
       19 CALL                             R5 1 -1
       20 RETURN                           R5 -1

PROTO_4:
        0 GETIMPORT                        R5 K1 [game]
        2 LOADK                            R7 K2 ["UGCValidationCanPublishRequestPageSize"]
        3 NAMECALL                         R5 R5 K3 ["GetFastInt"]
        5 CALL                             R5 2 1
        6 GETIMPORT                        R6 K1 [game]
        8 LOADK                            R8 K4 ["UGCValidationMaxAssetSizeAllowed"]
        9 NAMECALL                         R6 R6 K3 ["GetFastInt"]
       11 CALL                             R6 2 1
       12 GETUPVAL                         R8 0
       13 JUMPIFNOT                        R4 ; [+2]
       14 LOADK                            R9 K5 ["packages-api/v1/rcc/canPublish"]
       15 JUMP                             ; [+1]
       16 LOADK                            R9 K6 ["packages-api/v1/canPublish"]
       17 CONCAT                           R7 R8 R9
       18 NEWTABLE                         R8 0 0
       20 NEWTABLE                         R9 0 0
       22 MOVE                             R10 R0
       23 LOADNIL                          R11
       24 LOADNIL                          R12
       25 FORGPREP                         R10
       26 GETTABLE                         R15 R8 R13
       27 JUMPIF                           R15 ; [+9]
       28 LOADB                            R15 1
       29 SETTABLE                         R15 R8 R13
       30 FASTCALL2                        TABLE_INSERT R9 R13 ; [+5]
       32 MOVE                             R16 R9
       33 MOVE                             R17 R13
       34 GETIMPORT                        R15 K9 [table.insert]
       36 CALL                             R15 2 0
       37 FORGLOOP                         R10 2 ; [-12]
       39 LENGTH                           R10 R9
       40 JUMPIFNOTLT                      R6 R10 ; [+3]
       42 DUPTABLE                         R10 K12 [{["status"] = "tooManyAssets"}]
       43 RETURN                           R10 1
       44 NEWTABLE                         R10 0 0
       46 NEWTABLE                         R11 0 0
       48 MOVE                             R12 R9
       49 LOADNIL                          R13
       50 LOADNIL                          R14
       51 FORGPREP                         R12
       52 FASTCALL2                        TABLE_INSERT R11 R16 ; [+5]
       54 MOVE                             R18 R11
       55 MOVE                             R19 R16
       56 GETIMPORT                        R17 K9 [table.insert]
       58 CALL                             R17 2 0
       59 LENGTH                           R17 R11
       60 JUMPIFNOTLE                      R5 R17 ; [+15]
       62 MOVE                             R18 R10
       63 GETUPVAL                         R19 1
       64 MOVE                             R20 R7
       65 MOVE                             R21 R11
       66 MOVE                             R22 R1
       67 MOVE                             R23 R2
       68 MOVE                             R24 R3
       69 CALL                             R19 5 -1
       70 FASTCALL                         TABLE_INSERT ; [+2]
       71 GETIMPORT                        R17 K9 [table.insert]
       73 CALL                             R17 -1 0
       74 NEWTABLE                         R11 0 0
       76 FORGLOOP                         R12 2 ; [-25]
       78 LENGTH                           R12 R11
       79 LOADN                            R13 0
       80 JUMPIFNOTLT                      R13 R12 ; [+13]
       82 MOVE                             R13 R10
       83 GETUPVAL                         R14 1
       84 MOVE                             R15 R7
       85 MOVE                             R16 R11
       86 MOVE                             R17 R1
       87 MOVE                             R18 R2
       88 MOVE                             R19 R3
       89 CALL                             R14 5 -1
       90 FASTCALL                         TABLE_INSERT ; [+2]
       91 GETIMPORT                        R12 K9 [table.insert]
       93 CALL                             R12 -1 0
       94 GETUPVAL                         R12 2
       95 GETTABLEKS                       R12 R12 K13 ["all"]
       97 MOVE                             R13 R10
       98 CALL                             R12 1 1
       99 NAMECALL                         R12 R12 K14 ["await"]
      101 CALL                             R12 1 2
      102 JUMPIF                           R12 ; [+2]
      103 DUPTABLE                         R14 K16 [{["status"] = "loadFailed"}]
      104 RETURN                           R14 1
      105 GETUPVAL                         R15 3
      106 CALL                             R15 0 1
      107 JUMPIFNOTEQKS                    R15 K17 [""] ; [+2]
      109 LOADB                            R14 0 +1
      110 LOADB                            R14 1
      111 JUMPIFNOT                        R14 ; [+3]
      112 GETUPVAL                         R15 4
      113 CALL                             R15 0 1
      114 JUMP                             ; [+2]
      115 NEWTABLE                         R15 0 0
      117 NEWTABLE                         R16 0 0
      119 MOVE                             R17 R13
      120 LOADNIL                          R18
      121 LOADNIL                          R19
      122 FORGPREP                         R17
      123 GETTABLEKS                       R22 R21 K18 ["result"]
      125 LOADNIL                          R23
      126 LOADNIL                          R24
      127 FORGPREP                         R22
      128 GETTABLE                         R27 R0 R25
      129 JUMPIFNOT                        R27 ; [+20]
      130 MOVE                             R28 R26
      131 JUMPIFNOT                        R14 ; [+4]
      132 JUMPIF                           R26 ; [+3]
      133 GETTABLE                         R29 R15 R25
      134 JUMPIFNOT                        R29 ; [+1]
      135 LOADB                            R28 1
      136 DUPTABLE                         R31 K22 [{"assetId", "allowed", "entry"}]
      137 SETTABLEKS                       R25 R31 K19 ["assetId"]
      139 SETTABLEKS                       R28 R31 K20 ["allowed"]
      141 GETTABLEN                        R32 R27 1
      142 SETTABLEKS                       R32 R31 K21 ["entry"]
      144 FASTCALL2                        TABLE_INSERT R16 R31 ; [+4]
      146 MOVE                             R30 R16
      147 GETIMPORT                        R29 K9 [table.insert]
      149 CALL                             R29 2 0
      150 FORGLOOP                         R22 2 ; [-23]
      152 FORGLOOP                         R17 2 ; [-30]
      154 DUPTABLE                         R17 K25 [{["status"] = "ok", ["verdicts"]}]
      155 SETTABLEKS                       R16 R17 K24 ["verdicts"]
      157 RETURN                           R17 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K2 ["Parent"]
       11 GETTABLEKS                       R2 R2 K5 ["Promise"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K7 [game]
       16 LOADK                            R4 K8 ["UGCValidationCanPublishRequestPageSize"]
       17 LOADN                            R5 50
       18 NAMECALL                         R2 R2 K9 ["DefineFastInt"]
       20 CALL                             R2 3 0
       21 GETIMPORT                        R2 K7 [game]
       23 LOADK                            R4 K10 ["UGCValidationMaxAssetSizeAllowed"]
       24 LOADN                            R5 500
       25 NAMECALL                         R2 R2 K9 ["DefineFastInt"]
       27 CALL                             R2 3 0
       28 GETIMPORT                        R2 K4 [require]
       30 GETTABLEKS                       R3 R0 K11 ["util"]
       32 GETTABLEKS                       R3 R3 K12 ["APIUtil"]
       34 CALL                             R2 1 1
       35 GETIMPORT                        R3 K4 [require]
       37 GETTABLEKS                       R4 R0 K13 ["Constants"]
       39 CALL                             R3 1 1
       40 GETIMPORT                        R4 K4 [require]
       42 GETTABLEKS                       R5 R0 K14 ["flags"]
       44 GETTABLEKS                       R5 R5 K15 ["getFStringUGCValidationReferenceMeshIdWhitelistForIEC"]
       46 CALL                             R4 1 1
       47 GETIMPORT                        R5 K4 [require]
       49 GETTABLEKS                       R6 R0 K11 ["util"]
       51 GETTABLEKS                       R6 R6 K16 ["Types"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K7 [game]
       56 LOADK                            R8 K17 ["HttpService"]
       57 NAMECALL                         R6 R6 K18 ["GetService"]
       59 CALL                             R6 2 1
       60 GETTABLEKS                       R7 R2 K19 ["getBaseDomain"]
       62 CALL                             R7 0 1
       63 GETIMPORT                        R8 K22 [string.format]
       65 LOADK                            R9 K23 ["https://apis.%s"]
       66 MOVE                             R10 R7
       67 CALL                             R8 2 1
       68 DUPCLOSURE                       R9 K24 [PROTO_0]
       69 CAPTURE                          VAL R4
       70 DUPCLOSURE                       R10 K25 [PROTO_3]
       71 CAPTURE                          VAL R1
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R3
       74 DUPCLOSURE                       R11 K26 [PROTO_4]
       75 CAPTURE                          VAL R8
       76 CAPTURE                          VAL R10
       77 CAPTURE                          VAL R1
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R9
       80 RETURN                           R11 1
