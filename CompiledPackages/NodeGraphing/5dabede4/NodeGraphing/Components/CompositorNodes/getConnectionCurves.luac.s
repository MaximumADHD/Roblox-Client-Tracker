PROTO_0:
        0 NEWTABLE                         R3 0 0
        2 NEWTABLE                         R4 0 0
        4 JUMPIFNOT                        R0 ; [+132]
        5 GETTABLEKS                       R5 R0 K0 ["Inputs"]
        7 JUMPIFNOT                        R5 ; [+129]
        8 GETTABLEKS                       R5 R0 K0 ["Inputs"]
       10 LOADNIL                          R6
       11 LOADNIL                          R7
       12 FORGPREP                         R5
       13 GETTABLEKS                       R10 R9 K1 ["InputName"]
       15 LOADB                            R11 1
       16 SETTABLE                         R11 R4 R10
       17 GETTABLEKS                       R11 R1 K2 ["inputPinToConnectionMap"]
       19 GETTABLEKS                       R12 R9 K1 ["InputName"]
       21 GETTABLE                         R10 R11 R12
       22 JUMPIFNOT                        R10 ; [+57]
       23 JUMPIFNOT                        R2 ; [+7]
       24 GETTABLEKS                       R12 R10 K3 ["outputNodeId"]
       26 JUMPIFNOT                        R12 ; [+4]
       27 GETTABLEKS                       R12 R10 K3 ["outputNodeId"]
       29 GETTABLE                         R11 R2 R12
       30 JUMP                             ; [+1]
       31 LOADNIL                          R11
       32 LOADB                            R12 0
       33 JUMPIFEQKNIL                     R11 ; [+10]
       35 GETTABLEKS                       R13 R11 K4 ["className"]
       37 GETUPVAL                         R14 0
       38 GETTABLEKS                       R14 R14 K5 ["PARAMETER_NODE_CLASSNAME"]
       40 JUMPIFEQ                         R13 R14 ; [+2]
       42 LOADB                            R12 0 +1
       43 LOADB                            R12 1
       44 DUPTABLE                         R15 K13 [{["key"], ["outputPinNodeId"], ["outputPinName"] = "Output", ["inputPinNodeId"], ["inputPinName"], ["pinDataType"]}]
       45 LOADK                            R17 K14 ["Connection_%*"]
       46 GETTABLEKS                       R19 R10 K15 ["wireId"]
       48 NAMECALL                         R17 R17 K16 ["format"]
       50 CALL                             R17 2 1
       51 MOVE                             R16 R17
       52 SETTABLEKS                       R16 R15 K6 ["key"]
       54 GETTABLEKS                       R16 R10 K3 ["outputNodeId"]
       56 SETTABLEKS                       R16 R15 K7 ["outputPinNodeId"]
       58 GETTABLEKS                       R16 R1 K17 ["id"]
       60 SETTABLEKS                       R16 R15 K10 ["inputPinNodeId"]
       62 GETTABLEKS                       R16 R9 K1 ["InputName"]
       64 SETTABLEKS                       R16 R15 K11 ["inputPinName"]
       66 JUMPIFNOT                        R12 ; [+2]
       67 LOADK                            R16 K18 ["Parameter"]
       68 JUMP                             ; [+3]
       69 GETUPVAL                         R16 0
       70 GETTABLEKS                       R16 R16 K19 ["DEFAULT_PIN_DATA_TYPE"]
       72 SETTABLEKS                       R16 R15 K12 ["pinDataType"]
       74 FASTCALL2                        TABLE_INSERT R3 R15 ; [+4]
       76 MOVE                             R14 R3
       77 GETIMPORT                        R13 K22 [table.insert]
       79 CALL                             R13 2 0
       80 GETTABLEKS                       R11 R9 K23 ["Properties"]
       82 JUMPIFNOT                        R11 ; [+52]
       83 GETTABLEKS                       R11 R9 K23 ["Properties"]
       85 LOADNIL                          R12
       86 LOADNIL                          R13
       87 FORGPREP                         R11
       88 GETTABLEKS                       R17 R1 K24 ["inputLabelPinToConnectionMap"]
       90 GETTABLEKS                       R18 R15 K25 ["Name"]
       92 GETTABLE                         R16 R17 R18
       93 MOVE                             R17 R16
       94 JUMPIFNOT                        R17 ; [+3]
       95 GETTABLEKS                       R18 R9 K1 ["InputName"]
       97 GETTABLE                         R17 R16 R18
       98 JUMPIFNOT                        R17 ; [+34]
       99 DUPTABLE                         R20 K27 [{["key"], ["outputPinNodeId"], ["outputPinName"] = "Output", ["inputPinNodeId"], ["inputPinName"], ["inputPinDynamicIndex"], ["pinDataType"] = "Parameter"}]
      100 LOADK                            R22 K28 ["Connection_%*_inputProperty_%*"]
      101 GETTABLEKS                       R24 R17 K15 ["wireId"]
      103 GETTABLEKS                       R25 R15 K25 ["Name"]
      105 NAMECALL                         R22 R22 K16 ["format"]
      107 CALL                             R22 3 1
      108 MOVE                             R21 R22
      109 SETTABLEKS                       R21 R20 K6 ["key"]
      111 GETTABLEKS                       R21 R17 K3 ["outputNodeId"]
      113 SETTABLEKS                       R21 R20 K7 ["outputPinNodeId"]
      115 GETTABLEKS                       R21 R1 K17 ["id"]
      117 SETTABLEKS                       R21 R20 K10 ["inputPinNodeId"]
      119 GETTABLEKS                       R21 R15 K25 ["Name"]
      121 SETTABLEKS                       R21 R20 K11 ["inputPinName"]
      123 GETTABLEKS                       R21 R9 K29 ["InputIndex"]
      125 SETTABLEKS                       R21 R20 K26 ["inputPinDynamicIndex"]
      127 FASTCALL2                        TABLE_INSERT R3 R20 ; [+4]
      129 MOVE                             R19 R3
      130 GETIMPORT                        R18 K22 [table.insert]
      132 CALL                             R18 2 0
      133 FORGLOOP                         R11 2 ; [-46]
      135 FORGLOOP                         R5 2 ; [-123]
      137 JUMPIFNOT                        R0 ; [+55]
      138 GETTABLEKS                       R5 R0 K23 ["Properties"]
      140 JUMPIFNOT                        R5 ; [+52]
      141 GETTABLEKS                       R5 R0 K23 ["Properties"]
      143 LOADNIL                          R6
      144 LOADNIL                          R7
      145 FORGPREP                         R5
      146 GETTABLEKS                       R10 R9 K25 ["Name"]
      148 LOADB                            R11 1
      149 SETTABLE                         R11 R4 R10
      150 GETTABLEKS                       R11 R1 K2 ["inputPinToConnectionMap"]
      152 GETTABLEKS                       R12 R9 K25 ["Name"]
      154 GETTABLE                         R10 R11 R12
      155 JUMPIFNOT                        R10 ; [+35]
      156 DUPTABLE                         R13 K30 [{["key"], ["outputPinNodeId"], ["outputPinName"], ["inputPinNodeId"], ["inputPinName"], ["pinDataType"] = "Parameter"}]
      157 LOADK                            R15 K31 ["Connection_%*_property_%*"]
      158 GETTABLEKS                       R17 R10 K15 ["wireId"]
      160 GETTABLEKS                       R18 R9 K25 ["Name"]
      162 NAMECALL                         R15 R15 K16 ["format"]
      164 CALL                             R15 3 1
      165 MOVE                             R14 R15
      166 SETTABLEKS                       R14 R13 K6 ["key"]
      168 GETTABLEKS                       R14 R10 K3 ["outputNodeId"]
      170 SETTABLEKS                       R14 R13 K7 ["outputPinNodeId"]
      172 GETTABLEKS                       R15 R10 K32 ["outputNodePinId"]
      174 ORK                              R14 R15 K9 ["Output"]
      175 SETTABLEKS                       R14 R13 K8 ["outputPinName"]
      177 GETTABLEKS                       R14 R1 K17 ["id"]
      179 SETTABLEKS                       R14 R13 K10 ["inputPinNodeId"]
      181 GETTABLEKS                       R14 R9 K25 ["Name"]
      183 SETTABLEKS                       R14 R13 K11 ["inputPinName"]
      185 FASTCALL2                        TABLE_INSERT R3 R13 ; [+4]
      187 MOVE                             R12 R3
      188 GETIMPORT                        R11 K22 [table.insert]
      190 CALL                             R11 2 0
      191 FORGLOOP                         R5 2 ; [-46]
      193 GETTABLEKS                       R5 R1 K2 ["inputPinToConnectionMap"]
      195 LOADNIL                          R6
      196 LOADNIL                          R7
      197 FORGPREP                         R5
      198 JUMPIFEQKNIL                     R9 ; [+35]
      200 GETTABLE                         R10 R4 R8
      201 JUMPIF                           R10 ; [+32]
      202 DUPTABLE                         R12 K30 [{["key"], ["outputPinNodeId"], ["outputPinName"], ["inputPinNodeId"], ["inputPinName"], ["pinDataType"] = "Parameter"}]
      203 LOADK                            R14 K33 ["Connection_%*_unmapped_%*"]
      204 GETTABLEKS                       R16 R9 K15 ["wireId"]
      206 MOVE                             R17 R8
      207 NAMECALL                         R14 R14 K16 ["format"]
      209 CALL                             R14 3 1
      210 MOVE                             R13 R14
      211 SETTABLEKS                       R13 R12 K6 ["key"]
      213 GETTABLEKS                       R13 R9 K3 ["outputNodeId"]
      215 SETTABLEKS                       R13 R12 K7 ["outputPinNodeId"]
      217 GETTABLEKS                       R14 R9 K32 ["outputNodePinId"]
      219 ORK                              R13 R14 K9 ["Output"]
      220 SETTABLEKS                       R13 R12 K8 ["outputPinName"]
      222 GETTABLEKS                       R13 R1 K17 ["id"]
      224 SETTABLEKS                       R13 R12 K10 ["inputPinNodeId"]
      226 SETTABLEKS                       R8 R12 K11 ["inputPinName"]
      228 FASTCALL2                        TABLE_INSERT R3 R12 ; [+4]
      230 MOVE                             R11 R3
      231 GETIMPORT                        R10 K22 [table.insert]
      233 CALL                             R10 2 0
      234 FORGLOOP                         R5 2 ; [-37]
      236 RETURN                           R3 1

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
       24 DUPCLOSURE                       R4 K10 [PROTO_0]
       25 CAPTURE                          VAL R1
       26 RETURN                           R4 1
