PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 1
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["onFocused"]
        6 JUMPIFNOT                        R1 ; [+4]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K0 ["onFocused"]
       10 CALL                             R1 0 0
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R1 R1 K1 ["current"]
       14 JUMPIFNOT                        R1 ; [+3]
       15 NAMECALL                         R2 R1 K2 ["ReleaseFocus"]
       17 CALL                             R2 1 0
       18 GETUPVAL                         R2 3
       19 GETTABLEKS                       R2 R2 K1 ["current"]
       21 JUMPIFNOT                        R2 ; [+3]
       22 NAMECALL                         R3 R2 K3 ["CaptureFocus"]
       24 CALL                             R3 1 0
       25 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 LOADB                            R4 0
        2 CALL                             R3 1 0
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["onFocusLost"]
        6 JUMPIFNOT                        R3 ; [+4]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K0 ["onFocusLost"]
       10 CALL                             R3 0 0
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K1 ["submitContent"]
       14 GETTABLEKS                       R4 R0 K2 ["Text"]
       16 CALL                             R3 1 0
       17 RETURN                           R0 0

PROTO_2:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["asset"]
        4 JUMPIFNOTEQKNIL                  R2 ; [+7]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K1 ["assetUriPrefix"]
        9 CALL                             R2 0 1
       10 MOVE                             R1 R2
       11 JUMP                             ; [+44]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K0 ["asset"]
       15 GETTABLEKS                       R2 R2 K2 ["type"]
       17 JUMPIFNOTEQKS                    R2 K3 ["Local"] ; [+7]
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R2 R2 K0 ["asset"]
       22 GETTABLEKS                       R1 R2 K4 ["path"]
       24 JUMP                             ; [+31]
       25 GETUPVAL                         R2 0
       26 GETTABLEKS                       R2 R2 K0 ["asset"]
       28 GETTABLEKS                       R2 R2 K2 ["type"]
       30 JUMPIFNOTEQKS                    R2 K5 ["Published"] ; [+12]
       32 GETUPVAL                         R2 1
       33 GETTABLEKS                       R2 R2 K6 ["assetUriFromId"]
       35 GETUPVAL                         R3 0
       36 GETTABLEKS                       R3 R3 K0 ["asset"]
       38 GETTABLEKS                       R3 R3 K7 ["id"]
       40 CALL                             R2 1 1
       41 MOVE                             R1 R2
       42 JUMP                             ; [+13]
       43 GETIMPORT                        R2 K9 [error]
       45 LOADK                            R4 K10 ["Unsupported asset type: %*"]
       46 GETUPVAL                         R6 0
       47 GETTABLEKS                       R6 R6 K0 ["asset"]
       49 GETTABLEKS                       R6 R6 K2 ["type"]
       51 NAMECALL                         R4 R4 K11 ["format"]
       53 CALL                             R4 2 1
       54 MOVE                             R3 R4
       55 CALL                             R2 1 0
       56 SETTABLEKS                       R1 R0 K12 ["Text"]
       58 LENGTH                           R3 R1
       59 ADDK                             R2 R3 K13 [1]
       60 SETTABLEKS                       R2 R0 K14 ["CursorPosition"]
       62 GETUPVAL                         R3 1
       63 GETTABLEKS                       R3 R3 K1 ["assetUriPrefix"]
       65 CALL                             R3 0 1
       66 LENGTH                           R2 R3
       67 GETUPVAL                         R3 1
       68 GETTABLEKS                       R3 R3 K15 ["hasAssetUriPrefix"]
       70 MOVE                             R4 R1
       71 CALL                             R3 1 1
       72 JUMPIFNOT                        R3 ; [+4]
       73 ADDK                             R3 R2 K13 [1]
       74 SETTABLEKS                       R3 R0 K16 ["SelectionStart"]
       76 RETURN                           R0 0
       77 LOADN                            R3 1
       78 SETTABLEKS                       R3 R0 K16 ["SelectionStart"]
       80 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["useRef"]
        8 LOADNIL                          R4
        9 CALL                             R3 1 1
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K1 ["useRef"]
       13 LOADNIL                          R5
       14 CALL                             R4 1 1
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R5 R5 K2 ["useCallback"]
       18 NEWCLOSURE                       R6 P0
       19 CAPTURE                          VAL R2
       20 CAPTURE                          VAL R0
       21 CAPTURE                          VAL R3
       22 CAPTURE                          VAL R4
       23 NEWTABLE                         R7 0 1
       25 GETTABLEKS                       R8 R0 K3 ["onFocused"]
       27 SETLIST                          R7 R8 1 [1]
       29 CALL                             R5 2 1
       30 GETUPVAL                         R6 0
       31 GETTABLEKS                       R6 R6 K2 ["useCallback"]
       33 NEWCLOSURE                       R7 P1
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R0
       36 NEWTABLE                         R8 0 2
       38 GETTABLEKS                       R9 R0 K4 ["onFocusLost"]
       40 GETTABLEKS                       R10 R0 K5 ["submitContent"]
       42 SETLIST                          R8 R9 2 [1]
       44 CALL                             R6 2 1
       45 GETUPVAL                         R7 0
       46 GETTABLEKS                       R7 R7 K2 ["useCallback"]
       48 NEWCLOSURE                       R8 P2
       49 CAPTURE                          VAL R0
       50 CAPTURE                          UPVAL U1
       51 NEWTABLE                         R9 0 1
       53 GETTABLEKS                       R10 R0 K6 ["asset"]
       55 SETLIST                          R9 R10 1 [1]
       57 CALL                             R7 2 1
       58 GETUPVAL                         R8 2
       59 CALL                             R8 0 1
       60 GETTABLEKS                       R9 R8 K7 ["Color"]
       62 GETTABLEKS                       R9 R9 K8 ["Content"]
       64 GETTABLEKS                       R9 R9 K9 ["Default"]
       66 GETTABLEKS                       R10 R8 K10 ["Inverse"]
       68 GETTABLEKS                       R10 R10 K8 ["Content"]
       70 GETTABLEKS                       R10 R10 K11 ["Muted"]
       72 LOADK                            R12 K12 ["#%*"]
       73 GETTABLEKS                       R14 R9 K13 ["Color3"]
       75 NAMECALL                         R14 R14 K14 ["ToHex"]
       77 CALL                             R14 1 1
       78 NAMECALL                         R12 R12 K15 ["format"]
       80 CALL                             R12 2 1
       81 MOVE                             R11 R12
       82 LOADK                            R13 K12 ["#%*"]
       83 GETTABLEKS                       R15 R10 K13 ["Color3"]
       85 NAMECALL                         R15 R15 K14 ["ToHex"]
       87 CALL                             R15 1 1
       88 NAMECALL                         R13 R13 K15 ["format"]
       90 CALL                             R13 2 1
       91 MOVE                             R12 R13
       92 LOADNIL                          R13
       93 GETTABLEKS                       R14 R0 K6 ["asset"]
       95 JUMPIFNOTEQKNIL                  R14 ; [+3]
       97 LOADK                            R13 K16 [""]
       98 JUMP                             ; [+65]
       99 GETTABLEKS                       R14 R0 K6 ["asset"]
      101 GETTABLEKS                       R14 R14 K17 ["type"]
      103 JUMPIFNOTEQKS                    R14 K18 ["Local"] ; [+14]
      105 LOADK                            R14 K19 ["<font color=\"%*\" transparency=\"%*\">%*</font>"]
      106 MOVE                             R16 R11
      107 GETTABLEKS                       R17 R9 K20 ["Transparency"]
      109 GETTABLEKS                       R18 R0 K6 ["asset"]
      111 GETTABLEKS                       R18 R18 K21 ["path"]
      113 NAMECALL                         R14 R14 K15 ["format"]
      115 CALL                             R14 4 1
      116 MOVE                             R13 R14
      117 JUMP                             ; [+46]
      118 GETTABLEKS                       R14 R0 K6 ["asset"]
      120 GETTABLEKS                       R14 R14 K17 ["type"]
      122 JUMPIFNOTEQKS                    R14 K22 ["Published"] ; [+29]
      124 LOADK                            R15 K19 ["<font color=\"%*\" transparency=\"%*\">%*</font>"]
      125 MOVE                             R17 R11
      126 GETTABLEKS                       R18 R9 K20 ["Transparency"]
      128 GETTABLEKS                       R19 R0 K6 ["asset"]
      130 GETTABLEKS                       R19 R19 K23 ["name"]
      132 NAMECALL                         R15 R15 K15 ["format"]
      134 CALL                             R15 4 1
      135 MOVE                             R14 R15
      136 LOADK                            R16 K24 [" <font color=\"%*\" transparency=\"%*\">(%*)</font>"]
      137 MOVE                             R18 R12
      138 GETTABLEKS                       R19 R10 K20 ["Transparency"]
      140 GETTABLEKS                       R20 R0 K6 ["asset"]
      142 GETTABLEKS                       R20 R20 K25 ["id"]
      144 NAMECALL                         R16 R16 K15 ["format"]
      146 CALL                             R16 4 1
      147 MOVE                             R15 R16
      148 MOVE                             R16 R14
      149 MOVE                             R17 R15
      150 CONCAT                           R13 R16 R17
      151 JUMP                             ; [+12]
      152 GETIMPORT                        R14 K27 [error]
      154 LOADK                            R16 K28 ["Unsupported asset type: %*"]
      155 GETTABLEKS                       R18 R0 K6 ["asset"]
      157 GETTABLEKS                       R18 R18 K17 ["type"]
      159 NAMECALL                         R16 R16 K15 ["format"]
      161 CALL                             R16 2 1
      162 MOVE                             R15 R16
      163 CALL                             R14 1 0
      164 GETUPVAL                         R14 3
      165 GETUPVAL                         R15 0
      166 GETTABLEKS                       R15 R15 K29 ["Fragment"]
      168 NEWTABLE                         R16 0 0
      170 DUPTABLE                         R17 K32 [{"Display", "Input"}]
      171 GETUPVAL                         R18 3
      172 GETUPVAL                         R19 4
      173 DUPTABLE                         R20 K38 [{"size", "text", "richText", "visible", "textBoxRef", "onFocused"}]
      174 GETIMPORT                        R21 K41 [UDim2.fromScale]
      176 LOADN                            R22 1
      177 LOADN                            R23 1
      178 CALL                             R21 2 1
      179 SETTABLEKS                       R21 R20 K33 ["size"]
      181 SETTABLEKS                       R13 R20 K34 ["text"]
      183 LOADB                            R21 1
      184 SETTABLEKS                       R21 R20 K35 ["richText"]
      186 NOT                              R21 R1
      187 SETTABLEKS                       R21 R20 K36 ["visible"]
      189 SETTABLEKS                       R3 R20 K37 ["textBoxRef"]
      191 SETTABLEKS                       R5 R20 K3 ["onFocused"]
      193 CALL                             R18 2 1
      194 SETTABLEKS                       R18 R17 K30 ["Display"]
      196 GETUPVAL                         R18 3
      197 GETUPVAL                         R19 4
      198 DUPTABLE                         R20 K42 [{"size", "text", "visible", "textBoxRef", "onFocused", "onFocusLost"}]
      199 GETIMPORT                        R21 K41 [UDim2.fromScale]
      201 LOADN                            R22 1
      202 LOADN                            R23 1
      203 CALL                             R21 2 1
      204 SETTABLEKS                       R21 R20 K33 ["size"]
      206 LOADK                            R21 K16 [""]
      207 SETTABLEKS                       R21 R20 K34 ["text"]
      209 SETTABLEKS                       R1 R20 K36 ["visible"]
      211 SETTABLEKS                       R4 R20 K37 ["textBoxRef"]
      213 SETTABLEKS                       R7 R20 K3 ["onFocused"]
      215 SETTABLEKS                       R6 R20 K4 ["onFocusLost"]
      217 CALL                             R18 2 1
      218 SETTABLEKS                       R18 R17 K31 ["Input"]
      220 CALL                             R14 3 -1
      221 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Util"]
       13 GETTABLEKS                       R3 R3 K8 ["AssetUri"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R0 K4 ["Parent"]
       20 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R0 K10 ["Components"]
       27 GETTABLEKS                       R5 R5 K7 ["Util"]
       29 GETTABLEKS                       R5 R5 K11 ["PlaceholderTextBox"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R6 R1 K12 ["React"]
       36 CALL                             R5 1 1
       37 GETTABLEKS                       R6 R5 K13 ["createElement"]
       39 GETTABLEKS                       R7 R3 K14 ["Hooks"]
       41 GETTABLEKS                       R7 R7 K15 ["useTokens"]
       43 DUPCLOSURE                       R8 K16 [PROTO_3]
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R7
       47 CAPTURE                          VAL R6
       48 CAPTURE                          VAL R4
       49 RETURN                           R8 1
