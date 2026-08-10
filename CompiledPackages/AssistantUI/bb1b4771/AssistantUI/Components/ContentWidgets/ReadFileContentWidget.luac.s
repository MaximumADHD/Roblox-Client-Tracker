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
        7 JUMPIFNOT                        R5 ; [+26]
        8 GETTABLEKS                       R6 R0 K1 ["toolUse"]
       10 JUMPIFNOT                        R6 ; [+5]
       11 GETTABLEKS                       R5 R0 K1 ["toolUse"]
       13 GETTABLEKS                       R5 R5 K2 ["input"]
       15 JUMP                             ; [+2]
       16 NEWTABLE                         R5 0 0
       18 GETTABLEKS                       R6 R5 K4 ["target_file"]
       20 ORK                              R1 R6 K3 [""]
       21 GETTABLEKS                       R2 R5 K5 ["start_line_one_indexed"]
       23 GETTABLEKS                       R3 R5 K6 ["end_line_one_indexed_inclusive"]
       25 GETUPVAL                         R6 1
       26 GETTABLEKS                       R6 R6 K7 ["useContext"]
       28 GETUPVAL                         R7 2
       29 GETTABLEKS                       R7 R7 K8 ["Context"]
       31 CALL                             R6 1 1
       32 MOVE                             R4 R6
       33 JUMP                             ; [+6]
       34 GETTABLEKS                       R1 R0 K9 ["targetFile"]
       36 GETTABLEKS                       R2 R0 K10 ["startLine"]
       38 GETTABLEKS                       R3 R0 K11 ["endLine"]
       40 GETUPVAL                         R5 3
       41 CALL                             R5 0 1
       42 GETUPVAL                         R6 4
       43 GETTABLEKS                       R6 R6 K12 ["get"]
       45 CALL                             R6 0 1
       46 MOVE                             R8 R1
       47 LOADK                            R11 K13 ["."]
       48 NAMECALL                         R9 R8 K14 ["split"]
       50 CALL                             R9 2 1
       51 LENGTH                           R11 R9
       52 GETTABLE                         R10 R9 R11
       53 OR                               R7 R10 R8
       54 GETTABLEKS                       R9 R0 K15 ["toolResult"]
       56 JUMPIFNOTEQKNIL                  R9 ; [+2]
       58 LOADB                            R8 0 +1
       59 LOADB                            R8 1
       60 MOVE                             R9 R8
       61 JUMPIFNOT                        R9 ; [+4]
       62 JUMPIFNOTEQKS                    R1 K3 [""] ; [+2]
       64 LOADB                            R9 0 +1
       65 LOADB                            R9 1
       66 GETUPVAL                         R10 1
       67 GETTABLEKS                       R10 R10 K16 ["useMemo"]
       69 DUPCLOSURE                       R11 K17 [PROTO_2]
       70 CAPTURE                          UPVAL U5
       71 NEWTABLE                         R12 0 1
       73 GETUPVAL                         R13 5
       74 GETTABLEKS                       R13 R13 K18 ["locale"]
       76 SETLIST                          R12 R13 1 [1]
       78 CALL                             R10 2 1
       79 LOADNIL                          R11
       80 LOADNIL                          R12
       81 JUMPIFNOTEQKS                    R7 K3 [""] ; [+9]
       83 JUMPIFNOT                        R8 ; [+3]
       84 GETTABLEKS                       R11 R10 K19 ["Complete"]
       86 JUMP                             ; [+2]
       87 GETTABLEKS                       R11 R10 K20 ["Pending"]
       89 LOADK                            R12 K3 [""]
       90 JUMP                             ; [+44]
       91 JUMPIFNOT                        R8 ; [+11]
       92 GETUPVAL                         R13 5
       93 LOADK                            R15 K21 ["ReadFile"]
       94 LOADK                            R16 K22 ["Read"]
       95 DUPTABLE                         R17 K24 [{"file"}]
       96 SETTABLEKS                       R7 R17 K23 ["file"]
       98 NAMECALL                         R13 R13 K25 ["getText"]
      100 CALL                             R13 4 1
      101 MOVE                             R11 R13
      102 JUMP                             ; [+10]
      103 GETUPVAL                         R13 5
      104 LOADK                            R15 K21 ["ReadFile"]
      105 LOADK                            R16 K26 ["Reading"]
      106 DUPTABLE                         R17 K24 [{"file"}]
      107 SETTABLEKS                       R7 R17 K23 ["file"]
      109 NAMECALL                         R13 R13 K25 ["getText"]
      111 CALL                             R13 4 1
      112 MOVE                             R11 R13
      113 MOVE                             R13 R2
      114 MOVE                             R14 R3
      115 JUMPIF                           R13 ; [+2]
      116 LOADK                            R12 K3 [""]
      117 JUMP                             ; [+17]
      118 JUMPIFNOT                        R14 ; [+2]
      119 JUMPIFNOTEQ                      R13 R14 ; [+8]
      121 LOADK                            R15 K27 [" L%*"]
      122 MOVE                             R17 R13
      123 NAMECALL                         R15 R15 K28 ["format"]
      125 CALL                             R15 2 1
      126 MOVE                             R12 R15
      127 JUMP                             ; [+7]
      128 LOADK                            R15 K29 [" L%*-%*"]
      129 MOVE                             R17 R13
      130 MOVE                             R18 R14
      131 NAMECALL                         R15 R15 K28 ["format"]
      133 CALL                             R15 3 1
      134 MOVE                             R12 R15
      135 GETUPVAL                         R13 1
      136 GETTABLEKS                       R13 R13 K30 ["useCallback"]
      138 NEWCLOSURE                       R14 P1
      139 CAPTURE                          REF R1
      140 CAPTURE                          UPVAL U0
      141 CAPTURE                          REF R4
      142 CAPTURE                          REF R2
      143 CAPTURE                          REF R3
      144 CAPTURE                          VAL R6
      145 CAPTURE                          UPVAL U6
      146 NEWTABLE                         R15 0 5
      148 MOVE                             R16 R6
      149 MOVE                             R17 R4
      150 MOVE                             R18 R1
      151 MOVE                             R19 R2
      152 MOVE                             R20 R3
      153 SETLIST                          R15 R16 5 [1]
      155 CALL                             R13 2 1
      156 GETUPVAL                         R14 7
      157 GETUPVAL                         R15 8
      158 DUPTABLE                         R16 K34 [{["tag"] = "col gap-small size-full-0 auto-xy", ["LayoutOrder"]}]
      159 GETTABLEKS                       R17 R0 K33 ["LayoutOrder"]
      161 SETTABLEKS                       R17 R16 K33 ["LayoutOrder"]
      163 DUPTABLE                         R17 K36 [{"Title"}]
      164 GETUPVAL                         R18 7
      165 GETUPVAL                         R19 8
      166 DUPTABLE                         R20 K40 [{["tag"] = "row align-y-center size-full-600 padding-x-small radius-medium", ["LayoutOrder"], ["onActivated"], ["testId"]}]
      167 MOVE                             R21 R5
      168 CALL                             R21 0 1
      169 SETTABLEKS                       R21 R20 K33 ["LayoutOrder"]
      171 JUMPIFNOT                        R9 ; [+2]
      172 MOVE                             R21 R13
      173 JUMP                             ; [+1]
      174 LOADNIL                          R21
      175 SETTABLEKS                       R21 R20 K38 ["onActivated"]
      177 JUMPIFNOT                        R9 ; [+6]
      178 GETUPVAL                         R21 9
      179 GETTABLEKS                       R21 R21 K21 ["ReadFile"]
      181 GETTABLEKS                       R21 R21 K35 ["Title"]
      183 JUMP                             ; [+1]
      184 LOADNIL                          R21
      185 SETTABLEKS                       R21 R20 K39 ["testId"]
      187 DUPTABLE                         R21 K43 [{"Action", "Detail"}]
      188 GETUPVAL                         R22 7
      189 GETUPVAL                         R23 10
      190 DUPTABLE                         R24 K46 [{["tag"] = "auto-xy text-caption-medium content-muted", ["Text"], ["LayoutOrder"]}]
      191 SETTABLEKS                       R11 R24 K45 ["Text"]
      193 MOVE                             R25 R5
      194 CALL                             R25 0 1
      195 SETTABLEKS                       R25 R24 K33 ["LayoutOrder"]
      197 DUPTABLE                         R25 K48 [{"Shimmer"}]
      198 GETTABLEKS                       R27 R0 K15 ["toolResult"]
      200 NOT                              R26 R27
      201 JUMPIFNOT                        R26 ; [+3]
      202 GETUPVAL                         R26 7
      203 GETUPVAL                         R27 11
      204 CALL                             R26 1 1
      205 SETTABLEKS                       R26 R25 K47 ["Shimmer"]
      207 CALL                             R22 3 1
      208 SETTABLEKS                       R22 R21 K41 ["Action"]
      210 LOADB                            R22 0
      211 JUMPIFEQKS                       R12 K3 [""] ; [+11]
      213 GETUPVAL                         R22 7
      214 GETUPVAL                         R23 10
      215 DUPTABLE                         R24 K50 [{["tag"] = "auto-xy text-caption-medium text-truncate-end content-muted", ["Text"], ["LayoutOrder"]}]
      216 SETTABLEKS                       R12 R24 K45 ["Text"]
      218 MOVE                             R25 R5
      219 CALL                             R25 0 1
      220 SETTABLEKS                       R25 R24 K33 ["LayoutOrder"]
      222 CALL                             R22 2 1
      223 SETTABLEKS                       R22 R21 K42 ["Detail"]
      225 CALL                             R18 3 1
      226 SETTABLEKS                       R18 R17 K35 ["Title"]
      228 CALL                             R14 3 -1
      229 CLOSEUPVALS                      R1
      230 RETURN                           R14 -1

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
       88 GETTABLEKS                       R12 R3 K26 ["Text"]
       90 GETTABLEKS                       R13 R3 K27 ["View"]
       92 GETTABLEKS                       R14 R5 K28 ["createNextOrder"]
       94 GETTABLEKS                       R15 R4 K29 ["createElement"]
       96 DUPTABLE                         R16 K32 [{["openScript"] = "ReadFileTool_openScript"}]
       97 DUPCLOSURE                       R17 K33 [PROTO_0]
       98 DUPCLOSURE                       R18 K34 [PROTO_1]
       99 DUPCLOSURE                       R19 K35 [PROTO_6]
      100 CAPTURE                          VAL R2
      101 CAPTURE                          VAL R4
      102 CAPTURE                          VAL R6
      103 CAPTURE                          VAL R14
      104 CAPTURE                          VAL R1
      105 CAPTURE                          VAL R10
      106 CAPTURE                          VAL R16
      107 CAPTURE                          VAL R15
      108 CAPTURE                          VAL R13
      109 CAPTURE                          VAL R9
      110 CAPTURE                          VAL R12
      111 CAPTURE                          VAL R8
      112 DUPTABLE                         R20 K38 [{"toMeta", "fromMeta"}]
      113 DUPCLOSURE                       R21 K39 [PROTO_7]
      114 SETTABLEKS                       R21 R20 K36 ["toMeta"]
      116 DUPCLOSURE                       R21 K40 [PROTO_8]
      117 SETTABLEKS                       R21 R20 K37 ["fromMeta"]
      119 DUPTABLE                         R21 K46 [{["Type"] = "ReadFile", ["ContentWidget"], ["Serialization"], ["NETWORK_KEYS"]}]
      120 GETTABLEKS                       R22 R4 K47 ["memo"]
      122 MOVE                             R23 R19
      123 CALL                             R22 1 1
      124 SETTABLEKS                       R22 R21 K43 ["ContentWidget"]
      126 GETTABLEKS                       R23 R2 K48 ["FFlagAssistantSplitToolsAndWidgets"]
      128 JUMPIFNOT                        R23 ; [+2]
      129 LOADNIL                          R22
      130 JUMP                             ; [+1]
      131 MOVE                             R22 R20
      132 SETTABLEKS                       R22 R21 K44 ["Serialization"]
      134 SETTABLEKS                       R16 R21 K45 ["NETWORK_KEYS"]
      136 RETURN                           R21 1
