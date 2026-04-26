PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 1
        2 CALL                             R1 1 0
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["onFocused"]
        6 JUMPIFNOT                        R1 ; [+4]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R1 R2 K0 ["onFocused"]
       10 CALL                             R1 0 0
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R1 R2 K1 ["current"]
       14 JUMPIFNOT                        R1 ; [+3]
       15 NAMECALL                         R2 R1 K2 ["ReleaseFocus"]
       17 CALL                             R2 1 0
       18 GETUPVAL                         R3 3
       19 GETTABLEKS                       R2 R3 K1 ["current"]
       21 JUMPIFNOT                        R2 ; [+3]
       22 NAMECALL                         R3 R2 K3 ["CaptureFocus"]
       24 CALL                             R3 1 0
       25 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 LOADB                            R4 0
        2 CALL                             R3 1 0
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K0 ["onFocusLost"]
        6 JUMPIFNOT                        R3 ; [+4]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R3 R4 K0 ["onFocusLost"]
       10 CALL                             R3 0 0
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R3 R4 K1 ["submitAssetId"]
       14 JUMPIFEQKNIL                     R3 ; [+15]
       16 GETUPVAL                         R4 2
       17 GETTABLEKS                       R3 R4 K2 ["assetIdFromUri"]
       19 GETTABLEKS                       R4 R0 K3 ["Text"]
       21 CALL                             R3 1 1
       22 JUMPIFNOTEQKNIL                  R3 ; [+2]
       24 RETURN                           R0 0
       25 GETUPVAL                         R5 1
       26 GETTABLEKS                       R4 R5 K1 ["submitAssetId"]
       28 MOVE                             R5 R3
       29 CALL                             R4 1 0
       30 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["Text"]
        3 GETTABLEKS                       R3 R0 K0 ["Text"]
        5 LENGTH                           R2 R3
        6 ADDK                             R1 R2 K1 [1]
        7 SETTABLEKS                       R1 R0 K2 ["CursorPosition"]
        9 LOADN                            R1 14
       10 SETTABLEKS                       R1 R0 K3 ["SelectionStart"]
       12 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K1 ["useRef"]
        8 LOADNIL                          R4
        9 CALL                             R3 1 1
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R4 R5 K1 ["useRef"]
       13 LOADNIL                          R5
       14 CALL                             R4 1 1
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R5 R6 K2 ["useCallback"]
       18 NEWCLOSURE                       R6 P0
       19 CAPTURE                          VAL R2
       20 CAPTURE                          VAL R0
       21 CAPTURE                          VAL R3
       22 CAPTURE                          VAL R4
       23 NEWTABLE                         R7 0 1
       25 GETTABLEKS                       R8 R0 K3 ["onFocused"]
       27 SETLIST                          R7 R8 1 [1]
       29 CALL                             R5 2 1
       30 GETUPVAL                         R7 0
       31 GETTABLEKS                       R6 R7 K2 ["useCallback"]
       33 NEWCLOSURE                       R7 P1
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R0
       36 CAPTURE                          UPVAL U1
       37 NEWTABLE                         R8 0 2
       39 GETTABLEKS                       R9 R0 K4 ["onFocusLost"]
       41 GETTABLEKS                       R10 R0 K5 ["submitAssetId"]
       43 SETLIST                          R8 R9 2 [1]
       45 CALL                             R6 2 1
       46 GETTABLEKS                       R8 R0 K6 ["asset"]
       48 JUMPIFNOT                        R8 ; [+10]
       49 LOADK                            R8 K7 ["rbxassetid://%*"]
       50 GETTABLEKS                       R11 R0 K6 ["asset"]
       52 GETTABLEKS                       R10 R11 K8 ["id"]
       54 NAMECALL                         R8 R8 K9 ["format"]
       56 CALL                             R8 2 1
       57 MOVE                             R7 R8
       58 JUMP                             ; [+1]
       59 LOADK                            R7 K10 ["rbxassetid://"]
       60 GETUPVAL                         R9 0
       61 GETTABLEKS                       R8 R9 K2 ["useCallback"]
       63 NEWCLOSURE                       R9 P2
       64 CAPTURE                          VAL R7
       65 NEWTABLE                         R10 0 1
       67 MOVE                             R11 R7
       68 SETLIST                          R10 R11 1 [1]
       70 CALL                             R8 2 1
       71 GETUPVAL                         R9 2
       72 CALL                             R9 0 1
       73 GETTABLEKS                       R12 R9 K11 ["Color"]
       75 GETTABLEKS                       R11 R12 K12 ["Content"]
       77 GETTABLEKS                       R10 R11 K13 ["Default"]
       79 GETTABLEKS                       R13 R9 K14 ["Inverse"]
       81 GETTABLEKS                       R12 R13 K12 ["Content"]
       83 GETTABLEKS                       R11 R12 K15 ["Muted"]
       85 LOADK                            R13 K16 ["#%*"]
       86 GETTABLEKS                       R15 R10 K17 ["Color3"]
       88 NAMECALL                         R15 R15 K18 ["ToHex"]
       90 CALL                             R15 1 1
       91 NAMECALL                         R13 R13 K9 ["format"]
       93 CALL                             R13 2 1
       94 MOVE                             R12 R13
       95 LOADK                            R14 K16 ["#%*"]
       96 GETTABLEKS                       R16 R11 K17 ["Color3"]
       98 NAMECALL                         R16 R16 K18 ["ToHex"]
      100 CALL                             R16 1 1
      101 NAMECALL                         R14 R14 K9 ["format"]
      103 CALL                             R14 2 1
      104 MOVE                             R13 R14
      105 LOADNIL                          R14
      106 GETTABLEKS                       R15 R0 K6 ["asset"]
      108 JUMPIFNOT                        R15 ; [+26]
      109 LOADK                            R17 K19 ["<font color=\"%*\" transparency=\"%*\">%*</font>"]
      110 MOVE                             R19 R12
      111 GETTABLEKS                       R20 R10 K20 ["Transparency"]
      113 GETTABLEKS                       R22 R0 K6 ["asset"]
      115 GETTABLEKS                       R21 R22 K21 ["name"]
      117 NAMECALL                         R17 R17 K9 ["format"]
      119 CALL                             R17 4 1
      120 MOVE                             R15 R17
      121 LOADK                            R17 K22 [" <font color=\"%*\" transparency=\"%*\">(%*)</font>"]
      122 MOVE                             R19 R13
      123 GETTABLEKS                       R20 R11 K20 ["Transparency"]
      125 GETTABLEKS                       R22 R0 K6 ["asset"]
      127 GETTABLEKS                       R21 R22 K8 ["id"]
      129 NAMECALL                         R17 R17 K9 ["format"]
      131 CALL                             R17 4 1
      132 MOVE                             R16 R17
      133 CONCAT                           R14 R15 R16
      134 JUMP                             ; [+1]
      135 LOADK                            R14 K23 [""]
      136 GETUPVAL                         R15 3
      137 GETUPVAL                         R17 0
      138 GETTABLEKS                       R16 R17 K24 ["Fragment"]
      140 NEWTABLE                         R17 0 0
      142 DUPTABLE                         R18 K27 [{"Display", "Input"}]
      143 GETUPVAL                         R19 3
      144 GETUPVAL                         R20 4
      145 DUPTABLE                         R21 K33 [{"size", "text", "richText", "visible", "onFocused", "textBoxRef"}]
      146 GETIMPORT                        R22 K36 [UDim2.fromScale]
      148 LOADN                            R23 1
      149 LOADN                            R24 1
      150 CALL                             R22 2 1
      151 SETTABLEKS                       R22 R21 K28 ["size"]
      153 SETTABLEKS                       R14 R21 K29 ["text"]
      155 LOADB                            R22 1
      156 SETTABLEKS                       R22 R21 K30 ["richText"]
      158 NOT                              R22 R1
      159 SETTABLEKS                       R22 R21 K31 ["visible"]
      161 SETTABLEKS                       R5 R21 K3 ["onFocused"]
      163 SETTABLEKS                       R3 R21 K32 ["textBoxRef"]
      165 CALL                             R19 2 1
      166 SETTABLEKS                       R19 R18 K25 ["Display"]
      168 GETUPVAL                         R19 3
      169 GETUPVAL                         R20 4
      170 DUPTABLE                         R21 K37 [{"size", "text", "visible", "textBoxRef", "onFocused", "onFocusLost"}]
      171 GETIMPORT                        R22 K36 [UDim2.fromScale]
      173 LOADN                            R23 1
      174 LOADN                            R24 1
      175 CALL                             R22 2 1
      176 SETTABLEKS                       R22 R21 K28 ["size"]
      178 LOADK                            R22 K23 [""]
      179 SETTABLEKS                       R22 R21 K29 ["text"]
      181 SETTABLEKS                       R1 R21 K31 ["visible"]
      183 SETTABLEKS                       R4 R21 K32 ["textBoxRef"]
      185 SETTABLEKS                       R8 R21 K3 ["onFocused"]
      187 SETTABLEKS                       R6 R21 K4 ["onFocusLost"]
      189 CALL                             R19 2 1
      190 SETTABLEKS                       R19 R18 K26 ["Input"]
      192 CALL                             R15 3 -1
      193 RETURN                           R15 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R4 R0 K7 ["Util"]
       13 GETTABLEKS                       R3 R4 K8 ["AssetUri"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R5 R0 K4 ["Parent"]
       20 GETTABLEKS                       R4 R5 K9 ["Foundation"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R7 R0 K10 ["Components"]
       27 GETTABLEKS                       R6 R7 K7 ["Util"]
       29 GETTABLEKS                       R5 R6 K11 ["PlaceholderTextBox"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R6 R1 K12 ["React"]
       36 CALL                             R5 1 1
       37 GETTABLEKS                       R6 R5 K13 ["createElement"]
       39 GETTABLEKS                       R8 R3 K14 ["Hooks"]
       41 GETTABLEKS                       R7 R8 K15 ["useTokens"]
       43 DUPCLOSURE                       R8 K16 [PROTO_3]
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R7
       47 CAPTURE                          VAL R6
       48 CAPTURE                          VAL R4
       49 RETURN                           R8 1
