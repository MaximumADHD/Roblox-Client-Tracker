PROTO_0:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["GetAttribute"]
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K1 ["parseAttributeName"]
        7 MOVE                             R4 R2
        8 CALL                             R3 1 1
        9 JUMPIFNOTEQKNIL                  R3 ; [+2]
       11 LOADB                            R4 0 +1
       12 LOADB                            R4 1
       13 RETURN                           R4 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["Data"]
        2 JUMPIFNOT                        R2 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["Data"]
        5 GETTABLEKS                       R1 R1 K1 ["Type"]
        7 JUMP                             ; [+1]
        8 LOADNIL                          R1
        9 JUMPIF                           R1 ; [+5]
       10 GETIMPORT                        R2 K3 [warn]
       12 LOADK                            R3 K4 ["Cannot change to nil type"]
       13 CALL                             R2 1 0
       14 RETURN                           R0 0
       15 GETUPVAL                         R2 0
       16 GETUPVAL                         R4 1
       17 GETUPVAL                         R5 2
       18 GETUPVAL                         R6 3
       19 MOVE                             R7 R1
       20 CALL                             R4 3 -1
       21 NAMECALL                         R2 R2 K5 ["dispatch"]
       23 CALL                             R2 -1 0
       24 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 GETUPVAL                         R5 3
        4 CALL                             R3 2 -1
        5 NAMECALL                         R1 R1 K0 ["dispatch"]
        7 CALL                             R1 -1 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 GETUPVAL                         R5 3
        4 LOADK                            R6 K0 ["TokenReference"]
        5 CALL                             R3 3 -1
        6 NAMECALL                         R1 R1 K1 ["dispatch"]
        8 CALL                             R1 -1 0
        9 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 GETUPVAL                         R5 3
        4 CALL                             R3 2 -1
        5 NAMECALL                         R1 R1 K0 ["dispatch"]
        7 CALL                             R1 -1 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 CALL                             R3 1 -1
        4 NAMECALL                         R1 R1 K0 ["dispatch"]
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 GETUPVAL                         R5 3
        4 CALL                             R3 2 -1
        5 NAMECALL                         R1 R1 K0 ["dispatch"]
        7 CALL                             R1 -1 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 GETUPVAL                         R5 3
        4 LOADNIL                          R6
        5 CALL                             R3 3 -1
        6 NAMECALL                         R1 R1 K0 ["dispatch"]
        8 CALL                             R1 -1 0
        9 RETURN                           R0 0

PROTO_8:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R1 K1 ["Localization"]
        5 GETUPVAL                         R4 0
        6 GETUPVAL                         R6 1
        7 NAMECALL                         R4 R4 K2 ["GetAttribute"]
        9 CALL                             R4 2 1
       10 GETUPVAL                         R5 2
       11 GETTABLEKS                       R5 R5 K3 ["getAttributeTypeActions"]
       13 GETUPVAL                         R6 2
       14 GETTABLEKS                       R6 R6 K4 ["AttributeTypes"]
       16 NEWCLOSURE                       R7 P0
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          UPVAL U0
       20 CAPTURE                          UPVAL U1
       21 CALL                             R5 2 1
       22 GETTABLEKS                       R7 R2 K5 ["Clipboard"]
       24 GETTABLEKS                       R7 R7 K6 ["Attribute"]
       26 JUMPIFNOTEQKNIL                  R7 ; [+2]
       28 LOADB                            R6 0 +1
       29 LOADB                            R6 1
       30 GETUPVAL                         R8 0
       31 GETUPVAL                         R9 1
       32 MOVE                             R12 R9
       33 NAMECALL                         R10 R8 K2 ["GetAttribute"]
       35 CALL                             R10 2 1
       36 GETUPVAL                         R11 4
       37 GETTABLEKS                       R11 R11 K7 ["parseAttributeName"]
       39 MOVE                             R12 R10
       40 CALL                             R11 1 1
       41 JUMPIFNOTEQKNIL                  R11 ; [+2]
       43 LOADB                            R7 0 +1
       44 LOADB                            R7 1
       45 DUPTABLE                         R8 K13 [{["Id"] = "UnlinkToken", ["Text"], ["Icon"], ["OnItemClicked"]}]
       46 LOADK                            R11 K14 ["ContextMenu"]
       47 LOADK                            R12 K9 ["UnlinkToken"]
       48 NAMECALL                         R9 R3 K15 ["getText"]
       50 CALL                             R9 3 1
       51 SETTABLEKS                       R9 R8 K10 ["Text"]
       53 GETUPVAL                         R9 5
       54 GETTABLEKS                       R9 R9 K16 ["Standard"]
       56 GETTABLEKS                       R9 R9 K17 ["TokenSheet"]
       58 CALL                             R9 0 1
       59 SETTABLEKS                       R9 R8 K11 ["Icon"]
       61 NEWCLOSURE                       R9 P1
       62 CAPTURE                          VAL R0
       63 CAPTURE                          UPVAL U6
       64 CAPTURE                          UPVAL U0
       65 CAPTURE                          UPVAL U1
       66 SETTABLEKS                       R9 R8 K12 ["OnItemClicked"]
       68 DUPTABLE                         R9 K19 [{["Id"] = "LinkToken", ["Text"], ["Icon"], ["OnItemClicked"]}]
       69 LOADK                            R12 K14 ["ContextMenu"]
       70 LOADK                            R13 K18 ["LinkToken"]
       71 NAMECALL                         R10 R3 K15 ["getText"]
       73 CALL                             R10 3 1
       74 SETTABLEKS                       R10 R9 K10 ["Text"]
       76 GETUPVAL                         R10 5
       77 GETTABLEKS                       R10 R10 K16 ["Standard"]
       79 GETTABLEKS                       R10 R10 K17 ["TokenSheet"]
       81 CALL                             R10 0 1
       82 SETTABLEKS                       R10 R9 K11 ["Icon"]
       84 NEWCLOSURE                       R10 P2
       85 CAPTURE                          VAL R0
       86 CAPTURE                          UPVAL U3
       87 CAPTURE                          UPVAL U0
       88 CAPTURE                          UPVAL U1
       89 SETTABLEKS                       R10 R9 K12 ["OnItemClicked"]
       91 NEWTABLE                         R10 0 6
       93 DUPTABLE                         R11 K22 [{["Id"] = "ChangeType", ["Text"], ["Children"]}]
       94 LOADK                            R14 K14 ["ContextMenu"]
       95 LOADK                            R15 K20 ["ChangeType"]
       96 NAMECALL                         R12 R3 K15 ["getText"]
       98 CALL                             R12 3 1
       99 SETTABLEKS                       R12 R11 K10 ["Text"]
      101 SETTABLEKS                       R5 R11 K21 ["Children"]
      103 JUMPIFNOT                        R7 ; [+2]
      104 MOVE                             R12 R8
      105 JUMP                             ; [+1]
      106 MOVE                             R12 R9
      107 DUPTABLE                         R13 K24 [{["Id"] = "Copy", ["Text"], ["Icon"], ["OnItemClicked"]}]
      108 LOADK                            R16 K14 ["ContextMenu"]
      109 LOADK                            R17 K23 ["Copy"]
      110 NAMECALL                         R14 R3 K15 ["getText"]
      112 CALL                             R14 3 1
      113 SETTABLEKS                       R14 R13 K10 ["Text"]
      115 GETUPVAL                         R14 5
      116 GETTABLEKS                       R14 R14 K25 ["copy"]
      118 CALL                             R14 0 1
      119 SETTABLEKS                       R14 R13 K11 ["Icon"]
      121 NEWCLOSURE                       R14 P3
      122 CAPTURE                          VAL R0
      123 CAPTURE                          UPVAL U7
      124 CAPTURE                          UPVAL U1
      125 CAPTURE                          VAL R4
      126 SETTABLEKS                       R14 R13 K12 ["OnItemClicked"]
      128 DUPTABLE                         R14 K28 [{["Id"] = "Paste", ["Text"], ["Enabled"], ["Icon"], ["OnItemClicked"]}]
      129 LOADK                            R17 K14 ["ContextMenu"]
      130 LOADK                            R18 K26 ["Paste"]
      131 NAMECALL                         R15 R3 K15 ["getText"]
      133 CALL                             R15 3 1
      134 SETTABLEKS                       R15 R14 K10 ["Text"]
      136 SETTABLEKS                       R6 R14 K27 ["Enabled"]
      138 GETUPVAL                         R15 5
      139 GETTABLEKS                       R15 R15 K29 ["paste"]
      141 CALL                             R15 0 1
      142 SETTABLEKS                       R15 R14 K11 ["Icon"]
      144 NEWCLOSURE                       R15 P4
      145 CAPTURE                          VAL R0
      146 CAPTURE                          UPVAL U8
      147 CAPTURE                          UPVAL U0
      148 SETTABLEKS                       R15 R14 K12 ["OnItemClicked"]
      150 DUPTABLE                         R15 K31 [{["Id"] = "Duplicate", ["Text"], ["Icon"], ["OnItemClicked"]}]
      151 LOADK                            R18 K14 ["ContextMenu"]
      152 LOADK                            R19 K30 ["Duplicate"]
      153 NAMECALL                         R16 R3 K15 ["getText"]
      155 CALL                             R16 3 1
      156 SETTABLEKS                       R16 R15 K10 ["Text"]
      158 GETUPVAL                         R16 5
      159 GETTABLEKS                       R16 R16 K32 ["duplicate"]
      161 CALL                             R16 0 1
      162 SETTABLEKS                       R16 R15 K11 ["Icon"]
      164 NEWCLOSURE                       R16 P5
      165 CAPTURE                          VAL R0
      166 CAPTURE                          UPVAL U9
      167 CAPTURE                          UPVAL U0
      168 CAPTURE                          UPVAL U1
      169 SETTABLEKS                       R16 R15 K12 ["OnItemClicked"]
      171 DUPTABLE                         R16 K34 [{["Id"] = "Delete", ["Text"], ["Icon"], ["OnItemClicked"]}]
      172 LOADK                            R19 K14 ["ContextMenu"]
      173 LOADK                            R20 K33 ["Delete"]
      174 NAMECALL                         R17 R3 K15 ["getText"]
      176 CALL                             R17 3 1
      177 SETTABLEKS                       R17 R16 K10 ["Text"]
      179 GETUPVAL                         R17 5
      180 GETTABLEKS                       R17 R17 K35 ["delete"]
      182 CALL                             R17 0 1
      183 SETTABLEKS                       R17 R16 K11 ["Icon"]
      185 NEWCLOSURE                       R17 P6
      186 CAPTURE                          VAL R0
      187 CAPTURE                          UPVAL U10
      188 CAPTURE                          UPVAL U0
      189 CAPTURE                          UPVAL U1
      190 SETTABLEKS                       R17 R16 K12 ["OnItemClicked"]
      192 SETLIST                          R10 R11 6 [1]
      194 DUPTABLE                         R11 K37 [{["Id"] = "Token", ["Children"]}]
      195 SETTABLEKS                       R10 R11 K21 ["Children"]
      197 GETUPVAL                         R12 2
      198 GETTABLEKS                       R12 R12 K38 ["trackClicks"]
      200 MOVE                             R13 R11
      201 GETTABLEKS                       R14 R1 K39 ["Telemetry"]
      203 CALL                             R12 2 0
      204 GETUPVAL                         R12 2
      205 GETTABLEKS                       R12 R12 K40 ["showContextMenu"]
      207 GETTABLEKS                       R13 R1 K41 ["Plugin"]
      209 MOVE                             R14 R11
      210 CALL                             R12 2 0
      211 RETURN                           R0 0

PROTO_9:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CAPTURE                          UPVAL U7
       11 CAPTURE                          UPVAL U8
       12 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Src"]
       15 GETTABLEKS                       R2 R2 K6 ["Reducers"]
       17 GETTABLEKS                       R2 R2 K7 ["RootReducer"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R3 R0 K5 ["Src"]
       24 GETTABLEKS                       R3 R3 K8 ["Util"]
       26 GETTABLEKS                       R3 R3 K9 ["MenuHelpers"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K4 [require]
       31 GETTABLEKS                       R4 R0 K5 ["Src"]
       33 GETTABLEKS                       R4 R4 K8 ["Util"]
       35 GETTABLEKS                       R4 R4 K10 ["TokenHelpers"]
       37 CALL                             R3 1 1
       38 GETIMPORT                        R4 K4 [require]
       40 GETTABLEKS                       R5 R0 K5 ["Src"]
       42 GETTABLEKS                       R5 R5 K11 ["Resources"]
       44 GETTABLEKS                       R5 R5 K12 ["ModernIcons"]
       46 CALL                             R4 1 1
       47 GETTABLEKS                       R5 R0 K5 ["Src"]
       49 GETTABLEKS                       R5 R5 K13 ["Actions"]
       51 GETIMPORT                        R6 K4 [require]
       53 GETTABLEKS                       R7 R5 K14 ["Clipboard"]
       55 GETTABLEKS                       R7 R7 K15 ["CopyAttributeToClipboard"]
       57 CALL                             R6 1 1
       58 GETTABLEKS                       R7 R0 K5 ["Src"]
       60 GETTABLEKS                       R7 R7 K16 ["Thunks"]
       62 GETIMPORT                        R8 K4 [require]
       64 GETTABLEKS                       R9 R7 K17 ["Change"]
       66 GETTABLEKS                       R9 R9 K18 ["DuplicateAttribute"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K4 [require]
       71 GETTABLEKS                       R10 R7 K17 ["Change"]
       73 GETTABLEKS                       R10 R10 K19 ["PasteStyleInstanceAttribute"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K4 [require]
       78 GETTABLEKS                       R11 R7 K17 ["Change"]
       80 GETTABLEKS                       R11 R11 K20 ["SetStyleSheetTokenType"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K4 [require]
       85 GETTABLEKS                       R12 R7 K17 ["Change"]
       87 GETTABLEKS                       R12 R12 K21 ["SetStyleInstanceAttribute"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K4 [require]
       92 GETTABLEKS                       R13 R7 K17 ["Change"]
       94 GETTABLEKS                       R13 R13 K22 ["UnlinkStyleSheetAttributeTokenReference"]
       96 CALL                             R12 1 1
       97 GETIMPORT                        R13 K4 [require]
       99 GETTABLEKS                       R14 R0 K5 ["Src"]
      101 GETTABLEKS                       R14 R14 K23 ["Types"]
      103 CALL                             R13 1 1
      104 GETIMPORT                        R14 K4 [require]
      106 GETTABLEKS                       R15 R0 K5 ["Src"]
      108 GETTABLEKS                       R15 R15 K16 ["Thunks"]
      110 GETTABLEKS                       R15 R15 K23 ["Types"]
      112 CALL                             R14 1 1
      113 DUPCLOSURE                       R15 K24 [PROTO_0]
      114 CAPTURE                          VAL R3
      115 DUPCLOSURE                       R16 K25 [PROTO_9]
      116 CAPTURE                          VAL R2
      117 CAPTURE                          VAL R10
      118 CAPTURE                          VAL R3
      119 CAPTURE                          VAL R4
      120 CAPTURE                          VAL R12
      121 CAPTURE                          VAL R6
      122 CAPTURE                          VAL R9
      123 CAPTURE                          VAL R8
      124 CAPTURE                          VAL R11
      125 RETURN                           R16 1
