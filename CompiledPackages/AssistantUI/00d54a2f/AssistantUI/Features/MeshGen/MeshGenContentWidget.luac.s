PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETUPVAL                         R4 2
        4 GETTABLEKS                       R3 R4 K0 ["Root"]
        6 DUPTABLE                         R4 K5 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
        7 GETTABLEKS                       R5 R0 K1 ["LayoutOrder"]
        9 SETTABLEKS                       R5 R4 K1 ["LayoutOrder"]
       11 GETTABLEKS                       R6 R0 K6 ["canToggle"]
       13 JUMPIFNOT                        R6 ; [+3]
       14 GETTABLEKS                       R5 R0 K2 ["expanded"]
       16 JUMP                             ; [+1]
       17 LOADB                            R5 1
       18 SETTABLEKS                       R5 R4 K2 ["expanded"]
       20 GETTABLEKS                       R5 R0 K3 ["contentId"]
       22 SETTABLEKS                       R5 R4 K3 ["contentId"]
       24 GETTABLEKS                       R5 R0 K4 ["editThisContent"]
       26 SETTABLEKS                       R5 R4 K4 ["editThisContent"]
       28 DUPTABLE                         R5 K9 [{"Header", "Content"}]
       29 GETUPVAL                         R6 1
       30 GETUPVAL                         R8 2
       31 GETTABLEKS                       R7 R8 K7 ["Header"]
       33 DUPTABLE                         R8 K12 [{"IsDisabled", "LayoutOrder", "testId"}]
       34 GETTABLEKS                       R10 R0 K6 ["canToggle"]
       36 NOT                              R9 R10
       37 SETTABLEKS                       R9 R8 K10 ["IsDisabled"]
       39 MOVE                             R9 R1
       40 CALL                             R9 0 1
       41 SETTABLEKS                       R9 R8 K1 ["LayoutOrder"]
       43 GETUPVAL                         R11 3
       44 GETTABLEKS                       R10 R11 K13 ["MeshGen"]
       46 GETTABLEKS                       R9 R10 K14 ["Expand"]
       48 SETTABLEKS                       R9 R8 K11 ["testId"]
       50 GETTABLEKS                       R9 R0 K15 ["headerChildren"]
       52 CALL                             R6 3 1
       53 SETTABLEKS                       R6 R5 K7 ["Header"]
       55 GETTABLEKS                       R6 R0 K16 ["children"]
       57 JUMPIFNOT                        R6 ; [+15]
       58 GETUPVAL                         R6 1
       59 GETUPVAL                         R8 2
       60 GETTABLEKS                       R7 R8 K8 ["Content"]
       62 DUPTABLE                         R8 K18 [{"tag", "LayoutOrder"}]
       63 LOADK                            R9 K19 ["col size-0-0 fill auto-y gap-small"]
       64 SETTABLEKS                       R9 R8 K17 ["tag"]
       66 MOVE                             R9 R1
       67 CALL                             R9 0 1
       68 SETTABLEKS                       R9 R8 K1 ["LayoutOrder"]
       70 GETTABLEKS                       R9 R0 K16 ["children"]
       72 CALL                             R6 3 1
       73 SETTABLEKS                       R6 R5 K8 ["Content"]
       75 CALL                             R2 3 -1
       76 RETURN                           R2 -1

PROTO_1:
        0 DUPTABLE                         R0 K2 [{"Preparing", "FailedToGenerate"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K3 ["MeshGen"]
        3 LOADK                            R4 K0 ["Preparing"]
        4 NAMECALL                         R1 R1 K4 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Preparing"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K3 ["MeshGen"]
       11 LOADK                            R4 K1 ["FailedToGenerate"]
       12 NAMECALL                         R1 R1 K4 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["FailedToGenerate"]
       17 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useMemo"]
        3 DUPCLOSURE                       R2 K1 [PROTO_1]
        4 CAPTURE                          UPVAL U1
        5 NEWTABLE                         R3 0 1
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R4 R5 K2 ["locale"]
       10 SETLIST                          R3 R4 1 [1]
       12 CALL                             R1 2 1
       13 GETUPVAL                         R3 2
       14 CALL                             R3 0 1
       15 JUMPIFNOT                        R3 ; [+14]
       16 GETTABLEKS                       R3 R0 K3 ["isError"]
       18 NOT                              R2 R3
       19 JUMPIFNOT                        R2 ; [+11]
       20 GETTABLEKS                       R3 R0 K4 ["mode"]
       22 GETUPVAL                         R5 3
       23 GETTABLEKS                       R4 R5 K5 ["Preparing"]
       25 JUMPIFEQ                         R3 R4 ; [+2]
       27 LOADB                            R2 0 +1
       28 LOADB                            R2 1
       29 JUMP                             ; [+1]
       30 LOADB                            R2 1
       31 GETUPVAL                         R3 4
       32 CALL                             R3 0 1
       33 GETUPVAL                         R4 5
       34 GETUPVAL                         R5 6
       35 GETUPVAL                         R7 7
       36 GETTABLEKS                       R6 R7 K6 ["assign"]
       38 DUPTABLE                         R7 K9 [{"canToggle", "headerChildren"}]
       39 LOADB                            R8 0
       40 SETTABLEKS                       R8 R7 K7 ["canToggle"]
       42 DUPTABLE                         R8 K11 [{"Text"}]
       43 GETUPVAL                         R9 5
       44 GETUPVAL                         R10 8
       45 DUPTABLE                         R11 K14 [{"tag", "Text", "LayoutOrder"}]
       46 LOADK                            R12 K15 ["size-0-full auto-x text-label-small content-default text-truncate-end text-align-y-center"]
       47 SETTABLEKS                       R12 R11 K12 ["tag"]
       49 GETUPVAL                         R13 2
       50 CALL                             R13 0 1
       51 JUMPIFNOT                        R13 ; [+6]
       52 GETTABLEKS                       R13 R0 K3 ["isError"]
       54 JUMPIFNOT                        R13 ; [+3]
       55 GETTABLEKS                       R12 R1 K16 ["FailedToGenerate"]
       57 JUMP                             ; [+2]
       58 GETTABLEKS                       R12 R1 K5 ["Preparing"]
       60 SETTABLEKS                       R12 R11 K10 ["Text"]
       62 MOVE                             R12 R3
       63 CALL                             R12 0 1
       64 SETTABLEKS                       R12 R11 K13 ["LayoutOrder"]
       66 DUPTABLE                         R12 K18 [{"Shimmer"}]
       67 MOVE                             R13 R2
       68 JUMPIFNOT                        R13 ; [+3]
       69 GETUPVAL                         R13 5
       70 GETUPVAL                         R14 9
       71 CALL                             R13 1 1
       72 SETTABLEKS                       R13 R12 K17 ["Shimmer"]
       74 CALL                             R9 3 1
       75 SETTABLEKS                       R9 R8 K10 ["Text"]
       77 SETTABLEKS                       R8 R7 K8 ["headerChildren"]
       79 MOVE                             R8 R0
       80 CALL                             R6 2 -1
       81 CALL                             R4 -1 -1
       82 RETURN                           R4 -1

PROTO_3:
        0 LOADB                            R1 0
        1 GETUPVAL                         R2 0
        2 JUMPIFNOTLE                      R2 R0 ; [+6]
        4 GETUPVAL                         R2 1
        5 JUMPIFLE                         R0 R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_4:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_4]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_7:
        0 JUMPIFNOTEQKN                    R0 K0 [0] ; [+3]
        2 LOADK                            R1 K1 [""]
        3 RETURN                           R1 1
        4 FASTCALL1                        TOSTRING R0 ; [+3]
        5 MOVE                             R2 R0
        6 GETIMPORT                        R1 K3 [tostring]
        8 CALL                             R1 1 1
        9 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["runGeneration"]
        3 DUPTABLE                         R1 K3 [{"useSelectedBoundingBox", "maxTriangles"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["useSelectedBoundingBox"]
        7 GETUPVAL                         R3 2
        8 JUMPIFEQKN                       R3 K4 [0] ; [+3]
       10 GETUPVAL                         R2 2
       11 JUMP                             ; [+1]
       12 LOADNIL                          R2
       13 SETTABLEKS                       R2 R1 K2 ["maxTriangles"]
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_9:
        0 DUPTABLE                         R0 K4 [{"Generate", "WaitingForUser", "UseSelection", "MaxTriangles"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K5 ["MeshGen"]
        3 LOADK                            R4 K0 ["Generate"]
        4 NAMECALL                         R1 R1 K6 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Generate"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K5 ["MeshGen"]
       11 LOADK                            R4 K1 ["WaitingForUser"]
       12 NAMECALL                         R1 R1 K6 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["WaitingForUser"]
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K5 ["MeshGen"]
       19 LOADK                            R4 K2 ["UseSelection"]
       20 NAMECALL                         R1 R1 K6 ["getText"]
       22 CALL                             R1 3 1
       23 SETTABLEKS                       R1 R0 K2 ["UseSelection"]
       25 GETUPVAL                         R1 0
       26 LOADK                            R3 K5 ["MeshGen"]
       27 LOADK                            R4 K3 ["MaxTriangles"]
       28 NAMECALL                         R1 R1 K6 ["getText"]
       30 CALL                             R1 3 1
       31 SETTABLEKS                       R1 R0 K3 ["MaxTriangles"]
       33 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 GETTABLEKS                       R2 R0 K1 ["initialUseSelectedBoundingBox"]
        5 CALL                             R1 1 2
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K0 ["useState"]
        9 GETTABLEKS                       R4 R0 K2 ["initialMaxTriangles"]
       11 CALL                             R3 1 2
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R5 R6 K3 ["useCallback"]
       15 NEWCLOSURE                       R6 P0
       16 CAPTURE                          VAL R2
       17 NEWTABLE                         R7 0 0
       19 CALL                             R5 2 1
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R6 R7 K3 ["useCallback"]
       23 NEWCLOSURE                       R7 P1
       24 CAPTURE                          VAL R4
       25 NEWTABLE                         R8 0 0
       27 CALL                             R6 2 1
       28 GETUPVAL                         R8 0
       29 GETTABLEKS                       R7 R8 K3 ["useCallback"]
       31 DUPCLOSURE                       R8 K4 [PROTO_7]
       32 NEWTABLE                         R9 0 0
       34 CALL                             R7 2 1
       35 GETUPVAL                         R9 0
       36 GETTABLEKS                       R8 R9 K3 ["useCallback"]
       38 NEWCLOSURE                       R9 P3
       39 CAPTURE                          VAL R0
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R3
       42 NEWTABLE                         R10 0 3
       44 GETTABLEKS                       R11 R0 K5 ["runGeneration"]
       46 MOVE                             R12 R1
       47 MOVE                             R13 R3
       48 SETLIST                          R10 R11 3 [1]
       50 CALL                             R8 2 1
       51 GETUPVAL                         R10 0
       52 GETTABLEKS                       R9 R10 K6 ["useMemo"]
       54 DUPCLOSURE                       R10 K7 [PROTO_9]
       55 CAPTURE                          UPVAL U1
       56 NEWTABLE                         R11 0 1
       58 GETUPVAL                         R13 1
       59 GETTABLEKS                       R12 R13 K8 ["locale"]
       61 SETLIST                          R11 R12 1 [1]
       63 CALL                             R9 2 1
       64 GETUPVAL                         R10 2
       65 CALL                             R10 0 1
       66 GETUPVAL                         R11 3
       67 GETUPVAL                         R12 4
       68 GETUPVAL                         R14 5
       69 GETTABLEKS                       R13 R14 K9 ["assign"]
       71 DUPTABLE                         R14 K11 [{"headerChildren"}]
       72 DUPTABLE                         R15 K13 [{"Text"}]
       73 GETUPVAL                         R16 3
       74 GETUPVAL                         R17 6
       75 DUPTABLE                         R18 K16 [{"tag", "Text", "LayoutOrder"}]
       76 LOADK                            R19 K17 ["size-0-0 auto-xy text-label-small content-default text-truncate-end"]
       77 SETTABLEKS                       R19 R18 K14 ["tag"]
       79 GETTABLEKS                       R19 R9 K18 ["WaitingForUser"]
       81 SETTABLEKS                       R19 R18 K12 ["Text"]
       83 MOVE                             R19 R10
       84 CALL                             R19 0 1
       85 SETTABLEKS                       R19 R18 K15 ["LayoutOrder"]
       87 CALL                             R16 2 1
       88 SETTABLEKS                       R16 R15 K12 ["Text"]
       90 SETTABLEKS                       R15 R14 K10 ["headerChildren"]
       92 MOVE                             R15 R0
       93 CALL                             R13 2 1
       94 DUPTABLE                         R14 K20 [{"ArgumentsContainer"}]
       95 GETUPVAL                         R15 3
       96 GETUPVAL                         R16 7
       97 DUPTABLE                         R17 K21 [{"tag", "LayoutOrder"}]
       98 LOADK                            R18 K22 ["row size-full-0 auto-y align-y-bottom"]
       99 SETTABLEKS                       R18 R17 K14 ["tag"]
      101 MOVE                             R18 R10
      102 CALL                             R18 0 1
      103 SETTABLEKS                       R18 R17 K15 ["LayoutOrder"]
      105 DUPTABLE                         R18 K25 [{"GenerationSettings", "GenerateButton"}]
      106 GETUPVAL                         R19 3
      107 GETUPVAL                         R20 7
      108 DUPTABLE                         R21 K21 [{"tag", "LayoutOrder"}]
      109 LOADK                            R22 K26 ["fill auto-y col gap-medium padding-small align-y-center"]
      110 SETTABLEKS                       R22 R21 K14 ["tag"]
      112 MOVE                             R22 R10
      113 CALL                             R22 0 1
      114 SETTABLEKS                       R22 R21 K15 ["LayoutOrder"]
      116 DUPTABLE                         R22 K29 [{"UseSelectedBoundingBox", "MaxTriangles"}]
      117 GETUPVAL                         R23 3
      118 GETUPVAL                         R24 8
      119 DUPTABLE                         R25 K35 [{"size", "label", "isChecked", "onActivated", "LayoutOrder", "testId"}]
      120 GETUPVAL                         R29 9
      121 GETTABLEKS                       R28 R29 K36 ["Enums"]
      123 GETTABLEKS                       R27 R28 K37 ["InputSize"]
      125 GETTABLEKS                       R26 R27 K38 ["XSmall"]
      127 SETTABLEKS                       R26 R25 K30 ["size"]
      129 GETTABLEKS                       R26 R9 K39 ["UseSelection"]
      131 SETTABLEKS                       R26 R25 K31 ["label"]
      133 SETTABLEKS                       R1 R25 K32 ["isChecked"]
      135 SETTABLEKS                       R5 R25 K33 ["onActivated"]
      137 MOVE                             R26 R10
      138 CALL                             R26 0 1
      139 SETTABLEKS                       R26 R25 K15 ["LayoutOrder"]
      141 GETUPVAL                         R28 10
      142 GETTABLEKS                       R27 R28 K40 ["MeshGen"]
      144 GETTABLEKS                       R26 R27 K39 ["UseSelection"]
      146 SETTABLEKS                       R26 R25 K34 ["testId"]
      148 CALL                             R23 2 1
      149 SETTABLEKS                       R23 R22 K27 ["UseSelectedBoundingBox"]
      151 GETUPVAL                         R23 3
      152 GETUPVAL                         R24 11
      153 DUPTABLE                         R25 K45 [{"size", "label", "value", "hasError", "onChanged", "formatAsString", "LayoutOrder", "testId"}]
      154 GETUPVAL                         R29 9
      155 GETTABLEKS                       R28 R29 K36 ["Enums"]
      157 GETTABLEKS                       R27 R28 K37 ["InputSize"]
      159 GETTABLEKS                       R26 R27 K38 ["XSmall"]
      161 SETTABLEKS                       R26 R25 K30 ["size"]
      163 GETTABLEKS                       R26 R9 K28 ["MaxTriangles"]
      165 SETTABLEKS                       R26 R25 K31 ["label"]
      167 SETTABLEKS                       R3 R25 K41 ["value"]
      169 LOADB                            R26 0
      170 JUMPIFEQKNIL                     R3 ; [+11]
      172 LOADB                            R27 0
      173 GETUPVAL                         R28 12
      174 JUMPIFNOTLE                      R28 R3 ; [+6]
      176 GETUPVAL                         R28 13
      177 JUMPIFLE                         R3 R28 ; [+2]
      179 LOADB                            R27 0 +1
      180 LOADB                            R27 1
      181 NOT                              R26 R27
      182 SETTABLEKS                       R26 R25 K42 ["hasError"]
      184 SETTABLEKS                       R6 R25 K43 ["onChanged"]
      186 SETTABLEKS                       R7 R25 K44 ["formatAsString"]
      188 MOVE                             R26 R10
      189 CALL                             R26 0 1
      190 SETTABLEKS                       R26 R25 K15 ["LayoutOrder"]
      192 GETUPVAL                         R28 10
      193 GETTABLEKS                       R27 R28 K40 ["MeshGen"]
      195 GETTABLEKS                       R26 R27 K28 ["MaxTriangles"]
      197 SETTABLEKS                       R26 R25 K34 ["testId"]
      199 CALL                             R23 2 1
      200 SETTABLEKS                       R23 R22 K28 ["MaxTriangles"]
      202 CALL                             R19 3 1
      203 SETTABLEKS                       R19 R18 K23 ["GenerationSettings"]
      205 GETUPVAL                         R19 3
      206 GETUPVAL                         R20 14
      207 DUPTABLE                         R21 K48 [{"text", "size", "variant", "onActivated", "LayoutOrder"}]
      208 GETTABLEKS                       R22 R9 K49 ["Generate"]
      210 SETTABLEKS                       R22 R21 K46 ["text"]
      212 GETUPVAL                         R25 9
      213 GETTABLEKS                       R24 R25 K36 ["Enums"]
      215 GETTABLEKS                       R23 R24 K37 ["InputSize"]
      217 GETTABLEKS                       R22 R23 K50 ["Small"]
      219 SETTABLEKS                       R22 R21 K30 ["size"]
      221 GETUPVAL                         R25 9
      222 GETTABLEKS                       R24 R25 K36 ["Enums"]
      224 GETTABLEKS                       R23 R24 K51 ["ButtonVariant"]
      226 GETTABLEKS                       R22 R23 K52 ["Standard"]
      228 SETTABLEKS                       R22 R21 K47 ["variant"]
      230 SETTABLEKS                       R8 R21 K33 ["onActivated"]
      232 MOVE                             R22 R10
      233 CALL                             R22 0 1
      234 SETTABLEKS                       R22 R21 K15 ["LayoutOrder"]
      236 CALL                             R19 2 1
      237 SETTABLEKS                       R19 R18 K24 ["GenerateButton"]
      239 CALL                             R15 3 1
      240 SETTABLEKS                       R15 R14 K19 ["ArgumentsContainer"]
      242 CALL                             R11 3 -1
      243 RETURN                           R11 -1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 1
        3 JUMPIFNOTLE                      R1 R0 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R0 2
        7 GETUPVAL                         R2 0
        8 ADDK                             R1 R2 K0 [1]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R1 3
       11 GETTABLEKS                       R0 R1 K1 ["retryGeneration"]
       13 CALL                             R0 0 0
       14 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETTABLEKS                       R3 R0 K0 ["generationRetryCount"]
        4 LOADK                            R4 K0 ["generationRetryCount"]
        5 CALL                             R1 3 2
        6 ORK                              R3 R1 K1 [0]
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R4 R5 K2 ["useCallback"]
       10 NEWCLOSURE                       R5 P0
       11 CAPTURE                          VAL R3
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          VAL R2
       14 CAPTURE                          VAL R0
       15 NEWTABLE                         R6 0 3
       17 MOVE                             R7 R3
       18 MOVE                             R8 R2
       19 GETTABLEKS                       R9 R0 K3 ["retryGeneration"]
       21 SETLIST                          R6 R7 3 [1]
       23 CALL                             R4 2 1
       24 GETUPVAL                         R6 2
       25 CALL                             R6 0 1
       26 JUMPIFLT                         R3 R6 ; [+2]
       28 LOADB                            R5 0 +1
       29 LOADB                            R5 1
       30 MOVE                             R6 R5
       31 MOVE                             R7 R4
       32 RETURN                           R6 2

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 1
        3 JUMPIFNOTLE                      R1 R0 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R0 2
        7 GETUPVAL                         R2 0
        8 ADDK                             R1 R2 K0 [1]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R1 3
       11 GETTABLEKS                       R0 R1 K1 ["publishAssets"]
       13 CALL                             R0 0 0
       14 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETTABLEKS                       R3 R0 K0 ["publishAttemptCount"]
        4 LOADK                            R4 K0 ["publishAttemptCount"]
        5 CALL                             R1 3 2
        6 ORK                              R3 R1 K1 [0]
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R4 R5 K2 ["useCallback"]
       10 NEWCLOSURE                       R5 P0
       11 CAPTURE                          VAL R3
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          VAL R2
       14 CAPTURE                          VAL R0
       15 NEWTABLE                         R6 0 3
       17 MOVE                             R7 R3
       18 MOVE                             R8 R2
       19 GETTABLEKS                       R9 R0 K3 ["publishAssets"]
       21 SETLIST                          R6 R7 3 [1]
       23 CALL                             R4 2 1
       24 GETUPVAL                         R6 2
       25 CALL                             R6 0 1
       26 JUMPIFLT                         R3 R6 ; [+2]
       28 LOADB                            R5 0 +1
       29 LOADB                            R5 1
       30 MOVE                             R6 R5
       31 MOVE                             R7 R4
       32 RETURN                           R6 2

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["previewImages"]
        3 CALL                             R1 1 1
        4 RETURN                           R1 1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["cancelGeneration"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["insertAssets"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["get"]
        3 CALL                             R1 0 1
        4 GETTABLEKS                       R3 R1 K1 ["http"]
        6 GETTABLEKS                       R2 R3 K2 ["openUrl"]
        8 MOVE                             R3 R0
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_19:
        0 NEWTABLE                         R0 16 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["PreviewState"]
        5 GETTABLEKS                       R1 R2 K1 ["GeneratingMesh"]
        7 GETUPVAL                         R2 1
        8 LOADK                            R4 K2 ["MeshGen"]
        9 LOADK                            R5 K1 ["GeneratingMesh"]
       10 NAMECALL                         R2 R2 K3 ["getText"]
       12 CALL                             R2 3 1
       13 SETTABLE                         R2 R0 R1
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R2 R3 K0 ["PreviewState"]
       17 GETTABLEKS                       R1 R2 K4 ["GeneratingTexture"]
       19 GETUPVAL                         R2 1
       20 LOADK                            R4 K2 ["MeshGen"]
       21 LOADK                            R5 K4 ["GeneratingTexture"]
       22 NAMECALL                         R2 R2 K3 ["getText"]
       24 CALL                             R2 3 1
       25 SETTABLE                         R2 R0 R1
       26 GETUPVAL                         R3 0
       27 GETTABLEKS                       R2 R3 K0 ["PreviewState"]
       29 GETTABLEKS                       R1 R2 K5 ["GenerationFailed"]
       31 NEWTABLE                         R2 2 0
       33 LOADB                            R3 0
       34 GETUPVAL                         R4 1
       35 LOADK                            R6 K2 ["MeshGen"]
       36 LOADK                            R7 K6 ["MeshGenerationFailed"]
       37 NAMECALL                         R4 R4 K3 ["getText"]
       39 CALL                             R4 3 1
       40 SETTABLE                         R4 R2 R3
       41 LOADB                            R3 1
       42 GETUPVAL                         R4 1
       43 LOADK                            R6 K2 ["MeshGen"]
       44 LOADK                            R7 K7 ["TextureGenerationFailed"]
       45 NAMECALL                         R4 R4 K3 ["getText"]
       47 CALL                             R4 3 1
       48 SETTABLE                         R4 R2 R3
       49 SETTABLE                         R2 R0 R1
       50 GETUPVAL                         R3 0
       51 GETTABLEKS                       R2 R3 K0 ["PreviewState"]
       53 GETTABLEKS                       R1 R2 K8 ["Generated"]
       55 GETUPVAL                         R2 1
       56 LOADK                            R4 K2 ["MeshGen"]
       57 LOADK                            R5 K8 ["Generated"]
       58 NAMECALL                         R2 R2 K3 ["getText"]
       60 CALL                             R2 3 1
       61 SETTABLE                         R2 R0 R1
       62 GETUPVAL                         R3 0
       63 GETTABLEKS                       R2 R3 K0 ["PreviewState"]
       65 GETTABLEKS                       R1 R2 K9 ["Publishing"]
       67 GETUPVAL                         R2 1
       68 LOADK                            R4 K2 ["MeshGen"]
       69 LOADK                            R5 K9 ["Publishing"]
       70 NAMECALL                         R2 R2 K3 ["getText"]
       72 CALL                             R2 3 1
       73 SETTABLE                         R2 R0 R1
       74 GETUPVAL                         R3 0
       75 GETTABLEKS                       R2 R3 K0 ["PreviewState"]
       77 GETTABLEKS                       R1 R2 K10 ["PublishFailed"]
       79 GETUPVAL                         R2 1
       80 LOADK                            R4 K2 ["MeshGen"]
       81 LOADK                            R5 K10 ["PublishFailed"]
       82 NAMECALL                         R2 R2 K3 ["getText"]
       84 CALL                             R2 3 1
       85 SETTABLE                         R2 R0 R1
       86 GETUPVAL                         R3 0
       87 GETTABLEKS                       R2 R3 K0 ["PreviewState"]
       89 GETTABLEKS                       R1 R2 K11 ["Published"]
       91 GETUPVAL                         R2 1
       92 LOADK                            R4 K2 ["MeshGen"]
       93 LOADK                            R5 K11 ["Published"]
       94 NAMECALL                         R2 R2 K3 ["getText"]
       96 CALL                             R2 3 1
       97 SETTABLE                         R2 R0 R1
       98 GETUPVAL                         R3 0
       99 GETTABLEKS                       R2 R3 K0 ["PreviewState"]
      101 GETTABLEKS                       R1 R2 K12 ["Inserting"]
      103 GETUPVAL                         R2 1
      104 LOADK                            R4 K2 ["MeshGen"]
      105 LOADK                            R5 K12 ["Inserting"]
      106 NAMECALL                         R2 R2 K3 ["getText"]
      108 CALL                             R2 3 1
      109 SETTABLE                         R2 R0 R1
      110 GETUPVAL                         R3 0
      111 GETTABLEKS                       R2 R3 K0 ["PreviewState"]
      113 GETTABLEKS                       R1 R2 K13 ["InsertFailed"]
      115 GETUPVAL                         R2 1
      116 LOADK                            R4 K2 ["MeshGen"]
      117 LOADK                            R5 K13 ["InsertFailed"]
      118 NAMECALL                         R2 R2 K3 ["getText"]
      120 CALL                             R2 3 1
      121 SETTABLE                         R2 R0 R1
      122 NEWTABLE                         R1 8 0
      124 GETUPVAL                         R4 0
      125 GETTABLEKS                       R3 R4 K14 ["FailureReason"]
      127 GETTABLEKS                       R2 R3 K5 ["GenerationFailed"]
      129 GETUPVAL                         R3 1
      130 LOADK                            R5 K2 ["MeshGen"]
      131 LOADK                            R6 K5 ["GenerationFailed"]
      132 NAMECALL                         R3 R3 K3 ["getText"]
      134 CALL                             R3 3 1
      135 SETTABLE                         R3 R1 R2
      136 GETUPVAL                         R4 0
      137 GETTABLEKS                       R3 R4 K14 ["FailureReason"]
      139 GETTABLEKS                       R2 R3 K15 ["GenerationModerated"]
      141 GETUPVAL                         R3 1
      142 LOADK                            R5 K2 ["MeshGen"]
      143 LOADK                            R6 K15 ["GenerationModerated"]
      144 DUPTABLE                         R7 K17 [{"link"}]
      145 GETUPVAL                         R8 2
      146 CALL                             R8 0 1
      147 SETTABLEKS                       R8 R7 K16 ["link"]
      149 NAMECALL                         R3 R3 K3 ["getText"]
      151 CALL                             R3 4 1
      152 SETTABLE                         R3 R1 R2
      153 GETUPVAL                         R4 0
      154 GETTABLEKS                       R3 R4 K14 ["FailureReason"]
      156 GETTABLEKS                       R2 R3 K18 ["GenerationCanceled"]
      158 GETUPVAL                         R3 1
      159 LOADK                            R5 K2 ["MeshGen"]
      160 LOADK                            R6 K18 ["GenerationCanceled"]
      161 NAMECALL                         R3 R3 K3 ["getText"]
      163 CALL                             R3 3 1
      164 SETTABLE                         R3 R1 R2
      165 GETUPVAL                         R4 0
      166 GETTABLEKS                       R3 R4 K14 ["FailureReason"]
      168 GETTABLEKS                       R2 R3 K10 ["PublishFailed"]
      170 GETUPVAL                         R3 1
      171 LOADK                            R5 K2 ["MeshGen"]
      172 LOADK                            R6 K10 ["PublishFailed"]
      173 NAMECALL                         R3 R3 K3 ["getText"]
      175 CALL                             R3 3 1
      176 SETTABLE                         R3 R1 R2
      177 GETUPVAL                         R4 0
      178 GETTABLEKS                       R3 R4 K14 ["FailureReason"]
      180 GETTABLEKS                       R2 R3 K13 ["InsertFailed"]
      182 GETUPVAL                         R3 1
      183 LOADK                            R5 K2 ["MeshGen"]
      184 LOADK                            R6 K13 ["InsertFailed"]
      185 NAMECALL                         R3 R3 K3 ["getText"]
      187 CALL                             R3 3 1
      188 SETTABLE                         R3 R1 R2
      189 DUPTABLE                         R2 K23 [{"PreviewStateHeaderText", "FailureMessageText", "UnknownError", "Buttons"}]
      190 SETTABLEKS                       R0 R2 K19 ["PreviewStateHeaderText"]
      192 SETTABLEKS                       R1 R2 K20 ["FailureMessageText"]
      194 GETUPVAL                         R3 1
      195 LOADK                            R5 K2 ["MeshGen"]
      196 LOADK                            R6 K21 ["UnknownError"]
      197 NAMECALL                         R3 R3 K3 ["getText"]
      199 CALL                             R3 3 1
      200 SETTABLEKS                       R3 R2 K21 ["UnknownError"]
      202 DUPTABLE                         R3 K29 [{"Cancel", "Regenerate", "Publish", "AddToPlace", "TryAgain"}]
      203 GETUPVAL                         R4 1
      204 LOADK                            R6 K2 ["MeshGen"]
      205 LOADK                            R7 K24 ["Cancel"]
      206 NAMECALL                         R4 R4 K3 ["getText"]
      208 CALL                             R4 3 1
      209 SETTABLEKS                       R4 R3 K24 ["Cancel"]
      211 GETUPVAL                         R4 1
      212 LOADK                            R6 K2 ["MeshGen"]
      213 LOADK                            R7 K25 ["Regenerate"]
      214 NAMECALL                         R4 R4 K3 ["getText"]
      216 CALL                             R4 3 1
      217 SETTABLEKS                       R4 R3 K25 ["Regenerate"]
      219 GETUPVAL                         R4 1
      220 LOADK                            R6 K2 ["MeshGen"]
      221 LOADK                            R7 K26 ["Publish"]
      222 NAMECALL                         R4 R4 K3 ["getText"]
      224 CALL                             R4 3 1
      225 SETTABLEKS                       R4 R3 K26 ["Publish"]
      227 GETUPVAL                         R4 1
      228 LOADK                            R6 K2 ["MeshGen"]
      229 LOADK                            R7 K27 ["AddToPlace"]
      230 NAMECALL                         R4 R4 K3 ["getText"]
      232 CALL                             R4 3 1
      233 SETTABLEKS                       R4 R3 K27 ["AddToPlace"]
      235 GETUPVAL                         R4 1
      236 LOADK                            R6 K2 ["MeshGen"]
      237 LOADK                            R7 K28 ["TryAgain"]
      238 NAMECALL                         R4 R4 K3 ["getText"]
      240 CALL                             R4 3 1
      241 SETTABLEKS                       R4 R3 K28 ["TryAgain"]
      243 SETTABLEKS                       R3 R2 K22 ["Buttons"]
      245 RETURN                           R2 1

PROTO_20:
        0 GETTABLEKS                       R2 R0 K0 ["previewState"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K1 ["PreviewState"]
        5 GETTABLEKS                       R3 R4 K2 ["GeneratingMesh"]
        7 JUMPIFEQ                         R2 R3 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 GETTABLEKS                       R3 R0 K0 ["previewState"]
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R5 R6 K1 ["PreviewState"]
       16 GETTABLEKS                       R4 R5 K3 ["GeneratingTexture"]
       18 JUMPIFEQ                         R3 R4 ; [+2]
       20 LOADB                            R2 0 +1
       21 LOADB                            R2 1
       22 GETTABLEKS                       R4 R0 K0 ["previewState"]
       24 GETUPVAL                         R7 0
       25 GETTABLEKS                       R6 R7 K1 ["PreviewState"]
       27 GETTABLEKS                       R5 R6 K4 ["GenerationFailed"]
       29 JUMPIFEQ                         R4 R5 ; [+2]
       31 LOADB                            R3 0 +1
       32 LOADB                            R3 1
       33 GETTABLEKS                       R5 R0 K0 ["previewState"]
       35 GETUPVAL                         R8 0
       36 GETTABLEKS                       R7 R8 K1 ["PreviewState"]
       38 GETTABLEKS                       R6 R7 K5 ["Generated"]
       40 JUMPIFEQ                         R5 R6 ; [+2]
       42 LOADB                            R4 0 +1
       43 LOADB                            R4 1
       44 GETTABLEKS                       R6 R0 K0 ["previewState"]
       46 GETUPVAL                         R9 0
       47 GETTABLEKS                       R8 R9 K1 ["PreviewState"]
       49 GETTABLEKS                       R7 R8 K6 ["Publishing"]
       51 JUMPIFEQ                         R6 R7 ; [+2]
       53 LOADB                            R5 0 +1
       54 LOADB                            R5 1
       55 GETTABLEKS                       R7 R0 K0 ["previewState"]
       57 GETUPVAL                         R10 0
       58 GETTABLEKS                       R9 R10 K1 ["PreviewState"]
       60 GETTABLEKS                       R8 R9 K7 ["PublishFailed"]
       62 JUMPIFEQ                         R7 R8 ; [+2]
       64 LOADB                            R6 0 +1
       65 LOADB                            R6 1
       66 GETTABLEKS                       R8 R0 K0 ["previewState"]
       68 GETUPVAL                         R11 0
       69 GETTABLEKS                       R10 R11 K1 ["PreviewState"]
       71 GETTABLEKS                       R9 R10 K8 ["Published"]
       73 JUMPIFEQ                         R8 R9 ; [+2]
       75 LOADB                            R7 0 +1
       76 LOADB                            R7 1
       77 GETTABLEKS                       R9 R0 K0 ["previewState"]
       79 GETUPVAL                         R12 0
       80 GETTABLEKS                       R11 R12 K1 ["PreviewState"]
       82 GETTABLEKS                       R10 R11 K9 ["Inserting"]
       84 JUMPIFEQ                         R9 R10 ; [+2]
       86 LOADB                            R8 0 +1
       87 LOADB                            R8 1
       88 GETTABLEKS                       R10 R0 K0 ["previewState"]
       90 GETUPVAL                         R13 0
       91 GETTABLEKS                       R12 R13 K1 ["PreviewState"]
       93 GETTABLEKS                       R11 R12 K10 ["InsertFailed"]
       95 JUMPIFEQ                         R10 R11 ; [+2]
       97 LOADB                            R9 0 +1
       98 LOADB                            R9 1
       99 GETTABLEKS                       R11 R0 K11 ["failureReason"]
      101 GETUPVAL                         R14 0
      102 GETTABLEKS                       R13 R14 K12 ["FailureReason"]
      104 GETTABLEKS                       R12 R13 K13 ["GenerationCanceled"]
      106 JUMPIFEQ                         R11 R12 ; [+2]
      108 LOADB                            R10 0 +1
      109 LOADB                            R10 1
      110 GETUPVAL                         R11 1
      111 MOVE                             R12 R0
      112 CALL                             R11 1 2
      113 GETUPVAL                         R13 2
      114 MOVE                             R14 R0
      115 CALL                             R13 1 2
      116 GETUPVAL                         R16 3
      117 GETTABLEKS                       R15 R16 K14 ["useCallback"]
      119 NEWCLOSURE                       R16 P0
      120 CAPTURE                          VAL R0
      121 NEWTABLE                         R17 0 1
      123 GETTABLEKS                       R18 R0 K15 ["cancelGeneration"]
      125 SETLIST                          R17 R18 1 [1]
      127 CALL                             R15 2 1
      128 GETUPVAL                         R17 3
      129 GETTABLEKS                       R16 R17 K14 ["useCallback"]
      131 NEWCLOSURE                       R17 P1
      132 CAPTURE                          VAL R0
      133 NEWTABLE                         R18 0 1
      135 GETTABLEKS                       R19 R0 K16 ["insertAssets"]
      137 SETLIST                          R18 R19 1 [1]
      139 CALL                             R16 2 1
      140 GETUPVAL                         R17 4
      141 GETTABLEKS                       R18 R0 K17 ["previewImages"]
      143 CALL                             R17 1 1
      144 GETUPVAL                         R18 5
      145 GETTABLEKS                       R19 R0 K18 ["className"]
      147 CALL                             R18 1 1
      148 GETUPVAL                         R20 3
      149 GETTABLEKS                       R19 R20 K14 ["useCallback"]
      151 DUPCLOSURE                       R20 K19 [PROTO_18]
      152 CAPTURE                          UPVAL U6
      153 NEWTABLE                         R21 0 0
      155 CALL                             R19 2 1
      156 GETUPVAL                         R21 3
      157 GETTABLEKS                       R20 R21 K20 ["useMemo"]
      159 DUPCLOSURE                       R21 K21 [PROTO_19]
      160 CAPTURE                          UPVAL U0
      161 CAPTURE                          UPVAL U7
      162 CAPTURE                          UPVAL U8
      163 NEWTABLE                         R22 0 1
      165 GETUPVAL                         R24 7
      166 GETTABLEKS                       R23 R24 K22 ["locale"]
      168 SETLIST                          R22 R23 1 [1]
      170 CALL                             R20 2 1
      171 LOADNIL                          R21
      172 GETTABLEKS                       R22 R0 K0 ["previewState"]
      174 GETUPVAL                         R25 0
      175 GETTABLEKS                       R24 R25 K1 ["PreviewState"]
      177 GETTABLEKS                       R23 R24 K4 ["GenerationFailed"]
      179 JUMPIFNOTEQ                      R22 R23 ; [+10]
      181 GETTABLEKS                       R23 R20 K23 ["PreviewStateHeaderText"]
      183 GETTABLEKS                       R24 R0 K0 ["previewState"]
      185 GETTABLE                         R22 R23 R24
      186 GETTABLEKS                       R23 R17 K24 ["exists"]
      188 GETTABLE                         R21 R22 R23
      189 JUMP                             ; [+5]
      190 GETTABLEKS                       R22 R20 K23 ["PreviewStateHeaderText"]
      192 GETTABLEKS                       R23 R0 K0 ["previewState"]
      194 GETTABLE                         R21 R22 R23
      195 JUMPIF                           R4 ; [+1]
      196 JUMPIFNOT                        R7 ; [+8]
      197 GETTABLEKS                       R22 R0 K25 ["shouldShowChip"]
      199 JUMPIF                           R22 ; [+5]
      200 MOVE                             R22 R21
      201 LOADK                            R23 K26 [" "]
      202 GETTABLEKS                       R24 R0 K27 ["displayName"]
      204 CONCAT                           R21 R22 R24
      205 MOVE                             R22 R1
      206 JUMPIF                           R22 ; [+5]
      207 MOVE                             R22 R2
      208 JUMPIF                           R22 ; [+3]
      209 MOVE                             R22 R5
      210 JUMPIF                           R22 ; [+1]
      211 MOVE                             R22 R8
      212 MOVE                             R23 R3
      213 JUMPIF                           R23 ; [+3]
      214 MOVE                             R23 R6
      215 JUMPIF                           R23 ; [+1]
      216 MOVE                             R23 R9
      217 OR                               R24 R1 R2
      218 MOVE                             R25 R3
      219 JUMPIFNOT                        R25 ; [+3]
      220 MOVE                             R25 R11
      221 JUMPIFNOT                        R25 ; [+1]
      222 NOT                              R25 R10
      223 JUMPIF                           R4 ; [+2]
      224 MOVE                             R26 R6
      225 JUMPIFNOT                        R26 ; [+1]
      226 MOVE                             R26 R13
      227 OR                               R27 R7 R9
      228 GETUPVAL                         R28 9
      229 CALL                             R28 0 1
      230 GETUPVAL                         R29 10
      231 GETUPVAL                         R30 11
      232 GETUPVAL                         R32 12
      233 GETTABLEKS                       R31 R32 K28 ["assign"]
      235 DUPTABLE                         R32 K31 [{"canToggle", "headerChildren"}]
      236 LOADB                            R33 1
      237 SETTABLEKS                       R33 R32 K29 ["canToggle"]
      239 DUPTABLE                         R33 K34 [{"Text", "ChipArea"}]
      240 GETUPVAL                         R34 10
      241 GETUPVAL                         R35 13
      242 DUPTABLE                         R36 K37 [{"tag", "Text", "LayoutOrder"}]
      243 LOADK                            R37 K38 ["size-0-0 auto-xy text-label-small content-default text-truncate-end"]
      244 SETTABLEKS                       R37 R36 K35 ["tag"]
      246 SETTABLEKS                       R21 R36 K32 ["Text"]
      248 MOVE                             R37 R28
      249 CALL                             R37 0 1
      250 SETTABLEKS                       R37 R36 K36 ["LayoutOrder"]
      252 DUPTABLE                         R37 K40 [{"Shimmer"}]
      253 MOVE                             R38 R22
      254 JUMPIFNOT                        R38 ; [+3]
      255 GETUPVAL                         R38 10
      256 GETUPVAL                         R39 14
      257 CALL                             R38 1 1
      258 SETTABLEKS                       R38 R37 K39 ["Shimmer"]
      260 CALL                             R34 3 1
      261 SETTABLEKS                       R34 R33 K32 ["Text"]
      263 GETTABLEKS                       R34 R0 K25 ["shouldShowChip"]
      265 JUMPIFNOT                        R34 ; [+54]
      266 GETUPVAL                         R34 10
      267 GETUPVAL                         R35 15
      268 DUPTABLE                         R36 K41 [{"tag", "LayoutOrder"}]
      269 LOADK                            R37 K42 ["fill align-x-left align-y-center"]
      270 SETTABLEKS                       R37 R36 K35 ["tag"]
      272 MOVE                             R37 R28
      273 CALL                             R37 0 1
      274 SETTABLEKS                       R37 R36 K36 ["LayoutOrder"]
      276 DUPTABLE                         R37 K44 [{"AssetLink"}]
      277 GETUPVAL                         R38 10
      278 GETUPVAL                         R39 16
      279 DUPTABLE                         R40 K50 [{"text", "leading", "onActivated", "isChecked", "size", "LayoutOrder"}]
      280 GETTABLEKS                       R41 R0 K27 ["displayName"]
      282 SETTABLEKS                       R41 R40 K45 ["text"]
      284 GETTABLEKS                       R41 R18 K51 ["Image"]
      286 SETTABLEKS                       R41 R40 K46 ["leading"]
      288 GETTABLEKS                       R41 R0 K52 ["onChipClicked"]
      290 SETTABLEKS                       R41 R40 K47 ["onActivated"]
      292 LOADB                            R41 0
      293 SETTABLEKS                       R41 R40 K48 ["isChecked"]
      295 GETUPVAL                         R44 17
      296 GETTABLEKS                       R43 R44 K53 ["Enums"]
      298 GETTABLEKS                       R42 R43 K54 ["ChipSize"]
      300 GETTABLEKS                       R41 R42 K55 ["Small"]
      302 SETTABLEKS                       R41 R40 K49 ["size"]
      304 MOVE                             R41 R28
      305 CALL                             R41 0 1
      306 SETTABLEKS                       R41 R40 K36 ["LayoutOrder"]
      308 DUPTABLE                         R41 K40 [{"Shimmer"}]
      309 MOVE                             R42 R22
      310 JUMPIFNOT                        R42 ; [+3]
      311 GETUPVAL                         R42 10
      312 GETUPVAL                         R43 14
      313 CALL                             R42 1 1
      314 SETTABLEKS                       R42 R41 K39 ["Shimmer"]
      316 CALL                             R38 3 1
      317 SETTABLEKS                       R38 R37 K43 ["AssetLink"]
      319 CALL                             R34 3 1
      320 SETTABLEKS                       R34 R33 K33 ["ChipArea"]
      322 SETTABLEKS                       R33 R32 K30 ["headerChildren"]
      324 MOVE                             R33 R0
      325 CALL                             R31 2 1
      326 DUPTABLE                         R32 K58 [{"Preview", "InfoBar"}]
      327 GETTABLEKS                       R34 R17 K24 ["exists"]
      329 JUMPIF                           R34 ; [+27]
      330 GETUPVAL                         R33 10
      331 GETUPVAL                         R34 18
      332 DUPTABLE                         R35 K61 [{"Size", "radius", "LayoutOrder"}]
      333 GETIMPORT                        R36 K64 [UDim2.new]
      335 LOADN                            R37 1
      336 LOADN                            R38 0
      337 LOADN                            R39 0
      338 GETUPVAL                         R40 19
      339 CALL                             R36 4 1
      340 SETTABLEKS                       R36 R35 K59 ["Size"]
      342 GETUPVAL                         R39 17
      343 GETTABLEKS                       R38 R39 K53 ["Enums"]
      345 GETTABLEKS                       R37 R38 K65 ["Radius"]
      347 GETTABLEKS                       R36 R37 K55 ["Small"]
      349 SETTABLEKS                       R36 R35 K60 ["radius"]
      351 MOVE                             R36 R28
      352 CALL                             R36 0 1
      353 SETTABLEKS                       R36 R35 K36 ["LayoutOrder"]
      355 CALL                             R33 2 1
      356 JUMP                             ; [+108]
      357 GETUPVAL                         R33 10
      358 GETUPVAL                         R34 20
      359 DUPTABLE                         R35 K69 [{"tag", "Image", "Size", "BackgroundColor3", "ScaleType", "LayoutOrder", "testId"}]
      360 LOADK                            R36 K70 ["row size-full-0 auto-y bg-shift-200 radius-small align-x-center align-y-center flex-x-between padding-x-small padding-y-small"]
      361 SETTABLEKS                       R36 R35 K35 ["tag"]
      363 GETTABLEKS                       R36 R17 K71 ["current"]
      365 SETTABLEKS                       R36 R35 K51 ["Image"]
      367 GETIMPORT                        R36 K64 [UDim2.new]
      369 LOADN                            R37 1
      370 LOADN                            R38 0
      371 LOADN                            R39 0
      372 GETUPVAL                         R40 19
      373 CALL                             R36 4 1
      374 SETTABLEKS                       R36 R35 K59 ["Size"]
      376 GETIMPORT                        R36 K74 [Color3.fromRGB]
      378 LOADN                            R37 0
      379 LOADN                            R38 0
      380 LOADN                            R39 0
      381 CALL                             R36 3 1
      382 SETTABLEKS                       R36 R35 K66 ["BackgroundColor3"]
      384 GETIMPORT                        R36 K77 [Enum.ScaleType.Fit]
      386 SETTABLEKS                       R36 R35 K67 ["ScaleType"]
      388 MOVE                             R36 R28
      389 CALL                             R36 0 1
      390 SETTABLEKS                       R36 R35 K36 ["LayoutOrder"]
      392 GETUPVAL                         R38 21
      393 GETTABLEKS                       R37 R38 K78 ["MeshGen"]
      395 GETTABLEKS                       R36 R37 K79 ["PreviewImage"]
      397 SETTABLEKS                       R36 R35 K68 ["testId"]
      399 DUPTABLE                         R36 K82 [{"LastPreview", "NextPreview"}]
      400 GETUPVAL                         R37 10
      401 GETUPVAL                         R38 22
      402 DUPTABLE                         R39 K84 [{"icon", "size", "onActivated", "LayoutOrder"}]
      403 GETUPVAL                         R43 17
      404 GETTABLEKS                       R42 R43 K53 ["Enums"]
      406 GETTABLEKS                       R41 R42 K85 ["IconName"]
      408 GETTABLEKS                       R40 R41 K86 ["ChevronLargeLeft"]
      410 SETTABLEKS                       R40 R39 K83 ["icon"]
      412 GETUPVAL                         R43 17
      413 GETTABLEKS                       R42 R43 K53 ["Enums"]
      415 GETTABLEKS                       R41 R42 K87 ["InputSize"]
      417 GETTABLEKS                       R40 R41 K55 ["Small"]
      419 SETTABLEKS                       R40 R39 K49 ["size"]
      421 GETTABLEKS                       R40 R17 K88 ["decrement"]
      423 SETTABLEKS                       R40 R39 K47 ["onActivated"]
      425 MOVE                             R40 R28
      426 CALL                             R40 0 1
      427 SETTABLEKS                       R40 R39 K36 ["LayoutOrder"]
      429 CALL                             R37 2 1
      430 SETTABLEKS                       R37 R36 K80 ["LastPreview"]
      432 GETUPVAL                         R37 10
      433 GETUPVAL                         R38 22
      434 DUPTABLE                         R39 K84 [{"icon", "size", "onActivated", "LayoutOrder"}]
      435 GETUPVAL                         R43 17
      436 GETTABLEKS                       R42 R43 K53 ["Enums"]
      438 GETTABLEKS                       R41 R42 K85 ["IconName"]
      440 GETTABLEKS                       R40 R41 K89 ["ChevronLargeRight"]
      442 SETTABLEKS                       R40 R39 K83 ["icon"]
      444 GETUPVAL                         R43 17
      445 GETTABLEKS                       R42 R43 K53 ["Enums"]
      447 GETTABLEKS                       R41 R42 K87 ["InputSize"]
      449 GETTABLEKS                       R40 R41 K55 ["Small"]
      451 SETTABLEKS                       R40 R39 K49 ["size"]
      453 GETTABLEKS                       R40 R17 K90 ["increment"]
      455 SETTABLEKS                       R40 R39 K47 ["onActivated"]
      457 MOVE                             R40 R28
      458 CALL                             R40 0 1
      459 SETTABLEKS                       R40 R39 K36 ["LayoutOrder"]
      461 CALL                             R37 2 1
      462 SETTABLEKS                       R37 R36 K81 ["NextPreview"]
      464 CALL                             R33 3 1
      465 SETTABLEKS                       R33 R32 K56 ["Preview"]
      467 GETUPVAL                         R33 10
      468 GETUPVAL                         R34 15
      469 DUPTABLE                         R35 K41 [{"tag", "LayoutOrder"}]
      470 LOADK                            R36 K91 ["size-full-0 auto-y gap-small row align-y-center"]
      471 SETTABLEKS                       R36 R35 K35 ["tag"]
      473 MOVE                             R36 R28
      474 CALL                             R36 0 1
      475 SETTABLEKS                       R36 R35 K36 ["LayoutOrder"]
      477 DUPTABLE                         R36 K94 [{"LeftSpace", "Buttons"}]
      478 GETUPVAL                         R37 10
      479 GETUPVAL                         R38 15
      480 DUPTABLE                         R39 K41 [{"tag", "LayoutOrder"}]
      481 LOADK                            R40 K95 ["fill size-0-800"]
      482 SETTABLEKS                       R40 R39 K35 ["tag"]
      484 MOVE                             R40 R28
      485 CALL                             R40 0 1
      486 SETTABLEKS                       R40 R39 K36 ["LayoutOrder"]
      488 DUPTABLE                         R40 K97 [{"FailureMessage"}]
      489 MOVE                             R41 R23
      490 JUMPIFNOT                        R41 ; [+79]
      491 GETUPVAL                         R41 10
      492 GETUPVAL                         R42 15
      493 DUPTABLE                         R43 K41 [{"tag", "LayoutOrder"}]
      494 LOADK                            R44 K98 ["size-full-full row gap-xsmall align-y-center"]
      495 SETTABLEKS                       R44 R43 K35 ["tag"]
      497 MOVE                             R44 R28
      498 CALL                             R44 0 1
      499 SETTABLEKS                       R44 R43 K36 ["LayoutOrder"]
      501 DUPTABLE                         R44 K101 [{"ErrorIcon", "TextContainer"}]
      502 GETUPVAL                         R45 10
      503 GETUPVAL                         R46 23
      504 DUPTABLE                         R47 K103 [{"name", "size", "LayoutOrder"}]
      505 GETUPVAL                         R51 17
      506 GETTABLEKS                       R50 R51 K53 ["Enums"]
      508 GETTABLEKS                       R49 R50 K85 ["IconName"]
      510 GETTABLEKS                       R48 R49 K104 ["TriangleExclamation"]
      512 SETTABLEKS                       R48 R47 K102 ["name"]
      514 GETUPVAL                         R51 17
      515 GETTABLEKS                       R50 R51 K53 ["Enums"]
      517 GETTABLEKS                       R49 R50 K105 ["IconSize"]
      519 GETTABLEKS                       R48 R49 K106 ["Medium"]
      521 SETTABLEKS                       R48 R47 K49 ["size"]
      523 MOVE                             R48 R28
      524 CALL                             R48 0 1
      525 SETTABLEKS                       R48 R47 K36 ["LayoutOrder"]
      527 CALL                             R45 2 1
      528 SETTABLEKS                       R45 R44 K99 ["ErrorIcon"]
      530 GETUPVAL                         R45 10
      531 GETUPVAL                         R46 15
      532 DUPTABLE                         R47 K41 [{"tag", "LayoutOrder"}]
      533 LOADK                            R48 K107 ["shrink size-full-0 auto-y"]
      534 SETTABLEKS                       R48 R47 K35 ["tag"]
      536 MOVE                             R48 R28
      537 CALL                             R48 0 1
      538 SETTABLEKS                       R48 R47 K36 ["LayoutOrder"]
      540 DUPTABLE                         R48 K108 [{"Text"}]
      541 GETUPVAL                         R49 10
      542 GETUPVAL                         R50 24
      543 DUPTABLE                         R51 K111 [{"markdown", "linkCallback", "LayoutOrder"}]
      544 GETTABLEKS                       R53 R0 K11 ["failureReason"]
      546 JUMPIFNOT                        R53 ; [+6]
      547 GETTABLEKS                       R53 R20 K112 ["FailureMessageText"]
      549 GETTABLEKS                       R54 R0 K11 ["failureReason"]
      551 GETTABLE                         R52 R53 R54
      552 JUMPIF                           R52 ; [+2]
      553 GETTABLEKS                       R52 R20 K113 ["UnknownError"]
      555 SETTABLEKS                       R52 R51 K109 ["markdown"]
      557 SETTABLEKS                       R19 R51 K110 ["linkCallback"]
      559 MOVE                             R52 R28
      560 CALL                             R52 0 1
      561 SETTABLEKS                       R52 R51 K36 ["LayoutOrder"]
      563 CALL                             R49 2 1
      564 SETTABLEKS                       R49 R48 K32 ["Text"]
      566 CALL                             R45 3 1
      567 SETTABLEKS                       R45 R44 K100 ["TextContainer"]
      569 CALL                             R41 3 1
      570 SETTABLEKS                       R41 R40 K96 ["FailureMessage"]
      572 CALL                             R37 3 1
      573 SETTABLEKS                       R37 R36 K92 ["LeftSpace"]
      575 GETUPVAL                         R37 10
      576 GETUPVAL                         R38 15
      577 DUPTABLE                         R39 K41 [{"tag", "LayoutOrder"}]
      578 LOADK                            R40 K114 ["auto-xy row gap-small"]
      579 SETTABLEKS                       R40 R39 K35 ["tag"]
      581 MOVE                             R40 R28
      582 CALL                             R40 0 1
      583 SETTABLEKS                       R40 R39 K36 ["LayoutOrder"]
      585 DUPTABLE                         R40 K119 [{"CancelButton", "RegenerateButton", "PublishButton", "InsertButton"}]
      586 MOVE                             R41 R24
      587 JUMPIFNOT                        R41 ; [+34]
      588 GETUPVAL                         R41 10
      589 GETUPVAL                         R42 25
      590 DUPTABLE                         R43 K121 [{"text", "size", "variant", "onActivated", "LayoutOrder"}]
      591 GETTABLEKS                       R45 R20 K93 ["Buttons"]
      593 GETTABLEKS                       R44 R45 K122 ["Cancel"]
      595 SETTABLEKS                       R44 R43 K45 ["text"]
      597 GETUPVAL                         R47 17
      598 GETTABLEKS                       R46 R47 K53 ["Enums"]
      600 GETTABLEKS                       R45 R46 K87 ["InputSize"]
      602 GETTABLEKS                       R44 R45 K55 ["Small"]
      604 SETTABLEKS                       R44 R43 K49 ["size"]
      606 GETUPVAL                         R47 17
      607 GETTABLEKS                       R46 R47 K53 ["Enums"]
      609 GETTABLEKS                       R45 R46 K123 ["ButtonVariant"]
      611 GETTABLEKS                       R44 R45 K124 ["Standard"]
      613 SETTABLEKS                       R44 R43 K120 ["variant"]
      615 SETTABLEKS                       R15 R43 K47 ["onActivated"]
      617 MOVE                             R44 R28
      618 CALL                             R44 0 1
      619 SETTABLEKS                       R44 R43 K36 ["LayoutOrder"]
      621 CALL                             R41 2 1
      622 SETTABLEKS                       R41 R40 K115 ["CancelButton"]
      624 MOVE                             R41 R25
      625 JUMPIFNOT                        R41 ; [+34]
      626 GETUPVAL                         R41 10
      627 GETUPVAL                         R42 25
      628 DUPTABLE                         R43 K121 [{"text", "size", "variant", "onActivated", "LayoutOrder"}]
      629 GETTABLEKS                       R45 R20 K93 ["Buttons"]
      631 GETTABLEKS                       R44 R45 K125 ["Regenerate"]
      633 SETTABLEKS                       R44 R43 K45 ["text"]
      635 GETUPVAL                         R47 17
      636 GETTABLEKS                       R46 R47 K53 ["Enums"]
      638 GETTABLEKS                       R45 R46 K87 ["InputSize"]
      640 GETTABLEKS                       R44 R45 K55 ["Small"]
      642 SETTABLEKS                       R44 R43 K49 ["size"]
      644 GETUPVAL                         R47 17
      645 GETTABLEKS                       R46 R47 K53 ["Enums"]
      647 GETTABLEKS                       R45 R46 K123 ["ButtonVariant"]
      649 GETTABLEKS                       R44 R45 K124 ["Standard"]
      651 SETTABLEKS                       R44 R43 K120 ["variant"]
      653 SETTABLEKS                       R12 R43 K47 ["onActivated"]
      655 MOVE                             R44 R28
      656 CALL                             R44 0 1
      657 SETTABLEKS                       R44 R43 K36 ["LayoutOrder"]
      659 CALL                             R41 2 1
      660 SETTABLEKS                       R41 R40 K116 ["RegenerateButton"]
      662 MOVE                             R41 R26
      663 JUMPIFNOT                        R41 ; [+42]
      664 GETUPVAL                         R41 10
      665 GETUPVAL                         R42 25
      666 DUPTABLE                         R43 K127 [{"text", "size", "variant", "isLoading", "onActivated", "LayoutOrder"}]
      667 JUMPIFNOT                        R23 ; [+5]
      668 GETTABLEKS                       R45 R20 K93 ["Buttons"]
      670 GETTABLEKS                       R44 R45 K128 ["TryAgain"]
      672 JUMP                             ; [+4]
      673 GETTABLEKS                       R45 R20 K93 ["Buttons"]
      675 GETTABLEKS                       R44 R45 K129 ["Publish"]
      677 SETTABLEKS                       R44 R43 K45 ["text"]
      679 GETUPVAL                         R47 17
      680 GETTABLEKS                       R46 R47 K53 ["Enums"]
      682 GETTABLEKS                       R45 R46 K87 ["InputSize"]
      684 GETTABLEKS                       R44 R45 K55 ["Small"]
      686 SETTABLEKS                       R44 R43 K49 ["size"]
      688 GETUPVAL                         R47 17
      689 GETTABLEKS                       R46 R47 K53 ["Enums"]
      691 GETTABLEKS                       R45 R46 K123 ["ButtonVariant"]
      693 GETTABLEKS                       R44 R45 K130 ["Emphasis"]
      695 SETTABLEKS                       R44 R43 K120 ["variant"]
      697 SETTABLEKS                       R5 R43 K126 ["isLoading"]
      699 SETTABLEKS                       R14 R43 K47 ["onActivated"]
      701 MOVE                             R44 R28
      702 CALL                             R44 0 1
      703 SETTABLEKS                       R44 R43 K36 ["LayoutOrder"]
      705 CALL                             R41 2 1
      706 SETTABLEKS                       R41 R40 K117 ["PublishButton"]
      708 MOVE                             R41 R27
      709 JUMPIFNOT                        R41 ; [+42]
      710 GETUPVAL                         R41 10
      711 GETUPVAL                         R42 25
      712 DUPTABLE                         R43 K127 [{"text", "size", "variant", "isLoading", "onActivated", "LayoutOrder"}]
      713 JUMPIFNOT                        R23 ; [+5]
      714 GETTABLEKS                       R45 R20 K93 ["Buttons"]
      716 GETTABLEKS                       R44 R45 K128 ["TryAgain"]
      718 JUMP                             ; [+4]
      719 GETTABLEKS                       R45 R20 K93 ["Buttons"]
      721 GETTABLEKS                       R44 R45 K131 ["AddToPlace"]
      723 SETTABLEKS                       R44 R43 K45 ["text"]
      725 GETUPVAL                         R47 17
      726 GETTABLEKS                       R46 R47 K53 ["Enums"]
      728 GETTABLEKS                       R45 R46 K87 ["InputSize"]
      730 GETTABLEKS                       R44 R45 K55 ["Small"]
      732 SETTABLEKS                       R44 R43 K49 ["size"]
      734 GETUPVAL                         R47 17
      735 GETTABLEKS                       R46 R47 K53 ["Enums"]
      737 GETTABLEKS                       R45 R46 K123 ["ButtonVariant"]
      739 GETTABLEKS                       R44 R45 K130 ["Emphasis"]
      741 SETTABLEKS                       R44 R43 K120 ["variant"]
      743 SETTABLEKS                       R8 R43 K126 ["isLoading"]
      745 SETTABLEKS                       R16 R43 K47 ["onActivated"]
      747 MOVE                             R44 R28
      748 CALL                             R44 0 1
      749 SETTABLEKS                       R44 R43 K36 ["LayoutOrder"]
      751 CALL                             R41 2 1
      752 SETTABLEKS                       R41 R40 K118 ["InsertButton"]
      754 CALL                             R37 3 1
      755 SETTABLEKS                       R37 R36 K93 ["Buttons"]
      757 CALL                             R33 3 1
      758 SETTABLEKS                       R33 R32 K57 ["InfoBar"]
      760 CALL                             R29 3 -1
      761 RETURN                           R29 -1

PROTO_21:
        0 GETTABLEKS                       R1 R0 K0 ["toolResult"]
        2 JUMPIFNOT                        R1 ; [+4]
        3 GETTABLEKS                       R2 R0 K0 ["toolResult"]
        5 GETTABLEKS                       R1 R2 K1 ["isError"]
        7 GETTABLEKS                       R2 R0 K2 ["mode"]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R3 R4 K3 ["Preparing"]
       12 JUMPIFEQ                         R2 R3 ; [+2]
       14 JUMPIFNOT                        R1 ; [+14]
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R2 R3 K4 ["join"]
       18 MOVE                             R3 R0
       19 DUPTABLE                         R4 K5 [{"isError"}]
       20 SETTABLEKS                       R1 R4 K1 ["isError"]
       22 CALL                             R2 2 1
       23 MOVE                             R0 R2
       24 GETUPVAL                         R2 2
       25 GETUPVAL                         R3 3
       26 MOVE                             R4 R0
       27 CALL                             R2 2 -1
       28 RETURN                           R2 -1
       29 GETTABLEKS                       R2 R0 K2 ["mode"]
       31 GETUPVAL                         R4 0
       32 GETTABLEKS                       R3 R4 K6 ["NeedsInput"]
       34 JUMPIFNOTEQ                      R2 R3 ; [+6]
       36 GETUPVAL                         R2 2
       37 GETUPVAL                         R3 4
       38 MOVE                             R4 R0
       39 CALL                             R2 2 -1
       40 RETURN                           R2 -1
       41 GETTABLEKS                       R2 R0 K2 ["mode"]
       43 GETUPVAL                         R4 0
       44 GETTABLEKS                       R3 R4 K7 ["ShowPreview"]
       46 JUMPIFNOTEQ                      R2 R3 ; [+6]
       48 GETUPVAL                         R2 2
       49 GETUPVAL                         R3 5
       50 MOVE                             R4 R0
       51 CALL                             R2 2 -1
       52 RETURN                           R2 -1
       53 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAssistantPersistConversations is not enabled!"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETTABLEKS                       R1 R0 K3 ["mode"]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R2 R3 K4 ["ShowPreview"]
       13 JUMPIFEQ                         R1 R2 ; [+12]
       15 DUPTABLE                         R1 K6 [{"type", "mode"}]
       16 GETTABLEKS                       R2 R0 K5 ["type"]
       18 SETTABLEKS                       R2 R1 K5 ["type"]
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R2 R3 K7 ["Preparing"]
       23 SETTABLEKS                       R2 R1 K3 ["mode"]
       25 RETURN                           R1 1
       26 DUPTABLE                         R1 K16 [{"type", "mode", "name", "previewImages", "previewState", "failureReason", "generationRetryCount", "publishAttemptCount", "validatedArgs", "generationMeta"}]
       27 GETTABLEKS                       R2 R0 K5 ["type"]
       29 SETTABLEKS                       R2 R1 K5 ["type"]
       31 GETTABLEKS                       R2 R0 K3 ["mode"]
       33 SETTABLEKS                       R2 R1 K3 ["mode"]
       35 GETTABLEKS                       R2 R0 K8 ["name"]
       37 SETTABLEKS                       R2 R1 K8 ["name"]
       39 GETTABLEKS                       R2 R0 K9 ["previewImages"]
       41 SETTABLEKS                       R2 R1 K9 ["previewImages"]
       43 GETTABLEKS                       R2 R0 K10 ["previewState"]
       45 SETTABLEKS                       R2 R1 K10 ["previewState"]
       47 GETTABLEKS                       R2 R0 K11 ["failureReason"]
       49 SETTABLEKS                       R2 R1 K11 ["failureReason"]
       51 GETTABLEKS                       R2 R0 K12 ["generationRetryCount"]
       53 SETTABLEKS                       R2 R1 K12 ["generationRetryCount"]
       55 GETTABLEKS                       R2 R0 K13 ["publishAttemptCount"]
       57 SETTABLEKS                       R2 R1 K13 ["publishAttemptCount"]
       59 GETTABLEKS                       R2 R0 K14 ["validatedArgs"]
       61 SETTABLEKS                       R2 R1 K14 ["validatedArgs"]
       63 GETTABLEKS                       R2 R0 K15 ["generationMeta"]
       65 SETTABLEKS                       R2 R1 K15 ["generationMeta"]
       67 RETURN                           R1 1

PROTO_23:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAssistantPersistConversations is not enabled!"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETTABLEKS                       R1 R0 K3 ["mode"]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R2 R3 K4 ["ShowPreview"]
       13 JUMPIFEQ                         R1 R2 ; [+15]
       15 DUPTABLE                         R1 K7 [{"type", "mode", "isError"}]
       16 GETTABLEKS                       R2 R0 K5 ["type"]
       18 SETTABLEKS                       R2 R1 K5 ["type"]
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R2 R3 K8 ["Preparing"]
       23 SETTABLEKS                       R2 R1 K3 ["mode"]
       25 LOADB                            R2 1
       26 SETTABLEKS                       R2 R1 K6 ["isError"]
       28 RETURN                           R1 1
       29 DUPTABLE                         R1 K26 [{"type", "mode", "expanded", "name", "displayName", "className", "previewImages", "previewState", "failureReason", "generationRetryCount", "publishAttemptCount", "validatedArgs", "generationMeta", "retryGeneration", "cancelGeneration", "publishAssets", "insertAssets", "shouldShowChip", "onChipClicked"}]
       30 GETTABLEKS                       R2 R0 K5 ["type"]
       32 SETTABLEKS                       R2 R1 K5 ["type"]
       34 GETTABLEKS                       R2 R0 K3 ["mode"]
       36 SETTABLEKS                       R2 R1 K3 ["mode"]
       38 LOADB                            R2 0
       39 SETTABLEKS                       R2 R1 K9 ["expanded"]
       41 GETTABLEKS                       R2 R0 K10 ["name"]
       43 SETTABLEKS                       R2 R1 K10 ["name"]
       45 GETTABLEKS                       R2 R0 K10 ["name"]
       47 SETTABLEKS                       R2 R1 K11 ["displayName"]
       49 LOADNIL                          R2
       50 SETTABLEKS                       R2 R1 K12 ["className"]
       52 GETTABLEKS                       R2 R0 K13 ["previewImages"]
       54 SETTABLEKS                       R2 R1 K13 ["previewImages"]
       56 GETTABLEKS                       R2 R0 K14 ["previewState"]
       58 SETTABLEKS                       R2 R1 K14 ["previewState"]
       60 GETTABLEKS                       R2 R0 K15 ["failureReason"]
       62 SETTABLEKS                       R2 R1 K15 ["failureReason"]
       64 GETTABLEKS                       R2 R0 K16 ["generationRetryCount"]
       66 SETTABLEKS                       R2 R1 K16 ["generationRetryCount"]
       68 GETTABLEKS                       R2 R0 K17 ["publishAttemptCount"]
       70 SETTABLEKS                       R2 R1 K17 ["publishAttemptCount"]
       72 GETTABLEKS                       R2 R0 K18 ["validatedArgs"]
       74 SETTABLEKS                       R2 R1 K18 ["validatedArgs"]
       76 GETTABLEKS                       R2 R0 K19 ["generationMeta"]
       78 SETTABLEKS                       R2 R1 K19 ["generationMeta"]
       80 GETUPVAL                         R3 2
       81 GETTABLEKS                       R2 R3 K27 ["createUnimplemented"]
       83 LOADK                            R3 K20 ["retryGeneration"]
       84 CALL                             R2 1 1
       85 SETTABLEKS                       R2 R1 K20 ["retryGeneration"]
       87 GETUPVAL                         R3 2
       88 GETTABLEKS                       R2 R3 K27 ["createUnimplemented"]
       90 LOADK                            R3 K21 ["cancelGeneration"]
       91 CALL                             R2 1 1
       92 SETTABLEKS                       R2 R1 K21 ["cancelGeneration"]
       94 GETUPVAL                         R3 2
       95 GETTABLEKS                       R2 R3 K27 ["createUnimplemented"]
       97 LOADK                            R3 K22 ["publishAssets"]
       98 CALL                             R2 1 1
       99 SETTABLEKS                       R2 R1 K22 ["publishAssets"]
      101 GETUPVAL                         R3 2
      102 GETTABLEKS                       R2 R3 K27 ["createUnimplemented"]
      104 LOADK                            R3 K23 ["insertAssets"]
      105 CALL                             R2 1 1
      106 SETTABLEKS                       R2 R1 K23 ["insertAssets"]
      108 LOADB                            R2 0
      109 SETTABLEKS                       R2 R1 K24 ["shouldShowChip"]
      111 GETUPVAL                         R3 2
      112 GETTABLEKS                       R2 R3 K27 ["createUnimplemented"]
      114 LOADK                            R3 K25 ["onChipClicked"]
      115 CALL                             R2 1 1
      116 SETTABLEKS                       R2 R1 K25 ["onChipClicked"]
      118 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R3 K7 ["Accordion"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Util"]
       18 GETTABLEKS                       R3 R4 K9 ["ContentWidgetRegistry"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Parent"]
       25 GETTABLEKS                       R4 R5 K11 ["Dash"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K12 ["Guest"]
       32 GETTABLEKS                       R5 R6 K13 ["Environment"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K10 ["Parent"]
       39 GETTABLEKS                       R6 R7 K14 ["Foundation"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R8 R0 K6 ["Components"]
       46 GETTABLEKS                       R7 R8 K15 ["MarkdownText"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R9 R0 K10 ["Parent"]
       53 GETTABLEKS                       R8 R9 K16 ["React"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R10 R0 K10 ["Parent"]
       60 GETTABLEKS                       R9 R10 K17 ["ReactUtils"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R11 R0 K6 ["Components"]
       67 GETTABLEKS                       R10 R11 K18 ["ShimmerGradient"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R12 R0 K8 ["Util"]
       74 GETTABLEKS                       R11 R12 K19 ["TestIds"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R14 R0 K20 ["Resources"]
       81 GETTABLEKS                       R13 R14 K21 ["Localization"]
       83 GETTABLEKS                       R12 R13 K22 ["Translator"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K5 [require]
       88 GETTABLEKS                       R13 R0 K23 ["Types"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K5 [require]
       93 GETTABLEKS                       R15 R0 K24 ["Hooks"]
       95 GETTABLEKS                       R14 R15 K25 ["useClassIcon"]
       97 CALL                             R13 1 1
       98 GETIMPORT                        R14 K5 [require]
      100 GETTABLEKS                       R16 R0 K24 ["Hooks"]
      102 GETTABLEKS                       R15 R16 K26 ["useContentPropState"]
      104 CALL                             R14 1 1
      105 GETIMPORT                        R15 K5 [require]
      107 GETTABLEKS                       R17 R0 K24 ["Hooks"]
      109 GETTABLEKS                       R16 R17 K27 ["useWrappingIndex"]
      111 CALL                             R15 1 1
      112 GETIMPORT                        R16 K1 [script]
      114 LOADK                            R18 K28 ["MeshGen"]
      115 NAMECALL                         R16 R16 K3 ["FindFirstAncestor"]
      117 CALL                             R16 2 1
      118 GETIMPORT                        R17 K5 [require]
      120 GETTABLEKS                       R18 R16 K29 ["MeshGenConstants"]
      122 CALL                             R17 1 1
      123 GETIMPORT                        R18 K5 [require]
      125 GETTABLEKS                       R19 R16 K30 ["MeshGenTypes"]
      127 CALL                             R18 1 1
      128 GETIMPORT                        R19 K5 [require]
      130 GETTABLEKS                       R21 R0 K31 ["Flags"]
      132 GETTABLEKS                       R20 R21 K32 ["FFlagAssistantPersistConversations"]
      134 CALL                             R19 1 1
      135 GETIMPORT                        R20 K5 [require]
      137 GETTABLEKS                       R22 R0 K31 ["Flags"]
      139 GETTABLEKS                       R21 R22 K33 ["FFlagAssistantRegisterWidgetsThroughTools"]
      141 CALL                             R20 1 1
      142 GETIMPORT                        R21 K5 [require]
      144 GETTABLEKS                       R23 R0 K31 ["Flags"]
      146 GETTABLEKS                       R22 R23 K34 ["FIntConvAIMeshGenGenerationRetryLimit"]
      148 CALL                             R21 1 1
      149 GETIMPORT                        R22 K5 [require]
      151 GETTABLEKS                       R24 R0 K31 ["Flags"]
      153 GETTABLEKS                       R23 R24 K35 ["FIntConvAIMeshGenPublishAttemptLimit"]
      155 CALL                             R22 1 1
      156 GETIMPORT                        R23 K5 [require]
      158 GETTABLEKS                       R25 R0 K31 ["Flags"]
      160 GETTABLEKS                       R24 R25 K36 ["FStringConvAIMeshGenModerationUrl"]
      162 CALL                             R23 1 1
      163 GETTABLEKS                       R24 R5 K37 ["Button"]
      165 GETTABLEKS                       R25 R5 K38 ["Checkbox"]
      167 GETTABLEKS                       R26 R5 K39 ["Chip"]
      169 GETTABLEKS                       R27 R5 K40 ["Icon"]
      171 GETTABLEKS                       R28 R5 K41 ["IconButton"]
      173 GETTABLEKS                       R29 R5 K42 ["Image"]
      175 GETTABLEKS                       R30 R5 K43 ["NumberInput"]
      177 GETTABLEKS                       R31 R5 K44 ["Skeleton"]
      179 GETTABLEKS                       R32 R5 K45 ["Text"]
      181 GETTABLEKS                       R33 R5 K46 ["View"]
      183 GETTABLEKS                       R34 R8 K47 ["createNextOrder"]
      185 GETTABLEKS                       R35 R7 K48 ["createElement"]
      187 GETTABLEKS                       R36 R17 K49 ["Enums"]
      189 GETTABLEKS                       R37 R17 K50 ["MAX_TRIANGLES_LOWER_BOUND"]
      191 GETTABLEKS                       R38 R17 K51 ["MAX_TRIANGLES_UPPER_BOUND"]
      193 GETTABLEKS                       R39 R17 K52 ["PREVIEW_HEIGHT"]
      195 DUPTABLE                         R40 K56 [{"Preparing", "NeedsInput", "ShowPreview"}]
      196 LOADK                            R41 K53 ["Preparing"]
      197 SETTABLEKS                       R41 R40 K53 ["Preparing"]
      199 LOADK                            R41 K54 ["NeedsInput"]
      200 SETTABLEKS                       R41 R40 K54 ["NeedsInput"]
      202 LOADK                            R41 K55 ["ShowPreview"]
      203 SETTABLEKS                       R41 R40 K55 ["ShowPreview"]
      205 DUPCLOSURE                       R41 K57 [PROTO_0]
      206 CAPTURE                          VAL R34
      207 CAPTURE                          VAL R35
      208 CAPTURE                          VAL R1
      209 CAPTURE                          VAL R10
      210 DUPCLOSURE                       R42 K58 [PROTO_2]
      211 CAPTURE                          VAL R7
      212 CAPTURE                          VAL R11
      213 CAPTURE                          VAL R19
      214 CAPTURE                          VAL R40
      215 CAPTURE                          VAL R34
      216 CAPTURE                          VAL R35
      217 CAPTURE                          VAL R41
      218 CAPTURE                          VAL R3
      219 CAPTURE                          VAL R32
      220 CAPTURE                          VAL R9
      221 DUPCLOSURE                       R43 K59 [PROTO_3]
      222 CAPTURE                          VAL R37
      223 CAPTURE                          VAL R38
      224 DUPCLOSURE                       R44 K60 [PROTO_10]
      225 CAPTURE                          VAL R7
      226 CAPTURE                          VAL R11
      227 CAPTURE                          VAL R34
      228 CAPTURE                          VAL R35
      229 CAPTURE                          VAL R41
      230 CAPTURE                          VAL R3
      231 CAPTURE                          VAL R32
      232 CAPTURE                          VAL R33
      233 CAPTURE                          VAL R25
      234 CAPTURE                          VAL R5
      235 CAPTURE                          VAL R10
      236 CAPTURE                          VAL R30
      237 CAPTURE                          VAL R37
      238 CAPTURE                          VAL R38
      239 CAPTURE                          VAL R24
      240 DUPCLOSURE                       R45 K61 [PROTO_12]
      241 CAPTURE                          VAL R14
      242 CAPTURE                          VAL R7
      243 CAPTURE                          VAL R21
      244 DUPCLOSURE                       R46 K62 [PROTO_14]
      245 CAPTURE                          VAL R14
      246 CAPTURE                          VAL R7
      247 CAPTURE                          VAL R22
      248 DUPCLOSURE                       R47 K63 [PROTO_15]
      249 CAPTURE                          VAL R15
      250 DUPCLOSURE                       R48 K64 [PROTO_20]
      251 CAPTURE                          VAL R36
      252 CAPTURE                          VAL R45
      253 CAPTURE                          VAL R46
      254 CAPTURE                          VAL R7
      255 CAPTURE                          VAL R15
      256 CAPTURE                          VAL R13
      257 CAPTURE                          VAL R4
      258 CAPTURE                          VAL R11
      259 CAPTURE                          VAL R23
      260 CAPTURE                          VAL R34
      261 CAPTURE                          VAL R35
      262 CAPTURE                          VAL R41
      263 CAPTURE                          VAL R3
      264 CAPTURE                          VAL R32
      265 CAPTURE                          VAL R9
      266 CAPTURE                          VAL R33
      267 CAPTURE                          VAL R26
      268 CAPTURE                          VAL R5
      269 CAPTURE                          VAL R31
      270 CAPTURE                          VAL R39
      271 CAPTURE                          VAL R29
      272 CAPTURE                          VAL R10
      273 CAPTURE                          VAL R28
      274 CAPTURE                          VAL R27
      275 CAPTURE                          VAL R6
      276 CAPTURE                          VAL R24
      277 DUPCLOSURE                       R49 K65 [PROTO_21]
      278 CAPTURE                          VAL R40
      279 CAPTURE                          VAL R3
      280 CAPTURE                          VAL R35
      281 CAPTURE                          VAL R42
      282 CAPTURE                          VAL R44
      283 CAPTURE                          VAL R48
      284 DUPCLOSURE                       R50 K66 [PROTO_22]
      285 CAPTURE                          VAL R19
      286 CAPTURE                          VAL R40
      287 DUPCLOSURE                       R51 K67 [PROTO_23]
      288 CAPTURE                          VAL R19
      289 CAPTURE                          VAL R40
      290 CAPTURE                          VAL R8
      291 DUPTABLE                         R52 K72 [{"Type", "ContentWidget", "Serialization", "Modes"}]
      292 LOADK                            R53 K28 ["MeshGen"]
      293 SETTABLEKS                       R53 R52 K68 ["Type"]
      295 MOVE                             R54 R20
      296 CALL                             R54 0 1
      297 JUMPIFNOT                        R54 ; [+5]
      298 GETTABLEKS                       R53 R7 K73 ["memo"]
      300 MOVE                             R54 R49
      301 CALL                             R53 1 1
      302 JUMP                             ; [+1]
      303 MOVE                             R53 R49
      304 SETTABLEKS                       R53 R52 K69 ["ContentWidget"]
      306 DUPTABLE                         R53 K76 [{"serialize", "deserialize"}]
      307 SETTABLEKS                       R50 R53 K74 ["serialize"]
      309 SETTABLEKS                       R51 R53 K75 ["deserialize"]
      311 SETTABLEKS                       R53 R52 K70 ["Serialization"]
      313 SETTABLEKS                       R40 R52 K71 ["Modes"]
      315 MOVE                             R53 R20
      316 CALL                             R53 0 1
      317 JUMPIF                           R53 ; [+7]
      318 GETTABLEKS                       R53 R2 K77 ["registerWidget_DEPRECATED"]
      320 GETTABLEKS                       R54 R52 K68 ["Type"]
      322 GETTABLEKS                       R55 R52 K69 ["ContentWidget"]
      324 CALL                             R53 2 0
      325 RETURN                           R52 1
