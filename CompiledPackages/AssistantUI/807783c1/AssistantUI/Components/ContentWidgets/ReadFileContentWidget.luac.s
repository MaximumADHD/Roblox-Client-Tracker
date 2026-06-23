PROTO_0:
        0 LOADK                            R3 K0 ["."]
        1 NAMECALL                         R1 R0 K1 ["split"]
        3 CALL                             R1 2 1
        4 LENGTH                           R4 R1
        5 GETTABLE                         R3 R1 R4
        6 OR                               R2 R3 R0
        7 RETURN                           R2 1

PROTO_1:
        0 JUMPIF                           R0 ; [+2]
        1 LOADK                            R2 K0 [""]
        2 RETURN                           R2 1
        3 JUMPIFNOT                        R1 ; [+2]
        4 JUMPIFNOTEQ                      R0 R1 ; [+8]
        6 LOADK                            R3 K1 [" L%*"]
        7 MOVE                             R5 R0
        8 NAMECALL                         R3 R3 K2 ["format"]
       10 CALL                             R3 2 1
       11 MOVE                             R2 R3
       12 RETURN                           R2 1
       13 LOADK                            R3 K3 [" L%*-%*"]
       14 MOVE                             R5 R0
       15 MOVE                             R6 R1
       16 NAMECALL                         R3 R3 K2 ["format"]
       18 CALL                             R3 3 1
       19 MOVE                             R2 R3
       20 RETURN                           R2 1

PROTO_2:
        0 DUPTABLE                         R0 K2 [{"Complete", "Pending"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K3 ["ReadFile"]
        3 LOADK                            R4 K0 ["Complete"]
        4 NAMECALL                         R1 R1 K4 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Complete"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K3 ["ReadFile"]
       11 LOADK                            R4 K1 ["Pending"]
       12 NAMECALL                         R1 R1 K4 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["Pending"]
       17 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["openScriptAsync"]
        3 DUPTABLE                         R1 K4 [{"path", "startLine", "endLine"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["path"]
        7 GETUPVAL                         R2 2
        8 SETTABLEKS                       R2 R1 K2 ["startLine"]
       10 GETUPVAL                         R2 3
       11 SETTABLEKS                       R2 R1 K3 ["endLine"]
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["openScript"]
        4 LOADNIL                          R3
        5 DUPTABLE                         R4 K4 [{"path", "startLine", "endLine"}]
        6 GETUPVAL                         R5 2
        7 SETTABLEKS                       R5 R4 K1 ["path"]
        9 GETUPVAL                         R5 3
       10 SETTABLEKS                       R5 R4 K2 ["startLine"]
       12 GETUPVAL                         R5 4
       13 SETTABLEKS                       R5 R4 K3 ["endLine"]
       15 NAMECALL                         R0 R0 K5 ["InvokeHostAsync"]
       17 CALL                             R0 4 0
       18 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETUPVAL                         R0 0
        3 JUMPIFNOTEQKS                    R0 K0 [""] ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R0 1
        7 CALL                             R0 0 1
        8 JUMPIFNOT                        R0 ; [+12]
        9 GETUPVAL                         R0 2
       10 JUMPIF                           R0 ; [+1]
       11 RETURN                           R0 0
       12 GETIMPORT                        R0 K3 [task.spawn]
       14 NEWCLOSURE                       R1 P0
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          UPVAL U3
       18 CAPTURE                          UPVAL U4
       19 CALL                             R0 1 0
       20 RETURN                           R0 0
       21 GETUPVAL                         R0 5
       22 GETTABLEKS                       R0 R0 K4 ["getNetworking"]
       24 CALL                             R0 0 1
       25 JUMPIF                           R0 ; [+1]
       26 RETURN                           R0 0
       27 GETIMPORT                        R1 K3 [task.spawn]
       29 NEWCLOSURE                       R2 P1
       30 CAPTURE                          VAL R0
       31 CAPTURE                          UPVAL U6
       32 CAPTURE                          UPVAL U0
       33 CAPTURE                          UPVAL U3
       34 CAPTURE                          UPVAL U4
       35 CALL                             R1 1 0
       36 RETURN                           R0 0

PROTO_6:
        0 LOADNIL                          R1
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 GETUPVAL                         R5 0
        5 CALL                             R5 0 1
        6 JUMPIFNOT                        R5 ; [+43]
        7 GETTABLEKS                       R6 R0 K0 ["toolUse"]
        9 JUMPIFNOT                        R6 ; [+5]
       10 GETTABLEKS                       R5 R0 K0 ["toolUse"]
       12 GETTABLEKS                       R5 R5 K1 ["input"]
       14 JUMP                             ; [+2]
       15 NEWTABLE                         R5 0 0
       17 GETUPVAL                         R6 1
       18 GETTABLEKS                       R6 R6 K2 ["withDefault"]
       20 GETTABLEKS                       R7 R5 K3 ["target_file"]
       22 LOADK                            R8 K4 [""]
       23 CALL                             R6 2 1
       24 MOVE                             R1 R6
       25 GETUPVAL                         R6 1
       26 GETTABLEKS                       R6 R6 K2 ["withDefault"]
       28 GETTABLEKS                       R7 R5 K5 ["start_line_one_indexed"]
       30 LOADNIL                          R8
       31 CALL                             R6 2 1
       32 MOVE                             R2 R6
       33 GETUPVAL                         R6 1
       34 GETTABLEKS                       R6 R6 K2 ["withDefault"]
       36 GETTABLEKS                       R7 R5 K6 ["end_line_one_indexed_inclusive"]
       38 LOADNIL                          R8
       39 CALL                             R6 2 1
       40 MOVE                             R3 R6
       41 GETUPVAL                         R6 2
       42 GETTABLEKS                       R6 R6 K7 ["useContext"]
       44 GETUPVAL                         R7 3
       45 GETTABLEKS                       R7 R7 K8 ["Context"]
       47 CALL                             R6 1 1
       48 MOVE                             R4 R6
       49 JUMP                             ; [+6]
       50 GETTABLEKS                       R1 R0 K9 ["targetFile"]
       52 GETTABLEKS                       R2 R0 K10 ["startLine"]
       54 GETTABLEKS                       R3 R0 K11 ["endLine"]
       56 GETUPVAL                         R5 4
       57 CALL                             R5 0 1
       58 GETUPVAL                         R6 5
       59 GETTABLEKS                       R6 R6 K12 ["get"]
       61 CALL                             R6 0 1
       62 MOVE                             R8 R1
       63 LOADK                            R11 K13 ["."]
       64 NAMECALL                         R9 R8 K14 ["split"]
       66 CALL                             R9 2 1
       67 LENGTH                           R11 R9
       68 GETTABLE                         R10 R9 R11
       69 OR                               R7 R10 R8
       70 GETTABLEKS                       R9 R0 K15 ["generating"]
       72 NOT                              R8 R9
       73 JUMPIFNOT                        R8 ; [+6]
       74 GETTABLEKS                       R9 R0 K16 ["toolResult"]
       76 JUMPIFNOTEQKNIL                  R9 ; [+2]
       78 LOADB                            R8 0 +1
       79 LOADB                            R8 1
       80 MOVE                             R9 R8
       81 JUMPIFNOT                        R9 ; [+4]
       82 JUMPIFNOTEQKS                    R1 K4 [""] ; [+2]
       84 LOADB                            R9 0 +1
       85 LOADB                            R9 1
       86 GETUPVAL                         R10 2
       87 GETTABLEKS                       R10 R10 K17 ["useMemo"]
       89 DUPCLOSURE                       R11 K18 [PROTO_2]
       90 CAPTURE                          UPVAL U6
       91 NEWTABLE                         R12 0 1
       93 GETUPVAL                         R13 6
       94 GETTABLEKS                       R13 R13 K19 ["locale"]
       96 SETLIST                          R12 R13 1 [1]
       98 CALL                             R10 2 1
       99 LOADNIL                          R11
      100 LOADNIL                          R12
      101 JUMPIFNOTEQKS                    R7 K4 [""] ; [+9]
      103 JUMPIFNOT                        R8 ; [+3]
      104 GETTABLEKS                       R11 R10 K20 ["Complete"]
      106 JUMP                             ; [+2]
      107 GETTABLEKS                       R11 R10 K21 ["Pending"]
      109 LOADK                            R12 K4 [""]
      110 JUMP                             ; [+44]
      111 JUMPIFNOT                        R8 ; [+11]
      112 GETUPVAL                         R13 6
      113 LOADK                            R15 K22 ["ReadFile"]
      114 LOADK                            R16 K23 ["Read"]
      115 DUPTABLE                         R17 K25 [{"file"}]
      116 SETTABLEKS                       R7 R17 K24 ["file"]
      118 NAMECALL                         R13 R13 K26 ["getText"]
      120 CALL                             R13 4 1
      121 MOVE                             R11 R13
      122 JUMP                             ; [+10]
      123 GETUPVAL                         R13 6
      124 LOADK                            R15 K22 ["ReadFile"]
      125 LOADK                            R16 K27 ["Reading"]
      126 DUPTABLE                         R17 K25 [{"file"}]
      127 SETTABLEKS                       R7 R17 K24 ["file"]
      129 NAMECALL                         R13 R13 K26 ["getText"]
      131 CALL                             R13 4 1
      132 MOVE                             R11 R13
      133 MOVE                             R13 R2
      134 MOVE                             R14 R3
      135 JUMPIF                           R13 ; [+2]
      136 LOADK                            R12 K4 [""]
      137 JUMP                             ; [+17]
      138 JUMPIFNOT                        R14 ; [+2]
      139 JUMPIFNOTEQ                      R13 R14 ; [+8]
      141 LOADK                            R15 K28 [" L%*"]
      142 MOVE                             R17 R13
      143 NAMECALL                         R15 R15 K29 ["format"]
      145 CALL                             R15 2 1
      146 MOVE                             R12 R15
      147 JUMP                             ; [+7]
      148 LOADK                            R15 K30 [" L%*-%*"]
      149 MOVE                             R17 R13
      150 MOVE                             R18 R14
      151 NAMECALL                         R15 R15 K29 ["format"]
      153 CALL                             R15 3 1
      154 MOVE                             R12 R15
      155 GETUPVAL                         R13 2
      156 GETTABLEKS                       R13 R13 K31 ["useCallback"]
      158 NEWCLOSURE                       R14 P1
      159 CAPTURE                          REF R1
      160 CAPTURE                          UPVAL U0
      161 CAPTURE                          REF R4
      162 CAPTURE                          REF R2
      163 CAPTURE                          REF R3
      164 CAPTURE                          VAL R6
      165 CAPTURE                          UPVAL U7
      166 NEWTABLE                         R15 0 5
      168 MOVE                             R16 R6
      169 MOVE                             R17 R4
      170 MOVE                             R18 R1
      171 MOVE                             R19 R2
      172 MOVE                             R20 R3
      173 SETLIST                          R15 R16 5 [1]
      175 CALL                             R13 2 1
      176 GETUPVAL                         R14 8
      177 GETUPVAL                         R15 9
      178 DUPTABLE                         R16 K34 [{"tag", "LayoutOrder"}]
      179 LOADK                            R17 K35 ["col size-full-0 auto-xy gap-small"]
      180 SETTABLEKS                       R17 R16 K32 ["tag"]
      182 GETTABLEKS                       R17 R0 K33 ["LayoutOrder"]
      184 SETTABLEKS                       R17 R16 K33 ["LayoutOrder"]
      186 DUPTABLE                         R17 K37 [{"Title"}]
      187 GETUPVAL                         R18 8
      188 GETUPVAL                         R19 9
      189 DUPTABLE                         R20 K40 [{"tag", "LayoutOrder", "onActivated", "testId"}]
      190 LOADK                            R21 K41 ["row size-full-600 radius-medium align-y-center padding-x-small"]
      191 SETTABLEKS                       R21 R20 K32 ["tag"]
      193 MOVE                             R21 R5
      194 CALL                             R21 0 1
      195 SETTABLEKS                       R21 R20 K33 ["LayoutOrder"]
      197 JUMPIFNOT                        R9 ; [+2]
      198 MOVE                             R21 R13
      199 JUMP                             ; [+1]
      200 LOADNIL                          R21
      201 SETTABLEKS                       R21 R20 K38 ["onActivated"]
      203 JUMPIFNOT                        R9 ; [+6]
      204 GETUPVAL                         R21 10
      205 GETTABLEKS                       R21 R21 K22 ["ReadFile"]
      207 GETTABLEKS                       R21 R21 K36 ["Title"]
      209 JUMP                             ; [+1]
      210 LOADNIL                          R21
      211 SETTABLEKS                       R21 R20 K39 ["testId"]
      213 DUPTABLE                         R21 K44 [{"Action", "Detail"}]
      214 GETUPVAL                         R22 8
      215 GETUPVAL                         R23 11
      216 DUPTABLE                         R24 K46 [{"tag", "Text", "LayoutOrder"}]
      217 LOADK                            R25 K47 ["auto-xy text-caption-medium content-muted"]
      218 SETTABLEKS                       R25 R24 K32 ["tag"]
      220 SETTABLEKS                       R11 R24 K45 ["Text"]
      222 MOVE                             R25 R5
      223 CALL                             R25 0 1
      224 SETTABLEKS                       R25 R24 K33 ["LayoutOrder"]
      226 DUPTABLE                         R25 K49 [{"Shimmer"}]
      227 GETTABLEKS                       R26 R0 K15 ["generating"]
      229 JUMPIFNOT                        R26 ; [+3]
      230 GETUPVAL                         R26 8
      231 GETUPVAL                         R27 12
      232 CALL                             R26 1 1
      233 SETTABLEKS                       R26 R25 K48 ["Shimmer"]
      235 CALL                             R22 3 1
      236 SETTABLEKS                       R22 R21 K42 ["Action"]
      238 LOADB                            R22 0
      239 JUMPIFEQKS                       R12 K4 [""] ; [+14]
      241 GETUPVAL                         R22 8
      242 GETUPVAL                         R23 11
      243 DUPTABLE                         R24 K46 [{"tag", "Text", "LayoutOrder"}]
      244 LOADK                            R25 K50 ["auto-xy text-caption-medium content-muted text-truncate-end"]
      245 SETTABLEKS                       R25 R24 K32 ["tag"]
      247 SETTABLEKS                       R12 R24 K45 ["Text"]
      249 MOVE                             R25 R5
      250 CALL                             R25 0 1
      251 SETTABLEKS                       R25 R24 K33 ["LayoutOrder"]
      253 CALL                             R22 2 1
      254 SETTABLEKS                       R22 R21 K43 ["Detail"]
      256 CALL                             R18 3 1
      257 SETTABLEKS                       R18 R17 K36 ["Title"]
      259 CALL                             R14 3 -1
      260 CLOSEUPVALS                      R1
      261 RETURN                           R14 -1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAssistantMultipleChatPersistence is not enabled!"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 DUPTABLE                         R1 K6 [{"targetFile", "startLine", "endLine"}]
        9 GETTABLEKS                       R2 R0 K3 ["targetFile"]
       11 SETTABLEKS                       R2 R1 K3 ["targetFile"]
       13 GETTABLEKS                       R2 R0 K4 ["startLine"]
       15 SETTABLEKS                       R2 R1 K4 ["startLine"]
       17 GETTABLEKS                       R2 R0 K5 ["endLine"]
       19 SETTABLEKS                       R2 R1 K5 ["endLine"]
       21 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        4 LOADK                            R4 K0 ["FFlagAssistantMultipleChatPersistence is not enabled!"]
        5 GETIMPORT                        R2 K2 [assert]
        7 CALL                             R2 2 0
        8 DUPTABLE                         R2 K7 [{"type", "targetFile", "startLine", "endLine"}]
        9 LOADK                            R3 K8 ["ReadFile"]
       10 SETTABLEKS                       R3 R2 K3 ["type"]
       12 GETTABLEKS                       R4 R0 K4 ["targetFile"]
       14 ORK                              R3 R4 K9 ["UNKNOWN_FILE"]
       15 SETTABLEKS                       R3 R2 K4 ["targetFile"]
       17 GETTABLEKS                       R3 R0 K5 ["startLine"]
       19 SETTABLEKS                       R3 R2 K5 ["startLine"]
       21 GETTABLEKS                       R3 R0 K6 ["endLine"]
       23 SETTABLEKS                       R3 R2 K6 ["endLine"]
       25 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Guest"]
       11 GETTABLEKS                       R2 R2 K7 ["Environment"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Parent"]
       32 GETTABLEKS                       R5 R5 K11 ["ReactUtils"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K12 ["Components"]
       39 GETTABLEKS                       R6 R6 K13 ["Contexts"]
       41 GETTABLEKS                       R6 R6 K14 ["Actions"]
       43 GETTABLEKS                       R6 R6 K15 ["ReadFileActionsContext"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K16 ["Util"]
       50 GETTABLEKS                       R7 R7 K17 ["Serializer"]
       52 GETTABLEKS                       R7 R7 K18 ["SerializerTypes"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K12 ["Components"]
       59 GETTABLEKS                       R8 R8 K19 ["ShimmerGradient"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K16 ["Util"]
       66 GETTABLEKS                       R9 R9 K20 ["TestIds"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R10 R0 K21 ["Resources"]
       73 GETTABLEKS                       R10 R10 K22 ["Localization"]
       75 GETTABLEKS                       R10 R10 K23 ["Translator"]
       77 CALL                             R9 1 1
       78 GETIMPORT                        R10 K5 [require]
       80 GETTABLEKS                       R11 R0 K24 ["Types"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K5 [require]
       85 GETTABLEKS                       R12 R0 K16 ["Util"]
       87 GETTABLEKS                       R12 R12 K25 ["WidgetUtils"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K5 [require]
       92 GETTABLEKS                       R13 R0 K26 ["Flags"]
       94 GETTABLEKS                       R13 R13 K27 ["FFlagAssistantMultipleChatPersistence"]
       96 CALL                             R12 1 1
       97 GETIMPORT                        R13 K5 [require]
       99 GETTABLEKS                       R14 R0 K26 ["Flags"]
      101 GETTABLEKS                       R14 R14 K28 ["FFlagAssistantSplitToolsAndWidgets"]
      103 CALL                             R13 1 1
      104 GETTABLEKS                       R14 R2 K29 ["Text"]
      106 GETTABLEKS                       R15 R2 K30 ["View"]
      108 GETTABLEKS                       R16 R4 K31 ["createNextOrder"]
      110 GETTABLEKS                       R17 R3 K32 ["createElement"]
      112 DUPTABLE                         R18 K34 [{"openScript"}]
      113 LOADK                            R19 K35 ["ReadFileTool_openScript"]
      114 SETTABLEKS                       R19 R18 K33 ["openScript"]
      116 DUPCLOSURE                       R19 K36 [PROTO_0]
      117 DUPCLOSURE                       R20 K37 [PROTO_1]
      118 DUPCLOSURE                       R21 K38 [PROTO_6]
      119 CAPTURE                          VAL R13
      120 CAPTURE                          VAL R11
      121 CAPTURE                          VAL R3
      122 CAPTURE                          VAL R5
      123 CAPTURE                          VAL R16
      124 CAPTURE                          VAL R1
      125 CAPTURE                          VAL R9
      126 CAPTURE                          VAL R18
      127 CAPTURE                          VAL R17
      128 CAPTURE                          VAL R15
      129 CAPTURE                          VAL R8
      130 CAPTURE                          VAL R14
      131 CAPTURE                          VAL R7
      132 DUPTABLE                         R22 K41 [{"toMeta", "fromMeta"}]
      133 DUPCLOSURE                       R23 K42 [PROTO_7]
      134 CAPTURE                          VAL R12
      135 SETTABLEKS                       R23 R22 K39 ["toMeta"]
      137 DUPCLOSURE                       R23 K43 [PROTO_8]
      138 CAPTURE                          VAL R12
      139 SETTABLEKS                       R23 R22 K40 ["fromMeta"]
      141 DUPTABLE                         R23 K48 [{"Type", "ContentWidget", "Serialization", "NETWORK_KEYS"}]
      142 LOADK                            R24 K49 ["ReadFile"]
      143 SETTABLEKS                       R24 R23 K44 ["Type"]
      145 GETTABLEKS                       R24 R3 K50 ["memo"]
      147 MOVE                             R25 R21
      148 CALL                             R24 1 1
      149 SETTABLEKS                       R24 R23 K45 ["ContentWidget"]
      151 MOVE                             R25 R13
      152 CALL                             R25 0 1
      153 JUMPIFNOT                        R25 ; [+2]
      154 LOADNIL                          R24
      155 JUMP                             ; [+1]
      156 MOVE                             R24 R22
      157 SETTABLEKS                       R24 R23 K46 ["Serialization"]
      159 SETTABLEKS                       R18 R23 K47 ["NETWORK_KEYS"]
      161 RETURN                           R23 1
