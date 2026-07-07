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
        7 GETTABLEKS                       R0 R0 K1 ["FFlagAssistantSplitToolsAndWidgets"]
        9 JUMPIFNOT                        R0 ; [+12]
       10 GETUPVAL                         R0 2
       11 JUMPIF                           R0 ; [+1]
       12 RETURN                           R0 0
       13 GETIMPORT                        R0 K4 [task.spawn]
       15 NEWCLOSURE                       R1 P0
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          UPVAL U0
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          UPVAL U4
       20 CALL                             R0 1 0
       21 RETURN                           R0 0
       22 GETUPVAL                         R0 5
       23 GETTABLEKS                       R0 R0 K5 ["getNetworking"]
       25 CALL                             R0 0 1
       26 JUMPIF                           R0 ; [+1]
       27 RETURN                           R0 0
       28 GETIMPORT                        R1 K4 [task.spawn]
       30 NEWCLOSURE                       R2 P1
       31 CAPTURE                          VAL R0
       32 CAPTURE                          UPVAL U6
       33 CAPTURE                          UPVAL U0
       34 CAPTURE                          UPVAL U3
       35 CAPTURE                          UPVAL U4
       36 CALL                             R1 1 0
       37 RETURN                           R0 0

PROTO_6:
        0 LOADNIL                          R1
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R5 R5 K0 ["FFlagAssistantSplitToolsAndWidgets"]
        7 JUMPIFNOT                        R5 ; [+43]
        8 GETTABLEKS                       R6 R0 K1 ["toolUse"]
       10 JUMPIFNOT                        R6 ; [+5]
       11 GETTABLEKS                       R5 R0 K1 ["toolUse"]
       13 GETTABLEKS                       R5 R5 K2 ["input"]
       15 JUMP                             ; [+2]
       16 NEWTABLE                         R5 0 0
       18 GETUPVAL                         R6 1
       19 GETTABLEKS                       R6 R6 K3 ["withDefault"]
       21 GETTABLEKS                       R7 R5 K4 ["target_file"]
       23 LOADK                            R8 K5 [""]
       24 CALL                             R6 2 1
       25 MOVE                             R1 R6
       26 GETUPVAL                         R6 1
       27 GETTABLEKS                       R6 R6 K3 ["withDefault"]
       29 GETTABLEKS                       R7 R5 K6 ["start_line_one_indexed"]
       31 LOADNIL                          R8
       32 CALL                             R6 2 1
       33 MOVE                             R2 R6
       34 GETUPVAL                         R6 1
       35 GETTABLEKS                       R6 R6 K3 ["withDefault"]
       37 GETTABLEKS                       R7 R5 K7 ["end_line_one_indexed_inclusive"]
       39 LOADNIL                          R8
       40 CALL                             R6 2 1
       41 MOVE                             R3 R6
       42 GETUPVAL                         R6 2
       43 GETTABLEKS                       R6 R6 K8 ["useContext"]
       45 GETUPVAL                         R7 3
       46 GETTABLEKS                       R7 R7 K9 ["Context"]
       48 CALL                             R6 1 1
       49 MOVE                             R4 R6
       50 JUMP                             ; [+6]
       51 GETTABLEKS                       R1 R0 K10 ["targetFile"]
       53 GETTABLEKS                       R2 R0 K11 ["startLine"]
       55 GETTABLEKS                       R3 R0 K12 ["endLine"]
       57 GETUPVAL                         R5 4
       58 CALL                             R5 0 1
       59 GETUPVAL                         R6 5
       60 GETTABLEKS                       R6 R6 K13 ["get"]
       62 CALL                             R6 0 1
       63 MOVE                             R8 R1
       64 LOADK                            R11 K14 ["."]
       65 NAMECALL                         R9 R8 K15 ["split"]
       67 CALL                             R9 2 1
       68 LENGTH                           R11 R9
       69 GETTABLE                         R10 R9 R11
       70 OR                               R7 R10 R8
       71 GETTABLEKS                       R9 R0 K16 ["toolResult"]
       73 JUMPIFNOTEQKNIL                  R9 ; [+2]
       75 LOADB                            R8 0 +1
       76 LOADB                            R8 1
       77 MOVE                             R9 R8
       78 JUMPIFNOT                        R9 ; [+4]
       79 JUMPIFNOTEQKS                    R1 K5 [""] ; [+2]
       81 LOADB                            R9 0 +1
       82 LOADB                            R9 1
       83 GETUPVAL                         R10 2
       84 GETTABLEKS                       R10 R10 K17 ["useMemo"]
       86 DUPCLOSURE                       R11 K18 [PROTO_2]
       87 CAPTURE                          UPVAL U6
       88 NEWTABLE                         R12 0 1
       90 GETUPVAL                         R13 6
       91 GETTABLEKS                       R13 R13 K19 ["locale"]
       93 SETLIST                          R12 R13 1 [1]
       95 CALL                             R10 2 1
       96 LOADNIL                          R11
       97 LOADNIL                          R12
       98 JUMPIFNOTEQKS                    R7 K5 [""] ; [+9]
      100 JUMPIFNOT                        R8 ; [+3]
      101 GETTABLEKS                       R11 R10 K20 ["Complete"]
      103 JUMP                             ; [+2]
      104 GETTABLEKS                       R11 R10 K21 ["Pending"]
      106 LOADK                            R12 K5 [""]
      107 JUMP                             ; [+44]
      108 JUMPIFNOT                        R8 ; [+11]
      109 GETUPVAL                         R13 6
      110 LOADK                            R15 K22 ["ReadFile"]
      111 LOADK                            R16 K23 ["Read"]
      112 DUPTABLE                         R17 K25 [{"file"}]
      113 SETTABLEKS                       R7 R17 K24 ["file"]
      115 NAMECALL                         R13 R13 K26 ["getText"]
      117 CALL                             R13 4 1
      118 MOVE                             R11 R13
      119 JUMP                             ; [+10]
      120 GETUPVAL                         R13 6
      121 LOADK                            R15 K22 ["ReadFile"]
      122 LOADK                            R16 K27 ["Reading"]
      123 DUPTABLE                         R17 K25 [{"file"}]
      124 SETTABLEKS                       R7 R17 K24 ["file"]
      126 NAMECALL                         R13 R13 K26 ["getText"]
      128 CALL                             R13 4 1
      129 MOVE                             R11 R13
      130 MOVE                             R13 R2
      131 MOVE                             R14 R3
      132 JUMPIF                           R13 ; [+2]
      133 LOADK                            R12 K5 [""]
      134 JUMP                             ; [+17]
      135 JUMPIFNOT                        R14 ; [+2]
      136 JUMPIFNOTEQ                      R13 R14 ; [+8]
      138 LOADK                            R15 K28 [" L%*"]
      139 MOVE                             R17 R13
      140 NAMECALL                         R15 R15 K29 ["format"]
      142 CALL                             R15 2 1
      143 MOVE                             R12 R15
      144 JUMP                             ; [+7]
      145 LOADK                            R15 K30 [" L%*-%*"]
      146 MOVE                             R17 R13
      147 MOVE                             R18 R14
      148 NAMECALL                         R15 R15 K29 ["format"]
      150 CALL                             R15 3 1
      151 MOVE                             R12 R15
      152 GETUPVAL                         R13 2
      153 GETTABLEKS                       R13 R13 K31 ["useCallback"]
      155 NEWCLOSURE                       R14 P1
      156 CAPTURE                          REF R1
      157 CAPTURE                          UPVAL U0
      158 CAPTURE                          REF R4
      159 CAPTURE                          REF R2
      160 CAPTURE                          REF R3
      161 CAPTURE                          VAL R6
      162 CAPTURE                          UPVAL U7
      163 NEWTABLE                         R15 0 5
      165 MOVE                             R16 R6
      166 MOVE                             R17 R4
      167 MOVE                             R18 R1
      168 MOVE                             R19 R2
      169 MOVE                             R20 R3
      170 SETLIST                          R15 R16 5 [1]
      172 CALL                             R13 2 1
      173 GETUPVAL                         R14 8
      174 GETUPVAL                         R15 9
      175 DUPTABLE                         R16 K35 [{["tag"] = "col gap-small size-full-0 auto-xy", ["LayoutOrder"]}]
      176 GETTABLEKS                       R17 R0 K34 ["LayoutOrder"]
      178 SETTABLEKS                       R17 R16 K34 ["LayoutOrder"]
      180 DUPTABLE                         R17 K37 [{"Title"}]
      181 GETUPVAL                         R18 8
      182 GETUPVAL                         R19 9
      183 DUPTABLE                         R20 K41 [{["tag"] = "row align-y-center size-full-600 padding-x-small radius-medium", ["LayoutOrder"], ["onActivated"], ["testId"]}]
      184 MOVE                             R21 R5
      185 CALL                             R21 0 1
      186 SETTABLEKS                       R21 R20 K34 ["LayoutOrder"]
      188 JUMPIFNOT                        R9 ; [+2]
      189 MOVE                             R21 R13
      190 JUMP                             ; [+1]
      191 LOADNIL                          R21
      192 SETTABLEKS                       R21 R20 K39 ["onActivated"]
      194 JUMPIFNOT                        R9 ; [+6]
      195 GETUPVAL                         R21 10
      196 GETTABLEKS                       R21 R21 K22 ["ReadFile"]
      198 GETTABLEKS                       R21 R21 K36 ["Title"]
      200 JUMP                             ; [+1]
      201 LOADNIL                          R21
      202 SETTABLEKS                       R21 R20 K40 ["testId"]
      204 DUPTABLE                         R21 K44 [{"Action", "Detail"}]
      205 GETUPVAL                         R22 8
      206 GETUPVAL                         R23 11
      207 DUPTABLE                         R24 K47 [{["tag"] = "auto-xy text-caption-medium content-muted", ["Text"], ["LayoutOrder"]}]
      208 SETTABLEKS                       R11 R24 K46 ["Text"]
      210 MOVE                             R25 R5
      211 CALL                             R25 0 1
      212 SETTABLEKS                       R25 R24 K34 ["LayoutOrder"]
      214 DUPTABLE                         R25 K49 [{"Shimmer"}]
      215 GETTABLEKS                       R27 R0 K16 ["toolResult"]
      217 NOT                              R26 R27
      218 JUMPIFNOT                        R26 ; [+3]
      219 GETUPVAL                         R26 8
      220 GETUPVAL                         R27 12
      221 CALL                             R26 1 1
      222 SETTABLEKS                       R26 R25 K48 ["Shimmer"]
      224 CALL                             R22 3 1
      225 SETTABLEKS                       R22 R21 K42 ["Action"]
      227 LOADB                            R22 0
      228 JUMPIFEQKS                       R12 K5 [""] ; [+11]
      230 GETUPVAL                         R22 8
      231 GETUPVAL                         R23 11
      232 DUPTABLE                         R24 K51 [{["tag"] = "auto-xy text-caption-medium text-truncate-end content-muted", ["Text"], ["LayoutOrder"]}]
      233 SETTABLEKS                       R12 R24 K46 ["Text"]
      235 MOVE                             R25 R5
      236 CALL                             R25 0 1
      237 SETTABLEKS                       R25 R24 K34 ["LayoutOrder"]
      239 CALL                             R22 2 1
      240 SETTABLEKS                       R22 R21 K43 ["Detail"]
      242 CALL                             R18 3 1
      243 SETTABLEKS                       R18 R17 K36 ["Title"]
      245 CALL                             R14 3 -1
      246 CLOSEUPVALS                      R1
      247 RETURN                           R14 -1

PROTO_7:
        0 DUPTABLE                         R1 K3 [{"targetFile", "startLine", "endLine"}]
        1 GETTABLEKS                       R2 R0 K0 ["targetFile"]
        3 SETTABLEKS                       R2 R1 K0 ["targetFile"]
        5 GETTABLEKS                       R2 R0 K1 ["startLine"]
        7 SETTABLEKS                       R2 R1 K1 ["startLine"]
        9 GETTABLEKS                       R2 R0 K2 ["endLine"]
       11 SETTABLEKS                       R2 R1 K2 ["endLine"]
       13 RETURN                           R1 1

PROTO_8:
        0 DUPTABLE                         R2 K5 [{[1] = "ReadFile", ["targetFile"], ["startLine"], ["endLine"]}]
        1 GETTABLEKS                       R4 R0 K2 ["targetFile"]
        3 ORK                              R3 R4 K6 ["UNKNOWN_FILE"]
        4 SETTABLEKS                       R3 R2 K2 ["targetFile"]
        6 GETTABLEKS                       R3 R0 K3 ["startLine"]
        8 SETTABLEKS                       R3 R2 K3 ["startLine"]
       10 GETTABLEKS                       R3 R0 K4 ["endLine"]
       12 SETTABLEKS                       R3 R2 K4 ["endLine"]
       14 RETURN                           R2 1

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
       16 GETTABLEKS                       R3 R0 K8 ["Flags"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Parent"]
       23 GETTABLEKS                       R4 R4 K10 ["Foundation"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K9 ["Parent"]
       30 GETTABLEKS                       R5 R5 K11 ["React"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K9 ["Parent"]
       37 GETTABLEKS                       R6 R6 K12 ["ReactUtils"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K13 ["Components"]
       44 GETTABLEKS                       R7 R7 K14 ["Contexts"]
       46 GETTABLEKS                       R7 R7 K15 ["Actions"]
       48 GETTABLEKS                       R7 R7 K16 ["ReadFileActionsContext"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K17 ["Util"]
       55 GETTABLEKS                       R8 R8 K18 ["Serializer"]
       57 GETTABLEKS                       R8 R8 K19 ["SerializerTypes"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K13 ["Components"]
       64 GETTABLEKS                       R9 R9 K20 ["ShimmerGradient"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R10 R0 K17 ["Util"]
       71 GETTABLEKS                       R10 R10 K21 ["TestIds"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R11 R0 K22 ["Resources"]
       78 GETTABLEKS                       R11 R11 K23 ["Localization"]
       80 GETTABLEKS                       R11 R11 K24 ["Translator"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K5 [require]
       85 GETTABLEKS                       R12 R0 K25 ["Types"]
       87 CALL                             R11 1 1
       88 GETIMPORT                        R12 K5 [require]
       90 GETTABLEKS                       R13 R0 K17 ["Util"]
       92 GETTABLEKS                       R13 R13 K26 ["WidgetUtils"]
       94 CALL                             R12 1 1
       95 GETTABLEKS                       R13 R3 K27 ["Text"]
       97 GETTABLEKS                       R14 R3 K28 ["View"]
       99 GETTABLEKS                       R15 R5 K29 ["createNextOrder"]
      101 GETTABLEKS                       R16 R4 K30 ["createElement"]
      103 DUPTABLE                         R17 K33 [{["openScript"] = "ReadFileTool_openScript"}]
      104 DUPCLOSURE                       R18 K34 [PROTO_0]
      105 DUPCLOSURE                       R19 K35 [PROTO_1]
      106 DUPCLOSURE                       R20 K36 [PROTO_6]
      107 CAPTURE                          VAL R2
      108 CAPTURE                          VAL R12
      109 CAPTURE                          VAL R4
      110 CAPTURE                          VAL R6
      111 CAPTURE                          VAL R15
      112 CAPTURE                          VAL R1
      113 CAPTURE                          VAL R10
      114 CAPTURE                          VAL R17
      115 CAPTURE                          VAL R16
      116 CAPTURE                          VAL R14
      117 CAPTURE                          VAL R9
      118 CAPTURE                          VAL R13
      119 CAPTURE                          VAL R8
      120 DUPTABLE                         R21 K39 [{"toMeta", "fromMeta"}]
      121 DUPCLOSURE                       R22 K40 [PROTO_7]
      122 SETTABLEKS                       R22 R21 K37 ["toMeta"]
      124 DUPCLOSURE                       R22 K41 [PROTO_8]
      125 SETTABLEKS                       R22 R21 K38 ["fromMeta"]
      127 DUPTABLE                         R22 K47 [{["Type"] = "ReadFile", ["ContentWidget"], ["Serialization"], ["NETWORK_KEYS"]}]
      128 GETTABLEKS                       R23 R4 K48 ["memo"]
      130 MOVE                             R24 R20
      131 CALL                             R23 1 1
      132 SETTABLEKS                       R23 R22 K44 ["ContentWidget"]
      134 GETTABLEKS                       R24 R2 K49 ["FFlagAssistantSplitToolsAndWidgets"]
      136 JUMPIFNOT                        R24 ; [+2]
      137 LOADNIL                          R23
      138 JUMP                             ; [+1]
      139 MOVE                             R23 R21
      140 SETTABLEKS                       R23 R22 K45 ["Serialization"]
      142 SETTABLEKS                       R17 R22 K46 ["NETWORK_KEYS"]
      144 RETURN                           R22 1
