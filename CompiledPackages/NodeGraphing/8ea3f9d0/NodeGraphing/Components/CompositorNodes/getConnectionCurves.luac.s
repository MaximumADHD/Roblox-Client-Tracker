PROTO_0:
        0 NEWTABLE                         R3 0 0
        2 NEWTABLE                         R4 0 0
        4 JUMPIFNOT                        R0 ; [+162]
        5 GETTABLEKS                       R5 R0 K0 ["Inputs"]
        7 JUMPIFNOT                        R5 ; [+159]
        8 GETTABLEKS                       R5 R0 K0 ["Inputs"]
       10 LOADNIL                          R6
       11 LOADNIL                          R7
       12 FORGPREP                         R5
       13 GETTABLEKS                       R10 R9 K1 ["InputName"]
       15 LOADB                            R11 1
       16 SETTABLE                         R11 R4 R10
       17 LOADNIL                          R10
       18 LOADNIL                          R11
       19 GETUPVAL                         R12 0
       20 CALL                             R12 0 1
       21 JUMPIFNOT                        R12 ; [+25]
       22 GETTABLEKS                       R12 R9 K2 ["DynamicPinIndex"]
       24 JUMPIFEQKNIL                     R12 ; [+22]
       26 GETTABLEKS                       R12 R1 K3 ["inputPinInputIds"]
       28 JUMPIFNOT                        R12 ; [+18]
       29 GETTABLEKS                       R12 R1 K4 ["inputConnectionsByInputId"]
       31 JUMPIFNOT                        R12 ; [+15]
       32 GETTABLEKS                       R13 R1 K3 ["inputPinInputIds"]
       34 GETTABLEKS                       R14 R9 K2 ["DynamicPinIndex"]
       36 GETTABLE                         R12 R13 R14
       37 JUMPIFEQKNIL                     R12 ; [+5]
       39 GETTABLEKS                       R14 R1 K4 ["inputConnectionsByInputId"]
       41 GETTABLE                         R13 R14 R12
       42 JUMPIF                           R13 ; [+1]
       43 LOADNIL                          R13
       44 MOVE                             R10 R13
       45 MOVE                             R11 R12
       46 JUMP                             ; [+5]
       47 GETTABLEKS                       R12 R1 K5 ["inputPinToConnectionMap"]
       49 GETTABLEKS                       R13 R9 K1 ["InputName"]
       51 GETTABLE                         R10 R12 R13
       52 JUMPIFNOT                        R10 ; [+58]
       53 JUMPIFNOT                        R2 ; [+7]
       54 GETTABLEKS                       R13 R10 K6 ["outputNodeId"]
       56 JUMPIFNOT                        R13 ; [+4]
       57 GETTABLEKS                       R13 R10 K6 ["outputNodeId"]
       59 GETTABLE                         R12 R2 R13
       60 JUMP                             ; [+1]
       61 LOADNIL                          R12
       62 LOADB                            R13 0
       63 JUMPIFEQKNIL                     R12 ; [+10]
       65 GETTABLEKS                       R14 R12 K7 ["className"]
       67 GETUPVAL                         R15 1
       68 GETTABLEKS                       R15 R15 K8 ["PARAMETER_NODE_CLASSNAME"]
       70 JUMPIFEQ                         R14 R15 ; [+2]
       72 LOADB                            R13 0 +1
       73 LOADB                            R13 1
       74 DUPTABLE                         R16 K17 [{["key"], ["outputPinNodeId"], ["outputPinName"] = "Output", ["inputPinNodeId"], ["inputPinName"], ["inputPinInputId"], ["pinDataType"]}]
       75 LOADK                            R17 K18 ["Connection_%*"]
       76 GETTABLEKS                       R19 R10 K19 ["wireId"]
       78 NAMECALL                         R17 R17 K20 ["format"]
       80 CALL                             R17 2 1
       81 SETTABLEKS                       R17 R16 K9 ["key"]
       83 GETTABLEKS                       R17 R10 K6 ["outputNodeId"]
       85 SETTABLEKS                       R17 R16 K10 ["outputPinNodeId"]
       87 GETTABLEKS                       R17 R1 K21 ["id"]
       89 SETTABLEKS                       R17 R16 K13 ["inputPinNodeId"]
       91 GETTABLEKS                       R17 R9 K1 ["InputName"]
       93 SETTABLEKS                       R17 R16 K14 ["inputPinName"]
       95 SETTABLEKS                       R11 R16 K15 ["inputPinInputId"]
       97 JUMPIFNOT                        R13 ; [+2]
       98 LOADK                            R17 K22 ["Parameter"]
       99 JUMP                             ; [+3]
      100 GETUPVAL                         R17 1
      101 GETTABLEKS                       R17 R17 K23 ["DEFAULT_PIN_DATA_TYPE"]
      103 SETTABLEKS                       R17 R16 K16 ["pinDataType"]
      105 FASTCALL2                        TABLE_INSERT R3 R16 ; [+4]
      107 MOVE                             R15 R3
      108 GETIMPORT                        R14 K26 [table.insert]
      110 CALL                             R14 2 0
      111 GETTABLEKS                       R12 R9 K27 ["Properties"]
      113 JUMPIFNOT                        R12 ; [+51]
      114 GETTABLEKS                       R12 R9 K27 ["Properties"]
      116 LOADNIL                          R13
      117 LOADNIL                          R14
      118 FORGPREP                         R12
      119 GETTABLEKS                       R18 R1 K28 ["inputLabelPinToConnectionMap"]
      121 GETTABLEKS                       R19 R16 K29 ["Name"]
      123 GETTABLE                         R17 R18 R19
      124 MOVE                             R18 R17
      125 JUMPIFNOT                        R18 ; [+3]
      126 GETTABLEKS                       R19 R9 K1 ["InputName"]
      128 GETTABLE                         R18 R17 R19
      129 JUMPIFNOT                        R18 ; [+33]
      130 DUPTABLE                         R21 K31 [{["key"], ["outputPinNodeId"], ["outputPinName"] = "Output", ["inputPinNodeId"], ["inputPinName"], ["inputPinDynamicIndex"], ["pinDataType"] = "Parameter"}]
      131 LOADK                            R22 K32 ["Connection_%*_inputProperty_%*"]
      132 GETTABLEKS                       R24 R18 K19 ["wireId"]
      134 GETTABLEKS                       R25 R16 K29 ["Name"]
      136 NAMECALL                         R22 R22 K20 ["format"]
      138 CALL                             R22 3 1
      139 SETTABLEKS                       R22 R21 K9 ["key"]
      141 GETTABLEKS                       R22 R18 K6 ["outputNodeId"]
      143 SETTABLEKS                       R22 R21 K10 ["outputPinNodeId"]
      145 GETTABLEKS                       R22 R1 K21 ["id"]
      147 SETTABLEKS                       R22 R21 K13 ["inputPinNodeId"]
      149 GETTABLEKS                       R22 R16 K29 ["Name"]
      151 SETTABLEKS                       R22 R21 K14 ["inputPinName"]
      153 GETTABLEKS                       R22 R9 K33 ["InputIndex"]
      155 SETTABLEKS                       R22 R21 K30 ["inputPinDynamicIndex"]
      157 FASTCALL2                        TABLE_INSERT R3 R21 ; [+4]
      159 MOVE                             R20 R3
      160 GETIMPORT                        R19 K26 [table.insert]
      162 CALL                             R19 2 0
      163 FORGLOOP                         R12 2 ; [-45]
      165 FORGLOOP                         R5 2 ; [-153]
      167 JUMPIFNOT                        R0 ; [+54]
      168 GETTABLEKS                       R5 R0 K27 ["Properties"]
      170 JUMPIFNOT                        R5 ; [+51]
      171 GETTABLEKS                       R5 R0 K27 ["Properties"]
      173 LOADNIL                          R6
      174 LOADNIL                          R7
      175 FORGPREP                         R5
      176 GETTABLEKS                       R10 R9 K29 ["Name"]
      178 LOADB                            R11 1
      179 SETTABLE                         R11 R4 R10
      180 GETTABLEKS                       R11 R1 K5 ["inputPinToConnectionMap"]
      182 GETTABLEKS                       R12 R9 K29 ["Name"]
      184 GETTABLE                         R10 R11 R12
      185 JUMPIFNOT                        R10 ; [+34]
      186 DUPTABLE                         R13 K34 [{["key"], ["outputPinNodeId"], ["outputPinName"], ["inputPinNodeId"], ["inputPinName"], ["pinDataType"] = "Parameter"}]
      187 LOADK                            R14 K35 ["Connection_%*_property_%*"]
      188 GETTABLEKS                       R16 R10 K19 ["wireId"]
      190 GETTABLEKS                       R17 R9 K29 ["Name"]
      192 NAMECALL                         R14 R14 K20 ["format"]
      194 CALL                             R14 3 1
      195 SETTABLEKS                       R14 R13 K9 ["key"]
      197 GETTABLEKS                       R14 R10 K6 ["outputNodeId"]
      199 SETTABLEKS                       R14 R13 K10 ["outputPinNodeId"]
      201 GETTABLEKS                       R15 R10 K36 ["outputNodePinId"]
      203 ORK                              R14 R15 K12 ["Output"]
      204 SETTABLEKS                       R14 R13 K11 ["outputPinName"]
      206 GETTABLEKS                       R14 R1 K21 ["id"]
      208 SETTABLEKS                       R14 R13 K13 ["inputPinNodeId"]
      210 GETTABLEKS                       R14 R9 K29 ["Name"]
      212 SETTABLEKS                       R14 R13 K14 ["inputPinName"]
      214 FASTCALL2                        TABLE_INSERT R3 R13 ; [+4]
      216 MOVE                             R12 R3
      217 GETIMPORT                        R11 K26 [table.insert]
      219 CALL                             R11 2 0
      220 FORGLOOP                         R5 2 ; [-45]
      222 GETTABLEKS                       R5 R1 K5 ["inputPinToConnectionMap"]
      224 LOADNIL                          R6
      225 LOADNIL                          R7
      226 FORGPREP                         R5
      227 JUMPIFEQKNIL                     R9 ; [+34]
      229 GETTABLE                         R10 R4 R8
      230 JUMPIF                           R10 ; [+31]
      231 DUPTABLE                         R12 K34 [{["key"], ["outputPinNodeId"], ["outputPinName"], ["inputPinNodeId"], ["inputPinName"], ["pinDataType"] = "Parameter"}]
      232 LOADK                            R13 K37 ["Connection_%*_unmapped_%*"]
      233 GETTABLEKS                       R15 R9 K19 ["wireId"]
      235 MOVE                             R16 R8
      236 NAMECALL                         R13 R13 K20 ["format"]
      238 CALL                             R13 3 1
      239 SETTABLEKS                       R13 R12 K9 ["key"]
      241 GETTABLEKS                       R13 R9 K6 ["outputNodeId"]
      243 SETTABLEKS                       R13 R12 K10 ["outputPinNodeId"]
      245 GETTABLEKS                       R14 R9 K36 ["outputNodePinId"]
      247 ORK                              R13 R14 K12 ["Output"]
      248 SETTABLEKS                       R13 R12 K11 ["outputPinName"]
      250 GETTABLEKS                       R13 R1 K21 ["id"]
      252 SETTABLEKS                       R13 R12 K13 ["inputPinNodeId"]
      254 SETTABLEKS                       R8 R12 K14 ["inputPinName"]
      256 FASTCALL2                        TABLE_INSERT R3 R12 ; [+4]
      258 MOVE                             R11 R3
      259 GETIMPORT                        R10 K26 [table.insert]
      261 CALL                             R10 2 0
      262 FORGLOOP                         R5 2 ; [-36]
      264 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Constants"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Components"]
       16 GETTABLEKS                       R3 R3 K8 ["NodeLibraryContext"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["NodeViewTypes"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K5 [require]
       26 GETTABLEKS                       R5 R0 K10 ["Flags"]
       28 GETTABLEKS                       R5 R5 K11 ["getFFlagAnimGraphUIInputIds"]
       30 CALL                             R4 1 1
       31 DUPCLOSURE                       R5 K12 [PROTO_0]
       32 CAPTURE                          VAL R4
       33 CAPTURE                          VAL R1
       34 RETURN                           R5 1
