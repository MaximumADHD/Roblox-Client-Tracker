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
       11 JUMP                             ; [+43]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K0 ["asset"]
       15 GETTABLEKS                       R2 R2 K2 ["type"]
       17 JUMPIFNOTEQKS                    R2 K3 ["Local"] ; [+7]
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R2 R2 K0 ["asset"]
       22 GETTABLEKS                       R1 R2 K4 ["path"]
       24 JUMP                             ; [+30]
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
       42 JUMP                             ; [+12]
       43 GETIMPORT                        R2 K9 [error]
       45 LOADK                            R3 K10 ["Unsupported asset type: %*"]
       46 GETUPVAL                         R5 0
       47 GETTABLEKS                       R5 R5 K0 ["asset"]
       49 GETTABLEKS                       R5 R5 K2 ["type"]
       51 NAMECALL                         R3 R3 K11 ["format"]
       53 CALL                             R3 2 1
       54 CALL                             R2 1 0
       55 SETTABLEKS                       R1 R0 K12 ["Text"]
       57 LENGTH                           R3 R1
       58 ADDK                             R2 R3 K13 [1]
       59 SETTABLEKS                       R2 R0 K14 ["CursorPosition"]
       61 GETUPVAL                         R3 1
       62 GETTABLEKS                       R3 R3 K1 ["assetUriPrefix"]
       64 CALL                             R3 0 1
       65 LENGTH                           R2 R3
       66 GETUPVAL                         R3 2
       67 CALL                             R3 0 1
       68 JUMPIFNOT                        R3 ; [+10]
       69 GETUPVAL                         R3 1
       70 GETTABLEKS                       R3 R3 K1 ["assetUriPrefix"]
       72 CALL                             R3 0 1
       73 JUMPIFNOTEQ                      R1 R3 ; [+5]
       75 LOADN                            R3 -1
       76 SETTABLEKS                       R3 R0 K15 ["SelectionStart"]
       78 RETURN                           R0 0
       79 GETUPVAL                         R3 1
       80 GETTABLEKS                       R3 R3 K16 ["hasAssetUriPrefix"]
       82 MOVE                             R4 R1
       83 CALL                             R3 1 1
       84 JUMPIFNOT                        R3 ; [+4]
       85 ADDK                             R3 R2 K13 [1]
       86 SETTABLEKS                       R3 R0 K15 ["SelectionStart"]
       88 RETURN                           R0 0
       89 LOADN                            R3 1
       90 SETTABLEKS                       R3 R0 K15 ["SelectionStart"]
       92 RETURN                           R0 0

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
       51 CAPTURE                          UPVAL U2
       52 NEWTABLE                         R9 0 1
       54 GETTABLEKS                       R10 R0 K6 ["asset"]
       56 SETLIST                          R9 R10 1 [1]
       58 CALL                             R7 2 1
       59 GETUPVAL                         R8 3
       60 CALL                             R8 0 1
       61 GETTABLEKS                       R9 R8 K7 ["Color"]
       63 GETTABLEKS                       R9 R9 K8 ["Content"]
       65 GETTABLEKS                       R9 R9 K9 ["Default"]
       67 GETTABLEKS                       R10 R8 K10 ["Inverse"]
       69 GETTABLEKS                       R10 R10 K8 ["Content"]
       71 GETTABLEKS                       R10 R10 K11 ["Muted"]
       73 LOADK                            R11 K12 ["#%*"]
       74 GETTABLEKS                       R13 R9 K13 ["Color3"]
       76 NAMECALL                         R13 R13 K14 ["ToHex"]
       78 CALL                             R13 1 1
       79 NAMECALL                         R11 R11 K15 ["format"]
       81 CALL                             R11 2 1
       82 LOADK                            R12 K12 ["#%*"]
       83 GETTABLEKS                       R14 R10 K13 ["Color3"]
       85 NAMECALL                         R14 R14 K14 ["ToHex"]
       87 CALL                             R14 1 1
       88 NAMECALL                         R12 R12 K15 ["format"]
       90 CALL                             R12 2 1
       91 GETUPVAL                         R13 4
       92 CALL                             R13 0 1
       93 JUMPIFNOT                        R13 ; [+2]
       94 GETTABLEKS                       R13 R0 K16 ["isEmpty"]
       96 LOADNIL                          R14
       97 GETTABLEKS                       R15 R0 K6 ["asset"]
       99 JUMPIFNOTEQKNIL                  R15 ; [+3]
      101 LOADK                            R14 K17 [""]
      102 JUMP                             ; [+62]
      103 GETTABLEKS                       R15 R0 K6 ["asset"]
      105 GETTABLEKS                       R15 R15 K18 ["type"]
      107 JUMPIFNOTEQKS                    R15 K19 ["Local"] ; [+14]
      109 LOADK                            R15 K20 ["<font color=\"%*\" transparency=\"%*\">%*</font>"]
      110 MOVE                             R17 R11
      111 GETTABLEKS                       R18 R9 K21 ["Transparency"]
      113 GETTABLEKS                       R19 R0 K6 ["asset"]
      115 GETTABLEKS                       R19 R19 K22 ["path"]
      117 NAMECALL                         R15 R15 K15 ["format"]
      119 CALL                             R15 4 1
      120 MOVE                             R14 R15
      121 JUMP                             ; [+43]
      122 GETTABLEKS                       R15 R0 K6 ["asset"]
      124 GETTABLEKS                       R15 R15 K18 ["type"]
      126 JUMPIFNOTEQKS                    R15 K23 ["Published"] ; [+27]
      128 LOADK                            R15 K20 ["<font color=\"%*\" transparency=\"%*\">%*</font>"]
      129 MOVE                             R17 R11
      130 GETTABLEKS                       R18 R9 K21 ["Transparency"]
      132 GETTABLEKS                       R19 R0 K6 ["asset"]
      134 GETTABLEKS                       R19 R19 K24 ["name"]
      136 NAMECALL                         R15 R15 K15 ["format"]
      138 CALL                             R15 4 1
      139 LOADK                            R16 K25 [" <font color=\"%*\" transparency=\"%*\">(%*)</font>"]
      140 MOVE                             R18 R12
      141 GETTABLEKS                       R19 R10 K21 ["Transparency"]
      143 GETTABLEKS                       R20 R0 K6 ["asset"]
      145 GETTABLEKS                       R20 R20 K26 ["id"]
      147 NAMECALL                         R16 R16 K15 ["format"]
      149 CALL                             R16 4 1
      150 MOVE                             R17 R15
      151 MOVE                             R18 R16
      152 CONCAT                           R14 R17 R18
      153 JUMP                             ; [+11]
      154 GETIMPORT                        R15 K28 [error]
      156 LOADK                            R16 K29 ["Unsupported asset type: %*"]
      157 GETTABLEKS                       R18 R0 K6 ["asset"]
      159 GETTABLEKS                       R18 R18 K18 ["type"]
      161 NAMECALL                         R16 R16 K15 ["format"]
      163 CALL                             R16 2 1
      164 CALL                             R15 1 0
      165 GETUPVAL                         R15 5
      166 GETUPVAL                         R16 0
      167 GETTABLEKS                       R16 R16 K30 ["Fragment"]
      169 NEWTABLE                         R17 0 0
      171 DUPTABLE                         R18 K33 [{"Display", "Input"}]
      172 GETUPVAL                         R19 5
      173 GETUPVAL                         R20 6
      174 DUPTABLE                         R21 K42 [{["size"], ["text"], ["placeholderText"], ["placeholderColor3"], ["richText"] = True, ["visible"], ["textBoxRef"], ["onFocused"]}]
      175 GETIMPORT                        R22 K45 [UDim2.fromScale]
      177 LOADN                            R23 1
      178 LOADN                            R24 1
      179 CALL                             R22 2 1
      180 SETTABLEKS                       R22 R21 K34 ["size"]
      182 SETTABLEKS                       R14 R21 K35 ["text"]
      184 JUMPIFNOT                        R13 ; [+7]
      185 GETUPVAL                         R22 7
      186 LOADK                            R24 K8 ["Content"]
      187 LOADK                            R25 K46 ["Empty"]
      188 NAMECALL                         R22 R22 K47 ["getText"]
      190 CALL                             R22 3 1
      191 JUMP                             ; [+1]
      192 LOADNIL                          R22
      193 SETTABLEKS                       R22 R21 K36 ["placeholderText"]
      195 JUMPIFNOT                        R13 ; [+3]
      196 GETTABLEKS                       R22 R10 K13 ["Color3"]
      198 JUMP                             ; [+1]
      199 LOADNIL                          R22
      200 SETTABLEKS                       R22 R21 K37 ["placeholderColor3"]
      202 NOT                              R22 R1
      203 SETTABLEKS                       R22 R21 K40 ["visible"]
      205 SETTABLEKS                       R3 R21 K41 ["textBoxRef"]
      207 SETTABLEKS                       R5 R21 K3 ["onFocused"]
      209 CALL                             R19 2 1
      210 SETTABLEKS                       R19 R18 K31 ["Display"]
      212 GETUPVAL                         R19 5
      213 GETUPVAL                         R20 6
      214 DUPTABLE                         R21 K48 [{["size"], ["text"] = "", ["visible"], ["textBoxRef"], ["onFocused"], ["onFocusLost"]}]
      215 GETIMPORT                        R22 K45 [UDim2.fromScale]
      217 LOADN                            R23 1
      218 LOADN                            R24 1
      219 CALL                             R22 2 1
      220 SETTABLEKS                       R22 R21 K34 ["size"]
      222 SETTABLEKS                       R1 R21 K40 ["visible"]
      224 SETTABLEKS                       R4 R21 K41 ["textBoxRef"]
      226 SETTABLEKS                       R7 R21 K3 ["onFocused"]
      228 SETTABLEKS                       R6 R21 K4 ["onFocusLost"]
      230 CALL                             R19 2 1
      231 SETTABLEKS                       R19 R18 K32 ["Input"]
      233 CALL                             R15 3 -1
      234 RETURN                           R15 -1

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
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R7 R0 K13 ["Resources"]
       41 GETTABLEKS                       R7 R7 K14 ["Localization"]
       43 GETTABLEKS                       R7 R7 K15 ["Translator"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K6 [require]
       48 GETTABLEKS                       R8 R0 K16 ["Flags"]
       50 GETTABLEKS                       R8 R8 K17 ["getFFlagPropertiesContentEmptyState"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K6 [require]
       55 GETTABLEKS                       R9 R0 K16 ["Flags"]
       57 GETTABLEKS                       R9 R9 K18 ["getFFlagPropertiesContentPrefixOnlySelectionFix"]
       59 CALL                             R8 1 1
       60 GETTABLEKS                       R9 R5 K19 ["createElement"]
       62 GETTABLEKS                       R10 R3 K20 ["Hooks"]
       64 GETTABLEKS                       R10 R10 K21 ["useTokens"]
       66 DUPCLOSURE                       R11 K22 [PROTO_3]
       67 CAPTURE                          VAL R5
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R8
       70 CAPTURE                          VAL R10
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R9
       73 CAPTURE                          VAL R4
       74 CAPTURE                          VAL R6
       75 RETURN                           R11 1
