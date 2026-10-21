PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+35]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["GraphPayload"]
        5 JUMPIFNOT                        R0 ; [+31]
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K1 ["nodeLibrary"]
        9 LOADNIL                          R1
       10 LOADNIL                          R2
       11 FORGPREP                         R0
       12 MOVE                             R5 R4
       13 LOADNIL                          R6
       14 LOADNIL                          R7
       15 FORGPREP                         R5
       16 GETTABLEKS                       R10 R9 K2 ["id"]
       18 GETUPVAL                         R11 1
       19 GETTABLEKS                       R11 R11 K0 ["GraphPayload"]
       21 GETTABLEKS                       R11 R11 K3 ["nodeType"]
       23 JUMPIFNOTEQ                      R10 R11 ; [+9]
       25 GETTABLEKS                       R10 R9 K4 ["definition"]
       27 GETTABLEKS                       R10 R10 K5 ["Inputs"]
       29 JUMPIF                           R10 ; [+2]
       30 NEWTABLE                         R10 0 0
       32 RETURN                           R10 1
       33 FORGLOOP                         R5 2 ; [-18]
       35 FORGLOOP                         R0 2 ; [-24]
       37 NEWTABLE                         R0 0 0
       39 RETURN                           R0 1

PROTO_1:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 JUMPIFNOT                        R1 ; [+23]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["GraphPayload"]
        7 JUMPIFNOT                        R1 ; [+19]
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K0 ["GraphPayload"]
       11 GETTABLEKS                       R1 R1 K1 ["inputLabelPinToConnectionMap"]
       13 LOADNIL                          R2
       14 LOADNIL                          R3
       15 FORGPREP                         R1
       16 MOVE                             R6 R5
       17 LOADNIL                          R7
       18 LOADNIL                          R8
       19 FORGPREP                         R6
       20 GETTABLEKS                       R11 R10 K2 ["wireId"]
       22 SETTABLE                         R10 R0 R11
       23 FORGLOOP                         R6 2 ; [-4]
       25 FORGLOOP                         R1 2 ; [-10]
       27 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["GraphPayload"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+4]
        5 NEWTABLE                         R0 0 0
        7 RETURN                           R0 1
        8 NEWTABLE                         R0 0 0
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K0 ["GraphPayload"]
       13 GETTABLEKS                       R1 R1 K1 ["inputPinInputIds"]
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K0 ["GraphPayload"]
       18 GETTABLEKS                       R2 R2 K2 ["inputPinIds"]
       20 LOADNIL                          R3
       21 LOADNIL                          R4
       22 FORGPREP                         R2
       23 GETUPVAL                         R7 0
       24 GETTABLEKS                       R7 R7 K0 ["GraphPayload"]
       26 JUMPIFNOT                        R7 ; [+6]
       27 GETUPVAL                         R8 0
       28 GETTABLEKS                       R8 R8 K0 ["GraphPayload"]
       30 GETTABLEKS                       R8 R8 K3 ["inputPinToConnectionMap"]
       32 GETTABLE                         R7 R8 R6
       33 NEWTABLE                         R8 1 0
       35 GETUPVAL                         R9 0
       36 GETTABLEKS                       R9 R9 K4 ["Default"]
       38 LOADNIL                          R10
       39 LOADNIL                          R11
       40 FORGPREP                         R9
       41 LOADNIL                          R14
       42 JUMPIFNOT                        R7 ; [+4]
       43 GETTABLEKS                       R16 R7 K5 ["properties"]
       45 GETTABLE                         R15 R16 R12
       46 JUMP                             ; [+1]
       47 LOADNIL                          R15
       48 JUMPIFEQKNIL                     R15 ; [+22]
       50 FASTCALL1                        TYPE R15 ; [+3]
       51 MOVE                             R18 R15
       52 GETIMPORT                        R17 K7 [type]
       54 CALL                             R17 1 1
       55 JUMPIFNOTEQKS                    R17 K8 ["string"] ; [+7]
       57 GETUPVAL                         R16 1
       58 GETTABLEKS                       R16 R16 K9 ["matchParameterBinding"]
       60 MOVE                             R17 R15
       61 CALL                             R16 1 1
       62 JUMP                             ; [+1]
       63 LOADNIL                          R16
       64 JUMPIFNOT                        R16 ; [+5]
       65 GETUPVAL                         R17 2
       66 GETTABLEKS                       R17 R17 K10 ["animationParameters"]
       68 GETTABLE                         R14 R17 R16
       69 JUMP                             ; [+1]
       70 MOVE                             R14 R15
       71 JUMPIFEQKNIL                     R14 ; [+3]
       73 SETTABLE                         R14 R8 R12
       74 JUMP                             ; [+1]
       75 SETTABLE                         R13 R8 R12
       76 FORGLOOP                         R9 2 ; [-36]
       78 GETUPVAL                         R9 3
       79 JUMPIFNOT                        R9 ; [+89]
       80 GETUPVAL                         R9 4
       81 LOADNIL                          R10
       82 LOADNIL                          R11
       83 FORGPREP                         R9
       84 GETTABLEKS                       R14 R13 K11 ["InputFlags"]
       86 JUMPIFEQKN                       R14 K12 [1] ; [+5]
       88 GETTABLEKS                       R14 R13 K13 ["InputName"]
       90 JUMPIFNOTEQ                      R14 R6 ; [+76]
       92 GETTABLEKS                       R14 R13 K14 ["Properties"]
       94 JUMPIF                           R14 ; [+2]
       95 NEWTABLE                         R14 0 0
       97 MOVE                             R15 R14
       98 LOADNIL                          R16
       99 LOADNIL                          R17
      100 FORGPREP                         R15
      101 GETUPVAL                         R21 0
      102 GETTABLEKS                       R21 R21 K0 ["GraphPayload"]
      104 GETTABLEKS                       R21 R21 K15 ["inputLabelPinToConnectionMap"]
      106 GETTABLEKS                       R22 R19 K16 ["Name"]
      108 GETTABLE                         R20 R21 R22
      109 JUMPIFNOT                        R20 ; [+2]
      110 GETTABLE                         R21 R20 R6
      111 JUMP                             ; [+1]
      112 LOADNIL                          R21
      113 JUMPIFNOT                        R21 ; [+51]
      114 GETTABLEKS                       R22 R21 K17 ["isValueNodeConnection"]
      116 JUMPIFNOT                        R22 ; [+48]
      117 GETTABLEKS                       R22 R19 K18 ["Type"]
      119 JUMPIF                           R22 ; [+12]
      120 GETIMPORT                        R22 K20 [string.gsub]
      122 GETTABLEKS                       R24 R19 K21 ["Value"]
      124 FASTCALL1                        TYPEOF R24 ; [+2]
      125 GETIMPORT                        R23 K23 [typeof]
      127 CALL                             R23 1 1
      128 LOADK                            R24 K24 ["^%l"]
      129 GETIMPORT                        R25 K26 [string.upper]
      131 CALL                             R22 3 1
      132 GETUPVAL                         R23 5
      133 GETTABLEKS                       R23 R23 K27 ["castPropertyValue"]
      135 GETUPVAL                         R25 6
      136 GETTABLEKS                       R26 R21 K28 ["wireId"]
      138 GETTABLE                         R24 R25 R26
      139 MOVE                             R25 R22
      140 CALL                             R23 2 1
      141 JUMPIFNOTEQKNIL                  R23 ; [+10]
      143 GETUPVAL                         R24 5
      144 GETTABLEKS                       R24 R24 K27 ["castPropertyValue"]
      146 GETTABLEKS                       R26 R19 K16 ["Name"]
      148 GETTABLE                         R25 R8 R26
      149 MOVE                             R26 R22
      150 CALL                             R24 2 1
      151 MOVE                             R23 R24
      152 JUMPIFNOTEQKNIL                  R23 ; [+9]
      154 GETUPVAL                         R24 5
      155 GETTABLEKS                       R24 R24 K27 ["castPropertyValue"]
      157 GETTABLEKS                       R25 R19 K21 ["Value"]
      159 MOVE                             R26 R22
      160 CALL                             R24 2 1
      161 MOVE                             R23 R24
      162 GETTABLEKS                       R24 R19 K16 ["Name"]
      164 SETTABLE                         R23 R8 R24
      165 FORGLOOP                         R15 2 ; [-65]
      167 FORGLOOP                         R9 2 ; [-84]
      169 GETUPVAL                         R9 0
      170 GETTABLEKS                       R9 R9 K29 ["TransitionFields"]
      172 JUMPIFEQKNIL                     R9 ; [+32]
      174 GETUPVAL                         R9 0
      175 GETTABLEKS                       R9 R9 K29 ["TransitionFields"]
      177 LOADNIL                          R10
      178 LOADNIL                          R11
      179 FORGPREP                         R9
      180 GETUPVAL                         R15 7
      181 GETTABLEKS                       R15 R15 K30 ["TRANSITION_OVERRIDE_PREFIX"]
      183 MOVE                             R16 R13
      184 CONCAT                           R14 R15 R16
      185 JUMPIFNOT                        R7 ; [+4]
      186 GETTABLEKS                       R16 R7 K5 ["properties"]
      188 GETTABLE                         R15 R16 R14
      189 JUMP                             ; [+1]
      190 LOADNIL                          R15
      191 JUMPIFEQKNIL                     R15 ; [+11]
      193 GETTABLEKS                       R16 R8 K31 ["Transition"]
      195 JUMPIF                           R16 ; [+2]
      196 NEWTABLE                         R16 0 0
      198 SETTABLEKS                       R16 R8 K31 ["Transition"]
      200 GETTABLEKS                       R16 R8 K31 ["Transition"]
      202 SETTABLE                         R15 R16 R13
      203 FORGLOOP                         R9 2 ; [-24]
      205 JUMPIFNOT                        R7 ; [+3]
      206 GETTABLEKS                       R9 R7 K32 ["outputNodeId"]
      208 JUMPIF                           R9 ; [+1]
      209 LOADNIL                          R9
      210 GETUPVAL                         R11 8
      211 JUMPIFNOT                        R11 ; [+2]
      212 GETUPVAL                         R10 9
      213 JUMP                             ; [+5]
      214 GETUPVAL                         R10 10
      215 GETTABLEKS                       R10 R10 K33 ["observeGraphNodeMap"]
      217 LOADB                            R11 0
      218 CALL                             R10 1 1
      219 JUMPIFNOT                        R9 ; [+3]
      220 JUMPIFNOT                        R10 ; [+2]
      221 GETTABLE                         R11 R10 R9
      222 JUMP                             ; [+1]
      223 LOADNIL                          R11
      224 DUPTABLE                         R12 K37 [{"Name", "InputId", "ConnectedNodeId", "ConnectedNodeName", "Value"}]
      225 SETTABLEKS                       R6 R12 K16 ["Name"]
      227 JUMPIFNOT                        R1 ; [+2]
      228 GETTABLE                         R13 R1 R5
      229 JUMP                             ; [+1]
      230 LOADNIL                          R13
      231 SETTABLEKS                       R13 R12 K34 ["InputId"]
      233 SETTABLEKS                       R9 R12 K35 ["ConnectedNodeId"]
      235 JUMPIFNOT                        R11 ; [+10]
      236 GETUPVAL                         R13 11
      237 GETTABLEKS                       R13 R13 K38 ["getDisplayName"]
      239 GETTABLEKS                       R14 R11 K39 ["name"]
      241 JUMPIF                           R14 ; [+2]
      242 GETTABLEKS                       R14 R11 K40 ["className"]
      244 CALL                             R13 1 1
      245 JUMP                             ; [+3]
      246 GETUPVAL                         R13 12
      247 GETTABLEKS                       R13 R13 K41 ["DISCONNECTED_INPUT"]
      249 SETTABLEKS                       R13 R12 K36 ["ConnectedNodeName"]
      251 SETTABLEKS                       R8 R12 K21 ["Value"]
      253 FASTCALL2                        TABLE_INSERT R0 R12 ; [+5]
      255 MOVE                             R14 R0
      256 MOVE                             R15 R12
      257 GETIMPORT                        R13 K44 [table.insert]
      259 CALL                             R13 2 0
      260 FORGLOOP                         R2 2 ; [-238]
      262 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["GraphPayload"]
        3 JUMPIFNOTEQKNIL                  R2 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K0 ["GraphPayload"]
        9 GETTABLEKS                       R3 R3 K1 ["inputPinIds"]
       11 GETTABLE                         R2 R3 R0
       12 JUMPIF                           R2 ; [+1]
       13 RETURN                           R0 0
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R4 R4 K0 ["GraphPayload"]
       17 GETTABLEKS                       R4 R4 K2 ["inputPinToConnectionMap"]
       19 GETTABLE                         R3 R4 R2
       20 JUMPIF                           R3 ; [+1]
       21 RETURN                           R0 0
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R4 R4 K3 ["Default"]
       25 LOADNIL                          R5
       26 LOADNIL                          R6
       27 FORGPREP                         R4
       28 GETUPVAL                         R9 1
       29 JUMPIFNOT                        R9 ; [+14]
       30 GETUPVAL                         R10 0
       31 GETTABLEKS                       R10 R10 K0 ["GraphPayload"]
       33 GETTABLEKS                       R10 R10 K4 ["inputLabelPinToConnectionMap"]
       35 GETTABLE                         R9 R10 R7
       36 JUMPIFNOT                        R9 ; [+2]
       37 GETTABLE                         R10 R9 R2
       38 JUMP                             ; [+1]
       39 LOADNIL                          R10
       40 JUMPIFNOT                        R10 ; [+3]
       41 GETTABLEKS                       R11 R10 K5 ["isValueNodeConnection"]
       43 JUMPIF                           R11 ; [+13]
       44 GETTABLE                         R9 R1 R7
       45 GETTABLEKS                       R11 R3 K6 ["properties"]
       47 GETTABLE                         R10 R11 R7
       48 JUMPIFEQ                         R10 R9 ; [+8]
       50 GETUPVAL                         R10 2
       51 GETTABLEKS                       R10 R10 K7 ["setInputPinNodeProperty"]
       53 MOVE                             R11 R3
       54 MOVE                             R12 R7
       55 MOVE                             R13 R9
       56 CALL                             R10 3 0
       57 FORGLOOP                         R4 2 ; [-30]
       59 GETTABLEKS                       R4 R1 K8 ["Transition"]
       61 JUMPIFEQKNIL                     R4 ; [+26]
       63 MOVE                             R5 R4
       64 LOADNIL                          R6
       65 LOADNIL                          R7
       66 FORGPREP                         R5
       67 GETUPVAL                         R11 3
       68 GETTABLEKS                       R11 R11 K9 ["TRANSITION_OVERRIDE_PREFIX"]
       70 MOVE                             R12 R8
       71 CONCAT                           R10 R11 R12
       72 GETTABLE                         R11 R4 R8
       73 GETTABLEKS                       R13 R3 K6 ["properties"]
       75 GETTABLE                         R12 R13 R10
       76 JUMPIFEQ                         R12 R11 ; [+8]
       78 GETUPVAL                         R12 2
       79 GETTABLEKS                       R12 R12 K7 ["setInputPinNodeProperty"]
       81 MOVE                             R13 R3
       82 MOVE                             R14 R10
       83 MOVE                             R15 R11
       84 CALL                             R12 3 0
       85 FORGLOOP                         R5 2 ; [-19]
       87 RETURN                           R0 0
       88 GETUPVAL                         R5 0
       89 GETTABLEKS                       R5 R5 K10 ["TransitionFields"]
       91 JUMPIFEQKNIL                     R5 ; [+21]
       93 GETUPVAL                         R5 0
       94 GETTABLEKS                       R5 R5 K10 ["TransitionFields"]
       96 LOADNIL                          R6
       97 LOADNIL                          R7
       98 FORGPREP                         R5
       99 GETUPVAL                         R11 3
      100 GETTABLEKS                       R11 R11 K9 ["TRANSITION_OVERRIDE_PREFIX"]
      102 MOVE                             R12 R9
      103 CONCAT                           R10 R11 R12
      104 GETUPVAL                         R11 2
      105 GETTABLEKS                       R11 R11 K7 ["setInputPinNodeProperty"]
      107 MOVE                             R12 R3
      108 MOVE                             R13 R10
      109 LOADNIL                          R14
      110 CALL                             R11 3 0
      111 FORGLOOP                         R5 2 ; [-13]
      113 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["GraphPayload"]
        3 JUMPIFNOTEQKNIL                  R1 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K0 ["GraphPayload"]
        9 GETTABLEKS                       R2 R2 K1 ["inputPinIds"]
       11 GETTABLE                         R1 R2 R0
       12 JUMPIF                           R1 ; [+1]
       13 RETURN                           R0 0
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K0 ["GraphPayload"]
       17 GETTABLEKS                       R3 R3 K2 ["inputPinInputIds"]
       19 JUMPIFNOT                        R3 ; [+7]
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R3 R3 K0 ["GraphPayload"]
       23 GETTABLEKS                       R3 R3 K2 ["inputPinInputIds"]
       25 GETTABLE                         R2 R3 R0
       26 JUMP                             ; [+1]
       27 LOADNIL                          R2
       28 GETUPVAL                         R4 0
       29 GETTABLEKS                       R4 R4 K0 ["GraphPayload"]
       31 GETTABLEKS                       R4 R4 K3 ["inputPinToConnectionMap"]
       33 GETTABLE                         R3 R4 R1
       34 JUMPIF                           R3 ; [+14]
       35 JUMPIFNOT                        R2 ; [+12]
       36 GETUPVAL                         R4 1
       37 GETTABLEKS                       R4 R4 K4 ["deleteNodeInput"]
       39 GETUPVAL                         R5 0
       40 GETTABLEKS                       R5 R5 K0 ["GraphPayload"]
       42 GETTABLEKS                       R5 R5 K5 ["id"]
       44 MOVE                             R6 R1
       45 LOADNIL                          R7
       46 MOVE                             R8 R2
       47 CALL                             R4 4 0
       48 RETURN                           R0 0
       49 GETUPVAL                         R4 1
       50 GETTABLEKS                       R4 R4 K4 ["deleteNodeInput"]
       52 GETTABLEKS                       R5 R3 K6 ["inputNodeId"]
       54 MOVE                             R6 R1
       55 LOADNIL                          R7
       56 MOVE                             R8 R2
       57 CALL                             R4 4 0
       58 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["GraphPayload"]
        3 JUMPIFNOTEQKNIL                  R2 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K0 ["GraphPayload"]
        9 GETTABLEKS                       R3 R3 K1 ["inputPinInputIds"]
       11 JUMPIFNOT                        R3 ; [+7]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K0 ["GraphPayload"]
       15 GETTABLEKS                       R3 R3 K1 ["inputPinInputIds"]
       17 GETTABLE                         R2 R3 R0
       18 JUMP                             ; [+1]
       19 LOADNIL                          R2
       20 JUMPIF                           R2 ; [+1]
       21 RETURN                           R0 0
       22 GETUPVAL                         R3 1
       23 GETTABLEKS                       R3 R3 K2 ["renameNodeInputAsync"]
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R4 R4 K0 ["GraphPayload"]
       28 GETTABLEKS                       R4 R4 K3 ["id"]
       30 MOVE                             R5 R2
       31 MOVE                             R6 R1
       32 CALL                             R3 3 0
       33 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["GraphPayload"]
        3 JUMPIF                           R2 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["reorderPins"]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K0 ["GraphPayload"]
       11 GETTABLEKS                       R3 R3 K2 ["id"]
       13 MOVE                             R4 R0
       14 MOVE                             R5 R1
       15 CALL                             R2 3 0
       16 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R3 R0 K0 ["Collapsed"]
        2 JUMPIFNOT                        R3 ; [+2]
        3 LOADNIL                          R3
        4 RETURN                           R3 1
        5 GETUPVAL                         R4 0
        6 LENGTH                           R3 R4
        7 JUMPIFNOTEQKN                    R3 K1 [0] ; [+7]
        9 GETTABLEKS                       R3 R2 K2 ["allowAddInput"]
       11 JUMPIFNOTEQKB                    R3 FALSE ; [+3]
       13 LOADNIL                          R3
       14 RETURN                           R3 1
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K3 ["createElement"]
       18 GETUPVAL                         R4 2
       19 DUPTABLE                         R5 K22 [{"LayoutOrder", "InputBuilder", "InputBuilderProps", "NodeId", "Inputs", "NewInputDefaultValue", "OnInputChanged", "OnInputDeleted", "OnInputRenamed", "OnInputReordered", "AllowAddInput", "Position", "PropertyLookup", "Size", "StateLookup", "text", "editName", "GraphPayload"}]
       20 GETTABLEKS                       R6 R1 K23 ["nextOrder"]
       22 CALL                             R6 0 1
       23 SETTABLEKS                       R6 R5 K4 ["LayoutOrder"]
       25 GETTABLEKS                       R6 R2 K24 ["inputBuilder"]
       27 SETTABLEKS                       R6 R5 K5 ["InputBuilder"]
       29 GETTABLEKS                       R6 R2 K25 ["inputBuilderProps"]
       31 SETTABLEKS                       R6 R5 K6 ["InputBuilderProps"]
       33 GETTABLEKS                       R6 R0 K21 ["GraphPayload"]
       35 GETTABLEKS                       R6 R6 K26 ["id"]
       37 SETTABLEKS                       R6 R5 K7 ["NodeId"]
       39 GETUPVAL                         R6 0
       40 SETTABLEKS                       R6 R5 K8 ["Inputs"]
       42 GETUPVAL                         R6 3
       43 GETTABLEKS                       R6 R6 K27 ["Default"]
       45 SETTABLEKS                       R6 R5 K9 ["NewInputDefaultValue"]
       47 GETUPVAL                         R6 4
       48 SETTABLEKS                       R6 R5 K10 ["OnInputChanged"]
       50 GETUPVAL                         R6 5
       51 SETTABLEKS                       R6 R5 K11 ["OnInputDeleted"]
       53 GETUPVAL                         R6 6
       54 SETTABLEKS                       R6 R5 K12 ["OnInputRenamed"]
       56 GETUPVAL                         R6 7
       57 SETTABLEKS                       R6 R5 K13 ["OnInputReordered"]
       59 GETTABLEKS                       R6 R2 K2 ["allowAddInput"]
       61 SETTABLEKS                       R6 R5 K14 ["AllowAddInput"]
       63 GETTABLEKS                       R6 R0 K15 ["Position"]
       65 SETTABLEKS                       R6 R5 K15 ["Position"]
       67 GETTABLEKS                       R6 R0 K16 ["PropertyLookup"]
       69 SETTABLEKS                       R6 R5 K16 ["PropertyLookup"]
       71 GETTABLEKS                       R6 R0 K17 ["Size"]
       73 SETTABLEKS                       R6 R5 K17 ["Size"]
       75 GETTABLEKS                       R6 R0 K18 ["StateLookup"]
       77 SETTABLEKS                       R6 R5 K18 ["StateLookup"]
       79 GETTABLEKS                       R6 R0 K19 ["text"]
       81 SETTABLEKS                       R6 R5 K19 ["text"]
       83 GETTABLEKS                       R6 R0 K20 ["editName"]
       85 SETTABLEKS                       R6 R5 K20 ["editName"]
       87 GETTABLEKS                       R6 R0 K21 ["GraphPayload"]
       89 SETTABLEKS                       R6 R5 K21 ["GraphPayload"]
       91 CALL                             R3 2 -1
       92 RETURN                           R3 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["GraphContext"]
        6 GETTABLEKS                       R2 R2 K2 ["Context"]
        8 CALL                             R1 1 1
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K0 ["useContext"]
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R3 R3 K2 ["Context"]
       15 CALL                             R2 1 1
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K0 ["useContext"]
       19 GETUPVAL                         R4 3
       20 GETTABLEKS                       R4 R4 K2 ["Context"]
       22 CALL                             R3 1 1
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R4 R4 K0 ["useContext"]
       26 GETUPVAL                         R5 1
       27 GETTABLEKS                       R5 R5 K3 ["NodeLibraryContext"]
       29 GETTABLEKS                       R5 R5 K2 ["Context"]
       31 CALL                             R4 1 1
       32 GETUPVAL                         R5 1
       33 GETTABLEKS                       R5 R5 K4 ["getFFlagAnimGraphUI_ValueNodeInputProperties"]
       35 CALL                             R5 0 1
       36 JUMPIFNOT                        R5 ; [+4]
       37 GETUPVAL                         R5 1
       38 GETTABLEKS                       R5 R5 K5 ["getFFlagAnimGraphUI_ValueNodeDebugOutputs"]
       40 CALL                             R5 0 1
       41 GETUPVAL                         R6 0
       42 GETTABLEKS                       R6 R6 K6 ["useMemo"]
       44 NEWCLOSURE                       R7 P0
       45 CAPTURE                          VAL R5
       46 CAPTURE                          VAL R0
       47 CAPTURE                          VAL R4
       48 NEWTABLE                         R8 0 3
       50 GETTABLEKS                       R9 R4 K7 ["nodeLibrary"]
       52 GETTABLEKS                       R10 R0 K8 ["GraphPayload"]
       54 JUMPIFNOT                        R10 ; [+4]
       55 GETTABLEKS                       R10 R0 K8 ["GraphPayload"]
       57 GETTABLEKS                       R10 R10 K9 ["nodeType"]
       59 MOVE                             R11 R5
       60 SETLIST                          R8 R9 3 [1]
       62 CALL                             R6 2 1
       63 GETUPVAL                         R7 0
       64 GETTABLEKS                       R7 R7 K6 ["useMemo"]
       66 NEWCLOSURE                       R8 P1
       67 CAPTURE                          VAL R5
       68 CAPTURE                          VAL R0
       69 NEWTABLE                         R9 0 2
       71 GETTABLEKS                       R10 R0 K8 ["GraphPayload"]
       73 JUMPIFNOT                        R10 ; [+4]
       74 GETTABLEKS                       R10 R0 K8 ["GraphPayload"]
       76 GETTABLEKS                       R10 R10 K10 ["inputLabelPinToConnectionMap"]
       78 MOVE                             R11 R5
       79 SETLIST                          R9 R10 2 [1]
       81 CALL                             R7 2 1
       82 GETUPVAL                         R8 1
       83 GETTABLEKS                       R8 R8 K11 ["useValueNodeOutputs"]
       85 MOVE                             R9 R7
       86 CALL                             R8 1 1
       87 GETUPVAL                         R10 4
       88 JUMPIFNOT                        R10 ; [+7]
       89 GETUPVAL                         R9 5
       90 GETTABLEKS                       R9 R9 K12 ["useSignalState"]
       92 GETTABLEKS                       R10 R3 K13 ["observeGraphNodeMap"]
       94 CALL                             R9 1 1
       95 JUMP                             ; [+1]
       96 LOADNIL                          R9
       97 GETUPVAL                         R10 0
       98 GETTABLEKS                       R10 R10 K6 ["useMemo"]
      100 NEWCLOSURE                       R11 P2
      101 CAPTURE                          VAL R0
      102 CAPTURE                          UPVAL U6
      103 CAPTURE                          VAL R2
      104 CAPTURE                          VAL R5
      105 CAPTURE                          VAL R6
      106 CAPTURE                          UPVAL U1
      107 CAPTURE                          VAL R8
      108 CAPTURE                          UPVAL U7
      109 CAPTURE                          UPVAL U4
      110 CAPTURE                          VAL R9
      111 CAPTURE                          VAL R3
      112 CAPTURE                          UPVAL U8
      113 CAPTURE                          UPVAL U9
      114 NEWTABLE                         R12 0 8
      116 GETTABLEKS                       R13 R0 K8 ["GraphPayload"]
      118 GETTABLEKS                       R14 R0 K14 ["Default"]
      120 GETTABLEKS                       R15 R0 K15 ["TransitionFields"]
      122 GETTABLEKS                       R16 R2 K16 ["animationParameters"]
      124 MOVE                             R17 R9
      125 MOVE                             R18 R6
      126 MOVE                             R19 R8
      127 MOVE                             R20 R5
      128 SETLIST                          R12 R13 8 [1]
      130 CALL                             R10 2 1
      131 GETUPVAL                         R11 0
      132 GETTABLEKS                       R11 R11 K17 ["useCallback"]
      134 NEWCLOSURE                       R12 P3
      135 CAPTURE                          VAL R0
      136 CAPTURE                          VAL R5
      137 CAPTURE                          VAL R1
      138 CAPTURE                          UPVAL U7
      139 NEWTABLE                         R13 0 3
      141 GETTABLEKS                       R14 R0 K8 ["GraphPayload"]
      143 GETTABLEKS                       R15 R0 K15 ["TransitionFields"]
      145 MOVE                             R16 R5
      146 SETLIST                          R13 R14 3 [1]
      148 CALL                             R11 2 1
      149 GETUPVAL                         R12 10
      150 GETTABLEKS                       R12 R12 K18 ["useEventCallback"]
      152 NEWCLOSURE                       R13 P4
      153 CAPTURE                          VAL R0
      154 CAPTURE                          VAL R1
      155 CALL                             R12 1 1
      156 GETUPVAL                         R13 10
      157 GETTABLEKS                       R13 R13 K18 ["useEventCallback"]
      159 NEWCLOSURE                       R14 P5
      160 CAPTURE                          VAL R0
      161 CAPTURE                          VAL R3
      162 CALL                             R13 1 1
      163 GETUPVAL                         R14 0
      164 GETTABLEKS                       R14 R14 K17 ["useCallback"]
      166 NEWCLOSURE                       R15 P6
      167 CAPTURE                          VAL R0
      168 CAPTURE                          VAL R1
      169 NEWTABLE                         R16 0 3
      171 GETTABLEKS                       R17 R0 K8 ["GraphPayload"]
      173 MOVE                             R18 R10
      174 GETTABLEKS                       R19 R1 K19 ["reorderPins"]
      176 SETLIST                          R16 R17 3 [1]
      178 CALL                             R14 2 1
      179 GETUPVAL                         R15 0
      180 GETTABLEKS                       R15 R15 K17 ["useCallback"]
      182 NEWCLOSURE                       R16 P7
      183 CAPTURE                          VAL R10
      184 CAPTURE                          UPVAL U0
      185 CAPTURE                          UPVAL U11
      186 CAPTURE                          VAL R0
      187 CAPTURE                          VAL R11
      188 CAPTURE                          VAL R12
      189 CAPTURE                          VAL R13
      190 CAPTURE                          VAL R14
      191 NEWTABLE                         R17 0 6
      193 MOVE                             R18 R10
      194 GETTABLEKS                       R19 R0 K14 ["Default"]
      196 MOVE                             R20 R11
      197 MOVE                             R21 R12
      198 MOVE                             R22 R13
      199 MOVE                             R23 R14
      200 SETLIST                          R17 R18 6 [1]
      202 CALL                             R15 2 1
      203 DUPTABLE                         R16 K27 [{"inputs", "onInputChanged", "onInputDeleted", "onInputRenamed", "onInputReordered", "newInputDefaultValue", "makePropertyChild"}]
      204 SETTABLEKS                       R10 R16 K20 ["inputs"]
      206 SETTABLEKS                       R11 R16 K21 ["onInputChanged"]
      208 SETTABLEKS                       R12 R16 K22 ["onInputDeleted"]
      210 SETTABLEKS                       R13 R16 K23 ["onInputRenamed"]
      212 SETTABLEKS                       R14 R16 K24 ["onInputReordered"]
      214 GETTABLEKS                       R17 R0 K14 ["Default"]
      216 SETTABLEKS                       R17 R16 K25 ["newInputDefaultValue"]
      218 SETTABLEKS                       R15 R16 K26 ["makePropertyChild"]
      220 RETURN                           R16 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Contexts"]
       11 GETTABLEKS                       R2 R2 K7 ["AnimationParameterContext"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Util"]
       18 GETTABLEKS                       R3 R3 K9 ["Constants"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Components"]
       25 GETTABLEKS                       R4 R4 K11 ["NodeView"]
       27 GETTABLEKS                       R4 R4 K12 ["CompositorNodeInput"]
       29 GETTABLEKS                       R4 R4 K13 ["InputPanel"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K10 ["Components"]
       36 GETTABLEKS                       R5 R5 K11 ["NodeView"]
       38 GETTABLEKS                       R5 R5 K12 ["CompositorNodeInput"]
       40 GETTABLEKS                       R5 R5 K14 ["InputPanelTypes"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K6 ["Contexts"]
       47 GETTABLEKS                       R6 R6 K15 ["NativeGraphContext"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K6 ["Contexts"]
       54 GETTABLEKS                       R7 R7 K15 ["NativeGraphContext"]
       56 GETTABLEKS                       R7 R7 K16 ["NativeGraphUtils"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R8 R0 K17 ["Parent"]
       63 GETTABLEKS                       R8 R8 K18 ["NodeGraphing"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R9 R0 K8 ["Util"]
       70 GETTABLEKS                       R9 R9 K19 ["Nodes"]
       72 GETTABLEKS                       R9 R9 K20 ["NodeNameFormattingUtils"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R10 R0 K17 ["Parent"]
       79 GETTABLEKS                       R10 R10 K21 ["React"]
       81 CALL                             R9 1 1
       82 GETIMPORT                        R10 K5 [require]
       84 GETTABLEKS                       R11 R0 K17 ["Parent"]
       86 GETTABLEKS                       R11 R11 K22 ["ReactUtils"]
       88 CALL                             R10 1 1
       89 GETIMPORT                        R11 K5 [require]
       91 GETTABLEKS                       R12 R0 K17 ["Parent"]
       93 GETTABLEKS                       R12 R12 K23 ["SignalsReact"]
       95 CALL                             R11 1 1
       96 GETIMPORT                        R12 K5 [require]
       98 GETTABLEKS                       R13 R0 K24 ["Flags"]
      100 GETTABLEKS                       R13 R13 K25 ["FFlagAnimGraphUIRenameDuplicateInput"]
      102 CALL                             R12 1 1
      103 DUPCLOSURE                       R13 K26 [PROTO_8]
      104 CAPTURE                          VAL R9
      105 CAPTURE                          VAL R7
      106 CAPTURE                          VAL R1
      107 CAPTURE                          VAL R5
      108 CAPTURE                          VAL R12
      109 CAPTURE                          VAL R11
      110 CAPTURE                          VAL R6
      111 CAPTURE                          VAL R2
      112 CAPTURE                          VAL R8
      113 CAPTURE                          VAL R4
      114 CAPTURE                          VAL R10
      115 CAPTURE                          VAL R3
      116 RETURN                           R13 1
