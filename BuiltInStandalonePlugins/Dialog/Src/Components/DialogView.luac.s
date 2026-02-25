PROTO_0:
        0 LOADB                            R1 0
        1 JUMPIFEQKNIL                     R0 ; [+5]
        3 JUMPIFNOTEQKS                    R0 K0 [""] ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_0]
        2 NAMECALL                         R0 R0 K1 ["map"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_2:
        0 LOADB                            R1 0
        1 JUMPIFEQKNIL                     R0 ; [+5]
        3 JUMPIFNOTEQKS                    R0 K0 [""] ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_2]
        2 NAMECALL                         R0 R0 K1 ["map"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K0 ["Hooks"]
        5 GETTABLEKS                       R2 R3 K1 ["useTokens"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 MOVE                             R4 R2
       10 GETTABLEKS                       R5 R0 K2 ["type"]
       12 CALL                             R3 2 1
       13 GETUPVAL                         R4 3
       14 GETTABLEKS                       R5 R0 K3 ["title"]
       16 CALL                             R4 1 1
       17 GETUPVAL                         R6 4
       18 GETTABLEKS                       R5 R6 K4 ["useMemo"]
       20 NEWCLOSURE                       R6 P0
       21 CAPTURE                          VAL R4
       22 NEWTABLE                         R7 0 1
       24 MOVE                             R8 R4
       25 SETLIST                          R7 R8 1 [1]
       27 CALL                             R5 2 1
       28 GETUPVAL                         R6 3
       29 GETTABLEKS                       R7 R0 K5 ["description"]
       31 CALL                             R6 1 1
       32 GETUPVAL                         R8 4
       33 GETTABLEKS                       R7 R8 K4 ["useMemo"]
       35 NEWCLOSURE                       R8 P1
       36 CAPTURE                          VAL R6
       37 NEWTABLE                         R9 0 1
       39 MOVE                             R10 R6
       40 SETLIST                          R9 R10 1 [1]
       42 CALL                             R7 2 1
       43 GETUPVAL                         R8 5
       44 GETUPVAL                         R10 1
       45 GETTABLEKS                       R9 R10 K6 ["View"]
       47 DUPTABLE                         R10 K11 [{"tag", "onAbsoluteSizeChanged", "testId", "Size"}]
       48 LOADK                            R11 K12 ["component-dialog-view bg-surface-200 col flex-y-between auto-y gap-small padding-x-large padding-y-medium"]
       49 SETTABLEKS                       R11 R10 K7 ["tag"]
       51 GETTABLEKS                       R11 R0 K8 ["onAbsoluteSizeChanged"]
       53 SETTABLEKS                       R11 R10 K8 ["onAbsoluteSizeChanged"]
       55 LOADK                            R11 K13 ["--dialog"]
       56 SETTABLEKS                       R11 R10 K9 ["testId"]
       58 GETIMPORT                        R11 K16 [UDim2.fromOffset]
       60 LOADN                            R12 94
       61 LOADN                            R13 0
       62 CALL                             R11 2 1
       63 SETTABLEKS                       R11 R10 K10 ["Size"]
       65 DUPTABLE                         R11 K19 [{"IconAndTextRow", "ButtonGroup"}]
       66 GETUPVAL                         R12 5
       67 GETUPVAL                         R14 1
       68 GETTABLEKS                       R13 R14 K6 ["View"]
       70 DUPTABLE                         R14 K21 [{"tag", "LayoutOrder"}]
       71 LOADK                            R15 K22 ["row size-full-0 auto-y flex-x-between items-start gap-medium padding-bottom-medium"]
       72 SETTABLEKS                       R15 R14 K7 ["tag"]
       74 MOVE                             R15 R1
       75 CALL                             R15 0 1
       76 SETTABLEKS                       R15 R14 K20 ["LayoutOrder"]
       78 DUPTABLE                         R15 K25 [{"Icon", "TextColumn"}]
       79 JUMPIFNOT                        R3 ; [+40]
       80 GETUPVAL                         R16 5
       81 GETUPVAL                         R18 1
       82 GETTABLEKS                       R17 R18 K23 ["Icon"]
       84 DUPTABLE                         R18 K30 [{"name", "size", "style", "variant", "LayoutOrder", "testId"}]
       85 GETTABLEKS                       R19 R3 K31 ["icon"]
       87 SETTABLEKS                       R19 R18 K26 ["name"]
       89 GETUPVAL                         R22 1
       90 GETTABLEKS                       R21 R22 K32 ["Enums"]
       92 GETTABLEKS                       R20 R21 K33 ["IconSize"]
       94 GETTABLEKS                       R19 R20 K34 ["Large"]
       96 SETTABLEKS                       R19 R18 K27 ["size"]
       98 GETTABLEKS                       R19 R3 K35 ["color"]
      100 SETTABLEKS                       R19 R18 K28 ["style"]
      102 GETUPVAL                         R22 1
      103 GETTABLEKS                       R21 R22 K32 ["Enums"]
      105 GETTABLEKS                       R20 R21 K36 ["IconVariant"]
      107 GETTABLEKS                       R19 R20 K37 ["Filled"]
      109 SETTABLEKS                       R19 R18 K29 ["variant"]
      111 MOVE                             R19 R1
      112 CALL                             R19 0 1
      113 SETTABLEKS                       R19 R18 K20 ["LayoutOrder"]
      115 LOADK                            R19 K38 ["--dialog-icon"]
      116 SETTABLEKS                       R19 R18 K9 ["testId"]
      118 CALL                             R16 2 1
      119 JUMP                             ; [+1]
      120 LOADNIL                          R16
      121 SETTABLEKS                       R16 R15 K23 ["Icon"]
      123 GETUPVAL                         R16 5
      124 GETUPVAL                         R18 1
      125 GETTABLEKS                       R17 R18 K6 ["View"]
      127 DUPTABLE                         R18 K21 [{"tag", "LayoutOrder"}]
      128 LOADK                            R19 K39 ["fill col auto-y gap-medium"]
      129 SETTABLEKS                       R19 R18 K7 ["tag"]
      131 MOVE                             R19 R1
      132 CALL                             R19 0 1
      133 SETTABLEKS                       R19 R18 K20 ["LayoutOrder"]
      135 DUPTABLE                         R19 K42 [{"Title", "Description"}]
      136 GETUPVAL                         R20 5
      137 GETUPVAL                         R22 1
      138 GETTABLEKS                       R21 R22 K43 ["Text"]
      140 DUPTABLE                         R22 K45 [{"tag", "Text", "Visible", "LayoutOrder", "testId"}]
      141 LOADK                            R23 K46 ["size-full-0 auto-y text-wrap text-title-medium text-align-x-left text-align-y-center"]
      142 SETTABLEKS                       R23 R22 K7 ["tag"]
      144 SETTABLEKS                       R4 R22 K43 ["Text"]
      146 SETTABLEKS                       R5 R22 K44 ["Visible"]
      148 MOVE                             R23 R1
      149 CALL                             R23 0 1
      150 SETTABLEKS                       R23 R22 K20 ["LayoutOrder"]
      152 LOADK                            R23 K47 ["--dialog-title"]
      153 SETTABLEKS                       R23 R22 K9 ["testId"]
      155 CALL                             R20 2 1
      156 SETTABLEKS                       R20 R19 K40 ["Title"]
      158 GETUPVAL                         R20 5
      159 GETUPVAL                         R22 1
      160 GETTABLEKS                       R21 R22 K43 ["Text"]
      162 DUPTABLE                         R22 K45 [{"tag", "Text", "Visible", "LayoutOrder", "testId"}]
      163 LOADK                            R23 K48 ["size-full-0 auto-y text-wrap text-body-small text-align-x-left text-align-y-top grow"]
      164 SETTABLEKS                       R23 R22 K7 ["tag"]
      166 SETTABLEKS                       R6 R22 K43 ["Text"]
      168 SETTABLEKS                       R7 R22 K44 ["Visible"]
      170 MOVE                             R23 R1
      171 CALL                             R23 0 1
      172 SETTABLEKS                       R23 R22 K20 ["LayoutOrder"]
      174 LOADK                            R23 K49 ["--dialog-description"]
      175 SETTABLEKS                       R23 R22 K9 ["testId"]
      177 CALL                             R20 2 1
      178 SETTABLEKS                       R20 R19 K41 ["Description"]
      180 CALL                             R16 3 1
      181 SETTABLEKS                       R16 R15 K24 ["TextColumn"]
      183 CALL                             R12 3 1
      184 SETTABLEKS                       R12 R11 K17 ["IconAndTextRow"]
      186 GETUPVAL                         R12 5
      187 GETUPVAL                         R13 6
      188 DUPTABLE                         R14 K53 [{"LayoutOrder", "primaryAction", "secondaryAction", "tertiaryAction"}]
      189 MOVE                             R15 R1
      190 CALL                             R15 0 1
      191 SETTABLEKS                       R15 R14 K20 ["LayoutOrder"]
      193 GETTABLEKS                       R15 R0 K50 ["primaryAction"]
      195 SETTABLEKS                       R15 R14 K50 ["primaryAction"]
      197 GETTABLEKS                       R15 R0 K51 ["secondaryAction"]
      199 SETTABLEKS                       R15 R14 K51 ["secondaryAction"]
      201 GETTABLEKS                       R15 R0 K52 ["tertiaryAction"]
      203 SETTABLEKS                       R15 R14 K52 ["tertiaryAction"]
      205 CALL                             R12 2 1
      206 SETTABLEKS                       R12 R11 K18 ["ButtonGroup"]
      208 CALL                             R8 3 -1
      209 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Dialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Components"]
       13 GETTABLEKS                       R2 R3 K8 ["DialogButtonGroup"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R4 K10 ["Foundation"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K9 ["Packages"]
       27 GETTABLEKS                       R4 R5 K11 ["Framework"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K9 ["Packages"]
       34 GETTABLEKS                       R5 R6 K12 ["React"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R7 R0 K6 ["Src"]
       41 GETTABLEKS                       R6 R7 K13 ["Types"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R9 R0 K6 ["Src"]
       48 GETTABLEKS                       R8 R9 K14 ["Hooks"]
       50 GETTABLEKS                       R7 R8 K15 ["useBindable"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R10 R0 K6 ["Src"]
       57 GETTABLEKS                       R9 R10 K14 ["Hooks"]
       59 GETTABLEKS                       R8 R9 K16 ["useDialogIconProps"]
       61 CALL                             R7 1 1
       62 GETTABLEKS                       R9 R3 K17 ["Util"]
       64 GETTABLEKS                       R8 R9 K18 ["counter"]
       66 GETTABLEKS                       R9 R4 K19 ["createElement"]
       68 DUPCLOSURE                       R10 K20 [PROTO_4]
       69 CAPTURE                          VAL R8
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R4
       74 CAPTURE                          VAL R9
       75 CAPTURE                          VAL R1
       76 GETTABLEKS                       R11 R4 K21 ["memo"]
       78 MOVE                             R12 R10
       79 CALL                             R11 1 -1
       80 RETURN                           R11 -1
