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
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["openScript"]
        4 LOADNIL                          R3
        5 DUPTABLE                         R4 K4 [{"path", "startLine", "endLine"}]
        6 GETUPVAL                         R6 2
        7 GETTABLEKS                       R5 R6 K5 ["targetFile"]
        9 SETTABLEKS                       R5 R4 K1 ["path"]
       11 GETUPVAL                         R6 2
       12 GETTABLEKS                       R5 R6 K2 ["startLine"]
       14 SETTABLEKS                       R5 R4 K2 ["startLine"]
       16 GETUPVAL                         R6 2
       17 GETTABLEKS                       R5 R6 K3 ["endLine"]
       19 SETTABLEKS                       R5 R4 K3 ["endLine"]
       21 NAMECALL                         R0 R0 K6 ["InvokeHostAsync"]
       23 CALL                             R0 4 0
       24 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["targetFile"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["targetFile"]
        7 JUMPIFNOTEQKS                    R0 K1 [""] ; [+2]
        9 RETURN                           R0 0
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R0 R1 K2 ["getNetworking"]
       13 CALL                             R0 0 1
       14 JUMPIF                           R0 ; [+1]
       15 RETURN                           R0 0
       16 GETIMPORT                        R1 K5 [task.spawn]
       18 NEWCLOSURE                       R2 P0
       19 CAPTURE                          VAL R0
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          UPVAL U0
       22 CALL                             R1 1 0
       23 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["get"]
        5 CALL                             R2 0 1
        6 GETTABLEKS                       R4 R0 K1 ["targetFile"]
        8 LOADK                            R7 K2 ["."]
        9 NAMECALL                         R5 R4 K3 ["split"]
       11 CALL                             R5 2 1
       12 LENGTH                           R7 R5
       13 GETTABLE                         R6 R5 R7
       14 OR                               R3 R6 R4
       15 GETTABLEKS                       R5 R0 K4 ["generating"]
       17 NOT                              R4 R5
       18 JUMPIFNOT                        R4 ; [+6]
       19 GETTABLEKS                       R5 R0 K5 ["toolResult"]
       21 JUMPIFNOTEQKNIL                  R5 ; [+2]
       23 LOADB                            R4 0 +1
       24 LOADB                            R4 1
       25 MOVE                             R5 R4
       26 JUMPIFNOT                        R5 ; [+6]
       27 GETTABLEKS                       R6 R0 K1 ["targetFile"]
       29 JUMPIFNOTEQKS                    R6 K6 [""] ; [+2]
       31 LOADB                            R5 0 +1
       32 LOADB                            R5 1
       33 GETUPVAL                         R7 2
       34 GETTABLEKS                       R6 R7 K7 ["useMemo"]
       36 DUPCLOSURE                       R7 K8 [PROTO_2]
       37 CAPTURE                          UPVAL U3
       38 NEWTABLE                         R8 0 1
       40 GETUPVAL                         R10 3
       41 GETTABLEKS                       R9 R10 K9 ["locale"]
       43 SETLIST                          R8 R9 1 [1]
       45 CALL                             R6 2 1
       46 LOADNIL                          R7
       47 LOADNIL                          R8
       48 JUMPIFNOTEQKS                    R3 K6 [""] ; [+9]
       50 JUMPIFNOT                        R4 ; [+3]
       51 GETTABLEKS                       R7 R6 K10 ["Complete"]
       53 JUMP                             ; [+2]
       54 GETTABLEKS                       R7 R6 K11 ["Pending"]
       56 LOADK                            R8 K6 [""]
       57 JUMP                             ; [+46]
       58 JUMPIFNOT                        R4 ; [+11]
       59 GETUPVAL                         R9 3
       60 LOADK                            R11 K12 ["ReadFile"]
       61 LOADK                            R12 K13 ["Read"]
       62 DUPTABLE                         R13 K15 [{"file"}]
       63 SETTABLEKS                       R3 R13 K14 ["file"]
       65 NAMECALL                         R9 R9 K16 ["getText"]
       67 CALL                             R9 4 1
       68 MOVE                             R7 R9
       69 JUMP                             ; [+10]
       70 GETUPVAL                         R9 3
       71 LOADK                            R11 K12 ["ReadFile"]
       72 LOADK                            R12 K17 ["Reading"]
       73 DUPTABLE                         R13 K15 [{"file"}]
       74 SETTABLEKS                       R3 R13 K14 ["file"]
       76 NAMECALL                         R9 R9 K16 ["getText"]
       78 CALL                             R9 4 1
       79 MOVE                             R7 R9
       80 GETTABLEKS                       R9 R0 K18 ["startLine"]
       82 GETTABLEKS                       R10 R0 K19 ["endLine"]
       84 JUMPIF                           R9 ; [+2]
       85 LOADK                            R8 K6 [""]
       86 JUMP                             ; [+17]
       87 JUMPIFNOT                        R10 ; [+2]
       88 JUMPIFNOTEQ                      R9 R10 ; [+8]
       90 LOADK                            R11 K20 [" L%*"]
       91 MOVE                             R13 R9
       92 NAMECALL                         R11 R11 K21 ["format"]
       94 CALL                             R11 2 1
       95 MOVE                             R8 R11
       96 JUMP                             ; [+7]
       97 LOADK                            R11 K22 [" L%*-%*"]
       98 MOVE                             R13 R9
       99 MOVE                             R14 R10
      100 NAMECALL                         R11 R11 K21 ["format"]
      102 CALL                             R11 3 1
      103 MOVE                             R8 R11
      104 GETUPVAL                         R10 2
      105 GETTABLEKS                       R9 R10 K23 ["useCallback"]
      107 NEWCLOSURE                       R10 P1
      108 CAPTURE                          VAL R0
      109 CAPTURE                          VAL R2
      110 CAPTURE                          UPVAL U4
      111 NEWTABLE                         R11 0 4
      113 MOVE                             R12 R2
      114 GETTABLEKS                       R13 R0 K1 ["targetFile"]
      116 GETTABLEKS                       R14 R0 K18 ["startLine"]
      118 GETTABLEKS                       R15 R0 K19 ["endLine"]
      120 SETLIST                          R11 R12 4 [1]
      122 CALL                             R9 2 1
      123 GETUPVAL                         R10 5
      124 GETUPVAL                         R11 6
      125 DUPTABLE                         R12 K26 [{"tag", "LayoutOrder"}]
      126 LOADK                            R13 K27 ["col size-full-0 auto-xy gap-small"]
      127 SETTABLEKS                       R13 R12 K24 ["tag"]
      129 GETTABLEKS                       R13 R0 K25 ["LayoutOrder"]
      131 SETTABLEKS                       R13 R12 K25 ["LayoutOrder"]
      133 DUPTABLE                         R13 K29 [{"Title"}]
      134 GETUPVAL                         R14 5
      135 GETUPVAL                         R15 6
      136 DUPTABLE                         R16 K32 [{"tag", "LayoutOrder", "onActivated", "testId"}]
      137 LOADK                            R17 K33 ["row size-full-600 radius-medium align-y-center padding-x-small"]
      138 SETTABLEKS                       R17 R16 K24 ["tag"]
      140 MOVE                             R17 R1
      141 CALL                             R17 0 1
      142 SETTABLEKS                       R17 R16 K25 ["LayoutOrder"]
      144 JUMPIFNOT                        R5 ; [+2]
      145 MOVE                             R17 R9
      146 JUMP                             ; [+1]
      147 LOADNIL                          R17
      148 SETTABLEKS                       R17 R16 K30 ["onActivated"]
      150 JUMPIFNOT                        R5 ; [+6]
      151 GETUPVAL                         R19 7
      152 GETTABLEKS                       R18 R19 K12 ["ReadFile"]
      154 GETTABLEKS                       R17 R18 K28 ["Title"]
      156 JUMP                             ; [+1]
      157 LOADNIL                          R17
      158 SETTABLEKS                       R17 R16 K31 ["testId"]
      160 DUPTABLE                         R17 K36 [{"Action", "Detail"}]
      161 GETUPVAL                         R18 5
      162 GETUPVAL                         R19 8
      163 DUPTABLE                         R20 K38 [{"tag", "Text", "LayoutOrder"}]
      164 LOADK                            R21 K39 ["auto-xy text-caption-medium content-muted"]
      165 SETTABLEKS                       R21 R20 K24 ["tag"]
      167 SETTABLEKS                       R7 R20 K37 ["Text"]
      169 MOVE                             R21 R1
      170 CALL                             R21 0 1
      171 SETTABLEKS                       R21 R20 K25 ["LayoutOrder"]
      173 DUPTABLE                         R21 K41 [{"Shimmer"}]
      174 GETTABLEKS                       R22 R0 K4 ["generating"]
      176 JUMPIFNOT                        R22 ; [+3]
      177 GETUPVAL                         R22 5
      178 GETUPVAL                         R23 9
      179 CALL                             R22 1 1
      180 SETTABLEKS                       R22 R21 K40 ["Shimmer"]
      182 CALL                             R18 3 1
      183 SETTABLEKS                       R18 R17 K34 ["Action"]
      185 LOADB                            R18 0
      186 JUMPIFEQKS                       R8 K6 [""] ; [+14]
      188 GETUPVAL                         R18 5
      189 GETUPVAL                         R19 8
      190 DUPTABLE                         R20 K38 [{"tag", "Text", "LayoutOrder"}]
      191 LOADK                            R21 K42 ["auto-xy text-caption-medium content-muted text-truncate-end"]
      192 SETTABLEKS                       R21 R20 K24 ["tag"]
      194 SETTABLEKS                       R8 R20 K37 ["Text"]
      196 MOVE                             R21 R1
      197 CALL                             R21 0 1
      198 SETTABLEKS                       R21 R20 K25 ["LayoutOrder"]
      200 CALL                             R18 2 1
      201 SETTABLEKS                       R18 R17 K35 ["Detail"]
      203 CALL                             R14 3 1
      204 SETTABLEKS                       R14 R13 K28 ["Title"]
      206 CALL                             R10 3 -1
      207 RETURN                           R10 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAssistantMultipleChatPersistence is not enabled!"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 DUPTABLE                         R1 K7 [{"type", "targetFile", "startLine", "endLine"}]
        9 GETTABLEKS                       R2 R0 K3 ["type"]
       11 SETTABLEKS                       R2 R1 K3 ["type"]
       13 GETTABLEKS                       R2 R0 K4 ["targetFile"]
       15 SETTABLEKS                       R2 R1 K4 ["targetFile"]
       17 GETTABLEKS                       R2 R0 K5 ["startLine"]
       19 SETTABLEKS                       R2 R1 K5 ["startLine"]
       21 GETTABLEKS                       R2 R0 K6 ["endLine"]
       23 SETTABLEKS                       R2 R1 K6 ["endLine"]
       25 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAssistantMultipleChatPersistence is not enabled!"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 DUPTABLE                         R1 K7 [{"type", "targetFile", "startLine", "endLine"}]
        9 GETTABLEKS                       R2 R0 K3 ["type"]
       11 SETTABLEKS                       R2 R1 K3 ["type"]
       13 GETTABLEKS                       R2 R0 K4 ["targetFile"]
       15 SETTABLEKS                       R2 R1 K4 ["targetFile"]
       17 GETTABLEKS                       R2 R0 K5 ["startLine"]
       19 SETTABLEKS                       R2 R1 K5 ["startLine"]
       21 GETTABLEKS                       R2 R0 K6 ["endLine"]
       23 SETTABLEKS                       R2 R1 K6 ["endLine"]
       25 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Guest"]
       11 GETTABLEKS                       R2 R3 K7 ["Environment"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R4 K9 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R5 K10 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Parent"]
       32 GETTABLEKS                       R5 R6 K11 ["ReactUtils"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K12 ["Components"]
       39 GETTABLEKS                       R6 R7 K13 ["ShimmerGradient"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R8 R0 K14 ["Util"]
       46 GETTABLEKS                       R7 R8 K15 ["TestIds"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R10 R0 K16 ["Resources"]
       53 GETTABLEKS                       R9 R10 K17 ["Localization"]
       55 GETTABLEKS                       R8 R9 K18 ["Translator"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K19 ["Types"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R11 R0 K20 ["Flags"]
       67 GETTABLEKS                       R10 R11 K21 ["FFlagAssistantMultipleChatPersistence"]
       69 CALL                             R9 1 1
       70 GETTABLEKS                       R10 R2 K22 ["Text"]
       72 GETTABLEKS                       R11 R2 K23 ["View"]
       74 GETTABLEKS                       R12 R4 K24 ["createNextOrder"]
       76 GETTABLEKS                       R13 R3 K25 ["createElement"]
       78 DUPTABLE                         R14 K27 [{"openScript"}]
       79 LOADK                            R15 K28 ["ReadFileTool_openScript"]
       80 SETTABLEKS                       R15 R14 K26 ["openScript"]
       82 DUPCLOSURE                       R15 K29 [PROTO_0]
       83 DUPCLOSURE                       R16 K30 [PROTO_1]
       84 DUPCLOSURE                       R17 K31 [PROTO_5]
       85 CAPTURE                          VAL R12
       86 CAPTURE                          VAL R1
       87 CAPTURE                          VAL R3
       88 CAPTURE                          VAL R7
       89 CAPTURE                          VAL R14
       90 CAPTURE                          VAL R13
       91 CAPTURE                          VAL R11
       92 CAPTURE                          VAL R6
       93 CAPTURE                          VAL R10
       94 CAPTURE                          VAL R5
       95 DUPCLOSURE                       R18 K32 [PROTO_6]
       96 CAPTURE                          VAL R9
       97 DUPCLOSURE                       R19 K33 [PROTO_7]
       98 CAPTURE                          VAL R9
       99 DUPTABLE                         R20 K38 [{"Type", "ContentWidget", "Serialization", "NETWORK_KEYS"}]
      100 LOADK                            R21 K39 ["ReadFile"]
      101 SETTABLEKS                       R21 R20 K34 ["Type"]
      103 GETTABLEKS                       R21 R3 K40 ["memo"]
      105 MOVE                             R22 R17
      106 CALL                             R21 1 1
      107 SETTABLEKS                       R21 R20 K35 ["ContentWidget"]
      109 DUPTABLE                         R21 K43 [{"serialize", "deserialize"}]
      110 SETTABLEKS                       R18 R21 K41 ["serialize"]
      112 SETTABLEKS                       R19 R21 K42 ["deserialize"]
      114 SETTABLEKS                       R21 R20 K36 ["Serialization"]
      116 SETTABLEKS                       R14 R20 K37 ["NETWORK_KEYS"]
      118 RETURN                           R20 1
