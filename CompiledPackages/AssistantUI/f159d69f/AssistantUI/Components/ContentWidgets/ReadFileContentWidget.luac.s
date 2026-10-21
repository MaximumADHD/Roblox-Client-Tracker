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
        4 JUMPIFNOTEQ                      R0 R1 ; [+7]
        6 LOADK                            R2 K1 [" L%*"]
        7 MOVE                             R4 R0
        8 NAMECALL                         R2 R2 K2 ["format"]
       10 CALL                             R2 2 1
       11 RETURN                           R2 1
       12 LOADK                            R2 K3 [" L%*-%*"]
       13 MOVE                             R4 R0
       14 MOVE                             R5 R1
       15 NAMECALL                         R2 R2 K2 ["format"]
       17 CALL                             R2 3 1
       18 RETURN                           R2 1

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
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETUPVAL                         R0 0
        3 JUMPIFNOTEQKS                    R0 K0 [""] ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R0 1
        7 JUMPIF                           R0 ; [+1]
        8 RETURN                           R0 0
        9 GETIMPORT                        R0 K3 [task.spawn]
       11 NEWCLOSURE                       R1 P0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          UPVAL U3
       16 CALL                             R0 1 0
       17 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["toolUse"]
        2 JUMPIFNOT                        R2 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["toolUse"]
        5 GETTABLEKS                       R1 R1 K1 ["input"]
        7 JUMP                             ; [+1]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R3 R1 K3 ["target_file"]
       11 ORK                              R2 R3 K2 [""]
       12 GETTABLEKS                       R3 R1 K4 ["start_line_one_indexed"]
       14 GETTABLEKS                       R4 R1 K5 ["end_line_one_indexed_inclusive"]
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R5 R5 K6 ["useContext"]
       19 GETUPVAL                         R6 2
       20 GETTABLEKS                       R6 R6 K7 ["Context"]
       22 CALL                             R5 1 1
       23 GETUPVAL                         R6 3
       24 CALL                             R6 0 1
       25 GETUPVAL                         R7 4
       26 GETTABLEKS                       R7 R7 K8 ["get"]
       28 CALL                             R7 0 1
       29 LOADK                            R11 K9 ["."]
       30 NAMECALL                         R9 R2 K10 ["split"]
       32 CALL                             R9 2 1
       33 LENGTH                           R11 R9
       34 GETTABLE                         R10 R9 R11
       35 OR                               R8 R10 R2
       36 GETTABLEKS                       R10 R0 K11 ["toolResult"]
       38 JUMPIFNOTEQKNIL                  R10 ; [+2]
       40 LOADB                            R9 0 +1
       41 LOADB                            R9 1
       42 MOVE                             R10 R9
       43 JUMPIFNOT                        R10 ; [+4]
       44 JUMPIFNOTEQKS                    R2 K2 [""] ; [+2]
       46 LOADB                            R10 0 +1
       47 LOADB                            R10 1
       48 GETUPVAL                         R11 1
       49 GETTABLEKS                       R11 R11 K12 ["useMemo"]
       51 DUPCLOSURE                       R12 K13 [PROTO_2]
       52 CAPTURE                          UPVAL U5
       53 NEWTABLE                         R13 0 1
       55 GETUPVAL                         R14 5
       56 GETTABLEKS                       R14 R14 K14 ["locale"]
       58 SETLIST                          R13 R14 1 [1]
       60 CALL                             R11 2 1
       61 LOADNIL                          R12
       62 LOADNIL                          R13
       63 JUMPIFNOTEQKS                    R8 K2 [""] ; [+9]
       65 JUMPIFNOT                        R9 ; [+3]
       66 GETTABLEKS                       R12 R11 K15 ["Complete"]
       68 JUMP                             ; [+2]
       69 GETTABLEKS                       R12 R11 K16 ["Pending"]
       71 LOADK                            R13 K2 [""]
       72 JUMP                             ; [+40]
       73 JUMPIFNOT                        R9 ; [+11]
       74 GETUPVAL                         R14 5
       75 LOADK                            R16 K17 ["ReadFile"]
       76 LOADK                            R17 K18 ["Read"]
       77 DUPTABLE                         R18 K20 [{"file"}]
       78 SETTABLEKS                       R8 R18 K19 ["file"]
       80 NAMECALL                         R14 R14 K21 ["getText"]
       82 CALL                             R14 4 1
       83 MOVE                             R12 R14
       84 JUMP                             ; [+10]
       85 GETUPVAL                         R14 5
       86 LOADK                            R16 K17 ["ReadFile"]
       87 LOADK                            R17 K22 ["Reading"]
       88 DUPTABLE                         R18 K20 [{"file"}]
       89 SETTABLEKS                       R8 R18 K19 ["file"]
       91 NAMECALL                         R14 R14 K21 ["getText"]
       93 CALL                             R14 4 1
       94 MOVE                             R12 R14
       95 JUMPIF                           R3 ; [+2]
       96 LOADK                            R13 K2 [""]
       97 JUMP                             ; [+15]
       98 JUMPIFNOT                        R4 ; [+2]
       99 JUMPIFNOTEQ                      R3 R4 ; [+7]
      101 LOADK                            R13 K23 [" L%*"]
      102 MOVE                             R15 R3
      103 NAMECALL                         R13 R13 K24 ["format"]
      105 CALL                             R13 2 1
      106 JUMP                             ; [+6]
      107 LOADK                            R13 K25 [" L%*-%*"]
      108 MOVE                             R15 R3
      109 MOVE                             R16 R4
      110 NAMECALL                         R13 R13 K24 ["format"]
      112 CALL                             R13 3 1
      113 GETUPVAL                         R14 1
      114 GETTABLEKS                       R14 R14 K26 ["useCallback"]
      116 NEWCLOSURE                       R15 P1
      117 CAPTURE                          VAL R2
      118 CAPTURE                          VAL R5
      119 CAPTURE                          VAL R3
      120 CAPTURE                          VAL R4
      121 NEWTABLE                         R16 0 5
      123 MOVE                             R17 R7
      124 MOVE                             R18 R5
      125 MOVE                             R19 R2
      126 MOVE                             R20 R3
      127 MOVE                             R21 R4
      128 SETLIST                          R16 R17 5 [1]
      130 CALL                             R14 2 1
      131 GETUPVAL                         R15 6
      132 GETUPVAL                         R16 7
      133 DUPTABLE                         R17 K30 [{["tag"] = "col gap-small size-full-0 auto-xy", ["LayoutOrder"]}]
      134 GETTABLEKS                       R18 R0 K29 ["LayoutOrder"]
      136 SETTABLEKS                       R18 R17 K29 ["LayoutOrder"]
      138 DUPTABLE                         R18 K32 [{"Title"}]
      139 GETUPVAL                         R19 6
      140 GETUPVAL                         R20 7
      141 DUPTABLE                         R21 K36 [{["tag"] = "row align-y-center size-full-600 padding-x-small radius-medium", ["LayoutOrder"], ["onActivated"], ["testId"]}]
      142 MOVE                             R22 R6
      143 CALL                             R22 0 1
      144 SETTABLEKS                       R22 R21 K29 ["LayoutOrder"]
      146 JUMPIFNOT                        R10 ; [+2]
      147 MOVE                             R22 R14
      148 JUMP                             ; [+1]
      149 LOADNIL                          R22
      150 SETTABLEKS                       R22 R21 K34 ["onActivated"]
      152 JUMPIFNOT                        R10 ; [+6]
      153 GETUPVAL                         R22 8
      154 GETTABLEKS                       R22 R22 K17 ["ReadFile"]
      156 GETTABLEKS                       R22 R22 K31 ["Title"]
      158 JUMP                             ; [+1]
      159 LOADNIL                          R22
      160 SETTABLEKS                       R22 R21 K35 ["testId"]
      162 DUPTABLE                         R22 K39 [{"Action", "Detail"}]
      163 GETUPVAL                         R23 6
      164 GETUPVAL                         R24 9
      165 DUPTABLE                         R25 K42 [{["tag"] = "auto-xy text-caption-medium content-muted", ["Text"], ["LayoutOrder"]}]
      166 SETTABLEKS                       R12 R25 K41 ["Text"]
      168 MOVE                             R26 R6
      169 CALL                             R26 0 1
      170 SETTABLEKS                       R26 R25 K29 ["LayoutOrder"]
      172 DUPTABLE                         R26 K44 [{"Shimmer"}]
      173 GETTABLEKS                       R28 R0 K11 ["toolResult"]
      175 NOT                              R27 R28
      176 JUMPIFNOT                        R27 ; [+3]
      177 GETUPVAL                         R27 6
      178 GETUPVAL                         R28 10
      179 CALL                             R27 1 1
      180 SETTABLEKS                       R27 R26 K43 ["Shimmer"]
      182 CALL                             R23 3 1
      183 SETTABLEKS                       R23 R22 K37 ["Action"]
      185 LOADB                            R23 0
      186 JUMPIFEQKS                       R13 K2 [""] ; [+11]
      188 GETUPVAL                         R23 6
      189 GETUPVAL                         R24 9
      190 DUPTABLE                         R25 K46 [{["tag"] = "auto-xy text-caption-medium text-truncate-end content-muted", ["Text"], ["LayoutOrder"]}]
      191 SETTABLEKS                       R13 R25 K41 ["Text"]
      193 MOVE                             R26 R6
      194 CALL                             R26 0 1
      195 SETTABLEKS                       R26 R25 K29 ["LayoutOrder"]
      197 CALL                             R23 2 1
      198 SETTABLEKS                       R23 R22 K38 ["Detail"]
      200 CALL                             R19 3 1
      201 SETTABLEKS                       R19 R18 K31 ["Title"]
      203 CALL                             R15 3 -1
      204 RETURN                           R15 -1

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
       48 GETTABLEKS                       R7 R0 K12 ["Components"]
       50 GETTABLEKS                       R7 R7 K16 ["ShimmerGradient"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K17 ["Util"]
       57 GETTABLEKS                       R8 R8 K18 ["TestIds"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K19 ["Resources"]
       64 GETTABLEKS                       R9 R9 K20 ["Localization"]
       66 GETTABLEKS                       R9 R9 K21 ["Translator"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R10 R0 K22 ["Types"]
       73 CALL                             R9 1 1
       74 GETTABLEKS                       R10 R2 K23 ["Text"]
       76 GETTABLEKS                       R11 R2 K24 ["View"]
       78 GETTABLEKS                       R12 R4 K25 ["createNextOrder"]
       80 GETTABLEKS                       R13 R3 K26 ["createElement"]
       82 NEWTABLE                         R14 0 0
       84 DUPCLOSURE                       R15 K27 [PROTO_0]
       85 DUPCLOSURE                       R16 K28 [PROTO_1]
       86 DUPCLOSURE                       R17 K29 [PROTO_5]
       87 CAPTURE                          VAL R14
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R5
       90 CAPTURE                          VAL R12
       91 CAPTURE                          VAL R1
       92 CAPTURE                          VAL R8
       93 CAPTURE                          VAL R13
       94 CAPTURE                          VAL R11
       95 CAPTURE                          VAL R7
       96 CAPTURE                          VAL R10
       97 CAPTURE                          VAL R6
       98 DUPTABLE                         R18 K33 [{["Type"] = "ReadFile", ["ContentWidget"]}]
       99 GETTABLEKS                       R19 R3 K34 ["memo"]
      101 MOVE                             R20 R17
      102 CALL                             R19 1 1
      103 SETTABLEKS                       R19 R18 K32 ["ContentWidget"]
      105 RETURN                           R18 1
