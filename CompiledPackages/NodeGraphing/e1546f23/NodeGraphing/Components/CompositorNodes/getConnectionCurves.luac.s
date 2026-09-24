PROTO_0:
        0 NEWTABLE                         R3 0 0
        2 NEWTABLE                         R4 0 0
        4 JUMPIFNOT                        R0 ; [+130]
        5 GETTABLEKS                       R5 R0 K0 ["Inputs"]
        7 JUMPIFNOT                        R5 ; [+127]
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
       22 JUMPIFNOT                        R10 ; [+56]
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
       45 LOADK                            R16 K14 ["Connection_%*"]
       46 GETTABLEKS                       R18 R10 K15 ["wireId"]
       48 NAMECALL                         R16 R16 K16 ["format"]
       50 CALL                             R16 2 1
       51 SETTABLEKS                       R16 R15 K6 ["key"]
       53 GETTABLEKS                       R16 R10 K3 ["outputNodeId"]
       55 SETTABLEKS                       R16 R15 K7 ["outputPinNodeId"]
       57 GETTABLEKS                       R16 R1 K17 ["id"]
       59 SETTABLEKS                       R16 R15 K10 ["inputPinNodeId"]
       61 GETTABLEKS                       R16 R9 K1 ["InputName"]
       63 SETTABLEKS                       R16 R15 K11 ["inputPinName"]
       65 JUMPIFNOT                        R12 ; [+2]
       66 LOADK                            R16 K18 ["Parameter"]
       67 JUMP                             ; [+3]
       68 GETUPVAL                         R16 0
       69 GETTABLEKS                       R16 R16 K19 ["DEFAULT_PIN_DATA_TYPE"]
       71 SETTABLEKS                       R16 R15 K12 ["pinDataType"]
       73 FASTCALL2                        TABLE_INSERT R3 R15 ; [+4]
       75 MOVE                             R14 R3
       76 GETIMPORT                        R13 K22 [table.insert]
       78 CALL                             R13 2 0
       79 GETTABLEKS                       R11 R9 K23 ["Properties"]
       81 JUMPIFNOT                        R11 ; [+51]
       82 GETTABLEKS                       R11 R9 K23 ["Properties"]
       84 LOADNIL                          R12
       85 LOADNIL                          R13
       86 FORGPREP                         R11
       87 GETTABLEKS                       R17 R1 K24 ["inputLabelPinToConnectionMap"]
       89 GETTABLEKS                       R18 R15 K25 ["Name"]
       91 GETTABLE                         R16 R17 R18
       92 MOVE                             R17 R16
       93 JUMPIFNOT                        R17 ; [+3]
       94 GETTABLEKS                       R18 R9 K1 ["InputName"]
       96 GETTABLE                         R17 R16 R18
       97 JUMPIFNOT                        R17 ; [+33]
       98 DUPTABLE                         R20 K27 [{["key"], ["outputPinNodeId"], ["outputPinName"] = "Output", ["inputPinNodeId"], ["inputPinName"], ["inputPinDynamicIndex"], ["pinDataType"] = "Parameter"}]
       99 LOADK                            R21 K28 ["Connection_%*_inputProperty_%*"]
      100 GETTABLEKS                       R23 R17 K15 ["wireId"]
      102 GETTABLEKS                       R24 R15 K25 ["Name"]
      104 NAMECALL                         R21 R21 K16 ["format"]
      106 CALL                             R21 3 1
      107 SETTABLEKS                       R21 R20 K6 ["key"]
      109 GETTABLEKS                       R21 R17 K3 ["outputNodeId"]
      111 SETTABLEKS                       R21 R20 K7 ["outputPinNodeId"]
      113 GETTABLEKS                       R21 R1 K17 ["id"]
      115 SETTABLEKS                       R21 R20 K10 ["inputPinNodeId"]
      117 GETTABLEKS                       R21 R15 K25 ["Name"]
      119 SETTABLEKS                       R21 R20 K11 ["inputPinName"]
      121 GETTABLEKS                       R21 R9 K29 ["InputIndex"]
      123 SETTABLEKS                       R21 R20 K26 ["inputPinDynamicIndex"]
      125 FASTCALL2                        TABLE_INSERT R3 R20 ; [+4]
      127 MOVE                             R19 R3
      128 GETIMPORT                        R18 K22 [table.insert]
      130 CALL                             R18 2 0
      131 FORGLOOP                         R11 2 ; [-45]
      133 FORGLOOP                         R5 2 ; [-121]
      135 JUMPIFNOT                        R0 ; [+54]
      136 GETTABLEKS                       R5 R0 K23 ["Properties"]
      138 JUMPIFNOT                        R5 ; [+51]
      139 GETTABLEKS                       R5 R0 K23 ["Properties"]
      141 LOADNIL                          R6
      142 LOADNIL                          R7
      143 FORGPREP                         R5
      144 GETTABLEKS                       R10 R9 K25 ["Name"]
      146 LOADB                            R11 1
      147 SETTABLE                         R11 R4 R10
      148 GETTABLEKS                       R11 R1 K2 ["inputPinToConnectionMap"]
      150 GETTABLEKS                       R12 R9 K25 ["Name"]
      152 GETTABLE                         R10 R11 R12
      153 JUMPIFNOT                        R10 ; [+34]
      154 DUPTABLE                         R13 K30 [{["key"], ["outputPinNodeId"], ["outputPinName"], ["inputPinNodeId"], ["inputPinName"], ["pinDataType"] = "Parameter"}]
      155 LOADK                            R14 K31 ["Connection_%*_property_%*"]
      156 GETTABLEKS                       R16 R10 K15 ["wireId"]
      158 GETTABLEKS                       R17 R9 K25 ["Name"]
      160 NAMECALL                         R14 R14 K16 ["format"]
      162 CALL                             R14 3 1
      163 SETTABLEKS                       R14 R13 K6 ["key"]
      165 GETTABLEKS                       R14 R10 K3 ["outputNodeId"]
      167 SETTABLEKS                       R14 R13 K7 ["outputPinNodeId"]
      169 GETTABLEKS                       R15 R10 K32 ["outputNodePinId"]
      171 ORK                              R14 R15 K9 ["Output"]
      172 SETTABLEKS                       R14 R13 K8 ["outputPinName"]
      174 GETTABLEKS                       R14 R1 K17 ["id"]
      176 SETTABLEKS                       R14 R13 K10 ["inputPinNodeId"]
      178 GETTABLEKS                       R14 R9 K25 ["Name"]
      180 SETTABLEKS                       R14 R13 K11 ["inputPinName"]
      182 FASTCALL2                        TABLE_INSERT R3 R13 ; [+4]
      184 MOVE                             R12 R3
      185 GETIMPORT                        R11 K22 [table.insert]
      187 CALL                             R11 2 0
      188 FORGLOOP                         R5 2 ; [-45]
      190 GETTABLEKS                       R5 R1 K2 ["inputPinToConnectionMap"]
      192 LOADNIL                          R6
      193 LOADNIL                          R7
      194 FORGPREP                         R5
      195 JUMPIFEQKNIL                     R9 ; [+34]
      197 GETTABLE                         R10 R4 R8
      198 JUMPIF                           R10 ; [+31]
      199 DUPTABLE                         R12 K30 [{["key"], ["outputPinNodeId"], ["outputPinName"], ["inputPinNodeId"], ["inputPinName"], ["pinDataType"] = "Parameter"}]
      200 LOADK                            R13 K33 ["Connection_%*_unmapped_%*"]
      201 GETTABLEKS                       R15 R9 K15 ["wireId"]
      203 MOVE                             R16 R8
      204 NAMECALL                         R13 R13 K16 ["format"]
      206 CALL                             R13 3 1
      207 SETTABLEKS                       R13 R12 K6 ["key"]
      209 GETTABLEKS                       R13 R9 K3 ["outputNodeId"]
      211 SETTABLEKS                       R13 R12 K7 ["outputPinNodeId"]
      213 GETTABLEKS                       R14 R9 K32 ["outputNodePinId"]
      215 ORK                              R13 R14 K9 ["Output"]
      216 SETTABLEKS                       R13 R12 K8 ["outputPinName"]
      218 GETTABLEKS                       R13 R1 K17 ["id"]
      220 SETTABLEKS                       R13 R12 K10 ["inputPinNodeId"]
      222 SETTABLEKS                       R8 R12 K11 ["inputPinName"]
      224 FASTCALL2                        TABLE_INSERT R3 R12 ; [+4]
      226 MOVE                             R11 R3
      227 GETIMPORT                        R10 K22 [table.insert]
      229 CALL                             R10 2 0
      230 FORGLOOP                         R5 2 ; [-36]
      232 RETURN                           R3 1

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
