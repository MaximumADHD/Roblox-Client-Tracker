PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["SessionState"]
        5 GETTABLEKS                       R2 R3 K2 ["Invalid"]
        7 JUMPIFNOTEQ                      R1 R2 ; [+11]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R1 R2 K3 ["get"]
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R3 R4 K4 ["AvailableImages"]
       15 GETTABLEKS                       R2 R3 K5 ["File"]
       17 CALL                             R1 1 -1
       18 RETURN                           R1 -1
       19 GETTABLEKS                       R1 R0 K6 ["fileType"]
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R3 R4 K7 ["FileType"]
       24 GETTABLEKS                       R2 R3 K8 ["Image"]
       26 JUMPIFNOTEQ                      R1 R2 ; [+9]
       28 GETUPVAL                         R2 2
       29 LOADK                            R4 K9 ["Decal"]
       30 NAMECALL                         R2 R2 K10 ["GetClassIcon"]
       32 CALL                             R2 2 1
       33 GETTABLEKS                       R1 R2 K8 ["Image"]
       35 RETURN                           R1 1
       36 GETTABLEKS                       R1 R0 K6 ["fileType"]
       38 GETUPVAL                         R4 0
       39 GETTABLEKS                       R3 R4 K7 ["FileType"]
       41 GETTABLEKS                       R2 R3 K11 ["Audio"]
       43 JUMPIFNOTEQ                      R1 R2 ; [+9]
       45 GETUPVAL                         R2 2
       46 LOADK                            R4 K12 ["Sound"]
       47 NAMECALL                         R2 R2 K10 ["GetClassIcon"]
       49 CALL                             R2 2 1
       50 GETTABLEKS                       R1 R2 K8 ["Image"]
       52 RETURN                           R1 1
       53 GETTABLEKS                       R1 R0 K6 ["fileType"]
       55 GETUPVAL                         R4 0
       56 GETTABLEKS                       R3 R4 K7 ["FileType"]
       58 GETTABLEKS                       R2 R3 K13 ["Video"]
       60 JUMPIFNOTEQ                      R1 R2 ; [+9]
       62 GETUPVAL                         R2 2
       63 LOADK                            R4 K14 ["VideoFrame"]
       64 NAMECALL                         R2 R2 K10 ["GetClassIcon"]
       66 CALL                             R2 2 1
       67 GETTABLEKS                       R1 R2 K8 ["Image"]
       69 RETURN                           R1 1
       70 GETTABLEKS                       R1 R0 K6 ["fileType"]
       72 GETUPVAL                         R4 0
       73 GETTABLEKS                       R3 R4 K7 ["FileType"]
       75 GETTABLEKS                       R2 R3 K15 ["Scene"]
       77 JUMPIFNOTEQ                      R1 R2 ; [+9]
       79 GETUPVAL                         R2 2
       80 LOADK                            R4 K16 ["Model"]
       81 NAMECALL                         R2 R2 K10 ["GetClassIcon"]
       83 CALL                             R2 2 1
       84 GETTABLEKS                       R1 R2 K8 ["Image"]
       86 RETURN                           R1 1
       87 GETUPVAL                         R2 1
       88 GETTABLEKS                       R1 R2 K3 ["get"]
       90 GETUPVAL                         R4 1
       91 GETTABLEKS                       R3 R4 K4 ["AvailableImages"]
       93 GETTABLEKS                       R2 R3 K5 ["File"]
       95 CALL                             R1 1 -1
       96 RETURN                           R1 -1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["state"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K1 ["SessionState"]
        5 GETTABLEKS                       R3 R4 K2 ["Invalid"]
        7 JUMPIFNOTEQ                      R2 R3 ; [+16]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R2 R3 K3 ["get"]
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R4 R5 K4 ["AvailableImages"]
       15 GETTABLEKS                       R3 R4 K5 ["Error"]
       17 CALL                             R2 1 1
       18 LOADK                            R5 K5 ["Error"]
       19 LOADK                            R6 K6 ["Header"]
       20 NAMECALL                         R3 R1 K7 ["getText"]
       22 CALL                             R3 3 -1
       23 RETURN                           R2 -1
       24 GETTABLEKS                       R2 R0 K0 ["state"]
       26 GETUPVAL                         R5 0
       27 GETTABLEKS                       R4 R5 K1 ["SessionState"]
       29 GETTABLEKS                       R3 R4 K8 ["Parsed"]
       31 JUMPIFNOTEQ                      R2 R3 ; [+37]
       33 GETTABLEKS                       R2 R0 K9 ["errors"]
       35 LOADN                            R3 0
       36 JUMPIFNOTLT                      R3 R2 ; [+32]
       38 LOADK                            R4 K10 ["AssetImportTree"]
       39 LOADK                            R5 K11 ["Errors"]
       40 NAMECALL                         R2 R1 K7 ["getText"]
       42 CALL                             R2 3 1
       43 GETUPVAL                         R4 1
       44 GETTABLEKS                       R3 R4 K3 ["get"]
       46 GETUPVAL                         R6 1
       47 GETTABLEKS                       R5 R6 K4 ["AvailableImages"]
       49 GETTABLEKS                       R4 R5 K5 ["Error"]
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
       71 GETUPVAL                         R5 0
       72 GETTABLEKS                       R4 R5 K1 ["SessionState"]
       74 GETTABLEKS                       R3 R4 K8 ["Parsed"]
       76 JUMPIFNOTEQ                      R2 R3 ; [+37]
       78 GETTABLEKS                       R2 R0 K18 ["warnings"]
       80 LOADN                            R3 0
       81 JUMPIFNOTLT                      R3 R2 ; [+32]
       83 LOADK                            R4 K10 ["AssetImportTree"]
       84 LOADK                            R5 K19 ["Warnings"]
       85 NAMECALL                         R2 R1 K7 ["getText"]
       87 CALL                             R2 3 1
       88 GETUPVAL                         R4 1
       89 GETTABLEKS                       R3 R4 K3 ["get"]
       91 GETUPVAL                         R6 1
       92 GETTABLEKS                       R5 R6 K4 ["AvailableImages"]
       94 GETTABLEKS                       R4 R5 K20 ["Warning"]
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
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["filepath"]
        4 NAMECALL                         R0 R0 K1 ["requestPreview"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETTABLEKS                       R3 R0 K1 ["TableEntry"]
       10 GETUPVAL                         R5 2
       11 GETTABLEKS                       R4 R5 K2 ["useMemo"]
       13 NEWCLOSURE                       R5 P0
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          VAL R3
       16 NEWTABLE                         R6 0 1
       18 MOVE                             R7 R3
       19 SETLIST                          R6 R7 1 [1]
       21 CALL                             R4 2 1
       22 GETUPVAL                         R6 2
       23 GETTABLEKS                       R5 R6 K2 ["useMemo"]
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
       40 GETUPVAL                         R8 2
       41 GETTABLEKS                       R7 R8 K6 ["useCallback"]
       43 NEWCLOSURE                       R8 P2
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R3
       46 NEWTABLE                         R9 0 2
       48 MOVE                             R10 R2
       49 MOVE                             R11 R3
       50 SETLIST                          R9 R10 2 [1]
       52 CALL                             R7 2 1
       53 GETUPVAL                         R10 5
       54 GETTABLEKS                       R9 R10 K7 ["Hooks"]
       56 GETTABLEKS                       R8 R9 K8 ["useTokens"]
       58 CALL                             R8 0 1
       59 GETUPVAL                         R10 6
       60 GETTABLEKS                       R9 R10 K9 ["new"]
       62 CALL                             R9 0 1
       63 GETTABLEKS                       R11 R3 K3 ["state"]
       65 GETUPVAL                         R14 7
       66 GETTABLEKS                       R13 R14 K10 ["SessionState"]
       68 GETTABLEKS                       R12 R13 K11 ["Parsed"]
       70 JUMPIFNOTEQ                      R11 R12 ; [+2]
       72 LOADB                            R10 0 +1
       73 LOADB                            R10 1
       74 GETTABLEKS                       R12 R3 K12 ["fileType"]
       76 GETUPVAL                         R15 7
       77 GETTABLEKS                       R14 R15 K13 ["FileType"]
       79 GETTABLEKS                       R13 R14 K14 ["Scene"]
       81 JUMPIFEQ                         R12 R13 ; [+2]
       83 LOADB                            R11 0 +1
       84 LOADB                            R11 1
       85 GETTABLEKS                       R13 R3 K3 ["state"]
       87 GETUPVAL                         R16 7
       88 GETTABLEKS                       R15 R16 K10 ["SessionState"]
       90 GETTABLEKS                       R14 R15 K15 ["Invalid"]
       92 JUMPIFEQ                         R13 R14 ; [+2]
       94 LOADB                            R12 0 +1
       95 LOADB                            R12 1
       96 DUPTABLE                         R13 K18 [{"Color3", "Transparency"}]
       97 JUMPIF                           R12 ; [+2]
       98 JUMPIF                           R10 ; [+1]
       99 JUMPIF                           R11 ; [+9]
      100 GETTABLEKS                       R17 R8 K19 ["Color"]
      102 GETTABLEKS                       R16 R17 K20 ["Content"]
      104 GETTABLEKS                       R15 R16 K21 ["Default"]
      106 GETTABLEKS                       R14 R15 K16 ["Color3"]
      108 JUMP                             ; [+8]
      109 GETTABLEKS                       R17 R8 K19 ["Color"]
      111 GETTABLEKS                       R16 R17 K20 ["Content"]
      113 GETTABLEKS                       R15 R16 K22 ["Link"]
      115 GETTABLEKS                       R14 R15 K16 ["Color3"]
      117 SETTABLEKS                       R14 R13 K16 ["Color3"]
      119 JUMPIF                           R12 ; [+1]
      120 JUMPIFNOT                        R10 ; [+2]
      121 LOADK                            R14 K23 [0.5]
      122 JUMP                             ; [+1]
      123 LOADN                            R14 0
      124 SETTABLEKS                       R14 R13 K17 ["Transparency"]
      126 GETUPVAL                         R14 8
      127 GETUPVAL                         R16 5
      128 GETTABLEKS                       R15 R16 K24 ["View"]
      130 DUPTABLE                         R16 K28 [{"tag", "onActivated", "onSecondaryActivated"}]
      131 LOADK                            R17 K29 ["row size-full-600 align-y-center align-x-left gap-xsmall"]
      132 SETTABLEKS                       R17 R16 K25 ["tag"]
      134 JUMPIF                           R10 ; [+1]
      135 JUMPIF                           R11 ; [+2]
      136 LOADNIL                          R17
      137 JUMP                             ; [+1]
      138 MOVE                             R17 R7
      139 SETTABLEKS                       R17 R16 K26 ["onActivated"]
      141 JUMPIF                           R10 ; [+1]
      142 JUMPIF                           R11 ; [+2]
      143 LOADNIL                          R17
      144 JUMP                             ; [+2]
      145 GETTABLEKS                       R17 R0 K30 ["SecondaryActivated"]
      147 SETTABLEKS                       R17 R16 K27 ["onSecondaryActivated"]
      149 DUPTABLE                         R17 K34 [{"Icon", "AssetName", "Warnings"}]
      150 GETUPVAL                         R18 8
      151 GETUPVAL                         R20 5
      152 GETTABLEKS                       R19 R20 K35 ["Image"]
      154 DUPTABLE                         R20 K37 [{"tag", "Image", "LayoutOrder"}]
      155 LOADK                            R21 K38 ["size-400-400 data-testid=asset-type-icon"]
      156 SETTABLEKS                       R21 R20 K25 ["tag"]
      158 SETTABLEKS                       R4 R20 K35 ["Image"]
      160 NAMECALL                         R21 R9 K39 ["getNextOrder"]
      162 CALL                             R21 1 1
      163 SETTABLEKS                       R21 R20 K36 ["LayoutOrder"]
      165 CALL                             R18 2 1
      166 SETTABLEKS                       R18 R17 K31 ["Icon"]
      168 GETUPVAL                         R18 8
      169 GETUPVAL                         R20 5
      170 GETTABLEKS                       R19 R20 K40 ["Text"]
      172 DUPTABLE                         R20 K42 [{"Text", "tag", "textStyle", "LayoutOrder"}]
      173 GETTABLEKS                       R21 R3 K43 ["assetName"]
      175 SETTABLEKS                       R21 R20 K40 ["Text"]
      177 LOADK                            R21 K44 ["fill auto-y content-emphasis text-body-small text-align-x-left text-truncate-split"]
      178 SETTABLEKS                       R21 R20 K25 ["tag"]
      180 SETTABLEKS                       R13 R20 K41 ["textStyle"]
      182 NAMECALL                         R21 R9 K39 ["getNextOrder"]
      184 CALL                             R21 1 1
      185 SETTABLEKS                       R21 R20 K36 ["LayoutOrder"]
      187 CALL                             R18 2 1
      188 SETTABLEKS                       R18 R17 K32 ["AssetName"]
      190 JUMPIFNOT                        R5 ; [+30]
      191 JUMPIFNOT                        R6 ; [+29]
      192 GETUPVAL                         R18 8
      193 GETUPVAL                         R20 5
      194 GETTABLEKS                       R19 R20 K45 ["Tooltip"]
      196 DUPTABLE                         R20 K47 [{"title", "LayoutOrder"}]
      197 SETTABLEKS                       R6 R20 K46 ["title"]
      199 NAMECALL                         R21 R9 K39 ["getNextOrder"]
      201 CALL                             R21 1 1
      202 SETTABLEKS                       R21 R20 K36 ["LayoutOrder"]
      204 NEWTABLE                         R21 0 1
      206 GETUPVAL                         R22 8
      207 GETUPVAL                         R24 5
      208 GETTABLEKS                       R23 R24 K35 ["Image"]
      210 DUPTABLE                         R24 K48 [{"tag", "Image"}]
      211 LOADK                            R25 K49 ["size-400-400 data-testid=asset-warning-icon"]
      212 SETTABLEKS                       R25 R24 K25 ["tag"]
      214 SETTABLEKS                       R5 R24 K35 ["Image"]
      216 CALL                             R22 2 -1
      217 SETLIST                          R21 R22 -1 [1]
      219 CALL                             R18 3 1
      220 JUMP                             ; [+1]
      221 LOADNIL                          R18
      222 SETTABLEKS                       R18 R17 K33 ["Warnings"]
      224 CALL                             R14 3 -1
      225 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Utility"]
       13 GETTABLEKS                       R2 R3 K8 ["Services"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["GetService"]
       18 LOADK                            R3 K10 ["StudioService"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K5 [require]
       22 GETTABLEKS                       R5 R0 K11 ["Packages"]
       24 GETTABLEKS                       R4 R5 K12 ["React"]
       26 CALL                             R3 1 1
       27 GETTABLEKS                       R4 R3 K13 ["createElement"]
       29 GETIMPORT                        R5 K5 [require]
       31 GETTABLEKS                       R7 R0 K11 ["Packages"]
       33 GETTABLEKS                       R6 R7 K14 ["Foundation"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K5 [require]
       38 GETTABLEKS                       R8 R0 K11 ["Packages"]
       40 GETTABLEKS                       R7 R8 K15 ["Framework"]
       42 CALL                             R6 1 1
       43 GETTABLEKS                       R7 R6 K16 ["ContextServices"]
       45 GETTABLEKS                       R8 R7 K17 ["Localization"]
       47 GETTABLEKS                       R10 R6 K18 ["Util"]
       49 GETTABLEKS                       R9 R10 K19 ["LayoutOrderIterator"]
       51 GETIMPORT                        R10 K5 [require]
       53 GETTABLEKS                       R13 R0 K6 ["Src"]
       55 GETTABLEKS                       R12 R13 K20 ["Controllers"]
       57 GETTABLEKS                       R11 R12 K21 ["FileController"]
       59 CALL                             R10 1 1
       60 GETIMPORT                        R11 K5 [require]
       62 GETTABLEKS                       R14 R0 K6 ["Src"]
       64 GETTABLEKS                       R13 R14 K22 ["Resources"]
       66 GETTABLEKS                       R12 R13 K23 ["Images"]
       68 CALL                             R11 1 1
       69 GETIMPORT                        R12 K5 [require]
       71 GETTABLEKS                       R14 R0 K6 ["Src"]
       73 GETTABLEKS                       R13 R14 K24 ["Types"]
       75 CALL                             R12 1 1
       76 GETIMPORT                        R13 K5 [require]
       78 GETTABLEKS                       R16 R0 K6 ["Src"]
       80 GETTABLEKS                       R15 R16 K24 ["Types"]
       82 GETTABLEKS                       R14 R15 K25 ["QueuedSession"]
       84 CALL                             R13 1 1
       85 DUPCLOSURE                       R14 K26 [PROTO_0]
       86 CAPTURE                          VAL R12
       87 CAPTURE                          VAL R11
       88 CAPTURE                          VAL R2
       89 DUPCLOSURE                       R15 K27 [PROTO_1]
       90 CAPTURE                          VAL R12
       91 CAPTURE                          VAL R11
       92 DUPCLOSURE                       R16 K28 [PROTO_5]
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
