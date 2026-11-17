PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Sessions"]
        2 GETTABLEKS                       R1 R1 K1 ["uploading"]
        4 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R1 1 -1
        4 CALL                             R0 -1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 2
        7 DUPCLOSURE                       R4 K1 [PROTO_0]
        8 CALL                             R3 1 1
        9 GETTABLEKS                       R4 R0 K2 ["TableEntry"]
       11 GETUPVAL                         R5 3
       12 GETTABLEKS                       R5 R5 K3 ["useCallback"]
       14 NEWCLOSURE                       R6 P1
       15 CAPTURE                          VAL R2
       16 CAPTURE                          UPVAL U4
       17 CAPTURE                          VAL R4
       18 CALL                             R5 1 1
       19 LOADNIL                          R6
       20 LOADNIL                          R7
       21 LOADNIL                          R8
       22 GETTABLEKS                       R9 R4 K4 ["state"]
       24 GETUPVAL                         R10 5
       25 GETTABLEKS                       R10 R10 K5 ["SessionState"]
       27 GETTABLEKS                       R10 R10 K6 ["Parsing"]
       29 JUMPIFEQ                         R9 R10 ; [+11]
       31 JUMPIFNOT                        R3 ; [+65]
       32 GETTABLEKS                       R9 R4 K4 ["state"]
       34 GETUPVAL                         R10 5
       35 GETTABLEKS                       R10 R10 K5 ["SessionState"]
       37 GETTABLEKS                       R10 R10 K7 ["Importing"]
       39 JUMPIFNOTEQ                      R9 R10 ; [+57]
       41 GETUPVAL                         R9 3
       42 GETTABLEKS                       R9 R9 K8 ["createElement"]
       44 LOADK                            R10 K9 ["CanvasGroup"]
       45 DUPTABLE                         R11 K13 [{["Size"], ["BackgroundTransparency"] = 1}]
       46 GETIMPORT                        R12 K16 [UDim2.fromOffset]
       48 LOADN                            R13 16
       49 LOADN                            R14 16
       50 CALL                             R12 2 1
       51 SETTABLEKS                       R12 R11 K10 ["Size"]
       53 DUPTABLE                         R12 K18 [{"Loading"}]
       54 GETUPVAL                         R13 6
       55 GETUPVAL                         R14 7
       56 GETTABLEKS                       R14 R14 K17 ["Loading"]
       58 DUPTABLE                         R15 K22 [{["size"], ["testId"] = "asset-row-loading"}]
       59 GETUPVAL                         R16 8
       60 GETTABLEKS                       R16 R16 K23 ["IconSize"]
       62 GETTABLEKS                       R16 R16 K24 ["Small"]
       64 SETTABLEKS                       R16 R15 K19 ["size"]
       66 CALL                             R13 2 1
       67 SETTABLEKS                       R13 R12 K17 ["Loading"]
       69 CALL                             R9 3 1
       70 MOVE                             R6 R9
       71 GETUPVAL                         R9 9
       72 CALL                             R9 0 1
       73 JUMPIFNOT                        R9 ; [+150]
       74 GETTABLEKS                       R9 R4 K4 ["state"]
       76 GETUPVAL                         R10 5
       77 GETTABLEKS                       R10 R10 K5 ["SessionState"]
       79 GETTABLEKS                       R10 R10 K6 ["Parsing"]
       81 JUMPIFNOTEQ                      R9 R10 ; [+8]
       83 LOADK                            R11 K25 ["SingleImport"]
       84 LOADK                            R12 K6 ["Parsing"]
       85 NAMECALL                         R9 R1 K26 ["getText"]
       87 CALL                             R9 3 1
       88 MOVE                             R7 R9
       89 JUMP                             ; [+134]
       90 LOADK                            R11 K25 ["SingleImport"]
       91 LOADK                            R12 K7 ["Importing"]
       92 NAMECALL                         R9 R1 K26 ["getText"]
       94 CALL                             R9 3 1
       95 MOVE                             R7 R9
       96 JUMP                             ; [+127]
       97 GETTABLEKS                       R9 R4 K4 ["state"]
       99 GETUPVAL                         R10 5
      100 GETTABLEKS                       R10 R10 K5 ["SessionState"]
      102 GETTABLEKS                       R10 R10 K27 ["Imported"]
      104 JUMPIFNOTEQ                      R9 R10 ; [+72]
      106 GETTABLEKS                       R10 R4 K28 ["uploadResults"]
      108 FASTCALL2K                       ASSERT R10 K29 ; [+4]
      110 LOADK                            R11 K29 ["Imported file must have uploadResults"]
      111 GETIMPORT                        R9 K31 [assert]
      113 CALL                             R9 2 0
      114 GETTABLEKS                       R9 R4 K28 ["uploadResults"]
      116 GETTABLEKS                       R9 R9 K32 ["Succeeded"]
      118 JUMPIFNOT                        R9 ; [+2]
      119 LOADNIL                          R8
      120 JUMP                             ; [+1]
      121 MOVE                             R8 R5
      122 GETTABLEKS                       R10 R4 K28 ["uploadResults"]
      124 GETTABLEKS                       R10 R10 K32 ["Succeeded"]
      126 JUMPIFNOT                        R10 ; [+10]
      127 GETUPVAL                         R9 10
      128 GETTABLEKS                       R9 R9 K33 ["get"]
      130 GETUPVAL                         R10 10
      131 GETTABLEKS                       R10 R10 K34 ["AvailableImages"]
      133 GETTABLEKS                       R10 R10 K35 ["Success"]
      135 CALL                             R9 1 1
      136 JUMP                             ; [+9]
      137 GETUPVAL                         R9 10
      138 GETTABLEKS                       R9 R9 K33 ["get"]
      140 GETUPVAL                         R10 10
      141 GETTABLEKS                       R10 R10 K34 ["AvailableImages"]
      143 GETTABLEKS                       R10 R10 K36 ["Error"]
      145 CALL                             R9 1 1
      146 GETUPVAL                         R10 9
      147 CALL                             R10 0 1
      148 JUMPIFNOT                        R10 ; [+18]
      149 GETTABLEKS                       R10 R4 K28 ["uploadResults"]
      151 GETTABLEKS                       R10 R10 K32 ["Succeeded"]
      153 JUMPIFNOT                        R10 ; [+7]
      154 LOADK                            R12 K37 ["ImportQueue"]
      155 LOADK                            R13 K38 ["StatusComplete"]
      156 NAMECALL                         R10 R1 K26 ["getText"]
      158 CALL                             R10 3 1
      159 MOVE                             R7 R10
      160 JUMP                             ; [+6]
      161 LOADK                            R12 K39 ["Upload"]
      162 LOADK                            R13 K40 ["Failure"]
      163 NAMECALL                         R10 R1 K26 ["getText"]
      165 CALL                             R10 3 1
      166 MOVE                             R7 R10
      167 GETUPVAL                         R10 6
      168 GETUPVAL                         R11 7
      169 GETTABLEKS                       R11 R11 K41 ["Image"]
      171 DUPTABLE                         R12 K44 [{["tag"] = "size-400-400", ["Image"]}]
      172 SETTABLEKS                       R9 R12 K41 ["Image"]
      174 CALL                             R10 2 1
      175 MOVE                             R6 R10
      176 JUMP                             ; [+47]
      177 GETTABLEKS                       R9 R4 K4 ["state"]
      179 GETUPVAL                         R10 5
      180 GETTABLEKS                       R10 R10 K5 ["SessionState"]
      182 GETTABLEKS                       R10 R10 K45 ["Parsed"]
      184 JUMPIFNOTEQ                      R9 R10 ; [+39]
      186 GETTABLEKS                       R9 R4 K46 ["enabled"]
      188 JUMPIFNOT                        R9 ; [+35]
      189 GETTABLEKS                       R9 R4 K47 ["importDataError"]
      191 JUMPIF                           R9 ; [+32]
      192 GETUPVAL                         R9 9
      193 CALL                             R9 0 1
      194 JUMPIFNOT                        R9 ; [+29]
      195 GETUPVAL                         R9 6
      196 GETUPVAL                         R10 7
      197 GETTABLEKS                       R10 R10 K48 ["Icon"]
      199 DUPTABLE                         R11 K50 [{"name", "size"}]
      200 GETUPVAL                         R12 7
      201 GETTABLEKS                       R12 R12 K51 ["Enums"]
      203 GETTABLEKS                       R12 R12 K52 ["IconName"]
      205 GETTABLEKS                       R12 R12 K53 ["ClockDashed"]
      207 SETTABLEKS                       R12 R11 K49 ["name"]
      209 GETUPVAL                         R12 8
      210 GETTABLEKS                       R12 R12 K23 ["IconSize"]
      212 GETTABLEKS                       R12 R12 K24 ["Small"]
      214 SETTABLEKS                       R12 R11 K19 ["size"]
      216 CALL                             R9 2 1
      217 MOVE                             R6 R9
      218 LOADK                            R11 K37 ["ImportQueue"]
      219 LOADK                            R12 K54 ["StatusReady"]
      220 NAMECALL                         R9 R1 K26 ["getText"]
      222 CALL                             R9 3 1
      223 MOVE                             R7 R9
      224 GETUPVAL                         R9 6
      225 GETUPVAL                         R10 7
      226 GETTABLEKS                       R10 R10 K55 ["View"]
      228 DUPTABLE                         R11 K59 [{["tag"] = "col align-x-center align-y-center size-full", ["testId"] = "asset-row-status", ["onActivated"]}]
      229 SETTABLEKS                       R8 R11 K58 ["onActivated"]
      231 GETUPVAL                         R13 9
      232 CALL                             R13 0 1
      233 JUMPIFNOT                        R13 ; [+33]
      234 JUMPIFNOT                        R7 ; [+32]
      235 GETUPVAL                         R12 6
      236 GETUPVAL                         R13 7
      237 GETTABLEKS                       R13 R13 K60 ["Tooltip"]
      239 DUPTABLE                         R14 K64 [{"title", "align", "side"}]
      240 SETTABLEKS                       R7 R14 K61 ["title"]
      242 GETUPVAL                         R15 7
      243 GETTABLEKS                       R15 R15 K51 ["Enums"]
      245 GETTABLEKS                       R15 R15 K65 ["PopoverAlign"]
      247 GETTABLEKS                       R15 R15 K66 ["End"]
      249 SETTABLEKS                       R15 R14 K62 ["align"]
      251 GETUPVAL                         R15 7
      252 GETTABLEKS                       R15 R15 K51 ["Enums"]
      254 GETTABLEKS                       R15 R15 K67 ["PopoverSide"]
      256 GETTABLEKS                       R15 R15 K68 ["Bottom"]
      258 SETTABLEKS                       R15 R14 K63 ["side"]
      260 NEWTABLE                         R15 0 1
      262 MOVE                             R16 R6
      263 SETLIST                          R15 R16 1 [1]
      265 CALL                             R12 3 1
      266 JUMP                             ; [+1]
      267 MOVE                             R12 R6
      268 CALL                             R9 3 -1
      269 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["createElement"]
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R0 K6 ["Packages"]
       20 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R3 K10 ["Enums"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R6 R0 K6 ["Packages"]
       29 GETTABLEKS                       R6 R6 K11 ["Framework"]
       31 CALL                             R5 1 1
       32 GETTABLEKS                       R6 R5 K12 ["ContextServices"]
       34 GETTABLEKS                       R7 R6 K13 ["Localization"]
       36 GETIMPORT                        R8 K5 [require]
       38 GETTABLEKS                       R9 R0 K14 ["Src"]
       40 GETTABLEKS                       R9 R9 K15 ["Hooks"]
       42 GETTABLEKS                       R9 R9 K16 ["useDispatch"]
       44 CALL                             R8 1 1
       45 GETIMPORT                        R9 K5 [require]
       47 GETTABLEKS                       R10 R0 K14 ["Src"]
       49 GETTABLEKS                       R10 R10 K15 ["Hooks"]
       51 GETTABLEKS                       R10 R10 K17 ["useSelector"]
       53 CALL                             R9 1 1
       54 GETIMPORT                        R10 K5 [require]
       56 GETTABLEKS                       R11 R0 K14 ["Src"]
       58 GETTABLEKS                       R11 R11 K18 ["Thunks"]
       60 GETTABLEKS                       R11 R11 K19 ["ShowUploadWidget"]
       62 CALL                             R10 1 1
       63 GETIMPORT                        R11 K5 [require]
       65 GETTABLEKS                       R12 R0 K14 ["Src"]
       67 GETTABLEKS                       R12 R12 K20 ["Types"]
       69 CALL                             R11 1 1
       70 GETIMPORT                        R12 K5 [require]
       72 GETTABLEKS                       R13 R0 K14 ["Src"]
       74 GETTABLEKS                       R13 R13 K20 ["Types"]
       76 GETTABLEKS                       R13 R13 K21 ["QueuedSession"]
       78 CALL                             R12 1 1
       79 GETIMPORT                        R13 K5 [require]
       81 GETTABLEKS                       R14 R0 K14 ["Src"]
       83 GETTABLEKS                       R14 R14 K22 ["Resources"]
       85 GETTABLEKS                       R14 R14 K23 ["Images"]
       87 CALL                             R13 1 1
       88 GETIMPORT                        R14 K5 [require]
       90 GETTABLEKS                       R15 R0 K14 ["Src"]
       92 GETTABLEKS                       R15 R15 K24 ["Flags"]
       94 GETTABLEKS                       R15 R15 K25 ["getFFlagImportQueueUXClarity"]
       96 CALL                             R14 1 1
       97 DUPCLOSURE                       R15 K26 [PROTO_2]
       98 CAPTURE                          VAL R7
       99 CAPTURE                          VAL R8
      100 CAPTURE                          VAL R9
      101 CAPTURE                          VAL R1
      102 CAPTURE                          VAL R10
      103 CAPTURE                          VAL R11
      104 CAPTURE                          VAL R2
      105 CAPTURE                          VAL R3
      106 CAPTURE                          VAL R4
      107 CAPTURE                          VAL R14
      108 CAPTURE                          VAL R13
      109 RETURN                           R15 1
