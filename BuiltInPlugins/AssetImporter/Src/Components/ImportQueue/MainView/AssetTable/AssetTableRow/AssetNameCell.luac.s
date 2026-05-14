PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["SessionState"]
        5 GETTABLEKS                       R2 R2 K2 ["Invalid"]
        7 JUMPIFNOTEQ                      R1 R2 ; [+11]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K3 ["get"]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K4 ["AvailableImages"]
       15 GETTABLEKS                       R2 R2 K5 ["File"]
       17 CALL                             R1 1 -1
       18 RETURN                           R1 -1
       19 GETTABLEKS                       R1 R0 K6 ["fileType"]
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R2 R2 K7 ["FileType"]
       24 GETTABLEKS                       R2 R2 K8 ["Image"]
       26 JUMPIFNOTEQ                      R1 R2 ; [+9]
       28 GETUPVAL                         R1 2
       29 LOADK                            R3 K9 ["Decal"]
       30 NAMECALL                         R1 R1 K10 ["GetClassIcon"]
       32 CALL                             R1 2 1
       33 GETTABLEKS                       R1 R1 K8 ["Image"]
       35 RETURN                           R1 1
       36 GETTABLEKS                       R1 R0 K6 ["fileType"]
       38 GETUPVAL                         R2 0
       39 GETTABLEKS                       R2 R2 K7 ["FileType"]
       41 GETTABLEKS                       R2 R2 K11 ["Audio"]
       43 JUMPIFNOTEQ                      R1 R2 ; [+9]
       45 GETUPVAL                         R1 2
       46 LOADK                            R3 K12 ["Sound"]
       47 NAMECALL                         R1 R1 K10 ["GetClassIcon"]
       49 CALL                             R1 2 1
       50 GETTABLEKS                       R1 R1 K8 ["Image"]
       52 RETURN                           R1 1
       53 GETTABLEKS                       R1 R0 K6 ["fileType"]
       55 GETUPVAL                         R2 0
       56 GETTABLEKS                       R2 R2 K7 ["FileType"]
       58 GETTABLEKS                       R2 R2 K13 ["Video"]
       60 JUMPIFNOTEQ                      R1 R2 ; [+9]
       62 GETUPVAL                         R1 2
       63 LOADK                            R3 K14 ["VideoFrame"]
       64 NAMECALL                         R1 R1 K10 ["GetClassIcon"]
       66 CALL                             R1 2 1
       67 GETTABLEKS                       R1 R1 K8 ["Image"]
       69 RETURN                           R1 1
       70 GETTABLEKS                       R1 R0 K6 ["fileType"]
       72 GETUPVAL                         R2 0
       73 GETTABLEKS                       R2 R2 K7 ["FileType"]
       75 GETTABLEKS                       R2 R2 K15 ["Scene"]
       77 JUMPIFNOTEQ                      R1 R2 ; [+9]
       79 GETUPVAL                         R1 2
       80 LOADK                            R3 K16 ["Model"]
       81 NAMECALL                         R1 R1 K10 ["GetClassIcon"]
       83 CALL                             R1 2 1
       84 GETTABLEKS                       R1 R1 K8 ["Image"]
       86 RETURN                           R1 1
       87 GETUPVAL                         R1 1
       88 GETTABLEKS                       R1 R1 K3 ["get"]
       90 GETUPVAL                         R2 1
       91 GETTABLEKS                       R2 R2 K4 ["AvailableImages"]
       93 GETTABLEKS                       R2 R2 K5 ["File"]
       95 CALL                             R1 1 -1
       96 RETURN                           R1 -1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["state"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["SessionState"]
        5 GETTABLEKS                       R3 R3 K2 ["Invalid"]
        7 JUMPIFNOTEQ                      R2 R3 ; [+16]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K3 ["get"]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K4 ["AvailableImages"]
       15 GETTABLEKS                       R3 R3 K5 ["Error"]
       17 CALL                             R2 1 1
       18 LOADK                            R5 K5 ["Error"]
       19 LOADK                            R6 K6 ["Header"]
       20 NAMECALL                         R3 R1 K7 ["getText"]
       22 CALL                             R3 3 -1
       23 RETURN                           R2 -1
       24 GETTABLEKS                       R2 R0 K0 ["state"]
       26 GETUPVAL                         R3 0
       27 GETTABLEKS                       R3 R3 K1 ["SessionState"]
       29 GETTABLEKS                       R3 R3 K8 ["Parsed"]
       31 JUMPIFNOTEQ                      R2 R3 ; [+37]
       33 GETTABLEKS                       R2 R0 K9 ["errors"]
       35 LOADN                            R3 0
       36 JUMPIFNOTLT                      R3 R2 ; [+32]
       38 LOADK                            R4 K10 ["AssetImportTree"]
       39 LOADK                            R5 K11 ["Errors"]
       40 NAMECALL                         R2 R1 K7 ["getText"]
       42 CALL                             R2 3 1
       43 GETUPVAL                         R3 1
       44 GETTABLEKS                       R3 R3 K3 ["get"]
       46 GETUPVAL                         R4 1
       47 GETTABLEKS                       R4 R4 K4 ["AvailableImages"]
       49 GETTABLEKS                       R4 R4 K5 ["Error"]
       51 CALL                             R3 1 1
       52 LOADK                            R6 K10 ["AssetImportTree"]
       53 LOADK                            R7 K12 ["DescendantsContain2"]
       54 DUPTABLE                         R8 K15 [{"statusCount", "statusType"}]
       55 GETTABLEKS                       R10 R0 K9 ["errors"]
       57 FASTCALL1                        TOSTRING R10 ; [+2]
       58 GETIMPORT                        R9 K17 [tostring]
       60 CALL                             R9 1 1
       61 SETTABLEKS                       R9 R8 K13 ["statusCount"]
       63 SETTABLEKS                       R2 R8 K14 ["statusType"]
       65 NAMECALL                         R4 R1 K7 ["getText"]
       67 CALL                             R4 4 -1
       68 RETURN                           R3 -1
       69 GETTABLEKS                       R2 R0 K0 ["state"]
       71 GETUPVAL                         R3 0
       72 GETTABLEKS                       R3 R3 K1 ["SessionState"]
       74 GETTABLEKS                       R3 R3 K8 ["Parsed"]
       76 JUMPIFNOTEQ                      R2 R3 ; [+37]
       78 GETTABLEKS                       R2 R0 K18 ["warnings"]
       80 LOADN                            R3 0
       81 JUMPIFNOTLT                      R3 R2 ; [+32]
       83 LOADK                            R4 K10 ["AssetImportTree"]
       84 LOADK                            R5 K19 ["Warnings"]
       85 NAMECALL                         R2 R1 K7 ["getText"]
       87 CALL                             R2 3 1
       88 GETUPVAL                         R3 1
       89 GETTABLEKS                       R3 R3 K3 ["get"]
       91 GETUPVAL                         R4 1
       92 GETTABLEKS                       R4 R4 K4 ["AvailableImages"]
       94 GETTABLEKS                       R4 R4 K20 ["Warning"]
       96 CALL                             R3 1 1
       97 LOADK                            R6 K10 ["AssetImportTree"]
       98 LOADK                            R7 K12 ["DescendantsContain2"]
       99 DUPTABLE                         R8 K15 [{"statusCount", "statusType"}]
      100 GETTABLEKS                       R10 R0 K18 ["warnings"]
      102 FASTCALL1                        TOSTRING R10 ; [+2]
      103 GETIMPORT                        R9 K17 [tostring]
      105 CALL                             R9 1 1
      106 SETTABLEKS                       R9 R8 K13 ["statusCount"]
      108 SETTABLEKS                       R2 R8 K14 ["statusType"]
      110 NAMECALL                         R4 R1 K7 ["getText"]
      112 CALL                             R4 4 -1
      113 RETURN                           R3 -1
      114 LOADNIL                          R2
      115 LOADNIL                          R3
      116 RETURN                           R2 2

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 -1
        4 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["filepath"]
        4 NAMECALL                         R0 R0 K1 ["requestPreview"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["Enums"]
        4 GETTABLEKS                       R3 R3 K1 ["ControlState"]
        6 GETTABLEKS                       R3 R3 K2 ["Hover"]
        8 JUMPIFEQ                         R0 R3 ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETTABLEKS                       R3 R0 K1 ["TableEntry"]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R4 R4 K2 ["useMemo"]
       13 NEWCLOSURE                       R5 P0
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          VAL R3
       16 NEWTABLE                         R6 0 1
       18 MOVE                             R7 R3
       19 SETLIST                          R6 R7 1 [1]
       21 CALL                             R4 2 1
       22 GETUPVAL                         R5 2
       23 GETTABLEKS                       R5 R5 K2 ["useMemo"]
       25 NEWCLOSURE                       R6 P1
       26 CAPTURE                          UPVAL U4
       27 CAPTURE                          VAL R3
       28 CAPTURE                          VAL R1
       29 NEWTABLE                         R7 0 3
       31 GETTABLEKS                       R8 R3 K3 ["state"]
       33 GETTABLEKS                       R9 R3 K4 ["warnings"]
       35 GETTABLEKS                       R10 R3 K5 ["errors"]
       37 SETLIST                          R7 R8 3 [1]
       39 CALL                             R5 2 2
       40 GETUPVAL                         R7 2
       41 GETTABLEKS                       R7 R7 K6 ["useCallback"]
       43 NEWCLOSURE                       R8 P2
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R3
       46 NEWTABLE                         R9 0 2
       48 MOVE                             R10 R2
       49 MOVE                             R11 R3
       50 SETLIST                          R9 R10 2 [1]
       52 CALL                             R7 2 1
       53 GETUPVAL                         R8 5
       54 GETTABLEKS                       R8 R8 K7 ["Hooks"]
       56 GETTABLEKS                       R8 R8 K8 ["useTokens"]
       58 CALL                             R8 0 1
       59 GETUPVAL                         R9 6
       60 GETTABLEKS                       R9 R9 K9 ["new"]
       62 CALL                             R9 0 1
       63 GETTABLEKS                       R11 R3 K3 ["state"]
       65 GETUPVAL                         R12 7
       66 GETTABLEKS                       R12 R12 K10 ["SessionState"]
       68 GETTABLEKS                       R12 R12 K11 ["Parsed"]
       70 JUMPIFNOTEQ                      R11 R12 ; [+2]
       72 LOADB                            R10 0 +1
       73 LOADB                            R10 1
       74 GETTABLEKS                       R12 R3 K12 ["fileType"]
       76 GETUPVAL                         R13 7
       77 GETTABLEKS                       R13 R13 K13 ["FileType"]
       79 GETTABLEKS                       R13 R13 K14 ["Scene"]
       81 JUMPIFEQ                         R12 R13 ; [+2]
       83 LOADB                            R11 0 +1
       84 LOADB                            R11 1
       85 GETTABLEKS                       R13 R3 K3 ["state"]
       87 GETUPVAL                         R14 7
       88 GETTABLEKS                       R14 R14 K10 ["SessionState"]
       90 GETTABLEKS                       R14 R14 K15 ["Invalid"]
       92 JUMPIFEQ                         R13 R14 ; [+2]
       94 LOADB                            R12 0 +1
       95 LOADB                            R12 1
       96 DUPTABLE                         R13 K18 [{"Color3", "Transparency"}]
       97 GETTABLEKS                       R14 R8 K19 ["Color"]
       99 GETTABLEKS                       R14 R14 K20 ["Content"]
      101 GETTABLEKS                       R14 R14 K21 ["Default"]
      103 GETTABLEKS                       R14 R14 K16 ["Color3"]
      105 SETTABLEKS                       R14 R13 K16 ["Color3"]
      107 JUMPIF                           R12 ; [+1]
      108 JUMPIFNOT                        R10 ; [+2]
      109 LOADK                            R14 K22 [0.5]
      110 JUMP                             ; [+1]
      111 LOADN                            R14 0
      112 SETTABLEKS                       R14 R13 K17 ["Transparency"]
      114 GETUPVAL                         R14 2
      115 GETTABLEKS                       R14 R14 K23 ["useState"]
      117 LOADB                            R15 0
      118 CALL                             R14 1 2
      119 GETUPVAL                         R16 2
      120 GETTABLEKS                       R16 R16 K6 ["useCallback"]
      122 NEWCLOSURE                       R17 P3
      123 CAPTURE                          VAL R15
      124 CAPTURE                          UPVAL U5
      125 CALL                             R16 1 1
      126 JUMPIFNOT                        R14 ; [+6]
      127 LOADK                            R18 K24 ["<u>"]
      128 GETTABLEKS                       R19 R3 K25 ["assetName"]
      130 LOADK                            R20 K26 ["</u>"]
      131 CONCAT                           R17 R18 R20
      132 JUMP                             ; [+2]
      133 GETTABLEKS                       R17 R3 K25 ["assetName"]
      135 GETUPVAL                         R18 8
      136 GETUPVAL                         R19 5
      137 GETTABLEKS                       R19 R19 K27 ["View"]
      139 DUPTABLE                         R20 K29 [{"tag"}]
      140 LOADK                            R21 K30 ["row size-full-600 align-y-center align-x-left gap-xsmall"]
      141 SETTABLEKS                       R21 R20 K28 ["tag"]
      143 DUPTABLE                         R21 K34 [{"Icon", "AssetName", "Warnings"}]
      144 GETUPVAL                         R22 8
      145 GETUPVAL                         R23 5
      146 GETTABLEKS                       R23 R23 K35 ["Image"]
      148 DUPTABLE                         R24 K37 [{"tag", "Image", "LayoutOrder"}]
      149 LOADK                            R25 K38 ["size-400-400 data-testid=asset-type-icon"]
      150 SETTABLEKS                       R25 R24 K28 ["tag"]
      152 SETTABLEKS                       R4 R24 K35 ["Image"]
      154 NAMECALL                         R25 R9 K39 ["getNextOrder"]
      156 CALL                             R25 1 1
      157 SETTABLEKS                       R25 R24 K36 ["LayoutOrder"]
      159 CALL                             R22 2 1
      160 SETTABLEKS                       R22 R21 K31 ["Icon"]
      162 GETUPVAL                         R22 8
      163 GETUPVAL                         R23 5
      164 GETTABLEKS                       R23 R23 K40 ["Text"]
      166 DUPTABLE                         R24 K47 [{"Text", "RichText", "onActivated", "onSecondaryActivated", "onStateChanged", "stateLayer", "tag", "textStyle", "LayoutOrder"}]
      167 SETTABLEKS                       R17 R24 K40 ["Text"]
      169 LOADB                            R25 1
      170 SETTABLEKS                       R25 R24 K41 ["RichText"]
      172 JUMPIF                           R10 ; [+1]
      173 JUMPIF                           R11 ; [+2]
      174 LOADNIL                          R25
      175 JUMP                             ; [+1]
      176 MOVE                             R25 R7
      177 SETTABLEKS                       R25 R24 K42 ["onActivated"]
      179 JUMPIF                           R10 ; [+1]
      180 JUMPIF                           R11 ; [+2]
      181 LOADNIL                          R25
      182 JUMP                             ; [+2]
      183 GETTABLEKS                       R25 R0 K48 ["SecondaryActivated"]
      185 SETTABLEKS                       R25 R24 K43 ["onSecondaryActivated"]
      187 JUMPIF                           R10 ; [+1]
      188 JUMPIF                           R11 ; [+2]
      189 LOADNIL                          R25
      190 JUMP                             ; [+1]
      191 MOVE                             R25 R16
      192 SETTABLEKS                       R25 R24 K44 ["onStateChanged"]
      194 DUPTABLE                         R25 K50 [{"affordance"}]
      195 GETUPVAL                         R26 5
      196 GETTABLEKS                       R26 R26 K51 ["Enums"]
      198 GETTABLEKS                       R26 R26 K52 ["StateLayerAffordance"]
      200 GETTABLEKS                       R26 R26 K53 ["None"]
      202 SETTABLEKS                       R26 R25 K49 ["affordance"]
      204 SETTABLEKS                       R25 R24 K45 ["stateLayer"]
      206 LOADK                            R25 K54 ["fill auto-y content-emphasis text-body-small text-align-x-left text-truncate-split"]
      207 SETTABLEKS                       R25 R24 K28 ["tag"]
      209 SETTABLEKS                       R13 R24 K46 ["textStyle"]
      211 NAMECALL                         R25 R9 K39 ["getNextOrder"]
      213 CALL                             R25 1 1
      214 SETTABLEKS                       R25 R24 K36 ["LayoutOrder"]
      216 CALL                             R22 2 1
      217 SETTABLEKS                       R22 R21 K32 ["AssetName"]
      219 JUMPIFNOT                        R5 ; [+30]
      220 JUMPIFNOT                        R6 ; [+29]
      221 GETUPVAL                         R22 8
      222 GETUPVAL                         R23 5
      223 GETTABLEKS                       R23 R23 K55 ["Tooltip"]
      225 DUPTABLE                         R24 K57 [{"title", "LayoutOrder"}]
      226 SETTABLEKS                       R6 R24 K56 ["title"]
      228 NAMECALL                         R25 R9 K39 ["getNextOrder"]
      230 CALL                             R25 1 1
      231 SETTABLEKS                       R25 R24 K36 ["LayoutOrder"]
      233 NEWTABLE                         R25 0 1
      235 GETUPVAL                         R26 8
      236 GETUPVAL                         R27 5
      237 GETTABLEKS                       R27 R27 K35 ["Image"]
      239 DUPTABLE                         R28 K58 [{"tag", "Image"}]
      240 LOADK                            R29 K59 ["size-400-400 data-testid=asset-warning-icon"]
      241 SETTABLEKS                       R29 R28 K28 ["tag"]
      243 SETTABLEKS                       R5 R28 K35 ["Image"]
      245 CALL                             R26 2 -1
      246 SETLIST                          R25 R26 -1 [1]
      248 CALL                             R22 3 1
      249 JUMP                             ; [+1]
      250 LOADNIL                          R22
      251 SETTABLEKS                       R22 R21 K33 ["Warnings"]
      253 CALL                             R18 3 -1
      254 RETURN                           R18 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Utility"]
       13 GETTABLEKS                       R2 R2 K8 ["Services"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["GetService"]
       18 LOADK                            R3 K10 ["StudioService"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K5 [require]
       22 GETTABLEKS                       R4 R0 K11 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["React"]
       26 CALL                             R3 1 1
       27 GETTABLEKS                       R4 R3 K13 ["createElement"]
       29 GETIMPORT                        R5 K5 [require]
       31 GETTABLEKS                       R6 R0 K11 ["Packages"]
       33 GETTABLEKS                       R6 R6 K14 ["Foundation"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K5 [require]
       38 GETTABLEKS                       R7 R0 K11 ["Packages"]
       40 GETTABLEKS                       R7 R7 K15 ["Framework"]
       42 CALL                             R6 1 1
       43 GETTABLEKS                       R7 R6 K16 ["ContextServices"]
       45 GETTABLEKS                       R8 R7 K17 ["Localization"]
       47 GETTABLEKS                       R9 R6 K18 ["Util"]
       49 GETTABLEKS                       R9 R9 K19 ["LayoutOrderIterator"]
       51 GETIMPORT                        R10 K5 [require]
       53 GETTABLEKS                       R11 R0 K6 ["Src"]
       55 GETTABLEKS                       R11 R11 K20 ["Controllers"]
       57 GETTABLEKS                       R11 R11 K21 ["FileController"]
       59 CALL                             R10 1 1
       60 GETIMPORT                        R11 K5 [require]
       62 GETTABLEKS                       R12 R0 K6 ["Src"]
       64 GETTABLEKS                       R12 R12 K22 ["Resources"]
       66 GETTABLEKS                       R12 R12 K23 ["Images"]
       68 CALL                             R11 1 1
       69 GETIMPORT                        R12 K5 [require]
       71 GETTABLEKS                       R13 R0 K6 ["Src"]
       73 GETTABLEKS                       R13 R13 K24 ["Types"]
       75 CALL                             R12 1 1
       76 GETIMPORT                        R13 K5 [require]
       78 GETTABLEKS                       R14 R0 K6 ["Src"]
       80 GETTABLEKS                       R14 R14 K24 ["Types"]
       82 GETTABLEKS                       R14 R14 K25 ["QueuedSession"]
       84 CALL                             R13 1 1
       85 DUPCLOSURE                       R14 K26 [PROTO_0]
       86 CAPTURE                          VAL R12
       87 CAPTURE                          VAL R11
       88 CAPTURE                          VAL R2
       89 DUPCLOSURE                       R15 K27 [PROTO_1]
       90 CAPTURE                          VAL R12
       91 CAPTURE                          VAL R11
       92 DUPCLOSURE                       R16 K28 [PROTO_6]
       93 CAPTURE                          VAL R8
       94 CAPTURE                          VAL R10
       95 CAPTURE                          VAL R3
       96 CAPTURE                          VAL R14
       97 CAPTURE                          VAL R15
       98 CAPTURE                          VAL R5
       99 CAPTURE                          VAL R9
      100 CAPTURE                          VAL R12
      101 CAPTURE                          VAL R4
      102 RETURN                           R16 1
