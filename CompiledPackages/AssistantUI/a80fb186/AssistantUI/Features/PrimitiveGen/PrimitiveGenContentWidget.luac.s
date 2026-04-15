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
       33 DUPTABLE                         R8 K12 [{"IsDisabled", "VerticalAlignment", "LayoutOrder"}]
       34 GETTABLEKS                       R10 R0 K6 ["canToggle"]
       36 NOT                              R9 R10
       37 SETTABLEKS                       R9 R8 K10 ["IsDisabled"]
       39 LOADK                            R9 K13 ["center"]
       40 SETTABLEKS                       R9 R8 K11 ["VerticalAlignment"]
       42 MOVE                             R9 R1
       43 CALL                             R9 0 1
       44 SETTABLEKS                       R9 R8 K1 ["LayoutOrder"]
       46 GETTABLEKS                       R9 R0 K14 ["headerChildren"]
       48 CALL                             R6 3 1
       49 SETTABLEKS                       R6 R5 K7 ["Header"]
       51 GETTABLEKS                       R6 R0 K15 ["children"]
       53 JUMPIFNOT                        R6 ; [+15]
       54 GETUPVAL                         R6 1
       55 GETUPVAL                         R8 2
       56 GETTABLEKS                       R7 R8 K8 ["Content"]
       58 DUPTABLE                         R8 K17 [{"tag", "LayoutOrder"}]
       59 LOADK                            R9 K18 ["col size-0-0 fill auto-y gap-small"]
       60 SETTABLEKS                       R9 R8 K16 ["tag"]
       62 MOVE                             R9 R1
       63 CALL                             R9 0 1
       64 SETTABLEKS                       R9 R8 K1 ["LayoutOrder"]
       66 GETTABLEKS                       R9 R0 K15 ["children"]
       68 CALL                             R6 3 1
       69 SETTABLEKS                       R6 R5 K8 ["Content"]
       71 CALL                             R2 3 -1
       72 RETURN                           R2 -1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["isError"]
        2 NOT                              R1 R2
        3 JUMPIFNOT                        R1 ; [+9]
        4 GETTABLEKS                       R2 R0 K1 ["mode"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K2 ["Preparing"]
        9 JUMPIFEQ                         R2 R3 ; [+2]
       11 LOADB                            R1 0 +1
       12 LOADB                            R1 1
       13 LOADNIL                          R2
       14 GETTABLEKS                       R3 R0 K0 ["isError"]
       16 JUMPIFNOT                        R3 ; [+18]
       17 GETTABLEKS                       R3 R0 K3 ["errorMessage"]
       19 JUMPIFNOT                        R3 ; [+11]
       20 LOADK                            R3 K4 ["%*: %*"]
       21 GETUPVAL                         R6 1
       22 GETTABLEKS                       R5 R6 K5 ["GenerationFailed"]
       24 GETTABLEKS                       R6 R0 K3 ["errorMessage"]
       26 NAMECALL                         R3 R3 K6 ["format"]
       28 CALL                             R3 3 1
       29 MOVE                             R2 R3
       30 JUMP                             ; [+7]
       31 GETUPVAL                         R3 1
       32 GETTABLEKS                       R2 R3 K5 ["GenerationFailed"]
       34 JUMP                             ; [+3]
       35 GETUPVAL                         R3 1
       36 GETTABLEKS                       R2 R3 K7 ["Generating"]
       38 GETUPVAL                         R3 2
       39 CALL                             R3 0 1
       40 GETUPVAL                         R4 3
       41 GETUPVAL                         R5 4
       42 GETUPVAL                         R7 5
       43 GETTABLEKS                       R6 R7 K8 ["assign"]
       45 DUPTABLE                         R7 K11 [{"canToggle", "headerChildren"}]
       46 LOADB                            R8 0
       47 SETTABLEKS                       R8 R7 K9 ["canToggle"]
       49 DUPTABLE                         R8 K13 [{"Text"}]
       50 GETUPVAL                         R9 3
       51 GETUPVAL                         R10 6
       52 DUPTABLE                         R11 K16 [{"tag", "Text", "LayoutOrder"}]
       53 LOADK                            R12 K17 ["size-0-full auto-x text-label-small content-default text-truncate-end text-align-y-center"]
       54 SETTABLEKS                       R12 R11 K14 ["tag"]
       56 SETTABLEKS                       R2 R11 K12 ["Text"]
       58 MOVE                             R12 R3
       59 CALL                             R12 0 1
       60 SETTABLEKS                       R12 R11 K15 ["LayoutOrder"]
       62 DUPTABLE                         R12 K19 [{"Shimmer"}]
       63 MOVE                             R13 R1
       64 JUMPIFNOT                        R13 ; [+3]
       65 GETUPVAL                         R13 3
       66 GETUPVAL                         R14 7
       67 CALL                             R13 1 1
       68 SETTABLEKS                       R13 R12 K18 ["Shimmer"]
       70 CALL                             R9 3 1
       71 SETTABLEKS                       R9 R8 K12 ["Text"]
       73 SETTABLEKS                       R8 R7 K10 ["headerChildren"]
       75 MOVE                             R8 R0
       76 CALL                             R6 2 -1
       77 CALL                             R4 -1 -1
       78 RETURN                           R4 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R0 K2 [task.cancel]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 LOADB                            R1 0
        5 CALL                             R0 1 0
        6 GETIMPORT                        R1 K2 [os.clock]
        8 CALL                             R1 0 1
        9 GETUPVAL                         R2 2
       10 SUB                              R0 R1 R2
       11 GETUPVAL                         R1 3
       12 JUMPIFNOTLE                      R1 R0 ; [+5]
       14 GETUPVAL                         R1 1
       15 LOADB                            R2 1
       16 CALL                             R1 1 0
       17 RETURN                           R0 0
       18 GETUPVAL                         R2 3
       19 SUB                              R1 R2 R0
       20 GETIMPORT                        R2 K5 [task.delay]
       22 MOVE                             R3 R1
       23 NEWCLOSURE                       R4 P0
       24 CAPTURE                          UPVAL U1
       25 CALL                             R2 2 1
       26 NEWCLOSURE                       R3 P1
       27 CAPTURE                          VAL R2
       28 RETURN                           R3 1

PROTO_5:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["useState"]
        3 LOADB                            R4 0
        4 CALL                             R3 1 2
        5 GETUPVAL                         R6 0
        6 GETTABLEKS                       R5 R6 K1 ["useEffect"]
        8 NEWCLOSURE                       R6 P0
        9 CAPTURE                          VAL R1
       10 CAPTURE                          VAL R4
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U1
       13 NEWTABLE                         R7 0 3
       15 MOVE                             R8 R0
       16 MOVE                             R9 R1
       17 MOVE                             R10 R2
       18 SETLIST                          R7 R8 3 [1]
       20 CALL                             R5 2 0
       21 RETURN                           R3 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["previewImages"]
        3 CALL                             R1 1 1
        4 RETURN                           R1 1

PROTO_7:
        0 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["previewState"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["Generating"]
        5 JUMPIFEQ                         R2 R3 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 GETTABLEKS                       R3 R0 K0 ["previewState"]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R4 R5 K2 ["Inserted"]
       14 JUMPIFEQ                         R3 R4 ; [+2]
       16 LOADB                            R2 0 +1
       17 LOADB                            R2 1
       18 GETTABLEKS                       R4 R0 K0 ["previewState"]
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R5 R6 K3 ["Failed"]
       23 JUMPIFEQ                         R4 R5 ; [+2]
       25 LOADB                            R3 0 +1
       26 LOADB                            R3 1
       27 GETTABLEKS                       R5 R0 K0 ["previewState"]
       29 GETUPVAL                         R7 0
       30 GETTABLEKS                       R6 R7 K4 ["Cancelled"]
       32 JUMPIFEQ                         R5 R6 ; [+2]
       34 LOADB                            R4 0 +1
       35 LOADB                            R4 1
       36 GETUPVAL                         R5 1
       37 GETTABLEKS                       R6 R0 K5 ["startTime"]
       39 MOVE                             R7 R1
       40 GETTABLEKS                       R8 R0 K6 ["generationStage"]
       42 CALL                             R5 3 1
       43 GETUPVAL                         R6 2
       44 GETTABLEKS                       R7 R0 K7 ["previewImages"]
       46 CALL                             R6 1 1
       47 GETUPVAL                         R7 3
       48 GETTABLEKS                       R8 R0 K8 ["className"]
       50 CALL                             R7 1 1
       51 LOADNIL                          R8
       52 GETTABLEKS                       R10 R0 K8 ["className"]
       54 JUMPIFNOTEQKNIL                  R10 ; [+2]
       56 LOADB                            R9 0 +1
       57 LOADB                            R9 1
       58 JUMPIFNOT                        R1 ; [+12]
       59 JUMPIF                           R9 ; [+32]
       60 LOADK                            R10 K9 ["%* %*"]
       61 GETUPVAL                         R13 4
       62 GETTABLEKS                       R12 R13 K10 ["GeneratingPrefix"]
       64 GETTABLEKS                       R13 R0 K11 ["displayName"]
       66 NAMECALL                         R10 R10 K12 ["format"]
       68 CALL                             R10 3 1
       69 MOVE                             R8 R10
       70 JUMP                             ; [+21]
       71 JUMPIFNOT                        R2 ; [+8]
       72 JUMPIFNOT                        R9 ; [+4]
       73 GETUPVAL                         R10 4
       74 GETTABLEKS                       R8 R10 K2 ["Inserted"]
       76 JUMP                             ; [+15]
       77 GETTABLEKS                       R8 R0 K11 ["displayName"]
       79 JUMP                             ; [+12]
       80 JUMPIFNOT                        R4 ; [+4]
       81 GETUPVAL                         R10 4
       82 GETTABLEKS                       R8 R10 K13 ["GenerationCancelled"]
       84 JUMP                             ; [+7]
       85 JUMPIFNOT                        R3 ; [+4]
       86 GETUPVAL                         R10 4
       87 GETTABLEKS                       R8 R10 K14 ["GenerationFailed"]
       89 JUMP                             ; [+2]
       90 GETTABLEKS                       R8 R0 K0 ["previewState"]
       92 GETUPVAL                         R10 5
       93 CALL                             R10 0 1
       94 GETUPVAL                         R11 6
       95 GETUPVAL                         R12 7
       96 GETUPVAL                         R14 8
       97 GETTABLEKS                       R13 R14 K15 ["assign"]
       99 DUPTABLE                         R14 K18 [{"canToggle", "headerChildren"}]
      100 LOADB                            R15 1
      101 SETTABLEKS                       R15 R14 K16 ["canToggle"]
      103 DUPTABLE                         R15 K20 [{"HeaderContent"}]
      104 GETUPVAL                         R16 6
      105 GETUPVAL                         R17 9
      106 DUPTABLE                         R18 K23 [{"tag", "LayoutOrder"}]
      107 LOADK                            R19 K24 ["row size-0-full auto-x align-y-center gap-xsmall"]
      108 SETTABLEKS                       R19 R18 K21 ["tag"]
      110 MOVE                             R19 R10
      111 CALL                             R19 0 1
      112 SETTABLEKS                       R19 R18 K22 ["LayoutOrder"]
      114 DUPTABLE                         R19 K28 [{"Text", "ChipArea", "StageInfo"}]
      115 GETUPVAL                         R20 6
      116 GETUPVAL                         R21 10
      117 DUPTABLE                         R22 K29 [{"tag", "Text", "LayoutOrder"}]
      118 LOADK                            R23 K30 ["size-0-0 auto-xy text-label-small content-default"]
      119 SETTABLEKS                       R23 R22 K21 ["tag"]
      121 SETTABLEKS                       R8 R22 K25 ["Text"]
      123 MOVE                             R23 R10
      124 CALL                             R23 0 1
      125 SETTABLEKS                       R23 R22 K22 ["LayoutOrder"]
      127 DUPTABLE                         R23 K32 [{"Shimmer"}]
      128 MOVE                             R24 R1
      129 JUMPIFNOT                        R24 ; [+3]
      130 GETUPVAL                         R24 6
      131 GETUPVAL                         R25 11
      132 CALL                             R24 1 1
      133 SETTABLEKS                       R24 R23 K31 ["Shimmer"]
      135 CALL                             R20 3 1
      136 SETTABLEKS                       R20 R19 K25 ["Text"]
      138 MOVE                             R20 R9
      139 JUMPIFNOT                        R20 ; [+56]
      140 GETUPVAL                         R20 6
      141 GETUPVAL                         R21 9
      142 DUPTABLE                         R22 K23 [{"tag", "LayoutOrder"}]
      143 LOADK                            R23 K33 ["auto-xy align-x-left align-y-center"]
      144 SETTABLEKS                       R23 R22 K21 ["tag"]
      146 MOVE                             R23 R10
      147 CALL                             R23 0 1
      148 SETTABLEKS                       R23 R22 K22 ["LayoutOrder"]
      150 DUPTABLE                         R23 K35 [{"AssetLink"}]
      151 GETUPVAL                         R24 6
      152 GETUPVAL                         R25 12
      153 DUPTABLE                         R26 K42 [{"text", "leading", "onActivated", "isDisabled", "isChecked", "size", "LayoutOrder"}]
      154 GETTABLEKS                       R27 R0 K11 ["displayName"]
      156 SETTABLEKS                       R27 R26 K36 ["text"]
      158 GETTABLEKS                       R27 R7 K43 ["Image"]
      160 SETTABLEKS                       R27 R26 K37 ["leading"]
      162 GETTABLEKS                       R27 R0 K44 ["onChipClicked"]
      164 JUMPIF                           R27 ; [+1]
      165 DUPCLOSURE                       R27 K45 [PROTO_7]
      166 SETTABLEKS                       R27 R26 K38 ["onActivated"]
      168 GETTABLEKS                       R28 R0 K44 ["onChipClicked"]
      170 JUMPIFEQKNIL                     R28 ; [+2]
      172 LOADB                            R27 0 +1
      173 LOADB                            R27 1
      174 SETTABLEKS                       R27 R26 K39 ["isDisabled"]
      176 LOADB                            R27 0
      177 SETTABLEKS                       R27 R26 K40 ["isChecked"]
      179 GETUPVAL                         R30 13
      180 GETTABLEKS                       R29 R30 K46 ["Enums"]
      182 GETTABLEKS                       R28 R29 K47 ["ChipSize"]
      184 GETTABLEKS                       R27 R28 K48 ["Small"]
      186 SETTABLEKS                       R27 R26 K41 ["size"]
      188 MOVE                             R27 R10
      189 CALL                             R27 0 1
      190 SETTABLEKS                       R27 R26 K22 ["LayoutOrder"]
      192 CALL                             R24 2 1
      193 SETTABLEKS                       R24 R23 K34 ["AssetLink"]
      195 CALL                             R20 3 1
      196 SETTABLEKS                       R20 R19 K26 ["ChipArea"]
      198 MOVE                             R20 R1
      199 JUMPIFNOT                        R20 ; [+57]
      200 GETUPVAL                         R20 6
      201 GETUPVAL                         R21 9
      202 DUPTABLE                         R22 K23 [{"tag", "LayoutOrder"}]
      203 LOADK                            R23 K49 ["row size-0-0 auto-xy align-y-center gap-xsmall padding-top-xxsmall"]
      204 SETTABLEKS                       R23 R22 K21 ["tag"]
      206 MOVE                             R23 R10
      207 CALL                             R23 0 1
      208 SETTABLEKS                       R23 R22 K22 ["LayoutOrder"]
      210 DUPTABLE                         R23 K52 [{"GenerationStage", "TakingLonger"}]
      211 GETTABLEKS                       R24 R0 K6 ["generationStage"]
      213 JUMPIFNOT                        R24 ; [+20]
      214 GETUPVAL                         R24 6
      215 GETUPVAL                         R25 10
      216 DUPTABLE                         R26 K29 [{"tag", "Text", "LayoutOrder"}]
      217 LOADK                            R27 K53 ["size-0-0 auto-xy text-caption-small content-muted"]
      218 SETTABLEKS                       R27 R26 K21 ["tag"]
      220 LOADK                            R28 K54 ["(%*)"]
      221 GETTABLEKS                       R30 R0 K6 ["generationStage"]
      223 NAMECALL                         R28 R28 K12 ["format"]
      225 CALL                             R28 2 1
      226 MOVE                             R27 R28
      227 SETTABLEKS                       R27 R26 K25 ["Text"]
      229 MOVE                             R27 R10
      230 CALL                             R27 0 1
      231 SETTABLEKS                       R27 R26 K22 ["LayoutOrder"]
      233 CALL                             R24 2 1
      234 SETTABLEKS                       R24 R23 K50 ["GenerationStage"]
      236 MOVE                             R24 R5
      237 JUMPIFNOT                        R24 ; [+16]
      238 GETUPVAL                         R24 6
      239 GETUPVAL                         R25 10
      240 DUPTABLE                         R26 K29 [{"tag", "Text", "LayoutOrder"}]
      241 LOADK                            R27 K53 ["size-0-0 auto-xy text-caption-small content-muted"]
      242 SETTABLEKS                       R27 R26 K21 ["tag"]
      244 GETUPVAL                         R28 4
      245 GETTABLEKS                       R27 R28 K51 ["TakingLonger"]
      247 SETTABLEKS                       R27 R26 K25 ["Text"]
      249 MOVE                             R27 R10
      250 CALL                             R27 0 1
      251 SETTABLEKS                       R27 R26 K22 ["LayoutOrder"]
      253 CALL                             R24 2 1
      254 SETTABLEKS                       R24 R23 K51 ["TakingLonger"]
      256 CALL                             R20 3 1
      257 SETTABLEKS                       R20 R19 K27 ["StageInfo"]
      259 CALL                             R16 3 1
      260 SETTABLEKS                       R16 R15 K19 ["HeaderContent"]
      262 SETTABLEKS                       R15 R14 K17 ["headerChildren"]
      264 MOVE                             R15 R0
      265 CALL                             R13 2 1
      266 DUPTABLE                         R14 K56 [{"Preview"}]
      267 JUMPIF                           R3 ; [+1]
      268 JUMPIFNOT                        R4 ; [+87]
      269 GETTABLEKS                       R16 R6 K57 ["exists"]
      271 JUMPIF                           R16 ; [+84]
      272 GETUPVAL                         R15 6
      273 GETUPVAL                         R16 9
      274 DUPTABLE                         R17 K59 [{"tag", "Size", "LayoutOrder"}]
      275 LOADK                            R18 K60 ["col size-full-0 radius-small align-x-center align-y-center bg-shift-200 gap-medium padding-large"]
      276 SETTABLEKS                       R18 R17 K21 ["tag"]
      278 GETIMPORT                        R18 K63 [UDim2.new]
      280 LOADN                            R19 1
      281 LOADN                            R20 0
      282 LOADN                            R21 0
      283 GETUPVAL                         R22 14
      284 CALL                             R18 4 1
      285 SETTABLEKS                       R18 R17 K58 ["Size"]
      287 MOVE                             R18 R10
      288 CALL                             R18 0 1
      289 SETTABLEKS                       R18 R17 K22 ["LayoutOrder"]
      291 DUPTABLE                         R18 K66 [{"ErrorIcon", "ErrorText"}]
      292 GETUPVAL                         R19 6
      293 GETUPVAL                         R20 15
      294 DUPTABLE                         R21 K67 [{"tag", "Image", "LayoutOrder"}]
      295 LOADK                            R22 K68 ["size-500-500 content-system-warning"]
      296 SETTABLEKS                       R22 R21 K21 ["tag"]
      298 LOADK                            R22 K69 ["icons/status/error_large"]
      299 SETTABLEKS                       R22 R21 K43 ["Image"]
      301 MOVE                             R22 R10
      302 CALL                             R22 0 1
      303 SETTABLEKS                       R22 R21 K22 ["LayoutOrder"]
      305 CALL                             R19 2 1
      306 SETTABLEKS                       R19 R18 K64 ["ErrorIcon"]
      308 GETUPVAL                         R19 6
      309 GETUPVAL                         R20 10
      310 DUPTABLE                         R21 K71 [{"tag", "TextWrapped", "Text", "LayoutOrder"}]
      311 LOADK                            R22 K72 ["size-full-0 auto-y text-label-small content-muted text-align-x-center"]
      312 SETTABLEKS                       R22 R21 K21 ["tag"]
      314 LOADB                            R22 1
      315 SETTABLEKS                       R22 R21 K70 ["TextWrapped"]
      317 JUMPIFNOT                        R4 ; [+4]
      318 GETUPVAL                         R23 4
      319 GETTABLEKS                       R22 R23 K13 ["GenerationCancelled"]
      321 JUMP                             ; [+23]
      322 GETTABLEKS                       R23 R0 K73 ["previewErrorMessage"]
      324 JUMPIFNOT                        R23 ; [+17]
      325 GETTABLEKS                       R24 R0 K73 ["previewErrorMessage"]
      327 LENGTH                           R23 R24
      328 LOADN                            R24 0
      329 JUMPIFNOTLT                      R24 R23 ; [+12]
      331 LOADK                            R23 K74 ["%*\n\n%*"]
      332 GETUPVAL                         R26 4
      333 GETTABLEKS                       R25 R26 K14 ["GenerationFailed"]
      335 GETTABLEKS                       R26 R0 K73 ["previewErrorMessage"]
      337 NAMECALL                         R23 R23 K12 ["format"]
      339 CALL                             R23 3 1
      340 MOVE                             R22 R23
      341 JUMP                             ; [+3]
      342 GETUPVAL                         R23 4
      343 GETTABLEKS                       R22 R23 K14 ["GenerationFailed"]
      345 SETTABLEKS                       R22 R21 K25 ["Text"]
      347 MOVE                             R22 R10
      348 CALL                             R22 0 1
      349 SETTABLEKS                       R22 R21 K22 ["LayoutOrder"]
      351 CALL                             R19 2 1
      352 SETTABLEKS                       R19 R18 K65 ["ErrorText"]
      354 CALL                             R15 3 1
      355 JUMP                             ; [+131]
      356 GETTABLEKS                       R16 R6 K57 ["exists"]
      358 JUMPIF                           R16 ; [+27]
      359 GETUPVAL                         R15 6
      360 GETUPVAL                         R16 16
      361 DUPTABLE                         R17 K76 [{"Size", "radius", "LayoutOrder"}]
      362 GETIMPORT                        R18 K63 [UDim2.new]
      364 LOADN                            R19 1
      365 LOADN                            R20 0
      366 LOADN                            R21 0
      367 GETUPVAL                         R22 14
      368 CALL                             R18 4 1
      369 SETTABLEKS                       R18 R17 K58 ["Size"]
      371 GETUPVAL                         R21 13
      372 GETTABLEKS                       R20 R21 K46 ["Enums"]
      374 GETTABLEKS                       R19 R20 K77 ["Radius"]
      376 GETTABLEKS                       R18 R19 K48 ["Small"]
      378 SETTABLEKS                       R18 R17 K75 ["radius"]
      380 MOVE                             R18 R10
      381 CALL                             R18 0 1
      382 SETTABLEKS                       R18 R17 K22 ["LayoutOrder"]
      384 CALL                             R15 2 1
      385 JUMP                             ; [+101]
      386 GETUPVAL                         R15 6
      387 GETUPVAL                         R16 15
      388 DUPTABLE                         R17 K80 [{"tag", "Image", "Size", "BackgroundColor3", "ScaleType", "LayoutOrder"}]
      389 LOADK                            R18 K81 ["row size-full-0 auto-y bg-shift-200 radius-small align-x-center align-y-center flex-x-between padding-x-small padding-y-small"]
      390 SETTABLEKS                       R18 R17 K21 ["tag"]
      392 GETTABLEKS                       R18 R6 K82 ["current"]
      394 SETTABLEKS                       R18 R17 K43 ["Image"]
      396 GETIMPORT                        R18 K63 [UDim2.new]
      398 LOADN                            R19 1
      399 LOADN                            R20 0
      400 LOADN                            R21 0
      401 GETUPVAL                         R22 14
      402 CALL                             R18 4 1
      403 SETTABLEKS                       R18 R17 K58 ["Size"]
      405 GETIMPORT                        R18 K85 [Color3.fromRGB]
      407 LOADN                            R19 0
      408 LOADN                            R20 0
      409 LOADN                            R21 0
      410 CALL                             R18 3 1
      411 SETTABLEKS                       R18 R17 K78 ["BackgroundColor3"]
      413 GETIMPORT                        R18 K88 [Enum.ScaleType.Fit]
      415 SETTABLEKS                       R18 R17 K79 ["ScaleType"]
      417 MOVE                             R18 R10
      418 CALL                             R18 0 1
      419 SETTABLEKS                       R18 R17 K22 ["LayoutOrder"]
      421 DUPTABLE                         R18 K91 [{"LastPreview", "NextPreview"}]
      422 GETUPVAL                         R19 6
      423 GETUPVAL                         R20 17
      424 DUPTABLE                         R21 K93 [{"icon", "size", "onActivated", "LayoutOrder"}]
      425 GETUPVAL                         R25 13
      426 GETTABLEKS                       R24 R25 K46 ["Enums"]
      428 GETTABLEKS                       R23 R24 K94 ["IconName"]
      430 GETTABLEKS                       R22 R23 K95 ["ChevronLargeLeft"]
      432 SETTABLEKS                       R22 R21 K92 ["icon"]
      434 GETUPVAL                         R25 13
      435 GETTABLEKS                       R24 R25 K46 ["Enums"]
      437 GETTABLEKS                       R23 R24 K96 ["InputSize"]
      439 GETTABLEKS                       R22 R23 K48 ["Small"]
      441 SETTABLEKS                       R22 R21 K41 ["size"]
      443 GETTABLEKS                       R22 R6 K97 ["decrement"]
      445 SETTABLEKS                       R22 R21 K38 ["onActivated"]
      447 MOVE                             R22 R10
      448 CALL                             R22 0 1
      449 SETTABLEKS                       R22 R21 K22 ["LayoutOrder"]
      451 CALL                             R19 2 1
      452 SETTABLEKS                       R19 R18 K89 ["LastPreview"]
      454 GETUPVAL                         R19 6
      455 GETUPVAL                         R20 17
      456 DUPTABLE                         R21 K93 [{"icon", "size", "onActivated", "LayoutOrder"}]
      457 GETUPVAL                         R25 13
      458 GETTABLEKS                       R24 R25 K46 ["Enums"]
      460 GETTABLEKS                       R23 R24 K94 ["IconName"]
      462 GETTABLEKS                       R22 R23 K98 ["ChevronLargeRight"]
      464 SETTABLEKS                       R22 R21 K92 ["icon"]
      466 GETUPVAL                         R25 13
      467 GETTABLEKS                       R24 R25 K46 ["Enums"]
      469 GETTABLEKS                       R23 R24 K96 ["InputSize"]
      471 GETTABLEKS                       R22 R23 K48 ["Small"]
      473 SETTABLEKS                       R22 R21 K41 ["size"]
      475 GETTABLEKS                       R22 R6 K99 ["increment"]
      477 SETTABLEKS                       R22 R21 K38 ["onActivated"]
      479 MOVE                             R22 R10
      480 CALL                             R22 0 1
      481 SETTABLEKS                       R22 R21 K22 ["LayoutOrder"]
      483 CALL                             R19 2 1
      484 SETTABLEKS                       R19 R18 K90 ["NextPreview"]
      486 CALL                             R15 3 1
      487 SETTABLEKS                       R15 R14 K55 ["Preview"]
      489 CALL                             R11 3 -1
      490 RETURN                           R11 -1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["mode"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["ShowPreview"]
        5 JUMPIFNOTEQ                      R1 R2 ; [+6]
        7 GETUPVAL                         R1 1
        8 GETUPVAL                         R2 2
        9 MOVE                             R3 R0
       10 CALL                             R1 2 -1
       11 RETURN                           R1 -1
       12 GETTABLEKS                       R1 R0 K0 ["mode"]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R2 R3 K2 ["Preparing"]
       17 JUMPIFEQ                         R1 R2 ; [+7]
       19 GETIMPORT                        R1 K4 [warn]
       21 LOADK                            R2 K5 ["Unsupported mode of PrimitiveGenContentWidget"]
       22 GETTABLEKS                       R3 R0 K0 ["mode"]
       24 CALL                             R1 2 0
       25 GETTABLEKS                       R1 R0 K6 ["toolResult"]
       27 JUMPIFNOT                        R1 ; [+4]
       28 GETTABLEKS                       R2 R0 K6 ["toolResult"]
       30 GETTABLEKS                       R1 R2 K7 ["isError"]
       32 GETUPVAL                         R3 3
       33 GETTABLEKS                       R2 R3 K8 ["join"]
       35 MOVE                             R3 R0
       36 DUPTABLE                         R4 K9 [{"isError"}]
       37 SETTABLEKS                       R1 R4 K7 ["isError"]
       39 CALL                             R2 2 1
       40 MOVE                             R0 R2
       41 GETUPVAL                         R2 1
       42 GETUPVAL                         R3 4
       43 MOVE                             R4 R0
       44 CALL                             R2 2 -1
       45 RETURN                           R2 -1

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
       16 GETTABLEKS                       R4 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R4 K9 ["Dash"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R5 K10 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Parent"]
       32 GETTABLEKS                       R5 R6 K11 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K8 ["Parent"]
       39 GETTABLEKS                       R6 R7 K12 ["ReactUtils"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R8 R0 K6 ["Components"]
       46 GETTABLEKS                       R7 R8 K13 ["ShimmerGradient"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K14 ["Types"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R10 R0 K15 ["Hooks"]
       58 GETTABLEKS                       R9 R10 K16 ["useClassIcon"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R11 R0 K15 ["Hooks"]
       65 GETTABLEKS                       R10 R11 K17 ["useWrappingIndex"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K5 [require]
       70 GETTABLEKS                       R13 R0 K18 ["Features"]
       72 GETTABLEKS                       R12 R13 K19 ["Gen3dUtils"]
       74 GETTABLEKS                       R11 R12 K20 ["Gen3dConstants"]
       76 CALL                             R10 1 1
       77 GETTABLEKS                       R11 R3 K21 ["Chip"]
       79 GETTABLEKS                       R12 R3 K22 ["IconButton"]
       81 GETTABLEKS                       R13 R3 K23 ["Image"]
       83 GETTABLEKS                       R14 R3 K24 ["Skeleton"]
       85 GETTABLEKS                       R15 R3 K25 ["Text"]
       87 GETTABLEKS                       R16 R3 K26 ["View"]
       89 GETTABLEKS                       R17 R5 K27 ["createNextOrder"]
       91 GETTABLEKS                       R18 R4 K28 ["createElement"]
       93 GETTABLEKS                       R19 R10 K29 ["PREVIEW_HEIGHT"]
       95 GETTABLEKS                       R20 R10 K30 ["PREVIEW_IMAGE_COUNT"]
       97 GETTABLEKS                       R21 R10 K31 ["LONG_RUNNING_THRESHOLD_SECONDS"]
       99 DUPTABLE                         R22 K36 [{"Generating", "Inserted", "Failed", "Cancelled"}]
      100 LOADK                            R23 K32 ["Generating"]
      101 SETTABLEKS                       R23 R22 K32 ["Generating"]
      103 LOADK                            R23 K33 ["Inserted"]
      104 SETTABLEKS                       R23 R22 K33 ["Inserted"]
      106 LOADK                            R23 K34 ["Failed"]
      107 SETTABLEKS                       R23 R22 K34 ["Failed"]
      109 LOADK                            R23 K35 ["Cancelled"]
      110 SETTABLEKS                       R23 R22 K35 ["Cancelled"]
      112 DUPTABLE                         R23 K39 [{"Preparing", "ShowPreview"}]
      113 LOADK                            R24 K37 ["Preparing"]
      114 SETTABLEKS                       R24 R23 K37 ["Preparing"]
      116 LOADK                            R24 K38 ["ShowPreview"]
      117 SETTABLEKS                       R24 R23 K38 ["ShowPreview"]
      119 DUPCLOSURE                       R24 K40 [PROTO_0]
      120 CAPTURE                          VAL R17
      121 CAPTURE                          VAL R18
      122 CAPTURE                          VAL R1
      123 DUPTABLE                         R25 K42 [{"Generating", "GenerationFailed"}]
      124 LOADK                            R26 K43 ["Generating..."]
      125 SETTABLEKS                       R26 R25 K32 ["Generating"]
      127 LOADK                            R26 K44 ["Generation failed"]
      128 SETTABLEKS                       R26 R25 K41 ["GenerationFailed"]
      130 DUPCLOSURE                       R26 K45 [PROTO_1]
      131 CAPTURE                          VAL R23
      132 CAPTURE                          VAL R25
      133 CAPTURE                          VAL R17
      134 CAPTURE                          VAL R18
      135 CAPTURE                          VAL R24
      136 CAPTURE                          VAL R2
      137 CAPTURE                          VAL R15
      138 CAPTURE                          VAL R6
      139 DUPCLOSURE                       R27 K46 [PROTO_5]
      140 CAPTURE                          VAL R4
      141 CAPTURE                          VAL R21
      142 DUPCLOSURE                       R28 K47 [PROTO_6]
      143 CAPTURE                          VAL R9
      144 DUPTABLE                         R29 K51 [{"GeneratingPrefix", "Inserted", "GenerationCancelled", "GenerationFailed", "TakingLonger"}]
      145 LOADK                            R30 K32 ["Generating"]
      146 SETTABLEKS                       R30 R29 K48 ["GeneratingPrefix"]
      148 LOADK                            R30 K33 ["Inserted"]
      149 SETTABLEKS                       R30 R29 K33 ["Inserted"]
      151 LOADK                            R30 K52 ["Generation cancelled"]
      152 SETTABLEKS                       R30 R29 K49 ["GenerationCancelled"]
      154 LOADK                            R30 K44 ["Generation failed"]
      155 SETTABLEKS                       R30 R29 K41 ["GenerationFailed"]
      157 LOADK                            R30 K53 ["is taking longer than expected"]
      158 SETTABLEKS                       R30 R29 K50 ["TakingLonger"]
      160 DUPCLOSURE                       R30 K54 [PROTO_8]
      161 CAPTURE                          VAL R22
      162 CAPTURE                          VAL R27
      163 CAPTURE                          VAL R9
      164 CAPTURE                          VAL R8
      165 CAPTURE                          VAL R29
      166 CAPTURE                          VAL R17
      167 CAPTURE                          VAL R18
      168 CAPTURE                          VAL R24
      169 CAPTURE                          VAL R2
      170 CAPTURE                          VAL R16
      171 CAPTURE                          VAL R15
      172 CAPTURE                          VAL R6
      173 CAPTURE                          VAL R11
      174 CAPTURE                          VAL R3
      175 CAPTURE                          VAL R19
      176 CAPTURE                          VAL R13
      177 CAPTURE                          VAL R14
      178 CAPTURE                          VAL R12
      179 DUPCLOSURE                       R31 K55 [PROTO_9]
      180 CAPTURE                          VAL R23
      181 CAPTURE                          VAL R18
      182 CAPTURE                          VAL R30
      183 CAPTURE                          VAL R2
      184 CAPTURE                          VAL R26
      185 DUPTABLE                         R32 K60 [{"Type", "ContentWidget", "Modes", "PreviewState", "PREVIEW_IMAGE_COUNT"}]
      186 LOADK                            R33 K61 ["PrimitiveGen"]
      187 SETTABLEKS                       R33 R32 K56 ["Type"]
      189 GETTABLEKS                       R33 R4 K62 ["memo"]
      191 MOVE                             R34 R31
      192 CALL                             R33 1 1
      193 SETTABLEKS                       R33 R32 K57 ["ContentWidget"]
      195 SETTABLEKS                       R23 R32 K58 ["Modes"]
      197 SETTABLEKS                       R22 R32 K59 ["PreviewState"]
      199 SETTABLEKS                       R20 R32 K30 ["PREVIEW_IMAGE_COUNT"]
      201 RETURN                           R32 1
