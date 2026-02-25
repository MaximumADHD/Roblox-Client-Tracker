PROTO_0:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["GetAttribute"]
        3 CALL                             R2 2 1
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K1 ["parseAttributeName"]
        7 MOVE                             R4 R2
        8 CALL                             R3 1 1
        9 JUMPIFNOTEQKNIL                  R3 ; [+2]
       11 LOADB                            R4 0 +1
       12 LOADB                            R4 1
       13 RETURN                           R4 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["Data"]
        2 JUMPIFNOT                        R2 ; [+5]
        3 GETTABLEKS                       R2 R0 K0 ["Data"]
        5 GETTABLEKS                       R1 R2 K1 ["Type"]
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
       10 GETUPVAL                         R6 2
       11 GETTABLEKS                       R5 R6 K3 ["getAttributeTypeActions"]
       13 GETUPVAL                         R7 2
       14 GETTABLEKS                       R6 R7 K4 ["AttributeTypes"]
       16 NEWCLOSURE                       R7 P0
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          UPVAL U0
       20 CAPTURE                          UPVAL U1
       21 CALL                             R5 2 1
       22 GETTABLEKS                       R8 R2 K5 ["Clipboard"]
       24 GETTABLEKS                       R7 R8 K6 ["Attribute"]
       26 JUMPIFNOTEQKNIL                  R7 ; [+2]
       28 LOADB                            R6 0 +1
       29 LOADB                            R6 1
       30 GETUPVAL                         R8 0
       31 GETUPVAL                         R9 1
       32 MOVE                             R12 R9
       33 NAMECALL                         R10 R8 K2 ["GetAttribute"]
       35 CALL                             R10 2 1
       36 GETUPVAL                         R12 4
       37 GETTABLEKS                       R11 R12 K7 ["parseAttributeName"]
       39 MOVE                             R12 R10
       40 CALL                             R11 1 1
       41 JUMPIFNOTEQKNIL                  R11 ; [+2]
       43 LOADB                            R7 0 +1
       44 LOADB                            R7 1
       45 DUPTABLE                         R8 K12 [{"Id", "Text", "Icon", "OnItemClicked"}]
       46 LOADK                            R9 K13 ["UnlinkToken"]
       47 SETTABLEKS                       R9 R8 K8 ["Id"]
       49 LOADK                            R11 K14 ["ContextMenu"]
       50 LOADK                            R12 K13 ["UnlinkToken"]
       51 NAMECALL                         R9 R3 K15 ["getText"]
       53 CALL                             R9 3 1
       54 SETTABLEKS                       R9 R8 K9 ["Text"]
       56 GETUPVAL                         R11 5
       57 GETTABLEKS                       R10 R11 K16 ["Standard"]
       59 GETTABLEKS                       R9 R10 K17 ["TokenSheet"]
       61 CALL                             R9 0 1
       62 SETTABLEKS                       R9 R8 K10 ["Icon"]
       64 NEWCLOSURE                       R9 P1
       65 CAPTURE                          VAL R0
       66 CAPTURE                          UPVAL U6
       67 CAPTURE                          UPVAL U0
       68 CAPTURE                          UPVAL U1
       69 SETTABLEKS                       R9 R8 K11 ["OnItemClicked"]
       71 DUPTABLE                         R9 K12 [{"Id", "Text", "Icon", "OnItemClicked"}]
       72 LOADK                            R10 K18 ["LinkToken"]
       73 SETTABLEKS                       R10 R9 K8 ["Id"]
       75 LOADK                            R12 K14 ["ContextMenu"]
       76 LOADK                            R13 K18 ["LinkToken"]
       77 NAMECALL                         R10 R3 K15 ["getText"]
       79 CALL                             R10 3 1
       80 SETTABLEKS                       R10 R9 K9 ["Text"]
       82 GETUPVAL                         R12 5
       83 GETTABLEKS                       R11 R12 K16 ["Standard"]
       85 GETTABLEKS                       R10 R11 K17 ["TokenSheet"]
       87 CALL                             R10 0 1
       88 SETTABLEKS                       R10 R9 K10 ["Icon"]
       90 NEWCLOSURE                       R10 P2
       91 CAPTURE                          VAL R0
       92 CAPTURE                          UPVAL U3
       93 CAPTURE                          UPVAL U0
       94 CAPTURE                          UPVAL U1
       95 SETTABLEKS                       R10 R9 K11 ["OnItemClicked"]
       97 NEWTABLE                         R10 0 6
       99 DUPTABLE                         R11 K20 [{"Id", "Text", "Children"}]
      100 LOADK                            R12 K21 ["ChangeType"]
      101 SETTABLEKS                       R12 R11 K8 ["Id"]
      103 LOADK                            R14 K14 ["ContextMenu"]
      104 LOADK                            R15 K21 ["ChangeType"]
      105 NAMECALL                         R12 R3 K15 ["getText"]
      107 CALL                             R12 3 1
      108 SETTABLEKS                       R12 R11 K9 ["Text"]
      110 SETTABLEKS                       R5 R11 K19 ["Children"]
      112 JUMPIFNOT                        R7 ; [+2]
      113 MOVE                             R12 R8
      114 JUMP                             ; [+1]
      115 MOVE                             R12 R9
      116 DUPTABLE                         R13 K12 [{"Id", "Text", "Icon", "OnItemClicked"}]
      117 LOADK                            R14 K22 ["Copy"]
      118 SETTABLEKS                       R14 R13 K8 ["Id"]
      120 LOADK                            R16 K14 ["ContextMenu"]
      121 LOADK                            R17 K22 ["Copy"]
      122 NAMECALL                         R14 R3 K15 ["getText"]
      124 CALL                             R14 3 1
      125 SETTABLEKS                       R14 R13 K9 ["Text"]
      127 GETUPVAL                         R15 5
      128 GETTABLEKS                       R14 R15 K23 ["copy"]
      130 CALL                             R14 0 1
      131 SETTABLEKS                       R14 R13 K10 ["Icon"]
      133 NEWCLOSURE                       R14 P3
      134 CAPTURE                          VAL R0
      135 CAPTURE                          UPVAL U7
      136 CAPTURE                          UPVAL U1
      137 CAPTURE                          VAL R4
      138 SETTABLEKS                       R14 R13 K11 ["OnItemClicked"]
      140 DUPTABLE                         R14 K25 [{"Id", "Text", "Enabled", "Icon", "OnItemClicked"}]
      141 LOADK                            R15 K26 ["Paste"]
      142 SETTABLEKS                       R15 R14 K8 ["Id"]
      144 LOADK                            R17 K14 ["ContextMenu"]
      145 LOADK                            R18 K26 ["Paste"]
      146 NAMECALL                         R15 R3 K15 ["getText"]
      148 CALL                             R15 3 1
      149 SETTABLEKS                       R15 R14 K9 ["Text"]
      151 SETTABLEKS                       R6 R14 K24 ["Enabled"]
      153 GETUPVAL                         R16 5
      154 GETTABLEKS                       R15 R16 K27 ["paste"]
      156 CALL                             R15 0 1
      157 SETTABLEKS                       R15 R14 K10 ["Icon"]
      159 NEWCLOSURE                       R15 P4
      160 CAPTURE                          VAL R0
      161 CAPTURE                          UPVAL U8
      162 CAPTURE                          UPVAL U0
      163 SETTABLEKS                       R15 R14 K11 ["OnItemClicked"]
      165 DUPTABLE                         R15 K12 [{"Id", "Text", "Icon", "OnItemClicked"}]
      166 LOADK                            R16 K28 ["Duplicate"]
      167 SETTABLEKS                       R16 R15 K8 ["Id"]
      169 LOADK                            R18 K14 ["ContextMenu"]
      170 LOADK                            R19 K28 ["Duplicate"]
      171 NAMECALL                         R16 R3 K15 ["getText"]
      173 CALL                             R16 3 1
      174 SETTABLEKS                       R16 R15 K9 ["Text"]
      176 GETUPVAL                         R17 5
      177 GETTABLEKS                       R16 R17 K29 ["duplicate"]
      179 CALL                             R16 0 1
      180 SETTABLEKS                       R16 R15 K10 ["Icon"]
      182 NEWCLOSURE                       R16 P5
      183 CAPTURE                          VAL R0
      184 CAPTURE                          UPVAL U9
      185 CAPTURE                          UPVAL U0
      186 CAPTURE                          UPVAL U1
      187 SETTABLEKS                       R16 R15 K11 ["OnItemClicked"]
      189 DUPTABLE                         R16 K12 [{"Id", "Text", "Icon", "OnItemClicked"}]
      190 LOADK                            R17 K30 ["Delete"]
      191 SETTABLEKS                       R17 R16 K8 ["Id"]
      193 LOADK                            R19 K14 ["ContextMenu"]
      194 LOADK                            R20 K30 ["Delete"]
      195 NAMECALL                         R17 R3 K15 ["getText"]
      197 CALL                             R17 3 1
      198 SETTABLEKS                       R17 R16 K9 ["Text"]
      200 GETUPVAL                         R18 5
      201 GETTABLEKS                       R17 R18 K31 ["delete"]
      203 CALL                             R17 0 1
      204 SETTABLEKS                       R17 R16 K10 ["Icon"]
      206 NEWCLOSURE                       R17 P6
      207 CAPTURE                          VAL R0
      208 CAPTURE                          UPVAL U10
      209 CAPTURE                          UPVAL U0
      210 CAPTURE                          UPVAL U1
      211 SETTABLEKS                       R17 R16 K11 ["OnItemClicked"]
      213 SETLIST                          R10 R11 6 [1]
      215 DUPTABLE                         R11 K32 [{"Id", "Children"}]
      216 LOADK                            R12 K33 ["Token"]
      217 SETTABLEKS                       R12 R11 K8 ["Id"]
      219 SETTABLEKS                       R10 R11 K19 ["Children"]
      221 GETUPVAL                         R13 2
      222 GETTABLEKS                       R12 R13 K34 ["trackClicks"]
      224 MOVE                             R13 R11
      225 GETTABLEKS                       R14 R1 K35 ["Telemetry"]
      227 CALL                             R12 2 0
      228 GETUPVAL                         R13 2
      229 GETTABLEKS                       R12 R13 K36 ["showContextMenu"]
      231 GETTABLEKS                       R13 R1 K37 ["Plugin"]
      233 MOVE                             R14 R11
      234 CALL                             R12 2 0
      235 RETURN                           R0 0

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
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R4 R0 K5 ["Src"]
       15 GETTABLEKS                       R3 R4 K6 ["Reducers"]
       17 GETTABLEKS                       R2 R3 K7 ["RootReducer"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R5 R0 K5 ["Src"]
       24 GETTABLEKS                       R4 R5 K8 ["Util"]
       26 GETTABLEKS                       R3 R4 K9 ["MenuHelpers"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K4 [require]
       31 GETTABLEKS                       R6 R0 K5 ["Src"]
       33 GETTABLEKS                       R5 R6 K8 ["Util"]
       35 GETTABLEKS                       R4 R5 K10 ["TokenHelpers"]
       37 CALL                             R3 1 1
       38 GETIMPORT                        R4 K4 [require]
       40 GETTABLEKS                       R7 R0 K5 ["Src"]
       42 GETTABLEKS                       R6 R7 K11 ["Resources"]
       44 GETTABLEKS                       R5 R6 K12 ["ModernIcons"]
       46 CALL                             R4 1 1
       47 GETTABLEKS                       R6 R0 K5 ["Src"]
       49 GETTABLEKS                       R5 R6 K13 ["Actions"]
       51 GETIMPORT                        R6 K4 [require]
       53 GETTABLEKS                       R8 R5 K14 ["Clipboard"]
       55 GETTABLEKS                       R7 R8 K15 ["CopyAttributeToClipboard"]
       57 CALL                             R6 1 1
       58 GETTABLEKS                       R8 R0 K5 ["Src"]
       60 GETTABLEKS                       R7 R8 K16 ["Thunks"]
       62 GETIMPORT                        R8 K4 [require]
       64 GETTABLEKS                       R10 R7 K17 ["Change"]
       66 GETTABLEKS                       R9 R10 K18 ["DuplicateAttribute"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K4 [require]
       71 GETTABLEKS                       R11 R7 K17 ["Change"]
       73 GETTABLEKS                       R10 R11 K19 ["PasteStyleInstanceAttribute"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K4 [require]
       78 GETTABLEKS                       R12 R7 K17 ["Change"]
       80 GETTABLEKS                       R11 R12 K20 ["SetStyleSheetTokenType"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K4 [require]
       85 GETTABLEKS                       R13 R7 K17 ["Change"]
       87 GETTABLEKS                       R12 R13 K21 ["SetStyleInstanceAttribute"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K4 [require]
       92 GETTABLEKS                       R14 R7 K17 ["Change"]
       94 GETTABLEKS                       R13 R14 K22 ["UnlinkStyleSheetAttributeTokenReference"]
       96 CALL                             R12 1 1
       97 GETIMPORT                        R13 K4 [require]
       99 GETTABLEKS                       R15 R0 K5 ["Src"]
      101 GETTABLEKS                       R14 R15 K23 ["Types"]
      103 CALL                             R13 1 1
      104 GETIMPORT                        R14 K4 [require]
      106 GETTABLEKS                       R17 R0 K5 ["Src"]
      108 GETTABLEKS                       R16 R17 K16 ["Thunks"]
      110 GETTABLEKS                       R15 R16 K23 ["Types"]
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
